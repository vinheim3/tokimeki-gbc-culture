; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $026", ROMX[$4000], BANK[$26]

	sub d                                            ; $4000: $92
	ld b, $97                                        ; $4001: $06 $97

Jump_026_4003:
	adc b                                            ; $4003: $88
	ld [hl], a                                       ; $4004: $77
	ld d, l                                          ; $4005: $55
	xor d                                            ; $4006: $aa
	ld [hl+], a                                      ; $4007: $22

jr_026_4008:
	db $dd                                           ; $4008: $dd
	ld d, l                                          ; $4009: $55
	xor d                                            ; $400a: $aa
	daa                                              ; $400b: $27
	ld hl, sp-$80                                    ; $400c: $f8 $80
	sub e                                            ; $400e: $93
	ld a, h                                          ; $400f: $7c
	ld d, e                                          ; $4010: $53
	cp h                                             ; $4011: $bc
	ld sp, $51de                                     ; $4012: $31 $de $51
	cp [hl]                                          ; $4015: $be
	adc b                                            ; $4016: $88
	ld a, a                                          ; $4017: $7f
	ld e, b                                          ; $4018: $58
	xor a                                            ; $4019: $af
	db $28, $df                                      ; $401a: $28 $df
	ld d, h                                          ; $401c: $54
	xor a                                            ; $401d: $af
	rst $38                                          ; $401e: $ff
	nop                                              ; $401f: $00
	rst $38                                          ; $4020: $ff
	nop                                              ; $4021: $00
	rst GetHLinHL                                          ; $4022: $cf
	jr nc, jr_026_4008                               ; $4023: $30 $e3

	inc e                                            ; $4025: $1c
	ld hl, sp+$07                                    ; $4026: $f8 $07
	ld a, h                                          ; $4028: $7c
	add e                                            ; $4029: $83
	ld a, a                                          ; $402a: $7f
	add b                                            ; $402b: $80
	ccf                                              ; $402c: $3f
	sbc d                                            ; $402d: $9a
	ret nz                                           ; $402e: $c0

	db $fc                                           ; $402f: $fc
	inc bc                                           ; $4030: $03
	cp $01                                           ; $4031: $fe $01
	ld [hl], a                                       ; $4033: $77
	db $ec                                           ; $4034: $ec
	ld a, a                                          ; $4035: $7f
	cp $82                                           ; $4036: $fe $82

jr_026_4038:
	rra                                              ; $4038: $1f
	ldh [rTAC], a                                    ; $4039: $e0 $07
	ld hl, sp-$40                                    ; $403b: $f8 $c0
	ccf                                              ; $403d: $3f
	inc e                                            ; $403e: $1c

Jump_026_403f:
	ldh a, [rAUD1HIGH]                               ; $403f: $f0 $14
	ld hl, sp+$14                                    ; $4041: $f8 $14

jr_026_4043:
	ld hl, sp-$74                                    ; $4043: $f8 $8c
	ld a, b                                          ; $4045: $78
	rst GetHLinHL                                          ; $4046: $cf
	jr c, jr_026_4038                                ; $4047: $38 $ef

	jr jr_026_4043                                   ; $4049: $18 $f8

	rrca                                             ; $404b: $0f
	rst $38                                          ; $404c: $ff
	rlca                                             ; $404d: $07
	ldh a, [$1f]                                     ; $404e: $f0 $1f
	ldh a, [$1f]                                     ; $4050: $f0 $1f
	jr nc, jr_026_4073                               ; $4052: $30 $1f

	db $10                                           ; $4054: $10
	ld a, e                                          ; $4055: $7b
	ld a, [$fe7f]                                    ; $4056: $fa $7f $fe
	add b                                            ; $4059: $80
	db $10                                           ; $405a: $10
	rst $38                                          ; $405b: $ff
	ldh a, [rIE]                                     ; $405c: $f0 $ff
	jr nc, @+$01                                     ; $405e: $30 $ff

	ld c, $ff                                        ; $4060: $0e $ff
	ld de, $0eef                                     ; $4062: $11 $ef $0e
	pop af                                           ; $4065: $f1
	rlca                                             ; $4066: $07
	ld hl, sp+$07                                    ; $4067: $f8 $07
	ld hl, sp+$0f                                    ; $4069: $f8 $0f
	ldh a, [$1f]                                     ; $406b: $f0 $1f
	ldh [$7f], a                                     ; $406d: $e0 $7f
	add e                                            ; $406f: $83
	ld a, e                                          ; $4070: $7b
	add a                                            ; $4071: $87
	db $fd                                           ; $4072: $fd

jr_026_4073:
	cp $03                                           ; $4073: $fe $03
	db $fc                                           ; $4075: $fc
	cp $01                                           ; $4076: $fe $01
	db $fc                                           ; $4078: $fc
	sbc [hl]                                         ; $4079: $9e
	inc bc                                           ; $407a: $03
	ld a, e                                          ; $407b: $7b
	db $ed                                           ; $407c: $ed
	add b                                            ; $407d: $80
	rlca                                             ; $407e: $07
	ld l, d                                          ; $407f: $6a
	or a                                             ; $4080: $b7
	cp d                                             ; $4081: $ba
	rst SubAFromHL                                          ; $4082: $d7
	ld a, d                                          ; $4083: $7a
	rst SubAFromHL                                          ; $4084: $d7
	ld [hl], e                                       ; $4085: $73
	sbc $6f                                          ; $4086: $de $6f
	call c, $cc9f                                    ; $4088: $dc $9f $cc
	adc h                                            ; $408b: $8c
	adc a                                            ; $408c: $8f
	add h                                            ; $408d: $84
	add a                                            ; $408e: $87
	dec b                                            ; $408f: $05
	rst $38                                          ; $4090: $ff
	ld a, b                                          ; $4091: $78
	adc a                                            ; $4092: $8f
	ld hl, sp+$0f                                    ; $4093: $f8 $0f
	ret z                                            ; $4095: $c8

	ccf                                              ; $4096: $3f
	adc b                                            ; $4097: $88
	ld a, a                                          ; $4098: $7f
	inc b                                            ; $4099: $04
	rst $38                                          ; $409a: $ff
	inc b                                            ; $409b: $04
	rst $38                                          ; $409c: $ff
	sbc [hl]                                         ; $409d: $9e

Jump_026_409e:
	ld e, $de                                        ; $409e: $1e $de
	rst $38                                          ; $40a0: $ff
	ld a, a                                          ; $40a1: $7f
	jp z, $8a7f                                      ; $40a2: $ca $7f $8a

	ld a, a                                          ; $40a5: $7f
	rst SubAFromHL                                          ; $40a6: $d7
	ld a, a                                          ; $40a7: $7f
	adc $6f                                          ; $40a8: $ce $6f
	cp $7f                                           ; $40aa: $fe $7f
	ld a, h                                          ; $40ac: $7c
	ld l, a                                          ; $40ad: $6f
	add d                                            ; $40ae: $82
	ld h, a                                          ; $40af: $67
	cp $8f                                           ; $40b0: $fe $8f
	cp b                                             ; $40b2: $b8
	ld [hl], a                                       ; $40b3: $77
	push de                                          ; $40b4: $d5
	ld a, [hl-]                                      ; $40b5: $3a
	ld [$fd1d], a                                    ; $40b6: $ea $1d $fd
	ld a, [bc]                                       ; $40b9: $0a
	db $f4                                           ; $40ba: $f4
	rrca                                             ; $40bb: $0f
	push af                                          ; $40bc: $f5
	ld c, $f6                                        ; $40bd: $0e $f6
	dec c                                            ; $40bf: $0d
	db $ed                                           ; $40c0: $ed
	ld e, $07                                        ; $40c1: $1e $07
	jr nz, jr_026_40cc                               ; $40c3: $20 $07

	ld hl, sp-$6e                                    ; $40c5: $f8 $92
	adc h                                            ; $40c7: $8c
	ld [hl], a                                       ; $40c8: $77
	ld d, [hl]                                       ; $40c9: $56
	xor e                                            ; $40ca: $ab
	ld [hl+], a                                      ; $40cb: $22

jr_026_40cc:
	rst SubAFromDE                                          ; $40cc: $df
	ld d, [hl]                                       ; $40cd: $56
	xor e                                            ; $40ce: $ab
	adc e                                            ; $40cf: $8b
	ld [hl], l                                       ; $40d0: $75
	ld d, l                                          ; $40d1: $55
	xor e                                            ; $40d2: $ab
	inc hl                                           ; $40d3: $23
	ld a, e                                          ; $40d4: $7b
	ldh a, [$7f]                                     ; $40d5: $f0 $7f
	add h                                            ; $40d7: $84
	ld a, a                                          ; $40d8: $7f
	ld c, h                                          ; $40d9: $4c
	ld a, a                                          ; $40da: $7f
	cp $7f                                           ; $40db: $fe $7f
	ld a, h                                          ; $40dd: $7c

Jump_026_40de:
	ld [hl], a                                       ; $40de: $77
	cp $7f                                           ; $40df: $fe $7f
	ld a, d                                          ; $40e1: $7a
	sub c                                            ; $40e2: $91
	add a                                            ; $40e3: $87
	ld hl, sp-$10                                    ; $40e4: $f8 $f0
	rrca                                             ; $40e6: $0f
	db $fc                                           ; $40e7: $fc
	inc bc                                           ; $40e8: $03
	rst $38                                          ; $40e9: $ff
	nop                                              ; $40ea: $00
	rst FarCall                                          ; $40eb: $f7
	ld [$0ef1], sp                                   ; $40ec: $08 $f1 $0e
	ld hl, sp+$07                                    ; $40ef: $f8 $07
	halt                                             ; $40f1: $76
	db $f4                                           ; $40f2: $f4
	adc h                                            ; $40f3: $8c
	dec de                                           ; $40f4: $1b
	rst SubAFromBC                                          ; $40f5: $e7
	inc bc                                           ; $40f6: $03
	rst $38                                          ; $40f7: $ff
	add d                                            ; $40f8: $82
	ld a, a                                          ; $40f9: $7f
	pop af                                           ; $40fa: $f1
	rrca                                             ; $40fb: $0f
	ld hl, sp+$07                                    ; $40fc: $f8 $07
	ld a, a                                          ; $40fe: $7f
	add b                                            ; $40ff: $80
	rra                                              ; $4100: $1f
	ldh [$03], a                                     ; $4101: $e0 $03
	db $fc                                           ; $4103: $fc
	sub b                                            ; $4104: $90
	rst $38                                          ; $4105: $ff
	or b                                             ; $4106: $b0

jr_026_4107:
	ld a, e                                          ; $4107: $7b
	ld a, [bc]                                       ; $4108: $0a
	sbc h                                            ; $4109: $9c
	ld h, b                                          ; $410a: $60
	rst $38                                          ; $410b: $ff
	and b                                            ; $410c: $a0
	ld a, e                                          ; $410d: $7b
	db $fc                                           ; $410e: $fc
	sub a                                            ; $410f: $97
	ret nz                                           ; $4110: $c0

	ld a, a                                          ; $4111: $7f
	ret nz                                           ; $4112: $c0

	ld a, a                                          ; $4113: $7f
	rra                                              ; $4114: $1f
	ldh [$3f], a                                     ; $4115: $e0 $3f
	ret nz                                           ; $4117: $c0

	ld l, a                                          ; $4118: $6f
	cp $7f                                           ; $4119: $fe $7f
	ldh [rPCM34], a                                  ; $411b: $e0 $77
	cp $9b                                           ; $411d: $fe $9b
	ld sp, hl                                        ; $411f: $f9
	rlca                                             ; $4120: $07
	pop af                                           ; $4121: $f1
	rrca                                             ; $4122: $0f
	ld [hl], a                                       ; $4123: $77
	cp $9d                                           ; $4124: $fe $9d
	pop hl                                           ; $4126: $e1
	rra                                              ; $4127: $1f
	ld [hl], a                                       ; $4128: $77
	cp $80                                           ; $4129: $fe $80
	pop bc                                           ; $412b: $c1

jr_026_412c:
	ccf                                              ; $412c: $3f
	add h                                            ; $412d: $84
	rst $38                                          ; $412e: $ff
	push hl                                          ; $412f: $e5
	rst $38                                          ; $4130: $ff
	rst $38                                          ; $4131: $ff
	cp $e7                                           ; $4132: $fe $e7
	ld a, a                                          ; $4134: $7f
	cp $38                                           ; $4135: $fe $38
	ld a, [$3e10]                                    ; $4137: $fa $10 $3e
	ld [$080a], sp                                   ; $413a: $08 $0a $08
	cp $ff                                           ; $413d: $fe $ff
	cp $23                                           ; $413f: $fe $23
	ld a, [$e243]                                    ; $4141: $fa $43 $e2
	add e                                            ; $4144: $83
	adc $83                                          ; $4145: $ce $83
	cp [hl]                                          ; $4147: $be
	add e                                            ; $4148: $83
	cp $9c                                           ; $4149: $fe $9c
	add e                                            ; $414b: $83
	sbc [hl]                                         ; $414c: $9e
	add e                                            ; $414d: $83
	ld h, a                                          ; $414e: $67
	ld [$fe67], sp                                   ; $414f: $08 $67 $fe
	ld c, a                                          ; $4152: $4f
	ld [bc], a                                       ; $4153: $02
	ld a, a                                          ; $4154: $7f
	cp $8f                                           ; $4155: $fe $8f
	db $fc                                           ; $4157: $fc
	rra                                              ; $4158: $1f
	push af                                          ; $4159: $f5
	ld e, $de                                        ; $415a: $1e $de
	dec [hl]                                         ; $415c: $35
	db $ed                                           ; $415d: $ed
	ld [hl], $fc                                     ; $415e: $36 $fc
	daa                                              ; $4160: $27
	db $fd                                           ; $4161: $fd
	ld h, $ca                                        ; $4162: $26 $ca
	ld [hl], a                                       ; $4164: $77
	rst GetHLinHL                                          ; $4165: $cf
	ld [hl], d                                       ; $4166: $72
	rlca                                             ; $4167: $07
	jr nz, jr_026_4107                               ; $4168: $20 $9d

	xor d                                            ; $416a: $aa
	ld d, l                                          ; $416b: $55
	inc bc                                           ; $416c: $03
	db $fc                                           ; $416d: $fc
	ld d, e                                          ; $416e: $53
	db $fc                                           ; $416f: $fc
	ld a, a                                          ; $4170: $7f
	ld c, $7f                                        ; $4171: $0e $7f
	cp $93                                           ; $4173: $fe $93
	add e                                            ; $4175: $83
	db $fc                                           ; $4176: $fc
	ld b, e                                          ; $4177: $43
	db $fc                                           ; $4178: $fc
	jp Jump_026_437c                                 ; $4179: $c3 $7c $43


	db $fc                                           ; $417c: $fc
	and c                                            ; $417d: $a1
	ld a, [hl]                                       ; $417e: $7e
	ld h, c                                          ; $417f: $61
	cp [hl]                                          ; $4180: $be
	ld b, a                                          ; $4181: $47
	add b                                            ; $4182: $80
	ld a, a                                          ; $4183: $7f
	dec l                                            ; $4184: $2d
	ld a, a                                          ; $4185: $7f
	dec h                                            ; $4186: $25
	ld a, [hl]                                       ; $4187: $7e
	rst SubAFromDE                                          ; $4188: $df
	ld a, a                                          ; $4189: $7f
	ld [hl], $7f                                     ; $418a: $36 $7f
	jr z, jr_026_412c                                ; $418c: $28 $9e

	ld a, [$fe7b]                                    ; $418e: $fa $7b $fe
	sbc d                                            ; $4191: $9a
	jp nz, Jump_026_403f                             ; $4192: $c2 $3f $40

	rst $38                                          ; $4195: $ff
	add b                                            ; $4196: $80
	ld a, e                                          ; $4197: $7b
	cp $77                                           ; $4198: $fe $77
	push hl                                          ; $419a: $e5
	sbc l                                            ; $419b: $9d
	ld bc, $77fe                                     ; $419c: $01 $fe $77
	cp $46                                           ; $419f: $fe $46
	ld d, b                                          ; $41a1: $50
	ld a, a                                          ; $41a2: $7f
	ld c, $77                                        ; $41a3: $0e $77
	cp $99                                           ; $41a5: $fe $99
	ret                                              ; $41a7: $c9


	scf                                              ; $41a8: $37
	adc c                                            ; $41a9: $89
	ld [hl], a                                       ; $41aa: $77
	sbc c                                            ; $41ab: $99
	ld h, a                                          ; $41ac: $67
	ld [hl], a                                       ; $41ad: $77
	cp $7b                                           ; $41ae: $fe $7b
	ld c, $7b                                        ; $41b0: $0e $7b
	cp $85                                           ; $41b2: $fe $85
	ccf                                              ; $41b4: $3f
	rrca                                             ; $41b5: $0f
	ccf                                              ; $41b6: $3f
	rrca                                             ; $41b7: $0f
	ld a, a                                          ; $41b8: $7f
	inc de                                           ; $41b9: $13
	rst AddAOntoHL                                          ; $41ba: $ef
	inc hl                                           ; $41bb: $23
	rst GetHLinHL                                          ; $41bc: $cf
	ld b, e                                          ; $41bd: $43
	jp nz, $e283                                     ; $41be: $c2 $83 $e2

	jp $83b2                                         ; $41c1: $c3 $b2 $83


	jp c, $de83                                      ; $41c4: $da $83 $de

	add e                                            ; $41c7: $83
	ld [$f683], a                                    ; $41c8: $ea $83 $f6
	ld b, e                                          ; $41cb: $43
	cp $23                                           ; $41cc: $fe $23
	ld l, a                                          ; $41ce: $6f
	ld a, [bc]                                       ; $41cf: $0a
	ld [hl], l                                       ; $41d0: $75
	jp nz, $be6d                                     ; $41d1: $c2 $6d $be

	ld b, a                                          ; $41d4: $47

jr_026_41d5:
	add b                                            ; $41d5: $80
	adc a                                            ; $41d6: $8f
	add $7b                                          ; $41d7: $c6 $7b
	rst SubAFromHL                                          ; $41d9: $d7
	ld l, d                                          ; $41da: $6a
	jp c, $bb67                                      ; $41db: $da $67 $bb

	ld b, [hl]                                       ; $41de: $46
	cp d                                             ; $41df: $ba
	ld b, a                                          ; $41e0: $47
	cp e                                             ; $41e1: $bb
	ld b, [hl]                                       ; $41e2: $46
	cp $03                                           ; $41e3: $fe $03
	rst $38                                          ; $41e5: $ff
	inc bc                                           ; $41e6: $03
	ld c, a                                          ; $41e7: $4f
	ld b, b                                          ; $41e8: $40
	sbc [hl]                                         ; $41e9: $9e
	push de                                          ; $41ea: $d5
	inc bc                                           ; $41eb: $03
	jr nz, jr_026_41f5                               ; $41ec: $20 $07

	db $fc                                           ; $41ee: $fc
	ld a, a                                          ; $41ef: $7f
	inc c                                            ; $41f0: $0c
	sub e                                            ; $41f1: $93
	ld d, b                                          ; $41f2: $50
	cp a                                             ; $41f3: $bf
	or b                                             ; $41f4: $b0

jr_026_41f5:
	ld e, a                                          ; $41f5: $5f
	ld e, b                                          ; $41f6: $58
	xor a                                            ; $41f7: $af
	xor h                                            ; $41f8: $ac
	ld d, a                                          ; $41f9: $57
	ld d, [hl]                                       ; $41fa: $56
	xor a                                            ; $41fb: $af
	xor l                                            ; $41fc: $ad
	ld d, a                                          ; $41fd: $57
	ld l, h                                          ; $41fe: $6c
	ldh a, [hDisp1_BGP]                                     ; $41ff: $f0 $92
	ei                                               ; $4201: $fb
	inc b                                            ; $4202: $04
	di                                               ; $4203: $f3
	inc c                                            ; $4204: $0c
	ld h, e                                          ; $4205: $63
	sbc h                                            ; $4206: $9c
	ld [bc], a                                       ; $4207: $02
	db $fd                                           ; $4208: $fd
	ld b, $fd                                        ; $4209: $06 $fd
	add d                                            ; $420b: $82
	db $fd                                           ; $420c: $fd
	add h                                            ; $420d: $84
	ld [hl], c                                       ; $420e: $71
	ld e, b                                          ; $420f: $58
	sbc [hl]                                         ; $4210: $9e
	ld [$fe7b], sp                                   ; $4211: $08 $7b $fe
	ld a, l                                          ; $4214: $7d
	ld [de], a                                       ; $4215: $12
	ld [hl], a                                       ; $4216: $77
	cp $66                                           ; $4217: $fe $66
	ld e, b                                          ; $4219: $58
	ld l, a                                          ; $421a: $6f
	ld d, d                                          ; $421b: $52
	ccf                                              ; $421c: $3f
	ld d, b                                          ; $421d: $50
	sbc l                                            ; $421e: $9d
	cp c                                             ; $421f: $b9
	ld b, a                                          ; $4220: $47
	ld [hl], a                                       ; $4221: $77
	cp $7e                                           ; $4222: $fe $7e
	jp nc, $fe6f                                     ; $4224: $d2 $6f $fe

	ld a, l                                          ; $4227: $7d
	ld hl, sp-$68                                    ; $4228: $f8 $98
	adc a                                            ; $422a: $8f
	add d                                            ; $422b: $82
	rra                                              ; $422c: $1f
	ld [bc], a                                       ; $422d: $02
	rra                                              ; $422e: $1f
	ld [bc], a                                       ; $422f: $02
	ccf                                              ; $4230: $3f
	ld a, e                                          ; $4231: $7b
	cp $9e                                           ; $4232: $fe $9e
	ld a, [hl]                                       ; $4234: $7e
	ld [hl], e                                       ; $4235: $73
	cp $7e                                           ; $4236: $fe $7e
	jr c, jr_026_41d5                                ; $4238: $38 $9b

	ld a, h                                          ; $423a: $7c
	rla                                              ; $423b: $17
	ld a, h                                          ; $423c: $7c
	rrca                                             ; $423d: $0f
	ld a, e                                          ; $423e: $7b
	cp $7c                                           ; $423f: $fe $7c
	sub b                                            ; $4241: $90
	sbc l                                            ; $4242: $9d
	rlca                                             ; $4243: $07
	inc a                                            ; $4244: $3c
	ld a, e                                          ; $4245: $7b
	cp $74                                           ; $4246: $fe $74
	call z, $ca78                                    ; $4248: $cc $78 $ca
	ld a, b                                          ; $424b: $78
	add [hl]                                         ; $424c: $86
	ld [hl], l                                       ; $424d: $75
	ld a, d                                          ; $424e: $7a
	ld a, a                                          ; $424f: $7f
	xor h                                            ; $4250: $ac
	ld b, a                                          ; $4251: $47
	or b                                             ; $4252: $b0
	ld [hl], a                                       ; $4253: $77
	inc c                                            ; $4254: $0c
	adc b                                            ; $4255: $88
	ei                                               ; $4256: $fb
	rlca                                             ; $4257: $07
	rst $38                                          ; $4258: $ff
	rlca                                             ; $4259: $07
	cp $07                                           ; $425a: $fe $07
	or $0f                                           ; $425c: $f6 $0f
	db $fd                                           ; $425e: $fd
	ld c, $ff                                        ; $425f: $0e $ff
	inc c                                            ; $4261: $0c
	ld l, d                                          ; $4262: $6a
	push de                                          ; $4263: $d5
	dec [hl]                                         ; $4264: $35
	ld [$75aa], a                                    ; $4265: $ea $aa $75
	or l                                             ; $4268: $b5
	ld l, d                                          ; $4269: $6a
	ld [$d555], a                                    ; $426a: $ea $55 $d5
	ld [hl], e                                       ; $426d: $73
	db $fc                                           ; $426e: $fc
	ccf                                              ; $426f: $3f
	inc l                                            ; $4270: $2c
	sbc c                                            ; $4271: $99
	db $dd                                           ; $4272: $dd
	ld [hl+], a                                      ; $4273: $22
	xor d                                            ; $4274: $aa
	ld d, l                                          ; $4275: $55
	ld [hl], a                                       ; $4276: $77
	adc b                                            ; $4277: $88
	inc bc                                           ; $4278: $03

jr_026_4279:
	ld hl, sp+$6b                                    ; $4279: $f8 $6b
	ld hl, sp+$7f                                    ; $427b: $f8 $7f
	ld [$dc95], sp                                   ; $427d: $08 $95 $dc
	daa                                              ; $4280: $27
	xor d                                            ; $4281: $aa
	ld d, a                                          ; $4282: $57
	halt                                             ; $4283: $76
	adc e                                            ; $4284: $8b
	xor d                                            ; $4285: $aa
	ld d, a                                          ; $4286: $57
	sbc $23                                          ; $4287: $de $23
	ld [hl], a                                       ; $4289: $77
	ld hl, sp-$6a                                    ; $428a: $f8 $96
	ld b, [hl]                                       ; $428c: $46
	db $fd                                           ; $428d: $fd
	ld b, [hl]                                       ; $428e: $46
	db $fd                                           ; $428f: $fd
	ld h, $fd                                        ; $4290: $26 $fd
	inc h                                            ; $4292: $24
	rst $38                                          ; $4293: $ff
	inc [hl]                                         ; $4294: $34
	ld a, e                                          ; $4295: $7b
	cp $9e                                           ; $4296: $fe $9e
	inc l                                            ; $4298: $2c
	ld a, e                                          ; $4299: $7b
	cp $9e                                           ; $429a: $fe $9e
	jr nz, jr_026_4309                               ; $429c: $20 $6b

	cp $77                                           ; $429e: $fe $77
	inc b                                            ; $42a0: $04
	halt                                             ; $42a1: $76
	ld a, [$0c77]                                    ; $42a2: $fa $77 $0c
	ld [hl], a                                       ; $42a5: $77
	ld c, [hl]                                       ; $42a6: $4e
	ld h, l                                          ; $42a7: $65
	ld a, [bc]                                       ; $42a8: $0a
	sbc l                                            ; $42a9: $9d
	rst AddAOntoHL                                          ; $42aa: $ef
	db $10                                           ; $42ab: $10
	ld [hl], a                                       ; $42ac: $77
	cp $9b                                           ; $42ad: $fe $9b
	rst GetHLinHL                                          ; $42af: $cf
	jr nc, jr_026_4279                               ; $42b0: $30 $c7

	jr c, @+$79                                      ; $42b2: $38 $77

	cp $9d                                           ; $42b4: $fe $9d
	add a                                            ; $42b6: $87
	ld a, b                                          ; $42b7: $78
	ld d, l                                          ; $42b8: $55
	inc b                                            ; $42b9: $04
	ld a, a                                          ; $42ba: $7f
	cp $9a                                           ; $42bb: $fe $9a
	add e                                            ; $42bd: $83
	ld a, a                                          ; $42be: $7f
	cp $02                                           ; $42bf: $fe $02
	xor $6b                                          ; $42c1: $ee $6b
	cp $9e                                           ; $42c3: $fe $9e
	rst GetHLinHL                                          ; $42c5: $cf
	ld a, e                                          ; $42c6: $7b
	cp $98                                           ; $42c7: $fe $98
	adc a                                            ; $42c9: $8f
	ld [bc], a                                       ; $42ca: $02
	jr c, jr_026_42dc                                ; $42cb: $38 $0f

	jr c, jr_026_42de                                ; $42cd: $38 $0f

	jr jr_026_4344                                   ; $42cf: $18 $73

	cp $97                                           ; $42d1: $fe $97
	inc e                                            ; $42d3: $1c
	rlca                                             ; $42d4: $07
	sbc [hl]                                         ; $42d5: $9e
	inc bc                                           ; $42d6: $03
	rst SubAFromDE                                          ; $42d7: $df
	inc bc                                           ; $42d8: $03
	rlca                                             ; $42d9: $07
	ld hl, sp+$76                                    ; $42da: $f8 $76

jr_026_42dc:
	or d                                             ; $42dc: $b2
	ld [hl], l                                       ; $42dd: $75

jr_026_42de:
	or [hl]                                          ; $42de: $b6
	ld [hl], a                                       ; $42df: $77
	ld de, $b37d                                     ; $42e0: $11 $7d $b3
	ld c, a                                          ; $42e3: $4f
	ld [bc], a                                       ; $42e4: $02
	ld a, [hl]                                       ; $42e5: $7e
	add sp, -$65                                     ; $42e6: $e8 $9b
	ei                                               ; $42e8: $fb
	inc c                                            ; $42e9: $0c
	rst $38                                          ; $42ea: $ff
	ld [$9775], sp                                   ; $42eb: $08 $75 $97
	ld a, l                                          ; $42ee: $7d
	sub c                                            ; $42ef: $91
	sub d                                            ; $42f0: $92
	db $fd                                           ; $42f1: $fd
	inc bc                                           ; $42f2: $03
	cp $03                                           ; $42f3: $fe $03
	ei                                               ; $42f5: $fb
	ld b, $6a                                        ; $42f6: $06 $6a
	push de                                          ; $42f8: $d5
	db $dd                                           ; $42f9: $dd
	and d                                            ; $42fa: $a2
	xor d                                            ; $42fb: $aa
	push de                                          ; $42fc: $d5
	rst FarCall                                          ; $42fd: $f7
	inc bc                                           ; $42fe: $03

Jump_026_42ff:
	jr z, @+$05                                      ; $42ff: $28 $03

	ld hl, sp+$67                                    ; $4301: $f8 $67
	ld hl, sp-$69                                    ; $4303: $f8 $97
	ld d, a                                          ; $4305: $57
	db $dd                                           ; $4306: $dd
	inc hl                                           ; $4307: $23
	xor e                                            ; $4308: $ab

jr_026_4309:
	ld d, l                                          ; $4309: $55
	ld [hl], a                                       ; $430a: $77
	adc c                                            ; $430b: $89
	xor e                                            ; $430c: $ab
	ld l, e                                          ; $430d: $6b
	ldh a, [$7f]                                     ; $430e: $f0 $7f
	ld b, $7f                                        ; $4310: $06 $7f
	cp $98                                           ; $4312: $fe $98
	ld [hl+], a                                      ; $4314: $22
	rst $38                                          ; $4315: $ff
	ld [de], a                                       ; $4316: $12
	rst $38                                          ; $4317: $ff
	ld de, $90ff                                     ; $4318: $11 $ff $90
	ld [hl], e                                       ; $431b: $73
	cp $7e                                           ; $431c: $fe $7e
	inc b                                            ; $431e: $04
	sbc [hl]                                         ; $431f: $9e
	ld [bc], a                                       ; $4320: $02
	ld a, e                                          ; $4321: $7b
	cp $7f                                           ; $4322: $fe $7f
	add c                                            ; $4324: $81
	ld [hl], a                                       ; $4325: $77
	ld h, h                                          ; $4326: $64
	ld a, l                                          ; $4327: $7d
	inc b                                            ; $4328: $04
	ld a, [hl]                                       ; $4329: $7e
	ld hl, sp+$67                                    ; $432a: $f8 $67
	ld [$bf9a], sp                                   ; $432c: $08 $9a $bf
	ret nz                                           ; $432f: $c0

	sbc a                                            ; $4330: $9f
	ldh [$5f], a                                     ; $4331: $e0 $5f
	ld a, d                                          ; $4333: $7a
	ld c, [hl]                                       ; $4334: $4e
	ld a, a                                          ; $4335: $7f
	ld c, $77                                        ; $4336: $0e $77
	cp $83                                           ; $4338: $fe $83
	adc [hl]                                         ; $433a: $8e
	ld [hl], c                                       ; $433b: $71
	ld c, $f1                                        ; $433c: $0e $f1
	ld c, $f1                                        ; $433e: $0e $f1
	inc e                                            ; $4340: $1c
	db $e3                                           ; $4341: $e3
	jr @-$17                                         ; $4342: $18 $e7

jr_026_4344:
	inc bc                                           ; $4344: $03
	cp $06                                           ; $4345: $fe $06
	db $fc                                           ; $4347: $fc
	ld [$10f8], sp                                   ; $4348: $08 $f8 $10
	ldh a, [$30]                                     ; $434b: $f0 $30
	ldh [$31], a                                     ; $434d: $e0 $31
	ldh [$67], a                                     ; $434f: $e0 $67
	ret nz                                           ; $4351: $c0

	rst GetHLinHL                                          ; $4352: $cf
	add b                                            ; $4353: $80
	rrca                                             ; $4354: $0f
	ld [bc], a                                       ; $4355: $02
	ld [hl], a                                       ; $4356: $77
	cp $9d                                           ; $4357: $fe $9d
	ccf                                              ; $4359: $3f
	ld b, $7b                                        ; $435a: $06 $7b
	or a                                             ; $435c: $b7
	sub d                                            ; $435d: $92
	inc b                                            ; $435e: $04
	ei                                               ; $435f: $fb
	rrca                                             ; $4360: $0f
	ldh a, [$7f]                                     ; $4361: $f0 $7f
	cp $03                                           ; $4363: $fe $03
	ld a, [$f103]                                    ; $4365: $fa $03 $f1
	ld bc, $00f0                                     ; $4368: $01 $f0 $00
	ld [hl], a                                       ; $436b: $77
	cp $98                                           ; $436c: $fe $98
	ld hl, sp+$00                                    ; $436e: $f8 $00
	ld sp, hl                                        ; $4370: $f9
	ldh [rLCDC], a                                   ; $4371: $e0 $40
	rst $38                                          ; $4373: $ff
	jr nc, jr_026_43f0                               ; $4374: $30 $7a

	xor d                                            ; $4376: $aa
	sub l                                            ; $4377: $95
	add [hl]                                         ; $4378: $86
	rst $38                                          ; $4379: $ff
	ld b, c                                          ; $437a: $41
	ld a, a                                          ; $437b: $7f

Jump_026_437c:
	jr c, jr_026_43bd                                ; $437c: $38 $3f

	or $ff                                           ; $437e: $f6 $ff

Jump_026_4380:
	add e                                            ; $4380: $83
	db $fd                                           ; $4381: $fd
	ld [hl], l                                       ; $4382: $75
	or $75                                           ; $4383: $f6 $75
	db $f4                                           ; $4385: $f4
	ld a, a                                          ; $4386: $7f
	or d                                             ; $4387: $b2
	sub c                                            ; $4388: $91
	add l                                            ; $4389: $85
	ei                                               ; $438a: $fb
	ld b, d                                          ; $438b: $42
	rst $38                                          ; $438c: $ff
	rst SubAFromBC                                          ; $438d: $e7
	db $fc                                           ; $438e: $fc
	or $0d                                           ; $438f: $f6 $0d
	db $ed                                           ; $4391: $ed
	ld a, [de]                                       ; $4392: $1a
	jp c, $b735                                      ; $4393: $da $35 $b7

	ld l, b                                          ; $4396: $68
	ld [hl], e                                       ; $4397: $73
	ld [$3003], sp                                   ; $4398: $08 $03 $30
	ld a, a                                          ; $439b: $7f
	ld hl, sp+$7f                                    ; $439c: $f8 $7f
	ld a, [$fc03]                                    ; $439e: $fa $03 $fc
	ld b, a                                          ; $43a1: $47
	db $fc                                           ; $43a2: $fc
	sub a                                            ; $43a3: $97
	adc c                                            ; $43a4: $89
	rst SubAFromDE                                          ; $43a5: $df
	ld hl, $8b75                                     ; $43a6: $21 $75 $8b
	sbc $23                                          ; $43a9: $de $23
	halt                                             ; $43ab: $76
	ld a, e                                          ; $43ac: $7b
	db $fc                                           ; $43ad: $fc
	sbc h                                            ; $43ae: $9c
	ld [hl], h                                       ; $43af: $74
	adc a                                            ; $43b0: $8f
	sub b                                            ; $43b1: $90
	ld a, d                                          ; $43b2: $7a
	jr jr_026_441b                                   ; $43b3: $18 $66

	inc c                                            ; $43b5: $0c
	ld [hl], a                                       ; $43b6: $77
	cp $94                                           ; $43b7: $fe $94
	jr @+$01                                         ; $43b9: $18 $ff

	ld l, $ff                                        ; $43bb: $2e $ff

jr_026_43bd:
	rra                                              ; $43bd: $1f
	rst $38                                          ; $43be: $ff
	ld c, $ff                                        ; $43bf: $0e $ff
	inc d                                            ; $43c1: $14
	rst $38                                          ; $43c2: $ff
	inc c                                            ; $43c3: $0c
	ld a, e                                          ; $43c4: $7b
	db $fc                                           ; $43c5: $fc
	halt                                             ; $43c6: $76
	nop                                              ; $43c7: $00
	halt                                             ; $43c8: $76
	ld c, [hl]                                       ; $43c9: $4e
	sbc b                                            ; $43ca: $98
	add e                                            ; $43cb: $83
	db $fc                                           ; $43cc: $fc
	ld h, c                                          ; $43cd: $61
	cp $18                                           ; $43ce: $fe $18
	rst $38                                          ; $43d0: $ff
	rlca                                             ; $43d1: $07
	ld a, d                                          ; $43d2: $7a
	ld [$3994], a                                    ; $43d3: $ea $94 $39
	rst JumpTable                                          ; $43d6: $c7
	ld [hl], e                                       ; $43d7: $73
	adc a                                            ; $43d8: $8f
	rst JumpTable                                          ; $43d9: $c7
	ccf                                              ; $43da: $3f
	call $3c3f                                       ; $43db: $cd $3f $3c
	rst $38                                          ; $43de: $ff
	call nc, $e27b                                   ; $43df: $d4 $7b $e2
	sub h                                            ; $43e2: $94
	ld de, $bffe                                     ; $43e3: $11 $fe $bf
	ld bc, $07ff                                     ; $43e6: $01 $ff $07
	db $fd                                           ; $43e9: $fd
	rra                                              ; $43ea: $1f
	ldh [c], a                                       ; $43eb: $e2
	ld a, a                                          ; $43ec: $7f
	add c                                            ; $43ed: $81
	ld l, d                                          ; $43ee: $6a
	dec a                                            ; $43ef: $3d

jr_026_43f0:
	sbc [hl]                                         ; $43f0: $9e
	ret nz                                           ; $43f1: $c0

	ld a, e                                          ; $43f2: $7b
	cp $7f                                           ; $43f3: $fe $7f
	inc e                                            ; $43f5: $1c
	ld l, a                                          ; $43f6: $6f
	db $fc                                           ; $43f7: $fc
	ld a, a                                          ; $43f8: $7f
	cp $7e                                           ; $43f9: $fe $7e
	cp h                                             ; $43fb: $bc
	sbc d                                            ; $43fc: $9a
	rra                                              ; $43fd: $1f
	pop af                                           ; $43fe: $f1
	ld c, $fb                                        ; $43ff: $0e $fb
	inc b                                            ; $4401: $04
	ld e, d                                          ; $4402: $5a
	dec e                                            ; $4403: $1d
	ld a, h                                          ; $4404: $7c
	db $db                                           ; $4405: $db
	sub a                                            ; $4406: $97
	inc bc                                           ; $4407: $03
	db $fd                                           ; $4408: $fd
	inc bc                                           ; $4409: $03
	db $fd                                           ; $440a: $fd
	ld de, $f1ef                                     ; $440b: $11 $ef $f1
	rrca                                             ; $440e: $0f
	ld l, h                                          ; $440f: $6c
	adc $9d                                          ; $4410: $ce $9d
	db $dd                                           ; $4412: $dd
	ld a, [hl-]                                      ; $4413: $3a
	inc bc                                           ; $4414: $03
	ld d, b                                          ; $4415: $50
	inc de                                           ; $4416: $13
	db $fc                                           ; $4417: $fc
	sub l                                            ; $4418: $95
	db $fd                                           ; $4419: $fd
	ld [bc], a                                       ; $441a: $02

jr_026_441b:
	cp a                                             ; $441b: $bf
	ld b, b                                          ; $441c: $40
	ei                                               ; $441d: $fb
	inc b                                            ; $441e: $04
	rst AddAOntoHL                                          ; $441f: $ef
	db $10                                           ; $4420: $10
	rst $38                                          ; $4421: $ff
	nop                                              ; $4422: $00
	ld [hl], a                                       ; $4423: $77
	ld hl, sp+$7f                                    ; $4424: $f8 $7f
	ld a, [$ec7f]                                    ; $4426: $fa $7f $ec
	ld a, a                                          ; $4429: $7f
	db $fc                                           ; $442a: $fc
	sbc l                                            ; $442b: $9d
	or a                                             ; $442c: $b7
	ld c, b                                          ; $442d: $48
	ld [hl], l                                       ; $442e: $75
	or [hl]                                          ; $442f: $b6
	sbc l                                            ; $4430: $9d
	rst FarCall                                          ; $4431: $f7
	ld [$8d6f], sp                                   ; $4432: $08 $6f $8d
	ld [hl], a                                       ; $4435: $77
	xor $7f                                          ; $4436: $ee $7f
	ret c                                            ; $4438: $d8

	sbc l                                            ; $4439: $9d
	rst SubAFromDE                                          ; $443a: $df
	jr nz, @+$71                                     ; $443b: $20 $6f

	ld a, c                                          ; $443d: $79
	ld a, l                                          ; $443e: $7d
	ld [bc], a                                       ; $443f: $02
	ld a, h                                          ; $4440: $7c
	dec [hl]                                         ; $4441: $35
	sub d                                            ; $4442: $92
	ret c                                            ; $4443: $d8

	cpl                                              ; $4444: $2f
	ld hl, sp+$0f                                    ; $4445: $f8 $0f
	ei                                               ; $4447: $fb
	rrca                                             ; $4448: $0f
	ld a, b                                          ; $4449: $78
	adc a                                            ; $444a: $8f
	ldh a, [$1f]                                     ; $444b: $f0 $1f
	ldh a, [$1f]                                     ; $444d: $f0 $1f
	ld b, b                                          ; $444f: $40
	ld a, e                                          ; $4450: $7b
	ld d, [hl]                                       ; $4451: $56
	ld l, a                                          ; $4452: $6f
	cp $7c                                           ; $4453: $fe $7c
	ld [hl], l                                       ; $4455: $75
	sbc [hl]                                         ; $4456: $9e
	add a                                            ; $4457: $87
	ld a, e                                          ; $4458: $7b
	ld d, b                                          ; $4459: $50
	ld a, a                                          ; $445a: $7f
	ld a, [de]                                       ; $445b: $1a
	sub c                                            ; $445c: $91
	inc c                                            ; $445d: $0c
	ei                                               ; $445e: $fb
	inc d                                            ; $445f: $14
	ei                                               ; $4460: $fb
	inc e                                            ; $4461: $1c
	di                                               ; $4462: $f3
	inc a                                            ; $4463: $3c
	di                                               ; $4464: $f3
	db $ec                                           ; $4465: $ec
	di                                               ; $4466: $f3
	ldh [rIE], a                                     ; $4467: $e0 $ff
	rra                                              ; $4469: $1f
	db $e3                                           ; $446a: $e3
	ld d, l                                          ; $446b: $55
	ld h, c                                          ; $446c: $61
	ld a, h                                          ; $446d: $7c
	ld h, l                                          ; $446e: $65
	sub l                                            ; $446f: $95
	db $fc                                           ; $4470: $fc
	rst $38                                          ; $4471: $ff
	add hl, bc                                       ; $4472: $09
	cp $13                                           ; $4473: $fe $13
	db $fc                                           ; $4475: $fc
	rlca                                             ; $4476: $07
	ld hl, sp+$17                                    ; $4477: $f8 $17
	ld hl, sp+$74                                    ; $4479: $f8 $74
	add sp, -$67                                     ; $447b: $e8 $99
	di                                               ; $447d: $f3
	db $fc                                           ; $447e: $fc
	inc c                                            ; $447f: $0c
	di                                               ; $4480: $f3
	add b                                            ; $4481: $80
	ld a, a                                          ; $4482: $7f
	ld l, a                                          ; $4483: $6f
	cp $69                                           ; $4484: $fe $69
	reti                                             ; $4486: $d9


	sub [hl]                                         ; $4487: $96
	ccf                                              ; $4488: $3f
	add d                                            ; $4489: $82
	db $fd                                           ; $448a: $fd
	add [hl]                                         ; $448b: $86
	ld sp, hl                                        ; $448c: $f9
	add a                                            ; $448d: $87
	ld hl, sp-$71                                    ; $448e: $f8 $8f
	ldh a, [$7b]                                     ; $4490: $f0 $7b
	and e                                            ; $4492: $a3
	sbc d                                            ; $4493: $9a
	ldh [rAUD1SWEEP], a                              ; $4494: $e0 $10
	rst AddAOntoHL                                          ; $4496: $ef
	rlca                                             ; $4497: $07
	ld hl, sp+$75                                    ; $4498: $f8 $75
	ld d, $67                                        ; $449a: $16 $67
	cp $7e                                           ; $449c: $fe $7e
	ldh a, [$9b]                                     ; $449e: $f0 $9b
	ld sp, $f9ff                                     ; $44a0: $31 $ff $f9
	rlca                                             ; $44a3: $07
	ld a, e                                          ; $44a4: $7b
	ld bc, $fe73                                     ; $44a5: $01 $73 $fe
	ld a, c                                          ; $44a8: $79
	sbc e                                            ; $44a9: $9b
	rst SubAFromDE                                          ; $44aa: $df
	ld bc, $ff9e                                     ; $44ab: $01 $9e $ff
	cpl                                              ; $44ae: $2f
	ld b, b                                          ; $44af: $40
	ld a, a                                          ; $44b0: $7f
	db $d3                                           ; $44b1: $d3
	daa                                              ; $44b2: $27
	ld b, b                                          ; $44b3: $40
	ld [hl], a                                       ; $44b4: $77
	ldh a, [c]                                       ; $44b5: $f2
	ld a, a                                          ; $44b6: $7f
	db $f4                                           ; $44b7: $f4
	ld a, a                                          ; $44b8: $7f
	jp z, $fa7f                                      ; $44b9: $ca $7f $fa

	sbc l                                            ; $44bc: $9d
	ld a, e                                          ; $44bd: $7b
	add h                                            ; $44be: $84
	ld [hl], a                                       ; $44bf: $77
	jp z, $fe03                                      ; $44c0: $ca $03 $fe

	ld c, e                                          ; $44c3: $4b
	cp $7f                                           ; $44c4: $fe $7f
	ld l, c                                          ; $44c6: $69
	sbc l                                            ; $44c7: $9d
	pop hl                                           ; $44c8: $e1
	ccf                                              ; $44c9: $3f
	ld [hl], a                                       ; $44ca: $77
	cp $9c                                           ; $44cb: $fe $9c
	pop bc                                           ; $44cd: $c1
	ld a, a                                          ; $44ce: $7f
	jp nz, $fe7b                                     ; $44cf: $c2 $7b $fe

	sbc d                                            ; $44d2: $9a
	di                                               ; $44d3: $f3
	ld a, $c0                                        ; $44d4: $3e $c0
	cp a                                             ; $44d6: $bf
	ld b, b                                          ; $44d7: $40
	ld a, e                                          ; $44d8: $7b
	cp $7f                                           ; $44d9: $fe $7f
	ld c, b                                          ; $44db: $48
	sub a                                            ; $44dc: $97
	pop bc                                           ; $44dd: $c1
	ld a, $c1                                        ; $44de: $3e $c1
	ld a, $c3                                        ; $44e0: $3e $c3
	inc a                                            ; $44e2: $3c
	jp Jump_026_743c                                 ; $44e3: $c3 $3c $74


	add hl, hl                                       ; $44e6: $29
	ld a, l                                          ; $44e7: $7d
	rra                                              ; $44e8: $1f
	sbc l                                            ; $44e9: $9d
	ld hl, sp+$07                                    ; $44ea: $f8 $07
	ld [hl], a                                       ; $44ec: $77
	cp $7b                                           ; $44ed: $fe $7b
	dec e                                            ; $44ef: $1d
	sbc [hl]                                         ; $44f0: $9e
	rrca                                             ; $44f1: $0f
	ld b, a                                          ; $44f2: $47
	cp a                                             ; $44f3: $bf
	ld a, a                                          ; $44f4: $7f
	ld a, [hl+]                                      ; $44f5: $2a
	ld a, a                                          ; $44f6: $7f
	cp $64                                           ; $44f7: $fe $64
	db $ec                                           ; $44f9: $ec
	ld [hl], a                                       ; $44fa: $77
	rlca                                             ; $44fb: $07
	ld a, a                                          ; $44fc: $7f
	call nz, $a19c                                   ; $44fd: $c4 $9c $a1
	ld a, a                                          ; $4500: $7f
	sbc $67                                          ; $4501: $de $67
	rst AddAOntoHL                                          ; $4503: $ef
	ld a, e                                          ; $4504: $7b
	cp $9d                                           ; $4505: $fe $9d
	ld c, a                                          ; $4507: $4f
	ldh a, [$7b]                                     ; $4508: $f0 $7b
	or e                                             ; $450a: $b3
	ld e, e                                          ; $450b: $5b
	cp $7d                                           ; $450c: $fe $7d
	or [hl]                                          ; $450e: $b6
	ld c, a                                          ; $450f: $4f
	ret nz                                           ; $4510: $c0

	ld a, a                                          ; $4511: $7f
	inc c                                            ; $4512: $0c
	ld e, d                                          ; $4513: $5a
	rst AddAOntoHL                                          ; $4514: $ef
	ld a, e                                          ; $4515: $7b
	cp $70                                           ; $4516: $fe $70
	sub a                                            ; $4518: $97
	ld d, a                                          ; $4519: $57
	cp $03                                           ; $451a: $fe $03
	ld a, $03                                        ; $451c: $3e $03
	cp $0f                                           ; $451e: $fe $0f
	cp $7f                                           ; $4520: $fe $7f
	ld l, a                                          ; $4522: $6f
	ld a, h                                          ; $4523: $7c
	ld h, h                                          ; $4524: $64
	ld a, [hl]                                       ; $4525: $7e
	add h                                            ; $4526: $84
	ld a, [hl]                                       ; $4527: $7e
	ld a, d                                          ; $4528: $7a
	adc b                                            ; $4529: $88
	rlca                                             ; $452a: $07
	ei                                               ; $452b: $fb
	rrca                                             ; $452c: $0f
	db $fd                                           ; $452d: $fd
	rrca                                             ; $452e: $0f
	ld a, [$c71f]                                    ; $452f: $fa $1f $c7
	jr c, @-$77                                      ; $4532: $38 $87

	ld a, b                                          ; $4534: $78
	rst $38                                          ; $4535: $ff
	rst $38                                          ; $4536: $ff
	rst JumpTable                                          ; $4537: $c7
	rst $38                                          ; $4538: $ff
	add c                                            ; $4539: $81
	rst $38                                          ; $453a: $ff
	ld h, c                                          ; $453b: $61
	sbc a                                            ; $453c: $9f
	ld h, e                                          ; $453d: $63
	sbc a                                            ; $453e: $9f
	db $e3                                           ; $453f: $e3
	rra                                              ; $4540: $1f
	ld [hl], a                                       ; $4541: $77
	inc c                                            ; $4542: $0c
	ld a, l                                          ; $4543: $7d
	or $df                                           ; $4544: $f6 $df
	rst $38                                          ; $4546: $ff
	sub a                                            ; $4547: $97
	jp $8fff                                         ; $4548: $c3 $ff $8f


	di                                               ; $454b: $f3
	adc a                                            ; $454c: $8f
	di                                               ; $454d: $f3
	rrca                                             ; $454e: $0f
	di                                               ; $454f: $f3
	ld a, c                                          ; $4550: $79
	ld c, [hl]                                       ; $4551: $4e
	sbc l                                            ; $4552: $9d
	rst $38                                          ; $4553: $ff
	ld a, $79                                        ; $4554: $3e $79
	db $e4                                           ; $4556: $e4
	sbc [hl]                                         ; $4557: $9e
	and b                                            ; $4558: $a0
	ld a, c                                          ; $4559: $79
	sbc $7f                                          ; $455a: $de $7f
	ld h, e                                          ; $455c: $63
	ld a, a                                          ; $455d: $7f
	db $fc                                           ; $455e: $fc
	ld a, a                                          ; $455f: $7f
	ld c, $9c                                        ; $4560: $0e $9c
	db $fd                                           ; $4562: $fd
	cp $7f                                           ; $4563: $fe $7f
	ld a, d                                          ; $4565: $7a

jr_026_4566:
	jr c, jr_026_45d4                                ; $4566: $38 $6c

	jp nc, $239d                                     ; $4568: $d2 $9d $23

	db $fc                                           ; $456b: $fc
	halt                                             ; $456c: $76
	inc b                                            ; $456d: $04
	ld a, a                                          ; $456e: $7f
	or c                                             ; $456f: $b1
	rst SubAFromDE                                          ; $4570: $df
	rst $38                                          ; $4571: $ff
	sub h                                            ; $4572: $94
	ld a, h                                          ; $4573: $7c
	rst $38                                          ; $4574: $ff
	add hl, de                                       ; $4575: $19
	cp $d3                                           ; $4576: $fe $d3
	inc a                                            ; $4578: $3c
	db $d3                                           ; $4579: $d3
	inc a                                            ; $457a: $3c
	rra                                              ; $457b: $1f
	rst $38                                          ; $457c: $ff
	ld sp, hl                                        ; $457d: $f9
	ld a, c                                          ; $457e: $79
	ld [$ca7b], sp                                   ; $457f: $08 $7b $ca
	ld a, c                                          ; $4582: $79
	sbc $9a                                          ; $4583: $de $9a
	adc a                                            ; $4585: $8f
	ld [hl], b                                       ; $4586: $70
	adc a                                            ; $4587: $8f
	ld [hl], b                                       ; $4588: $70
	jp $ffde                                         ; $4589: $c3 $de $ff


	ld [hl], l                                       ; $458c: $75
	and d                                            ; $458d: $a2
	add a                                            ; $458e: $87
	ld b, [hl]                                       ; $458f: $46
	ld sp, hl                                        ; $4590: $f9
	add $79                                          ; $4591: $c6 $79
	add $79                                          ; $4593: $c6 $79
	add [hl]                                         ; $4595: $86
	ld a, c                                          ; $4596: $79
	ld a, [$fffd]                                    ; $4597: $fa $fd $ff
	rst $38                                          ; $459a: $ff
	rra                                              ; $459b: $1f
	db $fc                                           ; $459c: $fc
	cpl                                              ; $459d: $2f
	call c, $8c7f                                    ; $459e: $dc $7f $8c
	ld [hl], a                                       ; $45a1: $77
	adc h                                            ; $45a2: $8c
	ld a, a                                          ; $45a3: $7f
	add h                                            ; $45a4: $84
	ld a, e                                          ; $45a5: $7b
	add [hl]                                         ; $45a6: $86
	inc bc                                           ; $45a7: $03
	ld c, $03                                        ; $45a8: $0e $03
	cp $03                                           ; $45aa: $fe $03
	cp $53                                           ; $45ac: $fe $53
	cp $84                                           ; $45ae: $fe $84
	or $1f                                           ; $45b0: $f6 $1f
	db $ed                                           ; $45b2: $ed
	ld a, $f5                                        ; $45b3: $3e $f5
	ld a, $ef                                        ; $45b5: $3e $ef
	ld a, h                                          ; $45b7: $7c
	db $db                                           ; $45b8: $db
	ld a, h                                          ; $45b9: $7c
	cp a                                             ; $45ba: $bf
	ld hl, sp-$29                                    ; $45bb: $f8 $d7
	ld hl, sp-$41                                    ; $45bd: $f8 $bf
	ldh a, [$e2]                                     ; $45bf: $f0 $e2
	rra                                              ; $45c1: $1f
	rst JumpTable                                          ; $45c2: $c7
	ccf                                              ; $45c3: $3f
	add $3f                                          ; $45c4: $c6 $3f
	adc h                                            ; $45c6: $8c
	ld a, a                                          ; $45c7: $7f
	adc [hl]                                         ; $45c8: $8e
	ld a, a                                          ; $45c9: $7f
	inc c                                            ; $45ca: $0c
	ld a, b                                          ; $45cb: $78
	jr nc, jr_026_4566                               ; $45cc: $30 $98

	inc e                                            ; $45ce: $1c
	rst $38                                          ; $45cf: $ff
	dec de                                           ; $45d0: $1b
	rst SubAFromBC                                          ; $45d1: $e7
	rra                                              ; $45d2: $1f
	rst SubAFromBC                                          ; $45d3: $e7

jr_026_45d4:
	ld e, $7b                                        ; $45d4: $1e $7b
	db $fc                                           ; $45d6: $fc
	sub a                                            ; $45d7: $97
	ld a, $c7                                        ; $45d8: $3e $c7
	scf                                              ; $45da: $37
	rst GetHLinHL                                          ; $45db: $cf
	ld [hl], $cf                                     ; $45dc: $36 $cf
	ld a, l                                          ; $45de: $7d
	adc a                                            ; $45df: $8f
	ld [hl], a                                       ; $45e0: $77
	ld h, c                                          ; $45e1: $61
	ld d, a                                          ; $45e2: $57
	ld e, l                                          ; $45e3: $5d
	ld a, a                                          ; $45e4: $7f
	ld a, [hl+]                                      ; $45e5: $2a
	ld [hl], l                                       ; $45e6: $75
	cp $9e                                           ; $45e7: $fe $9e
	ld e, a                                          ; $45e9: $5f
	ld h, e                                          ; $45ea: $63
	cp $9a                                           ; $45eb: $fe $9a
	sub e                                            ; $45ed: $93
	ld a, h                                          ; $45ee: $7c
	sub e                                            ; $45ef: $93
	ld a, h                                          ; $45f0: $7c
	add e                                            ; $45f1: $83
	ld [hl], e                                       ; $45f2: $73
	db $fc                                           ; $45f3: $fc
	ld a, a                                          ; $45f4: $7f
	cp $7e                                           ; $45f5: $fe $7e
	or [hl]                                          ; $45f7: $b6
	ld a, a                                          ; $45f8: $7f
	cp $77                                           ; $45f9: $fe $77
	inc c                                            ; $45fb: $0c
	ld d, a                                          ; $45fc: $57
	cp $96                                           ; $45fd: $fe $96
	and [hl]                                         ; $45ff: $a6
	ld a, c                                          ; $4600: $79
	and e                                            ; $4601: $a3
	ld a, h                                          ; $4602: $7c
	and e                                            ; $4603: $a3
	ld a, h                                          ; $4604: $7c
	db $e3                                           ; $4605: $e3
	inc a                                            ; $4606: $3c
	db $e3                                           ; $4607: $e3
	ld a, c                                          ; $4608: $79
	and h                                            ; $4609: $a4
	ld a, a                                          ; $460a: $7f
	cp $7d                                           ; $460b: $fe $7d
	sbc h                                            ; $460d: $9c
	ld a, a                                          ; $460e: $7f
	ld c, $6f                                        ; $460f: $0e $6f
	cp $97                                           ; $4611: $fe $97
	ld a, a                                          ; $4613: $7f
	add d                                            ; $4614: $82
	ld a, a                                          ; $4615: $7f
	add d                                            ; $4616: $82
	ccf                                              ; $4617: $3f
	jp nz, $c33d                                     ; $4618: $c2 $3d $c3

	inc bc                                           ; $461b: $03
	ld c, [hl]                                       ; $461c: $4e
	inc bc                                           ; $461d: $03
	cp $0b                                           ; $461e: $fe $0b
	cp $78                                           ; $4620: $fe $78
	sbc d                                            ; $4622: $9a
	ld a, c                                          ; $4623: $79
	adc h                                            ; $4624: $8c
	ld a, [hl]                                       ; $4625: $7e
	ld e, l                                          ; $4626: $5d
	add c                                            ; $4627: $81
	inc bc                                           ; $4628: $03
	cp $03                                           ; $4629: $fe $03
	db $fd                                           ; $462b: $fd
	rlca                                             ; $462c: $07
	cp $07                                           ; $462d: $fe $07
	ld l, a                                          ; $462f: $6f
	ldh a, [$ae]                                     ; $4630: $f0 $ae
	pop af                                           ; $4632: $f1
	ld a, [hl]                                       ; $4633: $7e
	pop hl                                           ; $4634: $e1
	call c, $5ce3                                    ; $4635: $dc $e3 $5c
	db $e3                                           ; $4638: $e3
	db $fc                                           ; $4639: $fc
	jp $c7b8                                         ; $463a: $c3 $b8 $c7


	cp b                                             ; $463d: $b8
	rst JumpTable                                          ; $463e: $c7
	jr @+$01                                         ; $463f: $18 $ff

	db $10                                           ; $4641: $10
	rst $38                                          ; $4642: $ff
	jr c, @+$01                                      ; $4643: $38 $ff

	jr nc, jr_026_46c1                               ; $4645: $30 $7a

	inc [hl]                                         ; $4647: $34
	adc c                                            ; $4648: $89
	ld [hl], b                                       ; $4649: $70
	rst $38                                          ; $464a: $ff
	ld h, c                                          ; $464b: $61
	cp $71                                           ; $464c: $fe $71
	cp $7e                                           ; $464e: $fe $7e
	adc a                                            ; $4650: $8f
	ld l, h                                          ; $4651: $6c
	sbc a                                            ; $4652: $9f
	ld l, d                                          ; $4653: $6a
	sbc a                                            ; $4654: $9f
	db $fc                                           ; $4655: $fc
	rra                                              ; $4656: $1f
	ld a, [$fc1f]                                    ; $4657: $fa $1f $fc
	rra                                              ; $465a: $1f
	ld hl, sp+$1f                                    ; $465b: $f8 $1f
	call c, Call_026_473f                            ; $465d: $dc $3f $47
	or c                                             ; $4660: $b1
	sbc l                                            ; $4661: $9d
	ld a, a                                          ; $4662: $7f
	ret nz                                           ; $4663: $c0

	ld [hl], a                                       ; $4664: $77
	cp $7d                                           ; $4665: $fe $7d
	inc e                                            ; $4667: $1c
	ld h, a                                          ; $4668: $67
	cp $77                                           ; $4669: $fe $77
	inc c                                            ; $466b: $0c
	ld [hl], a                                       ; $466c: $77
	cp $70                                           ; $466d: $fe $70
	rst GetHLinHL                                          ; $466f: $cf
	ld a, e                                          ; $4670: $7b
	cp $7f                                           ; $4671: $fe $7f
	ld c, $79                                        ; $4673: $0e $79
	cp a                                             ; $4675: $bf
	ld e, e                                          ; $4676: $5b
	cp $7f                                           ; $4677: $fe $7f
	ld c, $9e                                        ; $4679: $0e $9e
	pop de                                           ; $467b: $d1
	ld d, e                                          ; $467c: $53
	cp $7f                                           ; $467d: $fe $7f
	ld c, $96                                        ; $467f: $0e $96
	cp l                                             ; $4681: $bd
	ld b, e                                          ; $4682: $43
	cp a                                             ; $4683: $bf
	ld b, c                                          ; $4684: $41
	cp a                                             ; $4685: $bf
	ld b, c                                          ; $4686: $41
	sbc a                                            ; $4687: $9f
	ld h, c                                          ; $4688: $61
	sbc [hl]                                         ; $4689: $9e
	ld [hl], e                                       ; $468a: $73
	cp $5b                                           ; $468b: $fe $5b
	and l                                            ; $468d: $a5
	ld bc, $3700                                     ; $468e: $01 $00 $37
	cp $11                                           ; $4691: $fe $11
	nop                                              ; $4693: $00
	push de                                          ; $4694: $d5
	inc sp                                           ; $4695: $33
	sbc l                                            ; $4696: $9d
	inc [hl]                                         ; $4697: $34
	ld b, e                                          ; $4698: $43
	rrca                                             ; $4699: $0f
	ld hl, sp-$62                                    ; $469a: $f8 $9e
	ld b, h                                          ; $469c: $44
	ld c, e                                          ; $469d: $4b
	ld hl, sp+$03                                    ; $469e: $f8 $03
	rst $38                                          ; $46a0: $ff
	sbc $33                                          ; $46a1: $de $33
	call nz, $9b00                                   ; $46a3: $c4 $00 $9b
	adc b                                            ; $46a6: $88
	ld [hl], a                                       ; $46a7: $77
	ld [hl+], a                                      ; $46a8: $22
	db $dd                                           ; $46a9: $dd
	rla                                              ; $46aa: $17
	db $fc                                           ; $46ab: $fc
	sub l                                            ; $46ac: $95
	adc c                                            ; $46ad: $89
	ld a, [hl]                                       ; $46ae: $7e
	dec hl                                           ; $46af: $2b
	call c, $7c93                                    ; $46b0: $dc $93 $7c
	scf                                              ; $46b3: $37
	ret c                                            ; $46b4: $d8

	sub a                                            ; $46b5: $97
	ld a, b                                          ; $46b6: $78
	ld l, a                                          ; $46b7: $6f
	db $fc                                           ; $46b8: $fc
	sub a                                            ; $46b9: $97
	ei                                               ; $46ba: $fb
	inc b                                            ; $46bb: $04
	db $fc                                           ; $46bc: $fc
	inc bc                                           ; $46bd: $03
	cp $01                                           ; $46be: $fe $01
	rst $38                                          ; $46c0: $ff

jr_026_46c1:
	nop                                              ; $46c1: $00
	ld h, a                                          ; $46c2: $67
	cp $80                                           ; $46c3: $fe $80
	ld sp, hl                                        ; $46c5: $f9
	rlca                                             ; $46c6: $07
	ld sp, hl                                        ; $46c7: $f9
	rlca                                             ; $46c8: $07
	ld a, h                                          ; $46c9: $7c
	add e                                            ; $46ca: $83
	ld e, $e1                                        ; $46cb: $1e $e1
	add b                                            ; $46cd: $80
	ld a, a                                          ; $46ce: $7f
	ret nz                                           ; $46cf: $c0

	ccf                                              ; $46d0: $3f
	ldh a, [rIF]                                     ; $46d1: $f0 $0f
	ld hl, sp+$07                                    ; $46d3: $f8 $07
	rst SubAFromBC                                          ; $46d5: $e7
	add b                                            ; $46d6: $80
	and a                                            ; $46d7: $a7
	ret nz                                           ; $46d8: $c0

	di                                               ; $46d9: $f3
	ret nz                                           ; $46da: $c0

	ld d, e                                          ; $46db: $53
	ldh [$79], a                                     ; $46dc: $e0 $79
	ldh [$39], a                                     ; $46de: $e0 $39
	ldh [$28], a                                     ; $46e0: $e0 $28
	ldh a, [$28]                                     ; $46e2: $f0 $28
	sbc b                                            ; $46e4: $98
	ldh a, [$f1]                                     ; $46e5: $f0 $f1
	rrca                                             ; $46e7: $0f
	ld sp, hl                                        ; $46e8: $f9
	rlca                                             ; $46e9: $07
	rst $38                                          ; $46ea: $ff
	ld bc, $fe7b                                     ; $46eb: $01 $7b $fe
	ld a, a                                          ; $46ee: $7f
	ret c                                            ; $46ef: $d8

	ld a, a                                          ; $46f0: $7f
	or $9a                                           ; $46f1: $f6 $9a
	rrca                                             ; $46f3: $0f
	ldh a, [$1f]                                     ; $46f4: $f0 $1f
	inc bc                                           ; $46f6: $03
	rst $38                                          ; $46f7: $ff
	ld l, a                                          ; $46f8: $6f
	sub $7f                                          ; $46f9: $d6 $7f
	call z, $1f93                                    ; $46fb: $cc $93 $1f
	ldh [$03], a                                     ; $46fe: $e0 $03
	db $fc                                           ; $4700: $fc
	ret nz                                           ; $4701: $c0

	rst $38                                          ; $4702: $ff
	rst $38                                          ; $4703: $ff
	ld sp, hl                                        ; $4704: $f9
	ccf                                              ; $4705: $3f
	db $fc                                           ; $4706: $fc
	ld a, a                                          ; $4707: $7f
	add b                                            ; $4708: $80
	ld a, e                                          ; $4709: $7b
	cp $df                                           ; $470a: $fe $df
	add c                                            ; $470c: $81
	add b                                            ; $470d: $80
	ld bc, $0181                                     ; $470e: $01 $81 $01
	ld a, l                                          ; $4711: $7d
	add e                                            ; $4712: $83
	ld a, [$faf7]                                    ; $4713: $fa $f7 $fa
	add a                                            ; $4716: $87
	or $83                                           ; $4717: $f6 $83
	add $c3                                          ; $4719: $c6 $c3
	jp z, $da47                                      ; $471b: $ca $47 $da

	ld h, a                                          ; $471e: $67
	ld a, [$ea27]                                    ; $471f: $fa $27 $ea
	scf                                              ; $4722: $37
	add hl, bc                                       ; $4723: $09
	rst $38                                          ; $4724: $ff
	ld [$0eff], sp                                   ; $4725: $08 $ff $0e
	ld sp, hl                                        ; $4728: $f9
	rrca                                             ; $4729: $0f
	ld hl, sp+$09                                    ; $472a: $f8 $09
	cp $80                                           ; $472c: $fe $80
	inc b                                            ; $472e: $04
	rst $38                                          ; $472f: $ff
	inc b                                            ; $4730: $04
	rst $38                                          ; $4731: $ff
	ld b, $ff                                        ; $4732: $06 $ff
	ei                                               ; $4734: $fb
	db $fc                                           ; $4735: $fc
	rlca                                             ; $4736: $07
	ld hl, sp+$04                                    ; $4737: $f8 $04
	ld hl, sp-$08                                    ; $4739: $f8 $f8
	nop                                              ; $473b: $00
	ld sp, hl                                        ; $473c: $f9
	nop                                              ; $473d: $00
	rlca                                             ; $473e: $07

Call_026_473f:
	ld hl, sp+$07                                    ; $473f: $f8 $07
	ld hl, sp+$00                                    ; $4741: $f8 $00
	rst $38                                          ; $4743: $ff
	rst FarCall                                          ; $4744: $f7
	inc b                                            ; $4745: $04
	rst JumpTable                                          ; $4746: $c7
	inc b                                            ; $4747: $04
	dec bc                                           ; $4748: $0b
	rlca                                             ; $4749: $07
	ld a, [hl-]                                      ; $474a: $3a
	rlca                                             ; $474b: $07
	di                                               ; $474c: $f3
	sub h                                            ; $474d: $94
	ld c, $f5                                        ; $474e: $0e $f5
	ld c, $9b                                        ; $4750: $0e $9b
	ld a, h                                          ; $4752: $7c
	rst AddAOntoHL                                          ; $4753: $ef
	ldh a, [$e8]                                     ; $4754: $f0 $e8
	scf                                              ; $4756: $37
	ldh [c], a                                       ; $4757: $e2
	dec a                                            ; $4758: $3d
	ld a, e                                          ; $4759: $7b
	db $fc                                           ; $475a: $fc
	sub [hl]                                         ; $475b: $96
	cp l                                             ; $475c: $bd
	add sp, -$49                                     ; $475d: $e8 $b7
	ld h, d                                          ; $475f: $62
	db $fd                                           ; $4760: $fd
	ret c                                            ; $4761: $d8

	ld [hl], a                                       ; $4762: $77
	jp nc, $077d                                     ; $4763: $d2 $7d $07

	jr nz, jr_026_476c                               ; $4766: $20 $04

	nop                                              ; $4768: $00
	reti                                             ; $4769: $d9


	inc sp                                           ; $476a: $33
	ldh a, [c]                                       ; $476b: $f2

jr_026_476c:
	add b                                            ; $476c: $80
	add b                                            ; $476d: $80
	nop                                              ; $476e: $00
	inc b                                            ; $476f: $04
	ld b, b                                          ; $4770: $40
	nop                                              ; $4771: $00
	db $10                                           ; $4772: $10
	inc b                                            ; $4773: $04
	ld b, b                                          ; $4774: $40
	ld [bc], a                                       ; $4775: $02
	rst $38                                          ; $4776: $ff
	ei                                               ; $4777: $fb
	cp a                                             ; $4778: $bf
	rst $38                                          ; $4779: $ff
	rst AddAOntoHL                                          ; $477a: $ef
	ei                                               ; $477b: $fb
	cp a                                             ; $477c: $bf
	db $fd                                           ; $477d: $fd
	nop                                              ; $477e: $00
	nop                                              ; $477f: $00
	ld [$0180], sp                                   ; $4780: $08 $80 $01
	ld c, b                                          ; $4783: $48
	nop                                              ; $4784: $00
	ld [hl+], a                                      ; $4785: $22
	rst $38                                          ; $4786: $ff
	rst $38                                          ; $4787: $ff
	rst FarCall                                          ; $4788: $f7
	ld a, a                                          ; $4789: $7f
	cp $b7                                           ; $478a: $fe $b7
	rst $38                                          ; $478c: $ff
	add a                                            ; $478d: $87
	db $dd                                           ; $478e: $dd
	inc bc                                           ; $478f: $03
	inc bc                                           ; $4790: $03
	ld b, $22                                        ; $4791: $06 $22
	adc h                                            ; $4793: $8c
	inc b                                            ; $4794: $04
	inc h                                            ; $4795: $24
	ld [rIE], sp                                   ; $4796: $08 $ff $ff
	ei                                               ; $4799: $fb
	rst SubAFromDE                                          ; $479a: $df
	ld [hl], a                                       ; $479b: $77
	rst $38                                          ; $479c: $ff
	rst SubAFromDE                                          ; $479d: $df
	rst $38                                          ; $479e: $ff
	ldh a, [$0c]                                     ; $479f: $f0 $0c
	ld [hl], e                                       ; $47a1: $73
	ld e, $0f                                        ; $47a2: $1e $0f
	inc bc                                           ; $47a4: $03
	ccf                                              ; $47a5: $3f
	sbc $ff                                          ; $47a6: $de $ff
	add b                                            ; $47a8: $80
	adc a                                            ; $47a9: $8f
	pop hl                                           ; $47aa: $e1
	ldh a, [$fc]                                     ; $47ab: $f0 $fc
	ret nz                                           ; $47ad: $c0

	nop                                              ; $47ae: $00
	ld h, e                                          ; $47af: $63
	ld de, $cc09                                     ; $47b0: $11 $09 $cc
	and [hl]                                         ; $47b3: $a6
	sub $eb                                          ; $47b4: $d6 $eb
	rst FarCall                                          ; $47b6: $f7
	db $fc                                           ; $47b7: $fc
	cp $fe                                           ; $47b8: $fe $fe
	rst $38                                          ; $47ba: $ff
	ld a, a                                          ; $47bb: $7f
	ccf                                              ; $47bc: $3f
	rra                                              ; $47bd: $1f
	rrca                                             ; $47be: $0f
	ld [$c684], sp                                   ; $47bf: $08 $84 $c6
	jp Jump_026_7163                                 ; $47c2: $c3 $63 $71


	pop bc                                           ; $47c5: $c1
	ld b, a                                          ; $47c6: $47
	rst FarCall                                          ; $47c7: $f7
	sub a                                            ; $47c8: $97
	ld a, e                                          ; $47c9: $7b
	add hl, sp                                       ; $47ca: $39
	inc a                                            ; $47cb: $3c
	sbc h                                            ; $47cc: $9c

jr_026_47cd:
	adc [hl]                                         ; $47cd: $8e
	ld c, $80                                        ; $47ce: $0e $80
	ld bc, $dffe                                     ; $47d0: $01 $fe $df
	add b                                            ; $47d3: $80
	sbc l                                            ; $47d4: $9d
	ret nz                                           ; $47d5: $c0

	pop hl                                           ; $47d6: $e1
	db $dd                                           ; $47d7: $dd
	rst $38                                          ; $47d8: $ff
	rst SubAFromDE                                          ; $47d9: $df
	ld a, a                                          ; $47da: $7f
	ld a, a                                          ; $47db: $7f
	rst SubAFromDE                                          ; $47dc: $df
	rst SubAFromDE                                          ; $47dd: $df
	sbc a                                            ; $47de: $9f
	rst SubAFromDE                                          ; $47df: $df
	rra                                              ; $47e0: $1f
	rst SubAFromDE                                          ; $47e1: $df
	ccf                                              ; $47e2: $3f
	sbc l                                            ; $47e3: $9d
	rst $38                                          ; $47e4: $ff
	ccf                                              ; $47e5: $3f
	db $dd                                           ; $47e6: $dd
	ldh a, [$de]                                     ; $47e7: $f0 $de
	ldh [rPCM34], a                                  ; $47e9: $e0 $77
	ret                                              ; $47eb: $c9


	call c, $feff                                    ; $47ec: $dc $ff $fe
	sub [hl]                                         ; $47ef: $96
	ld bc, $0402                                     ; $47f0: $01 $02 $04
	ld [$5d0f], sp                                   ; $47f3: $08 $0f $5d
	cp e                                             ; $47f6: $bb
	rst $38                                          ; $47f7: $ff
	rst SubAFromDE                                          ; $47f8: $df
	ld a, e                                          ; $47f9: $7b
	db $dd                                           ; $47fa: $dd
	ld a, a                                          ; $47fb: $7f
	sub h                                            ; $47fc: $94
	sbc b                                            ; $47fd: $98
	rst AddAOntoHL                                          ; $47fe: $ef
	call $0109                                       ; $47ff: $cd $09 $01
	ld bc, $0f03                                     ; $4802: $01 $03 $0f
	ld a, e                                          ; $4805: $7b
	xor l                                            ; $4806: $ad
	sbc [hl]                                         ; $4807: $9e
	rlca                                             ; $4808: $07
	sbc $01                                          ; $4809: $de $01
	sbc e                                            ; $480b: $9b
	rlca                                             ; $480c: $07
	ldh [$f0], a                                     ; $480d: $e0 $f0
	ld hl, sp+$73                                    ; $480f: $f8 $73
	sub $9d                                          ; $4811: $d6 $9d
	nop                                              ; $4813: $00
	ret nz                                           ; $4814: $c0

	call c, $9ee0                                    ; $4815: $dc $e0 $9e
	rst SubAFromBC                                          ; $4818: $e7
	cp $82                                           ; $4819: $fe $82
	ld b, b                                          ; $481b: $40
	add b                                            ; $481c: $80
	nop                                              ; $481d: $00
	nop                                              ; $481e: $00
	add a                                            ; $481f: $87
	rst $38                                          ; $4820: $ff
	ld a, [hl]                                       ; $4821: $7e
	ld a, h                                          ; $4822: $7c
	ld [hl], b                                       ; $4823: $70
	ld l, c                                          ; $4824: $69
	ld l, e                                          ; $4825: $6b
	sub a                                            ; $4826: $97
	ld [hl], a                                       ; $4827: $77
	sub b                                            ; $4828: $90
	ld d, c                                          ; $4829: $51
	ld d, e                                          ; $482a: $53
	ld e, a                                          ; $482b: $5f
	ld a, [hl]                                       ; $482c: $7e
	ld a, h                                          ; $482d: $7c
	db $ec                                           ; $482e: $ec
	adc h                                            ; $482f: $8c
	ld b, b                                          ; $4830: $40

Call_026_4831:
	add b                                            ; $4831: $80
	adc b                                            ; $4832: $88
	add b                                            ; $4833: $80
	add c                                            ; $4834: $81
	ld c, b                                          ; $4835: $48
	ret nz                                           ; $4836: $c0

	and d                                            ; $4837: $a2
	ld a, e                                          ; $4838: $7b
	ld b, b                                          ; $4839: $40
	sub d                                            ; $483a: $92
	rst $38                                          ; $483b: $ff
	cp $f7                                           ; $483c: $fe $f7
	ld a, a                                          ; $483e: $7f
	ld a, l                                          ; $483f: $7d
	nop                                              ; $4840: $00
	nop                                              ; $4841: $00
	inc b                                            ; $4842: $04
	jr nz, jr_026_47cd                               ; $4843: $20 $88

	nop                                              ; $4845: $00
	ld [hl+], a                                      ; $4846: $22
	nop                                              ; $4847: $00
	ld l, a                                          ; $4848: $6f
	ld b, b                                          ; $4849: $40
	sub a                                            ; $484a: $97
	db $dd                                           ; $484b: $dd
	rst $38                                          ; $484c: $ff
	nop                                              ; $484d: $00
	db $10                                           ; $484e: $10
	add h                                            ; $484f: $84
	nop                                              ; $4850: $00
	ld [bc], a                                       ; $4851: $02
	jr nz, jr_026_48cf                               ; $4852: $20 $7b

	jr nz, @-$66                                     ; $4854: $20 $98

	rst AddAOntoHL                                          ; $4856: $ef
	ld a, e                                          ; $4857: $7b
	rst $38                                          ; $4858: $ff
	db $fd                                           ; $4859: $fd
	rst SubAFromDE                                          ; $485a: $df
	rst $38                                          ; $485b: $ff
	db $dd                                           ; $485c: $dd
	ld a, [bc]                                       ; $485d: $0a
	nop                                              ; $485e: $00
	sbc $33                                          ; $485f: $de $33
	sbc d                                            ; $4861: $9a
	inc [hl]                                         ; $4862: $34
	ld d, l                                          ; $4863: $55
	ld b, l                                          ; $4864: $45
	inc sp                                           ; $4865: $33
	inc sp                                           ; $4866: $33
	sub e                                            ; $4867: $93
	add b                                            ; $4868: $80
	ld sp, hl                                        ; $4869: $f9
	reti                                             ; $486a: $d9


	rst $38                                          ; $486b: $ff
	cpl                                              ; $486c: $2f
	ldh a, [$df]                                     ; $486d: $f0 $df
	ld bc, $f063                                     ; $486f: $01 $63 $f0
	sbc b                                            ; $4872: $98
	inc bc                                           ; $4873: $03
	inc c                                            ; $4874: $0c
	scf                                              ; $4875: $37
	ld e, a                                          ; $4876: $5f
	add b                                            ; $4877: $80
	ld a, $7d                                        ; $4878: $3e $7d
	sbc $ff                                          ; $487a: $de $ff
	sbc l                                            ; $487c: $9d
	ld hl, sp-$20                                    ; $487d: $f8 $e0
	sbc $ff                                          ; $487f: $de $ff
	sub a                                            ; $4881: $97
	ldh [$80], a                                     ; $4882: $e0 $80
	nop                                              ; $4884: $00
	add b                                            ; $4885: $80
	ldh a, [$78]                                     ; $4886: $f0 $78
	inc e                                            ; $4888: $1c
	add [hl]                                         ; $4889: $86
	sbc $ff                                          ; $488a: $de $ff
	sbc c                                            ; $488c: $99
	ld a, a                                          ; $488d: $7f
	rrca                                             ; $488e: $0f
	add a                                            ; $488f: $87
	db $e3                                           ; $4890: $e3
	ld sp, hl                                        ; $4891: $f9
	ld bc, $c04b                                     ; $4892: $01 $4b $c0
	sbc [hl]                                         ; $4895: $9e
	cp $de                                           ; $4896: $fe $de
	xor $df                                          ; $4898: $ee $df
	ld h, a                                          ; $489a: $67
	sbc h                                            ; $489b: $9c
	daa                                              ; $489c: $27
	inc hl                                           ; $489d: $23
	or e                                             ; $489e: $b3
	sbc $fb                                          ; $489f: $de $fb
	sbc $fd                                          ; $48a1: $de $fd
	sbc e                                            ; $48a3: $9b
	cp $7f                                           ; $48a4: $fe $7f
	ccf                                              ; $48a6: $3f
	rra                                              ; $48a7: $1f
	db $dd                                           ; $48a8: $dd
	rrca                                             ; $48a9: $0f
	sbc e                                            ; $48aa: $9b
	sbc a                                            ; $48ab: $9f
	call nz, $f4e4                                   ; $48ac: $c4 $e4 $f4
	db $dd                                           ; $48af: $dd
	ld hl, sp-$62                                    ; $48b0: $f8 $9e
	ldh a, [$67]                                     ; $48b2: $f0 $67
	reti                                             ; $48b4: $d9


	ld sp, hl                                        ; $48b5: $f9
	adc b                                            ; $48b6: $88
	cp [hl]                                          ; $48b7: $be
	sbc a                                            ; $48b8: $9f
	sub a                                            ; $48b9: $97
	sub a                                            ; $48ba: $97
	dec [hl]                                         ; $48bb: $35
	dec h                                            ; $48bc: $25
	inc l                                            ; $48bd: $2c
	ld c, l                                          ; $48be: $4d
	ld [$1c08], sp                                   ; $48bf: $08 $08 $1c
	ld e, $1f                                        ; $48c2: $1e $1f
	ccf                                              ; $48c4: $3f
	ccf                                              ; $48c5: $3f
	ld a, a                                          ; $48c6: $7f
	nop                                              ; $48c7: $00
	nop                                              ; $48c8: $00
	add b                                            ; $48c9: $80
	ret nz                                           ; $48ca: $c0

	ldh [$f0], a                                     ; $48cb: $e0 $f0
	ld hl, sp+$6b                                    ; $48cd: $f8 $6b

jr_026_48cf:
	ldh [$7f], a                                     ; $48cf: $e0 $7f
	db $f4                                           ; $48d1: $f4
	sub d                                            ; $48d2: $92
	ld a, $1e                                        ; $48d3: $3e $1e
	ld d, $0a                                        ; $48d5: $16 $0a
	ld b, $02                                        ; $48d7: $06 $02
	ld [bc], a                                       ; $48d9: $02
	ld bc, $1020                                     ; $48da: $01 $20 $10
	jr jr_026_48eb                                   ; $48dd: $18 $0c

	inc b                                            ; $48df: $04
	ld a, e                                          ; $48e0: $7b
	ld hl, sp-$66                                    ; $48e1: $f8 $9a
	ld a, h                                          ; $48e3: $7c
	ld a, d                                          ; $48e4: $7a
	ld a, l                                          ; $48e5: $7d
	ld [hl], l                                       ; $48e6: $75
	halt                                             ; $48e7: $76
	sbc $77                                          ; $48e8: $de $77
	rst SubAFromDE                                          ; $48ea: $df

jr_026_48eb:
	rla                                              ; $48eb: $17
	sbc h                                            ; $48ec: $9c
	inc de                                           ; $48ed: $13
	dec de                                           ; $48ee: $1b
	add hl, de                                       ; $48ef: $19
	sbc $18                                          ; $48f0: $de $18
	ld [hl], e                                       ; $48f2: $73
	jp c, Jump_026_40de                              ; $48f3: $da $de $40

	rrca                                             ; $48f6: $0f
	jr nc, @+$61                                     ; $48f7: $30 $5f

	ldh a, [$0a]                                     ; $48f9: $f0 $0a
	nop                                              ; $48fb: $00
	sbc $33                                          ; $48fc: $de $33
	sbc d                                            ; $48fe: $9a
	ld [hl], h                                       ; $48ff: $74
	ld d, l                                          ; $4900: $55
	ld d, e                                          ; $4901: $53
	inc sp                                           ; $4902: $33
	inc sp                                           ; $4903: $33
	sbc e                                            ; $4904: $9b
	add b                                            ; $4905: $80
	ld sp, hl                                        ; $4906: $f9
	reti                                             ; $4907: $d9


	rst $38                                          ; $4908: $ff
	ld b, a                                          ; $4909: $47
	ldh a, [$9e]                                     ; $490a: $f0 $9e
	ld bc, $f04b                                     ; $490c: $01 $4b $f0
	rst SubAFromDE                                          ; $490f: $df
	sbc l                                            ; $4910: $9d
	sub a                                            ; $4911: $97
	adc l                                            ; $4912: $8d
	inc c                                            ; $4913: $0c
	inc b                                            ; $4914: $04
	inc b                                            ; $4915: $04
	nop                                              ; $4916: $00
	nop                                              ; $4917: $00
	rst FarCall                                          ; $4918: $f7
	rst FarCall                                          ; $4919: $f7
	push de                                          ; $491a: $d5
	rst $38                                          ; $491b: $ff
	sub l                                            ; $491c: $95
	ld a, [hl]                                       ; $491d: $7e
	ld a, b                                          ; $491e: $78
	ld de, $1911                                     ; $491f: $11 $11 $19
	sbc b                                            ; $4922: $98
	sbc h                                            ; $4923: $9c
	adc l                                            ; $4924: $8d
	rst GetHLinHL                                          ; $4925: $cf
	rst SubAFromDE                                          ; $4926: $df
	sbc $ff                                          ; $4927: $de $ff
	sub a                                            ; $4929: $97
	di                                               ; $492a: $f3
	jp $0103                                         ; $492b: $c3 $03 $01


	ld bc, $cd8d                                     ; $492e: $01 $8d $cd
	call $fede                                       ; $4931: $cd $de $fe
	db $db                                           ; $4934: $db
	rst $38                                          ; $4935: $ff
	rst SubAFromDE                                          ; $4936: $df
	db $fd                                           ; $4937: $fd
	rst SubAFromDE                                          ; $4938: $df
	db $fc                                           ; $4939: $fc
	sbc d                                            ; $493a: $9a
	inc l                                            ; $493b: $2c
	ld l, $ae                                        ; $493c: $2e $ae
	and [hl]                                         ; $493e: $a6
	and a                                            ; $493f: $a7
	sbc $b7                                          ; $4940: $de $b7
	db $dd                                           ; $4942: $dd
	rst $38                                          ; $4943: $ff
	add a                                            ; $4944: $87
	rst FarCall                                          ; $4945: $f7
	ld h, a                                          ; $4946: $67
	rst SubAFromBC                                          ; $4947: $e7
	or a                                             ; $4948: $b7
	ccf                                              ; $4949: $3f
	rra                                              ; $494a: $1f
	ld b, $02                                        ; $494b: $06 $02
	ld [bc], a                                       ; $494d: $02
	add d                                            ; $494e: $82
	add d                                            ; $494f: $82
	call nz, $dfea                                   ; $4950: $c4 $ea $df
	ccf                                              ; $4953: $3f
	ld c, [hl]                                       ; $4954: $4e
	reti                                             ; $4955: $d9


	ei                                               ; $4956: $fb
	cp $fe                                           ; $4957: $fe $fe
	sbc h                                            ; $4959: $9c
	ld [hl-], a                                      ; $495a: $32
	ld h, e                                          ; $495b: $63
	dec b                                            ; $495c: $05
	db $fd                                           ; $495d: $fd
	add h                                            ; $495e: $84
	rst FarCall                                          ; $495f: $f7
	ld l, $dd                                        ; $4960: $2e $dd
	db $eb                                           ; $4962: $eb
	sub a                                            ; $4963: $97
	rst $38                                          ; $4964: $ff
	ld a, [hl]                                       ; $4965: $7e
	db $fc                                           ; $4966: $fc
	push bc                                          ; $4967: $c5
	ld l, d                                          ; $4968: $6a
	inc [hl]                                         ; $4969: $34
	sbc c                                            ; $496a: $99
	ld [hl], d                                       ; $496b: $72
	ld h, d                                          ; $496c: $62
	inc b                                            ; $496d: $04
	ld [$fd78], sp                                   ; $496e: $08 $78 $fd
	call $13a7                                       ; $4971: $cd $a7 $13
	ld bc, $0080                                     ; $4974: $01 $80 $00
	cpl                                              ; $4977: $2f
	ld b, a                                          ; $4978: $47
	add a                                            ; $4979: $87
	ld a, e                                          ; $497a: $7b
	xor d                                            ; $497b: $aa
	rst $38                                          ; $497c: $ff
	sub e                                            ; $497d: $93
	cp $81                                           ; $497e: $fe $81
	add hl, bc                                       ; $4980: $09
	inc a                                            ; $4981: $3c
	ld a, h                                          ; $4982: $7c
	ld a, h                                          ; $4983: $7c
	db $fc                                           ; $4984: $fc
	ld a, [hl]                                       ; $4985: $7e
	rst $38                                          ; $4986: $ff
	rst $38                                          ; $4987: $ff
	ldh a, [$c0]                                     ; $4988: $f0 $c0
	sbc $80                                          ; $498a: $de $80
	sub e                                            ; $498c: $93
	ld b, b                                          ; $498d: $40
	nop                                              ; $498e: $00
	ret nz                                           ; $498f: $c0

	ldh [$f0], a                                     ; $4990: $e0 $f0
	ldh a, [$78]                                     ; $4992: $f0 $78
	ld a, b                                          ; $4994: $78
	ld [hl], h                                       ; $4995: $74
	rst $38                                          ; $4996: $ff
	rst $38                                          ; $4997: $ff
	ccf                                              ; $4998: $3f
	call c, $071f                                    ; $4999: $dc $1f $07
	jr nc, jr_026_49e5                               ; $499c: $30 $47

	ldh a, [$0b]                                     ; $499e: $f0 $0b
	nop                                              ; $49a0: $00
	sub a                                            ; $49a1: $97
	inc sp                                           ; $49a2: $33
	scf                                              ; $49a3: $37
	ld [hl], a                                       ; $49a4: $77
	ld [hl], l                                       ; $49a5: $75
	ld d, l                                          ; $49a6: $55
	ld d, e                                          ; $49a7: $53
	inc sp                                           ; $49a8: $33
	inc sp                                           ; $49a9: $33
	and l                                            ; $49aa: $a5
	add b                                            ; $49ab: $80
	ld sp, hl                                        ; $49ac: $f9
	reti                                             ; $49ad: $d9


	rst $38                                          ; $49ae: $ff
	ld b, a                                          ; $49af: $47
	ldh a, [$dd]                                     ; $49b0: $f0 $dd
	inc sp                                           ; $49b2: $33

jr_026_49b3:
	rst SubAFromDE                                          ; $49b3: $df
	inc de                                           ; $49b4: $13
	sbc l                                            ; $49b5: $9d
	ld de, $db01                                     ; $49b6: $11 $01 $db
	cp $de                                           ; $49b9: $fe $de
	rst $38                                          ; $49bb: $ff
	sbc [hl]                                         ; $49bc: $9e
	cp a                                             ; $49bd: $bf
	call c, $9cbb                                    ; $49be: $dc $bb $9c
	sbc a                                            ; $49c1: $9f
	ld h, [hl]                                       ; $49c2: $66
	and $dc                                          ; $49c3: $e6 $dc
	xor $96                                          ; $49c5: $ee $96
	or $35                                           ; $49c7: $f6 $35
	scf                                              ; $49c9: $37
	scf                                              ; $49ca: $37
	inc de                                           ; $49cb: $13
	inc de                                           ; $49cc: $13
	dec bc                                           ; $49cd: $0b
	dec de                                           ; $49ce: $1b
	dec de                                           ; $49cf: $1b
	call c, $deee                                    ; $49d0: $dc $ee $de
	rst FarCall                                          ; $49d3: $f7
	sub a                                            ; $49d4: $97
	jr z, jr_026_49fb                                ; $49d5: $28 $24

	ld h, $27                                        ; $49d7: $26 $27
	rla                                              ; $49d9: $17
	sub a                                            ; $49da: $97
	sub a                                            ; $49db: $97
	rst SubAFromHL                                          ; $49dc: $d7
	call c, $dffd                                    ; $49dd: $dc $fd $df
	ld a, l                                          ; $49e0: $7d
	sub h                                            ; $49e1: $94
	cp l                                             ; $49e2: $bd
	dec sp                                           ; $49e3: $3b
	dec a                                            ; $49e4: $3d

jr_026_49e5:
	ccf                                              ; $49e5: $3f
	cp e                                             ; $49e6: $bb
	cp c                                             ; $49e7: $b9
	xor c                                            ; $49e8: $a9
	xor l                                            ; $49e9: $ad
	xor l                                            ; $49ea: $ad
	ld a, h                                          ; $49eb: $7c
	ld a, [hl]                                       ; $49ec: $7e
	db $dd                                           ; $49ed: $dd
	ld a, a                                          ; $49ee: $7f
	rst SubAFromDE                                          ; $49ef: $df
	ld a, [hl]                                       ; $49f0: $7e
	rst SubAFromDE                                          ; $49f1: $df
	ldh a, [$9a]                                     ; $49f2: $f0 $9a
	ld a, b                                          ; $49f4: $78
	cp b                                             ; $49f5: $b8
	db $ec                                           ; $49f6: $ec
	or $fd                                           ; $49f7: $f6 $fd
	ld a, e                                          ; $49f9: $7b
	sbc b                                            ; $49fa: $98

jr_026_49fb:
	add b                                            ; $49fb: $80
	add b                                            ; $49fc: $80
	ret nz                                           ; $49fd: $c0

	ldh a, [$f8]                                     ; $49fe: $f0 $f8
	cp $7f                                           ; $4a00: $fe $7f
	ld c, $0d                                        ; $4a02: $0e $0d
	ld b, $0f                                        ; $4a04: $06 $0f
	rra                                              ; $4a06: $1f
	dec a                                            ; $4a07: $3d
	ei                                               ; $4a08: $fb
	ld [hl], l                                       ; $4a09: $75
	ld [bc], a                                       ; $4a0a: $02
	dec b                                            ; $4a0b: $05
	inc b                                            ; $4a0c: $04
	ld b, $0a                                        ; $4a0d: $06 $0a
	inc de                                           ; $4a0f: $13
	ld h, $cd                                        ; $4a10: $26 $cd
	ei                                               ; $4a12: $fb
	or a                                             ; $4a13: $b7
	rst SubAFromBC                                          ; $4a14: $e7
	ld l, a                                          ; $4a15: $6f
	xor [hl]                                         ; $4a16: $ae
	sbc $fd                                          ; $4a17: $de $fd
	cp e                                             ; $4a19: $bb
	sub d                                            ; $4a1a: $92
	add b                                            ; $4a1b: $80
	ld h, h                                          ; $4a1c: $64
	rst JumpTable                                          ; $4a1d: $c7
	ld c, d                                          ; $4a1e: $4a
	inc [hl]                                         ; $4a1f: $34
	jr jr_026_49b3                                   ; $4a20: $18 $91

	ld h, d                                          ; $4a22: $62
	or a                                             ; $4a23: $b7
	db $eb                                           ; $4a24: $eb
	ld l, l                                          ; $4a25: $6d
	ld l, [hl]                                       ; $4a26: $6e
	jp nc, $f4f2                                     ; $4a27: $d2 $f2 $f4

	cp h                                             ; $4a2a: $bc
	ld a, l                                          ; $4a2b: $7d
	db $fd                                           ; $4a2c: $fd
	ld a, e                                          ; $4a2d: $7b
	ld a, e                                          ; $4a2e: $7b
	ld a, a                                          ; $4a2f: $7f
	cp a                                             ; $4a30: $bf
	ld e, a                                          ; $4a31: $5f
	xor a                                            ; $4a32: $af
	rst $38                                          ; $4a33: $ff
	cp $fe                                           ; $4a34: $fe $fe
	sbc $de                                          ; $4a36: $de $de
	sbc h                                            ; $4a38: $9c
	sbc h                                            ; $4a39: $9c
	call c, $33df                                    ; $4a3a: $dc $df $33
	sbc $73                                          ; $4a3d: $de $73
	sbc $f7                                          ; $4a3f: $de $f7
	sbc e                                            ; $4a41: $9b
	ldh [$80], a                                     ; $4a42: $e0 $80
	add b                                            ; $4a44: $80
	ret nz                                           ; $4a45: $c0

	sbc $80                                          ; $4a46: $de $80
	sbc l                                            ; $4a48: $9d
	nop                                              ; $4a49: $00
	cp a                                             ; $4a4a: $bf
	dec hl                                           ; $4a4b: $2b
	ld b, b                                          ; $4a4c: $40
	rlca                                             ; $4a4d: $07
	ldh a, [$0b]                                     ; $4a4e: $f0 $0b
	nop                                              ; $4a50: $00
	sbc l                                            ; $4a51: $9d
	inc sp                                           ; $4a52: $33
	ld [hl], a                                       ; $4a53: $77
	sbc $55                                          ; $4a54: $de $55
	sbc h                                            ; $4a56: $9c
	ld d, a                                          ; $4a57: $57
	ld [hl], e                                       ; $4a58: $73
	inc sp                                           ; $4a59: $33
	and a                                            ; $4a5a: $a7
	add b                                            ; $4a5b: $80
	ld sp, hl                                        ; $4a5c: $f9
	reti                                             ; $4a5d: $d9


	rst $38                                          ; $4a5e: $ff
	ld b, a                                          ; $4a5f: $47
	ldh a, [$df]                                     ; $4a60: $f0 $df
	xor $97                                          ; $4a62: $ee $97
	call c, $9d9c                                    ; $4a64: $dc $9c $9d
	cp c                                             ; $4a67: $b9
	add hl, sp                                       ; $4a68: $39
	add hl, sp                                       ; $4a69: $39
	cp e                                             ; $4a6a: $bb
	cp e                                             ; $4a6b: $bb
	sbc $f7                                          ; $4a6c: $de $f7
	sbc $ef                                          ; $4a6e: $de $ef
	sub a                                            ; $4a70: $97
	adc c                                            ; $4a71: $89
	sub d                                            ; $4a72: $92
	sub d                                            ; $4a73: $92
	sbc d                                            ; $4a74: $9a
	ld a, [hl-]                                      ; $4a75: $3a
	cp d                                             ; $4a76: $ba
	ldh a, [c]                                       ; $4a77: $f2
	or $de                                           ; $4a78: $f6 $de
	rst $38                                          ; $4a7a: $ff
	rst SubAFromDE                                          ; $4a7b: $df
	rst FarCall                                          ; $4a7c: $f7
	sbc h                                            ; $4a7d: $9c
	ld [hl], a                                       ; $4a7e: $77
	ld l, a                                          ; $4a7f: $6f
	ld l, a                                          ; $4a80: $6f
	sbc $6a                                          ; $4a81: $de $6a
	rst SubAFromDE                                          ; $4a83: $df
	ld l, e                                          ; $4a84: $6b
	rst SubAFromDE                                          ; $4a85: $df
	ld h, l                                          ; $4a86: $65
	sbc [hl]                                         ; $4a87: $9e
	dec [hl]                                         ; $4a88: $35
	sbc $dd                                          ; $4a89: $de $dd
	rst SubAFromDE                                          ; $4a8b: $df
	call c, $dedf                                    ; $4a8c: $dc $df $de
	sub c                                            ; $4a8f: $91
	xor $58                                          ; $4a90: $ee $58
	ld e, d                                          ; $4a92: $5a
	ld e, d                                          ; $4a93: $5a
	ld c, d                                          ; $4a94: $4a
	ld c, d                                          ; $4a95: $4a
	ld c, c                                          ; $4a96: $49
	jr z, jr_026_4ac1                                ; $4a97: $28 $28

	rst AddAOntoHL                                          ; $4a99: $ef
	db $ed                                           ; $4a9a: $ed
	db $ed                                           ; $4a9b: $ed
	db $fd                                           ; $4a9c: $fd
	db $fd                                           ; $4a9d: $fd
	sbc $fc                                          ; $4a9e: $de $fc
	rst SubAFromDE                                          ; $4aa0: $df
	rst $38                                          ; $4aa1: $ff
	rst SubAFromDE                                          ; $4aa2: $df
	ld e, a                                          ; $4aa3: $5f
	sbc [hl]                                         ; $4aa4: $9e
	ld a, a                                          ; $4aa5: $7f
	sbc $3f                                          ; $4aa6: $de $3f
	rst SubAFromDE                                          ; $4aa8: $df
	ld b, b                                          ; $4aa9: $40
	db $dd                                           ; $4aaa: $dd
	ld h, b                                          ; $4aab: $60
	sbc h                                            ; $4aac: $9c
	ld [hl], b                                       ; $4aad: $70
	ld a, b                                          ; $4aae: $78
	add b                                            ; $4aaf: $80
	sbc $c0                                          ; $4ab0: $de $c0
	sbc $e0                                          ; $4ab2: $de $e0
	sbc [hl]                                         ; $4ab4: $9e
	ldh a, [$f9]                                     ; $4ab5: $f0 $f9
	adc l                                            ; $4ab7: $8d
	rra                                              ; $4ab8: $1f
	rrca                                             ; $4ab9: $0f
	rlca                                             ; $4aba: $07
	nop                                              ; $4abb: $00
	inc bc                                           ; $4abc: $03
	ld b, $1f                                        ; $4abd: $06 $1f
	inc bc                                           ; $4abf: $03
	nop                                              ; $4ac0: $00

jr_026_4ac1:
	ld bc, $0001                                     ; $4ac1: $01 $01 $00
	ld bc, $020e                                     ; $4ac4: $01 $0e $02
	ld bc, $c047                                     ; $4ac7: $01 $47 $c0
	cp $9c                                           ; $4aca: $fe $9c
	ldh a, [$7c]                                     ; $4acc: $f0 $7c
	cp [hl]                                          ; $4ace: $be
	sbc $80                                          ; $4acf: $de $80
	rst $38                                          ; $4ad1: $ff
	sub h                                            ; $4ad2: $94
	or b                                             ; $4ad3: $b0
	ld c, h                                          ; $4ad4: $4c
	ld a, [hl-]                                      ; $4ad5: $3a
	adc l                                            ; $4ad6: $8d
	add hl, de                                       ; $4ad7: $19
	ld a, [de]                                       ; $4ad8: $1a
	dec bc                                           ; $4ad9: $0b
	dec de                                           ; $4ada: $1b
	inc sp                                           ; $4adb: $33
	inc d                                            ; $4adc: $14
	halt                                             ; $4add: $76
	sbc $0f                                          ; $4ade: $de $0f
	sbc $1e                                          ; $4ae0: $de $1e
	sub e                                            ; $4ae2: $93
	ccf                                              ; $4ae3: $3f
	dec a                                            ; $4ae4: $3d
	ld b, [hl]                                       ; $4ae5: $46
	halt                                             ; $4ae6: $76
	ld h, a                                          ; $4ae7: $67
	ld h, a                                          ; $4ae8: $67
	xor e                                            ; $4ae9: $ab
	xor e                                            ; $4aea: $ab
	cp e                                             ; $4aeb: $bb
	dec sp                                           ; $4aec: $3b
	rst SubAFromBC                                          ; $4aed: $e7
	rst SubAFromBC                                          ; $4aee: $e7
	db $db                                           ; $4aef: $db
	rst FarCall                                          ; $4af0: $f7
	sbc [hl]                                         ; $4af1: $9e
	ret z                                            ; $4af2: $c8

	ld [hl], a                                       ; $4af3: $77
	or d                                             ; $4af4: $b2
	sbc $e0                                          ; $4af5: $de $e0
	sbc $7f                                          ; $4af7: $de $7f
	sbc $3f                                          ; $4af9: $de $3f
	rst SubAFromDE                                          ; $4afb: $df
	cp a                                             ; $4afc: $bf
	rlca                                             ; $4afd: $07
	jr nc, jr_026_4b47                               ; $4afe: $30 $47

	ldh a, [$0a]                                     ; $4b00: $f0 $0a
	nop                                              ; $4b02: $00
	sbc l                                            ; $4b03: $9d
	inc sp                                           ; $4b04: $33
	ld [hl], l                                       ; $4b05: $75
	db $dd                                           ; $4b06: $dd
	ld d, l                                          ; $4b07: $55
	sbc l                                            ; $4b08: $9d
	ld [hl], e                                       ; $4b09: $73
	inc sp                                           ; $4b0a: $33
	xor l                                            ; $4b0b: $ad
	add b                                            ; $4b0c: $80
	ld sp, hl                                        ; $4b0d: $f9
	reti                                             ; $4b0e: $d9


	rst $38                                          ; $4b0f: $ff
	ld b, a                                          ; $4b10: $47
	ldh a, [hDisp0_SCY]                                     ; $4b11: $f0 $83
	cpl                                              ; $4b13: $2f
	rra                                              ; $4b14: $1f
	dec e                                            ; $4b15: $1d
	dec sp                                           ; $4b16: $3b
	dec sp                                           ; $4b17: $3b
	ld [hl], a                                       ; $4b18: $77
	ld [hl], a                                       ; $4b19: $77
	ld l, a                                          ; $4b1a: $6f
	ld sp, hl                                        ; $4b1b: $f9
	di                                               ; $4b1c: $f3
	rst FarCall                                          ; $4b1d: $f7
	xor $ee                                          ; $4b1e: $ee $ee
	call c, $f9dd                                    ; $4b20: $dc $dd $f9
	ldh a, [c]                                       ; $4b23: $f2
	ld d, d                                          ; $4b24: $52
	ldh [$a4], a                                     ; $4b25: $e0 $a4
	ld b, h                                          ; $4b27: $44
	pop bc                                           ; $4b28: $c1
	ret                                              ; $4b29: $c9


	ret                                              ; $4b2a: $c9


	sbc a                                            ; $4b2b: $9f
	cp a                                             ; $4b2c: $bf
	ccf                                              ; $4b2d: $3f
	ld a, a                                          ; $4b2e: $7f
	db $dd                                           ; $4b2f: $dd
	rst $38                                          ; $4b30: $ff
	sbc d                                            ; $4b31: $9a
	ld h, h                                          ; $4b32: $64
	and h                                            ; $4b33: $a4
	and h                                            ; $4b34: $a4
	and [hl]                                         ; $4b35: $a6
	and [hl]                                         ; $4b36: $a6
	sbc $4a                                          ; $4b37: $de $4a
	sbc $ff                                          ; $4b39: $de $ff
	call c, $defd                                    ; $4b3b: $dc $fd $de
	ld b, h                                          ; $4b3e: $44
	sbc $64                                          ; $4b3f: $de $64
	rst SubAFromDE                                          ; $4b41: $df
	ld a, b                                          ; $4b42: $78
	sbc $ff                                          ; $4b43: $de $ff
	sbc $df                                          ; $4b45: $de $df

jr_026_4b47:
	rst SubAFromDE                                          ; $4b47: $df
	rst GetHLinHL                                          ; $4b48: $cf
	sbc d                                            ; $4b49: $9a
	ld l, e                                          ; $4b4a: $6b
	ld a, [$fdfe]                                    ; $4b4b: $fa $fe $fd
	cp $77                                           ; $4b4e: $fe $77
	di                                               ; $4b50: $f3
	sbc e                                            ; $4b51: $9b
	ld b, e                                          ; $4b52: $43
	ld b, d                                          ; $4b53: $42
	ld b, e                                          ; $4b54: $43
	ld b, c                                          ; $4b55: $41
	sbc $40                                          ; $4b56: $de $40
	sub c                                            ; $4b58: $91
	push bc                                          ; $4b59: $c5
	push af                                          ; $4b5a: $f5
	dec [hl]                                         ; $4b5b: $35
	inc h                                            ; $4b5c: $24
	ret z                                            ; $4b5d: $c8

	ld a, h                                          ; $4b5e: $7c
	pop af                                           ; $4b5f: $f1
	rlca                                             ; $4b60: $07
	call nz, $3cf4                                   ; $4b61: $c4 $f4 $3c
	ld a, h                                          ; $4b64: $7c
	cp b                                             ; $4b65: $b8
	ldh a, [$7b]                                     ; $4b66: $f0 $7b
	sbc b                                            ; $4b68: $98
	sbc b                                            ; $4b69: $98
	ld hl, sp-$40                                    ; $4b6a: $f8 $c0
	nop                                              ; $4b6c: $00
	rra                                              ; $4b6d: $1f
	ld a, d                                          ; $4b6e: $7a
	push af                                          ; $4b6f: $f5
	jp c, $80fc                                      ; $4b70: $da $fc $80

	dec b                                            ; $4b73: $05
	ld a, [bc]                                       ; $4b74: $0a
	dec b                                            ; $4b75: $05
	db $fc                                           ; $4b76: $fc
	cp $7f                                           ; $4b77: $fe $7f
	dec e                                            ; $4b79: $1d
	adc c                                            ; $4b7a: $89
	and $7b                                          ; $4b7b: $e6 $7b
	cp a                                             ; $4b7d: $bf
	inc c                                            ; $4b7e: $0c
	ld c, $0f                                        ; $4b7f: $0e $0f
	dec c                                            ; $4b81: $0d
	ld [$870d], sp                                   ; $4b82: $08 $0d $87
	nop                                              ; $4b85: $00
	ld [hl], a                                       ; $4b86: $77
	dec a                                            ; $4b87: $3d
	cp $a6                                           ; $4b88: $fe $a6
	cpl                                              ; $4b8a: $2f
	ld l, l                                          ; $4b8b: $6d
	db $dd                                           ; $4b8c: $dd
	call $3f79                                       ; $4b8d: $cd $79 $3f
	db $eb                                           ; $4b90: $eb
	db $eb                                           ; $4b91: $eb
	sbc c                                            ; $4b92: $99
	db $e3                                           ; $4b93: $e3
	rst JumpTable                                          ; $4b94: $c7
	add a                                            ; $4b95: $87
	rlca                                             ; $4b96: $07
	adc [hl]                                         ; $4b97: $8e
	ret                                              ; $4b98: $c9


	sbc $dd                                          ; $4b99: $de $dd
	sbc d                                            ; $4b9b: $9a
	ld c, l                                          ; $4b9c: $4d
	ld b, a                                          ; $4b9d: $47
	ld c, a                                          ; $4b9e: $4f
	rst $38                                          ; $4b9f: $ff
	cp $dc                                           ; $4ba0: $fe $dc
	xor $9b                                          ; $4ba2: $ee $9b
	and $f0                                          ; $4ba4: $e6 $f0
	ldh a, [$f8]                                     ; $4ba6: $f0 $f8
	sbc $b8                                          ; $4ba8: $de $b8
	rst SubAFromDE                                          ; $4baa: $df
	ret c                                            ; $4bab: $d8

	sbc h                                            ; $4bac: $9c
	sbc a                                            ; $4bad: $9f
	rst SubAFromDE                                          ; $4bae: $df
	rst GetHLinHL                                          ; $4baf: $cf
	sbc $ef                                          ; $4bb0: $de $ef
	rst SubAFromDE                                          ; $4bb2: $df
	ld a, a                                          ; $4bb3: $7f
	rlca                                             ; $4bb4: $07
	jr nc, jr_026_4bfe                               ; $4bb5: $30 $47

	ldh a, [$0a]                                     ; $4bb7: $f0 $0a
	nop                                              ; $4bb9: $00
	sbc l                                            ; $4bba: $9d
	inc sp                                           ; $4bbb: $33
	ld [hl], l                                       ; $4bbc: $75
	db $dd                                           ; $4bbd: $dd
	ld d, l                                          ; $4bbe: $55
	sbc l                                            ; $4bbf: $9d
	ld [hl], e                                       ; $4bc0: $73
	inc sp                                           ; $4bc1: $33
	cp e                                             ; $4bc2: $bb
	add b                                            ; $4bc3: $80
	rst SubAFromDE                                          ; $4bc4: $df
	ld [bc], a                                       ; $4bc5: $02
	ei                                               ; $4bc6: $fb
	reti                                             ; $4bc7: $d9


	rst $38                                          ; $4bc8: $ff
	ld sp, hl                                        ; $4bc9: $f9
	reti                                             ; $4bca: $d9


	rst $38                                          ; $4bcb: $ff
	sub a                                            ; $4bcc: $97
	jr nz, jr_026_4bd0                               ; $4bcd: $20 $01

	inc bc                                           ; $4bcf: $03

jr_026_4bd0:
	ld b, $0d                                        ; $4bd0: $06 $0d
	dec de                                           ; $4bd2: $1b
	inc de                                           ; $4bd3: $13
	daa                                              ; $4bd4: $27
	db $db                                           ; $4bd5: $db
	rst $38                                          ; $4bd6: $ff
	add l                                            ; $4bd7: $85
	cp $fc                                           ; $4bd8: $fe $fc
	db $f4                                           ; $4bda: $f4
	cp c                                             ; $4bdb: $b9
	ld h, c                                          ; $4bdc: $61
	sub d                                            ; $4bdd: $92
	ld [bc], a                                       ; $4bde: $02
	inc l                                            ; $4bdf: $2c
	ld d, l                                          ; $4be0: $55
	xor c                                            ; $4be1: $a9
	rst AddAOntoHL                                          ; $4be2: $ef
	rst AddAOntoHL                                          ; $4be3: $ef
	rst SubAFromDE                                          ; $4be4: $df
	rst $38                                          ; $4be5: $ff
	rst $38                                          ; $4be6: $ff
	rst FarCall                                          ; $4be7: $f7
	rst AddAOntoHL                                          ; $4be8: $ef
	rst SubAFromDE                                          ; $4be9: $df
	adc e                                            ; $4bea: $8b
	inc e                                            ; $4beb: $1c
	dec de                                           ; $4bec: $1b
	ld [de], a                                       ; $4bed: $12
	ld [hl-], a                                      ; $4bee: $32
	ld [hl-], a                                      ; $4bef: $32
	ld [hl], d                                       ; $4bf0: $72
	ld h, h                                          ; $4bf1: $64
	reti                                             ; $4bf2: $d9


	rst $38                                          ; $4bf3: $ff
	sbc h                                            ; $4bf4: $9c
	jr jr_026_4c76                                   ; $4bf5: $18 $7f

	ldh a, [c]                                       ; $4bf7: $f2
	db $dd                                           ; $4bf8: $dd
	ld [hl+], a                                      ; $4bf9: $22
	sbc [hl]                                         ; $4bfa: $9e
	ld b, h                                          ; $4bfb: $44
	reti                                             ; $4bfc: $d9


	rst $38                                          ; $4bfd: $ff

jr_026_4bfe:
	sbc l                                            ; $4bfe: $9d
	db $fc                                           ; $4bff: $fc
	inc sp                                           ; $4c00: $33
	sbc $3f                                          ; $4c01: $de $3f
	add b                                            ; $4c03: $80
	dec a                                            ; $4c04: $3d
	ld l, a                                          ; $4c05: $6f
	ld [hl], a                                       ; $4c06: $77
	rst AddAOntoHL                                          ; $4c07: $ef
	rst $38                                          ; $4c08: $ff
	db $fc                                           ; $4c09: $fc
	rst SubAFromBC                                          ; $4c0a: $e7
	ldh [$e3], a                                     ; $4c0b: $e0 $e3
	rst SubAFromDE                                          ; $4c0d: $df
	rst GetHLinHL                                          ; $4c0e: $cf
	rst FarCall                                          ; $4c0f: $f7
	db $fd                                           ; $4c10: $fd
	rst AddAOntoHL                                          ; $4c11: $ef
	ld a, a                                          ; $4c12: $7f
	ld a, l                                          ; $4c13: $7d
	rst $38                                          ; $4c14: $ff
	call $cf85                                       ; $4c15: $cd $85 $cf
	ld a, $f0                                        ; $4c18: $3e $f0
	add b                                            ; $4c1a: $80
	cp $ff                                           ; $4c1b: $fe $ff
	res 0, h                                         ; $4c1d: $cb $84
	rst AddAOntoHL                                          ; $4c1f: $ef
	sbc $fe                                          ; $4c20: $de $fe
	db $fc                                           ; $4c22: $fc
	add b                                            ; $4c23: $80
	db $fd                                           ; $4c24: $fd
	ei                                               ; $4c25: $fb
	rst $38                                          ; $4c26: $ff
	rst $38                                          ; $4c27: $ff
	cp c                                             ; $4c28: $b9
	ld [hl], e                                       ; $4c29: $73
	ld h, e                                          ; $4c2a: $63
	ld b, a                                          ; $4c2b: $47
	rlca                                             ; $4c2c: $07
	ld c, $0c                                        ; $4c2d: $0e $0c
	jr jr_026_4caa                                   ; $4c2f: $18 $79

	ld [hl], d                                       ; $4c31: $72
	di                                               ; $4c32: $f3
	rst FarCall                                          ; $4c33: $f7
	rst FarCall                                          ; $4c34: $f7
	db $ec                                           ; $4c35: $ec
	ei                                               ; $4c36: $fb
	rst FarCall                                          ; $4c37: $f7
	rst GetHLinHL                                          ; $4c38: $cf
	rst SubAFromDE                                          ; $4c39: $df
	sbc a                                            ; $4c3a: $9f
	sbc h                                            ; $4c3b: $9c
	inc e                                            ; $4c3c: $1c
	dec sp                                           ; $4c3d: $3b
	scf                                              ; $4c3e: $37
	cpl                                              ; $4c3f: $2f
	cp [hl]                                          ; $4c40: $be
	cp a                                             ; $4c41: $bf
	rst $38                                          ; $4c42: $ff
	adc d                                            ; $4c43: $8a
	rst SubAFromDE                                          ; $4c44: $df
	rst FarCall                                          ; $4c45: $f7
	ld a, e                                          ; $4c46: $7b
	rst SubAFromDE                                          ; $4c47: $df
	rst AddAOntoHL                                          ; $4c48: $ef
	db $e3                                           ; $4c49: $e3
	db $e3                                           ; $4c4a: $e3
	di                                               ; $4c4b: $f3
	cp c                                             ; $4c4c: $b9
	adc l                                            ; $4c4d: $8d
	add a                                            ; $4c4e: $87
	pop hl                                           ; $4c4f: $e1
	pop af                                           ; $4c50: $f1
	jr nz, @+$22                                     ; $4c51: $20 $20

	ld [de], a                                       ; $4c53: $12
	sub d                                            ; $4c54: $92
	adc d                                            ; $4c55: $8a
	res 4, l                                         ; $4c56: $cb $a5
	sub h                                            ; $4c58: $94
	reti                                             ; $4c59: $d9


	rst $38                                          ; $4c5a: $ff
	sbc h                                            ; $4c5b: $9c
	call z, $c0c4                                    ; $4c5c: $cc $c4 $c0
	db $dd                                           ; $4c5f: $dd
	ldh [$9e], a                                     ; $4c60: $e0 $9e
	ldh a, [$de]                                     ; $4c62: $f0 $de
	ld a, a                                          ; $4c64: $7f
	db $dd                                           ; $4c65: $dd
	ccf                                              ; $4c66: $3f
	sbc [hl]                                         ; $4c67: $9e
	sbc a                                            ; $4c68: $9f
	ld b, a                                          ; $4c69: $47
	ld b, b                                          ; $4c6a: $40
	sbc b                                            ; $4c6b: $98
	ld b, $0e                                        ; $4c6c: $06 $0e
	dec c                                            ; $4c6e: $0d
	add hl, bc                                       ; $4c6f: $09
	inc bc                                           ; $4c70: $03
	rlca                                             ; $4c71: $07
	ld b, $63                                        ; $4c72: $06 $63
	ldh a, [$7f]                                     ; $4c74: $f0 $7f

jr_026_4c76:
	jp nc, $f09c                                     ; $4c76: $d2 $9c $f0

	jr nc, jr_026_4c9b                               ; $4c79: $30 $20

	ld e, e                                          ; $4c7b: $5b
	ldh [$0b], a                                     ; $4c7c: $e0 $0b
	nop                                              ; $4c7e: $00
	sbc h                                            ; $4c7f: $9c
	inc sp                                           ; $4c80: $33
	ld [hl], l                                       ; $4c81: $75
	ld h, [hl]                                       ; $4c82: $66
	sbc $55                                          ; $4c83: $de $55
	sbc l                                            ; $4c85: $9d
	ld [hl], d                                       ; $4c86: $72
	ld [hl+], a                                      ; $4c87: $22
	ei                                               ; $4c88: $fb
	add b                                            ; $4c89: $80
	sub d                                            ; $4c8a: $92
	ld a, a                                          ; $4c8b: $7f
	ld l, a                                          ; $4c8c: $6f
	xor $dd                                          ; $4c8d: $ee $dd
	cp e                                             ; $4c8f: $bb
	dec sp                                           ; $4c90: $3b
	inc de                                           ; $4c91: $13
	inc bc                                           ; $4c92: $03
	db $fc                                           ; $4c93: $fc
	sub b                                            ; $4c94: $90
	ld de, $7f33                                     ; $4c95: $11 $33 $7f
	sbc $ff                                          ; $4c98: $de $ff
	ld a, a                                          ; $4c9a: $7f

jr_026_4c9b:
	db $fc                                           ; $4c9b: $fc
	sub h                                            ; $4c9c: $94
	db $fd                                           ; $4c9d: $fd
	ei                                               ; $4c9e: $fb
	or a                                             ; $4c9f: $b7
	add a                                            ; $4ca0: $87
	ld b, $00                                        ; $4ca1: $06 $00
	ld sp, hl                                        ; $4ca3: $f9
	pop hl                                           ; $4ca4: $e1
	jp $efc7                                         ; $4ca5: $c3 $c7 $ef


	sbc $ff                                          ; $4ca8: $de $ff

jr_026_4caa:
	sub d                                            ; $4caa: $92
	db $fc                                           ; $4cab: $fc
	ld a, h                                          ; $4cac: $7c
	ld hl, sp-$10                                    ; $4cad: $f8 $f0
	db $fc                                           ; $4caf: $fc
	inc a                                            ; $4cb0: $3c
	ld [hl], $30                                     ; $4cb1: $36 $30
	add a                                            ; $4cb3: $87
	adc a                                            ; $4cb4: $8f
	daa                                              ; $4cb5: $27
	ccf                                              ; $4cb6: $3f
	sbc a                                            ; $4cb7: $9f
	sbc $ff                                          ; $4cb8: $de $ff
	add a                                            ; $4cba: $87
	inc bc                                           ; $4cbb: $03
	rlca                                             ; $4cbc: $07
	rlca                                             ; $4cbd: $07
	rrca                                             ; $4cbe: $0f
	rrca                                             ; $4cbf: $0f
	rra                                              ; $4cc0: $1f
	ccf                                              ; $4cc1: $3f
	ld a, a                                          ; $4cc2: $7f
	rst $38                                          ; $4cc3: $ff
	cp $fe                                           ; $4cc4: $fe $fe
	db $fc                                           ; $4cc6: $fc
	db $fd                                           ; $4cc7: $fd
	ld sp, hl                                        ; $4cc8: $f9
	ld a, [$51f2]                                    ; $4cc9: $fa $f2 $51
	ld d, d                                          ; $4ccc: $52
	and d                                            ; $4ccd: $a2
	and d                                            ; $4cce: $a2
	inc h                                            ; $4ccf: $24
	ld b, h                                          ; $4cd0: $44
	ld b, h                                          ; $4cd1: $44
	adc b                                            ; $4cd2: $88
	reti                                             ; $4cd3: $d9


	rst $38                                          ; $4cd4: $ff
	rst SubAFromDE                                          ; $4cd5: $df
	add hl, bc                                       ; $4cd6: $09
	sbc c                                            ; $4cd7: $99
	ld a, [de]                                       ; $4cd8: $1a
	inc d                                            ; $4cd9: $14
	jr @+$32                                         ; $4cda: $18 $30

	ld hl, $d9c6                                     ; $4cdc: $21 $c6 $d9
	rst $38                                          ; $4cdf: $ff
	add b                                            ; $4ce0: $80
	nop                                              ; $4ce1: $00
	add hl, bc                                       ; $4ce2: $09
	ld [de], a                                       ; $4ce3: $12
	dec h                                            ; $4ce4: $25
	ld b, e                                          ; $4ce5: $43
	add a                                            ; $4ce6: $87
	rrca                                             ; $4ce7: $0f
	ld a, $ff                                        ; $4ce8: $3e $ff
	cp $fd                                           ; $4cea: $fe $fd
	ei                                               ; $4cec: $fb
	cp $fc                                           ; $4ced: $fe $fc
	ld sp, hl                                        ; $4cef: $f9
	di                                               ; $4cf0: $f3
	or c                                             ; $4cf1: $b1
	ld [hl], c                                       ; $4cf2: $71
	ldh [c], a                                       ; $4cf3: $e2
	push bc                                          ; $4cf4: $c5
	adc e                                            ; $4cf5: $8b
	add a                                            ; $4cf6: $87
	rrca                                             ; $4cf7: $0f
	ccf                                              ; $4cf8: $3f
	ld a, [hl]                                       ; $4cf9: $7e
	cp $fd                                           ; $4cfa: $fe $fd
	ld a, e                                          ; $4cfc: $7b
	or $fc                                           ; $4cfd: $f6 $fc
	ld hl, sp-$80                                    ; $4cff: $f8 $80
	ldh a, [$bd]                                     ; $4d01: $f0 $bd
	ld a, c                                          ; $4d03: $79
	ld a, [$f9fb]                                    ; $4d04: $fa $fb $f9
	di                                               ; $4d07: $f3
	rst FarCall                                          ; $4d08: $f7
	rst SubAFromBC                                          ; $4d09: $e7
	ld h, [hl]                                       ; $4d0a: $66
	adc $8d                                          ; $4d0b: $ce $8d
	dec c                                            ; $4d0d: $0d
	rrca                                             ; $4d0e: $0f
	rra                                              ; $4d0f: $1f
	rra                                              ; $4d10: $1f
	dec a                                            ; $4d11: $3d
	adc b                                            ; $4d12: $88
	sbc c                                            ; $4d13: $99
	ld sp, hl                                        ; $4d14: $f9
	ld a, d                                          ; $4d15: $7a
	ld e, e                                          ; $4d16: $5b
	ld a, e                                          ; $4d17: $7b
	ld a, e                                          ; $4d18: $7b
	dec sp                                           ; $4d19: $3b
	call c, $9cdc                                    ; $4d1a: $dc $dc $9c
	sbc l                                            ; $4d1d: $9d
	cp l                                             ; $4d1e: $bd
	xor l                                            ; $4d1f: $ad
	sbc c                                            ; $4d20: $99
	xor l                                            ; $4d21: $ad
	db $ed                                           ; $4d22: $ed
	sbc c                                            ; $4d23: $99
	cp c                                             ; $4d24: $b9
	cp c                                             ; $4d25: $b9
	cp h                                             ; $4d26: $bc
	sbc $9c                                          ; $4d27: $de $9c
	sbc [hl]                                         ; $4d29: $9e
	cp [hl]                                          ; $4d2a: $be
	sbc $de                                          ; $4d2b: $de $de
	sbc [hl]                                         ; $4d2d: $9e
	rst SubAFromHL                                          ; $4d2e: $d7
	sbc $f7                                          ; $4d2f: $de $f7
	sub [hl]                                         ; $4d31: $96
	rst SubAFromBC                                          ; $4d32: $e7
	pop de                                           ; $4d33: $d1
	db $db                                           ; $4d34: $db
	jp c, $dbd3                                      ; $4d35: $da $d3 $db

	call $2d2d                                       ; $4d38: $cd $2d $2d
	sbc $6d                                          ; $4d3b: $de $6d
	adc e                                            ; $4d3d: $8b
	ld l, h                                          ; $4d3e: $6c
	ld h, h                                          ; $4d3f: $64
	halt                                             ; $4d40: $76
	or $f6                                           ; $4d41: $f6 $f6
	rst $38                                          ; $4d43: $ff
	rst $38                                          ; $4d44: $ff
	db $dd                                           ; $4d45: $dd
	db $dd                                           ; $4d46: $dd
	cp c                                             ; $4d47: $b9
	call nc, $8ccc                                   ; $4d48: $d4 $cc $8c
	rst AddAOntoHL                                          ; $4d4b: $ef
	rst FarCall                                          ; $4d4c: $f7
	and $e2                                          ; $4d4d: $e6 $e2
	add $af                                          ; $4d4f: $c6 $af
	cp a                                             ; $4d51: $bf
	sbc $ff                                          ; $4d52: $de $ff
	adc a                                            ; $4d54: $8f
	xor $85                                          ; $4d55: $ee $85
	adc a                                            ; $4d57: $8f
	sbc a                                            ; $4d58: $9f
	rrca                                             ; $4d59: $0f
	ld b, $63                                        ; $4d5a: $06 $63
	rst SubAFromBC                                          ; $4d5c: $e7
	ld [hl], a                                       ; $4d5d: $77
	ld a, a                                          ; $4d5e: $7f
	ld [hl], b                                       ; $4d5f: $70
	ld h, b                                          ; $4d60: $60
	ldh a, [$f9]                                     ; $4d61: $f0 $f9
	rst $38                                          ; $4d63: $ff
	dec h                                            ; $4d64: $25
	ld a, e                                          ; $4d65: $7b
	inc a                                            ; $4d66: $3c
	add h                                            ; $4d67: $84
	xor a                                            ; $4d68: $af
	rlca                                             ; $4d69: $07
	dec b                                            ; $4d6a: $05
	sbc $ff                                          ; $4d6b: $de $ff
	rst SubAFromBC                                          ; $4d6d: $e7
	add e                                            ; $4d6e: $83
	rlca                                             ; $4d6f: $07
	ld e, [hl]                                       ; $4d70: $5e
	cp $fe                                           ; $4d71: $fe $fe
	rst AddAOntoHL                                          ; $4d73: $ef
	rst $38                                          ; $4d74: $ff
	ld sp, hl                                        ; $4d75: $f9
	ld e, $bf                                        ; $4d76: $1e $bf
	ld sp, hl                                        ; $4d78: $f9
	ld hl, sp-$20                                    ; $4d79: $f8 $e0
	inc de                                           ; $4d7b: $13
	sbc a                                            ; $4d7c: $9f
	rst AddAOntoHL                                          ; $4d7d: $ef
	rst SubAFromBC                                          ; $4d7e: $e7
	ld c, l                                          ; $4d7f: $4d
	ld h, [hl]                                       ; $4d80: $66
	daa                                              ; $4d81: $27
	ld a, a                                          ; $4d82: $7f
	ld a, [bc]                                       ; $4d83: $0a

Call_026_4d84:
	nop                                              ; $4d84: $00
	sbc h                                            ; $4d85: $9c
	ld [hl+], a                                      ; $4d86: $22
	daa                                              ; $4d87: $27
	ld h, l                                          ; $4d88: $65
	sbc $55                                          ; $4d89: $de $55
	rst SubAFromDE                                          ; $4d8b: $df
	ld [hl+], a                                      ; $4d8c: $22
	rst FarCall                                          ; $4d8d: $f7
	add b                                            ; $4d8e: $80
	sbc l                                            ; $4d8f: $9d
	rst $38                                          ; $4d90: $ff
	cp $db                                           ; $4d91: $fe $db
	rst $38                                          ; $4d93: $ff
	sub l                                            ; $4d94: $95
	inc de                                           ; $4d95: $13
	inc sp                                           ; $4d96: $33
	and e                                            ; $4d97: $a3
	dec d                                            ; $4d98: $15
	inc l                                            ; $4d99: $2c
	jr z, jr_026_4da5                                ; $4d9a: $28 $09

	cp a                                             ; $4d9c: $bf
	rst $38                                          ; $4d9d: $ff
	ccf                                              ; $4d9e: $3f
	db $dd                                           ; $4d9f: $dd
	rst $38                                          ; $4da0: $ff
	ld a, a                                          ; $4da1: $7f
	ld sp, hl                                        ; $4da2: $f9
	rst SubAFromDE                                          ; $4da3: $df
	db $fc                                           ; $4da4: $fc

jr_026_4da5:
	sub [hl]                                         ; $4da5: $96
	or b                                             ; $4da6: $b0
	ld bc, $77a3                                     ; $4da7: $01 $a3 $77
	db $fd                                           ; $4daa: $fd
	ld hl, sp-$02                                    ; $4dab: $f8 $fe
	rst $38                                          ; $4dad: $ff
	pop af                                           ; $4dae: $f1
	sbc $ff                                          ; $4daf: $de $ff
	sub h                                            ; $4db1: $94
	ei                                               ; $4db2: $fb
	pop af                                           ; $4db3: $f1
	ld h, e                                          ; $4db4: $63
	nop                                              ; $4db5: $00
	adc [hl]                                         ; $4db6: $8e
	ld [hl], c                                       ; $4db7: $71
	jr z, jr_026_4dfa                                ; $4db8: $28 $40

	cp $ce                                           ; $4dba: $fe $ce
	ld a, a                                          ; $4dbc: $7f
	db $dd                                           ; $4dbd: $dd
	rst $38                                          ; $4dbe: $ff
	adc h                                            ; $4dbf: $8c
	cp $f9                                           ; $4dc0: $fe $f9
	pop bc                                           ; $4dc2: $c1
	db $f4                                           ; $4dc3: $f4
	db $f4                                           ; $4dc4: $f4
	ld h, $c7                                        ; $4dc5: $26 $c7
	ld h, e                                          ; $4dc7: $63
	inc hl                                           ; $4dc8: $23
	rra                                              ; $4dc9: $1f
	ccf                                              ; $4dca: $3f
	jp nc, $c8e4                                     ; $4dcb: $d2 $e4 $c8

	ret z                                            ; $4dce: $c8

	sub b                                            ; $4dcf: $90
	sub b                                            ; $4dd0: $90
	jr nz, @+$23                                     ; $4dd1: $20 $21

	sbc $7f                                          ; $4dd3: $de $7f
	call c, $94ff                                    ; $4dd5: $dc $ff $94
	add hl, hl                                       ; $4dd8: $29
	ld h, e                                          ; $4dd9: $63
	ld d, d                                          ; $4dda: $52
	add c                                            ; $4ddb: $81
	ld [bc], a                                       ; $4ddc: $02
	ld [bc], a                                       ; $4ddd: $02
	inc b                                            ; $4dde: $04
	inc b                                            ; $4ddf: $04
	sbc $9c                                          ; $4de0: $de $9c
	cp l                                             ; $4de2: $bd
	ld [hl], e                                       ; $4de3: $73
	rst AddAOntoHL                                          ; $4de4: $ef
	sub a                                            ; $4de5: $97
	ld c, b                                          ; $4de6: $48
	adc b                                            ; $4de7: $88
	ld de, $2211                                     ; $4de8: $11 $11 $22
	ld b, b                                          ; $4deb: $40
	ld b, b                                          ; $4dec: $40
	add b                                            ; $4ded: $80
	ld a, e                                          ; $4dee: $7b
	res 3, l                                         ; $4def: $cb $9d
	cp $fd                                           ; $4df1: $fe $fd
	sbc $ff                                          ; $4df3: $de $ff
	add b                                            ; $4df5: $80
	ld d, [hl]                                       ; $4df6: $56
	add $ad                                          ; $4df7: $c6 $ad
	ld c, l                                          ; $4df9: $4d

jr_026_4dfa:
	ld e, d                                          ; $4dfa: $5a
	sub h                                            ; $4dfb: $94
	jr z, jr_026_4e56                                ; $4dfc: $28 $58

	cp c                                             ; $4dfe: $b9
	add hl, sp                                       ; $4dff: $39
	ld [hl], e                                       ; $4e00: $73
	di                                               ; $4e01: $f3
	rst SubAFromBC                                          ; $4e02: $e7
	rst AddAOntoHL                                          ; $4e03: $ef
	rst SubAFromDE                                          ; $4e04: $df
	cp a                                             ; $4e05: $bf
	ld b, c                                          ; $4e06: $41
	sub l                                            ; $4e07: $95
	ld [hl+], a                                      ; $4e08: $22
	ld l, d                                          ; $4e09: $6a
	ld b, [hl]                                       ; $4e0a: $46
	ld d, [hl]                                       ; $4e0b: $56
	xor h                                            ; $4e0c: $ac
	db $dd                                           ; $4e0d: $dd
	jp $c7c3                                         ; $4e0e: $c3 $c3 $c7


	add a                                            ; $4e11: $87
	adc a                                            ; $4e12: $8f
	adc a                                            ; $4e13: $8f
	rra                                              ; $4e14: $1f
	add c                                            ; $4e15: $81
	ld [hl], $b9                                     ; $4e16: $36 $b9
	inc [hl]                                         ; $4e18: $34
	ld l, a                                          ; $4e19: $6f
	ld h, l                                          ; $4e1a: $65
	ld c, b                                          ; $4e1b: $48
	ret                                              ; $4e1c: $c9


	add sp, $58                                      ; $4e1d: $e8 $58
	add $cb                                          ; $4e1f: $c6 $cb
	ret                                              ; $4e21: $c9


	ret                                              ; $4e22: $c9


	db $ed                                           ; $4e23: $ed
	ld l, h                                          ; $4e24: $6c
	ld c, h                                          ; $4e25: $4c
	call z, $e6d2                                    ; $4e26: $cc $d2 $e6
	xor c                                            ; $4e29: $a9
	inc de                                           ; $4e2a: $13
	or h                                             ; $4e2b: $b4
	pop de                                           ; $4e2c: $d1
	pop de                                           ; $4e2d: $d1
	db $d3                                           ; $4e2e: $d3
	ld h, a                                          ; $4e2f: $67
	inc sp                                           ; $4e30: $33
	inc sp                                           ; $4e31: $33
	cp c                                             ; $4e32: $b9
	sbc c                                            ; $4e33: $99
	sbc $9c                                          ; $4e34: $de $9c
	sub d                                            ; $4e36: $92
	and [hl]                                         ; $4e37: $a6
	ld a, [hl+]                                      ; $4e38: $2a
	ld b, c                                          ; $4e39: $41
	ld b, c                                          ; $4e3a: $41
	add e                                            ; $4e3b: $83
	sub l                                            ; $4e3c: $95
	or l                                             ; $4e3d: $b5
	dec [hl]                                         ; $4e3e: $35
	inc de                                           ; $4e3f: $13
	sub e                                            ; $4e40: $93
	sbc e                                            ; $4e41: $9b
	sbc e                                            ; $4e42: $9b
	reti                                             ; $4e43: $d9


	sbc $c9                                          ; $4e44: $de $c9
	sbc [hl]                                         ; $4e46: $9e
	ld a, a                                          ; $4e47: $7f
	call c, $df3f                                    ; $4e48: $dc $3f $df
	ld a, a                                          ; $4e4b: $7f
	add b                                            ; $4e4c: $80
	xor $ef                                          ; $4e4d: $ee $ef
	rst $38                                          ; $4e4f: $ff
	rst AddAOntoHL                                          ; $4e50: $ef
	rst SubAFromBC                                          ; $4e51: $e7
	rst SubAFromBC                                          ; $4e52: $e7
	and $e6                                          ; $4e53: $e6 $e6
	rst $38                                          ; $4e55: $ff

jr_026_4e56:
	rst $38                                          ; $4e56: $ff
	db $fc                                           ; $4e57: $fc
	rst SubAFromDE                                          ; $4e58: $df
	ld a, a                                          ; $4e59: $7f
	ld l, $fe                                        ; $4e5a: $2e $fe
	db $fc                                           ; $4e5c: $fc
	inc a                                            ; $4e5d: $3c
	ld a, [hl]                                       ; $4e5e: $7e
	rst $38                                          ; $4e5f: $ff
	cp b                                             ; $4e60: $b8
	sub b                                            ; $4e61: $90
	db $d3                                           ; $4e62: $d3
	rla                                              ; $4e63: $17
	ccf                                              ; $4e64: $3f
	rst $38                                          ; $4e65: $ff
	cp $7f                                           ; $4e66: $fe $7f
	ld a, e                                          ; $4e68: $7b
	ei                                               ; $4e69: $fb
	rst $38                                          ; $4e6a: $ff
	ld a, e                                          ; $4e6b: $7b
	sub [hl]                                         ; $4e6c: $96
	ld a, [hl]                                       ; $4e6d: $7e
	db $ed                                           ; $4e6e: $ed
	pop af                                           ; $4e6f: $f1
	db $db                                           ; $4e70: $db
	adc [hl]                                         ; $4e71: $8e
	inc e                                            ; $4e72: $1c
	inc c                                            ; $4e73: $0c
	add [hl]                                         ; $4e74: $86
	adc a                                            ; $4e75: $8f
	call c, $94ff                                    ; $4e76: $dc $ff $94
	rst SubAFromDE                                          ; $4e79: $df
	rst $38                                          ; $4e7a: $ff
	ld a, [hl]                                       ; $4e7b: $7e
	ld [$ff9b], sp                                   ; $4e7c: $08 $9b $ff
	scf                                              ; $4e7f: $37
	ld sp, $e870                                     ; $4e80: $31 $70 $e8
	di                                               ; $4e83: $f3
	dec bc                                           ; $4e84: $0b
	nop                                              ; $4e85: $00
	rst SubAFromDE                                          ; $4e86: $df
	ld [hl+], a                                      ; $4e87: $22
	sbc [hl]                                         ; $4e88: $9e
	ld h, l                                          ; $4e89: $65
	sbc $55                                          ; $4e8a: $de $55
	sbc l                                            ; $4e8c: $9d
	ld h, d                                          ; $4e8d: $62
	ld [hl+], a                                      ; $4e8e: $22
	ld hl, sp-$80                                    ; $4e8f: $f8 $80
	rst SubAFromDE                                          ; $4e91: $df
	rst $38                                          ; $4e92: $ff
	sbc [hl]                                         ; $4e93: $9e
	rst FarCall                                          ; $4e94: $f7
	call c, $93ff                                    ; $4e95: $dc $ff $93
	or a                                             ; $4e98: $b7
	rst $38                                          ; $4e99: $ff
	rst $38                                          ; $4e9a: $ff
	pop af                                           ; $4e9b: $f1
	pop af                                           ; $4e9c: $f1
	rrca                                             ; $4e9d: $0f
	rlca                                             ; $4e9e: $07
	and [hl]                                         ; $4e9f: $a6
	rst FarCall                                          ; $4ea0: $f7
	rst AddAOntoHL                                          ; $4ea1: $ef
	cp a                                             ; $4ea2: $bf
	sbc e                                            ; $4ea3: $9b
	ld a, e                                          ; $4ea4: $7b
	db $f4                                           ; $4ea5: $f4
	jp c, $99ff                                      ; $4ea6: $da $ff $99

	dec e                                            ; $4ea9: $1d
	ld sp, $f9ff                                     ; $4eaa: $31 $ff $f9
	ccf                                              ; $4ead: $3f
	rst SubAFromDE                                          ; $4eae: $df
	sbc $ff                                          ; $4eaf: $de $ff
	add a                                            ; $4eb1: $87
	ei                                               ; $4eb2: $fb
	rst $38                                          ; $4eb3: $ff
	rst $38                                          ; $4eb4: $ff
	ld hl, sp-$0f                                    ; $4eb5: $f8 $f1
	rla                                              ; $4eb7: $17
	dec de                                           ; $4eb8: $1b
	ld [hl], e                                       ; $4eb9: $73
	adc a                                            ; $4eba: $8f
	rst SubAFromBC                                          ; $4ebb: $e7
	rst AddAOntoHL                                          ; $4ebc: $ef
	cp $fe                                           ; $4ebd: $fe $fe

jr_026_4ebf:
	db $fc                                           ; $4ebf: $fc
	ld hl, sp-$10                                    ; $4ec0: $f8 $f0
	or a                                             ; $4ec2: $b7
	ld hl, sp-$01                                    ; $4ec3: $f8 $ff
	rst $38                                          ; $4ec5: $ff
	rst GetHLinHL                                          ; $4ec6: $cf
	add a                                            ; $4ec7: $87
	ld c, a                                          ; $4ec8: $4f
	rst $38                                          ; $4ec9: $ff
	ld a, e                                          ; $4eca: $7b
	di                                               ; $4ecb: $f3
	sub h                                            ; $4ecc: $94
	ld sp, hl                                        ; $4ecd: $f9
	ld a, [$f4f2]                                    ; $4ece: $fa $f2 $f4
	jp hl                                            ; $4ed1: $e9


	ld [$7f3f], a                                    ; $4ed2: $ea $3f $7f

jr_026_4ed5:
	rst $38                                          ; $4ed5: $ff
	rst SubAFromDE                                          ; $4ed6: $df
	rra                                              ; $4ed7: $1f
	sbc $3f                                          ; $4ed8: $de $3f
	add b                                            ; $4eda: $80
	ld d, [hl]                                       ; $4edb: $56
	xor l                                            ; $4edc: $ad
	ld e, c                                          ; $4edd: $59
	inc de                                           ; $4ede: $13
	ld h, $6d                                        ; $4edf: $26 $6d
	ld e, b                                          ; $4ee1: $58
	sub l                                            ; $4ee2: $95
	jp hl                                            ; $4ee3: $e9


	jp nc, $eca6                                     ; $4ee4: $d2 $a6 $ec

	reti                                             ; $4ee7: $d9


	sub e                                            ; $4ee8: $93
	and a                                            ; $4ee9: $a7
	ld l, [hl]                                       ; $4eea: $6e
	and $db                                          ; $4eeb: $e6 $db
	xor [hl]                                         ; $4eed: $ae
	ld e, e                                          ; $4eee: $5b
	or l                                             ; $4eef: $b5
	ld l, d                                          ; $4ef0: $6a
	call nc, $1fa4                                   ; $4ef1: $d4 $a4 $1f
	inc a                                            ; $4ef4: $3c
	ld [hl], c                                       ; $4ef5: $71
	rst SubAFromBC                                          ; $4ef6: $e7
	rst GetHLinHL                                          ; $4ef7: $cf
	sbc a                                            ; $4ef8: $9f
	ccf                                              ; $4ef9: $3f
	add b                                            ; $4efa: $80
	ld a, a                                          ; $4efb: $7f
	dec h                                            ; $4efc: $25
	ld c, [hl]                                       ; $4efd: $4e
	adc l                                            ; $4efe: $8d
	ld a, [de]                                       ; $4eff: $1a
	inc d                                            ; $4f00: $14
	ld [hl], $29                                     ; $4f01: $36 $29
	ld l, l                                          ; $4f03: $6d
	ld hl, sp-$0f                                    ; $4f04: $f8 $f1
	di                                               ; $4f06: $f3
	rst SubAFromBC                                          ; $4f07: $e7
	xor $cc                                          ; $4f08: $ee $cc
	call c, Call_026_6098                            ; $4f0a: $dc $98 $60
	and a                                            ; $4f0d: $a7
	inc de                                           ; $4f0e: $13
	jr z, @+$58                                      ; $4f0f: $28 $56

	and a                                            ; $4f11: $a7
	inc l                                            ; $4f12: $2c
	ld c, d                                          ; $4f13: $4a
	rst $38                                          ; $4f14: $ff
	ret nz                                           ; $4f15: $c0

	adc a                                            ; $4f16: $8f
	rra                                              ; $4f17: $1f
	add hl, sp                                       ; $4f18: $39
	ld [hl], b                                       ; $4f19: $70
	add b                                            ; $4f1a: $80
	ldh [$e1], a                                     ; $4f1b: $e0 $e1

jr_026_4f1d:
	ld e, e                                          ; $4f1d: $5b
	dec [hl]                                         ; $4f1e: $35
	sbc d                                            ; $4f1f: $9a
	ld d, b                                          ; $4f20: $50
	jr nc, jr_026_4ebf                               ; $4f21: $30 $9c

	rst SubAFromDE                                          ; $4f23: $df
	db $d3                                           ; $4f24: $d3
	rst FarCall                                          ; $4f25: $f7
	cp $fd                                           ; $4f26: $fe $fd
	rst $38                                          ; $4f28: $ff
	rst $38                                          ; $4f29: $ff
	ld a, a                                          ; $4f2a: $7f
	ccf                                              ; $4f2b: $3f
	db $fc                                           ; $4f2c: $fc
	jp z, $b5a5                                      ; $4f2d: $ca $a5 $b5

	ld [de], a                                       ; $4f30: $12
	ld e, d                                          ; $4f31: $5a
	ld [$8c25], sp                                   ; $4f32: $08 $25 $8c
	pop af                                           ; $4f35: $f1
	ld a, b                                          ; $4f36: $78
	jr jr_026_4ed5                                   ; $4f37: $18 $9c

	adc h                                            ; $4f39: $8c
	rst SubAFromDE                                          ; $4f3a: $df
	adc $8e                                          ; $4f3b: $ce $8e
	rst SubAFromBC                                          ; $4f3d: $e7
	cpl                                              ; $4f3e: $2f
	ld d, l                                          ; $4f3f: $55
	scf                                              ; $4f40: $37
	or [hl]                                          ; $4f41: $b6
	dec de                                           ; $4f42: $1b
	ld d, a                                          ; $4f43: $57
	ld c, l                                          ; $4f44: $4d
	inc bc                                           ; $4f45: $03
	di                                               ; $4f46: $f3
	cp e                                             ; $4f47: $bb
	reti                                             ; $4f48: $d9


	ld e, c                                          ; $4f49: $59
	ld l, h                                          ; $4f4a: $6c
	inc l                                            ; $4f4b: $2c
	ld [hl], $36                                     ; $4f4c: $36 $36
	db $db                                           ; $4f4e: $db
	rst $38                                          ; $4f4f: $ff
	rst SubAFromDE                                          ; $4f50: $df
	ld a, a                                          ; $4f51: $7f
	sub a                                            ; $4f52: $97
	rst $38                                          ; $4f53: $ff
	sbc e                                            ; $4f54: $9b
	sub e                                            ; $4f55: $93
	add c                                            ; $4f56: $81
	sub c                                            ; $4f57: $91
	sbc e                                            ; $4f58: $9b
	call c, $7bde                                    ; $4f59: $dc $de $7b
	ld sp, $fd9d                                     ; $4f5c: $31 $9d $fd
	rst AddAOntoHL                                          ; $4f5f: $ef
	ld a, e                                          ; $4f60: $7b
	push bc                                          ; $4f61: $c5
	sub l                                            ; $4f62: $95
	jr jr_026_4f1d                                   ; $4f63: $18 $b8

	cp h                                             ; $4f65: $bc
	ld e, $1f                                        ; $4f66: $1e $1f
	ccf                                              ; $4f68: $3f
	jr c, jr_026_4f9b                                ; $4f69: $38 $30

	rst SubAFromDE                                          ; $4f6b: $df
	sbc a                                            ; $4f6c: $9f
	jp c, $93ff                                      ; $4f6d: $da $ff $93

	ld a, a                                          ; $4f70: $7f
	inc a                                            ; $4f71: $3c
	ld b, h                                          ; $4f72: $44
	adc l                                            ; $4f73: $8d
	sub b                                            ; $4f74: $90
	ld h, b                                          ; $4f75: $60
	ld h, l                                          ; $4f76: $65
	ld e, $e7                                        ; $4f77: $1e $e7
	db $fc                                           ; $4f79: $fc
	rst $38                                          ; $4f7a: $ff
	rst AddAOntoHL                                          ; $4f7b: $ef
	ld a, e                                          ; $4f7c: $7b
	db $db                                           ; $4f7d: $db
	ld a, a                                          ; $4f7e: $7f
	ld hl, sp-$67                                    ; $4f7f: $f8 $99
	adc h                                            ; $4f81: $8c
	add e                                            ; $4f82: $83
	sbc a                                            ; $4f83: $9f
	add hl, de                                       ; $4f84: $19
	rst SubAFromDE                                          ; $4f85: $df
	jr c, @+$0d                                      ; $4f86: $38 $0b

	nop                                              ; $4f88: $00
	rst SubAFromDE                                          ; $4f89: $df
	ld [hl+], a                                      ; $4f8a: $22
	sbc [hl]                                         ; $4f8b: $9e
	ld h, l                                          ; $4f8c: $65
	sbc $55                                          ; $4f8d: $de $55
	sbc l                                            ; $4f8f: $9d
	ld h, d                                          ; $4f90: $62
	ld [hl+], a                                      ; $4f91: $22
	xor $80                                          ; $4f92: $ee $80
	reti                                             ; $4f94: $d9


	rst $38                                          ; $4f95: $ff
	adc c                                            ; $4f96: $89
	ld c, c                                          ; $4f97: $49
	ld hl, sp-$08                                    ; $4f98: $f8 $f8
	or b                                             ; $4f9a: $b0

jr_026_4f9b:
	ld [$3bdb], sp                                   ; $4f9b: $08 $db $3b
	inc hl                                           ; $4f9e: $23
	rst $38                                          ; $4f9f: $ff
	ei                                               ; $4fa0: $fb
	di                                               ; $4fa1: $f3
	rst $38                                          ; $4fa2: $ff
	rst $38                                          ; $4fa3: $ff
	ccf                                              ; $4fa4: $3f
	sbc a                                            ; $4fa5: $9f
	rst $38                                          ; $4fa6: $ff
	db $fd                                           ; $4fa7: $fd
	ld a, $7c                                        ; $4fa8: $3e $7c
	ld hl, sp-$33                                    ; $4faa: $f8 $cd
	rst GetHLinHL                                          ; $4fac: $cf
	jp c, $98ff                                      ; $4fad: $da $ff $98

	cp a                                             ; $4fb0: $bf
	push hl                                          ; $4fb1: $e5
	rst $38                                          ; $4fb2: $ff
	rra                                              ; $4fb3: $1f
	ccf                                              ; $4fb4: $3f
	rra                                              ; $4fb5: $1f
	ccf                                              ; $4fb6: $3f
	jp c, $92ff                                      ; $4fb7: $da $ff $92

	rst SubAFromDE                                          ; $4fba: $df
	ld e, a                                          ; $4fbb: $5f
	rst $38                                          ; $4fbc: $ff
	rst $38                                          ; $4fbd: $ff
	rst AddAOntoHL                                          ; $4fbe: $ef
	jp $c084                                         ; $4fbf: $c3 $84 $c0


	rst FarCall                                          ; $4fc2: $f7
	db $fc                                           ; $4fc3: $fc
	db $fc                                           ; $4fc4: $fc
	sub e                                            ; $4fc5: $93
	sub c                                            ; $4fc6: $91
	db $dd                                           ; $4fc7: $dd
	rst $38                                          ; $4fc8: $ff
	sbc [hl]                                         ; $4fc9: $9e
	db $fd                                           ; $4fca: $fd
	sbc $ff                                          ; $4fcb: $de $ff
	add b                                            ; $4fcd: $80
	rra                                              ; $4fce: $1f
	ld h, e                                          ; $4fcf: $63
	ld h, c                                          ; $4fd0: $61
	pop af                                           ; $4fd1: $f1
	di                                               ; $4fd2: $f3
	rlca                                             ; $4fd3: $07
	rlca                                             ; $4fd4: $07
	rrca                                             ; $4fd5: $0f
	cp $f8                                           ; $4fd6: $fe $f8
	pop af                                           ; $4fd8: $f1
	db $e3                                           ; $4fd9: $e3
	jp nz, $0984                                     ; $4fda: $c2 $84 $09

	dec bc                                           ; $4fdd: $0b
	rst $38                                          ; $4fde: $ff
	rst $38                                          ; $4fdf: $ff
	cp $fc                                           ; $4fe0: $fe $fc
	db $fd                                           ; $4fe2: $fd
	ei                                               ; $4fe3: $fb
	or $f4                                           ; $4fe4: $f6 $f4
	rra                                              ; $4fe6: $1f
	ld a, h                                          ; $4fe7: $7c
	db $e3                                           ; $4fe8: $e3
	sbc a                                            ; $4fe9: $9f
	ld a, b                                          ; $4fea: $78
	rst SubAFromBC                                          ; $4feb: $e7
	sbc [hl]                                         ; $4fec: $9e
	add b                                            ; $4fed: $80
	ld a, c                                          ; $4fee: $79
	ldh [hDisp0_SCY], a                                     ; $4fef: $e0 $83
	inc e                                            ; $4ff1: $1c
	ld h, b                                          ; $4ff2: $60
	add a                                            ; $4ff3: $87
	jr jr_026_5057                                   ; $4ff4: $18 $61

	add a                                            ; $4ff6: $87
	cp $0f                                           ; $4ff7: $fe $0f
	ldh a, [c]                                       ; $4ff9: $f2
	ei                                               ; $4ffa: $fb
	ld [bc], a                                       ; $4ffb: $02
	add h                                            ; $4ffc: $84
	add hl, de                                       ; $4ffd: $19
	ldh a, [c]                                       ; $4ffe: $f2
	ld bc, $0df0                                     ; $4fff: $01 $f0 $0d
	rlca                                             ; $5002: $07
	rst $38                                          ; $5003: $ff
	ld a, a                                          ; $5004: $7f
	cp $fc                                           ; $5005: $fe $fc
	add h                                            ; $5007: $84
	ld b, l                                          ; $5008: $45
	ld a, e                                          ; $5009: $7b
	add e                                            ; $500a: $83
	nop                                              ; $500b: $00
	ld b, [hl]                                       ; $500c: $46
	sbc [hl]                                         ; $500d: $9e
	ld bc, $ad7b                                     ; $500e: $01 $7b $ad
	sbc $ff                                          ; $5011: $de $ff
	add b                                            ; $5013: $80
	add c                                            ; $5014: $81
	nop                                              ; $5015: $00
	ccf                                              ; $5016: $3f
	xor l                                            ; $5017: $ad
	ld d, e                                          ; $5018: $53
	ld l, $5b                                        ; $5019: $2e $5b
	call nz, $b349                                   ; $501b: $c4 $49 $b3
	and h                                            ; $501e: $a4
	sbc $bc                                          ; $501f: $de $bc
	pop af                                           ; $5021: $f1
	rst SubAFromBC                                          ; $5022: $e7
	rst $38                                          ; $5023: $ff
	cp $7c                                           ; $5024: $fe $7c
	ei                                               ; $5026: $fb
	or $fd                                           ; $5027: $f6 $fd
	rst FarCall                                          ; $5029: $f7
	dec c                                            ; $502a: $0d
	ld [bc], a                                       ; $502b: $02
	pop hl                                           ; $502c: $e1
	ld hl, sp+$14                                    ; $502d: $f8 $14
	rrca                                             ; $502f: $0f
	inc bc                                           ; $5030: $03
	ld hl, sp-$02                                    ; $5031: $f8 $fe
	ld a, a                                          ; $5033: $7f
	sbc e                                            ; $5034: $9b
	sub l                                            ; $5035: $95
	rlca                                             ; $5036: $07
	db $e3                                           ; $5037: $e3
	rst $38                                          ; $5038: $ff
	cp a                                             ; $5039: $bf
	ld c, a                                          ; $503a: $4f
	and c                                            ; $503b: $a1
	rst SubAFromDE                                          ; $503c: $df
	ld l, a                                          ; $503d: $6f
	or a                                             ; $503e: $b7
	ld e, e                                          ; $503f: $5b
	sbc $ff                                          ; $5040: $de $ff
	sub l                                            ; $5042: $95
	ld a, a                                          ; $5043: $7f
	ccf                                              ; $5044: $3f
	sbc a                                            ; $5045: $9f
	rst GetHLinHL                                          ; $5046: $cf
	rst SubAFromBC                                          ; $5047: $e7
	call z, $fefe                                    ; $5048: $cc $fe $fe
	rst FarCall                                          ; $504b: $f7
	rst SubAFromHL                                          ; $504c: $d7
	sbc $ff                                          ; $504d: $de $ff
	sbc l                                            ; $504f: $9d
	db $fc                                           ; $5050: $fc
	cp $7b                                           ; $5051: $fe $7b
	ld l, e                                          ; $5053: $6b
	sub h                                            ; $5054: $94
	rst $38                                          ; $5055: $ff
	rlca                                             ; $5056: $07

jr_026_5057:
	rrca                                             ; $5057: $0f
	adc $3f                                          ; $5058: $ce $3f
	ldh [$e1], a                                     ; $505a: $e0 $e1
	or $fe                                           ; $505c: $f6 $fe
	cp $ff                                           ; $505e: $fe $ff
	ld a, e                                          ; $5060: $7b
	ld hl, sp-$6e                                    ; $5061: $f8 $92
	pop af                                           ; $5063: $f1
	cp $c2                                           ; $5064: $fe $c2
	add c                                            ; $5066: $81
	ld bc, $0f70                                     ; $5067: $01 $70 $0f
	nop                                              ; $506a: $00
	ldh [rAUD3LEVEL], a                              ; $506b: $e0 $1c
	jp c, $f63f                                      ; $506d: $da $3f $f6

	ld l, a                                          ; $5070: $6f
	ld hl, sp-$6c                                    ; $5071: $f8 $94
	rst $38                                          ; $5073: $ff
	or $73                                           ; $5074: $f6 $73
	rra                                              ; $5076: $1f
	rlca                                             ; $5077: $07
	add hl, de                                       ; $5078: $19
	pop bc                                           ; $5079: $c1
	rlca                                             ; $507a: $07
	dec de                                           ; $507b: $1b
	jr z, @+$7f                                      ; $507c: $28 $7d

	ld l, e                                          ; $507e: $6b
	ld hl, sp+$0a                                    ; $507f: $f8 $0a
	nop                                              ; $5081: $00
	rst SubAFromDE                                          ; $5082: $df
	ld [hl+], a                                      ; $5083: $22
	sbc [hl]                                         ; $5084: $9e
	dec h                                            ; $5085: $25
	sbc $55                                          ; $5086: $de $55
	rst SubAFromDE                                          ; $5088: $df
	ld [hl+], a                                      ; $5089: $22
	push hl                                          ; $508a: $e5
	add b                                            ; $508b: $80
	add b                                            ; $508c: $80
	adc $dc                                          ; $508d: $ce $dc
	call c, $ff7e                                    ; $508f: $dc $7e $ff
	rst FarCall                                          ; $5092: $f7
	di                                               ; $5093: $f3
	rst $38                                          ; $5094: $ff
	ccf                                              ; $5095: $3f
	ccf                                              ; $5096: $3f
	inc sp                                           ; $5097: $33
	add c                                            ; $5098: $81
	ld h, c                                          ; $5099: $61
	ld a, b                                          ; $509a: $78
	cp $30                                           ; $509b: $fe $30
	rrca                                             ; $509d: $0f
	ccf                                              ; $509e: $3f
	ld a, a                                          ; $509f: $7f
	db $e3                                           ; $50a0: $e3
	rst SubAFromBC                                          ; $50a1: $e7
	rst GetHLinHL                                          ; $50a2: $cf
	rst AddAOntoHL                                          ; $50a3: $ef
	rst $38                                          ; $50a4: $ff
	rst $38                                          ; $50a5: $ff
	sbc $9e                                          ; $50a6: $de $9e
	ccf                                              ; $50a8: $3f
	ccf                                              ; $50a9: $3f
	ld a, h                                          ; $50aa: $7c
	ld a, b                                          ; $50ab: $78
	sbc [hl]                                         ; $50ac: $9e
	ld a, b                                          ; $50ad: $78
	sbc $ff                                          ; $50ae: $de $ff
	ld a, a                                          ; $50b0: $7f
	db $e3                                           ; $50b1: $e3
	sbc c                                            ; $50b2: $99
	ei                                               ; $50b3: $fb
	db $eb                                           ; $50b4: $eb
	rst $38                                          ; $50b5: $ff
	pop af                                           ; $50b6: $f1
	inc sp                                           ; $50b7: $33
	ld [hl], a                                       ; $50b8: $77
	sbc $ff                                          ; $50b9: $de $ff
	sbc l                                            ; $50bb: $9d
	ld e, $0f                                        ; $50bc: $1e $0f
	db $dd                                           ; $50be: $dd
	rst $38                                          ; $50bf: $ff
	sbc [hl]                                         ; $50c0: $9e
	sbc a                                            ; $50c1: $9f
	call c, Call_026_7fff                            ; $50c2: $dc $ff $7f
	reti                                             ; $50c5: $d9


	sbc e                                            ; $50c6: $9b
	db $fc                                           ; $50c7: $fc
	inc l                                            ; $50c8: $2c
	ld b, $22                                        ; $50c9: $06 $22
	ld a, e                                          ; $50cb: $7b
	pop hl                                           ; $50cc: $e1
	sbc l                                            ; $50cd: $9d
	ld hl, sp-$04                                    ; $50ce: $f8 $fc
	sbc $ff                                          ; $50d0: $de $ff
	sub d                                            ; $50d2: $92
	rst SubAFromBC                                          ; $50d3: $e7
	adc a                                            ; $50d4: $8f
	adc a                                            ; $50d5: $8f
	sbc a                                            ; $50d6: $9f
	ld b, e                                          ; $50d7: $43
	ld [hl+], a                                      ; $50d8: $22
	cp $0e                                           ; $50d9: $fe $0e
	db $fc                                           ; $50db: $fc
	cp $ff                                           ; $50dc: $fe $ff
	ccf                                              ; $50de: $3f
	ld a, a                                          ; $50df: $7f
	db $dd                                           ; $50e0: $dd
	rst $38                                          ; $50e1: $ff
	sbc c                                            ; $50e2: $99
	rst JumpTable                                          ; $50e3: $c7
	pop bc                                           ; $50e4: $c1
	ldh a, [$fd]                                     ; $50e5: $f0 $fd
	rlca                                             ; $50e7: $07
	rrca                                             ; $50e8: $0f
	ld [hl], e                                       ; $50e9: $73
	push af                                          ; $50ea: $f5
	sub [hl]                                         ; $50eb: $96
	rst $38                                          ; $50ec: $ff
	cp $e0                                           ; $50ed: $fe $e0
	nop                                              ; $50ef: $00
	ld [hl], b                                       ; $50f0: $70
	ld hl, sp-$21                                    ; $50f1: $f8 $df
	inc bc                                           ; $50f3: $03
	rst GetHLinHL                                          ; $50f4: $cf
	reti                                             ; $50f5: $d9


	rst $38                                          ; $50f6: $ff
	sbc b                                            ; $50f7: $98
	jr jr_026_5100                                   ; $50f8: $18 $06

	ld bc, $73e1                                     ; $50fa: $01 $e1 $73
	or a                                             ; $50fd: $b7
	ld e, $dd                                        ; $50fe: $1e $dd

jr_026_5100:
	rst $38                                          ; $5100: $ff
	sbc [hl]                                         ; $5101: $9e
	di                                               ; $5102: $f3
	db $dd                                           ; $5103: $dd
	rst SubAFromBC                                          ; $5104: $e7
	sub a                                            ; $5105: $97
	rst FarCall                                          ; $5106: $f7
	ld a, [hl-]                                      ; $5107: $3a
	inc c                                            ; $5108: $0c
	cp $fe                                           ; $5109: $fe $fe
	ld a, a                                          ; $510b: $7f
	ld a, $3c                                        ; $510c: $3e $3c
	ret c                                            ; $510e: $d8

	rst $38                                          ; $510f: $ff
	sbc b                                            ; $5110: $98
	ld sp, $3c42                                     ; $5111: $31 $42 $3c
	ld a, b                                          ; $5114: $78
	ld a, b                                          ; $5115: $78
	ld l, b                                          ; $5116: $68
	ld h, h                                          ; $5117: $64
	ld a, e                                          ; $5118: $7b
	ld a, c                                          ; $5119: $79
	jp c, $9aff                                      ; $511a: $da $ff $9a

	rra                                              ; $511d: $1f
	inc b                                            ; $511e: $04
	add hl, bc                                       ; $511f: $09
	ld b, c                                          ; $5120: $41
	ld c, e                                          ; $5121: $4b
	ld [hl], a                                       ; $5122: $77
	pop af                                           ; $5123: $f1
	ld a, a                                          ; $5124: $7f
	and c                                            ; $5125: $a1
	adc c                                            ; $5126: $89
	db $fd                                           ; $5127: $fd
	cp $9d                                           ; $5128: $fe $9d
	ccf                                              ; $512a: $3f
	rst $38                                          ; $512b: $ff
	rst $38                                          ; $512c: $ff
	ld hl, sp-$1d                                    ; $512d: $f8 $e3
	push bc                                          ; $512f: $c5
	adc $ff                                          ; $5130: $ce $ff
	rst JumpTable                                          ; $5132: $c7
	inc bc                                           ; $5133: $03
	pop bc                                           ; $5134: $c1
	rst $38                                          ; $5135: $ff
	cp $e3                                           ; $5136: $fe $e3
	ld [hl], c                                       ; $5138: $71
	cp $ef                                           ; $5139: $fe $ef
	pop af                                           ; $513b: $f1
	sbc $6b                                          ; $513c: $de $6b
	ld hl, sp-$6e                                    ; $513e: $f8 $92
	cp $8e                                           ; $5140: $fe $8e
	rst AddAOntoHL                                          ; $5142: $ef
	ld a, [hl-]                                      ; $5143: $3a
	cp $0d                                           ; $5144: $fe $0d
	adc a                                            ; $5146: $8f
	sbc b                                            ; $5147: $98
	ld l, a                                          ; $5148: $6f
	rst $38                                          ; $5149: $ff
	rst $38                                          ; $514a: $ff
	ccf                                              ; $514b: $3f
	rst $38                                          ; $514c: $ff
	ld [hl], a                                       ; $514d: $77
	ld hl, sp-$72                                    ; $514e: $f8 $8e
	sbc a                                            ; $5150: $9f
	cp a                                             ; $5151: $bf
	cp $7f                                           ; $5152: $fe $7f
	rst $38                                          ; $5154: $ff
	di                                               ; $5155: $f3
	ld a, a                                          ; $5156: $7f
	cp e                                             ; $5157: $bb
	ld hl, sp-$08                                    ; $5158: $f8 $f8
	ld sp, hl                                        ; $515a: $f9
	db $fd                                           ; $515b: $fd
	rst $38                                          ; $515c: $ff
	rst $38                                          ; $515d: $ff
	ld a, a                                          ; $515e: $7f
	cp e                                             ; $515f: $bb
	pop hl                                           ; $5160: $e1
	ld [hl], a                                       ; $5161: $77
	rst SubAFromBC                                          ; $5162: $e7
	rst SubAFromDE                                          ; $5163: $df
	rst $38                                          ; $5164: $ff
	sub [hl]                                         ; $5165: $96
	dec sp                                           ; $5166: $3b
	ld a, a                                          ; $5167: $7f
	ei                                               ; $5168: $fb
	pop af                                           ; $5169: $f1
	ldh a, [$f3]                                     ; $516a: $f0 $f3
	rst SubAFromHL                                          ; $516c: $d7
	inc e                                            ; $516d: $1c
	db $fc                                           ; $516e: $fc
	ld a, [bc]                                       ; $516f: $0a
	nop                                              ; $5170: $00
	sbc $22                                          ; $5171: $de $22
	rst SubAFromDE                                          ; $5173: $df
	ld h, [hl]                                       ; $5174: $66
	sbc h                                            ; $5175: $9c
	ld h, d                                          ; $5176: $62
	ld [hl+], a                                      ; $5177: $22
	ld [hl+], a                                      ; $5178: $22
	ld e, [hl]                                       ; $5179: $5e
	nop                                              ; $517a: $00
	add b                                            ; $517b: $80
	db $fc                                           ; $517c: $fc
	rst AddAOntoHL                                          ; $517d: $ef
	inc sp                                           ; $517e: $33
	rst $38                                          ; $517f: $ff
	ccf                                              ; $5180: $3f
	db $fc                                           ; $5181: $fc
	ccf                                              ; $5182: $3f
	rst SubAFromBC                                          ; $5183: $e7
	ccf                                              ; $5184: $3f
	ldh [$3d], a                                     ; $5185: $e0 $3d
	db $e3                                           ; $5187: $e3
	ld l, a                                          ; $5188: $6f
	rst SubAFromDE                                          ; $5189: $df
	ld [hl], a                                       ; $518a: $77
	rst GetHLinHL                                          ; $518b: $cf
	rst FarCall                                          ; $518c: $f7
	rst GetHLinHL                                          ; $518d: $cf
	db $fd                                           ; $518e: $fd
	ld a, $ef                                        ; $518f: $3e $ef
	ldh a, [$7f]                                     ; $5191: $f0 $7f
	add b                                            ; $5193: $80
	ld a, l                                          ; $5194: $7d
	cp $ff                                           ; $5195: $fe $ff
	rst $38                                          ; $5197: $ff
	call $85cb                                       ; $5198: $cd $cb $85
	add d                                            ; $519b: $82
	add h                                            ; $519c: $84
	rst AddAOntoHL                                          ; $519d: $ef
	cp c                                             ; $519e: $b9
	sbc $73                                          ; $519f: $de $73
	cp $63                                           ; $51a1: $fe $63
	db $fc                                           ; $51a3: $fc
	ld b, a                                          ; $51a4: $47
	db $fd                                           ; $51a5: $fd
	rlca                                             ; $51a6: $07
	ei                                               ; $51a7: $fb
	ld c, $ff                                        ; $51a8: $0e $ff
	inc c                                            ; $51aa: $0c
	rst $38                                          ; $51ab: $ff
	jr jr_026_5219                                   ; $51ac: $18 $6b

	rst SubAFromDE                                          ; $51ae: $df
	ld a, [$fe43]                                    ; $51af: $fa $43 $fe
	ld b, d                                          ; $51b2: $42
	db $fd                                           ; $51b3: $fd
	ld b, e                                          ; $51b4: $43
	cp $41                                           ; $51b5: $fe $41
	rst $38                                          ; $51b7: $ff
	ld b, b                                          ; $51b8: $40
	ld [hl], a                                       ; $51b9: $77
	cp $92                                           ; $51ba: $fe $92
	push bc                                          ; $51bc: $c5
	call nz, $f4f5                                   ; $51bd: $c4 $f5 $f4
	dec [hl]                                         ; $51c0: $35
	inc a                                            ; $51c1: $3c
	inc h                                            ; $51c2: $24
	ld a, h                                          ; $51c3: $7c
	ret z                                            ; $51c4: $c8

	cp b                                             ; $51c5: $b8
	ld a, h                                          ; $51c6: $7c
	ldh a, [$f1]                                     ; $51c7: $f0 $f1
	cp d                                             ; $51c9: $ba
	rlca                                             ; $51ca: $07
	rst $38                                          ; $51cb: $ff
	ld hl, sp-$40                                    ; $51cc: $f8 $c0
	nop                                              ; $51ce: $00
	rra                                              ; $51cf: $1f
	ld a, d                                          ; $51d0: $7a
	sbc d                                            ; $51d1: $9a
	dec b                                            ; $51d2: $05
	push af                                          ; $51d3: $f5
	ld a, [bc]                                       ; $51d4: $0a
	jp c, $0405                                      ; $51d5: $da $05 $04

	nop                                              ; $51d8: $00
	sbc $55                                          ; $51d9: $de $55
	ld e, [hl]                                       ; $51db: $5e
	nop                                              ; $51dc: $00
	add b                                            ; $51dd: $80
	db $fc                                           ; $51de: $fc
	rst AddAOntoHL                                          ; $51df: $ef
	inc sp                                           ; $51e0: $33
	rst $38                                          ; $51e1: $ff
	ccf                                              ; $51e2: $3f
	db $fc                                           ; $51e3: $fc
	ccf                                              ; $51e4: $3f
	rst SubAFromBC                                          ; $51e5: $e7
	ccf                                              ; $51e6: $3f
	ldh [$3e], a                                     ; $51e7: $e0 $3e
	pop hl                                           ; $51e9: $e1
	ld a, e                                          ; $51ea: $7b
	rst JumpTable                                          ; $51eb: $c7
	ld a, a                                          ; $51ec: $7f
	rst SubAFromDE                                          ; $51ed: $df
	rst FarCall                                          ; $51ee: $f7
	rst GetHLinHL                                          ; $51ef: $cf
	db $fd                                           ; $51f0: $fd
	ld a, $ef                                        ; $51f1: $3e $ef
	ldh a, [$7f]                                     ; $51f3: $f0 $7f
	add b                                            ; $51f5: $80
	rst $38                                          ; $51f6: $ff
	nop                                              ; $51f7: $00
	ei                                               ; $51f8: $fb
	db $fc                                           ; $51f9: $fc
	rst $38                                          ; $51fa: $ff
	cp $ff                                           ; $51fb: $fe $ff
	add d                                            ; $51fd: $82
	rst $38                                          ; $51fe: $ff
	rst AddAOntoHL                                          ; $51ff: $ef
	cp c                                             ; $5200: $b9
	sbc $73                                          ; $5201: $de $73
	cp $63                                           ; $5203: $fe $63
	db $fc                                           ; $5205: $fc
	ld b, a                                          ; $5206: $47
	db $fd                                           ; $5207: $fd
	rlca                                             ; $5208: $07
	ei                                               ; $5209: $fb
	ld c, $ff                                        ; $520a: $0e $ff
	inc c                                            ; $520c: $0c
	rst $38                                          ; $520d: $ff
	jr @+$71                                         ; $520e: $18 $6f

	rst SubAFromDE                                          ; $5210: $df
	ld a, [$fe4b]                                    ; $5211: $fa $4b $fe
	ld b, d                                          ; $5214: $42
	db $fd                                           ; $5215: $fd
	ld b, e                                          ; $5216: $43
	cp $41                                           ; $5217: $fe $41

jr_026_5219:
	rst $38                                          ; $5219: $ff
	ld b, b                                          ; $521a: $40
	ld [hl], a                                       ; $521b: $77
	cp $92                                           ; $521c: $fe $92
	push bc                                          ; $521e: $c5
	call nz, $f4f5                                   ; $521f: $c4 $f5 $f4
	dec [hl]                                         ; $5222: $35
	inc a                                            ; $5223: $3c
	inc h                                            ; $5224: $24
	ld a, h                                          ; $5225: $7c
	ret z                                            ; $5226: $c8

	cp b                                             ; $5227: $b8
	ld a, h                                          ; $5228: $7c
	ldh a, [$f1]                                     ; $5229: $f0 $f1
	cp d                                             ; $522b: $ba
	rlca                                             ; $522c: $07
	rst $38                                          ; $522d: $ff
	ld hl, sp-$40                                    ; $522e: $f8 $c0
	nop                                              ; $5230: $00
	rra                                              ; $5231: $1f
	ld a, d                                          ; $5232: $7a
	sbc d                                            ; $5233: $9a
	dec b                                            ; $5234: $05
	push af                                          ; $5235: $f5
	ld a, [bc]                                       ; $5236: $0a
	jp c, $0405                                      ; $5237: $da $05 $04

	nop                                              ; $523a: $00
	sbc $55                                          ; $523b: $de $55
	ld e, l                                          ; $523d: $5d
	nop                                              ; $523e: $00
	add [hl]                                         ; $523f: $86
	db $fc                                           ; $5240: $fc
	rst AddAOntoHL                                          ; $5241: $ef
	inc sp                                           ; $5242: $33
	rst $38                                          ; $5243: $ff
	ccf                                              ; $5244: $3f
	db $fc                                           ; $5245: $fc
	ccf                                              ; $5246: $3f
	rst SubAFromBC                                          ; $5247: $e7
	ccf                                              ; $5248: $3f
	ldh [$3f], a                                     ; $5249: $e0 $3f
	ldh [$7f], a                                     ; $524b: $e0 $7f
	ret nz                                           ; $524d: $c0

	ld a, [hl]                                       ; $524e: $7e
	pop bc                                           ; $524f: $c1
	rst FarCall                                          ; $5250: $f7
	rst GetHLinHL                                          ; $5251: $cf
	db $fd                                           ; $5252: $fd
	ld a, $ef                                        ; $5253: $3e $ef
	ldh a, [$7f]                                     ; $5255: $f0 $7f
	add b                                            ; $5257: $80
	rst $38                                          ; $5258: $ff
	cp [hl]                                          ; $5259: $be
	rst $38                                          ; $525a: $ff
	rst $38                                          ; $525b: $ff
	rlca                                             ; $525c: $07
	add b                                            ; $525d: $80
	ld hl, sp-$11                                    ; $525e: $f8 $ef
	cp c                                             ; $5260: $b9
	sbc $73                                          ; $5261: $de $73
	cp $63                                           ; $5263: $fe $63
	db $fc                                           ; $5265: $fc
	ld b, a                                          ; $5266: $47
	db $fd                                           ; $5267: $fd
	rlca                                             ; $5268: $07
	ei                                               ; $5269: $fb
	ld c, $ff                                        ; $526a: $0e $ff
	inc c                                            ; $526c: $0c
	rst $38                                          ; $526d: $ff
	jr jr_026_52ef                                   ; $526e: $18 $7f

	ret nz                                           ; $5270: $c0

	db $fd                                           ; $5271: $fd
	ld b, e                                          ; $5272: $43
	rst AddAOntoHL                                          ; $5273: $ef
	ld e, a                                          ; $5274: $5f
	rst $38                                          ; $5275: $ff
	ld b, a                                          ; $5276: $47
	ei                                               ; $5277: $fb
	ld b, a                                          ; $5278: $47
	cp $41                                           ; $5279: $fe $41
	rst $38                                          ; $527b: $ff
	ld b, b                                          ; $527c: $40
	ld a, e                                          ; $527d: $7b
	cp $93                                           ; $527e: $fe $93
	nop                                              ; $5280: $00
	rst FarCall                                          ; $5281: $f7
	ld hl, sp-$03                                    ; $5282: $f8 $fd
	cp $ff                                           ; $5284: $fe $ff
	rst $38                                          ; $5286: $ff
	inc l                                            ; $5287: $2c
	cp h                                             ; $5288: $bc
	db $fc                                           ; $5289: $fc
	ldh a, [$f1]                                     ; $528a: $f0 $f1
	cp d                                             ; $528c: $ba
	rlca                                             ; $528d: $07
	rst $38                                          ; $528e: $ff
	ld hl, sp-$40                                    ; $528f: $f8 $c0
	nop                                              ; $5291: $00
	rra                                              ; $5292: $1f
	ld a, d                                          ; $5293: $7a
	sbc d                                            ; $5294: $9a
	dec b                                            ; $5295: $05
	push af                                          ; $5296: $f5
	ld a, [bc]                                       ; $5297: $0a
	jp c, $0405                                      ; $5298: $da $05 $04

	nop                                              ; $529b: $00
	sbc $55                                          ; $529c: $de $55
	ld e, d                                          ; $529e: $5a
	nop                                              ; $529f: $00
	add [hl]                                         ; $52a0: $86
	db $fc                                           ; $52a1: $fc
	rst AddAOntoHL                                          ; $52a2: $ef
	inc sp                                           ; $52a3: $33
	rst $38                                          ; $52a4: $ff
	ccf                                              ; $52a5: $3f
	db $fc                                           ; $52a6: $fc
	ccf                                              ; $52a7: $3f
	rst SubAFromBC                                          ; $52a8: $e7
	ccf                                              ; $52a9: $3f
	ldh [$3f], a                                     ; $52aa: $e0 $3f
	ldh [$7f], a                                     ; $52ac: $e0 $7f
	ret nz                                           ; $52ae: $c0

	ld a, a                                          ; $52af: $7f
	ret nz                                           ; $52b0: $c0

	rst FarCall                                          ; $52b1: $f7
	rst GetHLinHL                                          ; $52b2: $cf
	db $fd                                           ; $52b3: $fd
	ld a, $ef                                        ; $52b4: $3e $ef
	ldh a, [$7f]                                     ; $52b6: $f0 $7f
	add b                                            ; $52b8: $80
	rst $38                                          ; $52b9: $ff
	cp l                                             ; $52ba: $bd
	rst $38                                          ; $52bb: $ff
	rst $38                                          ; $52bc: $ff
	rst $38                                          ; $52bd: $ff
	rst AddAOntoHL                                          ; $52be: $ef
	add [hl]                                         ; $52bf: $86
	cp c                                             ; $52c0: $b9
	sbc $73                                          ; $52c1: $de $73
	cp $63                                           ; $52c3: $fe $63
	db $fc                                           ; $52c5: $fc
	ld b, a                                          ; $52c6: $47
	db $fd                                           ; $52c7: $fd
	rlca                                             ; $52c8: $07
	ei                                               ; $52c9: $fb
	ld c, $ff                                        ; $52ca: $0e $ff
	inc c                                            ; $52cc: $0c
	rst $38                                          ; $52cd: $ff
	jr jr_026_534f                                   ; $52ce: $18 $7f

	ret nz                                           ; $52d0: $c0

	cp $41                                           ; $52d1: $fe $41
	rst $38                                          ; $52d3: $ff
	ld b, b                                          ; $52d4: $40
	rst AddAOntoHL                                          ; $52d5: $ef
	ld e, a                                          ; $52d6: $5f
	ei                                               ; $52d7: $fb
	ld b, a                                          ; $52d8: $47
	ld [hl], a                                       ; $52d9: $77
	ld hl, sp+$7b                                    ; $52da: $f8 $7b
	cp $98                                           ; $52dc: $fe $98
	nop                                              ; $52de: $00
	rlca                                             ; $52df: $07
	ld hl, sp-$01                                    ; $52e0: $f8 $ff
	nop                                              ; $52e2: $00
	ld [hl], a                                       ; $52e3: $77
	adc a                                            ; $52e4: $8f
	sbc $fc                                          ; $52e5: $de $fc
	sbc l                                            ; $52e7: $9d
	ldh a, [$f1]                                     ; $52e8: $f0 $f1
	cp d                                             ; $52ea: $ba
	rlca                                             ; $52eb: $07
	rst $38                                          ; $52ec: $ff
	ld hl, sp-$40                                    ; $52ed: $f8 $c0

jr_026_52ef:
	nop                                              ; $52ef: $00
	rra                                              ; $52f0: $1f
	ld a, d                                          ; $52f1: $7a
	sbc d                                            ; $52f2: $9a
	dec b                                            ; $52f3: $05
	push af                                          ; $52f4: $f5
	ld a, [bc]                                       ; $52f5: $0a
	jp c, $0405                                      ; $52f6: $da $05 $04

	nop                                              ; $52f9: $00
	sbc $55                                          ; $52fa: $de $55
	ld e, [hl]                                       ; $52fc: $5e
	nop                                              ; $52fd: $00
	add b                                            ; $52fe: $80
	db $fc                                           ; $52ff: $fc
	rst AddAOntoHL                                          ; $5300: $ef
	inc sp                                           ; $5301: $33
	rst $38                                          ; $5302: $ff
	dec a                                            ; $5303: $3d
	rst $38                                          ; $5304: $ff
	ld a, $e7                                        ; $5305: $3e $e7
	dec a                                            ; $5307: $3d
	db $e3                                           ; $5308: $e3
	cpl                                              ; $5309: $2f
	rst $38                                          ; $530a: $ff
	ld [hl], a                                       ; $530b: $77
	rst GetHLinHL                                          ; $530c: $cf
	ld l, e                                          ; $530d: $6b
	rst SubAFromDE                                          ; $530e: $df
	rst SubAFromDE                                          ; $530f: $df
	db $fc                                           ; $5310: $fc
	ld h, e                                          ; $5311: $63
	rst $38                                          ; $5312: $ff
	cp [hl]                                          ; $5313: $be
	pop bc                                           ; $5314: $c1
	ld [hl], a                                       ; $5315: $77
	ld hl, sp-$03                                    ; $5316: $f8 $fd
	cp $ce                                           ; $5318: $fe $ce
	rst SubAFromDE                                          ; $531a: $df
	add l                                            ; $531b: $85
	adc a                                            ; $531c: $8f
	rst JumpTable                                          ; $531d: $c7
	add d                                            ; $531e: $82
	push bc                                          ; $531f: $c5
	rst AddAOntoHL                                          ; $5320: $ef
	add hl, sp                                       ; $5321: $39
	sbc $73                                          ; $5322: $de $73
	cp $e3                                           ; $5324: $fe $e3
	ld a, h                                          ; $5326: $7c
	rst JumpTable                                          ; $5327: $c7
	db $fd                                           ; $5328: $fd
	rlca                                             ; $5329: $07
	ei                                               ; $532a: $fb
	ld c, $ff                                        ; $532b: $0e $ff
	inc c                                            ; $532d: $0c
	rst $38                                          ; $532e: $ff
	jr jr_026_53b0                                   ; $532f: $18 $7f

	jp $43fa                                         ; $5331: $c3 $fa $43


	cp $42                                           ; $5334: $fe $42
	db $fd                                           ; $5336: $fd
	ld b, e                                          ; $5337: $43
	cp $41                                           ; $5338: $fe $41
	rst $38                                          ; $533a: $ff
	ld b, b                                          ; $533b: $40
	ld [hl], a                                       ; $533c: $77
	cp $92                                           ; $533d: $fe $92
	push af                                          ; $533f: $f5
	db $f4                                           ; $5340: $f4
	push af                                          ; $5341: $f5
	db $fc                                           ; $5342: $fc
	dec [hl]                                         ; $5343: $35
	inc a                                            ; $5344: $3c
	inc h                                            ; $5345: $24
	ld a, h                                          ; $5346: $7c
	ret z                                            ; $5347: $c8

	cp b                                             ; $5348: $b8
	ld a, h                                          ; $5349: $7c
	ldh a, [$f1]                                     ; $534a: $f0 $f1
	cp d                                             ; $534c: $ba
	rlca                                             ; $534d: $07
	rst $38                                          ; $534e: $ff

jr_026_534f:
	ld hl, sp-$40                                    ; $534f: $f8 $c0
	nop                                              ; $5351: $00
	rra                                              ; $5352: $1f
	ld a, d                                          ; $5353: $7a
	sbc d                                            ; $5354: $9a
	dec b                                            ; $5355: $05
	push af                                          ; $5356: $f5
	ld a, [bc]                                       ; $5357: $0a
	jp c, $0405                                      ; $5358: $da $05 $04

	nop                                              ; $535b: $00
	sbc $55                                          ; $535c: $de $55
	ld e, l                                          ; $535e: $5d
	nop                                              ; $535f: $00
	add b                                            ; $5360: $80
	db $fc                                           ; $5361: $fc
	rst AddAOntoHL                                          ; $5362: $ef
	inc sp                                           ; $5363: $33
	rst $38                                          ; $5364: $ff
	dec a                                            ; $5365: $3d
	rst $38                                          ; $5366: $ff
	ld a, $e7                                        ; $5367: $3e $e7
	ccf                                              ; $5369: $3f
	ldh [$3e], a                                     ; $536a: $e0 $3e
	pop hl                                           ; $536c: $e1
	ld l, a                                          ; $536d: $6f
	rst SubAFromDE                                          ; $536e: $df
	ld [hl], a                                       ; $536f: $77
	rst GetHLinHL                                          ; $5370: $cf
	rst SubAFromDE                                          ; $5371: $df
	db $fc                                           ; $5372: $fc
	ld h, e                                          ; $5373: $63
	rst $38                                          ; $5374: $ff
	cp [hl]                                          ; $5375: $be
	pop bc                                           ; $5376: $c1
	ld a, a                                          ; $5377: $7f
	add b                                            ; $5378: $80
	rst $38                                          ; $5379: $ff
	nop                                              ; $537a: $00
	ei                                               ; $537b: $fb
	db $fc                                           ; $537c: $fc
	rst $38                                          ; $537d: $ff
	cp $c7                                           ; $537e: $fe $c7
	add d                                            ; $5380: $82
	rst JumpTable                                          ; $5381: $c7
	rst AddAOntoHL                                          ; $5382: $ef
	add hl, sp                                       ; $5383: $39
	sbc $73                                          ; $5384: $de $73
	cp $e3                                           ; $5386: $fe $e3
	ld a, h                                          ; $5388: $7c
	rst JumpTable                                          ; $5389: $c7
	db $fd                                           ; $538a: $fd
	rlca                                             ; $538b: $07
	ei                                               ; $538c: $fb
	ld c, $ff                                        ; $538d: $0e $ff
	inc c                                            ; $538f: $0c
	rst $38                                          ; $5390: $ff
	jr jr_026_53fe                                   ; $5391: $18 $6b

	rst SubAFromDE                                          ; $5393: $df
	ld a, [$fe43]                                    ; $5394: $fa $43 $fe
	ld b, d                                          ; $5397: $42
	db $fd                                           ; $5398: $fd
	ld b, e                                          ; $5399: $43
	cp $41                                           ; $539a: $fe $41
	rst $38                                          ; $539c: $ff
	ld b, b                                          ; $539d: $40
	ld [hl], a                                       ; $539e: $77
	cp $de                                           ; $539f: $fe $de
	push af                                          ; $53a1: $f5
	sub l                                            ; $53a2: $95
	db $fc                                           ; $53a3: $fc
	dec [hl]                                         ; $53a4: $35
	inc a                                            ; $53a5: $3c
	inc h                                            ; $53a6: $24
	ld a, h                                          ; $53a7: $7c
	ret z                                            ; $53a8: $c8

	cp b                                             ; $53a9: $b8
	ld a, h                                          ; $53aa: $7c
	ldh a, [$f1]                                     ; $53ab: $f0 $f1
	cp d                                             ; $53ad: $ba
	rlca                                             ; $53ae: $07
	rst $38                                          ; $53af: $ff

jr_026_53b0:
	ld hl, sp-$40                                    ; $53b0: $f8 $c0
	nop                                              ; $53b2: $00
	rra                                              ; $53b3: $1f
	ld a, d                                          ; $53b4: $7a
	sbc d                                            ; $53b5: $9a
	dec b                                            ; $53b6: $05
	push af                                          ; $53b7: $f5
	ld a, [bc]                                       ; $53b8: $0a
	jp c, $0405                                      ; $53b9: $da $05 $04

	nop                                              ; $53bc: $00
	sbc $55                                          ; $53bd: $de $55
	ld e, h                                          ; $53bf: $5c
	nop                                              ; $53c0: $00
	add [hl]                                         ; $53c1: $86
	db $fc                                           ; $53c2: $fc
	rst AddAOntoHL                                          ; $53c3: $ef
	inc sp                                           ; $53c4: $33
	rst $38                                          ; $53c5: $ff
	dec a                                            ; $53c6: $3d
	rst $38                                          ; $53c7: $ff
	ld a, $e7                                        ; $53c8: $3e $e7
	ccf                                              ; $53ca: $3f
	ldh [$3f], a                                     ; $53cb: $e0 $3f
	ldh [$7f], a                                     ; $53cd: $e0 $7f
	ret nz                                           ; $53cf: $c0

	ld a, a                                          ; $53d0: $7f
	ret nz                                           ; $53d1: $c0

	rst SubAFromDE                                          ; $53d2: $df
	db $fc                                           ; $53d3: $fc
	ld h, e                                          ; $53d4: $63
	rst $38                                          ; $53d5: $ff
	cp [hl]                                          ; $53d6: $be
	pop bc                                           ; $53d7: $c1
	ld a, a                                          ; $53d8: $7f
	add b                                            ; $53d9: $80
	rst $38                                          ; $53da: $ff
	cp l                                             ; $53db: $bd
	rst $38                                          ; $53dc: $ff
	rst $38                                          ; $53dd: $ff
	rst $38                                          ; $53de: $ff
	rst AddAOntoHL                                          ; $53df: $ef
	add d                                            ; $53e0: $82
	add hl, sp                                       ; $53e1: $39
	sbc $73                                          ; $53e2: $de $73
	cp $e3                                           ; $53e4: $fe $e3
	ld a, h                                          ; $53e6: $7c
	rst JumpTable                                          ; $53e7: $c7
	db $fd                                           ; $53e8: $fd
	rlca                                             ; $53e9: $07
	ei                                               ; $53ea: $fb
	ld c, $ff                                        ; $53eb: $0e $ff
	inc c                                            ; $53ed: $0c
	rst $38                                          ; $53ee: $ff
	jr jr_026_5470                                   ; $53ef: $18 $7f

	ret nz                                           ; $53f1: $c0

	db $fd                                           ; $53f2: $fd
	ld b, e                                          ; $53f3: $43
	rst AddAOntoHL                                          ; $53f4: $ef
	ld e, a                                          ; $53f5: $5f
	rst $38                                          ; $53f6: $ff
	ld b, a                                          ; $53f7: $47
	ei                                               ; $53f8: $fb
	ld b, a                                          ; $53f9: $47
	cp $41                                           ; $53fa: $fe $41
	rst $38                                          ; $53fc: $ff
	ld b, b                                          ; $53fd: $40

jr_026_53fe:
	ld a, e                                          ; $53fe: $7b
	cp $93                                           ; $53ff: $fe $93
	nop                                              ; $5401: $00
	rst FarCall                                          ; $5402: $f7
	ld hl, sp-$03                                    ; $5403: $f8 $fd
	cp $ff                                           ; $5405: $fe $ff
	rst $38                                          ; $5407: $ff
	inc l                                            ; $5408: $2c
	cp h                                             ; $5409: $bc
	db $fc                                           ; $540a: $fc
	ldh a, [$f1]                                     ; $540b: $f0 $f1
	cp d                                             ; $540d: $ba
	rlca                                             ; $540e: $07
	rst $38                                          ; $540f: $ff
	ld hl, sp-$40                                    ; $5410: $f8 $c0
	nop                                              ; $5412: $00
	rra                                              ; $5413: $1f
	ld a, d                                          ; $5414: $7a
	sbc d                                            ; $5415: $9a
	dec b                                            ; $5416: $05
	push af                                          ; $5417: $f5
	ld a, [bc]                                       ; $5418: $0a
	jp c, $0405                                      ; $5419: $da $05 $04

	nop                                              ; $541c: $00
	sbc $55                                          ; $541d: $de $55
	ld e, d                                          ; $541f: $5a
	nop                                              ; $5420: $00
	add [hl]                                         ; $5421: $86
	db $fc                                           ; $5422: $fc
	rst AddAOntoHL                                          ; $5423: $ef
	inc sp                                           ; $5424: $33
	rst $38                                          ; $5425: $ff
	dec a                                            ; $5426: $3d
	rst $38                                          ; $5427: $ff
	ld a, $e7                                        ; $5428: $3e $e7
	ccf                                              ; $542a: $3f
	ldh [$3f], a                                     ; $542b: $e0 $3f
	ldh [$7f], a                                     ; $542d: $e0 $7f
	ret nz                                           ; $542f: $c0

	ld a, a                                          ; $5430: $7f
	ret nz                                           ; $5431: $c0

	rst SubAFromDE                                          ; $5432: $df
	db $fc                                           ; $5433: $fc
	ld h, e                                          ; $5434: $63
	rst $38                                          ; $5435: $ff
	cp [hl]                                          ; $5436: $be
	pop bc                                           ; $5437: $c1
	ld a, a                                          ; $5438: $7f
	add b                                            ; $5439: $80
	rst $38                                          ; $543a: $ff
	cp l                                             ; $543b: $bd
	rst $38                                          ; $543c: $ff
	rst $38                                          ; $543d: $ff
	rst $38                                          ; $543e: $ff
	rst AddAOntoHL                                          ; $543f: $ef
	add [hl]                                         ; $5440: $86
	add hl, sp                                       ; $5441: $39
	sbc $73                                          ; $5442: $de $73
	cp $e3                                           ; $5444: $fe $e3
	ld a, h                                          ; $5446: $7c
	rst JumpTable                                          ; $5447: $c7
	db $fd                                           ; $5448: $fd
	rlca                                             ; $5449: $07
	ei                                               ; $544a: $fb
	ld c, $ff                                        ; $544b: $0e $ff
	inc c                                            ; $544d: $0c
	rst $38                                          ; $544e: $ff
	jr jr_026_54d0                                   ; $544f: $18 $7f

	ret nz                                           ; $5451: $c0

	cp $41                                           ; $5452: $fe $41
	rst $38                                          ; $5454: $ff
	ld b, b                                          ; $5455: $40
	rst AddAOntoHL                                          ; $5456: $ef
	ld e, a                                          ; $5457: $5f
	ei                                               ; $5458: $fb
	ld b, a                                          ; $5459: $47
	ld [hl], a                                       ; $545a: $77
	ld hl, sp+$7b                                    ; $545b: $f8 $7b
	cp $98                                           ; $545d: $fe $98
	nop                                              ; $545f: $00
	rlca                                             ; $5460: $07
	ld hl, sp-$01                                    ; $5461: $f8 $ff
	nop                                              ; $5463: $00
	ld [hl], a                                       ; $5464: $77
	adc a                                            ; $5465: $8f
	sbc $fc                                          ; $5466: $de $fc
	sbc l                                            ; $5468: $9d
	ldh a, [$f1]                                     ; $5469: $f0 $f1
	cp d                                             ; $546b: $ba
	rlca                                             ; $546c: $07
	rst $38                                          ; $546d: $ff
	ld hl, sp-$40                                    ; $546e: $f8 $c0

jr_026_5470:
	nop                                              ; $5470: $00
	rra                                              ; $5471: $1f
	ld a, d                                          ; $5472: $7a
	sbc d                                            ; $5473: $9a
	dec b                                            ; $5474: $05
	push af                                          ; $5475: $f5
	ld a, [bc]                                       ; $5476: $0a
	jp c, $0405                                      ; $5477: $da $05 $04

	nop                                              ; $547a: $00
	sbc $55                                          ; $547b: $de $55
	rst $38                                          ; $547d: $ff
	ld b, $97                                        ; $547e: $06 $97
	adc b                                            ; $5480: $88
	ld [hl], a                                       ; $5481: $77
	ld d, l                                          ; $5482: $55
	xor d                                            ; $5483: $aa
	ld [hl+], a                                      ; $5484: $22
	db $dd                                           ; $5485: $dd
	ld d, l                                          ; $5486: $55
	xor d                                            ; $5487: $aa
	daa                                              ; $5488: $27
	ld hl, sp-$65                                    ; $5489: $f8 $9b
	adc c                                            ; $548b: $89
	ld [hl], a                                       ; $548c: $77
	ld d, l                                          ; $548d: $55
	xor e                                            ; $548e: $ab
	ld d, a                                          ; $548f: $57
	ldh a, [$8b]                                     ; $5490: $f0 $8b
	add hl, sp                                       ; $5492: $39
	rst JumpTable                                          ; $5493: $c7
	dec e                                            ; $5494: $1d
	db $e3                                           ; $5495: $e3
	adc a                                            ; $5496: $8f
	ldh a, [hDisp1_LCDC]                                     ; $5497: $f0 $8f
	ld hl, sp-$79                                    ; $5499: $f8 $87
	db $fc                                           ; $549b: $fc
	add d                                            ; $549c: $82
	rst $38                                          ; $549d: $ff
	add c                                            ; $549e: $81
	rst $38                                          ; $549f: $ff
	add b                                            ; $54a0: $80
	rst $38                                          ; $54a1: $ff
	rst $38                                          ; $54a2: $ff
	inc bc                                           ; $54a3: $03
	rst $38                                          ; $54a4: $ff
	nop                                              ; $54a5: $00
	ld a, e                                          ; $54a6: $7b
	rst FarCall                                          ; $54a7: $f7
	add b                                            ; $54a8: $80
	add [hl]                                         ; $54a9: $86
	ld a, a                                          ; $54aa: $7f
	ret nz                                           ; $54ab: $c0

	ld a, a                                          ; $54ac: $7f
	ret nz                                           ; $54ad: $c0

	ccf                                              ; $54ae: $3f
	ldh [$bf], a                                     ; $54af: $e0 $bf
	ldh [$f9], a                                     ; $54b1: $e0 $f9
	ld bc, $08f6                                     ; $54b3: $01 $f6 $08
	db $fd                                           ; $54b6: $fd
	cp $02                                           ; $54b7: $fe $02
	inc bc                                           ; $54b9: $03
	db $fd                                           ; $54ba: $fd
	ld bc, $05fb                                     ; $54bb: $01 $fb $05
	dec sp                                           ; $54be: $3b
	db $fd                                           ; $54bf: $fd
	pop de                                           ; $54c0: $d1
	ccf                                              ; $54c1: $3f
	cp h                                             ; $54c2: $bc
	ret nz                                           ; $54c3: $c0

	ei                                               ; $54c4: $fb
	db $fc                                           ; $54c5: $fc
	or $cf                                           ; $54c6: $f6 $cf
	add c                                            ; $54c8: $81
	ldh [c], a                                       ; $54c9: $e2
	add c                                            ; $54ca: $81
	db $ec                                           ; $54cb: $ec
	sub b                                            ; $54cc: $90
	rst SubAFromHL                                          ; $54cd: $d7
	cp b                                             ; $54ce: $b8
	db $fd                                           ; $54cf: $fd

jr_026_54d0:
	cp [hl]                                          ; $54d0: $be
	adc [hl]                                         ; $54d1: $8e
	rst $38                                          ; $54d2: $ff
	jr z, jr_026_54e5                                ; $54d3: $28 $10

	sub h                                            ; $54d5: $94
	ld [$00ee], sp                                   ; $54d6: $08 $ee $00
	ccf                                              ; $54d9: $3f
	ret nz                                           ; $54da: $c0

	ld e, a                                          ; $54db: $5f
	jr nz, @+$41                                     ; $54dc: $20 $3f

	nop                                              ; $54de: $00
	rst $38                                          ; $54df: $ff
	nop                                              ; $54e0: $00
	cp $01                                           ; $54e1: $fe $01
	ld e, a                                          ; $54e3: $5f
	ld h, b                                          ; $54e4: $60

jr_026_54e5:
	ccf                                              ; $54e5: $3f
	jr nz, jr_026_555f                               ; $54e6: $20 $77

	cp $94                                           ; $54e8: $fe $94
	ld a, a                                          ; $54ea: $7f
	ld b, b                                          ; $54eb: $40
	ld [hl], b                                       ; $54ec: $70
	ld b, b                                          ; $54ed: $40
	ret nz                                           ; $54ee: $c0

	add b                                            ; $54ef: $80
	rst GetHLinHL                                          ; $54f0: $cf
	add b                                            ; $54f1: $80
	db $fd                                           ; $54f2: $fd
	inc bc                                           ; $54f3: $03
	db $fc                                           ; $54f4: $fc
	ld a, e                                          ; $54f5: $7b
	xor [hl]                                         ; $54f6: $ae
	sbc d                                            ; $54f7: $9a
	db $e3                                           ; $54f8: $e3
	nop                                              ; $54f9: $00
	ld bc, $1f00                                     ; $54fa: $01 $00 $1f
	ld a, e                                          ; $54fd: $7b
	ldh [c], a                                       ; $54fe: $e2
	sbc d                                            ; $54ff: $9a
	rst $38                                          ; $5500: $ff
	rrca                                             ; $5501: $0f
	ld e, [hl]                                       ; $5502: $5e
	ldh [$fe], a                                     ; $5503: $e0 $fe
	sbc $c0                                          ; $5505: $de $c0
	add b                                            ; $5507: $80
	add b                                            ; $5508: $80
	ret nz                                           ; $5509: $c0

	cp a                                             ; $550a: $bf
	ret nz                                           ; $550b: $c0

	db $fc                                           ; $550c: $fc
	add e                                            ; $550d: $83
	ccf                                              ; $550e: $3f
	rst $38                                          ; $550f: $ff
	ret nz                                           ; $5510: $c0

	rst $38                                          ; $5511: $ff
	add hl, sp                                       ; $5512: $39
	ld c, $68                                        ; $5513: $0e $68
	rra                                              ; $5515: $1f
	ld [hl], b                                       ; $5516: $70
	rra                                              ; $5517: $1f
	ld d, b                                          ; $5518: $50
	ccf                                              ; $5519: $3f
	ret nc                                           ; $551a: $d0

	ccf                                              ; $551b: $3f
	jr nz, @+$01                                     ; $551c: $20 $ff

	ldh [rIE], a                                     ; $551e: $e0 $ff
	ld h, l                                          ; $5520: $65
	cp $0f                                           ; $5521: $fe $0f
	ldh a, [rIF]                                     ; $5523: $f0 $0f
	ldh a, [$1f]                                     ; $5525: $f0 $1f
	sbc b                                            ; $5527: $98
	ldh [$1f], a                                     ; $5528: $e0 $1f
	ldh [$3f], a                                     ; $552a: $e0 $3f
	ret nz                                           ; $552c: $c0

	ld a, a                                          ; $552d: $7f
	add b                                            ; $552e: $80
	ld a, e                                          ; $552f: $7b
	halt                                             ; $5530: $76
	ld a, e                                          ; $5531: $7b
	call z, $c07f                                    ; $5532: $cc $7f $c0
	adc c                                            ; $5535: $89
	ld hl, sp+$07                                    ; $5536: $f8 $07
	ldh a, [rIF]                                     ; $5538: $f0 $0f
	ldh [$1f], a                                     ; $553a: $e0 $1f
	pop bc                                           ; $553c: $c1
	ccf                                              ; $553d: $3f
	add c                                            ; $553e: $81
	ld a, a                                          ; $553f: $7f
	add e                                            ; $5540: $83
	ld a, [hl]                                       ; $5541: $7e
	ld c, b                                          ; $5542: $48
	rst FarCall                                          ; $5543: $f7
	ld d, l                                          ; $5544: $55
	ld [$dda2], a                                    ; $5545: $ea $a2 $dd
	push de                                          ; $5548: $d5
	xor d                                            ; $5549: $aa
	adc b                                            ; $554a: $88
	rst FarCall                                          ; $554b: $f7
	rrca                                             ; $554c: $0f
	jr jr_026_5566                                   ; $554d: $18 $17

	ld hl, sp-$65                                    ; $554f: $f8 $9b
	inc hl                                           ; $5551: $23
	db $dd                                           ; $5552: $dd
	ld d, l                                          ; $5553: $55
	xor e                                            ; $5554: $ab
	halt                                             ; $5555: $76
	ld hl, sp+$7f                                    ; $5556: $f8 $7f
	ld hl, sp-$64                                    ; $5558: $f8 $9c
	ld d, a                                          ; $555a: $57
	xor e                                            ; $555b: $ab
	add b                                            ; $555c: $80
	ld a, e                                          ; $555d: $7b
	inc c                                            ; $555e: $0c

jr_026_555f:
	ld [hl], e                                       ; $555f: $73
	sub a                                            ; $5560: $97
	ld [hl], e                                       ; $5561: $73
	cp $83                                           ; $5562: $fe $83
	ld e, $e1                                        ; $5564: $1e $e1

jr_026_5566:
	ld e, a                                          ; $5566: $5f
	ldh a, [$3f]                                     ; $5567: $f0 $3f
	ldh a, [$1f]                                     ; $5569: $f0 $1f
	ld hl, sp+$0f                                    ; $556b: $f8 $0f
	ld hl, sp+$07                                    ; $556d: $f8 $07
	db $fc                                           ; $556f: $fc
	rlca                                             ; $5570: $07
	db $fc                                           ; $5571: $fc
	inc bc                                           ; $5572: $03
	cp $03                                           ; $5573: $fe $03
	cp $ea                                           ; $5575: $fe $ea
	rra                                              ; $5577: $1f
	or $0f                                           ; $5578: $f6 $0f
	ld a, [$fd07]                                    ; $557a: $fa $07 $fd
	inc bc                                           ; $557d: $03
	cp $01                                           ; $557e: $fe $01
	ld a, e                                          ; $5580: $7b
	ld b, d                                          ; $5581: $42
	ld a, e                                          ; $5582: $7b
	db $dd                                           ; $5583: $dd
	add b                                            ; $5584: $80
	call nz, $79ff                                   ; $5585: $c4 $ff $79
	cp $33                                           ; $5588: $fe $33
	db $fc                                           ; $558a: $fc
	scf                                              ; $558b: $37
	ld hl, sp-$51                                    ; $558c: $f8 $af
	ldh a, [$6f]                                     ; $558e: $f0 $6f
	ldh a, [$5f]                                     ; $5590: $f0 $5f
	ldh [$5f], a                                     ; $5592: $e0 $5f
	ldh [$7f], a                                     ; $5594: $e0 $7f
	add c                                            ; $5596: $81
	db $fd                                           ; $5597: $fd
	inc bc                                           ; $5598: $03
	rst FarCall                                          ; $5599: $f7

jr_026_559a:
	inc bc                                           ; $559a: $03
	db $e3                                           ; $559b: $e3
	rlca                                             ; $559c: $07
	rst GetHLinHL                                          ; $559d: $cf
	inc b                                            ; $559e: $04
	rst JumpTable                                          ; $559f: $c7
	inc c                                            ; $55a0: $0c
	adc a                                            ; $55a1: $8f
	ld [$988f], sp                                   ; $55a2: $08 $8f $98
	add hl, bc                                       ; $55a5: $09
	nop                                              ; $55a6: $00
	rst $38                                          ; $55a7: $ff
	rra                                              ; $55a8: $1f
	rst $38                                          ; $55a9: $ff
	rst $38                                          ; $55aa: $ff
	ld hl, sp+$77                                    ; $55ab: $f8 $77
	xor l                                            ; $55ad: $ad
	sbc [hl]                                         ; $55ae: $9e
	ld hl, sp-$02                                    ; $55af: $f8 $fe
	rst SubAFromDE                                          ; $55b1: $df
	add b                                            ; $55b2: $80
	sbc [hl]                                         ; $55b3: $9e
	ld [hl], b                                       ; $55b4: $70
	ld a, e                                          ; $55b5: $7b
	ld a, [hl+]                                      ; $55b6: $2a
	add b                                            ; $55b7: $80
	di                                               ; $55b8: $f3
	ccf                                              ; $55b9: $3f
	rst SubAFromDE                                          ; $55ba: $df

Call_026_55bb:
	dec e                                            ; $55bb: $1d
	sbc a                                            ; $55bc: $9f
	jr @+$20                                         ; $55bd: $18 $1e

	ld d, $1f                                        ; $55bf: $16 $1f
	ld de, $191d                                     ; $55c1: $11 $1d $19
	nop                                              ; $55c4: $00
	rst $38                                          ; $55c5: $ff
	ld bc, $e1ff                                     ; $55c6: $01 $ff $e1
	rst $38                                          ; $55c9: $ff
	ld hl, sp+$3f                                    ; $55ca: $f8 $3f
	inc a                                            ; $55cc: $3c
	daa                                              ; $55cd: $27
	rst $38                                          ; $55ce: $ff
	ld b, e                                          ; $55cf: $43
	xor $a3                                          ; $55d0: $ee $a3
	db $fc                                           ; $55d2: $fc
	ld [hl], a                                       ; $55d3: $77
	db $eb                                           ; $55d4: $eb
	db $fc                                           ; $55d5: $fc
	rst FarCall                                          ; $55d6: $f7
	sbc c                                            ; $55d7: $99
	ld hl, sp-$11                                    ; $55d8: $f8 $ef
	ldh a, [$df]                                     ; $55da: $f0 $df
	ldh [$9f], a                                     ; $55dc: $e0 $9f
	ld [hl], e                                       ; $55de: $73
	inc c                                            ; $55df: $0c
	sbc l                                            ; $55e0: $9d
	ld a, $c1                                        ; $55e1: $3e $c1
	ld h, e                                          ; $55e3: $63
	ld [hl], l                                       ; $55e4: $75
	ld [hl], e                                       ; $55e5: $73
	cp $7e                                           ; $55e6: $fe $7e
	db $fc                                           ; $55e8: $fc
	adc a                                            ; $55e9: $8f
	add d                                            ; $55ea: $82
	ld a, a                                          ; $55eb: $7f
	push bc                                          ; $55ec: $c5
	ld a, $e6                                        ; $55ed: $3e $e6
	dec e                                            ; $55ef: $1d
	di                                               ; $55f0: $f3
	ld c, $fa                                        ; $55f1: $0e $fa
	rlca                                             ; $55f3: $07
	rst $38                                          ; $55f4: $ff
	ld bc, $03fd                                     ; $55f5: $01 $fd $03
	db $fd                                           ; $55f8: $fd
	inc bc                                           ; $55f9: $03
	rlca                                             ; $55fa: $07
	jr nz, jr_026_559a                               ; $55fb: $20 $9d

	xor d                                            ; $55fd: $aa
	ld d, l                                          ; $55fe: $55
	dec bc                                           ; $55ff: $0b
	db $fc                                           ; $5600: $fc
	sbc b                                            ; $5601: $98
	ld d, a                                          ; $5602: $57
	ld d, [hl]                                       ; $5603: $56
	xor e                                            ; $5604: $ab
	xor h                                            ; $5605: $ac
	ld d, a                                          ; $5606: $57
	ld d, l                                          ; $5607: $55
	xor [hl]                                         ; $5608: $ae
	ld a, e                                          ; $5609: $7b
	db $fc                                           ; $560a: $fc
	sbc d                                            ; $560b: $9a
	xor a                                            ; $560c: $af
	xor [hl]                                         ; $560d: $ae
	ld e, a                                          ; $560e: $5f
	ld e, e                                          ; $560f: $5b
	xor h                                            ; $5610: $ac
	ld a, d                                          ; $5611: $7a
	sbc b                                            ; $5612: $98
	sbc h                                            ; $5613: $9c
	sbc b                                            ; $5614: $98
	add a                                            ; $5615: $87
	ld a, h                                          ; $5616: $7c
	ld a, e                                          ; $5617: $7b
	ld hl, $ffde                                     ; $5618: $21 $de $ff
	ld a, a                                          ; $561b: $7f
	sbc h                                            ; $561c: $9c
	ld a, a                                          ; $561d: $7f
	sbc b                                            ; $561e: $98
	adc a                                            ; $561f: $8f
	add e                                            ; $5620: $83
	ld a, a                                          ; $5621: $7f
	db $fd                                           ; $5622: $fd
	rrca                                             ; $5623: $0f
	ld sp, hl                                        ; $5624: $f9
	rra                                              ; $5625: $1f
	pop af                                           ; $5626: $f1
	ld a, a                                          ; $5627: $7f
	pop de                                           ; $5628: $d1
	cp a                                             ; $5629: $bf
	ld e, h                                          ; $562a: $5c
	or e                                             ; $562b: $b3
	xor $31                                          ; $562c: $ee $31
	xor [hl]                                         ; $562e: $ae
	ld [hl], c                                       ; $562f: $71
	ld e, e                                          ; $5630: $5b
	ld [hl], d                                       ; $5631: $72
	sbc b                                            ; $5632: $98
	add b                                            ; $5633: $80
	ld a, a                                          ; $5634: $7f
	pop hl                                           ; $5635: $e1
	ld e, $ff                                        ; $5636: $1e $ff
	rst $38                                          ; $5638: $ff
	ld b, b                                          ; $5639: $40
	ld a, e                                          ; $563a: $7b
	cp $9e                                           ; $563b: $fe $9e
	ld h, b                                          ; $563d: $60
	ld a, e                                          ; $563e: $7b
	cp $7f                                           ; $563f: $fe $7f
	ld c, h                                          ; $5641: $4c
	add b                                            ; $5642: $80
	ld hl, sp-$61                                    ; $5643: $f8 $9f
	db $fc                                           ; $5645: $fc
	rra                                              ; $5646: $1f
	cp $06                                           ; $5647: $fe $06
	rlca                                             ; $5649: $07
	rlca                                             ; $564a: $07
	ld b, $03                                        ; $564b: $06 $03
	ld [bc], a                                       ; $564d: $02
	inc bc                                           ; $564e: $03
	ld [bc], a                                       ; $564f: $02
	dec b                                            ; $5650: $05
	ld b, $0b                                        ; $5651: $06 $0b
	inc c                                            ; $5653: $0c
	rla                                              ; $5654: $17
	jr jr_026_5685                                   ; $5655: $18 $2e

	jr nc, jr_026_5699                               ; $5657: $30 $40

	ret nz                                           ; $5659: $c0

	daa                                              ; $565a: $27
	rst SubAFromBC                                          ; $565b: $e7
	cp b                                             ; $565c: $b8
	rra                                              ; $565d: $1f
	adc b                                            ; $565e: $88
	rra                                              ; $565f: $1f
	sub h                                            ; $5660: $94
	rrca                                             ; $5661: $0f
	sbc [hl]                                         ; $5662: $9e
	inc [hl]                                         ; $5663: $34
	ld a, e                                          ; $5664: $7b
	cp $80                                           ; $5665: $fe $80
	halt                                             ; $5667: $76
	dec c                                            ; $5668: $0d
	rrca                                             ; $5669: $0f
	rrca                                             ; $566a: $0f
	ret                                              ; $566b: $c9


	ret                                              ; $566c: $c9


	inc a                                            ; $566d: $3c
	ld hl, sp-$7a                                    ; $566e: $f8 $86
	ld a, [hl]                                       ; $5670: $7e
	ld sp, hl                                        ; $5671: $f9
	rlca                                             ; $5672: $07
	ld a, [hl]                                       ; $5673: $7e
	add c                                            ; $5674: $81
	ld a, [hl]                                       ; $5675: $7e
	add c                                            ; $5676: $81
	ld a, a                                          ; $5677: $7f
	add b                                            ; $5678: $80
	sbc h                                            ; $5679: $9c
	adc a                                            ; $567a: $8f
	db $fc                                           ; $567b: $fc
	rla                                              ; $567c: $17
	cp $a7                                           ; $567d: $fe $a7
	xor $e7                                          ; $567f: $ee $e7
	ld a, [$f3af]                                    ; $5681: $fa $af $f3
	sbc a                                            ; $5684: $9f

jr_026_5685:
	ld [hl], d                                       ; $5685: $72
	sbc d                                            ; $5686: $9a
	rst SubAFromDE                                          ; $5687: $df
	ccf                                              ; $5688: $3f
	rst $38                                          ; $5689: $ff
	inc e                                            ; $568a: $1c
	db $e3                                           ; $568b: $e3
	ld [hl], a                                       ; $568c: $77
	and l                                            ; $568d: $a5
	sbc c                                            ; $568e: $99
	db $10                                           ; $568f: $10
	rst $38                                          ; $5690: $ff
	ld h, c                                          ; $5691: $61
	cp $81                                           ; $5692: $fe $81
	cp $77                                           ; $5694: $fe $77
	or $7f                                           ; $5696: $f6 $7f
	ld [hl], b                                       ; $5698: $70

jr_026_5699:
	ld a, [hl]                                       ; $5699: $7e
	ld hl, sp+$7d                                    ; $569a: $f8 $7d
	cp $97                                           ; $569c: $fe $97
	rlca                                             ; $569e: $07
	ld hl, sp-$3d                                    ; $569f: $f8 $c3
	inc a                                            ; $56a1: $3c
	pop af                                           ; $56a2: $f1
	ld c, $fd                                        ; $56a3: $0e $fd
	ld [bc], a                                       ; $56a5: $02
	ld a, d                                          ; $56a6: $7a
	nop                                              ; $56a7: $00
	ld a, l                                          ; $56a8: $7d
	jp nz, $0297                                     ; $56a9: $c2 $97 $02

	cp $03                                           ; $56ac: $fe $03
	ei                                               ; $56ae: $fb
	ld b, $fe                                        ; $56af: $06 $fe
	dec b                                            ; $56b1: $05
	db $fd                                           ; $56b2: $fd
	ld [hl], e                                       ; $56b3: $73
	db $fc                                           ; $56b4: $fc
	inc bc                                           ; $56b5: $03
	jr nz, jr_026_56c3                               ; $56b6: $20 $0b

	db $fc                                           ; $56b8: $fc
	adc c                                            ; $56b9: $89
	or a                                             ; $56ba: $b7
	ld e, b                                          ; $56bb: $58
	ld h, b                                          ; $56bc: $60
	cp a                                             ; $56bd: $bf
	pop bc                                           ; $56be: $c1
	ld a, a                                          ; $56bf: $7f
	ld b, d                                          ; $56c0: $42
	rst $38                                          ; $56c1: $ff
	push bc                                          ; $56c2: $c5

jr_026_56c3:
	ld a, [hl]                                       ; $56c3: $7e
	ld l, e                                          ; $56c4: $6b
	db $fc                                           ; $56c5: $fc
	db $eb                                           ; $56c6: $eb
	ld a, h                                          ; $56c7: $7c
	ld l, c                                          ; $56c8: $69
	cp $cd                                           ; $56c9: $fe $cd
	ld a, $77                                        ; $56cb: $3e $77
	ld hl, sp-$43                                    ; $56cd: $f8 $bd
	jp nz, $9e6d                                     ; $56cf: $c2 $6d $9e

	ld a, a                                          ; $56d2: $7f
	cp $7d                                           ; $56d3: $fe $7d
	dec c                                            ; $56d5: $0d
	sub c                                            ; $56d6: $91
	and a                                            ; $56d7: $a7
	ld a, b                                          ; $56d8: $78
	and e                                            ; $56d9: $a3
	ld a, h                                          ; $56da: $7c
	ret nc                                           ; $56db: $d0

	ccf                                              ; $56dc: $3f
	db $ec                                           ; $56dd: $ec
	rra                                              ; $56de: $1f
	ld a, e                                          ; $56df: $7b
	add a                                            ; $56e0: $87
	ld e, $e1                                        ; $56e1: $1e $e1
	inc bc                                           ; $56e3: $03
	db $fc                                           ; $56e4: $fc
	ld [hl], a                                       ; $56e5: $77
	ld l, [hl]                                       ; $56e6: $6e
	ld a, a                                          ; $56e7: $7f
	db $ec                                           ; $56e8: $ec
	ld a, a                                          ; $56e9: $7f
	ei                                               ; $56ea: $fb
	ld a, a                                          ; $56eb: $7f
	ld l, d                                          ; $56ec: $6a
	ld a, a                                          ; $56ed: $7f
	ld hl, sp+$7e                                    ; $56ee: $f8 $7e
	ld h, l                                          ; $56f0: $65
	sbc [hl]                                         ; $56f1: $9e
	ld a, $7b                                        ; $56f2: $3e $7b
	ldh a, [c]                                       ; $56f4: $f2
	sub h                                            ; $56f5: $94
	dec a                                            ; $56f6: $3d
	rst SubAFromDE                                          ; $56f7: $df
	ld sp, hl                                        ; $56f8: $f9
	rra                                              ; $56f9: $1f
	add sp, $3f                                      ; $56fa: $e8 $3f
	inc l                                            ; $56fc: $2c
	rst $38                                          ; $56fd: $ff
	ld c, [hl]                                       ; $56fe: $4e
	rst $38                                          ; $56ff: $ff
	adc a                                            ; $5700: $8f
	ld a, d                                          ; $5701: $7a
	ld d, $7f                                        ; $5702: $16 $7f
	cp $9a                                           ; $5704: $fe $9a
	call c, $88e0                                    ; $5706: $dc $e0 $88
	ldh a, [rAUD2HIGH]                               ; $5709: $f0 $19
	ld a, d                                          ; $570b: $7a
	ld b, [hl]                                       ; $570c: $46
	adc e                                            ; $570d: $8b
	ld sp, hl                                        ; $570e: $f9
	ld b, $60                                        ; $570f: $06 $60
	sbc a                                            ; $5711: $9f
	add c                                            ; $5712: $81
	rst $38                                          ; $5713: $ff
	and $ff                                          ; $5714: $e6 $ff
	ld l, d                                          ; $5716: $6a
	dec e                                            ; $5717: $1d
	xor $19                                          ; $5718: $ee $19
	sub $39                                          ; $571a: $d6 $39
	xor h                                            ; $571c: $ac
	ld [hl], e                                       ; $571d: $73
	ld c, l                                          ; $571e: $4d
	ldh a, [c]                                       ; $571f: $f2
	sbc e                                            ; $5720: $9b
	db $e4                                           ; $5721: $e4
	ld [hl], l                                       ; $5722: $75
	inc a                                            ; $5723: $3c
	ld l, l                                          ; $5724: $6d
	ld a, [hl-]                                      ; $5725: $3a
	ld e, a                                          ; $5726: $5f
	cp $9a                                           ; $5727: $fe $9a
	sub [hl]                                         ; $5729: $96
	ld a, c                                          ; $572a: $79
	db $eb                                           ; $572b: $eb
	inc e                                            ; $572c: $1c
	push af                                          ; $572d: $f5
	ld a, d                                          ; $572e: $7a
	ld [hl-], a                                      ; $572f: $32
	ld [hl], h                                       ; $5730: $74
	ld [$fe77], a                                    ; $5731: $ea $77 $fe
	ld a, h                                          ; $5734: $7c
	cp $9a                                           ; $5735: $fe $9a
	or b                                             ; $5737: $b0
	ld a, a                                          ; $5738: $7f
	db $ec                                           ; $5739: $ec
	rra                                              ; $573a: $1f
	ld hl, sp+$7a                                    ; $573b: $f8 $7a
	ldh [c], a                                       ; $573d: $e2
	ld a, a                                          ; $573e: $7f
	jp nc, $0e6e                                     ; $573f: $d2 $6e $0e

jr_026_5742:
	ld a, a                                          ; $5742: $7f
	cp $66                                           ; $5743: $fe $66
	db $fc                                           ; $5745: $fc
	sbc c                                            ; $5746: $99
	add a                                            ; $5747: $87
	ld a, b                                          ; $5748: $78
	rst JumpTable                                          ; $5749: $c7
	jr c, jr_026_5742                                ; $574a: $38 $f6

	dec c                                            ; $574c: $0d
	ld a, e                                          ; $574d: $7b
	jp nc, $0d9c                                     ; $574e: $d2 $9c $0d

	db $fd                                           ; $5751: $fd
	ld a, [bc]                                       ; $5752: $0a
	ld l, a                                          ; $5753: $6f
	db $fc                                           ; $5754: $fc
	sbc l                                            ; $5755: $9d
	ld a, l                                          ; $5756: $7d
	adc d                                            ; $5757: $8a
	inc bc                                           ; $5758: $03
	inc e                                            ; $5759: $1c
	sbc b                                            ; $575a: $98
	ld d, l                                          ; $575b: $55
	db $dd                                           ; $575c: $dd
	ld [hl+], a                                      ; $575d: $22
	xor d                                            ; $575e: $aa
	ld d, l                                          ; $575f: $55
	ld [hl], a                                       ; $5760: $77
	adc b                                            ; $5761: $88
	scf                                              ; $5762: $37
	ld hl, sp-$67                                    ; $5763: $f8 $99
	xor e                                            ; $5765: $ab
	ld d, l                                          ; $5766: $55
	ld [hl], a                                       ; $5767: $77
	adc c                                            ; $5768: $89
	ret nc                                           ; $5769: $d0

	ld a, a                                          ; $576a: $7f
	ld [hl], a                                       ; $576b: $77
	cp $9d                                           ; $576c: $fe $9d
	sub b                                            ; $576e: $90
	rst $38                                          ; $576f: $ff
	ld [hl], a                                       ; $5770: $77
	cp $7e                                           ; $5771: $fe $7e
	adc d                                            ; $5773: $8a
	ld a, a                                          ; $5774: $7f
	cp $7f                                           ; $5775: $fe $7f
	ld [hl+], a                                      ; $5777: $22
	ld d, e                                          ; $5778: $53
	ld h, c                                          ; $5779: $61

Call_026_577a:
	dec hl                                           ; $577a: $2b
	cp $7d                                           ; $577b: $fe $7d
	ldh [c], a                                       ; $577d: $e2
	ld a, a                                          ; $577e: $7f
	cp $74                                           ; $577f: $fe $74
	ldh a, [c]                                       ; $5781: $f2
	ld a, a                                          ; $5782: $7f
	ld c, c                                          ; $5783: $49
	sub a                                            ; $5784: $97
	ccf                                              ; $5785: $3f
	xor $7f                                          ; $5786: $ee $7f
	adc $ff                                          ; $5788: $ce $ff
	and [hl]                                         ; $578a: $a6
	rst $38                                          ; $578b: $ff
	ld h, $7b                                        ; $578c: $26 $7b
	cp $99                                           ; $578e: $fe $99
	ld b, $ff                                        ; $5790: $06 $ff
	ld b, [hl]                                       ; $5792: $46
	rst $38                                          ; $5793: $ff
	ld b, [hl]                                       ; $5794: $46
	ret c                                            ; $5795: $d8

	ld a, b                                          ; $5796: $78
	inc a                                            ; $5797: $3c
	ld a, h                                          ; $5798: $7c
	ei                                               ; $5799: $fb
	sub e                                            ; $579a: $93
	ld hl, sp+$7f                                    ; $579b: $f8 $7f
	cp $27                                           ; $579d: $fe $27
	rst $38                                          ; $579f: $ff
	ld hl, $20ff                                     ; $57a0: $21 $ff $20
	rst $38                                          ; $57a3: $ff

jr_026_57a4:
	jr nz, jr_026_57b5                               ; $57a4: $20 $0f

	ldh a, [$6e]                                     ; $57a6: $f0 $6e
	jp z, $cf71                                      ; $57a8: $ca $71 $cf

	ld a, e                                          ; $57ab: $7b
	cp $7e                                           ; $57ac: $fe $7e
	ld a, [hl-]                                      ; $57ae: $3a
	ld c, a                                          ; $57af: $4f
	sbc [hl]                                         ; $57b0: $9e
	ld h, l                                          ; $57b1: $65
	jr z, jr_026_582b                                ; $57b2: $28 $77

	inc e                                            ; $57b4: $1c

jr_026_57b5:
	ld [hl], a                                       ; $57b5: $77
	ld a, [de]                                       ; $57b6: $1a
	ld b, a                                          ; $57b7: $47
	sub l                                            ; $57b8: $95
	sub l                                            ; $57b9: $95
	rst SubAFromBC                                          ; $57ba: $e7
	jr jr_026_57a4                                   ; $57bb: $18 $e7

	jr @-$1b                                         ; $57bd: $18 $e3

	inc e                                            ; $57bf: $1c
	db $e3                                           ; $57c0: $e3
	inc e                                            ; $57c1: $1c
	di                                               ; $57c2: $f3
	inc c                                            ; $57c3: $0c
	ld [hl], a                                       ; $57c4: $77
	cp $8d                                           ; $57c5: $fe $8d
	ei                                               ; $57c7: $fb
	inc b                                            ; $57c8: $04
	ld a, [de]                                       ; $57c9: $1a
	db $ed                                           ; $57ca: $ed
	dec c                                            ; $57cb: $0d
	ld a, [$fd0a]                                    ; $57cc: $fa $0a $fd
	rla                                              ; $57cf: $17
	ld hl, sp+$1a                                    ; $57d0: $f8 $1a
	push af                                          ; $57d2: $f5
	dec a                                            ; $57d3: $3d
	ldh [c], a                                       ; $57d4: $e2
	ld l, d                                          ; $57d5: $6a
	push de                                          ; $57d6: $d5
	ld [hl], a                                       ; $57d7: $77
	ret z                                            ; $57d8: $c8

	rla                                              ; $57d9: $17
	jr nz, jr_026_5813                               ; $57da: $20 $37

	ld hl, sp+$7f                                    ; $57dc: $f8 $7f
	inc c                                            ; $57de: $0c
	sbc e                                            ; $57df: $9b
	db $dd                                           ; $57e0: $dd
	inc hl                                           ; $57e1: $23
	xor e                                            ; $57e2: $ab
	ld d, h                                          ; $57e3: $54
	ld e, a                                          ; $57e4: $5f
	ldh a, [$9a]                                     ; $57e5: $f0 $9a
	ld [$08ff], sp                                   ; $57e7: $08 $ff $08
	rst $38                                          ; $57ea: $ff
	adc b                                            ; $57eb: $88
	ld a, e                                          ; $57ec: $7b
	cp $7f                                           ; $57ed: $fe $7f
	ld [bc], a                                       ; $57ef: $02
	halt                                             ; $57f0: $76
	ld hl, sp-$62                                    ; $57f1: $f8 $9e
	ld c, b                                          ; $57f3: $48
	dec de                                           ; $57f4: $1b
	inc c                                            ; $57f5: $0c
	ld a, a                                          ; $57f6: $7f
	ld sp, $4393                                     ; $57f7: $31 $93 $43
	rst $38                                          ; $57fa: $ff
	add a                                            ; $57fb: $87
	rst $38                                          ; $57fc: $ff
	rrca                                             ; $57fd: $0f
	ld hl, sp+$1f                                    ; $57fe: $f8 $1f
	ldh a, [$3f]                                     ; $5800: $f0 $3f
	ldh [$7f], a                                     ; $5802: $e0 $7f
	ret nz                                           ; $5804: $c0

	ld a, d                                          ; $5805: $7a
	ld bc, $217e                                     ; $5806: $01 $7e $21
	sbc h                                            ; $5809: $9c
	ld [bc], a                                       ; $580a: $02
	rst FarCall                                          ; $580b: $f7
	nop                                              ; $580c: $00
	ld a, e                                          ; $580d: $7b
	inc c                                            ; $580e: $0c
	sub d                                            ; $580f: $92
	add [hl]                                         ; $5810: $86
	rst $38                                          ; $5811: $ff
	add [hl]                                         ; $5812: $86

jr_026_5813:
	cp a                                             ; $5813: $bf
	ld b, $bf                                        ; $5814: $06 $bf
	ld [bc], a                                       ; $5816: $02
	cp a                                             ; $5817: $bf
	ld [bc], a                                       ; $5818: $02
	ccf                                              ; $5819: $3f
	ld [bc], a                                       ; $581a: $02
	rra                                              ; $581b: $1f
	ld [bc], a                                       ; $581c: $02
	ld a, e                                          ; $581d: $7b
	inc c                                            ; $581e: $0c
	halt                                             ; $581f: $76
	cp c                                             ; $5820: $b9
	ld a, a                                          ; $5821: $7f
	cp $88                                           ; $5822: $fe $88
	ld [$08bf], sp                                   ; $5824: $08 $bf $08
	sbc a                                            ; $5827: $9f
	inc b                                            ; $5828: $04
	sbc a                                            ; $5829: $9f
	inc b                                            ; $582a: $04

jr_026_582b:
	ret nz                                           ; $582b: $c0

	ld a, a                                          ; $582c: $7f
	ldh a, [$3f]                                     ; $582d: $f0 $3f
	db $fc                                           ; $582f: $fc
	rrca                                             ; $5830: $0f
	cp a                                             ; $5831: $bf
	inc bc                                           ; $5832: $03
	sbc a                                            ; $5833: $9f
	nop                                              ; $5834: $00
	rst GetHLinHL                                          ; $5835: $cf
	nop                                              ; $5836: $00
	jp $e200                                         ; $5837: $c3 $00 $e2


	nop                                              ; $583a: $00
	ld h, a                                          ; $583b: $67
	or d                                             ; $583c: $b2
	sbc h                                            ; $583d: $9c
	ldh [rIE], a                                     ; $583e: $e0 $ff
	cp $de                                           ; $5840: $fe $de
	rst $38                                          ; $5842: $ff
	sbc e                                            ; $5843: $9b
	rst SubAFromBC                                          ; $5844: $e7
	rst $38                                          ; $5845: $ff
	rlca                                             ; $5846: $07
	ld hl, sp+$5e                                    ; $5847: $f8 $5e
	ldh [$7f], a                                     ; $5849: $e0 $7f
	xor e                                            ; $584b: $ab
	sbc [hl]                                         ; $584c: $9e
	jr c, jr_026_58a9                                ; $584d: $38 $5a

	ldh a, [$7f]                                     ; $584f: $f0 $7f
	ld de, $e06e                                     ; $5851: $11 $6e $e0
	ld a, h                                          ; $5854: $7c
	ld [hl], l                                       ; $5855: $75
	ld a, b                                          ; $5856: $78
	ld [hl], e                                       ; $5857: $73
	sub b                                            ; $5858: $90
	ld bc, $03fd                                     ; $5859: $01 $fd $03
	ld a, l                                          ; $585c: $7d
	add e                                            ; $585d: $83
	ld a, $c3                                        ; $585e: $3e $c3
	dec sp                                           ; $5860: $3b
	add $6a                                          ; $5861: $c6 $6a
	push de                                          ; $5863: $d5
	db $dd                                           ; $5864: $dd
	and d                                            ; $5865: $a2
	xor d                                            ; $5866: $aa
	push de                                          ; $5867: $d5
	ld [hl], a                                       ; $5868: $77
	ld b, b                                          ; $5869: $40
	sbc l                                            ; $586a: $9d
	ld e, l                                          ; $586b: $5d
	and d                                            ; $586c: $a2
	inc bc                                           ; $586d: $03
	db $10                                           ; $586e: $10
	ld a, e                                          ; $586f: $7b
	ld hl, sp+$7f                                    ; $5870: $f8 $7f
	ld a, [$fc0f]                                    ; $5872: $fa $0f $fc
	sub e                                            ; $5875: $93
	ret z                                            ; $5876: $c8

	ld a, a                                          ; $5877: $7f
	ld h, h                                          ; $5878: $64
	cp a                                             ; $5879: $bf
	db $e4                                           ; $587a: $e4
	ccf                                              ; $587b: $3f
	ld a, d                                          ; $587c: $7a
	sbc a                                            ; $587d: $9f
	rst SubAFromDE                                          ; $587e: $df
	daa                                              ; $587f: $27
	ld [hl], a                                       ; $5880: $77
	adc c                                            ; $5881: $89
	ld [hl], a                                       ; $5882: $77
	ldh a, [$7f]                                     ; $5883: $f0 $7f
	sub l                                            ; $5885: $95
	ld a, a                                          ; $5886: $7f
	dec a                                            ; $5887: $3d
	sub a                                            ; $5888: $97
	rlca                                             ; $5889: $07
	rst $38                                          ; $588a: $ff
	rrca                                             ; $588b: $0f
	cp $3d                                           ; $588c: $fe $3d
	ldh a, [c]                                       ; $588e: $f2
	rst FarCall                                          ; $588f: $f7
	ret z                                            ; $5890: $c8

	ld [hl], a                                       ; $5891: $77
	ldh a, [$80]                                     ; $5892: $f0 $80
	dec de                                           ; $5894: $1b
	rst $38                                          ; $5895: $ff
	ld [hl], e                                       ; $5896: $73
	rst $38                                          ; $5897: $ff
	jp Jump_026_42ff                                 ; $5898: $c3 $ff $42


	rst $38                                          ; $589b: $ff
	ldh [c], a                                       ; $589c: $e2
	ld a, a                                          ; $589d: $7f
	ld h, d                                          ; $589e: $62
	rst $38                                          ; $589f: $ff
	ldh a, [c]                                       ; $58a0: $f2
	ccf                                              ; $58a1: $3f
	ld [hl], d                                       ; $58a2: $72
	cp a                                             ; $58a3: $bf
	or $00                                           ; $58a4: $f6 $00
	add $00                                          ; $58a6: $c6 $00
	add h                                            ; $58a8: $84

jr_026_58a9:
	nop                                              ; $58a9: $00
	call nz, $c080                                   ; $58aa: $c4 $80 $c0
	add b                                            ; $58ad: $80
	ldh [$80], a                                     ; $58ae: $e0 $80
	ld h, b                                          ; $58b0: $60
	ret nz                                           ; $58b1: $c0

	ld h, b                                          ; $58b2: $60
	ld a, [hl]                                       ; $58b3: $7e
	ld c, d                                          ; $58b4: $4a
	ld a, e                                          ; $58b5: $7b
	inc c                                            ; $58b6: $0c
	add b                                            ; $58b7: $80
	ld e, a                                          ; $58b8: $5f
	ld [bc], a                                       ; $58b9: $02
	ld c, a                                          ; $58ba: $4f
	ld [bc], a                                       ; $58bb: $02
	ld c, a                                          ; $58bc: $4f
	inc bc                                           ; $58bd: $03
	ld h, a                                          ; $58be: $67
	inc bc                                           ; $58bf: $03
	ld l, h                                          ; $58c0: $6c
	rlca                                             ; $58c1: $07
	ld a, b                                          ; $58c2: $78
	rrca                                             ; $58c3: $0f
	adc a                                            ; $58c4: $8f
	ld [bc], a                                       ; $58c5: $02
	add a                                            ; $58c6: $87
	nop                                              ; $58c7: $00
	add e                                            ; $58c8: $83
	nop                                              ; $58c9: $00
	add c                                            ; $58ca: $81
	nop                                              ; $58cb: $00
	add b                                            ; $58cc: $80
	nop                                              ; $58cd: $00
	ret nz                                           ; $58ce: $c0

	nop                                              ; $58cf: $00
	jp nz, Jump_026_4380                             ; $58d0: $c2 $80 $43

	ret nz                                           ; $58d3: $c0

	ldh [rP1], a                                     ; $58d4: $e0 $00
	ldh [hDisp0_WX], a                                     ; $58d6: $e0 $89
	nop                                              ; $58d8: $00
	pop hl                                           ; $58d9: $e1
	nop                                              ; $58da: $00
	pop hl                                           ; $58db: $e1
	ld bc, $0141                                     ; $58dc: $01 $41 $01
	inc bc                                           ; $58df: $03
	ld bc, $0302                                     ; $58e0: $01 $02 $03
	ld [bc], a                                       ; $58e3: $02
	inc bc                                           ; $58e4: $03
	pop af                                           ; $58e5: $f1
	rst $38                                          ; $58e6: $ff
	ldh a, [rIE]                                     ; $58e7: $f0 $ff
	cp b                                             ; $58e9: $b8
	rst $38                                          ; $58ea: $ff
	jr @+$01                                         ; $58eb: $18 $ff

	inc c                                            ; $58ed: $0c
	ld a, e                                          ; $58ee: $7b
	cp $7d                                           ; $58ef: $fe $7d
	rst GetHLinHL                                          ; $58f1: $cf
	ld a, a                                          ; $58f2: $7f
	sub h                                            ; $58f3: $94
	ld a, [hl]                                       ; $58f4: $7e
	jp Jump_026_619b                                 ; $58f5: $c3 $9b $61


	rst $38                                          ; $58f8: $ff
	inc e                                            ; $58f9: $1c
	rst $38                                          ; $58fa: $ff
	ld l, l                                          ; $58fb: $6d
	inc bc                                           ; $58fc: $03
	ld a, l                                          ; $58fd: $7d
	rst $38                                          ; $58fe: $ff
	sbc l                                            ; $58ff: $9d
	ld a, h                                          ; $5900: $7c
	add e                                            ; $5901: $83
	ld [hl], l                                       ; $5902: $75
	jp c, Jump_026_409e                              ; $5903: $da $9e $40

	ld a, d                                          ; $5906: $7a
	cp e                                             ; $5907: $bb
	ld a, [hl]                                       ; $5908: $7e
	db $f4                                           ; $5909: $f4
	sbc h                                            ; $590a: $9c
	jr nc, @+$01                                     ; $590b: $30 $ff

	rrca                                             ; $590d: $0f
	ld a, e                                          ; $590e: $7b
	db $ec                                           ; $590f: $ec
	sbc d                                            ; $5910: $9a
	dec de                                           ; $5911: $1b
	and $1f                                          ; $5912: $e6 $1f
	db $e4                                           ; $5914: $e4
	dec b                                            ; $5915: $05
	ld a, c                                          ; $5916: $79
	sbc b                                            ; $5917: $98
	ld a, [hl]                                       ; $5918: $7e
	ld a, [bc]                                       ; $5919: $0a
	ld a, h                                          ; $591a: $7c
	db $eb                                           ; $591b: $eb
	sbc e                                            ; $591c: $9b
	db $fd                                           ; $591d: $fd
	ldh a, [c]                                       ; $591e: $f2
	rra                                              ; $591f: $1f
	ldh a, [rTAC]                                    ; $5920: $f0 $07
	jr nc, jr_026_596b                               ; $5922: $30 $47

	db $fc                                           ; $5924: $fc
	sub l                                            ; $5925: $95
	db $fd                                           ; $5926: $fd
	ld [bc], a                                       ; $5927: $02
	cp a                                             ; $5928: $bf
	ld b, b                                          ; $5929: $40
	ei                                               ; $592a: $fb
	inc b                                            ; $592b: $04
	rst AddAOntoHL                                          ; $592c: $ef
	db $10                                           ; $592d: $10
	rst $38                                          ; $592e: $ff
	nop                                              ; $592f: $00
	ld [hl], a                                       ; $5930: $77
	ld hl, sp+$7f                                    ; $5931: $f8 $7f
	ld a, [$ec7f]                                    ; $5933: $fa $7f $ec
	ld a, a                                          ; $5936: $7f
	db $fc                                           ; $5937: $fc
	sub a                                            ; $5938: $97
	or a                                             ; $5939: $b7
	ld c, b                                          ; $593a: $48
	cp $01                                           ; $593b: $fe $01
	ld a, a                                          ; $593d: $7f
	add b                                            ; $593e: $80
	rst FarCall                                          ; $593f: $f7
	ld [$946e], sp                                   ; $5940: $08 $6e $94
	ld [hl], a                                       ; $5943: $77
	xor $7f                                          ; $5944: $ee $7f
	ret c                                            ; $5946: $d8

jr_026_5947:
	sbc l                                            ; $5947: $9d
	rst SubAFromDE                                          ; $5948: $df

jr_026_5949:
	jr nz, jr_026_59c2                               ; $5949: $20 $77

	ldh [c], a                                       ; $594b: $e2
	ld l, a                                          ; $594c: $6f
	ldh a, [c]                                       ; $594d: $f2
	ld a, a                                          ; $594e: $7f
	db $f4                                           ; $594f: $f4
	ld a, a                                          ; $5950: $7f
	jp z, $fa7f                                      ; $5951: $ca $7f $fa

	sbc l                                            ; $5954: $9d
	ld a, e                                          ; $5955: $7b
	add h                                            ; $5956: $84
	ld [hl], a                                       ; $5957: $77
	jp z, $e29d                                      ; $5958: $ca $9d $e2

jr_026_595b:
	ccf                                              ; $595b: $3f
	ld [hl], a                                       ; $595c: $77

jr_026_595d:
	cp $9c                                           ; $595d: $fe $9c
	jp nz, $c47f                                     ; $595f: $c2 $7f $c4

	ld l, e                                          ; $5962: $6b
	cp $8c                                           ; $5963: $fe $8c
	jr nc, jr_026_5947                               ; $5965: $30 $e0

	jr nc, jr_026_5949                               ; $5967: $30 $e0

	jr jr_026_595b                                   ; $5969: $18 $f0

jr_026_596b:
	jr jr_026_595d                                   ; $596b: $18 $f0

	add hl, de                                       ; $596d: $19
	ldh a, [$09]                                     ; $596e: $f0 $09
	ld sp, hl                                        ; $5970: $f9
	rrca                                             ; $5971: $0f
	ld sp, hl                                        ; $5972: $f9
	ld c, $fb                                        ; $5973: $0e $fb
	ld [hl], b                                       ; $5975: $70
	rra                                              ; $5976: $1f
	ldh [$74], a                                     ; $5977: $e0 $74
	add hl, hl                                       ; $5979: $29
	ld a, e                                          ; $597a: $7b
	ld c, d                                          ; $597b: $4a
	ld l, c                                          ; $597c: $69
	jp c, $e099                                      ; $597d: $da $99 $e0

	add hl, de                                       ; $5980: $19
	ld hl, sp+$05                                    ; $5981: $f8 $05
	db $fc                                           ; $5983: $fc
	inc bc                                           ; $5984: $03
	ld a, d                                          ; $5985: $7a
	ld c, l                                          ; $5986: $4d
	ld l, a                                          ; $5987: $6f
	ldh a, [hDisp1_SCY]                                     ; $5988: $f0 $90
	ld b, $03                                        ; $598a: $06 $03
	add h                                            ; $598c: $84
	rlca                                             ; $598d: $07
	call z, $c807                                    ; $598e: $cc $07 $c8
	rrca                                             ; $5991: $0f
	ld hl, sp+$0f                                    ; $5992: $f8 $0f
	ldh a, [$9f]                                     ; $5994: $f0 $9f
	ld [hl], b                                       ; $5996: $70
	rst SubAFromDE                                          ; $5997: $df
	jr nz, jr_026_5a12                               ; $5998: $20 $78

	ret z                                            ; $599a: $c8

	ld c, l                                          ; $599b: $4d
	xor d                                            ; $599c: $aa
	ld a, a                                          ; $599d: $7f
	jp $226c                                         ; $599e: $c3 $6c $22


	ld a, a                                          ; $59a1: $7f
	cp $7d                                           ; $59a2: $fe $7d
	or $7f                                           ; $59a4: $f6 $7f
	cp $7b                                           ; $59a6: $fe $7b
	ld [bc], a                                       ; $59a8: $02
	sbc h                                            ; $59a9: $9c
	ld a, a                                          ; $59aa: $7f
	ldh [$1f], a                                     ; $59ab: $e0 $1f
	halt                                             ; $59ad: $76
	ld c, $77                                        ; $59ae: $0e $77
	cp $7f                                           ; $59b0: $fe $7f
	push hl                                          ; $59b2: $e5
	sub a                                            ; $59b3: $97
	ld a, $c1                                        ; $59b4: $3e $c1
	dec a                                            ; $59b6: $3d
	jp nc, $907f                                     ; $59b7: $d2 $7f $90

	ei                                               ; $59ba: $fb
	inc d                                            ; $59bb: $14
	ld l, l                                          ; $59bc: $6d
	xor h                                            ; $59bd: $ac
	sbc e                                            ; $59be: $9b
	dec de                                           ; $59bf: $1b
	db $f4                                           ; $59c0: $f4
	rst $38                                          ; $59c1: $ff

jr_026_59c2:
	db $10                                           ; $59c2: $10
	inc bc                                           ; $59c3: $03
	ld b, b                                          ; $59c4: $40
	ld c, e                                          ; $59c5: $4b
	ld b, b                                          ; $59c6: $40
	inc bc                                           ; $59c7: $03
	cp $17                                           ; $59c8: $fe $17
	cp $79                                           ; $59ca: $fe $79
	adc b                                            ; $59cc: $88
	sbc h                                            ; $59cd: $9c
	db $fc                                           ; $59ce: $fc
	ld a, a                                          ; $59cf: $7f
	bit 6, b                                         ; $59d0: $cb $70
	ldh [$74], a                                     ; $59d2: $e0 $74
	sbc $77                                          ; $59d4: $de $77
	ld a, e                                          ; $59d6: $7b
	ld a, a                                          ; $59d7: $7f
	sbc e                                            ; $59d8: $9b
	ld a, a                                          ; $59d9: $7f
	ld d, $9e                                        ; $59da: $16 $9e
	ld a, a                                          ; $59dc: $7f
	ld c, e                                          ; $59dd: $4b

jr_026_59de:
	reti                                             ; $59de: $d9


	sbc [hl]                                         ; $59df: $9e
	ld hl, sp+$79                                    ; $59e0: $f8 $79
	adc $5f                                          ; $59e2: $ce $5f
	ldh a, [c]                                       ; $59e4: $f2
	ld a, a                                          ; $59e5: $7f
	ld c, d                                          ; $59e6: $4a
	ld a, a                                          ; $59e7: $7f
	ld a, $7e                                        ; $59e8: $3e $7e
	ld b, [hl]                                       ; $59ea: $46
	ld a, e                                          ; $59eb: $7b
	cpl                                              ; $59ec: $2f
	ld a, e                                          ; $59ed: $7b
	cp $7f                                           ; $59ee: $fe $7f
	dec l                                            ; $59f0: $2d
	ld a, a                                          ; $59f1: $7f
	ldh a, [$9a]                                     ; $59f2: $f0 $9a
	ld c, $f1                                        ; $59f4: $0e $f1
	ld h, b                                          ; $59f6: $60
	rst $38                                          ; $59f7: $ff
	sbc a                                            ; $59f8: $9f
	ld [hl], b                                       ; $59f9: $70
	inc h                                            ; $59fa: $24
	ld [hl], a                                       ; $59fb: $77
	cp $7f                                           ; $59fc: $fe $7f
	ldh a, [$7b]                                     ; $59fe: $f0 $7b
	db $e4                                           ; $5a00: $e4
	ld a, e                                          ; $5a01: $7b
	ld a, [de]                                       ; $5a02: $1a
	ld a, a                                          ; $5a03: $7f
	cp $7b                                           ; $5a04: $fe $7b
	rlca                                             ; $5a06: $07
	ld a, e                                          ; $5a07: $7b
	cp $9d                                           ; $5a08: $fe $9d
	di                                               ; $5a0a: $f3
	db $fc                                           ; $5a0b: $fc
	ld [hl], a                                       ; $5a0c: $77
	dec d                                            ; $5a0d: $15
	ld e, a                                          ; $5a0e: $5f
	jp nz, $c766                                     ; $5a0f: $c2 $66 $c7

jr_026_5a12:
	ld a, e                                          ; $5a12: $7b
	rst SubAFromDE                                          ; $5a13: $df
	ld a, b                                          ; $5a14: $78
	db $fc                                           ; $5a15: $fc
	adc l                                            ; $5a16: $8d
	ld e, $e1                                        ; $5a17: $1e $e1
	rst AddAOntoHL                                          ; $5a19: $ef
	jr jr_026_5a9b                                   ; $5a1a: $18 $7f

	adc b                                            ; $5a1c: $88
	ld a, a                                          ; $5a1d: $7f
	adc b                                            ; $5a1e: $88
	ld [hl], a                                       ; $5a1f: $77
	adc h                                            ; $5a20: $8c
	ld a, a                                          ; $5a21: $7f
	add h                                            ; $5a22: $84
	cp a                                             ; $5a23: $bf
	ld b, h                                          ; $5a24: $44
	add a                                            ; $5a25: $87
	ld a, h                                          ; $5a26: $7c
	ld a, a                                          ; $5a27: $7f
	ld hl, sp+$03                                    ; $5a28: $f8 $03
	ld c, h                                          ; $5a2a: $4c
	inc bc                                           ; $5a2b: $03
	cp $03                                           ; $5a2c: $fe $03
	inc c                                            ; $5a2e: $0c
	ld d, d                                          ; $5a2f: $52
	ld e, l                                          ; $5a30: $5d
	sbc [hl]                                         ; $5a31: $9e
	db $fc                                           ; $5a32: $fc
	db $db                                           ; $5a33: $db
	rst $38                                          ; $5a34: $ff
	sbc d                                            ; $5a35: $9a
	ccf                                              ; $5a36: $3f
	ld a, [$fe0f]                                    ; $5a37: $fa $0f $fe
	rrca                                             ; $5a3a: $0f
	ld a, e                                          ; $5a3b: $7b
	db $fc                                           ; $5a3c: $fc
	sbc e                                            ; $5a3d: $9b
	rra                                              ; $5a3e: $1f
	nop                                              ; $5a3f: $00
	rst $38                                          ; $5a40: $ff
	db $fc                                           ; $5a41: $fc
	ld a, e                                          ; $5a42: $7b
	nop                                              ; $5a43: $00
	sbc d                                            ; $5a44: $9a
	inc sp                                           ; $5a45: $33
	rst $38                                          ; $5a46: $ff
	ld sp, $21ff                                     ; $5a47: $31 $ff $21
	ld a, c                                          ; $5a4a: $79
	ld e, d                                          ; $5a4b: $5a
	ld a, a                                          ; $5a4c: $7f
	cp $70                                           ; $5a4d: $fe $70
	ld e, h                                          ; $5a4f: $5c
	ld a, d                                          ; $5a50: $7a
	cp $7c                                           ; $5a51: $fe $7c
	jr nc, jr_026_59de                               ; $5a53: $30 $89

	add $f9                                          ; $5a55: $c6 $f9
	sbc [hl]                                         ; $5a57: $9e
	pop hl                                           ; $5a58: $e1
	cp [hl]                                          ; $5a59: $be
	pop bc                                           ; $5a5a: $c1
	ld hl, sp+$07                                    ; $5a5b: $f8 $07
	ld a, a                                          ; $5a5d: $7f
	rst $38                                          ; $5a5e: $ff
	di                                               ; $5a5f: $f3
	rst $38                                          ; $5a60: $ff
	pop bc                                           ; $5a61: $c1
	rst $38                                          ; $5a62: $ff
	adc b                                            ; $5a63: $88
	rst FarCall                                          ; $5a64: $f7
	adc b                                            ; $5a65: $88
	rst FarCall                                          ; $5a66: $f7
	adc h                                            ; $5a67: $8c
	di                                               ; $5a68: $f3
	inc c                                            ; $5a69: $0c
	di                                               ; $5a6a: $f3
	ld [hl], a                                       ; $5a6b: $77
	inc c                                            ; $5a6c: $0c
	sbc h                                            ; $5a6d: $9c
	ei                                               ; $5a6e: $fb
	db $fc                                           ; $5a6f: $fc
	rst FarCall                                          ; $5a70: $f7
	ld a, e                                          ; $5a71: $7b
	ldh [$7f], a                                     ; $5a72: $e0 $7f
	cp $9b                                           ; $5a74: $fe $9b
	ld h, [hl]                                       ; $5a76: $66
	ld sp, hl                                        ; $5a77: $f9
	ld h, [hl]                                       ; $5a78: $66
	ld sp, hl                                        ; $5a79: $f9
	ld a, d                                          ; $5a7a: $7a
	rst FarCall                                          ; $5a7b: $f7
	sbc e                                            ; $5a7c: $9b
	rra                                              ; $5a7d: $1f
	rst GetHLinHL                                          ; $5a7e: $cf
	ccf                                              ; $5a7f: $3f
	ld hl, sp+$79                                    ; $5a80: $f8 $79
	inc e                                            ; $5a82: $1c
	ld a, a                                          ; $5a83: $7f
	cp $9c                                           ; $5a84: $fe $9c
	ld b, a                                          ; $5a86: $47
	ld hl, sp+$4f                                    ; $5a87: $f8 $4f
	ld a, d                                          ; $5a89: $7a
	ldh a, [$7e]                                     ; $5a8a: $f0 $7e
	call nz, $ffdf                                   ; $5a8c: $c4 $df $ff
	sbc [hl]                                         ; $5a8f: $9e
	ld de, $fe7b                                     ; $5a90: $11 $7b $fe
	sbc h                                            ; $5a93: $9c
	ret nc                                           ; $5a94: $d0

	ccf                                              ; $5a95: $3f
	ret nc                                           ; $5a96: $d0

	ld a, d                                          ; $5a97: $7a
	ldh a, [$9e]                                     ; $5a98: $f0 $9e
	rra                                              ; $5a9a: $1f

jr_026_5a9b:
	ld a, e                                          ; $5a9b: $7b
	and b                                            ; $5a9c: $a0
	ld a, l                                          ; $5a9d: $7d
	inc b                                            ; $5a9e: $04
	ld a, a                                          ; $5a9f: $7f
	call nz, $9887                                   ; $5aa0: $c4 $87 $98
	rst SubAFromBC                                          ; $5aa3: $e7
	sbc h                                            ; $5aa4: $9c
	db $e3                                           ; $5aa5: $e3
	sbc h                                            ; $5aa6: $9c
	db $e3                                           ; $5aa7: $e3
	inc e                                            ; $5aa8: $1c
	db $e3                                           ; $5aa9: $e3
	rst $38                                          ; $5aaa: $ff
	ldh [$7f], a                                     ; $5aab: $e0 $7f
	ret nz                                           ; $5aad: $c0

	cp a                                             ; $5aae: $bf
	ld h, b                                          ; $5aaf: $60
	cp a                                             ; $5ab0: $bf
	ld h, b                                          ; $5ab1: $60
	rst SubAFromDE                                          ; $5ab2: $df
	jr nc, jr_026_5b14                               ; $5ab3: $30 $5f

	or b                                             ; $5ab5: $b0
	ld c, a                                          ; $5ab6: $4f
	cp b                                             ; $5ab7: $b8
	ld l, a                                          ; $5ab8: $6f
	sbc b                                            ; $5ab9: $98
	inc bc                                           ; $5aba: $03
	ld b, b                                          ; $5abb: $40
	inc bc                                           ; $5abc: $03
	cp $03                                           ; $5abd: $fe $03
	cp $53                                           ; $5abf: $fe $53
	cp $7c                                           ; $5ac1: $fe $7c
	adc c                                            ; $5ac3: $89
	sub h                                            ; $5ac4: $94
	or $1f                                           ; $5ac5: $f6 $1f
	db $fc                                           ; $5ac7: $fc
	rra                                              ; $5ac8: $1f
	db $f4                                           ; $5ac9: $f4
	rra                                              ; $5aca: $1f
	db $fc                                           ; $5acb: $fc
	ccf                                              ; $5acc: $3f
	db $f4                                           ; $5acd: $f4
	ccf                                              ; $5ace: $3f
	db $ec                                           ; $5acf: $ec
	ld a, e                                          ; $5ad0: $7b
	db $fc                                           ; $5ad1: $fc
	ld [hl], a                                       ; $5ad2: $77
	inc c                                            ; $5ad3: $0c
	ld h, a                                          ; $5ad4: $67
	cp $77                                           ; $5ad5: $fe $77
	inc a                                            ; $5ad7: $3c
	sbc l                                            ; $5ad8: $9d
	cp $81                                           ; $5ad9: $fe $81
	ld c, a                                          ; $5adb: $4f
	cp $7f                                           ; $5adc: $fe $7f
	ld c, $6f                                        ; $5ade: $0e $6f
	cp $7e                                           ; $5ae0: $fe $7e
	ld a, [bc]                                       ; $5ae2: $0a
	ld l, a                                          ; $5ae3: $6f
	cp $9c                                           ; $5ae4: $fe $9c
	ld h, a                                          ; $5ae6: $67
	ld hl, sp+$27                                    ; $5ae7: $f8 $27
	ld l, e                                          ; $5ae9: $6b
	cp $7d                                           ; $5aea: $fe $7d
	ld [hl+], a                                      ; $5aec: $22
	ld [hl], a                                       ; $5aed: $77
	ld a, [$0e7f]                                    ; $5aee: $fa $7f $0e
	ld a, a                                          ; $5af1: $7f
	ld a, [bc]                                       ; $5af2: $0a
	ld a, a                                          ; $5af3: $7f
	cp $75                                           ; $5af4: $fe $75
	inc d                                            ; $5af6: $14
	sbc l                                            ; $5af7: $9d
	inc bc                                           ; $5af8: $03
	db $fc                                           ; $5af9: $fc
	ld [hl], a                                       ; $5afa: $77
	cp $7f                                           ; $5afb: $fe $7f
	ld c, $9d                                        ; $5afd: $0e $9d
	jp nz, Jump_026_673d                             ; $5aff: $c2 $3d $67

	cp $98                                           ; $5b02: $fe $98
	ldh [c], a                                       ; $5b04: $e2
	dec e                                            ; $5b05: $1d
	db $e3                                           ; $5b06: $e3
	inc e                                            ; $5b07: $1c
	ld c, [hl]                                       ; $5b08: $4e
	pop af                                           ; $5b09: $f1
	ld c, [hl]                                       ; $5b0a: $4e
	ld l, e                                          ; $5b0b: $6b
	add $77                                          ; $5b0c: $c6 $77
	call c, $fe7f                                    ; $5b0e: $dc $7f $fe
	adc a                                            ; $5b11: $8f
	cpl                                              ; $5b12: $2f
	ret c                                            ; $5b13: $d8

jr_026_5b14:
	daa                                              ; $5b14: $27
	call c, $cc37                                    ; $5b15: $dc $37 $cc
	inc de                                           ; $5b18: $13
	xor $13                                          ; $5b19: $ee $13
	xor $1b                                          ; $5b1b: $ee $1b
	and $19                                          ; $5b1d: $e6 $19
	rst SubAFromBC                                          ; $5b1f: $e7
	add hl, bc                                       ; $5b20: $09
	rst FarCall                                          ; $5b21: $f7
	inc bc                                           ; $5b22: $03
	ld c, [hl]                                       ; $5b23: $4e
	inc bc                                           ; $5b24: $03
	cp $03                                           ; $5b25: $fe $03
	cp $53                                           ; $5b27: $fe $53
	cp $7f                                           ; $5b29: $fe $7f
	inc c                                            ; $5b2b: $0c
	sbc c                                            ; $5b2c: $99
	ld hl, sp+$3f                                    ; $5b2d: $f8 $3f
	add sp, $7f                                      ; $5b2f: $e8 $7f
	ret c                                            ; $5b31: $d8

	ld a, a                                          ; $5b32: $7f
	ld l, e                                          ; $5b33: $6b
	db $fc                                           ; $5b34: $fc
	sbc l                                            ; $5b35: $9d
	rst $38                                          ; $5b36: $ff
	ld b, c                                          ; $5b37: $41
	ld c, e                                          ; $5b38: $4b
	cp $9d                                           ; $5b39: $fe $9d
	ld a, [hl]                                       ; $5b3b: $7e
	add c                                            ; $5b3c: $81
	ld c, a                                          ; $5b3d: $4f
	cp $67                                           ; $5b3e: $fe $67
	ld [$fe67], sp                                   ; $5b40: $08 $67 $fe
	ld l, a                                          ; $5b43: $6f
	ld a, [bc]                                       ; $5b44: $0a
	ld e, a                                          ; $5b45: $5f
	cp $6f                                           ; $5b46: $fe $6f
	ld a, [bc]                                       ; $5b48: $0a
	ld [hl], a                                       ; $5b49: $77
	cp $75                                           ; $5b4a: $fe $75
	ld [$fe7f], sp                                   ; $5b4c: $08 $7f $fe
	ld a, a                                          ; $5b4f: $7f
	ld c, $9d                                        ; $5b50: $0e $9d
	pop hl                                           ; $5b52: $e1
	ld e, $57                                        ; $5b53: $1e $57
	cp $6f                                           ; $5b55: $fe $6f
	ld a, [bc]                                       ; $5b57: $0a
	halt                                             ; $5b58: $76
	ldh [c], a                                       ; $5b59: $e2
	sbc l                                            ; $5b5a: $9d
	add e                                            ; $5b5b: $83
	ld a, h                                          ; $5b5c: $7c
	ld [hl], a                                       ; $5b5d: $77
	cp $8f                                           ; $5b5e: $fe $8f
	dec c                                            ; $5b60: $0d
	di                                               ; $5b61: $f3
	adc h                                            ; $5b62: $8c
	ld [hl], e                                       ; $5b63: $73
	adc h                                            ; $5b64: $8c
	ld [hl], e                                       ; $5b65: $73
	add [hl]                                         ; $5b66: $86
	ld a, c                                          ; $5b67: $79
	add [hl]                                         ; $5b68: $86
	ld a, c                                          ; $5b69: $79
	add $39                                          ; $5b6a: $c6 $39
	add $39                                          ; $5b6c: $c6 $39
	jp nz, Jump_026_7b3d                             ; $5b6e: $c2 $3d $7b

	ld l, h                                          ; $5b71: $6c
	ld a, h                                          ; $5b72: $7c
	ld a, a                                          ; $5b73: $7f
	ld a, e                                          ; $5b74: $7b
	cp $7d                                           ; $5b75: $fe $7d
	ld [$fe6f], a                                    ; $5b77: $ea $6f $fe
	rlca                                             ; $5b7a: $07
	ld b, b                                          ; $5b7b: $40
	daa                                              ; $5b7c: $27
	nop                                              ; $5b7d: $00
	rst SubAFromDE                                          ; $5b7e: $df
	inc sp                                           ; $5b7f: $33
	sbc l                                            ; $5b80: $9d
	ld b, l                                          ; $5b81: $45
	ld d, l                                          ; $5b82: $55
	db $db                                           ; $5b83: $db
	inc sp                                           ; $5b84: $33
	ld a, a                                          ; $5b85: $7f
	ld hl, sp-$63                                    ; $5b86: $f8 $9d
	ld b, h                                          ; $5b88: $44
	ld b, e                                          ; $5b89: $43
	db $dd                                           ; $5b8a: $dd
	inc sp                                           ; $5b8b: $33
	sbc h                                            ; $5b8c: $9c
	inc [hl]                                         ; $5b8d: $34
	ld b, e                                          ; $5b8e: $43
	inc sp                                           ; $5b8f: $33
	ld [hl], e                                       ; $5b90: $73
	ld hl, sp-$27                                    ; $5b91: $f8 $d9
	inc sp                                           ; $5b93: $33
	sbc l                                            ; $5b94: $9d
	inc [hl]                                         ; $5b95: $34
	ld b, h                                          ; $5b96: $44
	db $db                                           ; $5b97: $db
	inc sp                                           ; $5b98: $33
	rst SubAFromDE                                          ; $5b99: $df
	ld b, h                                          ; $5b9a: $44
	ld l, a                                          ; $5b9b: $6f
	jp hl                                            ; $5b9c: $e9


	ld a, a                                          ; $5b9d: $7f
	ldh a, [rVBK]                                    ; $5b9e: $f0 $4f
	ld hl, sp-$3d                                    ; $5ba0: $f8 $c3
	inc sp                                           ; $5ba2: $33
	ret nz                                           ; $5ba3: $c0

	nop                                              ; $5ba4: $00
	sbc e                                            ; $5ba5: $9b
	adc b                                            ; $5ba6: $88
	ld [hl], a                                       ; $5ba7: $77
	ld [hl+], a                                      ; $5ba8: $22
	db $dd                                           ; $5ba9: $dd
	inc bc                                           ; $5baa: $03
	db $fc                                           ; $5bab: $fc
	ld l, e                                          ; $5bac: $6b
	db $fc                                           ; $5bad: $fc
	sub d                                            ; $5bae: $92
	adc c                                            ; $5baf: $89
	ld [hl], a                                       ; $5bb0: $77
	inc hl                                           ; $5bb1: $23
	db $dd                                           ; $5bb2: $dd
	pop bc                                           ; $5bb3: $c1
	ld a, a                                          ; $5bb4: $7f
	ld b, c                                          ; $5bb5: $41
	rst $38                                          ; $5bb6: $ff
	ld b, c                                          ; $5bb7: $41
	rst $38                                          ; $5bb8: $ff
	ld b, b                                          ; $5bb9: $40
	rst $38                                          ; $5bba: $ff
	add b                                            ; $5bbb: $80
	ld a, e                                          ; $5bbc: $7b
	cp $80                                           ; $5bbd: $fe $80
	ld b, b                                          ; $5bbf: $40
	cp a                                             ; $5bc0: $bf
	ldh [$1f], a                                     ; $5bc1: $e0 $1f
	add a                                            ; $5bc3: $87
	db $fc                                           ; $5bc4: $fc
	rst GetHLinHL                                          ; $5bc5: $cf
	ld hl, sp-$31                                    ; $5bc6: $f8 $cf
	ld hl, sp-$21                                    ; $5bc8: $f8 $df
	pop af                                           ; $5bca: $f1
	rst $38                                          ; $5bcb: $ff
	db $e3                                           ; $5bcc: $e3
	ld a, a                                          ; $5bcd: $7f
	call nz, $c07f                                   ; $5bce: $c4 $7f $c0
	rst $38                                          ; $5bd1: $ff
	add b                                            ; $5bd2: $80
	cp $3f                                           ; $5bd3: $fe $3f
	ld hl, sp+$7f                                    ; $5bd5: $f8 $7f
	ld a, a                                          ; $5bd7: $7f
	rst $38                                          ; $5bd8: $ff
	sub $e3                                          ; $5bd9: $d6 $e3
	ld [hl], e                                       ; $5bdb: $73
	add c                                            ; $5bdc: $81
	db $ed                                           ; $5bdd: $ed
	add b                                            ; $5bde: $80
	ld de, $7cbe                                     ; $5bdf: $11 $be $7c
	ldh [c], a                                       ; $5be2: $e2
	jp $00fc                                         ; $5be3: $c3 $fc $00


	ld e, $fe                                        ; $5be6: $1e $fe
	push af                                          ; $5be8: $f5
	ei                                               ; $5be9: $fb
	add sp, $70                                      ; $5bea: $e8 $70
	ld e, h                                          ; $5bec: $5c
	ldh [$9d], a                                     ; $5bed: $e0 $9d
	cp $ef                                           ; $5bef: $fe $ef
	di                                               ; $5bf1: $f3
	pop de                                           ; $5bf2: $d1
	ldh [$30], a                                     ; $5bf3: $e0 $30
	rra                                              ; $5bf5: $1f
	jr @+$11                                         ; $5bf6: $18 $0f

	adc h                                            ; $5bf8: $8c
	add a                                            ; $5bf9: $87
	ld h, [hl]                                       ; $5bfa: $66
	rlca                                             ; $5bfb: $07
	ld a, [de]                                       ; $5bfc: $1a
	inc bc                                           ; $5bfd: $03
	add a                                            ; $5bfe: $87

jr_026_5bff:
	rlca                                             ; $5bff: $07
	ld bc, $0081                                     ; $5c00: $01 $81 $00
	ldh [$c0], a                                     ; $5c03: $e0 $c0
	rst AddAOntoHL                                          ; $5c05: $ef
	jr jr_026_5bff                                   ; $5c06: $18 $f7

	jr jr_026_5c69                                   ; $5c08: $18 $5f

	or b                                             ; $5c0a: $b0
	rra                                              ; $5c0b: $1f
	ldh a, [$2f]                                     ; $5c0c: $f0 $2f
	ldh a, [$3f]                                     ; $5c0e: $f0 $3f
	ldh [$bf], a                                     ; $5c10: $e0 $bf
	ldh [$df], a                                     ; $5c12: $e0 $df
	ldh [$f9], a                                     ; $5c14: $e0 $f9
	rlca                                             ; $5c16: $07
	ld l, a                                          ; $5c17: $6f
	cp $9d                                           ; $5c18: $fe $9d
	db $fd                                           ; $5c1a: $fd
	inc bc                                           ; $5c1b: $03
	ld l, a                                          ; $5c1c: $6f
	cp $9a                                           ; $5c1d: $fe $9a
	sbc a                                            ; $5c1f: $9f
	ld [hl], b                                       ; $5c20: $70
	sbc a                                            ; $5c21: $9f
	ld [hl], b                                       ; $5c22: $70
	cpl                                              ; $5c23: $2f
	ld [hl], e                                       ; $5c24: $73
	ldh [c], a                                       ; $5c25: $e2
	ld [hl], a                                       ; $5c26: $77
	cp $80                                           ; $5c27: $fe $80
	ld e, a                                          ; $5c29: $5f
	ldh [$e6], a                                     ; $5c2a: $e0 $e6
	ld bc, $03e5                                     ; $5c2c: $01 $e5 $03
	call $ce03                                       ; $5c2f: $cd $03 $ce
	inc bc                                           ; $5c32: $03
	adc d                                            ; $5c33: $8a
	rlca                                             ; $5c34: $07
	sbc d                                            ; $5c35: $9a
	rlca                                             ; $5c36: $07
	dec d                                            ; $5c37: $15
	ld c, $35                                        ; $5c38: $0e $35
	ld c, $f8                                        ; $5c3a: $0e $f8
	add a                                            ; $5c3c: $87
	ld [hl], b                                       ; $5c3d: $70
	adc a                                            ; $5c3e: $8f
	ld h, b                                          ; $5c3f: $60
	sbc a                                            ; $5c40: $9f
	ldh [$1f], a                                     ; $5c41: $e0 $1f
	pop bc                                           ; $5c43: $c1
	ld a, $c3                                        ; $5c44: $3e $c3
	inc a                                            ; $5c46: $3c
	add e                                            ; $5c47: $83
	sub [hl]                                         ; $5c48: $96
	ld a, h                                          ; $5c49: $7c
	rlca                                             ; $5c4a: $07
	ld hl, sp+$7e                                    ; $5c4b: $f8 $7e
	add c                                            ; $5c4d: $81
	cp $01                                           ; $5c4e: $fe $01
	rst $38                                          ; $5c50: $ff
	nop                                              ; $5c51: $00
	ld e, a                                          ; $5c52: $5f
	cp $9b                                           ; $5c53: $fe $9b
	adc b                                            ; $5c55: $88
	rst FarCall                                          ; $5c56: $f7
	and d                                            ; $5c57: $a2
	db $dd                                           ; $5c58: $dd
	ld l, a                                          ; $5c59: $6f
	db $fc                                           ; $5c5a: $fc
	sbc d                                            ; $5c5b: $9a
	ldh [c], a                                       ; $5c5c: $e2
	db $dd                                           ; $5c5d: $dd
	ld c, b                                          ; $5c5e: $48
	rst FarCall                                          ; $5c5f: $f7
	ld h, d                                          ; $5c60: $62
	ld b, e                                          ; $5c61: $43
	inc l                                            ; $5c62: $2c
	add hl, bc                                       ; $5c63: $09
	nop                                              ; $5c64: $00
	rst SubAFromDE                                          ; $5c65: $df
	inc sp                                           ; $5c66: $33
	sbc l                                            ; $5c67: $9d
	ld b, l                                          ; $5c68: $45

jr_026_5c69:
	ld d, a                                          ; $5c69: $57
	db $dd                                           ; $5c6a: $dd
	inc sp                                           ; $5c6b: $33
	db $ec                                           ; $5c6c: $ec
	nop                                              ; $5c6d: $00
	sub l                                            ; $5c6e: $95
	nop                                              ; $5c6f: $00
	rst $38                                          ; $5c70: $ff
	inc b                                            ; $5c71: $04
	ei                                               ; $5c72: $fb
	ld b, b                                          ; $5c73: $40
	cp a                                             ; $5c74: $bf

jr_026_5c75:
	nop                                              ; $5c75: $00
	rst $38                                          ; $5c76: $ff
	db $10                                           ; $5c77: $10
	rst AddAOntoHL                                          ; $5c78: $ef
	ld [hl], a                                       ; $5c79: $77
	ld hl, sp-$63                                    ; $5c7a: $f8 $9d
	ld [bc], a                                       ; $5c7c: $02
	db $fd                                           ; $5c7d: $fd
	cp a                                             ; $5c7e: $bf
	rst $38                                          ; $5c7f: $ff
	rst $38                                          ; $5c80: $ff
	sub e                                            ; $5c81: $93
	ld [$80f7], sp                                   ; $5c82: $08 $f7 $80
	ld a, a                                          ; $5c85: $7f
	ld bc, $48fe                                     ; $5c86: $01 $fe $48
	or a                                             ; $5c89: $b7
	nop                                              ; $5c8a: $00
	rst $38                                          ; $5c8b: $ff
	ld [hl+], a                                      ; $5c8c: $22
	db $dd                                           ; $5c8d: $dd
	cp a                                             ; $5c8e: $bf
	rst $38                                          ; $5c8f: $ff
	rst $38                                          ; $5c90: $ff
	ld a, a                                          ; $5c91: $7f
	and $9b                                          ; $5c92: $e6 $9b
	jr nz, jr_026_5c75                               ; $5c94: $20 $df

	adc b                                            ; $5c96: $88
	ld [hl], a                                       ; $5c97: $77
	ld l, a                                          ; $5c98: $6f
	ldh a, [c]                                       ; $5c99: $f2
	add b                                            ; $5c9a: $80
	dec bc                                           ; $5c9b: $0b
	rst $38                                          ; $5c9c: $ff
	dec e                                            ; $5c9d: $1d
	rst AddAOntoHL                                          ; $5c9e: $ef
	sbc e                                            ; $5c9f: $9b
	ld a, a                                          ; $5ca0: $7f
	dec d                                            ; $5ca1: $15
	rst $38                                          ; $5ca2: $ff
	daa                                              ; $5ca3: $27
	rst $38                                          ; $5ca4: $ff
	dec h                                            ; $5ca5: $25
	rst $38                                          ; $5ca6: $ff
	ld [hl+], a                                      ; $5ca7: $22
	rst $38                                          ; $5ca8: $ff
	ld b, e                                          ; $5ca9: $43
	rst $38                                          ; $5caa: $ff
	or b                                             ; $5cab: $b0
	ld c, a                                          ; $5cac: $4f
	ldh a, [rIF]                                     ; $5cad: $f0 $0f
	ret nc                                           ; $5caf: $d0

	rrca                                             ; $5cb0: $0f
	ret z                                            ; $5cb1: $c8

	rlca                                             ; $5cb2: $07
	ld c, [hl]                                       ; $5cb3: $4e
	add c                                            ; $5cb4: $81
	ld l, a                                          ; $5cb5: $6f
	add b                                            ; $5cb6: $80
	and a                                            ; $5cb7: $a7
	pop bc                                           ; $5cb8: $c1
	add [hl]                                         ; $5cb9: $86
	sbc [hl]                                         ; $5cba: $9e
	ldh [c], a                                       ; $5cbb: $e2

jr_026_5cbc:
	cp a                                             ; $5cbc: $bf
	rst $38                                          ; $5cbd: $ff
	rst $38                                          ; $5cbe: $ff
	add b                                            ; $5cbf: $80
	rlca                                             ; $5cc0: $07
	rst $38                                          ; $5cc1: $ff
	jr jr_026_5cbc                                   ; $5cc2: $18 $f8

	ld h, b                                          ; $5cc4: $60
	ldh [$c7], a                                     ; $5cc5: $e0 $c7
	add e                                            ; $5cc7: $83
	inc c                                            ; $5cc8: $0c
	rrca                                             ; $5cc9: $0f
	inc de                                           ; $5cca: $13
	rra                                              ; $5ccb: $1f
	inc b                                            ; $5ccc: $04
	db $fc                                           ; $5ccd: $fc
	rlca                                             ; $5cce: $07
	rst $38                                          ; $5ccf: $ff
	and $ff                                          ; $5cd0: $e6 $ff
	inc [hl]                                         ; $5cd2: $34
	rra                                              ; $5cd3: $1f
	ld h, h                                          ; $5cd4: $64
	ccf                                              ; $5cd5: $3f
	call nz, $3fff                                   ; $5cd6: $c4 $ff $3f
	rst $38                                          ; $5cd9: $ff
	ldh [$c0], a                                     ; $5cda: $e0 $c0
	nop                                              ; $5cdc: $00
	nop                                              ; $5cdd: $00
	rst $38                                          ; $5cde: $ff
	sbc c                                            ; $5cdf: $99
	rst $38                                          ; $5ce0: $ff
	rrca                                             ; $5ce1: $0f
	ldh a, [$3f]                                     ; $5ce2: $f0 $3f
	ret nz                                           ; $5ce4: $c0

	pop bc                                           ; $5ce5: $c1
	cp a                                             ; $5ce6: $bf
	ret nz                                           ; $5ce7: $c0

	inc a                                            ; $5ce8: $3c
	add b                                            ; $5ce9: $80
	ret nz                                           ; $5cea: $c0

	rst SubAFromBC                                          ; $5ceb: $e7
	ld hl, sp+$00                                    ; $5cec: $f8 $00
	nop                                              ; $5cee: $00
	ret nz                                           ; $5cef: $c0

	ret nz                                           ; $5cf0: $c0

	add hl, sp                                       ; $5cf1: $39
	ld sp, hl                                        ; $5cf2: $f9
	add $3f                                          ; $5cf3: $c6 $3f
	ei                                               ; $5cf5: $fb
	ld b, $3d                                        ; $5cf6: $06 $3d
	ld b, $07                                        ; $5cf8: $06 $07
	inc c                                            ; $5cfa: $0c
	rrc h                                            ; $5cfb: $cb $0c
	add h                                            ; $5cfd: $84
	rst $38                                          ; $5cfe: $ff
	add d                                            ; $5cff: $82
	rst $38                                          ; $5d00: $ff
	add d                                            ; $5d01: $82
	ld a, a                                          ; $5d02: $7f
	jp nz, $e23f                                     ; $5d03: $c2 $3f $e2

	rra                                              ; $5d06: $1f
	ldh [c], a                                       ; $5d07: $e2
	rra                                              ; $5d08: $1f
	sub b                                            ; $5d09: $90
	ldh a, [c]                                       ; $5d0a: $f2
	rrca                                             ; $5d0b: $0f
	pop af                                           ; $5d0c: $f1
	rrca                                             ; $5d0d: $0f
	xor e                                            ; $5d0e: $ab
	ld e, h                                          ; $5d0f: $5c
	xor e                                            ; $5d10: $ab
	ld e, h                                          ; $5d11: $5c
	xor a                                            ; $5d12: $af
	ld e, b                                          ; $5d13: $58
	xor a                                            ; $5d14: $af
	ld e, b                                          ; $5d15: $58
	adc a                                            ; $5d16: $8f
	ld a, b                                          ; $5d17: $78
	sub a                                            ; $5d18: $97
	ld a, e                                          ; $5d19: $7b
	cp $9c                                           ; $5d1a: $fe $9c
	sbc a                                            ; $5d1c: $9f
	ld [hl], b                                       ; $5d1d: $70
	cp $ba                                           ; $5d1e: $fe $ba
	cp $fc                                           ; $5d20: $fe $fc
	db $fc                                           ; $5d22: $fc
	ld sp, hl                                        ; $5d23: $f9
	ld sp, hl                                        ; $5d24: $f9
	di                                               ; $5d25: $f3
	ldh a, [c]                                       ; $5d26: $f2
	add a                                            ; $5d27: $87
	ld bc, $0e35                                     ; $5d28: $01 $35 $0e
	ld l, e                                          ; $5d2b: $6b
	inc e                                            ; $5d2c: $1c
	db $f4                                           ; $5d2d: $f4
	dec de                                           ; $5d2e: $1b
	db $e3                                           ; $5d2f: $e3
	inc a                                            ; $5d30: $3c
	xor a                                            ; $5d31: $af
	ld a, b                                          ; $5d32: $78
	rst SubAFromDE                                          ; $5d33: $df
	ld [hl], b                                       ; $5d34: $70

jr_026_5d35:
	ld a, [hl]                                       ; $5d35: $7e
	pop hl                                           ; $5d36: $e1
	cp h                                             ; $5d37: $bc
	jp Jump_026_7f82                                 ; $5d38: $c3 $82 $7f


	ld a, d                                          ; $5d3b: $7a
	add a                                            ; $5d3c: $87
	cp $03                                           ; $5d3d: $fe $03
	db $fd                                           ; $5d3f: $fd
	ld a, e                                          ; $5d40: $7b
	cp $99                                           ; $5d41: $fe $99
	rst $38                                          ; $5d43: $ff
	ld bc, $817f                                     ; $5d44: $01 $7f $81
	ld a, a                                          ; $5d47: $7f
	add c                                            ; $5d48: $81
	ld b, a                                          ; $5d49: $47
	ld b, b                                          ; $5d4a: $40
	ld [hl], a                                       ; $5d4b: $77
	ld d, $97                                        ; $5d4c: $16 $97
	add h                                            ; $5d4e: $84
	ld a, e                                          ; $5d4f: $7b
	nop                                              ; $5d50: $00
	rst $38                                          ; $5d51: $ff
	ld [bc], a                                       ; $5d52: $02
	db $fd                                           ; $5d53: $fd
	jr nz, jr_026_5d35                               ; $5d54: $20 $df

	ld [hl], a                                       ; $5d56: $77

jr_026_5d57:
	xor $09                                          ; $5d57: $ee $09
	nop                                              ; $5d59: $00
	rst SubAFromDE                                          ; $5d5a: $df
	inc sp                                           ; $5d5b: $33
	sbc l                                            ; $5d5c: $9d
	scf                                              ; $5d5d: $37
	ld [hl], e                                       ; $5d5e: $73
	db $dd                                           ; $5d5f: $dd
	inc sp                                           ; $5d60: $33
	adc [hl]                                         ; $5d61: $8e
	add b                                            ; $5d62: $80
	ld sp, hl                                        ; $5d63: $f9
	reti                                             ; $5d64: $d9


	rst $38                                          ; $5d65: $ff
	inc bc                                           ; $5d66: $03
	ldh a, [$df]                                     ; $5d67: $f0 $df
	ld bc, $03df                                     ; $5d69: $01 $df $03
	sbc h                                            ; $5d6c: $9c
	dec b                                            ; $5d6d: $05
	rlca                                             ; $5d6e: $07
	dec c                                            ; $5d6f: $0d
	reti                                             ; $5d70: $d9


	rst $38                                          ; $5d71: $ff
	sbc l                                            ; $5d72: $9d
	rlca                                             ; $5d73: $07
	ld hl, sp-$25                                    ; $5d74: $f8 $db
	jr nc, jr_026_5d57                               ; $5d76: $30 $df

	rst $38                                          ; $5d78: $ff
	db $db                                           ; $5d79: $db
	rst GetHLinHL                                          ; $5d7a: $cf
	sbc [hl]                                         ; $5d7b: $9e
	ret nz                                           ; $5d7c: $c0

	ld c, e                                          ; $5d7d: $4b
	ret nc                                           ; $5d7e: $d0

	ld [hl], a                                       ; $5d7f: $77
	pop de                                           ; $5d80: $d1
	rst SubAFromDE                                          ; $5d81: $df
	ld [bc], a                                       ; $5d82: $02
	sbc l                                            ; $5d83: $9d
	ld b, $04                                        ; $5d84: $06 $04
	db $dd                                           ; $5d86: $dd
	rst $38                                          ; $5d87: $ff
	sbc $fe                                          ; $5d88: $de $fe
	sub e                                            ; $5d8a: $93
	db $fc                                           ; $5d8b: $fc
	ld d, b                                          ; $5d8c: $50
	ret nz                                           ; $5d8d: $c0

	ret nz                                           ; $5d8e: $c0

	ldh [rSVBK], a                                   ; $5d8f: $e0 $70
	jr nc, @+$1b                                     ; $5d91: $30 $19

	rrca                                             ; $5d93: $0f
	and b                                            ; $5d94: $a0
	jr nz, jr_026_5db7                               ; $5d95: $20 $20

	db $fc                                           ; $5d97: $fc
	ld [hl], a                                       ; $5d98: $77
	ldh [$9b], a                                     ; $5d99: $e0 $9b
	rlca                                             ; $5d9b: $07
	inc c                                            ; $5d9c: $0c
	ldh a, [$80]                                     ; $5d9d: $f0 $80
	db $fc                                           ; $5d9f: $fc
	sbc e                                            ; $5da0: $9b
	inc bc                                           ; $5da1: $03
	nop                                              ; $5da2: $00
	nop                                              ; $5da3: $00
	db $fc                                           ; $5da4: $fc
	sbc $f4                                          ; $5da5: $de $f4
	rst SubAFromDE                                          ; $5da7: $df
	db $e4                                           ; $5da8: $e4
	rst SubAFromDE                                          ; $5da9: $df
	call nz, $0f9e                                   ; $5daa: $c4 $9e $0f
	sbc $1f                                          ; $5dad: $de $1f
	rst SubAFromDE                                          ; $5daf: $df
	ccf                                              ; $5db0: $3f
	rst SubAFromDE                                          ; $5db1: $df
	ld a, a                                          ; $5db2: $7f
	rst SubAFromDE                                          ; $5db3: $df
	ld l, d                                          ; $5db4: $6a
	rst SubAFromDE                                          ; $5db5: $df
	db $ec                                           ; $5db6: $ec

jr_026_5db7:
	rst SubAFromDE                                          ; $5db7: $df
	push hl                                          ; $5db8: $e5
	rst SubAFromDE                                          ; $5db9: $df
	and a                                            ; $5dba: $a7
	db $dd                                           ; $5dbb: $dd
	rla                                              ; $5dbc: $17
	rst SubAFromDE                                          ; $5dbd: $df
	ld e, $df                                        ; $5dbe: $1e $df
	ld e, h                                          ; $5dc0: $5c
	sbc h                                            ; $5dc1: $9c
	rrca                                             ; $5dc2: $0f
	ccf                                              ; $5dc3: $3f
	ld a, a                                          ; $5dc4: $7f
	call c, $9dff                                    ; $5dc5: $dc $ff $9d
	ldh a, [$c0]                                     ; $5dc8: $f0 $c0
	ld l, a                                          ; $5dca: $6f
	call $fe95                                       ; $5dcb: $cd $95 $fe
	ei                                               ; $5dce: $fb
	pop af                                           ; $5dcf: $f1
	db $e3                                           ; $5dd0: $e3
	add $8d                                          ; $5dd1: $c6 $8d
	sbc d                                            ; $5dd3: $9a
	inc a                                            ; $5dd4: $3c
	rra                                              ; $5dd5: $1f
	ld bc, $b47b                                     ; $5dd6: $01 $7b $b4
	ld a, a                                          ; $5dd9: $7f
	or [hl]                                          ; $5dda: $b6
	sub h                                            ; $5ddb: $94
	rlca                                             ; $5ddc: $07
	nop                                              ; $5ddd: $00
	ret nz                                           ; $5dde: $c0

	and b                                            ; $5ddf: $a0
	ld [hl], b                                       ; $5de0: $70
	adc b                                            ; $5de1: $88
	jr c, jr_026_5e58                                ; $5de2: $38 $74

	db $fc                                           ; $5de4: $fc
	rst $38                                          ; $5de5: $ff
	rst $38                                          ; $5de6: $ff
	ld a, e                                          ; $5de7: $7b
	ret c                                            ; $5de8: $d8

	sbc h                                            ; $5de9: $9c
	rst GetHLinHL                                          ; $5dea: $cf
	adc a                                            ; $5deb: $8f
	rlca                                             ; $5dec: $07
	rlca                                             ; $5ded: $07
	jr nc, jr_026_5df9                               ; $5dee: $30 $09

	nop                                              ; $5df0: $00
	sbc $33                                          ; $5df1: $de $33
	sbc l                                            ; $5df3: $9d
	dec [hl]                                         ; $5df4: $35
	ld d, h                                          ; $5df5: $54
	sbc $33                                          ; $5df6: $de $33
	ld l, l                                          ; $5df8: $6d

jr_026_5df9:
	add b                                            ; $5df9: $80
	ld sp, hl                                        ; $5dfa: $f9
	reti                                             ; $5dfb: $d9


	rst $38                                          ; $5dfc: $ff
	inc bc                                           ; $5dfd: $03
	ldh a, [$0b]                                     ; $5dfe: $f0 $0b
	ldh a, [hDisp1_WX]                                     ; $5e00: $f0 $96
	ret                                              ; $5e02: $c9


	and l                                            ; $5e03: $a5
	ld h, l                                          ; $5e04: $65
	ld h, l                                          ; $5e05: $65
	ld d, h                                          ; $5e06: $54
	ld [hl-], a                                      ; $5e07: $32
	inc hl                                           ; $5e08: $23
	ld a, $bf                                        ; $5e09: $3e $bf
	sbc $df                                          ; $5e0b: $de $df
	rst SubAFromDE                                          ; $5e0d: $df
	rst AddAOntoHL                                          ; $5e0e: $ef
	rst SubAFromDE                                          ; $5e0f: $df
	rst $38                                          ; $5e10: $ff
	rst SubAFromDE                                          ; $5e11: $df
	ld e, e                                          ; $5e12: $5b
	sbc c                                            ; $5e13: $99
	dec l                                            ; $5e14: $2d
	cpl                                              ; $5e15: $2f
	sub h                                            ; $5e16: $94

jr_026_5e17:
	ld hl, sp-$7f                                    ; $5e17: $f8 $81
	ld bc, $ffd9                                     ; $5e19: $01 $d9 $ff
	adc d                                            ; $5e1c: $8a
	ld h, b                                          ; $5e1d: $60
	or c                                             ; $5e1e: $b1
	rst SubAFromDE                                          ; $5e1f: $df
	cp h                                             ; $5e20: $bc
	add c                                            ; $5e21: $81
	add e                                            ; $5e22: $83
	add h                                            ; $5e23: $84
	ret c                                            ; $5e24: $d8

	add b                                            ; $5e25: $80
	ret nz                                           ; $5e26: $c0

	db $e3                                           ; $5e27: $e3
	rst $38                                          ; $5e28: $ff
	cp $fc                                           ; $5e29: $fe $fc
	ld hl, sp-$60                                    ; $5e2b: $f8 $a0
	halt                                             ; $5e2d: $76
	call c, $e078                                    ; $5e2e: $dc $78 $e0
	ret nz                                           ; $5e31: $c0

	sbc $01                                          ; $5e32: $de $01
	sbc h                                            ; $5e34: $9c
	jr c, jr_026_5e17                                ; $5e35: $38 $e0

	add b                                            ; $5e37: $80
	db $fc                                           ; $5e38: $fc
	rst SubAFromDE                                          ; $5e39: $df
	db $f4                                           ; $5e3a: $f4
	db $db                                           ; $5e3b: $db
	db $fc                                           ; $5e3c: $fc
	db $dd                                           ; $5e3d: $dd
	rra                                              ; $5e3e: $1f
	db $dd                                           ; $5e3f: $dd
	rrca                                             ; $5e40: $0f
	sub l                                            ; $5e41: $95
	inc hl                                           ; $5e42: $23
	inc sp                                           ; $5e43: $33
	add hl, hl                                       ; $5e44: $29
	ld l, c                                          ; $5e45: $69
	ld l, a                                          ; $5e46: $6f

jr_026_5e47:
	ld l, e                                          ; $5e47: $6b
	ld l, d                                          ; $5e48: $6a
	ld l, d                                          ; $5e49: $6a
	add hl, bc                                       ; $5e4a: $09
	add hl, bc                                       ; $5e4b: $09
	sbc $13                                          ; $5e4c: $de $13
	sbc $17                                          ; $5e4e: $de $17
	sub e                                            ; $5e50: $93
	jr nc, jr_026_5e63                               ; $5e51: $30 $10

	jr nz, @+$62                                     ; $5e53: $20 $60

	jr nz, jr_026_5e47                               ; $5e55: $20 $f0

	rrca                                             ; $5e57: $0f

jr_026_5e58:
	nop                                              ; $5e58: $00
	rst SubAFromDE                                          ; $5e59: $df
	rst $38                                          ; $5e5a: $ff
	rst $38                                          ; $5e5b: $ff
	cp a                                             ; $5e5c: $bf
	ld e, e                                          ; $5e5d: $5b
	add b                                            ; $5e5e: $80
	sbc [hl]                                         ; $5e5f: $9e
	ldh [$03], a                                     ; $5e60: $e0 $03
	ld h, b                                          ; $5e62: $60

jr_026_5e63:
	dec hl                                           ; $5e63: $2b
	ldh a, [$09]                                     ; $5e64: $f0 $09
	nop                                              ; $5e66: $00
	sbc $33                                          ; $5e67: $de $33
	sbc l                                            ; $5e69: $9d
	dec [hl]                                         ; $5e6a: $35
	ld d, h                                          ; $5e6b: $54
	sbc $33                                          ; $5e6c: $de $33
	ld [hl], l                                       ; $5e6e: $75
	add b                                            ; $5e6f: $80
	ld sp, hl                                        ; $5e70: $f9
	reti                                             ; $5e71: $d9


	rst $38                                          ; $5e72: $ff
	inc bc                                           ; $5e73: $03
	ldh a, [rWX]                                     ; $5e74: $f0 $4b
	ldh a, [$9e]                                     ; $5e76: $f0 $9e
	ld [bc], a                                       ; $5e78: $02
	call c, Call_026_5f01                            ; $5e79: $dc $01 $5f
	ldh a, [$de]                                     ; $5e7c: $f0 $de
	sub e                                            ; $5e7e: $93
	sbc d                                            ; $5e7f: $9a
	sub d                                            ; $5e80: $92
	adc d                                            ; $5e81: $8a
	ld c, d                                          ; $5e82: $4a
	jp z, $dcca                                      ; $5e83: $ca $ca $dc

	ld a, a                                          ; $5e86: $7f
	sbc $bf                                          ; $5e87: $de $bf
	adc d                                            ; $5e89: $8a
	rst $38                                          ; $5e8a: $ff
	ld a, a                                          ; $5e8b: $7f
	cp a                                             ; $5e8c: $bf
	rst SubAFromDE                                          ; $5e8d: $df
	rst AddAOntoHL                                          ; $5e8e: $ef
	rst FarCall                                          ; $5e8f: $f7

jr_026_5e90:
	ei                                               ; $5e90: $fb
	rst $38                                          ; $5e91: $ff
	nop                                              ; $5e92: $00
	add b                                            ; $5e93: $80
	ret nz                                           ; $5e94: $c0

	ldh [$f0], a                                     ; $5e95: $e0 $f0
	ld hl, sp-$04                                    ; $5e97: $f8 $fc
	cp $5c                                           ; $5e99: $fe $5c
	cp h                                             ; $5e9b: $bc
	ldh [$f0], a                                     ; $5e9c: $e0 $f0
	ldh a, [$de]                                     ; $5e9e: $f0 $de
	ldh [$9b], a                                     ; $5ea0: $e0 $9b
	cp $40                                           ; $5ea2: $fe $40
	nop                                              ; $5ea4: $00
	jr @-$06                                         ; $5ea5: $18 $f8

	sbc h                                            ; $5ea7: $9c
	ld bc, $1c06                                     ; $5ea8: $01 $06 $1c
	ld l, a                                          ; $5eab: $6f
	ld hl, sp-$67                                    ; $5eac: $f8 $99
	inc bc                                           ; $5eae: $03
	rrca                                             ; $5eaf: $0f
	inc c                                            ; $5eb0: $0c
	inc d                                            ; $5eb1: $14
	inc [hl]                                         ; $5eb2: $34
	ld [hl], h                                       ; $5eb3: $74
	sbc $f4                                          ; $5eb4: $de $f4
	sbc c                                            ; $5eb6: $99
	db $fc                                           ; $5eb7: $fc
	rrca                                             ; $5eb8: $0f
	rra                                              ; $5eb9: $1f
	ccf                                              ; $5eba: $3f
	ld a, a                                          ; $5ebb: $7f
	rst SubAFromDE                                          ; $5ebc: $df
	sbc $1f                                          ; $5ebd: $de $1f
	sub d                                            ; $5ebf: $92
	add b                                            ; $5ec0: $80
	and b                                            ; $5ec1: $a0
	and b                                            ; $5ec2: $a0
	and e                                            ; $5ec3: $a3
	add c                                            ; $5ec4: $81
	add b                                            ; $5ec5: $80
	nop                                              ; $5ec6: $00
	inc hl                                           ; $5ec7: $23
	ld a, [hl+]                                      ; $5ec8: $2a
	ld a, [bc]                                       ; $5ec9: $0a
	ld a, [bc]                                       ; $5eca: $0a
	ld [$de08], sp                                   ; $5ecb: $08 $08 $de
	add hl, bc                                       ; $5ece: $09
	rst SubAFromDE                                          ; $5ecf: $df
	call z, $d494                                    ; $5ed0: $cc $94 $d4
	sbc b                                            ; $5ed3: $98
	sbc b                                            ; $5ed4: $98
	xor b                                            ; $5ed5: $a8
	or b                                             ; $5ed6: $b0
	jr nc, jr_026_5e90                               ; $5ed7: $30 $b7

	or a                                             ; $5ed9: $b7
	xor a                                            ; $5eda: $af
	rst AddAOntoHL                                          ; $5edb: $ef
	rst AddAOntoHL                                          ; $5edc: $ef
	sbc $df                                          ; $5edd: $de $df
	inc bc                                           ; $5edf: $03
	ld d, b                                          ; $5ee0: $50
	dec bc                                           ; $5ee1: $0b
	ldh a, [$09]                                     ; $5ee2: $f0 $09
	nop                                              ; $5ee4: $00
	sbc $33                                          ; $5ee5: $de $33
	sbc l                                            ; $5ee7: $9d
	ld d, l                                          ; $5ee8: $55
	ld d, a                                          ; $5ee9: $57
	sbc $33                                          ; $5eea: $de $33
	ld [hl], b                                       ; $5eec: $70
	add b                                            ; $5eed: $80
	ld sp, hl                                        ; $5eee: $f9
	reti                                             ; $5eef: $d9


	rst $38                                          ; $5ef0: $ff
	inc bc                                           ; $5ef1: $03
	ldh a, [rWX]                                     ; $5ef2: $f0 $4b
	ldh a, [$d9]                                     ; $5ef4: $f0 $d9
	inc bc                                           ; $5ef6: $03
	reti                                             ; $5ef7: $d9


	cp $8a                                           ; $5ef8: $fe $8a
	or c                                             ; $5efa: $b1
	sbc l                                            ; $5efb: $9d
	sbc a                                            ; $5efc: $9f
	sbc a                                            ; $5efd: $9f
	sub a                                            ; $5efe: $97
	sub a                                            ; $5eff: $97
	rla                                              ; $5f00: $17

Call_026_5f01:
	rla                                              ; $5f01: $17
	rst $38                                          ; $5f02: $ff
	rst $38                                          ; $5f03: $ff
	ei                                               ; $5f04: $fb
	ld hl, sp-$04                                    ; $5f05: $f8 $fc
	db $fc                                           ; $5f07: $fc
	cp $fe                                           ; $5f08: $fe $fe
	ld [hl], c                                       ; $5f0a: $71
	sbc b                                            ; $5f0b: $98
	ret nz                                           ; $5f0c: $c0

	inc e                                            ; $5f0d: $1c
	cp $db                                           ; $5f0e: $fe $db
	rst $38                                          ; $5f10: $ff
	sbc l                                            ; $5f11: $9d
	db $e3                                           ; $5f12: $e3
	ld bc, $dffe                                     ; $5f13: $01 $fe $df
	db $fc                                           ; $5f16: $fc
	adc l                                            ; $5f17: $8d
	ld h, [hl]                                       ; $5f18: $66
	ld [hl], d                                       ; $5f19: $72
	ret nc                                           ; $5f1a: $d0

	ld [hl], b                                       ; $5f1b: $70
	and b                                            ; $5f1c: $a0
	ldh [$cc], a                                     ; $5f1d: $e0 $cc
	call nz, $80c2                                   ; $5f1f: $c4 $c2 $80
	ldh [$c0], a                                     ; $5f22: $e0 $c0
	ld h, b                                          ; $5f24: $60
	nop                                              ; $5f25: $00
	rlca                                             ; $5f26: $07
	nop                                              ; $5f27: $00
	ld a, a                                          ; $5f28: $7f
	ld e, $f5                                        ; $5f29: $1e $f5
	sbc [hl]                                         ; $5f2b: $9e
	pop af                                           ; $5f2c: $f1
	sbc $01                                          ; $5f2d: $de $01
	rst SubAFromDE                                          ; $5f2f: $df
	ld [bc], a                                       ; $5f30: $02
	sbc l                                            ; $5f31: $9d
	ld b, $04                                        ; $5f32: $06 $04
	db $dd                                           ; $5f34: $dd
	ld bc, $03df                                     ; $5f35: $01 $df $03
	rst SubAFromDE                                          ; $5f38: $df
	rlca                                             ; $5f39: $07
	rst SubAFromDE                                          ; $5f3a: $df
	ld d, l                                          ; $5f3b: $55
	rst SubAFromDE                                          ; $5f3c: $df
	push de                                          ; $5f3d: $d5
	sbc c                                            ; $5f3e: $99
	call nc, $c0c4                                   ; $5f3f: $d4 $c4 $c0
	add b                                            ; $5f42: $80
	xor d                                            ; $5f43: $aa
	xor d                                            ; $5f44: $aa
	db $db                                           ; $5f45: $db
	ld a, [hl+]                                      ; $5f46: $2a
	adc a                                            ; $5f47: $8f
	db $d3                                           ; $5f48: $d3
	sub l                                            ; $5f49: $95
	or l                                             ; $5f4a: $b5
	or [hl]                                          ; $5f4b: $b6
	and [hl]                                         ; $5f4c: $a6
	and [hl]                                         ; $5f4d: $a6
	xor d                                            ; $5f4e: $aa
	call z, $ebad                                    ; $5f4f: $cc $ad $eb
	set 1, e                                         ; $5f52: $cb $cb
	db $db                                           ; $5f54: $db
	db $db                                           ; $5f55: $db
	rst SubAFromHL                                          ; $5f56: $d7
	or a                                             ; $5f57: $b7
	inc bc                                           ; $5f58: $03
	ld d, b                                          ; $5f59: $50
	dec bc                                           ; $5f5a: $0b

jr_026_5f5b:
	ldh a, [$0a]                                     ; $5f5b: $f0 $0a
	nop                                              ; $5f5d: $00
	rst SubAFromDE                                          ; $5f5e: $df
	inc sp                                           ; $5f5f: $33
	sbc h                                            ; $5f60: $9c
	inc [hl]                                         ; $5f61: $34
	ld d, l                                          ; $5f62: $55
	ld d, a                                          ; $5f63: $57
	sbc $33                                          ; $5f64: $de $33
	adc c                                            ; $5f66: $89
	add b                                            ; $5f67: $80
	ld sp, hl                                        ; $5f68: $f9
	reti                                             ; $5f69: $d9


	rst $38                                          ; $5f6a: $ff
	inc bc                                           ; $5f6b: $03
	ldh a, [rWX]                                     ; $5f6c: $f0 $4b
	ldh a, [$97]                                     ; $5f6e: $f0 $97
	jr z, jr_026_5f96                                ; $5f70: $28 $24

	inc b                                            ; $5f72: $04
	ld [bc], a                                       ; $5f73: $02
	inc bc                                           ; $5f74: $03
	inc bc                                           ; $5f75: $03
	ld [bc], a                                       ; $5f76: $02
	ld [bc], a                                       ; $5f77: $02
	reti                                             ; $5f78: $d9


	rst $38                                          ; $5f79: $ff
	rst SubAFromDE                                          ; $5f7a: $df
	db $10                                           ; $5f7b: $10
	rst SubAFromDE                                          ; $5f7c: $df
	ld [$049b], sp                                   ; $5f7d: $08 $9b $04
	add [hl]                                         ; $5f80: $86
	jp $d9a3                                         ; $5f81: $c3 $a3 $d9


	rst $38                                          ; $5f84: $ff
	sub a                                            ; $5f85: $97
	pop bc                                           ; $5f86: $c1
	ld h, c                                          ; $5f87: $61
	ld h, c                                          ; $5f88: $61
	ld [hl], c                                       ; $5f89: $71
	ld [hl], b                                       ; $5f8a: $70
	jr c, jr_026_5fc9                                ; $5f8b: $38 $3c

	cp $de                                           ; $5f8d: $fe $de
	rst $38                                          ; $5f8f: $ff
	add b                                            ; $5f90: $80
	rst SubAFromDE                                          ; $5f91: $df
	rst $38                                          ; $5f92: $ff
	rst AddAOntoHL                                          ; $5f93: $ef
	rst AddAOntoHL                                          ; $5f94: $ef
	rst FarCall                                          ; $5f95: $f7

jr_026_5f96:
	set 1, c                                         ; $5f96: $cb $c9
	ret z                                            ; $5f98: $c8

	add sp, -$14                                     ; $5f99: $e8 $ec
	db $e4                                           ; $5f9b: $e4
	db $f4                                           ; $5f9c: $f4
	db $f4                                           ; $5f9d: $f4
	ld a, e                                          ; $5f9e: $7b
	ld a, c                                          ; $5f9f: $79
	ld a, b                                          ; $5fa0: $78
	jr c, jr_026_5f5b                                ; $5fa1: $38 $b8

	cp h                                             ; $5fa3: $bc
	sbc h                                            ; $5fa4: $9c
	sbc h                                            ; $5fa5: $9c
	ld a, $77                                        ; $5fa6: $3e $77
	rst SubAFromDE                                          ; $5fa8: $df
	rst $38                                          ; $5fa9: $ff
	or a                                             ; $5faa: $b7
	ld h, a                                          ; $5fab: $67
	dec h                                            ; $5fac: $25
	ld [bc], a                                       ; $5fad: $02
	ret nz                                           ; $5fae: $c0

	adc a                                            ; $5faf: $8f
	add b                                            ; $5fb0: $80
	ccf                                              ; $5fb1: $3f
	ld a, d                                          ; $5fb2: $7a
	ld h, a                                          ; $5fb3: $67
	rlca                                             ; $5fb4: $07
	dec b                                            ; $5fb5: $05
	inc bc                                           ; $5fb6: $03
	inc bc                                           ; $5fb7: $03
	pop af                                           ; $5fb8: $f1
	cp $38                                           ; $5fb9: $fe $38
	inc a                                            ; $5fbb: $3c
	xor b                                            ; $5fbc: $a8
	jr nz, jr_026_6020                               ; $5fbd: $20 $61

	ld bc, $fce0                                     ; $5fbf: $01 $e0 $fc
	ld a, b                                          ; $5fc2: $78
	jr z, @-$5e                                      ; $5fc3: $28 $a0

	ldh [$c0], a                                     ; $5fc5: $e0 $c0
	ld e, c                                          ; $5fc7: $59
	xor h                                            ; $5fc8: $ac

jr_026_5fc9:
	rst SubAFromBC                                          ; $5fc9: $e7
	or c                                             ; $5fca: $b1
	sub l                                            ; $5fcb: $95
	add l                                            ; $5fcc: $85
	push de                                          ; $5fcd: $d5
	push de                                          ; $5fce: $d5
	ldh a, [c]                                       ; $5fcf: $f2
	adc e                                            ; $5fd0: $8b
	ld sp, hl                                        ; $5fd1: $f9
	cp $ff                                           ; $5fd2: $fe $ff
	ld a, [$aafa]                                    ; $5fd4: $fa $fa $aa
	xor d                                            ; $5fd7: $aa
	ld l, l                                          ; $5fd8: $6d
	ld l, c                                          ; $5fd9: $69
	ld bc, $7fc3                                     ; $5fda: $01 $c3 $7f
	ld e, d                                          ; $5fdd: $5a
	ld e, d                                          ; $5fde: $5a
	db $db                                           ; $5fdf: $db
	sub d                                            ; $5fe0: $92
	sub [hl]                                         ; $5fe1: $96
	ld a, [hl]                                       ; $5fe2: $7e
	add h                                            ; $5fe3: $84
	db $fc                                           ; $5fe4: $fc
	sbc $a5                                          ; $5fe5: $de $a5
	sbc $40                                          ; $5fe7: $de $40
	db $dd                                           ; $5fe9: $dd
	add b                                            ; $5fea: $80
	inc bc                                           ; $5feb: $03
	ld d, b                                          ; $5fec: $50
	daa                                              ; $5fed: $27
	ldh a, [$09]                                     ; $5fee: $f0 $09
	nop                                              ; $5ff0: $00
	sbc $33                                          ; $5ff1: $de $33
	sbc l                                            ; $5ff3: $9d
	ld [hl], a                                       ; $5ff4: $77
	ld d, a                                          ; $5ff5: $57
	sbc $33                                          ; $5ff6: $de $33
	and e                                            ; $5ff8: $a3
	add b                                            ; $5ff9: $80
	rst SubAFromDE                                          ; $5ffa: $df
	ld [bc], a                                       ; $5ffb: $02
	ei                                               ; $5ffc: $fb
	reti                                             ; $5ffd: $d9


	rst $38                                          ; $5ffe: $ff
	ld sp, hl                                        ; $5fff: $f9
	reti                                             ; $6000: $d9


jr_026_6001:
	rst $38                                          ; $6001: $ff
	sbc [hl]                                         ; $6002: $9e
	jr nz, jr_026_6050                               ; $6003: $20 $4b

	ldh a, [$9e]                                     ; $6005: $f0 $9e
	ld [bc], a                                       ; $6007: $02
	sbc $01                                          ; $6008: $de $01
	ld d, a                                          ; $600a: $57
	ldh a, [hDisp1_BGP]                                     ; $600b: $f0 $92
	ld c, e                                          ; $600d: $4b
	dec hl                                           ; $600e: $2b
	dec l                                            ; $600f: $2d
	dec h                                            ; $6010: $25
	or h                                             ; $6011: $b4
	or b                                             ; $6012: $b0
	xor b                                            ; $6013: $a8
	ld l, b                                          ; $6014: $68
	db $f4                                           ; $6015: $f4
	db $f4                                           ; $6016: $f4
	ldh a, [c]                                       ; $6017: $f2
	ld a, [$defb]                                    ; $6018: $fa $fb $de
	rst $38                                          ; $601b: $ff
	db $dd                                           ; $601c: $dd
	ld b, a                                          ; $601d: $47
	rst SubAFromDE                                          ; $601e: $df
	and d                                            ; $601f: $a2

jr_026_6020:
	sbc l                                            ; $6020: $9d
	ld [hl+], a                                      ; $6021: $22
	jr nz, jr_026_6001                               ; $6022: $20 $dd

	ld sp, hl                                        ; $6024: $f9
	rst SubAFromDE                                          ; $6025: $df
	ld a, l                                          ; $6026: $7d
	adc d                                            ; $6027: $8a
	db $fd                                           ; $6028: $fd
	rst $38                                          ; $6029: $ff
	jr z, jr_026_6058                                ; $602a: $28 $2c

	inc [hl]                                         ; $602c: $34
	inc d                                            ; $602d: $14
	sub [hl]                                         ; $602e: $96
	sbc e                                            ; $602f: $9b
	adc e                                            ; $6030: $8b
	set 2, c                                         ; $6031: $cb $d1
	pop de                                           ; $6033: $d1
	ret                                              ; $6034: $c9


	jp hl                                            ; $6035: $e9


	jp hl                                            ; $6036: $e9


	push hl                                          ; $6037: $e5
	push af                                          ; $6038: $f5
	push af                                          ; $6039: $f5
	inc bc                                           ; $603a: $03
	add e                                            ; $603b: $83
	add e                                            ; $603c: $83
	sbc $8b                                          ; $603d: $de $8b
	rst SubAFromDE                                          ; $603f: $df
	adc a                                            ; $6040: $8f
	jp c, $9efe                                      ; $6041: $da $fe $9e

	rst $38                                          ; $6044: $ff
	db $db                                           ; $6045: $db
	ld bc, $ff9d                                     ; $6046: $01 $9d $ff
	ld a, a                                          ; $6049: $7f
	ld l, e                                          ; $604a: $6b
	sbc d                                            ; $604b: $9a
	add b                                            ; $604c: $80
	cp $b2                                           ; $604d: $fe $b2
	ldh a, [c]                                       ; $604f: $f2

jr_026_6050:
	ldh a, [c]                                       ; $6050: $f2
	reti                                             ; $6051: $d9


	reti                                             ; $6052: $d9


	adc h                                            ; $6053: $8c
	db $e4                                           ; $6054: $e4
	ld b, $ff                                        ; $6055: $06 $ff
	rst SubAFromDE                                          ; $6057: $df

jr_026_6058:
	rst SubAFromDE                                          ; $6058: $df
	adc a                                            ; $6059: $8f
	adc a                                            ; $605a: $8f
	rlca                                             ; $605b: $07
	rst SubAFromBC                                          ; $605c: $e7
	inc bc                                           ; $605d: $03
	call $d1b5                                       ; $605e: $cd $b5 $d1
	add sp, $72                                      ; $6061: $e8 $72
	cp [hl]                                          ; $6063: $be
	rst JumpTable                                          ; $6064: $c7
	ld [hl], e                                       ; $6065: $73
	ld [hl-], a                                      ; $6066: $32
	ld c, d                                          ; $6067: $4a
	ld h, $31                                        ; $6068: $26 $31
	sbc h                                            ; $606a: $9c
	rst GetHLinHL                                          ; $606b: $cf
	sbc e                                            ; $606c: $9b
	jp hl                                            ; $606d: $e9


	db $e4                                           ; $606e: $e4
	ld c, l                                          ; $606f: $4d

Jump_026_6070:
	ld c, l                                          ; $6070: $4d
	sbc $2d                                          ; $6071: $de $2d
	sub h                                            ; $6073: $94
	ld b, c                                          ; $6074: $41
	ldh a, [rVBK]                                    ; $6075: $f0 $4f
	sub d                                            ; $6077: $92
	sub d                                            ; $6078: $92
	jp nc, $52d2                                     ; $6079: $d2 $d2 $52

	add [hl]                                         ; $607c: $86
	ld hl, sp-$41                                    ; $607d: $f8 $bf
	db $db                                           ; $607f: $db
	and b                                            ; $6080: $a0
	sbc l                                            ; $6081: $9d
	ld h, b                                          ; $6082: $60
	ret nz                                           ; $6083: $c0

	db $db                                           ; $6084: $db
	ld a, a                                          ; $6085: $7f
	ccf                                              ; $6086: $3f
	ld b, b                                          ; $6087: $40
	sbc b                                            ; $6088: $98
	ld b, $0e                                        ; $6089: $06 $0e
	dec c                                            ; $608b: $0d
	add hl, bc                                       ; $608c: $09
	inc bc                                           ; $608d: $03
	rlca                                             ; $608e: $07
	ld b, $63                                        ; $608f: $06 $63
	ldh a, [$9b]                                     ; $6091: $f0 $9b
	ret nz                                           ; $6093: $c0

	ldh [$f0], a                                     ; $6094: $e0 $f0
	jr nc, jr_026_610f                               ; $6096: $30 $77

Call_026_6098:
	inc l                                            ; $6098: $2c
	reti                                             ; $6099: $d9


	rst $38                                          ; $609a: $ff
	ld a, [bc]                                       ; $609b: $0a
	nop                                              ; $609c: $00
	sbc $33                                          ; $609d: $de $33
	sbc d                                            ; $609f: $9a
	inc [hl]                                         ; $60a0: $34
	ld d, a                                          ; $60a1: $57
	inc sp                                           ; $60a2: $33
	ld [hl-], a                                      ; $60a3: $32
	inc hl                                           ; $60a4: $23
	pop af                                           ; $60a5: $f1
	add b                                            ; $60a6: $80
	sub d                                            ; $60a7: $92
	ld a, a                                          ; $60a8: $7f
	ld l, a                                          ; $60a9: $6f
	xor $dd                                          ; $60aa: $ee $dd
	cp e                                             ; $60ac: $bb
	dec sp                                           ; $60ad: $3b
	inc de                                           ; $60ae: $13
	inc bc                                           ; $60af: $03
	db $fc                                           ; $60b0: $fc
	sub b                                            ; $60b1: $90
	ld de, $7f33                                     ; $60b2: $11 $33 $7f
	sbc $ff                                          ; $60b5: $de $ff
	ld a, a                                          ; $60b7: $7f
	db $fc                                           ; $60b8: $fc
	sub h                                            ; $60b9: $94
	db $fd                                           ; $60ba: $fd
	ei                                               ; $60bb: $fb
	or a                                             ; $60bc: $b7
	add a                                            ; $60bd: $87
	ld b, $00                                        ; $60be: $06 $00
	ld sp, hl                                        ; $60c0: $f9
	pop hl                                           ; $60c1: $e1
	jp $efc7                                         ; $60c2: $c3 $c7 $ef


	sbc $ff                                          ; $60c5: $de $ff
	sub d                                            ; $60c7: $92
	db $fc                                           ; $60c8: $fc
	ld a, h                                          ; $60c9: $7c
	ld hl, sp-$10                                    ; $60ca: $f8 $f0
	db $fc                                           ; $60cc: $fc
	inc a                                            ; $60cd: $3c
	ld [hl], $30                                     ; $60ce: $36 $30
	add a                                            ; $60d0: $87
	adc a                                            ; $60d1: $8f
	daa                                              ; $60d2: $27
	ccf                                              ; $60d3: $3f
	sbc a                                            ; $60d4: $9f
	sbc $ff                                          ; $60d5: $de $ff
	sbc d                                            ; $60d7: $9a
	jp z, $8ece                                      ; $60d8: $ca $ce $8e

	ld c, $0a                                        ; $60db: $0e $0a
	sbc $02                                          ; $60dd: $de $02
	rst SubAFromDE                                          ; $60df: $df
	ccf                                              ; $60e0: $3f
	sbc h                                            ; $60e1: $9c
	ld a, e                                          ; $60e2: $7b
	di                                               ; $60e3: $f3
	rst FarCall                                          ; $60e4: $f7
	sbc $ff                                          ; $60e5: $de $ff
	sbc h                                            ; $60e7: $9c
	ld e, c                                          ; $60e8: $59
	ld e, e                                          ; $60e9: $5b
	ld e, e                                          ; $60ea: $5b
	sbc $5e                                          ; $60eb: $de $5e
	sbc l                                            ; $60ed: $9d
	ld c, d                                          ; $60ee: $4a
	ld c, e                                          ; $60ef: $4b
	sbc $e0                                          ; $60f0: $de $e0
	sbc $e1                                          ; $60f2: $de $e1
	sbc h                                            ; $60f4: $9c
	push af                                          ; $60f5: $f5
	db $f4                                           ; $60f6: $f4
	ld h, e                                          ; $60f7: $63
	sbc $42                                          ; $60f8: $de $42
	sbc $4b                                          ; $60fa: $de $4b
	sbc l                                            ; $60fc: $9d
	ld b, e                                          ; $60fd: $43
	sub b                                            ; $60fe: $90
	sbc $b1                                          ; $60ff: $de $b1
	sbc $f1                                          ; $6101: $de $f1
	sbc c                                            ; $6103: $99
	ld sp, hl                                        ; $6104: $f9
	ld b, b                                          ; $6105: $40
	ld [bc], a                                       ; $6106: $02
	ld [de], a                                       ; $6107: $12
	ld [de], a                                       ; $6108: $12
	ld d, d                                          ; $6109: $52
	sbc $0a                                          ; $610a: $de $0a
	call c, $de81                                    ; $610c: $dc $81 $de

jr_026_610f:
	pop de                                           ; $610f: $d1
	sub l                                            ; $6110: $95
	jr nz, jr_026_613d                               ; $6111: $20 $2a

	jr z, jr_026_613e                                ; $6113: $28 $29

	ld l, l                                          ; $6115: $6d
	ld h, l                                          ; $6116: $65
	ld b, l                                          ; $6117: $45
	ld b, l                                          ; $6118: $45
	sbc c                                            ; $6119: $99
	sub c                                            ; $611a: $91
	sbc $93                                          ; $611b: $de $93
	sub c                                            ; $611d: $91
	sbc e                                            ; $611e: $9b
	cp e                                             ; $611f: $bb
	cp e                                             ; $6120: $bb
	db $db                                           ; $6121: $db
	call $8785                                       ; $6122: $cd $85 $87
	add a                                            ; $6125: $87
	add e                                            ; $6126: $83
	ld [bc], a                                       ; $6127: $02
	nop                                              ; $6128: $00
	rst SubAFromHL                                          ; $6129: $d7
	add e                                            ; $612a: $83
	add e                                            ; $612b: $83
	call c, $8001                                    ; $612c: $dc $01 $80
	add d                                            ; $612f: $82
	db $e3                                           ; $6130: $e3
	pop bc                                           ; $6131: $c1
	ld c, c                                          ; $6132: $49
	ld d, d                                          ; $6133: $52
	ld [hl+], a                                      ; $6134: $22
	xor a                                            ; $6135: $af
	xor l                                            ; $6136: $ad
	ld c, h                                          ; $6137: $4c
	ld c, h                                          ; $6138: $4c
	ld l, [hl]                                       ; $6139: $6e
	and $e5                                          ; $613a: $e6 $e5
	push af                                          ; $613c: $f5

jr_026_613d:
	db $f4                                           ; $613d: $f4

jr_026_613e:
	or $23                                           ; $613e: $f6 $23
	ld b, e                                          ; $6140: $43
	add hl, bc                                       ; $6141: $09
	sub c                                            ; $6142: $91
	add c                                            ; $6143: $81
	ld h, h                                          ; $6144: $64
	inc l                                            ; $6145: $2c
	adc l                                            ; $6146: $8d
	ld c, h                                          ; $6147: $4c
	inc l                                            ; $6148: $2c
	ld h, $26                                        ; $6149: $26 $26
	ld [hl], $93                                     ; $614b: $36 $93
	db $d3                                           ; $614d: $d3
	sub [hl]                                         ; $614e: $96
	ld [hl], d                                       ; $614f: $72
	ld d, h                                          ; $6150: $54
	ld d, h                                          ; $6151: $54
	inc d                                            ; $6152: $14
	dec b                                            ; $6153: $05
	adc l                                            ; $6154: $8d
	xor l                                            ; $6155: $ad
	xor l                                            ; $6156: $ad
	ld c, l                                          ; $6157: $4d
	sbc $22                                          ; $6158: $de $22
	rst SubAFromDE                                          ; $615a: $df
	ld [hl-], a                                      ; $615b: $32
	rst SubAFromDE                                          ; $615c: $df
	ld [de], a                                       ; $615d: $12
	sbc e                                            ; $615e: $9b
	sub d                                            ; $615f: $92
	cpl                                              ; $6160: $2f
	daa                                              ; $6161: $27
	inc h                                            ; $6162: $24
	call c, $d720                                    ; $6163: $dc $20 $d7
	rst $38                                          ; $6166: $ff
	adc a                                            ; $6167: $8f
	ld l, [hl]                                       ; $6168: $6e
	dec b                                            ; $6169: $05
	rrca                                             ; $616a: $0f
	rra                                              ; $616b: $1f
	rrca                                             ; $616c: $0f
	ld b, $63                                        ; $616d: $06 $63
	rst SubAFromBC                                          ; $616f: $e7
	rst FarCall                                          ; $6170: $f7
	rst $38                                          ; $6171: $ff
	ldh a, [$e0]                                     ; $6172: $f0 $e0
	ldh a, [$f9]                                     ; $6174: $f0 $f9
	rst $38                                          ; $6176: $ff
	dec h                                            ; $6177: $25
	ld a, e                                          ; $6178: $7b
	inc a                                            ; $6179: $3c
	add h                                            ; $617a: $84
	xor a                                            ; $617b: $af
	rlca                                             ; $617c: $07
	dec b                                            ; $617d: $05
	sbc $ff                                          ; $617e: $de $ff
	rst SubAFromBC                                          ; $6180: $e7
	add e                                            ; $6181: $83
	rlca                                             ; $6182: $07
	ld e, [hl]                                       ; $6183: $5e
	cp $fe                                           ; $6184: $fe $fe
	rst AddAOntoHL                                          ; $6186: $ef
	rst $38                                          ; $6187: $ff
	ld sp, hl                                        ; $6188: $f9
	ld e, $bf                                        ; $6189: $1e $bf
	ld sp, hl                                        ; $618b: $f9
	ld hl, sp-$20                                    ; $618c: $f8 $e0
	inc de                                           ; $618e: $13
	sbc a                                            ; $618f: $9f
	rst AddAOntoHL                                          ; $6190: $ef
	rst SubAFromBC                                          ; $6191: $e7
	ld c, l                                          ; $6192: $4d
	ld h, [hl]                                       ; $6193: $66
	daa                                              ; $6194: $27
	ld a, a                                          ; $6195: $7f
	dec bc                                           ; $6196: $0b
	nop                                              ; $6197: $00
	rst SubAFromDE                                          ; $6198: $df
	ld [hl+], a                                      ; $6199: $22
	rst SubAFromDE                                          ; $619a: $df

Jump_026_619b:
	inc sp                                           ; $619b: $33
	sbc e                                            ; $619c: $9b
	ld d, e                                          ; $619d: $53
	inc sp                                           ; $619e: $33
	ld h, d                                          ; $619f: $62
	ld [hl+], a                                      ; $61a0: $22
	push af                                          ; $61a1: $f5
	add b                                            ; $61a2: $80
	sbc l                                            ; $61a3: $9d
	rst $38                                          ; $61a4: $ff
	cp $db                                           ; $61a5: $fe $db
	rst $38                                          ; $61a7: $ff
	sub l                                            ; $61a8: $95
	inc de                                           ; $61a9: $13
	inc sp                                           ; $61aa: $33
	and e                                            ; $61ab: $a3
	dec d                                            ; $61ac: $15
	inc l                                            ; $61ad: $2c
	jr z, jr_026_61b9                                ; $61ae: $28 $09

	cp a                                             ; $61b0: $bf
	rst $38                                          ; $61b1: $ff
	ccf                                              ; $61b2: $3f
	db $dd                                           ; $61b3: $dd
	rst $38                                          ; $61b4: $ff
	ld a, a                                          ; $61b5: $7f
	ld sp, hl                                        ; $61b6: $f9
	rst SubAFromDE                                          ; $61b7: $df
	db $fc                                           ; $61b8: $fc

jr_026_61b9:
	sub [hl]                                         ; $61b9: $96
	or b                                             ; $61ba: $b0
	ld bc, $77a3                                     ; $61bb: $01 $a3 $77
	db $fd                                           ; $61be: $fd
	ld hl, sp-$02                                    ; $61bf: $f8 $fe
	rst $38                                          ; $61c1: $ff
	pop af                                           ; $61c2: $f1
	sbc $ff                                          ; $61c3: $de $ff
	sub c                                            ; $61c5: $91
	ei                                               ; $61c6: $fb
	pop af                                           ; $61c7: $f1
	ld h, e                                          ; $61c8: $63
	nop                                              ; $61c9: $00
	adc [hl]                                         ; $61ca: $8e
	ld [hl], c                                       ; $61cb: $71
	jr z, jr_026_620e                                ; $61cc: $28 $40

	cp $ce                                           ; $61ce: $fe $ce
	ld a, [hl]                                       ; $61d0: $7e
	db $fc                                           ; $61d1: $fc
	db $fc                                           ; $61d2: $fc
	db $fd                                           ; $61d3: $fd
	sbc $f9                                          ; $61d4: $de $f9
	sub d                                            ; $61d6: $92
	set 6, a                                         ; $61d7: $cb $f7
	rst FarCall                                          ; $61d9: $f7
	daa                                              ; $61da: $27
	rst GetHLinHL                                          ; $61db: $cf
	ld l, a                                          ; $61dc: $6f
	cpl                                              ; $61dd: $2f
	rra                                              ; $61de: $1f
	ccf                                              ; $61df: $3f
	ld c, b                                          ; $61e0: $48
	sub h                                            ; $61e1: $94
	sub h                                            ; $61e2: $94
	inc d                                            ; $61e3: $14
	db $dd                                           ; $61e4: $dd
	add hl, hl                                       ; $61e5: $29
	sbc [hl]                                         ; $61e6: $9e
	db $fc                                           ; $61e7: $fc
	sbc $f8                                          ; $61e8: $de $f8
	db $dd                                           ; $61ea: $dd
	ldh a, [$80]                                     ; $61eb: $f0 $80
	ld b, h                                          ; $61ed: $44
	xor d                                            ; $61ee: $aa
	adc b                                            ; $61ef: $88
	ld d, b                                          ; $61f0: $50
	ld d, l                                          ; $61f1: $55
	ld hl, $2929                                     ; $61f2: $21 $29 $29
	ld [hl+], a                                      ; $61f5: $22
	ld b, h                                          ; $61f6: $44
	ld b, h                                          ; $61f7: $44
	adc h                                            ; $61f8: $8c
	adc b                                            ; $61f9: $88
	sbc b                                            ; $61fa: $98
	sub b                                            ; $61fb: $90
	sub b                                            ; $61fc: $90
	ld b, l                                          ; $61fd: $45
	sub $86                                          ; $61fe: $d6 $86
	xor h                                            ; $6200: $ac
	xor h                                            ; $6201: $ac
	add hl, bc                                       ; $6202: $09
	ld bc, $3200                                     ; $6203: $01 $00 $32
	jr nz, jr_026_6268                               ; $6206: $20 $60

	ld b, b                                          ; $6208: $40
	ld b, b                                          ; $6209: $40
	ret nz                                           ; $620a: $c0

	ret nz                                           ; $620b: $c0

	add b                                            ; $620c: $80
	pop bc                                           ; $620d: $c1

jr_026_620e:
	ld d, d                                          ; $620e: $52
	inc b                                            ; $620f: $04
	xor b                                            ; $6210: $a8
	adc c                                            ; $6211: $89
	ld [bc], a                                       ; $6212: $02
	ld d, h                                          ; $6213: $54
	dec d                                            ; $6214: $15
	nop                                              ; $6215: $00
	ld hl, $4763                                     ; $6216: $21 $63 $47
	ld b, [hl]                                       ; $6219: $46
	call z, $8888                                    ; $621a: $cc $88 $88
	sbc c                                            ; $621d: $99
	dec c                                            ; $621e: $0d
	add sp, -$25                                     ; $621f: $e8 $db
	cp a                                             ; $6221: $bf
	ld l, h                                          ; $6222: $6c
	adc e                                            ; $6223: $8b
	dec e                                            ; $6224: $1d
	ld a, [hl]                                       ; $6225: $7e
	cp $ff                                           ; $6226: $fe $ff
	ccf                                              ; $6228: $3f
	inc e                                            ; $6229: $1c
	rra                                              ; $622a: $1f
	ld a, h                                          ; $622b: $7c
	add b                                            ; $622c: $80
	cp $f7                                           ; $622d: $fe $f7
	sbc $dd                                          ; $622f: $de $dd
	and [hl]                                         ; $6231: $a6
	sub e                                            ; $6232: $93
	reti                                             ; $6233: $d9


	ld l, h                                          ; $6234: $6c
	adc h                                            ; $6235: $8c
	sub [hl]                                         ; $6236: $96
	jr nz, jr_026_623b                               ; $6237: $20 $02

	pop bc                                           ; $6239: $c1
	ld h, b                                          ; $623a: $60

jr_026_623b:
	jr nz, @-$6e                                     ; $623b: $20 $90

	ld d, b                                          ; $623d: $50
	ld c, b                                          ; $623e: $48
	or d                                             ; $623f: $b2
	jr jr_026_629b                                   ; $6240: $18 $59

	adc h                                            ; $6242: $8c
	inc l                                            ; $6243: $2c
	ld b, [hl]                                       ; $6244: $46
	sub [hl]                                         ; $6245: $96
	ld b, $41                                        ; $6246: $06 $41
	ld h, c                                          ; $6248: $61
	jr nz, jr_026_627b                               ; $6249: $20 $30

	sub b                                            ; $624b: $90
	sub b                                            ; $624c: $90
	sbc b                                            ; $624d: $98
	ld c, b                                          ; $624e: $48
	ld c, b                                          ; $624f: $48
	adc b                                            ; $6250: $88
	sub d                                            ; $6251: $92
	ld b, b                                          ; $6252: $40
	ld b, h                                          ; $6253: $44
	xor c                                            ; $6254: $a9
	add hl, hl                                       ; $6255: $29
	jr nz, jr_026_625a                               ; $6256: $20 $02

	inc de                                           ; $6258: $13
	add hl, bc                                       ; $6259: $09

jr_026_625a:
	adc c                                            ; $625a: $89
	adc c                                            ; $625b: $89
	sbc $44                                          ; $625c: $de $44
	sbc l                                            ; $625e: $9d
	ld h, h                                          ; $625f: $64
	ld a, [hl]                                       ; $6260: $7e
	db $dd                                           ; $6261: $dd
	ld a, a                                          ; $6262: $7f
	sbc h                                            ; $6263: $9c
	scf                                              ; $6264: $37
	ld h, $26                                        ; $6265: $26 $26
	rst SubAFromHL                                          ; $6267: $d7

jr_026_6268:
	rst $38                                          ; $6268: $ff
	add c                                            ; $6269: $81
	db $fc                                           ; $626a: $fc
	rst SubAFromDE                                          ; $626b: $df
	ld a, a                                          ; $626c: $7f
	ld l, $fe                                        ; $626d: $2e $fe
	db $fc                                           ; $626f: $fc
	inc a                                            ; $6270: $3c
	ld a, [hl]                                       ; $6271: $7e
	rst $38                                          ; $6272: $ff
	cp b                                             ; $6273: $b8
	sub b                                            ; $6274: $90
	db $d3                                           ; $6275: $d3
	rla                                              ; $6276: $17
	ccf                                              ; $6277: $3f
	rst $38                                          ; $6278: $ff
	cp $7f                                           ; $6279: $fe $7f

jr_026_627b:
	ld a, e                                          ; $627b: $7b
	ei                                               ; $627c: $fb
	rst $38                                          ; $627d: $ff
	ld a, e                                          ; $627e: $7b
	ld a, [hl]                                       ; $627f: $7e
	db $ed                                           ; $6280: $ed
	pop af                                           ; $6281: $f1
	db $db                                           ; $6282: $db
	adc [hl]                                         ; $6283: $8e
	inc e                                            ; $6284: $1c
	inc c                                            ; $6285: $0c
	add [hl]                                         ; $6286: $86
	adc a                                            ; $6287: $8f
	call c, $94ff                                    ; $6288: $dc $ff $94
	rst SubAFromDE                                          ; $628b: $df
	rst $38                                          ; $628c: $ff
	ld a, [hl]                                       ; $628d: $7e
	ld [$ff9b], sp                                   ; $628e: $08 $9b $ff
	scf                                              ; $6291: $37
	ld sp, $e870                                     ; $6292: $31 $70 $e8
	di                                               ; $6295: $f3
	add hl, bc                                       ; $6296: $09
	nop                                              ; $6297: $00
	rst SubAFromDE                                          ; $6298: $df
	ld [hl+], a                                      ; $6299: $22
	db $dd                                           ; $629a: $dd

jr_026_629b:
	inc sp                                           ; $629b: $33
	sbc l                                            ; $629c: $9d
	ld h, d                                          ; $629d: $62
	ld [hl+], a                                      ; $629e: $22
	di                                               ; $629f: $f3
	add b                                            ; $62a0: $80
	rst SubAFromDE                                          ; $62a1: $df
	rst $38                                          ; $62a2: $ff
	sbc [hl]                                         ; $62a3: $9e
	rst FarCall                                          ; $62a4: $f7
	call c, $93ff                                    ; $62a5: $dc $ff $93
	or a                                             ; $62a8: $b7
	rst $38                                          ; $62a9: $ff
	rst $38                                          ; $62aa: $ff
	pop af                                           ; $62ab: $f1
	pop af                                           ; $62ac: $f1
	rrca                                             ; $62ad: $0f
	rlca                                             ; $62ae: $07
	and [hl]                                         ; $62af: $a6
	rst FarCall                                          ; $62b0: $f7
	rst AddAOntoHL                                          ; $62b1: $ef
	cp a                                             ; $62b2: $bf
	sbc e                                            ; $62b3: $9b
	ld a, e                                          ; $62b4: $7b
	db $f4                                           ; $62b5: $f4
	jp c, $99ff                                      ; $62b6: $da $ff $99

	dec e                                            ; $62b9: $1d
	ld sp, $f9ff                                     ; $62ba: $31 $ff $f9
	ccf                                              ; $62bd: $3f
	rst SubAFromDE                                          ; $62be: $df
	sbc $ff                                          ; $62bf: $de $ff
	sub h                                            ; $62c1: $94
	ei                                               ; $62c2: $fb
	rst $38                                          ; $62c3: $ff
	rst $38                                          ; $62c4: $ff
	ld hl, sp-$0f                                    ; $62c5: $f8 $f1
	rla                                              ; $62c7: $17
	dec de                                           ; $62c8: $1b
	ld [hl], e                                       ; $62c9: $73
	adc a                                            ; $62ca: $8f
	rst SubAFromBC                                          ; $62cb: $e7
	xor $dd                                          ; $62cc: $ee $dd
	rst $38                                          ; $62ce: $ff
	add b                                            ; $62cf: $80
	rst FarCall                                          ; $62d0: $f7
	or [hl]                                          ; $62d1: $b6
	ld sp, hl                                        ; $62d2: $f9
	rst $38                                          ; $62d3: $ff
	rst $38                                          ; $62d4: $ff
	call z, Call_026_4d84                            ; $62d5: $cc $84 $4d
	rst $38                                          ; $62d8: $ff
	rst $38                                          ; $62d9: $ff
	ld sp, $c5e3                                     ; $62da: $31 $e3 $c5
	sbc d                                            ; $62dd: $9a
	xor d                                            ; $62de: $aa
	dec [hl]                                         ; $62df: $35
	ld d, [hl]                                       ; $62e0: $56
	ld c, d                                          ; $62e1: $4a
	cp $fc                                           ; $62e2: $fe $fc
	ei                                               ; $62e4: $fb
	rst FarCall                                          ; $62e5: $f7
	rst FarCall                                          ; $62e6: $f7
	xor $ec                                          ; $62e7: $ee $ec
	db $fc                                           ; $62e9: $fc
	adc a                                            ; $62ea: $8f
	ld a, $6d                                        ; $62eb: $3e $6d
	jp c, $80b5                                      ; $62ed: $da $b5 $80

	dec hl                                           ; $62f0: $2b
	ld h, d                                          ; $62f1: $62
	ld d, l                                          ; $62f2: $55
	ld [hl], b                                       ; $62f3: $70
	pop bc                                           ; $62f4: $c1

jr_026_62f5:
	add d                                            ; $62f5: $82
	inc b                                            ; $62f6: $04
	ld [$1110], sp                                   ; $62f7: $08 $10 $11
	ld [hl+], a                                      ; $62fa: $22
	rra                                              ; $62fb: $1f
	rst $38                                          ; $62fc: $ff
	rst $38                                          ; $62fd: $ff
	call c, Call_026_55bb                            ; $62fe: $dc $bb $55
	or d                                             ; $6301: $b2
	ld l, d                                          ; $6302: $6a
	ldh [rP1], a                                     ; $6303: $e0 $00
	nop                                              ; $6305: $00
	inc hl                                           ; $6306: $23
	ld b, h                                          ; $6307: $44
	adc b                                            ; $6308: $88
	add hl, bc                                       ; $6309: $09
	ld de, $c0f8                                     ; $630a: $11 $f8 $c0
	jr c, jr_026_62f5                                ; $630d: $38 $e6

	sub d                                            ; $630f: $92
	sbc c                                            ; $6310: $99
	inc sp                                           ; $6311: $33
	ld l, l                                          ; $6312: $6d
	call $3f07                                       ; $6313: $cd $07 $3f
	rst JumpTable                                          ; $6316: $c7
	add hl, de                                       ; $6317: $19
	ld h, [hl]                                       ; $6318: $66
	call z, $3092                                    ; $6319: $cc $92 $30
	inc a                                            ; $631c: $3c
	sbc $08                                          ; $631d: $de $08
	sbc e                                            ; $631f: $9b
	ret nz                                           ; $6320: $c0

	nop                                              ; $6321: $00
	add b                                            ; $6322: $80
	bit 6, a                                         ; $6323: $cb $77
	sbc e                                            ; $6325: $9b
	add b                                            ; $6326: $80
	ccf                                              ; $6327: $3f
	rst $38                                          ; $6328: $ff

jr_026_6329:
	ld a, a                                          ; $6329: $7f
	ccf                                              ; $632a: $3f
	ccf                                              ; $632b: $3f
	rst $38                                          ; $632c: $ff
	rra                                              ; $632d: $1f
	ld h, e                                          ; $632e: $63
	ld sp, hl                                        ; $632f: $f9
	inc e                                            ; $6330: $1c
	ld [$c03d], a                                    ; $6331: $ea $3d $c0
	nop                                              ; $6334: $00
	ldh [$9c], a                                     ; $6335: $e0 $9c
	ld b, $e3                                        ; $6337: $06 $e3
	ld de, $ecc0                                     ; $6339: $11 $c0 $ec
	or $db                                           ; $633c: $f6 $db
	db $ec                                           ; $633e: $ec
	rst SubAFromHL                                          ; $633f: $d7
	db $eb                                           ; $6340: $eb
	ld h, l                                          ; $6341: $65
	ld [hl], c                                       ; $6342: $71

Jump_026_6343:
	inc de                                           ; $6343: $13
	add hl, bc                                       ; $6344: $09
	inc h                                            ; $6345: $24
	adc d                                            ; $6346: $8a
	ld [de], a                                       ; $6347: $12
	ld [$8204], sp                                   ; $6348: $08 $04 $82
	add d                                            ; $634b: $82
	adc a                                            ; $634c: $8f
	ld b, a                                          ; $634d: $47
	ld h, a                                          ; $634e: $67
	or e                                             ; $634f: $b3
	ld de, $2059                                     ; $6350: $11 $59 $20
	and h                                            ; $6353: $a4
	ld a, a                                          ; $6354: $7f
	cp a                                             ; $6355: $bf
	sbc a                                            ; $6356: $9f
	ld c, a                                          ; $6357: $4f
	ld l, a                                          ; $6358: $6f
	daa                                              ; $6359: $27
	rla                                              ; $635a: $17
	inc de                                           ; $635b: $13
	reti                                             ; $635c: $d9


	rst $38                                          ; $635d: $ff
	sub a                                            ; $635e: $97
	ld a, a                                          ; $635f: $7f
	sbc e                                            ; $6360: $9b
	inc de                                           ; $6361: $13
	ld bc, $1b11                                     ; $6362: $01 $11 $1b
	sbc h                                            ; $6365: $9c
	sbc [hl]                                         ; $6366: $9e
	ld a, e                                          ; $6367: $7b
	ld sp, $fd90                                     ; $6368: $31 $90 $fd
	rst AddAOntoHL                                          ; $636b: $ef
	db $fd                                           ; $636c: $fd
	rst $38                                          ; $636d: $ff
	rst $38                                          ; $636e: $ff
	jr jr_026_6329                                   ; $636f: $18 $b8

	cp h                                             ; $6371: $bc
	ld e, $1f                                        ; $6372: $1e $1f
	ccf                                              ; $6374: $3f
	jr c, jr_026_63a7                                ; $6375: $38 $30

	rst SubAFromDE                                          ; $6377: $df
	sbc a                                            ; $6378: $9f
	ld h, a                                          ; $6379: $67
	rst SubAFromDE                                          ; $637a: $df
	sub h                                            ; $637b: $94
	inc a                                            ; $637c: $3c
	ld b, h                                          ; $637d: $44
	adc l                                            ; $637e: $8d
	sub b                                            ; $637f: $90
	ld h, b                                          ; $6380: $60
	ld h, l                                          ; $6381: $65
	ld e, $e7                                        ; $6382: $1e $e7
	db $fc                                           ; $6384: $fc
	rst $38                                          ; $6385: $ff
	rst AddAOntoHL                                          ; $6386: $ef
	ld a, e                                          ; $6387: $7b
	db $db                                           ; $6388: $db
	ld a, a                                          ; $6389: $7f
	ld hl, sp-$67                                    ; $638a: $f8 $99
	adc h                                            ; $638c: $8c
	add e                                            ; $638d: $83
	sbc a                                            ; $638e: $9f
	add hl, de                                       ; $638f: $19
	rst SubAFromDE                                          ; $6390: $df
	jr c, @+$0a                                      ; $6391: $38 $08

	nop                                              ; $6393: $00
	rst SubAFromDE                                          ; $6394: $df
	ld [hl+], a                                      ; $6395: $22
	db $dd                                           ; $6396: $dd
	inc sp                                           ; $6397: $33
	rst SubAFromDE                                          ; $6398: $df
	ld [hl+], a                                      ; $6399: $22
	ldh a, [$80]                                     ; $639a: $f0 $80
	reti                                             ; $639c: $d9


	rst $38                                          ; $639d: $ff
	adc c                                            ; $639e: $89
	ld c, c                                          ; $639f: $49
	ld hl, sp-$08                                    ; $63a0: $f8 $f8
	or b                                             ; $63a2: $b0
	ld [$3bdb], sp                                   ; $63a3: $08 $db $3b
	inc hl                                           ; $63a6: $23

jr_026_63a7:
	rst $38                                          ; $63a7: $ff
	ei                                               ; $63a8: $fb
	di                                               ; $63a9: $f3
	rst $38                                          ; $63aa: $ff
	rst $38                                          ; $63ab: $ff
	ccf                                              ; $63ac: $3f
	sbc a                                            ; $63ad: $9f
	rst $38                                          ; $63ae: $ff
	db $fd                                           ; $63af: $fd
	ld a, $7c                                        ; $63b0: $3e $7c
	ld hl, sp-$33                                    ; $63b2: $f8 $cd
	rst GetHLinHL                                          ; $63b4: $cf
	jp c, $98ff                                      ; $63b5: $da $ff $98

	cp a                                             ; $63b8: $bf
	push hl                                          ; $63b9: $e5
	rst $38                                          ; $63ba: $ff
	rra                                              ; $63bb: $1f
	ccf                                              ; $63bc: $3f
	rra                                              ; $63bd: $1f
	ccf                                              ; $63be: $3f
	jp c, $92ff                                      ; $63bf: $da $ff $92

	rst SubAFromDE                                          ; $63c2: $df
	ld e, a                                          ; $63c3: $5f
	rst $38                                          ; $63c4: $ff
	rst $38                                          ; $63c5: $ff
	rst AddAOntoHL                                          ; $63c6: $ef
	jp $c084                                         ; $63c7: $c3 $84 $c0


	rst FarCall                                          ; $63ca: $f7
	db $fc                                           ; $63cb: $fc
	db $fc                                           ; $63cc: $fc
	sub e                                            ; $63cd: $93
	sub c                                            ; $63ce: $91
	sbc $ff                                          ; $63cf: $de $ff
	sub a                                            ; $63d1: $97
	db $fc                                           ; $63d2: $fc
	ld hl, sp-$1f                                    ; $63d3: $f8 $e1

jr_026_63d5:
	add $8c                                          ; $63d5: $c6 $8c
	rra                                              ; $63d7: $1f
	ld h, e                                          ; $63d8: $63
	ld h, a                                          ; $63d9: $67
	ld a, e                                          ; $63da: $7b
	ret z                                            ; $63db: $c8

	add b                                            ; $63dc: $80
	ld a, a                                          ; $63dd: $7f
	rst $38                                          ; $63de: $ff
	ldh a, [$c3]                                     ; $63df: $f0 $c3
	ld b, $28                                        ; $63e1: $06 $28
	add e                                            ; $63e3: $83
	ld c, $39                                        ; $63e4: $0e $39
	rst SubAFromBC                                          ; $63e6: $e7
	rst $38                                          ; $63e7: $ff
	db $fc                                           ; $63e8: $fc
	ld sp, hl                                        ; $63e9: $f9
	rst FarCall                                          ; $63ea: $f7
	db $fc                                           ; $63eb: $fc
	pop af                                           ; $63ec: $f1
	add $18                                          ; $63ed: $c6 $18
	rst $38                                          ; $63ef: $ff
	ret nz                                           ; $63f0: $c0

	rra                                              ; $63f1: $1f
	rst $38                                          ; $63f2: $ff

jr_026_63f3:
	ret nz                                           ; $63f3: $c0

	ccf                                              ; $63f4: $3f
	ld hl, sp-$39                                    ; $63f5: $f8 $c7
	nop                                              ; $63f7: $00
	ccf                                              ; $63f8: $3f
	ldh [rP1], a                                     ; $63f9: $e0 $00
	ccf                                              ; $63fb: $3f
	add b                                            ; $63fc: $80
	ret nz                                           ; $63fd: $c0

	rlca                                             ; $63fe: $07
	jr c, jr_026_63f3                                ; $63ff: $38 $f2

	ld a, b                                          ; $6401: $78
	adc [hl]                                         ; $6402: $8e
	rst FarCall                                          ; $6403: $f7
	dec e                                            ; $6404: $1d
	rst SubAFromBC                                          ; $6405: $e7
	add hl, sp                                       ; $6406: $39
	add $0f                                          ; $6407: $c6 $0f
	add a                                            ; $6409: $87
	ld [hl], c                                       ; $640a: $71
	ld c, $e3                                        ; $640b: $0e $e3
	jr jr_026_63d5                                   ; $640d: $18 $c6

	add hl, sp                                       ; $640f: $39
	ld d, h                                          ; $6410: $54
	ld a, c                                          ; $6411: $79
	dec sp                                           ; $6412: $3b
	cp d                                             ; $6413: $ba
	call c, $bc7b                                    ; $6414: $dc $7b $bc
	ld e, e                                          ; $6417: $5b
	rst $38                                          ; $6418: $ff
	cp $fc                                           ; $6419: $fe $fc
	ld a, l                                          ; $641b: $7d
	add b                                            ; $641c: $80
	cp e                                             ; $641d: $bb
	rst $38                                          ; $641e: $ff
	ld a, a                                          ; $641f: $7f
	cp a                                             ; $6420: $bf
	jr c, @+$01                                      ; $6421: $38 $ff

	rst $38                                          ; $6423: $ff
	nop                                              ; $6424: $00
	rst AddAOntoHL                                          ; $6425: $ef
	ld bc, $9f3e                                     ; $6426: $01 $3e $9f
	rst JumpTable                                          ; $6429: $c7
	nop                                              ; $642a: $00
	nop                                              ; $642b: $00
	rst $38                                          ; $642c: $ff
	ldh a, [$fe]                                     ; $642d: $f0 $fe
	pop bc                                           ; $642f: $c1
	ldh [$3f], a                                     ; $6430: $e0 $3f
	adc [hl]                                         ; $6432: $8e
	db $e3                                           ; $6433: $e3
	ld a, b                                          ; $6434: $78
	inc a                                            ; $6435: $3c
	xor $73                                          ; $6436: $ee $73
	reti                                             ; $6438: $d9


	rst $38                                          ; $6439: $ff
	ld a, a                                          ; $643a: $7f
	rra                                              ; $643b: $1f
	add h                                            ; $643c: $84
	add a                                            ; $643d: $87
	jp $8c11                                         ; $643e: $c3 $11 $8c


	ld h, $ff                                        ; $6441: $26 $ff
	rst SubAFromDE                                          ; $6443: $df
	rst $38                                          ; $6444: $ff
	rst $38                                          ; $6445: $ff
	ld a, a                                          ; $6446: $7f
	ccf                                              ; $6447: $3f
	rra                                              ; $6448: $1f
	rra                                              ; $6449: $1f
	jr c, jr_026_6489                                ; $644a: $38 $3d

	rlca                                             ; $644c: $07
	add e                                            ; $644d: $83
	pop bc                                           ; $644e: $c1
	db $e3                                           ; $644f: $e3
	rst $38                                          ; $6450: $ff
	cp $cc                                           ; $6451: $fe $cc
	cp $fe                                           ; $6453: $fe $fe
	rst FarCall                                          ; $6455: $f7
	rst SubAFromHL                                          ; $6456: $d7
	cp a                                             ; $6457: $bf
	ld a, e                                          ; $6458: $7b
	ld a, e                                          ; $6459: $7b
	sbc [hl]                                         ; $645a: $9e
	cp $7b                                           ; $645b: $fe $7b
	ld l, e                                          ; $645d: $6b
	sub h                                            ; $645e: $94
	rst JumpTable                                          ; $645f: $c7
	rlca                                             ; $6460: $07
	rrca                                             ; $6461: $0f
	adc $3f                                          ; $6462: $ce $3f
	ldh [$e1], a                                     ; $6464: $e0 $e1
	or $fe                                           ; $6466: $f6 $fe
	cp $ff                                           ; $6468: $fe $ff
	ld a, e                                          ; $646a: $7b
	ld hl, sp-$6e                                    ; $646b: $f8 $92
	pop af                                           ; $646d: $f1
	cp $c2                                           ; $646e: $fe $c2
	add c                                            ; $6470: $81
	ld bc, $0f70                                     ; $6471: $01 $70 $0f
	nop                                              ; $6474: $00
	ldh [rAUD3LEVEL], a                              ; $6475: $e0 $1c
	jp c, $f63f                                      ; $6477: $da $3f $f6

	ld l, a                                          ; $647a: $6f
	ld hl, sp-$6c                                    ; $647b: $f8 $94
	rst $38                                          ; $647d: $ff
	or $73                                           ; $647e: $f6 $73
	rra                                              ; $6480: $1f
	rlca                                             ; $6481: $07
	add hl, de                                       ; $6482: $19
	pop bc                                           ; $6483: $c1
	rlca                                             ; $6484: $07
	dec de                                           ; $6485: $1b
	jr z, jr_026_6505                                ; $6486: $28 $7d

	ld l, e                                          ; $6488: $6b

jr_026_6489:
	ld hl, sp+$0b                                    ; $6489: $f8 $0b
	nop                                              ; $648b: $00
	rst SubAFromDE                                          ; $648c: $df
	ld [hl+], a                                      ; $648d: $22
	sbc c                                            ; $648e: $99
	inc hl                                           ; $648f: $23
	inc sp                                           ; $6490: $33
	inc sp                                           ; $6491: $33
	ld [hl-], a                                      ; $6492: $32
	ld [hl+], a                                      ; $6493: $22
	ld [hl+], a                                      ; $6494: $22
	xor $80                                          ; $6495: $ee $80
	add b                                            ; $6497: $80
	adc $dc                                          ; $6498: $ce $dc
	call c, $ff7e                                    ; $649a: $dc $7e $ff
	rst FarCall                                          ; $649d: $f7
	di                                               ; $649e: $f3
	rst $38                                          ; $649f: $ff
	ccf                                              ; $64a0: $3f
	ccf                                              ; $64a1: $3f
	inc sp                                           ; $64a2: $33
	add c                                            ; $64a3: $81
	ld h, c                                          ; $64a4: $61
	ld a, b                                          ; $64a5: $78
	cp $30                                           ; $64a6: $fe $30
	rrca                                             ; $64a8: $0f
	ccf                                              ; $64a9: $3f
	ld a, a                                          ; $64aa: $7f
	db $e3                                           ; $64ab: $e3
	rst SubAFromBC                                          ; $64ac: $e7
	rst GetHLinHL                                          ; $64ad: $cf
	rst AddAOntoHL                                          ; $64ae: $ef
	rst $38                                          ; $64af: $ff
	rst $38                                          ; $64b0: $ff
	sbc $9e                                          ; $64b1: $de $9e
	ccf                                              ; $64b3: $3f
	ccf                                              ; $64b4: $3f
	ld a, h                                          ; $64b5: $7c
	ld a, b                                          ; $64b6: $78
	sbc [hl]                                         ; $64b7: $9e
	ld a, b                                          ; $64b8: $78
	sbc $ff                                          ; $64b9: $de $ff
	ld a, a                                          ; $64bb: $7f
	db $e3                                           ; $64bc: $e3
	sbc c                                            ; $64bd: $99
	ei                                               ; $64be: $fb
	db $eb                                           ; $64bf: $eb
	rst $38                                          ; $64c0: $ff
	pop af                                           ; $64c1: $f1
	inc sp                                           ; $64c2: $33
	ld [hl], a                                       ; $64c3: $77
	sbc $ff                                          ; $64c4: $de $ff
	sbc l                                            ; $64c6: $9d
	ld e, $0f                                        ; $64c7: $1e $0f
	db $dd                                           ; $64c9: $dd
	rst $38                                          ; $64ca: $ff
	sbc [hl]                                         ; $64cb: $9e
	sbc a                                            ; $64cc: $9f
	call c, Call_026_7fff                            ; $64cd: $dc $ff $7f
	reti                                             ; $64d0: $d9


	sbc e                                            ; $64d1: $9b
	db $fc                                           ; $64d2: $fc
	inc l                                            ; $64d3: $2c
	ld b, $22                                        ; $64d4: $06 $22
	ld a, e                                          ; $64d6: $7b
	pop hl                                           ; $64d7: $e1
	sbc l                                            ; $64d8: $9d
	ld hl, sp-$04                                    ; $64d9: $f8 $fc
	sbc $ff                                          ; $64db: $de $ff
	add l                                            ; $64dd: $85
	rst SubAFromBC                                          ; $64de: $e7
	adc a                                            ; $64df: $8f
	adc a                                            ; $64e0: $8f
	sbc a                                            ; $64e1: $9f
	ld b, e                                          ; $64e2: $43
	ld [hl+], a                                      ; $64e3: $22
	cp $0e                                           ; $64e4: $fe $0e
	db $fc                                           ; $64e6: $fc
	cp $ff                                           ; $64e7: $fe $ff
	ccf                                              ; $64e9: $3f
	ld a, a                                          ; $64ea: $7f
	rst $38                                          ; $64eb: $ff
	rst $38                                          ; $64ec: $ff
	db $fc                                           ; $64ed: $fc
	rst $38                                          ; $64ee: $ff
	rst JumpTable                                          ; $64ef: $c7
	pop bc                                           ; $64f0: $c1
	ldh a, [$fd]                                     ; $64f1: $f0 $fd
	rlca                                             ; $64f3: $07
	rrca                                             ; $64f4: $0f
	ld a, a                                          ; $64f5: $7f
	ld a, b                                          ; $64f6: $78
	ei                                               ; $64f7: $fb
	db $dd                                           ; $64f8: $dd
	rst $38                                          ; $64f9: $ff
	sbc l                                            ; $64fa: $9d
	add b                                            ; $64fb: $80
	ccf                                              ; $64fc: $3f
	jp c, $9eff                                      ; $64fd: $da $ff $9e

	ret nz                                           ; $6500: $c0

	db $dd                                           ; $6501: $dd
	rst $38                                          ; $6502: $ff
	sbc b                                            ; $6503: $98
	rlca                                             ; $6504: $07

jr_026_6505:
	pop hl                                           ; $6505: $e1
	jr @+$06                                         ; $6506: $18 $04

	pop af                                           ; $6508: $f1
	rst FarCall                                          ; $6509: $f7
	rst FarCall                                          ; $650a: $f7
	call c, $95ff                                    ; $650b: $dc $ff $95
	ldh [$f8], a                                     ; $650e: $e0 $f8
	rst $38                                          ; $6510: $ff
	rst $38                                          ; $6511: $ff
	ld a, h                                          ; $6512: $7c
	cp c                                             ; $6513: $b9
	sub e                                            ; $6514: $93
	ld d, e                                          ; $6515: $53
	rst $38                                          ; $6516: $ff
	rst JumpTable                                          ; $6517: $c7
	db $db                                           ; $6518: $db
	rst $38                                          ; $6519: $ff
	ld a, e                                          ; $651a: $7b
	jp $fb9e                                         ; $651b: $c3 $9e $fb


	ld a, e                                          ; $651e: $7b
	sub [hl]                                         ; $651f: $96
	sbc d                                            ; $6520: $9a
	inc bc                                           ; $6521: $03
	db $fc                                           ; $6522: $fc
	ld hl, sp-$08                                    ; $6523: $f8 $f8
	db $fc                                           ; $6525: $fc
	ld [hl], a                                       ; $6526: $77
	xor b                                            ; $6527: $a8
	sbc l                                            ; $6528: $9d
	rst $38                                          ; $6529: $ff
	db $eb                                           ; $652a: $eb
	sbc $ff                                          ; $652b: $de $ff
	adc a                                            ; $652d: $8f
	rst SubAFromDE                                          ; $652e: $df
	rst $38                                          ; $652f: $ff
	rst $38                                          ; $6530: $ff
	rrca                                             ; $6531: $0f
	ld a, a                                          ; $6532: $7f
	ld b, e                                          ; $6533: $43
	ld c, e                                          ; $6534: $4b
	rst $38                                          ; $6535: $ff
	rst $38                                          ; $6536: $ff
	ldh [c], a                                       ; $6537: $e2
	ldh [$fe], a                                     ; $6538: $e0 $fe
	rst $38                                          ; $653a: $ff
	db $fd                                           ; $653b: $fd
	cp $9d                                           ; $653c: $fe $9d
	ld a, e                                          ; $653e: $7b
	or d                                             ; $653f: $b2
	adc a                                            ; $6540: $8f
	ld hl, sp-$1d                                    ; $6541: $f8 $e3
	push bc                                          ; $6543: $c5
	adc $ff                                          ; $6544: $ce $ff
	rst JumpTable                                          ; $6546: $c7
	inc bc                                           ; $6547: $03
	ld bc, $feff                                     ; $6548: $01 $ff $fe
	db $e3                                           ; $654b: $e3
	ld [hl], c                                       ; $654c: $71
	cp $ef                                           ; $654d: $fe $ef
	pop af                                           ; $654f: $f1
	sbc $6b                                          ; $6550: $de $6b
	ld hl, sp-$6a                                    ; $6552: $f8 $96
	cp $8e                                           ; $6554: $fe $8e
	rst AddAOntoHL                                          ; $6556: $ef
	ld a, [hl-]                                      ; $6557: $3a
	cp $0d                                           ; $6558: $fe $0d
	adc a                                            ; $655a: $8f
	sbc b                                            ; $655b: $98
	ld l, a                                          ; $655c: $6f
	ld a, e                                          ; $655d: $7b
	or [hl]                                          ; $655e: $b6
	sbc [hl]                                         ; $655f: $9e
	rst $38                                          ; $6560: $ff
	ld [hl], a                                       ; $6561: $77
	ld hl, sp-$72                                    ; $6562: $f8 $8e
	sbc a                                            ; $6564: $9f
	cp a                                             ; $6565: $bf
	cp $7f                                           ; $6566: $fe $7f
	rst $38                                          ; $6568: $ff
	di                                               ; $6569: $f3
	ld a, a                                          ; $656a: $7f
	cp e                                             ; $656b: $bb
	ld hl, sp-$08                                    ; $656c: $f8 $f8
	ld sp, hl                                        ; $656e: $f9
	db $fd                                           ; $656f: $fd
	rst $38                                          ; $6570: $ff
	rst $38                                          ; $6571: $ff
	ld a, a                                          ; $6572: $7f
	cp e                                             ; $6573: $bb
	pop hl                                           ; $6574: $e1
	ld [hl], a                                       ; $6575: $77
	rst SubAFromBC                                          ; $6576: $e7
	rst SubAFromDE                                          ; $6577: $df
	rst $38                                          ; $6578: $ff
	sub [hl]                                         ; $6579: $96
	dec sp                                           ; $657a: $3b
	ld a, a                                          ; $657b: $7f
	ei                                               ; $657c: $fb
	pop af                                           ; $657d: $f1
	ldh a, [$f3]                                     ; $657e: $f0 $f3
	rst SubAFromHL                                          ; $6580: $d7
	inc e                                            ; $6581: $1c
	db $fc                                           ; $6582: $fc
	ld [$de00], sp                                   ; $6583: $08 $00 $de
	ld [hl+], a                                      ; $6586: $22
	sbc [hl]                                         ; $6587: $9e
	ld [hl-], a                                      ; $6588: $32
	db $dd                                           ; $6589: $dd
	ld [hl+], a                                      ; $658a: $22
	ld [$9706], a                                    ; $658b: $ea $06 $97
	adc b                                            ; $658e: $88
	ld [hl], a                                       ; $658f: $77
	ld d, l                                          ; $6590: $55
	xor d                                            ; $6591: $aa
	ld [hl+], a                                      ; $6592: $22
	db $dd                                           ; $6593: $dd
	ld d, l                                          ; $6594: $55
	xor d                                            ; $6595: $aa
	ld h, a                                          ; $6596: $67
	ld hl, sp-$69                                    ; $6597: $f8 $97
	adc c                                            ; $6599: $89
	ld [hl], a                                       ; $659a: $77
	ld d, l                                          ; $659b: $55
	xor e                                            ; $659c: $ab
	inc hl                                           ; $659d: $23
	db $dd                                           ; $659e: $dd
	ld d, l                                          ; $659f: $55
	xor e                                            ; $65a0: $ab
	ld h, a                                          ; $65a1: $67
	ld hl, sp-$80                                    ; $65a2: $f8 $80
	dec hl                                           ; $65a4: $2b
	ld hl, $1017                                     ; $65a5: $21 $17 $10
	ld a, [bc]                                       ; $65a8: $0a
	dec c                                            ; $65a9: $0d
	dec b                                            ; $65aa: $05
	ld b, $82                                        ; $65ab: $06 $82
	inc bc                                           ; $65ad: $03
	ld b, c                                          ; $65ae: $41
	ld bc, $11a9                                     ; $65af: $01 $a9 $11
	ld d, e                                          ; $65b2: $53
	dec c                                            ; $65b3: $0d
	di                                               ; $65b4: $f3
	sbc $df                                          ; $65b5: $de $df
	adc h                                            ; $65b7: $8c
	rst FarCall                                          ; $65b8: $f7
	push de                                          ; $65b9: $d5
	ld e, a                                          ; $65ba: $5f
	rst SubAFromHL                                          ; $65bb: $d7
	push af                                          ; $65bc: $f5
	sub $bf                                          ; $65bd: $d6 $bf
	cp a                                             ; $65bf: $bf
	rra                                              ; $65c0: $1f
	cpl                                              ; $65c1: $2f
	db $10                                           ; $65c2: $10
	add b                                            ; $65c3: $80
	db $10                                           ; $65c4: $10
	db $fd                                           ; $65c5: $fd
	inc bc                                           ; $65c6: $03
	cp $3f                                           ; $65c7: $fe $3f
	push hl                                          ; $65c9: $e5
	ldh a, [$2a]                                     ; $65ca: $f0 $2a
	add b                                            ; $65cc: $80
	ld e, a                                          ; $65cd: $5f
	rra                                              ; $65ce: $1f
	ld [$55e0], a                                    ; $65cf: $ea $e0 $55
	nop                                              ; $65d2: $00
	ld [$fee0], a                                    ; $65d3: $ea $e0 $fe
	rst $38                                          ; $65d6: $ff
	ld bc, $45ff                                     ; $65d7: $01 $ff $45
	jr c, jr_026_6606                                ; $65da: $38 $2a

	ret nz                                           ; $65dc: $c0

	rst $38                                          ; $65dd: $ff
	rst $38                                          ; $65de: $ff
	xor e                                            ; $65df: $ab
	ld bc, $0055                                     ; $65e0: $01 $55 $00
	add b                                            ; $65e3: $80
	xor d                                            ; $65e4: $aa
	nop                                              ; $65e5: $00
	rst $38                                          ; $65e6: $ff
	nop                                              ; $65e7: $00
	ei                                               ; $65e8: $fb
	db $fc                                           ; $65e9: $fc
	rlca                                             ; $65ea: $07
	rst $38                                          ; $65eb: $ff
	ld a, [hl]                                       ; $65ec: $7e
	rst $38                                          ; $65ed: $ff
	add c                                            ; $65ee: $81
	cp $e7                                           ; $65ef: $fe $e7
	ld hl, sp+$27                                    ; $65f1: $f8 $27
	ld hl, sp-$1a                                    ; $65f3: $f8 $e6
	rst $38                                          ; $65f5: $ff
	ret nz                                           ; $65f6: $c0

	nop                                              ; $65f7: $00
	db $fc                                           ; $65f8: $fc
	nop                                              ; $65f9: $00
	rst SubAFromDE                                          ; $65fa: $df
	ldh [$3c], a                                     ; $65fb: $e0 $3c
	rst $38                                          ; $65fd: $ff
	ei                                               ; $65fe: $fb
	rlca                                             ; $65ff: $07
	cp $01                                           ; $6600: $fe $01
	rst $38                                          ; $6602: $ff
	add c                                            ; $6603: $81
	nop                                              ; $6604: $00
	inc sp                                           ; $6605: $33

jr_026_6606:
	db $fc                                           ; $6606: $fc
	reti                                             ; $6607: $d9


	scf                                              ; $6608: $37
	ld sp, hl                                        ; $6609: $f9
	daa                                              ; $660a: $27
	ld sp, hl                                        ; $660b: $f9
	daa                                              ; $660c: $27
	inc a                                            ; $660d: $3c
	db $e3                                           ; $660e: $e3
	ldh [rIE], a                                     ; $660f: $e0 $ff
	inc b                                            ; $6611: $04
	rst $38                                          ; $6612: $ff
	di                                               ; $6613: $f3
	rrca                                             ; $6614: $0f
	db $fd                                           ; $6615: $fd
	inc bc                                           ; $6616: $03
	jp $033c                                         ; $6617: $c3 $3c $03


	db $fc                                           ; $661a: $fc
	inc bc                                           ; $661b: $03
	db $fc                                           ; $661c: $fc
	add a                                            ; $661d: $87
	ld hl, sp-$79                                    ; $661e: $f8 $87
	ld hl, sp+$47                                    ; $6620: $f8 $47
	ld a, e                                          ; $6622: $7b
	cp $9c                                           ; $6623: $fe $9c
	rst JumpTable                                          ; $6625: $c7
	ld hl, sp-$01                                    ; $6626: $f8 $ff
	ld a, e                                          ; $6628: $7b
	cp [hl]                                          ; $6629: $be
	ld h, a                                          ; $662a: $67
	cp $97                                           ; $662b: $fe $97
	ei                                               ; $662d: $fb
	inc b                                            ; $662e: $04
	di                                               ; $662f: $f3
	inc c                                            ; $6630: $0c
	ld sp, hl                                        ; $6631: $f9
	ld b, $f9                                        ; $6632: $06 $f9
	ld b, $7b                                        ; $6634: $06 $7b
	rst SubAFromDE                                          ; $6636: $df
	ld a, a                                          ; $6637: $7f
	adc d                                            ; $6638: $8a
	sbc [hl]                                         ; $6639: $9e
	ld bc, $c077                                     ; $663a: $01 $77 $c0
	ld a, a                                          ; $663d: $7f
	cp $8f                                           ; $663e: $fe $8f
	ld hl, sp+$0f                                    ; $6640: $f8 $0f
	db $fd                                           ; $6642: $fd
	ld a, [bc]                                       ; $6643: $0a
	or $0d                                           ; $6644: $f6 $0d
	ld [hl], l                                       ; $6646: $75
	adc [hl]                                         ; $6647: $8e
	inc a                                            ; $6648: $3c
	rst JumpTable                                          ; $6649: $c7
	dec de                                           ; $664a: $1b

jr_026_664b:
	and $02                                          ; $664b: $e6 $02
	rst $38                                          ; $664d: $ff
	add e                                            ; $664e: $83
	ld a, [hl]                                       ; $664f: $7e
	ld b, a                                          ; $6650: $47
	jr nc, jr_026_6656                               ; $6651: $30 $03

	ld hl, sp+$43                                    ; $6653: $f8 $43
	nop                                              ; $6655: $00

jr_026_6656:
	sub [hl]                                         ; $6656: $96
	ld d, a                                          ; $6657: $57
	xor d                                            ; $6658: $aa
	ld [hl+], a                                      ; $6659: $22
	sbc $56                                          ; $665a: $de $56
	xor d                                            ; $665c: $aa
	adc d                                            ; $665d: $8a
	halt                                             ; $665e: $76
	ld d, [hl]                                       ; $665f: $56
	ld a, e                                          ; $6660: $7b
	ld hl, sp+$7f                                    ; $6661: $f8 $7f
	db $f4                                           ; $6663: $f4
	sbc c                                            ; $6664: $99
	xor c                                            ; $6665: $a9
	rlca                                             ; $6666: $07
	ld d, c                                          ; $6667: $51
	ld bc, $0180                                     ; $6668: $01 $80 $01
	db $fd                                           ; $666b: $fd
	ld a, a                                          ; $666c: $7f
	ei                                               ; $666d: $fb
	add a                                            ; $666e: $87
	ld [bc], a                                       ; $666f: $02
	ld bc, $0107                                     ; $6670: $01 $07 $01
	db $10                                           ; $6673: $10
	ld d, b                                          ; $6674: $50
	db $10                                           ; $6675: $10
	ld d, b                                          ; $6676: $50
	adc b                                            ; $6677: $88
	call z, $f37c                                    ; $6678: $cc $7c $f3
	ld a, d                                          ; $667b: $7a
	pop af                                           ; $667c: $f1
	ld a, h                                          ; $667d: $7c
	ldh a, [$fa]                                     ; $667e: $f0 $fa

jr_026_6680:
	add sp, -$43                                     ; $6680: $e8 $bd
	add sp, $1d                                      ; $6682: $e8 $1d
	inc e                                            ; $6684: $1c
	inc bc                                           ; $6685: $03
	inc bc                                           ; $6686: $03
	db $fd                                           ; $6687: $fd
	sub e                                            ; $6688: $93
	jr nz, jr_026_664b                               ; $6689: $20 $c0

	adc b                                            ; $668b: $88
	ld [hl], b                                       ; $668c: $70
	ld [hl+], a                                      ; $668d: $22
	inc e                                            ; $668e: $1c
	inc d                                            ; $668f: $14
	inc bc                                           ; $6690: $03
	ld e, a                                          ; $6691: $5f
	rrca                                             ; $6692: $0f
	ldh a, [$f0]                                     ; $6693: $f0 $f0
	rst FarCall                                          ; $6695: $f7
	ld a, a                                          ; $6696: $7f
	ld [de], a                                       ; $6697: $12
	add b                                            ; $6698: $80
	ld a, a                                          ; $6699: $7f
	cp c                                             ; $669a: $b9
	rst AddAOntoHL                                          ; $669b: $ef
	jr nc, jr_026_6680                               ; $669c: $30 $e2

	ccf                                              ; $669e: $3f
	rst SubAFromBC                                          ; $669f: $e7
	inc a                                            ; $66a0: $3c
	ld a, [$f825]                                    ; $66a1: $fa $25 $f8
	daa                                              ; $66a4: $27
	call $cf7f                                       ; $66a5: $cd $7f $cf
	ld [hl], b                                       ; $66a8: $70
	ld a, h                                          ; $66a9: $7c
	rst GetHLinHL                                          ; $66aa: $cf
	or $8b                                           ; $66ab: $f6 $8b
	inc de                                           ; $66ad: $13
	db $fd                                           ; $66ae: $fd
	dec hl                                           ; $66af: $2b
	db $dd                                           ; $66b0: $dd
	ld a, a                                          ; $66b1: $7f
	add a                                            ; $66b2: $87
	and $19                                          ; $66b3: $e6 $19
	rst AddAOntoHL                                          ; $66b5: $ef
	or b                                             ; $66b6: $b0
	rst AddAOntoHL                                          ; $66b7: $ef
	sbc [hl]                                         ; $66b8: $9e
	ld [hl], b                                       ; $66b9: $70
	ld l, a                                          ; $66ba: $6f
	jr c, jr_026_673c                                ; $66bb: $38 $7f

	db $fc                                           ; $66bd: $fc
	sub h                                            ; $66be: $94
	db $fc                                           ; $66bf: $fc
	add e                                            ; $66c0: $83
	ld hl, sp-$79                                    ; $66c1: $f8 $87
	cp b                                             ; $66c3: $b8
	rst JumpTable                                          ; $66c4: $c7
	ldh a, [$cf]                                     ; $66c5: $f0 $cf
	rst GetHLinHL                                          ; $66c7: $cf
	ldh a, [rVBK]                                    ; $66c8: $f0 $4f
	ld [hl], e                                       ; $66ca: $73
	cp $87                                           ; $66cb: $fe $87
	ld e, [hl]                                       ; $66cd: $5e
	pop hl                                           ; $66ce: $e1
	ld e, h                                          ; $66cf: $5c
	db $e3                                           ; $66d0: $e3
	ld d, b                                          ; $66d1: $50
	rst AddAOntoHL                                          ; $66d2: $ef
	ld d, b                                          ; $66d3: $50
	rst AddAOntoHL                                          ; $66d4: $ef
	db $e3                                           ; $66d5: $e3
	inc e                                            ; $66d6: $1c
	jp $833c                                         ; $66d7: $c3 $3c $83


	ld a, h                                          ; $66da: $7c
	inc bc                                           ; $66db: $03
	db $fc                                           ; $66dc: $fc
	rrca                                             ; $66dd: $0f
	ld hl, sp+$1f                                    ; $66de: $f8 $1f
	ldh a, [$1f]                                     ; $66e0: $f0 $1f
	ldh a, [$2f]                                     ; $66e2: $f0 $2f
	ldh a, [rRP]                                     ; $66e4: $f0 $56
	ldh a, [rPCM34]                                  ; $66e6: $f0 $77
	cp $8f                                           ; $66e8: $fe $8f
	add d                                            ; $66ea: $82
	ld a, a                                          ; $66eb: $7f
	jp $e63e                                         ; $66ec: $c3 $3e $e6


	dec e                                            ; $66ef: $1d
	push hl                                          ; $66f0: $e5
	ld e, $fc                                        ; $66f1: $1e $fc
	rlca                                             ; $66f3: $07
	db $fd                                           ; $66f4: $fd
	ld b, $fa                                        ; $66f5: $06 $fa
	rlca                                             ; $66f7: $07
	rst $38                                          ; $66f8: $ff
	ld [bc], a                                       ; $66f9: $02
	inc bc                                           ; $66fa: $03
	jr jr_026_6748                                   ; $66fb: $18 $4b

	ld hl, sp-$63                                    ; $66fd: $f8 $9d
	xor d                                            ; $66ff: $aa
	ld d, l                                          ; $6700: $55
	ld c, e                                          ; $6701: $4b
	db $fc                                           ; $6702: $fc
	sbc b                                            ; $6703: $98
	ld d, [hl]                                       ; $6704: $56
	ld d, a                                          ; $6705: $57
	xor d                                            ; $6706: $aa
	xor e                                            ; $6707: $ab
	ld d, l                                          ; $6708: $55
	ld d, l                                          ; $6709: $55
	xor e                                            ; $670a: $ab
	ld h, a                                          ; $670b: $67
	ldh a, [$80]                                     ; $670c: $f0 $80
	xor a                                            ; $670e: $af
	inc bc                                           ; $670f: $03
	ld d, [hl]                                       ; $6710: $56
	rlca                                             ; $6711: $07
	xor l                                            ; $6712: $ad
	ld c, $57                                        ; $6713: $0e $57
	dec e                                            ; $6715: $1d
	db $ed                                           ; $6716: $ed
	rst FarCall                                          ; $6717: $f7
	ld e, e                                          ; $6718: $5b
	xor l                                            ; $6719: $ad
	xor [hl]                                         ; $671a: $ae
	ld e, c                                          ; $671b: $59
	ld e, d                                          ; $671c: $5a
	xor c                                            ; $671d: $a9
	or $ac                                           ; $671e: $f6 $ac
	or l                                             ; $6720: $b5
	db $ec                                           ; $6721: $ec
	ldh a, [c]                                       ; $6722: $f2
	xor [hl]                                         ; $6723: $ae
	or a                                             ; $6724: $b7
	ld a, [hl+]                                      ; $6725: $2a
	ld [hl], l                                       ; $6726: $75
	xor e                                            ; $6727: $ab
	or a                                             ; $6728: $b7
	add hl, hl                                       ; $6729: $29
	ld l, c                                          ; $672a: $69
	inc h                                            ; $672b: $24
	or b                                             ; $672c: $b0
	adc [hl]                                         ; $672d: $8e
	inc h                                            ; $672e: $24
	adc d                                            ; $672f: $8a
	nop                                              ; $6730: $00
	ld b, c                                          ; $6731: $41
	nop                                              ; $6732: $00
	add b                                            ; $6733: $80
	nop                                              ; $6734: $00
	ld b, b                                          ; $6735: $40
	nop                                              ; $6736: $00
	and b                                            ; $6737: $a0
	nop                                              ; $6738: $00
	ld d, b                                          ; $6739: $50
	nop                                              ; $673a: $00
	xor b                                            ; $673b: $a8

jr_026_673c:
	add b                                            ; $673c: $80

Jump_026_673d:
	ret nc                                           ; $673d: $d0

	add b                                            ; $673e: $80
	ld [hl], a                                       ; $673f: $77
	ld hl, sp-$66                                    ; $6740: $f8 $9a
	and c                                            ; $6742: $a1
	nop                                              ; $6743: $00
	ld [bc], a                                       ; $6744: $02
	nop                                              ; $6745: $00
	dec b                                            ; $6746: $05
	ld a, e                                          ; $6747: $7b

jr_026_6748:
	db $fc                                           ; $6748: $fc
	ld a, d                                          ; $6749: $7a
	adc $7e                                          ; $674a: $ce $7e
	inc d                                            ; $674c: $14
	sub [hl]                                         ; $674d: $96
	ld h, c                                          ; $674e: $61
	sbc $63                                          ; $674f: $de $63
	push de                                          ; $6751: $d5
	ld l, [hl]                                       ; $6752: $6e
	ei                                               ; $6753: $fb
	db $fc                                           ; $6754: $fc
	rst $38                                          ; $6755: $ff
	ldh a, [$7b]                                     ; $6756: $f0 $7b
	cp $7e                                           ; $6758: $fe $7e
	ld [hl-], a                                      ; $675a: $32
	add b                                            ; $675b: $80
	rst $38                                          ; $675c: $ff
	cp $91                                           ; $675d: $fe $91
	pop af                                           ; $675f: $f1
	sbc a                                            ; $6760: $9f
	ld h, a                                          ; $6761: $67
	rst $38                                          ; $6762: $ff
	adc e                                            ; $6763: $8b
	rst FarCall                                          ; $6764: $f7
	jp hl                                            ; $6765: $e9


	sub a                                            ; $6766: $97
	rst AddAOntoHL                                          ; $6767: $ef
	sub e                                            ; $6768: $93
	cp $87                                           ; $6769: $fe $87
	db $fc                                           ; $676b: $fc
	rst $38                                          ; $676c: $ff
	cp h                                             ; $676d: $bc
	jp $807f                                         ; $676e: $c3 $7f $80


	ld a, a                                          ; $6771: $7f
	add b                                            ; $6772: $80
	rst $38                                          ; $6773: $ff
	nop                                              ; $6774: $00
	ret nz                                           ; $6775: $c0

	ccf                                              ; $6776: $3f
	ret nz                                           ; $6777: $c0

	ccf                                              ; $6778: $3f
	ldh [$1f], a                                     ; $6779: $e0 $1f

jr_026_677b:
	sub b                                            ; $677b: $90
	ldh a, [rIF]                                     ; $677c: $f0 $0f
	jr nz, @+$01                                     ; $677e: $20 $ff

	sub b                                            ; $6780: $90
	ld a, a                                          ; $6781: $7f
	ret z                                            ; $6782: $c8

	ccf                                              ; $6783: $3f
	db $f4                                           ; $6784: $f4
	rrca                                             ; $6785: $0f
	ld a, [$0107]                                    ; $6786: $fa $07 $01
	rst $38                                          ; $6789: $ff
	rrca                                             ; $678a: $0f
	sbc $ff                                          ; $678b: $de $ff

jr_026_678d:
	ld a, a                                          ; $678d: $7f
	db $eb                                           ; $678e: $eb
	ld a, a                                          ; $678f: $7f
	cp $93                                           ; $6790: $fe $93
	ld e, a                                          ; $6792: $5f
	ldh [$7f], a                                     ; $6793: $e0 $7f
	ret nz                                           ; $6795: $c0

	cp [hl]                                          ; $6796: $be
	pop bc                                           ; $6797: $c1
	or b                                             ; $6798: $b0
	rst GetHLinHL                                          ; $6799: $cf
	ldh [$9f], a                                     ; $679a: $e0 $9f
	ld b, b                                          ; $679c: $40
	cp a                                             ; $679d: $bf
	ld h, a                                          ; $679e: $67
	ld [$d17f], sp                                   ; $679f: $08 $7f $d1
	ld l, a                                          ; $67a2: $6f
	ret z                                            ; $67a3: $c8

	sbc d                                            ; $67a4: $9a
	cp $03                                           ; $67a5: $fe $03
	db $fd                                           ; $67a7: $fd
	inc bc                                           ; $67a8: $03
	rst $38                                          ; $67a9: $ff
	ld l, c                                          ; $67aa: $69
	db $f4                                           ; $67ab: $f4
	ld [hl], a                                       ; $67ac: $77
	cp $6f                                           ; $67ad: $fe $6f
	ld c, b                                          ; $67af: $48
	sbc e                                            ; $67b0: $9b
	push de                                          ; $67b1: $d5
	xor d                                            ; $67b2: $aa
	xor d                                            ; $67b3: $aa
	push de                                          ; $67b4: $d5
	ld l, e                                          ; $67b5: $6b
	db $fc                                           ; $67b6: $fc
	ld b, a                                          ; $67b7: $47
	jr nz, jr_026_67bd                               ; $67b8: $20 $03

	db $fc                                           ; $67ba: $fc
	ld c, a                                          ; $67bb: $4f
	db $fc                                           ; $67bc: $fc

jr_026_67bd:
	add b                                            ; $67bd: $80
	or h                                             ; $67be: $b4
	ld d, c                                          ; $67bf: $51
	ld e, d                                          ; $67c0: $5a
	or c                                             ; $67c1: $b1
	or l                                             ; $67c2: $b5
	ld d, b                                          ; $67c3: $50
	ld e, d                                          ; $67c4: $5a
	or b                                             ; $67c5: $b0
	or l                                             ; $67c6: $b5
	ld h, b                                          ; $67c7: $60
	ld l, d                                          ; $67c8: $6a
	and b                                            ; $67c9: $a0
	push de                                          ; $67ca: $d5
	ld b, b                                          ; $67cb: $40
	ld l, d                                          ; $67cc: $6a
	ret nz                                           ; $67cd: $c0

	ld l, b                                          ; $67ce: $68
	inc h                                            ; $67cf: $24
	or h                                             ; $67d0: $b4
	ld [hl+], a                                      ; $67d1: $22
	ld l, c                                          ; $67d2: $69
	ld [hl+], a                                      ; $67d3: $22
	and [hl]                                         ; $67d4: $a6
	jr nz, jr_026_683c                               ; $67d5: $20 $65

	jr nz, jr_026_677b                               ; $67d7: $20 $a2

	jr nz, jr_026_683c                               ; $67d9: $20 $61

	jr nz, jr_026_678d                               ; $67db: $20 $b0

	adc [hl]                                         ; $67dd: $8e
	jr nz, @+$6a                                     ; $67de: $20 $68

	ret nz                                           ; $67e0: $c0

	ld d, h                                          ; $67e1: $54
	ld b, b                                          ; $67e2: $40
	ld l, d                                          ; $67e3: $6a
	jr nz, jr_026_67fb                               ; $67e4: $20 $15

	jr nc, jr_026_6802                               ; $67e6: $30 $1a

	db $10                                           ; $67e8: $10
	sbc c                                            ; $67e9: $99
	inc c                                            ; $67ea: $0c
	ld c, $04                                        ; $67eb: $0e $04
	ld b, $03                                        ; $67ed: $06 $03
	ld a, c                                          ; $67ef: $79
	push de                                          ; $67f0: $d5
	adc e                                            ; $67f1: $8b
	ld bc, $0103                                     ; $67f2: $01 $03 $01
	dec b                                            ; $67f5: $05
	ld bc, $0389                                     ; $67f6: $01 $89 $03
	ld d, [hl]                                       ; $67f9: $56
	inc bc                                           ; $67fa: $03

jr_026_67fb:
	xor d                                            ; $67fb: $aa
	rlca                                             ; $67fc: $07
	ld d, h                                          ; $67fd: $54
	rlca                                             ; $67fe: $07
	adc $f5                                          ; $67ff: $ce $f5
	adc [hl]                                         ; $6801: $8e

jr_026_6802:
	push af                                          ; $6802: $f5
	adc l                                            ; $6803: $8d
	db $f4                                           ; $6804: $f4
	dec c                                            ; $6805: $0d
	ld l, e                                          ; $6806: $6b
	cp $97                                           ; $6807: $fe $97
	add hl, bc                                       ; $6809: $09
	db $f4                                           ; $680a: $f4
	reti                                             ; $680b: $d9


	ld a, $33                                        ; $680c: $3e $33
	inc e                                            ; $680e: $1c
	rla                                              ; $680f: $17
	ld [$fe5f], sp                                   ; $6810: $08 $5f $fe
	ld a, a                                          ; $6813: $7f
	ld c, $9d                                        ; $6814: $0e $9d
	ld hl, sp+$07                                    ; $6816: $f8 $07
	ld l, l                                          ; $6818: $6d
	jr nc, @+$71                                     ; $6819: $30 $6f

	ld b, b                                          ; $681b: $40
	ld a, a                                          ; $681c: $7f
	ld sp, hl                                        ; $681d: $f9
	ld a, l                                          ; $681e: $7d
	ld a, [hl-]                                      ; $681f: $3a
	ld a, h                                          ; $6820: $7c
	or $7f                                           ; $6821: $f6 $7f
	cp $7f                                           ; $6823: $fe $7f
	ld a, [$fe7f]                                    ; $6825: $fa $7f $fe
	ld a, a                                          ; $6828: $7f
	db $f4                                           ; $6829: $f4

jr_026_682a:
	sbc h                                            ; $682a: $9c
	add c                                            ; $682b: $81
	ld a, a                                          ; $682c: $7f
	nop                                              ; $682d: $00
	ld [hl], a                                       ; $682e: $77
	inc hl                                           ; $682f: $23
	ld a, a                                          ; $6830: $7f
	dec de                                           ; $6831: $1b
	ld a, e                                          ; $6832: $7b

jr_026_6833:
	db $dd                                           ; $6833: $dd
	ld a, c                                          ; $6834: $79
	rlca                                             ; $6835: $07
	add b                                            ; $6836: $80
	ld sp, hl                                        ; $6837: $f9
	inc c                                            ; $6838: $0c
	di                                               ; $6839: $f3
	db $fc                                           ; $683a: $fc
	inc bc                                           ; $683b: $03

jr_026_683c:
	ldh a, [rIF]                                     ; $683c: $f0 $0f
	ldh [$1f], a                                     ; $683e: $e0 $1f
	ret nz                                           ; $6840: $c0

	ccf                                              ; $6841: $3f
	add b                                            ; $6842: $80
	ld a, a                                          ; $6843: $7f
	ld bc, $07fe                                     ; $6844: $01 $fe $07
	ld hl, sp+$1f                                    ; $6847: $f8 $1f
	ldh [$7f], a                                     ; $6849: $e0 $7f
	add b                                            ; $684b: $80

jr_026_684c:
	ccf                                              ; $684c: $3f
	ret nz                                           ; $684d: $c0

	rra                                              ; $684e: $1f
	ldh [rIF], a                                     ; $684f: $e0 $0f
	ldh a, [rTAC]                                    ; $6851: $f0 $07
	ld hl, sp-$3d                                    ; $6853: $f8 $c3
	inc a                                            ; $6855: $3c
	adc e                                            ; $6856: $8b
	pop af                                           ; $6857: $f1
	ld c, $ff                                        ; $6858: $0e $ff
	nop                                              ; $685a: $00
	ld l, d                                          ; $685b: $6a
	push de                                          ; $685c: $d5
	push de                                          ; $685d: $d5
	ld l, d                                          ; $685e: $6a
	ld [$f535], a                                    ; $685f: $ea $35 $f5
	ld a, [hl+]                                      ; $6862: $2a
	jp c, $ed35                                      ; $6863: $da $35 $ed

	ld a, [de]                                       ; $6866: $1a
	ld a, [$f50d]                                    ; $6867: $fa $0d $f5
	ld c, $03                                        ; $686a: $0e $03
	inc e                                            ; $686c: $1c
	sbc b                                            ; $686d: $98
	ld d, l                                          ; $686e: $55
	db $dd                                           ; $686f: $dd
	ld [hl+], a                                      ; $6870: $22
	xor d                                            ; $6871: $aa
	ld d, l                                          ; $6872: $55
	ld [hl], a                                       ; $6873: $77
	adc b                                            ; $6874: $88
	daa                                              ; $6875: $27
	ld hl, sp+$7f                                    ; $6876: $f8 $7f
	ld [$da8d], sp                                   ; $6878: $08 $8d $da
	jr nc, jr_026_682a                               ; $687b: $30 $ad

	ld e, b                                          ; $687d: $58
	halt                                             ; $687e: $76
	adc h                                            ; $687f: $8c
	xor e                                            ; $6880: $ab
	ld d, [hl]                                       ; $6881: $56
	sbc $22                                          ; $6882: $de $22
	xor e                                            ; $6884: $ab
	ld d, l                                          ; $6885: $55
	ld [hl], a                                       ; $6886: $77
	adc c                                            ; $6887: $89
	ld [hl], b                                       ; $6888: $70
	jr nz, jr_026_6833                               ; $6889: $20 $a8

	jr nz, jr_026_6904                               ; $688b: $20 $77

	db $fc                                           ; $688d: $fc
	sub a                                            ; $688e: $97
	ld [hl], l                                       ; $688f: $75
	jr nz, jr_026_684c                               ; $6890: $20 $ba

	jr nz, @+$7f                                     ; $6892: $20 $7d

jr_026_6894:
	jr nz, jr_026_6894                               ; $6894: $20 $fe

	ldh a, [rPCM34]                                  ; $6896: $f0 $77
	rrca                                             ; $6898: $0f
	ei                                               ; $6899: $fb
	ld a, l                                          ; $689a: $7d
	ld a, [$fc77]                                    ; $689b: $fa $77 $fc
	adc [hl]                                         ; $689e: $8e
	inc l                                            ; $689f: $2c
	add a                                            ; $68a0: $87
	sbc b                                            ; $68a1: $98
	rst GetHLinHL                                          ; $68a2: $cf
	ld [hl], b                                       ; $68a3: $70
	ld a, a                                          ; $68a4: $7f
	inc d                                            ; $68a5: $14
	dec de                                           ; $68a6: $1b
	ld d, $19                                        ; $68a7: $16 $19
	daa                                              ; $68a9: $27
	jr c, jr_026_68f3                                ; $68aa: $38 $47

	ld a, b                                          ; $68ac: $78

jr_026_68ad:
	add a                                            ; $68ad: $87
	ld hl, sp+$09                                    ; $68ae: $f8 $09
	ld a, e                                          ; $68b0: $7b
	inc c                                            ; $68b1: $0c
	sbc l                                            ; $68b2: $9d
	add hl, de                                       ; $68b3: $19
	db $e4                                           ; $68b4: $e4
	ld [hl], a                                       ; $68b5: $77
	cp $95                                           ; $68b6: $fe $95
	sbc c                                            ; $68b8: $99
	ld h, h                                          ; $68b9: $64
	ld sp, hl                                        ; $68ba: $f9
	inc b                                            ; $68bb: $04
	ld sp, hl                                        ; $68bc: $f9
	inc b                                            ; $68bd: $04
	rla                                              ; $68be: $17
	ld [$040b], sp                                   ; $68bf: $08 $0b $04
	ld h, a                                          ; $68c2: $67
	cp $9b                                           ; $68c3: $fe $9b
	add hl, bc                                       ; $68c5: $09
	ld [bc], a                                       ; $68c6: $02
	add hl, sp                                       ; $68c7: $39
	ld [bc], a                                       ; $68c8: $02
	ld d, l                                          ; $68c9: $55
	inc [hl]                                         ; $68ca: $34
	ld a, l                                          ; $68cb: $7d
	inc d                                            ; $68cc: $14
	ld a, a                                          ; $68cd: $7f
	inc h                                            ; $68ce: $24
	ld a, a                                          ; $68cf: $7f
	jr z, jr_026_6951                                ; $68d0: $28 $7f

	inc c                                            ; $68d2: $0c
	ld a, a                                          ; $68d3: $7f
	cp $9b                                           ; $68d4: $fe $9b
	pop hl                                           ; $68d6: $e1
	ccf                                              ; $68d7: $3f
	reti                                             ; $68d8: $d9


	ccf                                              ; $68d9: $3f
	ld a, d                                          ; $68da: $7a
	ld bc, $0386                                     ; $68db: $01 $86 $03
	ld a, a                                          ; $68de: $7f
	add d                                            ; $68df: $82
	adc b                                            ; $68e0: $88
	rst FarCall                                          ; $68e1: $f7
	db $d3                                           ; $68e2: $d3
	db $ec                                           ; $68e3: $ec
	cpl                                              ; $68e4: $2f
	ldh a, [rAUD3LEVEL]                              ; $68e5: $f0 $1c
	di                                               ; $68e7: $f3
	inc de                                           ; $68e8: $13
	db $fc                                           ; $68e9: $fc
	sbc $ff                                          ; $68ea: $de $ff
	di                                               ; $68ec: $f3
	rst $38                                          ; $68ed: $ff
	adc b                                            ; $68ee: $88
	ld a, a                                          ; $68ef: $7f
	ld a, a                                          ; $68f0: $7f
	add b                                            ; $68f1: $80
	pop hl                                           ; $68f2: $e1

jr_026_68f3:
	ld e, $81                                        ; $68f3: $1e $81
	ld a, [hl]                                       ; $68f5: $7e
	ld [hl], a                                       ; $68f6: $77
	pop de                                           ; $68f7: $d1
	ld a, [hl]                                       ; $68f8: $7e
	db $fc                                           ; $68f9: $fc
	ld a, a                                          ; $68fa: $7f
	and c                                            ; $68fb: $a1
	sbc l                                            ; $68fc: $9d
	xor $f1                                          ; $68fd: $ee $f1
	ld e, a                                          ; $68ff: $5f
	jp nz, $f075                                     ; $6900: $c2 $75 $f0

	ld a, [hl]                                       ; $6903: $7e

jr_026_6904:
	db $f4                                           ; $6904: $f4
	ld [hl], h                                       ; $6905: $74
	db $fc                                           ; $6906: $fc
	ld a, l                                          ; $6907: $7d
	xor $7f                                          ; $6908: $ee $7f
	cp $7e                                           ; $690a: $fe $7e
	ret c                                            ; $690c: $d8

	ld a, [hl]                                       ; $690d: $7e
	xor b                                            ; $690e: $a8
	ld [hl], a                                       ; $690f: $77
	cp $63                                           ; $6910: $fe $63
	jr nc, jr_026_68ad                               ; $6912: $30 $99

	push de                                          ; $6914: $d5
	db $dd                                           ; $6915: $dd
	and d                                            ; $6916: $a2
	xor d                                            ; $6917: $aa
	push de                                          ; $6918: $d5
	rst FarCall                                          ; $6919: $f7
	inc hl                                           ; $691a: $23
	jr @+$05                                         ; $691b: $18 $03

	ld hl, sp+$6b                                    ; $691d: $f8 $6b
	ld hl, sp-$80                                    ; $691f: $f8 $80
	xor a                                            ; $6921: $af
	ld e, h                                          ; $6922: $5c
	db $db                                           ; $6923: $db
	ld l, $ad                                        ; $6924: $2e $ad
	ld d, a                                          ; $6926: $57
	ld [hl], h                                       ; $6927: $74
	adc a                                            ; $6928: $8f
	xor [hl]                                         ; $6929: $ae
	ld d, a                                          ; $692a: $57
	sbc $23                                          ; $692b: $de $23
	xor d                                            ; $692d: $aa
	ld d, a                                          ; $692e: $57
	halt                                             ; $692f: $76
	adc e                                            ; $6930: $8b
	ld b, c                                          ; $6931: $41
	ld bc, $03a2                                     ; $6932: $01 $a2 $03
	ld d, h                                          ; $6935: $54
	add a                                            ; $6936: $87
	xor e                                            ; $6937: $ab
	call z, $f8f7                                    ; $6938: $cc $f7 $f8
	adc a                                            ; $693b: $8f
	ldh a, [hDisp1_LCDC]                                     ; $693c: $f0 $8f
	ldh a, [hDisp0_OBP1]                                     ; $693e: $f0 $87
	sbc d                                            ; $6940: $9a
	ld hl, sp+$03                                    ; $6941: $f8 $03
	db $fc                                           ; $6943: $fc
	inc sp                                           ; $6944: $33
	call z, Call_026_577a                            ; $6945: $cc $7a $57
	sbc [hl]                                         ; $6948: $9e
	ld b, $76                                        ; $6949: $06 $76
	inc l                                            ; $694b: $2c
	halt                                             ; $694c: $76
	ld a, [hl+]                                      ; $694d: $2a
	ld [hl], a                                       ; $694e: $77
	inc c                                            ; $694f: $0c
	sbc [hl]                                         ; $6950: $9e

jr_026_6951:
	ld hl, sp+$77                                    ; $6951: $f8 $77
	cp $8e                                           ; $6953: $fe $8e
	dec b                                            ; $6955: $05
	ld a, c                                          ; $6956: $79
	add [hl]                                         ; $6957: $86
	ld a, e                                          ; $6958: $7b
	add h                                            ; $6959: $84
	ccf                                              ; $695a: $3f
	ret nz                                           ; $695b: $c0

	ld c, c                                          ; $695c: $49
	ld [bc], a                                       ; $695d: $02
	add c                                            ; $695e: $81
	ld [hl-], a                                      ; $695f: $32
	jr nz, jr_026_69bb                               ; $6960: $20 $59

	ld [hl], b                                       ; $6962: $70
	adc l                                            ; $6963: $8d
	ld hl, sp+$07                                    ; $6964: $f8 $07
	ld l, a                                          ; $6966: $6f
	ld c, d                                          ; $6967: $4a
	ld e, [hl]                                       ; $6968: $5e
	ld b, $6f                                        ; $6969: $06 $6f
	cp $7e                                           ; $696b: $fe $7e
	rst AddAOntoHL                                          ; $696d: $ef
	ld a, c                                          ; $696e: $79
	ld sp, $ff91                                     ; $696f: $31 $91 $ff
	pop de                                           ; $6972: $d1
	ccf                                              ; $6973: $3f
	db $ed                                           ; $6974: $ed
	rra                                              ; $6975: $1f
	ei                                               ; $6976: $fb
	rlca                                             ; $6977: $07
	rra                                              ; $6978: $1f
	db $e3                                           ; $6979: $e3
	add d                                            ; $697a: $82
	ld a, a                                          ; $697b: $7f
	ld [$08ff], sp                                   ; $697c: $08 $ff $08
	ld [hl], c                                       ; $697f: $71
	ldh a, [$7f]                                     ; $6980: $f0 $7f
	cp $94                                           ; $6982: $fe $94
	add [hl]                                         ; $6984: $86
	rst $38                                          ; $6985: $ff
	ldh [c], a                                       ; $6986: $e2
	rst $38                                          ; $6987: $ff
	dec sp                                           ; $6988: $3b
	rst $38                                          ; $6989: $ff
	inc sp                                           ; $698a: $33
	db $fc                                           ; $698b: $fc
	dec e                                            ; $698c: $1d
	cp $0e                                           ; $698d: $fe $0e
	ld [hl], e                                       ; $698f: $73
	call c, $c96f                                    ; $6990: $dc $6f $c9
	sbc l                                            ; $6993: $9d
	cp a                                             ; $6994: $bf
	ld b, b                                          ; $6995: $40
	ld l, a                                          ; $6996: $6f
	inc b                                            ; $6997: $04
	sub l                                            ; $6998: $95
	rst $38                                          ; $6999: $ff
	add b                                            ; $699a: $80
	cp a                                             ; $699b: $bf
	ret nz                                           ; $699c: $c0

	cp a                                             ; $699d: $bf
	ret nz                                           ; $699e: $c0

	sbc a                                            ; $699f: $9f
	pop hl                                           ; $69a0: $e1
	ld hl, sp+$07                                    ; $69a1: $f8 $07
	ld l, l                                          ; $69a3: $6d
	ldh [$7e], a                                     ; $69a4: $e0 $7e
	cp h                                             ; $69a6: $bc
	ld a, a                                          ; $69a7: $7f
	and a                                            ; $69a8: $a7
	ld a, e                                          ; $69a9: $7b
	or h                                             ; $69aa: $b4
	sbc [hl]                                         ; $69ab: $9e
	cp $07                                           ; $69ac: $fe $07
	ld [$fa7f], sp                                   ; $69ae: $08 $7f $fa
	inc bc                                           ; $69b1: $03
	db $fc                                           ; $69b2: $fc
	ld c, a                                          ; $69b3: $4f
	db $fc                                           ; $69b4: $fc
	sbc h                                            ; $69b5: $9c
	inc hl                                           ; $69b6: $23
	ld [hl], a                                       ; $69b7: $77
	adc c                                            ; $69b8: $89
	ld h, a                                          ; $69b9: $67
	db $fc                                           ; $69ba: $fc

jr_026_69bb:
	ld a, [hl]                                       ; $69bb: $7e
	cp $7f                                           ; $69bc: $fe $7f
	nop                                              ; $69be: $00
	halt                                             ; $69bf: $76
	sbc e                                            ; $69c0: $9b
	ld [hl], a                                       ; $69c1: $77
	dec d                                            ; $69c2: $15
	sbc d                                            ; $69c3: $9a
	jp $33fc                                         ; $69c4: $c3 $fc $33


	db $fc                                           ; $69c7: $fc
	dec c                                            ; $69c8: $0d
	ld a, e                                          ; $69c9: $7b
	adc [hl]                                         ; $69ca: $8e
	ld a, c                                          ; $69cb: $79
	ld d, e                                          ; $69cc: $53
	ld e, b                                          ; $69cd: $58
	ld [hl], d                                       ; $69ce: $72
	ld [hl], h                                       ; $69cf: $74
	ld e, b                                          ; $69d0: $58
	ld a, l                                          ; $69d1: $7d
	ld h, d                                          ; $69d2: $62
	ld [hl], l                                       ; $69d3: $75
	ld h, b                                          ; $69d4: $60
	ld [hl], l                                       ; $69d5: $75
	ld e, [hl]                                       ; $69d6: $5e
	ld [hl], a                                       ; $69d7: $77
	sub $57                                          ; $69d8: $d6 $57
	inc d                                            ; $69da: $14
	ld h, a                                          ; $69db: $67
	cp $89                                           ; $69dc: $fe $89
	sbc a                                            ; $69de: $9f
	ld h, b                                          ; $69df: $60
	adc a                                            ; $69e0: $8f
	ld [hl], b                                       ; $69e1: $70
	adc a                                            ; $69e2: $8f
	ld [hl], b                                       ; $69e3: $70
	add a                                            ; $69e4: $87
	ld a, b                                          ; $69e5: $78
	add e                                            ; $69e6: $83
	ld a, h                                          ; $69e7: $7c
	add e                                            ; $69e8: $83
	ld a, h                                          ; $69e9: $7c
	ldh [c], a                                       ; $69ea: $e2
	rra                                              ; $69eb: $1f
	or $0f                                           ; $69ec: $f6 $0f
	ei                                               ; $69ee: $fb
	rlca                                             ; $69ef: $07
	rst $38                                          ; $69f0: $ff
	inc bc                                           ; $69f1: $03
	db $fd                                           ; $69f2: $fd
	ld [bc], a                                       ; $69f3: $02
	ld l, a                                          ; $69f4: $6f
	cp $7f                                           ; $69f5: $fe $7f
	push af                                          ; $69f7: $f5
	ld [hl], a                                       ; $69f8: $77
	ld d, $95                                        ; $69f9: $16 $95
	pop bc                                           ; $69fb: $c1
	rst $38                                          ; $69fc: $ff
	ld [hl], c                                       ; $69fd: $71
	rst $38                                          ; $69fe: $ff
	sbc l                                            ; $69ff: $9d
	ld a, a                                          ; $6a00: $7f
	rst JumpTable                                          ; $6a01: $c7
	ccf                                              ; $6a02: $3f
	jp Jump_026_6f3f                                 ; $6a03: $c3 $3f $6f


	call $117b                                       ; $6a06: $cd $7b $11
	ld l, e                                          ; $6a09: $6b
	cp $7f                                           ; $6a0a: $fe $7f
	ld bc, $1c9e                                     ; $6a0c: $01 $9e $1c
	ld l, e                                          ; $6a0f: $6b
	cp c                                             ; $6a10: $b9
	ld a, a                                          ; $6a11: $7f
	sub $91                                          ; $6a12: $d6 $91
	dec e                                            ; $6a14: $1d
	ld a, [$e837]                                    ; $6a15: $fa $37 $e8
	dec b                                            ; $6a18: $05
	cp $07                                           ; $6a19: $fe $07
	db $fc                                           ; $6a1b: $fc
	dec c                                            ; $6a1c: $0d
	ld a, [$f817]                                    ; $6a1d: $fa $17 $f8
	db $fd                                           ; $6a20: $fd
	ldh [c], a                                       ; $6a21: $e2
	inc bc                                           ; $6a22: $03
	inc [hl]                                         ; $6a23: $34
	ld [hl], e                                       ; $6a24: $73
	db $fc                                           ; $6a25: $fc
	ld a, a                                          ; $6a26: $7f
	sbc [hl]                                         ; $6a27: $9e
	ld a, [hl]                                       ; $6a28: $7e
	cp [hl]                                          ; $6a29: $be
	sbc c                                            ; $6a2a: $99
	ei                                               ; $6a2b: $fb
	inc b                                            ; $6a2c: $04
	rst AddAOntoHL                                          ; $6a2d: $ef
	db $10                                           ; $6a2e: $10
	rst $38                                          ; $6a2f: $ff
	nop                                              ; $6a30: $00
	ld [hl], a                                       ; $6a31: $77
	ld hl, sp+$7f                                    ; $6a32: $f8 $7f
	ld a, [$ec7f]                                    ; $6a34: $fa $7f $ec
	ld a, a                                          ; $6a37: $7f
	db $fc                                           ; $6a38: $fc
	sub a                                            ; $6a39: $97
	or a                                             ; $6a3a: $b7
	ld c, b                                          ; $6a3b: $48
	cp $01                                           ; $6a3c: $fe $01
	ld a, a                                          ; $6a3e: $7f
	add b                                            ; $6a3f: $80
	rst FarCall                                          ; $6a40: $f7
	ld [$a76f], sp                                   ; $6a41: $08 $6f $a7
	ld [hl], a                                       ; $6a44: $77
	xor $7f                                          ; $6a45: $ee $7f
	ret c                                            ; $6a47: $d8

	sbc l                                            ; $6a48: $9d
	rst SubAFromDE                                          ; $6a49: $df
	jr nz, jr_026_6ac3                               ; $6a4a: $20 $77

	ldh [c], a                                       ; $6a4c: $e2
	ld a, a                                          ; $6a4d: $7f
	cp $7f                                           ; $6a4e: $fe $7f
	inc c                                            ; $6a50: $0c
	ld a, h                                          ; $6a51: $7c
	ld [hl], e                                       ; $6a52: $73
	ld [hl], a                                       ; $6a53: $77
	db $fc                                           ; $6a54: $fc
	ld a, a                                          ; $6a55: $7f
	cp $9b                                           ; $6a56: $fe $9b
	ld a, d                                          ; $6a58: $7a
	add a                                            ; $6a59: $87
	rst AddAOntoHL                                          ; $6a5a: $ef
	inc de                                           ; $6a5b: $13
	ld a, b                                          ; $6a5c: $78
	ld d, b                                          ; $6a5d: $50
	ld l, a                                          ; $6a5e: $6f
	rrca                                             ; $6a5f: $0f
	sbc [hl]                                         ; $6a60: $9e
	cp $6f                                           ; $6a61: $fe $6f
	ld a, h                                          ; $6a63: $7c
	sbc c                                            ; $6a64: $99
	ldh a, [rIE]                                     ; $6a65: $f0 $ff
	rrca                                             ; $6a67: $0f
	ldh a, [$e0]                                     ; $6a68: $f0 $e0
	rra                                              ; $6a6a: $1f
	ld d, a                                          ; $6a6b: $57
	inc h                                            ; $6a6c: $24

jr_026_6a6d:
	ld a, a                                          ; $6a6d: $7f
	ld c, $7f                                        ; $6a6e: $0e $7f
	db $e4                                           ; $6a70: $e4
	sbc l                                            ; $6a71: $9d
	ld a, [hl]                                       ; $6a72: $7e
	rst $38                                          ; $6a73: $ff
	ld a, c                                          ; $6a74: $79
	ld h, l                                          ; $6a75: $65
	ld l, e                                          ; $6a76: $6b
	cp $6e                                           ; $6a77: $fe $6e
	db $ec                                           ; $6a79: $ec
	ld l, a                                          ; $6a7a: $6f
	ld hl, sp+$77                                    ; $6a7b: $f8 $77
	rst AddAOntoHL                                          ; $6a7d: $ef
	ld a, a                                          ; $6a7e: $7f
	ld c, $9a                                        ; $6a7f: $0e $9a
	add [hl]                                         ; $6a81: $86
	ld a, a                                          ; $6a82: $7f
	sbc b                                            ; $6a83: $98
	ld a, a                                          ; $6a84: $7f
	ld h, b                                          ; $6a85: $60
	ld h, e                                          ; $6a86: $63
	sbc $7f                                          ; $6a87: $de $7f
	ld [hl], b                                       ; $6a89: $70
	ld a, l                                          ; $6a8a: $7d
	reti                                             ; $6a8b: $d9


	ld a, [hl]                                       ; $6a8c: $7e
	or c                                             ; $6a8d: $b1
	ld a, a                                          ; $6a8e: $7f
	dec c                                            ; $6a8f: $0d
	sbc l                                            ; $6a90: $9d
	ld a, [hl]                                       ; $6a91: $7e
	add c                                            ; $6a92: $81
	ld [hl], l                                       ; $6a93: $75
	ld [hl-], a                                      ; $6a94: $32
	ld a, a                                          ; $6a95: $7f
	cp $96                                           ; $6a96: $fe $96
	db $ec                                           ; $6a98: $ec
	rra                                              ; $6a99: $1f
	ld [hl], b                                       ; $6a9a: $70
	rst $38                                          ; $6a9b: $ff
	ldh [$1f], a                                     ; $6a9c: $e0 $1f
	ldh a, [rIF]                                     ; $6a9e: $f0 $0f
	ld [hl], b                                       ; $6aa0: $70
	ld a, c                                          ; $6aa1: $79
	and c                                            ; $6aa2: $a1
	adc c                                            ; $6aa3: $89
	jr c, jr_026_6a6d                                ; $6aa4: $38 $c7

	ld hl, sp+$47                                    ; $6aa6: $f8 $47
	ld b, b                                          ; $6aa8: $40
	rst $38                                          ; $6aa9: $ff
	inc hl                                           ; $6aaa: $23
	rst $38                                          ; $6aab: $ff
	rra                                              ; $6aac: $1f
	db $fc                                           ; $6aad: $fc
	dec e                                            ; $6aae: $1d
	ldh a, [c]                                       ; $6aaf: $f2
	rrca                                             ; $6ab0: $0f
	ld hl, sp+$0b                                    ; $6ab1: $f8 $0b
	db $fc                                           ; $6ab3: $fc
	rra                                              ; $6ab4: $1f
	ldh a, [$7f]                                     ; $6ab5: $f0 $7f
	ldh a, [$fd]                                     ; $6ab7: $f0 $fd
	jp nz, Jump_026_4003                             ; $6ab9: $c2 $03 $40

	ld d, e                                          ; $6abc: $53
	ld b, b                                          ; $6abd: $40
	ccf                                              ; $6abe: $3f
	ldh a, [$03]                                     ; $6abf: $f0 $03
	cp $0f                                           ; $6ac1: $fe $0f

jr_026_6ac3:
	cp $7c                                           ; $6ac3: $fe $7c
	ld e, b                                          ; $6ac5: $58
	ld a, e                                          ; $6ac6: $7b
	cp $9e                                           ; $6ac7: $fe $9e
	db $ec                                           ; $6ac9: $ec
	ld [hl], e                                       ; $6aca: $73
	cp $9c                                           ; $6acb: $fe $9c
	ret z                                            ; $6acd: $c8

	ld a, a                                          ; $6ace: $7f
	ret z                                            ; $6acf: $c8

	ld a, e                                          ; $6ad0: $7b
	jr z, jr_026_6b50                                ; $6ad1: $28 $7d

	ld a, d                                          ; $6ad3: $7a
	ld a, h                                          ; $6ad4: $7c
	db $f4                                           ; $6ad5: $f4
	rst SubAFromDE                                          ; $6ad6: $df
	rst $38                                          ; $6ad7: $ff
	ld a, [hl]                                       ; $6ad8: $7e
	ei                                               ; $6ad9: $fb
	sbc [hl]                                         ; $6ada: $9e
	jr jr_026_6b56                                   ; $6adb: $18 $79

	ld b, [hl]                                       ; $6add: $46
	ld a, a                                          ; $6ade: $7f
	cp $77                                           ; $6adf: $fe $77
	inc l                                            ; $6ae1: $2c
	ld a, a                                          ; $6ae2: $7f
	add hl, sp                                       ; $6ae3: $39
	ld a, a                                          ; $6ae4: $7f
	ldh a, [c]                                       ; $6ae5: $f2
	rst SubAFromDE                                          ; $6ae6: $df
	rst $38                                          ; $6ae7: $ff
	sbc [hl]                                         ; $6ae8: $9e
	jr c, jr_026_6b5e                                ; $6ae9: $38 $73

	cp $6c                                           ; $6aeb: $fe $6c
	ld e, d                                          ; $6aed: $5a
	ld a, h                                          ; $6aee: $7c
	ld b, e                                          ; $6aef: $43
	sbc b                                            ; $6af0: $98
	db $fd                                           ; $6af1: $fd
	cp $0f                                           ; $6af2: $fe $0f
	rst $38                                          ; $6af4: $ff
	ld c, $ff                                        ; $6af5: $0e $ff
	inc c                                            ; $6af7: $0c
	ld l, e                                          ; $6af8: $6b
	ldh [$7f], a                                     ; $6af9: $e0 $7f
	cp $9a                                           ; $6afb: $fe $9a
	rst SubAFromDE                                          ; $6afd: $df
	ccf                                              ; $6afe: $3f
	cp $ff                                           ; $6aff: $fe $ff
	ld b, $7b                                        ; $6b01: $06 $7b
	cp $6d                                           ; $6b03: $fe $6d
	jp nc, $0e9c                                     ; $6b05: $d2 $9c $0e

	pop af                                           ; $6b08: $f1
	rst $38                                          ; $6b09: $ff
	ld [hl], e                                       ; $6b0a: $73
	jp nz, $fe7f                                     ; $6b0b: $c2 $7f $fe

	sub [hl]                                         ; $6b0e: $96
	cp l                                             ; $6b0f: $bd
	ld b, e                                          ; $6b10: $43
	cp $27                                           ; $6b11: $fe $27
	jp c, $e23f                                      ; $6b13: $da $3f $e2

	rst $38                                          ; $6b16: $ff
	ld [hl+], a                                      ; $6b17: $22
	ld a, e                                          ; $6b18: $7b
	cp $8b                                           ; $6b19: $fe $8b
	dec h                                            ; $6b1b: $25
	ei                                               ; $6b1c: $fb
	rla                                              ; $6b1d: $17
	ld sp, hl                                        ; $6b1e: $f9
	rst SubAFromDE                                          ; $6b1f: $df
	ldh a, [rVBK]                                    ; $6b20: $f0 $4f
	ld hl, sp+$5f                                    ; $6b22: $f8 $5f
	add sp, $57                                      ; $6b24: $e8 $57
	db $ec                                           ; $6b26: $ec
	cp a                                             ; $6b27: $bf
	ld h, h                                          ; $6b28: $64
	db $eb                                           ; $6b29: $eb
	ld [hl], $ff                                     ; $6b2a: $36 $ff
	ld [de], a                                       ; $6b2c: $12
	push af                                          ; $6b2d: $f5
	dec de                                           ; $6b2e: $1b
	inc bc                                           ; $6b2f: $03
	ld h, b                                          ; $6b30: $60
	inc bc                                           ; $6b31: $03
	cp $03                                           ; $6b32: $fe $03
	cp $13                                           ; $6b34: $fe $13
	cp $77                                           ; $6b36: $fe $77
	inc c                                            ; $6b38: $0c
	ld d, a                                          ; $6b39: $57
	cp $6f                                           ; $6b3a: $fe $6f
	ld c, d                                          ; $6b3c: $4a
	ld e, a                                          ; $6b3d: $5f
	cp $7f                                           ; $6b3e: $fe $7f
	ld c, $9b                                        ; $6b40: $0e $9b
	ld [hl], $f9                                     ; $6b42: $36 $f9
	scf                                              ; $6b44: $37
	ld hl, sp+$77                                    ; $6b45: $f8 $77
	cp $98                                           ; $6b47: $fe $98
	ccf                                              ; $6b49: $3f
	ldh a, [$3f]                                     ; $6b4a: $f0 $3f
	ldh a, [$2f]                                     ; $6b4c: $f0 $2f
	ldh a, [$0c]                                     ; $6b4e: $f0 $0c

jr_026_6b50:
	ld a, e                                          ; $6b50: $7b
	inc c                                            ; $6b51: $0c
	sbc e                                            ; $6b52: $9b
	adc h                                            ; $6b53: $8c
	ld a, a                                          ; $6b54: $7f
	db $ec                                           ; $6b55: $ec

jr_026_6b56:
	rra                                              ; $6b56: $1f
	ld h, a                                          ; $6b57: $67
	cp $77                                           ; $6b58: $fe $77
	inc c                                            ; $6b5a: $0c
	sub a                                            ; $6b5b: $97
	ld c, $f7                                        ; $6b5c: $0e $f7

jr_026_6b5e:
	ld a, [hl-]                                      ; $6b5e: $3a
	rst JumpTable                                          ; $6b5f: $c7
	ld a, [hl-]                                      ; $6b60: $3a
	rst JumpTable                                          ; $6b61: $c7
	ld a, $c3                                        ; $6b62: $3e $c3
	ld [hl], a                                       ; $6b64: $77
	cp $97                                           ; $6b65: $fe $97
	add hl, bc                                       ; $6b67: $09
	cp $2b                                           ; $6b68: $fe $2b
	call c, $1ce7                                    ; $6b6a: $dc $e7 $1c
	rst FarCall                                          ; $6b6d: $f7
	inc c                                            ; $6b6e: $0c
	ld [hl], a                                       ; $6b6f: $77
	cp $94                                           ; $6b70: $fe $94
	push af                                          ; $6b72: $f5
	ld c, $fd                                        ; $6b73: $0e $fd
	ld b, $df                                        ; $6b75: $06 $df
	ld sp, $11fe                                     ; $6b77: $31 $fe $11
	cp $11                                           ; $6b7a: $fe $11
	rst AddAOntoHL                                          ; $6b7c: $ef
	ld l, [hl]                                       ; $6b7d: $6e
	or e                                             ; $6b7e: $b3
	adc h                                            ; $6b7f: $8c
	ld [$0cfb], sp                                   ; $6b80: $08 $fb $0c
	rst $38                                          ; $6b83: $ff
	add hl, bc                                       ; $6b84: $09
	ld a, [$ff8d]                                    ; $6b85: $fa $8d $ff
	add h                                            ; $6b88: $84
	db $fd                                           ; $6b89: $fd
	add [hl]                                         ; $6b8a: $86
	cp e                                             ; $6b8b: $bb
	add $7a                                          ; $6b8c: $c6 $7a
	rst JumpTable                                          ; $6b8e: $c7
	db $fd                                           ; $6b8f: $fd
	ld b, e                                          ; $6b90: $43
	db $fd                                           ; $6b91: $fd
	ld b, e                                          ; $6b92: $43
	ld l, h                                          ; $6b93: $6c
	di                                               ; $6b94: $f3
	ld a, [hl]                                       ; $6b95: $7e
	cp l                                             ; $6b96: $bd
	ld a, h                                          ; $6b97: $7c
	rst FarCall                                          ; $6b98: $f7
	sbc c                                            ; $6b99: $99
	cp a                                             ; $6b9a: $bf
	ld h, b                                          ; $6b9b: $60
	rst $38                                          ; $6b9c: $ff
	jr nz, jr_026_6bfe                               ; $6b9d: $20 $5f

	or b                                             ; $6b9f: $b0
	inc bc                                           ; $6ba0: $03
	ld c, [hl]                                       ; $6ba1: $4e
	inc bc                                           ; $6ba2: $03
	cp $03                                           ; $6ba3: $fe $03
	cp $43                                           ; $6ba5: $fe $43
	nop                                              ; $6ba7: $00
	sbc [hl]                                         ; $6ba8: $9e
	call z, $fe7b                                    ; $6ba9: $cc $7b $fe
	sbc [hl]                                         ; $6bac: $9e
	call nz, $fe6b                                   ; $6bad: $c4 $6b $fe
	ld l, a                                          ; $6bb0: $6f
	ld a, [bc]                                       ; $6bb1: $0a
	ld [hl], a                                       ; $6bb2: $77
	ld a, [de]                                       ; $6bb3: $1a
	ld l, a                                          ; $6bb4: $6f
	cp $7f                                           ; $6bb5: $fe $7f
	ld c, $4f                                        ; $6bb7: $0e $4f
	cp $7f                                           ; $6bb9: $fe $7f
	ld c, $9c                                        ; $6bbb: $0e $9c
	db $e4                                           ; $6bbd: $e4
	rra                                              ; $6bbe: $1f
	and $63                                          ; $6bbf: $e6 $63
	cp $9d                                           ; $6bc1: $fe $9d
	ldh [c], a                                       ; $6bc3: $e2
	rra                                              ; $6bc4: $1f
	ld a, b                                          ; $6bc5: $78
	dec l                                            ; $6bc6: $2d
	sbc l                                            ; $6bc7: $9d
	jp Jump_026_733d                                 ; $6bc8: $c3 $3d $73


	cp $9d                                           ; $6bcb: $fe $9d
	ccf                                              ; $6bcd: $3f
	pop bc                                           ; $6bce: $c1
	ld [hl], a                                       ; $6bcf: $77
	cp $99                                           ; $6bd0: $fe $99
	ei                                               ; $6bd2: $fb
	ld b, $fb                                        ; $6bd3: $06 $fb
	ld b, $ff                                        ; $6bd5: $06 $ff

jr_026_6bd7:
	ld [bc], a                                       ; $6bd7: $02
	ld [hl], h                                       ; $6bd8: $74
	and b                                            ; $6bd9: $a0
	sub d                                            ; $6bda: $92
	db $fd                                           ; $6bdb: $fd
	inc bc                                           ; $6bdc: $03
	ld a, l                                          ; $6bdd: $7d
	add e                                            ; $6bde: $83
	ld a, l                                          ; $6bdf: $7d
	add e                                            ; $6be0: $83
	rst FarCall                                          ; $6be1: $f7
	inc c                                            ; $6be2: $0c
	rst $38                                          ; $6be3: $ff
	inc b                                            ; $6be4: $04
	rst $38                                          ; $6be5: $ff
	inc b                                            ; $6be6: $04
	db $fd                                           ; $6be7: $fd
	ld [hl], e                                       ; $6be8: $73
	ld [$fe77], a                                    ; $6be9: $ea $77 $fe
	add b                                            ; $6bec: $80
	db $dd                                           ; $6bed: $dd
	ld h, e                                          ; $6bee: $63
	cp [hl]                                          ; $6bef: $be
	ld h, c                                          ; $6bf0: $61
	cp [hl]                                          ; $6bf1: $be
	ld h, c                                          ; $6bf2: $61
	cp $21                                           ; $6bf3: $fe $21
	rst AddAOntoHL                                          ; $6bf5: $ef
	jr nc, jr_026_6bd7                               ; $6bf6: $30 $df

	jr nc, @+$01                                     ; $6bf8: $30 $ff

	db $10                                           ; $6bfa: $10
	rst $38                                          ; $6bfb: $ff
	db $10                                           ; $6bfc: $10
	ld a, a                                          ; $6bfd: $7f

jr_026_6bfe:
	sub b                                            ; $6bfe: $90
	rst AddAOntoHL                                          ; $6bff: $ef
	sbc b                                            ; $6c00: $98
	cp a                                             ; $6c01: $bf
	ret z                                            ; $6c02: $c8

	cp a                                             ; $6c03: $bf
	ret z                                            ; $6c04: $c8

	ld d, a                                          ; $6c05: $57
	db $ec                                           ; $6c06: $ec
	ld e, a                                          ; $6c07: $5f
	db $e4                                           ; $6c08: $e4
	ld e, e                                          ; $6c09: $5b
	and $af                                          ; $6c0a: $e6 $af
	sbc [hl]                                         ; $6c0c: $9e
	ld [hl], d                                       ; $6c0d: $72
	inc bc                                           ; $6c0e: $03
	ld c, [hl]                                       ; $6c0f: $4e
	inc bc                                           ; $6c10: $03
	cp $03                                           ; $6c11: $fe $03
	cp $53                                           ; $6c13: $fe $53
	cp $77                                           ; $6c15: $fe $77
	inc c                                            ; $6c17: $0c
	sbc h                                            ; $6c18: $9c
	add $7f                                          ; $6c19: $c6 $7f
	jp nz, $fe63                                     ; $6c1b: $c2 $63 $fe

	ld e, a                                          ; $6c1e: $5f
	ld b, $2f                                        ; $6c1f: $06 $2f
	nop                                              ; $6c21: $00
	ld a, h                                          ; $6c22: $7c
	ld b, a                                          ; $6c23: $47
	ld a, a                                          ; $6c24: $7f
	cp $9e                                           ; $6c25: $fe $9e
	di                                               ; $6c27: $f3
	ld e, e                                          ; $6c28: $5b
	cp $9d                                           ; $6c29: $fe $9d
	ld a, $c1                                        ; $6c2b: $3e $c1
	ld a, c                                          ; $6c2d: $79
	inc bc                                           ; $6c2e: $03
	ld e, e                                          ; $6c2f: $5b
	cp $95                                           ; $6c30: $fe $95
	db $fd                                           ; $6c32: $fd
	add e                                            ; $6c33: $83
	rst $38                                          ; $6c34: $ff
	add c                                            ; $6c35: $81
	rst $38                                          ; $6c36: $ff
	add c                                            ; $6c37: $81
	cp [hl]                                          ; $6c38: $be
	pop bc                                           ; $6c39: $c1
	cp [hl]                                          ; $6c3a: $be
	pop bc                                           ; $6c3b: $c1
	halt                                             ; $6c3c: $76
	inc l                                            ; $6c3d: $2c
	ld a, a                                          ; $6c3e: $7f
	cp $9e                                           ; $6c3f: $fe $9e
	ld a, [hl]                                       ; $6c41: $7e
	ld a, d                                          ; $6c42: $7a
	db $fc                                           ; $6c43: $fc
	sbc [hl]                                         ; $6c44: $9e
	ld a, a                                          ; $6c45: $7f
	ld a, e                                          ; $6c46: $7b
	xor $7f                                          ; $6c47: $ee $7f
	cp $9d                                           ; $6c49: $fe $9d
	cp $81                                           ; $6c4b: $fe $81
	halt                                             ; $6c4d: $76
	ld d, $9d                                        ; $6c4e: $16 $9d
	rst FarCall                                          ; $6c50: $f7
	jr jr_026_6cc0                                   ; $6c51: $18 $6d

	db $f4                                           ; $6c53: $f4
	add a                                            ; $6c54: $87
	ld a, e                                          ; $6c55: $7b
	adc h                                            ; $6c56: $8c
	rst FarCall                                          ; $6c57: $f7
	adc h                                            ; $6c58: $8c
	rst $38                                          ; $6c59: $ff
	add h                                            ; $6c5a: $84
	rst $38                                          ; $6c5b: $ff
	add h                                            ; $6c5c: $84
	xor a                                            ; $6c5d: $af
	ld [hl], d                                       ; $6c5e: $72
	xor l                                            ; $6c5f: $ad
	ld [hl], e                                       ; $6c60: $73
	rst SubAFromHL                                          ; $6c61: $d7
	add hl, sp                                       ; $6c62: $39
	rst SubAFromHL                                          ; $6c63: $d7
	add hl, sp                                       ; $6c64: $39
	sub $39                                          ; $6c65: $d6 $39
	xor $19                                          ; $6c67: $ee $19
	db $eb                                           ; $6c69: $eb
	inc e                                            ; $6c6a: $1c
	db $eb                                           ; $6c6b: $eb
	inc e                                            ; $6c6c: $1c
	ld h, e                                          ; $6c6d: $63
	ld h, [hl]                                       ; $6c6e: $66
	ld a, e                                          ; $6c6f: $7b
	call nc, $e871                                   ; $6c70: $d4 $71 $e8
	dec bc                                           ; $6c73: $0b
	ld b, b                                          ; $6c74: $40
	add hl, de                                       ; $6c75: $19
	nop                                              ; $6c76: $00
	sbc h                                            ; $6c77: $9c
	inc sp                                           ; $6c78: $33
	ld d, l                                          ; $6c79: $55
	ld d, l                                          ; $6c7a: $55
	call c, $9b33                                    ; $6c7b: $dc $33 $9b
	dec [hl]                                         ; $6c7e: $35
	ld d, l                                          ; $6c7f: $55
	ld d, l                                          ; $6c80: $55
	ld b, h                                          ; $6c81: $44
	ld d, a                                          ; $6c82: $57
	ld hl, sp+$67                                    ; $6c83: $f8 $67
	add sp, $63                                      ; $6c85: $e8 $63
	ld hl, sp+$7f                                    ; $6c87: $f8 $7f
	rst FarCall                                          ; $6c89: $f7
	pop bc                                           ; $6c8a: $c1
	inc sp                                           ; $6c8b: $33
	call z, $9633                                    ; $6c8c: $cc $33 $96
	nop                                              ; $6c8f: $00
	sbc e                                            ; $6c90: $9b
	adc b                                            ; $6c91: $88
	ld [hl], a                                       ; $6c92: $77
	ld [hl+], a                                      ; $6c93: $22
	db $dd                                           ; $6c94: $dd
	scf                                              ; $6c95: $37
	db $fc                                           ; $6c96: $fc
	sbc h                                            ; $6c97: $9c
	adc c                                            ; $6c98: $89
	ld [hl], a                                       ; $6c99: $77
	inc hl                                           ; $6c9a: $23
	ld h, a                                          ; $6c9b: $67
	db $fc                                           ; $6c9c: $fc
	sub c                                            ; $6c9d: $91
	sbc $fd                                          ; $6c9e: $de $fd
	halt                                             ; $6ca0: $76
	db $db                                           ; $6ca1: $db
	adc [hl]                                         ; $6ca2: $8e
	xor l                                            ; $6ca3: $ad
	add a                                            ; $6ca4: $87
	ld d, [hl]                                       ; $6ca5: $56
	ld b, e                                          ; $6ca6: $43
	ld l, e                                          ; $6ca7: $6b
	ld b, e                                          ; $6ca8: $43
	dec [hl]                                         ; $6ca9: $35
	ld hl, $bd8f                                     ; $6caa: $21 $8f $bd
	rra                                              ; $6cad: $1f
	rra                                              ; $6cae: $1f
	adc a                                            ; $6caf: $8f
	rst JumpTable                                          ; $6cb0: $c7
	adc e                                            ; $6cb1: $8b
	ld bc, $83e1                                     ; $6cb2: $01 $e1 $83
	di                                               ; $6cb5: $f3
	ld b, e                                          ; $6cb6: $43
	ld a, [$bde2]                                    ; $6cb7: $fa $e2 $bd
	ld h, [hl]                                       ; $6cba: $66
	ld c, a                                          ; $6cbb: $4f
	ld hl, sp-$61                                    ; $6cbc: $f8 $9f
	ldh a, [$bf]                                     ; $6cbe: $f0 $bf

jr_026_6cc0:
	ldh [$fc], a                                     ; $6cc0: $e0 $fc
	ret nz                                           ; $6cc2: $c0

	ret nz                                           ; $6cc3: $c0

	add b                                            ; $6cc4: $80
	ld bc, $1fb1                                     ; $6cc5: $01 $b1 $1f
	rst $38                                          ; $6cc8: $ff
	rst $38                                          ; $6cc9: $ff
	rst $38                                          ; $6cca: $ff
	rst $38                                          ; $6ccb: $ff
	nop                                              ; $6ccc: $00
	nop                                              ; $6ccd: $00
	rst $38                                          ; $6cce: $ff
	rst $38                                          ; $6ccf: $ff
	rst $38                                          ; $6cd0: $ff
	rst $38                                          ; $6cd1: $ff
	rst $38                                          ; $6cd2: $ff
	rst $38                                          ; $6cd3: $ff
	ld a, a                                          ; $6cd4: $7f
	inc bc                                           ; $6cd5: $03
	add b                                            ; $6cd6: $80
	or a                                             ; $6cd7: $b7
	db $fc                                           ; $6cd8: $fc
	rst $38                                          ; $6cd9: $ff
	rst $38                                          ; $6cda: $ff
	rst $38                                          ; $6cdb: $ff
	rst $38                                          ; $6cdc: $ff
	rst $38                                          ; $6cdd: $ff
	cp $3e                                           ; $6cde: $fe $3e
	ld [bc], a                                       ; $6ce0: $02
	rst GetHLinHL                                          ; $6ce1: $cf
	add b                                            ; $6ce2: $80
	ld bc, $039d                                     ; $6ce3: $01 $9d $03
	sbc d                                            ; $6ce6: $9a
	rlca                                             ; $6ce7: $07
	inc a                                            ; $6ce8: $3c
	rlca                                             ; $6ce9: $07
	inc [hl]                                         ; $6cea: $34
	rrca                                             ; $6ceb: $0f
	ld a, b                                          ; $6cec: $78
	rrca                                             ; $6ced: $0f
	ld l, c                                          ; $6cee: $69
	rra                                              ; $6cef: $1f
	ld [hl], c                                       ; $6cf0: $71
	rra                                              ; $6cf1: $1f
	ld [$10ff], sp                                   ; $6cf2: $08 $ff $10
	rst $38                                          ; $6cf5: $ff
	inc hl                                           ; $6cf6: $23
	db $fc                                           ; $6cf7: $fc
	ld e, a                                          ; $6cf8: $5f
	ldh [$bf], a                                     ; $6cf9: $e0 $bf
	ret nz                                           ; $6cfb: $c0

	rst $38                                          ; $6cfc: $ff
	add b                                            ; $6cfd: $80
	rst $38                                          ; $6cfe: $ff
	nop                                              ; $6cff: $00
	db $e3                                           ; $6d00: $e3
	inc e                                            ; $6d01: $1c
	sbc e                                            ; $6d02: $9b
	rra                                              ; $6d03: $1f
	ldh [$3f], a                                     ; $6d04: $e0 $3f
	ret nz                                           ; $6d06: $c0

	ld d, a                                          ; $6d07: $57
	cp b                                             ; $6d08: $b8
	ld d, a                                          ; $6d09: $57
	cp $8b                                           ; $6d0a: $fe $8b
	rst FarCall                                          ; $6d0c: $f7
	ld [$0cf3], sp                                   ; $6d0d: $08 $f3 $0c
	xor b                                            ; $6d10: $a8
	ld [hl], a                                       ; $6d11: $77
	jp nc, $d83d                                     ; $6d12: $d2 $3d $d8

	scf                                              ; $6d15: $37
	jp nc, $e83d                                     ; $6d16: $d2 $3d $e8

	rra                                              ; $6d19: $1f
	ld [$f81d], a                                    ; $6d1a: $ea $1d $f8
	rrca                                             ; $6d1d: $0f
	ld a, [$270d]                                    ; $6d1e: $fa $0d $27
	jr nc, @+$29                                     ; $6d21: $30 $27

	db $fc                                           ; $6d23: $fc
	rlca                                             ; $6d24: $07
	nop                                              ; $6d25: $00
	sbc l                                            ; $6d26: $9d
	inc sp                                           ; $6d27: $33
	ld d, e                                          ; $6d28: $53
	db $db                                           ; $6d29: $db
	inc sp                                           ; $6d2a: $33
	call nz, $bf00                                   ; $6d2b: $c4 $00 $bf
	rst $38                                          ; $6d2e: $ff
	rst $38                                          ; $6d2f: $ff
	sub l                                            ; $6d30: $95
	inc b                                            ; $6d31: $04
	ei                                               ; $6d32: $fb
	jr nz, @-$1f                                     ; $6d33: $20 $df

	adc b                                            ; $6d35: $88
	ld [hl], a                                       ; $6d36: $77
	nop                                              ; $6d37: $00
	rst $38                                          ; $6d38: $ff
	ld [hl+], a                                      ; $6d39: $22
	db $dd                                           ; $6d3a: $dd
	cp [hl]                                          ; $6d3b: $be
	rst $38                                          ; $6d3c: $ff
	rst $38                                          ; $6d3d: $ff
	rst $38                                          ; $6d3e: $ff

jr_026_6d3f:
	sub a                                            ; $6d3f: $97
	ld [$80f7], sp                                   ; $6d40: $08 $f7 $80
	ld a, a                                          ; $6d43: $7f
	ld bc, $48fe                                     ; $6d44: $01 $fe $48
	or a                                             ; $6d47: $b7
	ld h, a                                          ; $6d48: $67
	xor $4f                                          ; $6d49: $ee $4f
	ldh [$80], a                                     ; $6d4b: $e0 $80
	inc de                                           ; $6d4d: $13
	rst AddAOntoHL                                          ; $6d4e: $ef
	add l                                            ; $6d4f: $85
	ld a, [hl]                                       ; $6d50: $7e
	ld a, [bc]                                       ; $6d51: $0a
	db $fc                                           ; $6d52: $fc
	inc d                                            ; $6d53: $14
	ld hl, sp+$28                                    ; $6d54: $f8 $28
	ldh a, [rHDMA1]                                  ; $6d56: $f0 $51
	ldh [$a3], a                                     ; $6d58: $e0 $a3
	ret nz                                           ; $6d5a: $c0

	add a                                            ; $6d5b: $87
	ret nz                                           ; $6d5c: $c0

	dec c                                            ; $6d5d: $0d
	add e                                            ; $6d5e: $83
	ld a, [de]                                       ; $6d5f: $1a
	ld b, $37                                        ; $6d60: $06 $37
	inc c                                            ; $6d62: $0c
	ld a, e                                          ; $6d63: $7b
	inc c                                            ; $6d64: $0c
	rst FarCall                                          ; $6d65: $f7
	jr jr_026_6d3f                                   ; $6d66: $18 $d7

	jr c, @-$0f                                      ; $6d68: $38 $ef

	inc sp                                           ; $6d6a: $33
	rst $38                                          ; $6d6b: $ff
	sbc c                                            ; $6d6c: $99
	add a                                            ; $6d6d: $87
	ccf                                              ; $6d6e: $3f
	ld bc, $0706                                     ; $6d6f: $01 $06 $07
	bit 7, e                                         ; $6d72: $cb $7b
	ldh a, [c]                                       ; $6d74: $f2
	sub a                                            ; $6d75: $97
	rst $38                                          ; $6d76: $ff
	ld h, b                                          ; $6d77: $60
	cp a                                             ; $6d78: $bf
	ret nz                                           ; $6d79: $c0

	rst $38                                          ; $6d7a: $ff
	nop                                              ; $6d7b: $00
	rst AddAOntoHL                                          ; $6d7c: $ef
	ldh a, [rPCM34]                                  ; $6d7d: $f0 $77
	ld a, [$fe5f]                                    ; $6d7f: $fa $5f $fe
	sbc l                                            ; $6d82: $9d
	ldh a, [rIF]                                     ; $6d83: $f0 $0f
	ld d, a                                          ; $6d85: $57
	ldh a, [c]                                       ; $6d86: $f2
	ld a, a                                          ; $6d87: $7f
	cp $7f                                           ; $6d88: $fe $7f
	db $fd                                           ; $6d8a: $fd
	ld a, a                                          ; $6d8b: $7f
	db $fc                                           ; $6d8c: $fc
	sbc [hl]                                         ; $6d8d: $9e
	cp $bc                                           ; $6d8e: $fe $bc
	db $fc                                           ; $6d90: $fc
	ld sp, hl                                        ; $6d91: $f9
	di                                               ; $6d92: $f3
	rst SubAFromBC                                          ; $6d93: $e7
	add $81                                          ; $6d94: $c6 $81
	ld bc, $1fe3                                     ; $6d96: $01 $e3 $1f
	inc c                                            ; $6d99: $0c
	ccf                                              ; $6d9a: $3f
	ld l, b                                          ; $6d9b: $68
	rra                                              ; $6d9c: $1f
	ldh a, [$1f]                                     ; $6d9d: $f0 $1f
	ldh [$3f], a                                     ; $6d9f: $e0 $3f
	and b                                            ; $6da1: $a0
	ld a, a                                          ; $6da2: $7f
	ld b, c                                          ; $6da3: $41
	rst $38                                          ; $6da4: $ff
	add [hl]                                         ; $6da5: $86
	rst $38                                          ; $6da6: $ff
	ld bc, $06ff                                     ; $6da7: $01 $ff $06
	rst $38                                          ; $6daa: $ff
	dec bc                                           ; $6dab: $0b
	db $fc                                           ; $6dac: $fc
	scf                                              ; $6dad: $37
	ld hl, sp+$47                                    ; $6dae: $f8 $47
	ld hl, sp-$71                                    ; $6db0: $f8 $8f
	ldh a, [rIF]                                     ; $6db2: $f0 $0f
	ld a, e                                          ; $6db4: $7b
	jp hl                                            ; $6db5: $e9


	rst SubAFromDE                                          ; $6db6: $df
	rst $38                                          ; $6db7: $ff
	sbc c                                            ; $6db8: $99
	ld a, e                                          ; $6db9: $7b
	add a                                            ; $6dba: $87
	db $fd                                           ; $6dbb: $fd
	inc bc                                           ; $6dbc: $03
	cp $01                                           ; $6dbd: $fe $01
	ld h, e                                          ; $6dbf: $63
	cp [hl]                                          ; $6dc0: $be
	sbc [hl]                                         ; $6dc1: $9e
	ld b, h                                          ; $6dc2: $44
	ld a, e                                          ; $6dc3: $7b
	cp $8b                                           ; $6dc4: $fe $8b
	adc b                                            ; $6dc6: $88
	rst $38                                          ; $6dc7: $ff
	sub b                                            ; $6dc8: $90
	rst $38                                          ; $6dc9: $ff
	and b                                            ; $6dca: $a0
	ld a, a                                          ; $6dcb: $7f

jr_026_6dcc:
	jp $ff7c                                         ; $6dcc: $c3 $7c $ff


	ld b, b                                          ; $6dcf: $40
	rst $38                                          ; $6dd0: $ff
	rst $38                                          ; $6dd1: $ff
	rrca                                             ; $6dd2: $0f
	rst $38                                          ; $6dd3: $ff
	db $10                                           ; $6dd4: $10
	rst $38                                          ; $6dd5: $ff
	inc hl                                           ; $6dd6: $23
	db $fc                                           ; $6dd7: $fc
	ld a, a                                          ; $6dd8: $7f
	add b                                            ; $6dd9: $80
	ld l, e                                          ; $6dda: $6b
	pop hl                                           ; $6ddb: $e1
	ld a, a                                          ; $6ddc: $7f
	add e                                            ; $6ddd: $83
	ld a, a                                          ; $6dde: $7f
	or $4f                                           ; $6ddf: $f6 $4f
	ld b, b                                          ; $6de1: $40
	sub l                                            ; $6de2: $95
	db $10                                           ; $6de3: $10
	rst AddAOntoHL                                          ; $6de4: $ef
	add h                                            ; $6de5: $84
	ld a, e                                          ; $6de6: $7b
	nop                                              ; $6de7: $00
	rst $38                                          ; $6de8: $ff
	ld [bc], a                                       ; $6de9: $02
	db $fd                                           ; $6dea: $fd
	jr nz, jr_026_6dcc                               ; $6deb: $20 $df

	ld [hl], a                                       ; $6ded: $77
	xor $07                                          ; $6dee: $ee $07
	nop                                              ; $6df0: $00
	db $db                                           ; $6df1: $db
	inc sp                                           ; $6df2: $33
	sbc l                                            ; $6df3: $9d
	ld [hl], a                                       ; $6df4: $77
	inc sp                                           ; $6df5: $33
	and a                                            ; $6df6: $a7
	add b                                            ; $6df7: $80
	ld sp, hl                                        ; $6df8: $f9
	reti                                             ; $6df9: $d9


	rst $38                                          ; $6dfa: $ff
	inc bc                                           ; $6dfb: $03
	ldh a, [rWX]                                     ; $6dfc: $f0 $4b
	ldh a, [$97]                                     ; $6dfe: $f0 $97
	ccf                                              ; $6e00: $3f
	ld bc, $0402                                     ; $6e01: $01 $02 $04
	dec bc                                           ; $6e04: $0b
	ld de, $4320                                     ; $6e05: $11 $20 $43
	db $dd                                           ; $6e08: $dd
	rst $38                                          ; $6e09: $ff
	adc d                                            ; $6e0a: $8a
	db $fc                                           ; $6e0b: $fc
	ld hl, sp-$0f                                    ; $6e0c: $f8 $f1
	ldh [$fc], a                                     ; $6e0e: $e0 $fc
	ld sp, hl                                        ; $6e10: $f9
	ld [bc], a                                       ; $6e11: $02
	inc b                                            ; $6e12: $04
	ld [$2010], sp                                   ; $6e13: $08 $10 $20
	ld a, b                                          ; $6e16: $78
	rlca                                             ; $6e17: $07
	rst $38                                          ; $6e18: $ff
	cp $fc                                           ; $6e19: $fe $fc
	ld hl, sp-$10                                    ; $6e1b: $f8 $f0
	ldh [$f8], a                                     ; $6e1d: $e0 $f8
	ret nz                                           ; $6e1f: $c0

	db $dd                                           ; $6e20: $dd

jr_026_6e21:
	ld bc, $039c                                     ; $6e21: $01 $9c $03
	inc b                                            ; $6e24: $04
	jr jr_026_6e96                                   ; $6e25: $18 $6f

	ld hl, sp-$80                                    ; $6e27: $f8 $80
	rlca                                             ; $6e29: $07
	rra                                              ; $6e2a: $1f
	cp $f7                                           ; $6e2b: $fe $f7
	rst GetHLinHL                                          ; $6e2d: $cf
	rst SubAFromDE                                          ; $6e2e: $df
	cp $f0                                           ; $6e2f: $fe $f0
	ld a, a                                          ; $6e31: $7f
	inc e                                            ; $6e32: $1c
	adc a                                            ; $6e33: $8f
	scf                                              ; $6e34: $37
	ld c, a                                          ; $6e35: $4f
	ld e, a                                          ; $6e36: $5f
	inc a                                            ; $6e37: $3c
	add b                                            ; $6e38: $80
	db $e3                                           ; $6e39: $e3
	rst $38                                          ; $6e3a: $ff
	ccf                                              ; $6e3b: $3f
	rst $38                                          ; $6e3c: $ff
	cp $9c                                           ; $6e3d: $fe $9c
	jr c, jr_026_6e21                                ; $6e3f: $38 $e0

	add b                                            ; $6e41: $80
	nop                                              ; $6e42: $00
	pop hl                                           ; $6e43: $e1
	jp $0f87                                         ; $6e44: $c3 $87 $0f


	rra                                              ; $6e47: $1f
	sub h                                            ; $6e48: $94
	ld a, a                                          ; $6e49: $7f
	rst $38                                          ; $6e4a: $ff
	rst $38                                          ; $6e4b: $ff
	pop hl                                           ; $6e4c: $e1
	add b                                            ; $6e4d: $80
	nop                                              ; $6e4e: $00
	nop                                              ; $6e4f: $00
	inc bc                                           ; $6e50: $03
	rrca                                             ; $6e51: $0f
	inc e                                            ; $6e52: $1c
	ld a, b                                          ; $6e53: $78
	ld [hl], e                                       ; $6e54: $73
	or b                                             ; $6e55: $b0
	sbc c                                            ; $6e56: $99
	ldh a, [$e3]                                     ; $6e57: $f0 $e3
	add a                                            ; $6e59: $87
	rst $38                                          ; $6e5a: $ff
	ccf                                              ; $6e5b: $3f
	rlca                                             ; $6e5c: $07
	ld a, e                                          ; $6e5d: $7b
	adc e                                            ; $6e5e: $8b
	sbc l                                            ; $6e5f: $9d
	ccf                                              ; $6e60: $3f
	ret nz                                           ; $6e61: $c0

	sbc $ff                                          ; $6e62: $de $ff
	sbc [hl]                                         ; $6e64: $9e
	ld bc, $8b6b                                     ; $6e65: $01 $6b $8b
	add b                                            ; $6e68: $80
	cp $3e                                           ; $6e69: $fe $3e
	inc b                                            ; $6e6b: $04
	di                                               ; $6e6c: $f3
	ld a, a                                          ; $6e6d: $7f
	add h                                            ; $6e6e: $84
	inc c                                            ; $6e6f: $0c
	sbc b                                            ; $6e70: $98
	ldh a, [$f8]                                     ; $6e71: $f0 $f8
	db $fc                                           ; $6e73: $fc
	cp $fe                                           ; $6e74: $fe $fe
	dec bc                                           ; $6e76: $0b
	ld a, [hl+]                                      ; $6e77: $2a
	ld l, $57                                        ; $6e78: $2e $57
	rst SubAFromHL                                          ; $6e7a: $d7
	db $dd                                           ; $6e7b: $dd
	xor [hl]                                         ; $6e7c: $ae
	dec sp                                           ; $6e7d: $3b
	inc e                                            ; $6e7e: $1c
	dec e                                            ; $6e7f: $1d
	add hl, de                                       ; $6e80: $19
	add hl, sp                                       ; $6e81: $39
	add hl, sp                                       ; $6e82: $39
	inc sp                                           ; $6e83: $33
	ld [hl], e                                       ; $6e84: $73
	and $df                                          ; $6e85: $e6 $df
	sbc $91                                          ; $6e87: $de $91
	sbc $fe                                          ; $6e89: $de $fe
	cp $fc                                           ; $6e8b: $fe $fc
	db $fc                                           ; $6e8d: $fc
	ld hl, sp-$7f                                    ; $6e8e: $f8 $81
	add e                                            ; $6e90: $83
	add e                                            ; $6e91: $83
	inc bc                                           ; $6e92: $03
	inc bc                                           ; $6e93: $03

jr_026_6e94:
	rlca                                             ; $6e94: $07
	rlca                                             ; $6e95: $07

jr_026_6e96:
	rrca                                             ; $6e96: $0f
	ei                                               ; $6e97: $fb
	sbc l                                            ; $6e98: $9d
	jr nz, jr_026_6efb                               ; $6e99: $20 $60

	daa                                              ; $6e9b: $27
	ld b, b                                          ; $6e9c: $40
	dec bc                                           ; $6e9d: $0b
	nop                                              ; $6e9e: $00
	sub a                                            ; $6e9f: $97
	inc sp                                           ; $6ea0: $33
	scf                                              ; $6ea1: $37
	scf                                              ; $6ea2: $37
	ld [hl], a                                       ; $6ea3: $77
	ld [hl], e                                       ; $6ea4: $73
	scf                                              ; $6ea5: $37
	ld h, a                                          ; $6ea6: $67
	inc sp                                           ; $6ea7: $33
	and h                                            ; $6ea8: $a4
	add b                                            ; $6ea9: $80
	ld sp, hl                                        ; $6eaa: $f9
	reti                                             ; $6eab: $d9


	rst $38                                          ; $6eac: $ff
	rlca                                             ; $6ead: $07
	ldh a, [hDisp1_BGP]                                     ; $6eae: $f0 $92
	rrca                                             ; $6eb0: $0f
	rlca                                             ; $6eb1: $07
	rlca                                             ; $6eb2: $07
	dec b                                            ; $6eb3: $05
	inc bc                                           ; $6eb4: $03
	ld [bc], a                                       ; $6eb5: $02
	ld bc, $f800                                     ; $6eb6: $01 $00 $f8
	db $fc                                           ; $6eb9: $fc
	db $fc                                           ; $6eba: $fc
	cp $fe                                           ; $6ebb: $fe $fe
	sbc $ff                                          ; $6ebd: $de $ff
	sub c                                            ; $6ebf: $91
	ld e, a                                          ; $6ec0: $5f
	db $dd                                           ; $6ec1: $dd
	xor e                                            ; $6ec2: $ab
	xor d                                            ; $6ec3: $aa
	pop de                                           ; $6ec4: $d1
	pop de                                           ; $6ec5: $d1
	jr jr_026_6e94                                   ; $6ec6: $18 $cc

	db $e4                                           ; $6ec8: $e4
	ld h, [hl]                                       ; $6ec9: $66
	halt                                             ; $6eca: $76
	ld [hl], a                                       ; $6ecb: $77
	ccf                                              ; $6ecc: $3f
	ccf                                              ; $6ecd: $3f
	db $dd                                           ; $6ece: $dd
	rst $38                                          ; $6ecf: $ff
	sbc d                                            ; $6ed0: $9a
	cp $f8                                           ; $6ed1: $fe $f8
	ldh a, [$e2]                                     ; $6ed3: $f0 $e2
	add $77                                          ; $6ed5: $c6 $77
	push hl                                          ; $6ed7: $e5
	db $dd                                           ; $6ed8: $dd
	rst $38                                          ; $6ed9: $ff
	sbc h                                            ; $6eda: $9c
	ld a, e                                          ; $6edb: $7b
	ldh a, [hDisp1_SCY]                                     ; $6edc: $f0 $90
	db $dd                                           ; $6ede: $dd
	db $10                                           ; $6edf: $10
	sbc l                                            ; $6ee0: $9d
	jr nc, jr_026_6f53                               ; $6ee1: $30 $70

	reti                                             ; $6ee3: $d9


	ldh a, [$9b]                                     ; $6ee4: $f0 $9b
	ldh [c], a                                       ; $6ee6: $e2
	jp nz, $c4c2                                     ; $6ee7: $c2 $c2 $c4

	sbc $84                                          ; $6eea: $de $84
	sbc [hl]                                         ; $6eec: $9e
	ld [hl], h                                       ; $6eed: $74
	sbc $03                                          ; $6eee: $de $03
	db $dd                                           ; $6ef0: $dd
	rlca                                             ; $6ef1: $07
	add b                                            ; $6ef2: $80
	ld [hl], a                                       ; $6ef3: $77
	call $cacd                                       ; $6ef4: $cd $cd $ca
	set 0, h                                         ; $6ef7: $cb $c4
	add a                                            ; $6ef9: $87
	dec bc                                           ; $6efa: $0b

jr_026_6efb:
	ld d, $33                                        ; $6efb: $16 $33
	inc sp                                           ; $6efd: $33
	scf                                              ; $6efe: $37
	ld [hl], $3e                                     ; $6eff: $36 $3e
	ld a, h                                          ; $6f01: $7c
	db $fc                                           ; $6f02: $fc
	ld sp, hl                                        ; $6f03: $f9
	inc bc                                           ; $6f04: $03
	xor l                                            ; $6f05: $ad
	rrca                                             ; $6f06: $0f
	ld a, d                                          ; $6f07: $7a
	sub $7d                                          ; $6f08: $d6 $7d
	sbc $be                                          ; $6f0a: $de $be
	sbc c                                            ; $6f0c: $99
	inc de                                           ; $6f0d: $13
	inc sp                                           ; $6f0e: $33
	daa                                              ; $6f0f: $27
	ld l, a                                          ; $6f10: $6f
	rst GetHLinHL                                          ; $6f11: $cf
	sub c                                            ; $6f12: $91
	cp a                                             ; $6f13: $bf
	rst $38                                          ; $6f14: $ff
	and d                                            ; $6f15: $a2
	ld h, a                                          ; $6f16: $67
	ld b, l                                          ; $6f17: $45
	adc $99                                          ; $6f18: $ce $99
	ld [hl-], a                                      ; $6f1a: $32
	ld h, l                                          ; $6f1b: $65
	rst GetHLinHL                                          ; $6f1c: $cf
	rst $38                                          ; $6f1d: $ff
	cp $fe                                           ; $6f1e: $fe $fe
	db $fd                                           ; $6f20: $fd
	ld a, e                                          ; $6f21: $7b
	and h                                            ; $6f22: $a4
	adc l                                            ; $6f23: $8d
	db $fd                                           ; $6f24: $fd
	cp c                                             ; $6f25: $b9
	xor l                                            ; $6f26: $ad
	or l                                             ; $6f27: $b5
	db $dd                                           ; $6f28: $dd
	ld l, [hl]                                       ; $6f29: $6e
	cp $db                                           ; $6f2a: $fe $db
	ei                                               ; $6f2c: $fb
	ld c, a                                          ; $6f2d: $4f
	ld e, e                                          ; $6f2e: $5b
	db $db                                           ; $6f2f: $db
	or e                                             ; $6f30: $b3
	or e                                             ; $6f31: $b3
	ld h, e                                          ; $6f32: $63
	and $c6                                          ; $6f33: $e6 $c6
	cp c                                             ; $6f35: $b9
	sbc $94                                          ; $6f36: $de $94
	sbc $95                                          ; $6f38: $de $95
	sbc [hl]                                         ; $6f3a: $9e
	sub a                                            ; $6f3b: $97
	reti                                             ; $6f3c: $d9


	inc c                                            ; $6f3d: $0c
	sbc [hl]                                         ; $6f3e: $9e

Jump_026_6f3f:
	add c                                            ; $6f3f: $81
	sbc $8b                                          ; $6f40: $de $8b
	sbc d                                            ; $6f42: $9a
	ld c, e                                          ; $6f43: $4b
	ld c, a                                          ; $6f44: $4f
	ld c, a                                          ; $6f45: $4f
	ld e, a                                          ; $6f46: $5f
	jp $c1da                                         ; $6f47: $c3 $da $c1


	rlca                                             ; $6f4a: $07
	jr nc, jr_026_6f58                               ; $6f4b: $30 $0b

	nop                                              ; $6f4d: $00
	sbc e                                            ; $6f4e: $9b
	inc sp                                           ; $6f4f: $33
	scf                                              ; $6f50: $37
	ld h, a                                          ; $6f51: $67
	ld [hl], h                                       ; $6f52: $74

jr_026_6f53:
	sbc $66                                          ; $6f53: $de $66
	sbc [hl]                                         ; $6f55: $9e
	inc sp                                           ; $6f56: $33
	xor l                                            ; $6f57: $ad

jr_026_6f58:
	add b                                            ; $6f58: $80
	ld sp, hl                                        ; $6f59: $f9
	reti                                             ; $6f5a: $d9


	rst $38                                          ; $6f5b: $ff
	rlca                                             ; $6f5c: $07
	ldh a, [$9e]                                     ; $6f5d: $f0 $9e
	rlca                                             ; $6f5f: $07
	jp c, $9e0f                                      ; $6f60: $da $0f $9e

	db $fc                                           ; $6f63: $fc
	jp c, $95f8                                      ; $6f64: $da $f8 $95

	ld a, a                                          ; $6f67: $7f
	cp a                                             ; $6f68: $bf
	ei                                               ; $6f69: $fb
	rst FarCall                                          ; $6f6a: $f7
	or $b6                                           ; $6f6b: $f6 $b6
	ld [hl], a                                       ; $6f6d: $77
	ld [hl], a                                       ; $6f6e: $77
	ret                                              ; $6f6f: $c9


	ret                                              ; $6f70: $c9


	sbc $8d                                          ; $6f71: $de $8d
	sub d                                            ; $6f73: $92
	call $cccc                                       ; $6f74: $cd $cc $cc
	sbc h                                            ; $6f77: $9c
	sbc a                                            ; $6f78: $9f
	sbc a                                            ; $6f79: $9f
	or a                                             ; $6f7a: $b7
	or d                                             ; $6f7b: $b2
	or d                                             ; $6f7c: $b2
	cp e                                             ; $6f7d: $bb
	cp c                                             ; $6f7e: $b9
	ld hl, sp-$04                                    ; $6f7f: $f8 $fc
	db $db                                           ; $6f81: $db
	rst $38                                          ; $6f82: $ff
	add b                                            ; $6f83: $80
	inc bc                                           ; $6f84: $03
	rst $38                                          ; $6f85: $ff
	ld hl, sp-$10                                    ; $6f86: $f8 $f0
	pop af                                           ; $6f88: $f1
	ld [hl], a                                       ; $6f89: $77
	ld a, a                                          ; $6f8a: $7f
	ccf                                              ; $6f8b: $3f
	nop                                              ; $6f8c: $00
	rra                                              ; $6f8d: $1f
	rst $38                                          ; $6f8e: $ff
	rst $38                                          ; $6f8f: $ff
	cp $f8                                           ; $6f90: $fe $f8
	ldh a, [$f0]                                     ; $6f92: $f0 $f0
	ld [hl], b                                       ; $6f94: $70
	adc h                                            ; $6f95: $8c
	ld e, $7f                                        ; $6f96: $1e $7f
	rst $38                                          ; $6f98: $ff
	rst FarCall                                          ; $6f99: $f7
	rst SubAFromBC                                          ; $6f9a: $e7
	rst SubAFromBC                                          ; $6f9b: $e7
	rst $38                                          ; $6f9c: $ff
	di                                               ; $6f9d: $f3
	pop hl                                           ; $6f9e: $e1
	add b                                            ; $6f9f: $80
	nop                                              ; $6fa0: $00
	nop                                              ; $6fa1: $00
	ld bc, $0184                                     ; $6fa2: $01 $84 $01
	add h                                            ; $6fa5: $84
	adc b                                            ; $6fa6: $88
	sub l                                            ; $6fa7: $95
	xor c                                            ; $6fa8: $a9
	db $db                                           ; $6fa9: $db
	or e                                             ; $6faa: $b3
	ld h, [hl]                                       ; $6fab: $66
	ld h, [hl]                                       ; $6fac: $66
	rst $38                                          ; $6fad: $ff
	rst $38                                          ; $6fae: $ff
	ld a, [$e4f6]                                    ; $6faf: $fa $f6 $e4
	call z, $9999                                    ; $6fb2: $cc $99 $99
	and [hl]                                         ; $6fb5: $a6
	or [hl]                                          ; $6fb6: $b6
	inc h                                            ; $6fb7: $24
	jr nz, jr_026_7007                               ; $6fb8: $20 $4d

	ld h, l                                          ; $6fba: $65
	add b                                            ; $6fbb: $80
	jp nc, Jump_026_6070                             ; $6fbc: $d2 $70 $60

	sbc $e0                                          ; $6fbf: $de $e0
	sub d                                            ; $6fc1: $92
	ret z                                            ; $6fc2: $c8

	ret                                              ; $6fc3: $c9


	adc c                                            ; $6fc4: $89
	ld e, h                                          ; $6fc5: $5c
	ret c                                            ; $6fc6: $d8

	ld c, b                                          ; $6fc7: $48
	ret c                                            ; $6fc8: $d8

	reti                                             ; $6fc9: $d9


	sub c                                            ; $6fca: $91
	sub c                                            ; $6fcb: $91
	or d                                             ; $6fcc: $b2
	ld l, a                                          ; $6fcd: $6f
	ld l, a                                          ; $6fce: $6f
	db $db                                           ; $6fcf: $db
	rst $38                                          ; $6fd0: $ff
	sub l                                            ; $6fd1: $95
	add a                                            ; $6fd2: $87
	and e                                            ; $6fd3: $a3
	and d                                            ; $6fd4: $a2
	db $ed                                           ; $6fd5: $ed
	ld l, l                                          ; $6fd6: $6d
	db $dd                                           ; $6fd7: $dd
	push de                                          ; $6fd8: $d5
	reti                                             ; $6fd9: $d9


	sub d                                            ; $6fda: $92
	sub [hl]                                         ; $6fdb: $96
	sbc $97                                          ; $6fdc: $de $97
	add b                                            ; $6fde: $80
	daa                                              ; $6fdf: $27
	cpl                                              ; $6fe0: $2f
	cpl                                              ; $6fe1: $2f
	ld e, h                                          ; $6fe2: $5c
	cp e                                             ; $6fe3: $bb
	xor [hl]                                         ; $6fe4: $ae
	reti                                             ; $6fe5: $d9


	db $db                                           ; $6fe6: $db
	di                                               ; $6fe7: $f3
	db $ec                                           ; $6fe8: $ec
	xor c                                            ; $6fe9: $a9
	and $66                                          ; $6fea: $e6 $66
	ld [hl], e                                       ; $6fec: $73
	inc sp                                           ; $6fed: $33
	ld sp, $1919                                     ; $6fee: $31 $19 $19
	inc e                                            ; $6ff1: $1c
	ld e, h                                          ; $6ff2: $5c
	inc l                                            ; $6ff3: $2c
	inc l                                            ; $6ff4: $2c
	inc [hl]                                         ; $6ff5: $34
	sub [hl]                                         ; $6ff6: $96
	sub d                                            ; $6ff7: $92
	add d                                            ; $6ff8: $82
	jp nz, $0f0f                                     ; $6ff9: $c2 $0f $0f

	rlca                                             ; $6ffc: $07
	rlca                                             ; $6ffd: $07
	rst SubAFromDE                                          ; $6ffe: $df
	inc bc                                           ; $6fff: $03
	rst SubAFromDE                                          ; $7000: $df
	add e                                            ; $7001: $83
	rlca                                             ; $7002: $07
	jr nc, jr_026_7010                               ; $7003: $30 $0b

	nop                                              ; $7005: $00
	sub a                                            ; $7006: $97

jr_026_7007:
	inc sp                                           ; $7007: $33
	scf                                              ; $7008: $37
	ld h, h                                          ; $7009: $64
	ld b, h                                          ; $700a: $44
	ld h, [hl]                                       ; $700b: $66
	ld h, [hl]                                       ; $700c: $66
	ld h, a                                          ; $700d: $67
	inc sp                                           ; $700e: $33
	sbc c                                            ; $700f: $99

jr_026_7010:
	add b                                            ; $7010: $80
	ld sp, hl                                        ; $7011: $f9
	reti                                             ; $7012: $d9


	rst $38                                          ; $7013: $ff
	inc bc                                           ; $7014: $03
	ldh a, [$df]                                     ; $7015: $f0 $df
	ld bc, $03df                                     ; $7017: $01 $df $03
	sbc $07                                          ; $701a: $de $07
	sbc $ff                                          ; $701c: $de $ff
	rst SubAFromDE                                          ; $701e: $df
	cp $de                                           ; $701f: $fe $de
	db $fc                                           ; $7021: $fc
	adc h                                            ; $7022: $8c
	xor e                                            ; $7023: $ab
	ld [hl], e                                       ; $7024: $73
	push de                                          ; $7025: $d5
	db $e4                                           ; $7026: $e4
	db $f4                                           ; $7027: $f4
	sub [hl]                                         ; $7028: $96
	ld a, [$df7e]                                    ; $7029: $fa $7e $df
	sbc a                                            ; $702c: $9f
	ccf                                              ; $702d: $3f
	ccf                                              ; $702e: $3f
	cpl                                              ; $702f: $2f
	ld l, l                                          ; $7030: $6d
	ld c, l                                          ; $7031: $4d
	ret                                              ; $7032: $c9


	jp $c0c1                                         ; $7033: $c3 $c1 $c0


	sbc $e0                                          ; $7036: $de $e0
	sub h                                            ; $7038: $94
	or b                                             ; $7039: $b0
	sbc b                                            ; $703a: $98
	nop                                              ; $703b: $00
	nop                                              ; $703c: $00
	add b                                            ; $703d: $80
	add b                                            ; $703e: $80
	ret nz                                           ; $703f: $c0

	ret nz                                           ; $7040: $c0

	ldh [$f0], a                                     ; $7041: $e0 $f0
	add b                                            ; $7043: $80
	db $ec                                           ; $7044: $ec
	sbc l                                            ; $7045: $9d
	dec b                                            ; $7046: $05
	ld a, $fb                                        ; $7047: $3e $fb
	add l                                            ; $7049: $85
	inc bc                                           ; $704a: $03
	rrca                                             ; $704b: $0f
	inc c                                            ; $704c: $0c
	ld [$3010], sp                                   ; $704d: $08 $10 $30
	ld h, c                                          ; $7050: $61
	pop hl                                           ; $7051: $e1
	jp nz, $07c4                                     ; $7052: $c2 $c4 $07

	rrca                                             ; $7055: $0f
	rra                                              ; $7056: $1f
	rra                                              ; $7057: $1f
	ccf                                              ; $7058: $3f
	ld a, a                                          ; $7059: $7f
	rst $38                                          ; $705a: $ff
	rst $38                                          ; $705b: $ff
	ld c, d                                          ; $705c: $4a
	ld c, d                                          ; $705d: $4a
	adc d                                            ; $705e: $8a
	sub d                                            ; $705f: $92
	ld a, [de]                                       ; $7060: $1a
	add hl, de                                       ; $7061: $19
	ld de, $dd50                                     ; $7062: $11 $50 $dd
	ld sp, hl                                        ; $7065: $f9
	sub e                                            ; $7066: $93
	pop af                                           ; $7067: $f1
	ldh a, [c]                                       ; $7068: $f2
	ldh a, [c]                                       ; $7069: $f2
	or d                                             ; $706a: $b2
	add [hl]                                         ; $706b: $86
	add a                                            ; $706c: $87
	dec c                                            ; $706d: $0d
	ld c, l                                          ; $706e: $4d
	ld c, l                                          ; $706f: $4d
	ld d, l                                          ; $7070: $55
	ld e, h                                          ; $7071: $5c
	ld e, h                                          ; $7072: $5c
	call c, $de67                                    ; $7073: $dc $67 $de
	ld l, a                                          ; $7076: $6f
	sub h                                            ; $7077: $94
	sub l                                            ; $7078: $95
	inc hl                                           ; $7079: $23
	ld [hl+], a                                      ; $707a: $22
	dec h                                            ; $707b: $25
	and [hl]                                         ; $707c: $a6
	add d                                            ; $707d: $82
	add d                                            ; $707e: $82
	add a                                            ; $707f: $87
	ld h, $96                                        ; $7080: $26 $96
	sub a                                            ; $7082: $97
	db $dd                                           ; $7083: $dd
	sub e                                            ; $7084: $93
	adc l                                            ; $7085: $8d
	sub d                                            ; $7086: $92
	sub l                                            ; $7087: $95
	jp z, $d2a5                                      ; $7088: $ca $a5 $d2

	ret                                              ; $708b: $c9


	jp hl                                            ; $708c: $e9


	ld h, h                                          ; $708d: $64
	ld d, d                                          ; $708e: $52
	ld c, $07                                        ; $708f: $0e $07
	ld b, e                                          ; $7091: $43
	ld hl, $90b0                                     ; $7092: $21 $b0 $90
	ret c                                            ; $7095: $d8

	db $ec                                           ; $7096: $ec
	ldh a, [$dd]                                     ; $7097: $f0 $dd
	ld hl, sp-$21                                    ; $7099: $f8 $df
	db $fc                                           ; $709b: $fc
	sub [hl]                                         ; $709c: $96
	ld a, h                                          ; $709d: $7c
	sbc a                                            ; $709e: $9f
	ld c, a                                          ; $709f: $4f
	ld c, a                                          ; $70a0: $4f
	xor a                                            ; $70a1: $af
	ld l, a                                          ; $70a2: $6f
	daa                                              ; $70a3: $27
	daa                                              ; $70a4: $27
	rla                                              ; $70a5: $17
	rlca                                             ; $70a6: $07
	jr nc, jr_026_70b4                               ; $70a7: $30 $0b

	nop                                              ; $70a9: $00
	sub a                                            ; $70aa: $97
	inc sp                                           ; $70ab: $33
	scf                                              ; $70ac: $37
	ld h, h                                          ; $70ad: $64
	ld b, h                                          ; $70ae: $44
	ld b, [hl]                                       ; $70af: $46
	ld h, [hl]                                       ; $70b0: $66
	ld h, a                                          ; $70b1: $67
	inc sp                                           ; $70b2: $33
	sub b                                            ; $70b3: $90

jr_026_70b4:
	add b                                            ; $70b4: $80
	ld sp, hl                                        ; $70b5: $f9
	reti                                             ; $70b6: $d9


	rst $38                                          ; $70b7: $ff
	inc bc                                           ; $70b8: $03
	ldh a, [rWX]                                     ; $70b9: $f0 $4b
	ldh a, [$97]                                     ; $70bb: $f0 $97
	rlca                                             ; $70bd: $07
	add a                                            ; $70be: $87
	adc a                                            ; $70bf: $8f
	rst $38                                          ; $70c0: $ff
	rst $38                                          ; $70c1: $ff
	ld a, a                                          ; $70c2: $7f
	ccf                                              ; $70c3: $3f
	ld a, a                                          ; $70c4: $7f
	sbc $fc                                          ; $70c5: $de $fc
	adc e                                            ; $70c7: $8b
	ld a, h                                          ; $70c8: $7c
	sub [hl]                                         ; $70c9: $96
	or $e6                                           ; $70ca: $f6 $e6
	adc $86                                          ; $70cc: $ce $86
	add l                                            ; $70ce: $85
	add d                                            ; $70cf: $82
	add b                                            ; $70d0: $80
	add b                                            ; $70d1: $80
	add c                                            ; $70d2: $81
	add b                                            ; $70d3: $80
	ret nz                                           ; $70d4: $c0

	inc b                                            ; $70d5: $04
	ld b, $03                                        ; $70d6: $06 $03
	nop                                              ; $70d8: $00
	nop                                              ; $70d9: $00
	inc bc                                           ; $70da: $03
	ld [bc], a                                       ; $70db: $02
	cp $9e                                           ; $70dc: $fe $9e
	add b                                            ; $70de: $80
	cp $9e                                           ; $70df: $fe $9e
	and b                                            ; $70e1: $a0
	ei                                               ; $70e2: $fb
	sbc c                                            ; $70e3: $99
	add b                                            ; $70e4: $80
	ld h, b                                          ; $70e5: $60
	nop                                              ; $70e6: $00
	jr c, jr_026_7168                                ; $70e7: $38 $7f

	rrca                                             ; $70e9: $0f
	di                                               ; $70ea: $f3
	sbc b                                            ; $70eb: $98
	add b                                            ; $70ec: $80
	pop hl                                           ; $70ed: $e1
	ld bc, $0203                                     ; $70ee: $01 $03 $02
	dec b                                            ; $70f1: $05
	ld b, $fc                                        ; $70f2: $06 $fc
	ld a, a                                          ; $70f4: $7f
	or $9e                                           ; $70f5: $f6 $9e
	inc bc                                           ; $70f7: $03
	db $dd                                           ; $70f8: $dd
	ld c, [hl]                                       ; $70f9: $4e
	rst SubAFromDE                                          ; $70fa: $df
	adc $df                                          ; $70fb: $ce $df
	ld c, [hl]                                       ; $70fd: $4e
	reti                                             ; $70fe: $d9


	ld sp, hl                                        ; $70ff: $f9
	sub l                                            ; $7100: $95
	ld l, e                                          ; $7101: $6b
	ld a, e                                          ; $7102: $7b
	add hl, sp                                       ; $7103: $39
	add hl, sp                                       ; $7104: $39
	or l                                             ; $7105: $b5
	cp h                                             ; $7106: $bc
	xor h                                            ; $7107: $ac
	adc [hl]                                         ; $7108: $8e
	sbc h                                            ; $7109: $9c
	adc h                                            ; $710a: $8c
	ld a, e                                          ; $710b: $7b
	ld [$47df], a                                    ; $710c: $ea $df $47
	add b                                            ; $710f: $80
	ld h, a                                          ; $7110: $67
	ld c, l                                          ; $7111: $4d
	ld a, a                                          ; $7112: $7f
	ld a, [hl]                                       ; $7113: $7e
	and a                                            ; $7114: $a7
	cp [hl]                                          ; $7115: $be
	xor d                                            ; $7116: $aa
	ld c, e                                          ; $7117: $4b
	ld c, a                                          ; $7118: $4f
	or e                                             ; $7119: $b3
	sub c                                            ; $711a: $91
	sub c                                            ; $711b: $91
	ld e, b                                          ; $711c: $58
	ld c, b                                          ; $711d: $48
	ld c, h                                          ; $711e: $4c
	inc h                                            ; $711f: $24
	inc h                                            ; $7120: $24
	ld [hl], l                                       ; $7121: $75
	cpl                                              ; $7122: $2f
	cp e                                             ; $7123: $bb
	sub l                                            ; $7124: $95
	ld e, d                                          ; $7125: $5a
	xor l                                            ; $7126: $ad
	ld d, l                                          ; $7127: $55
	ld a, [hl+]                                      ; $7128: $2a
	sbc e                                            ; $7129: $9b
	reti                                             ; $712a: $d9


	call z, $e7ee                                    ; $712b: $cc $ee $e7
	ld [hl], e                                       ; $712e: $73
	sbc l                                            ; $712f: $9d
	dec sp                                           ; $7130: $3b
	dec e                                            ; $7131: $1d
	ld a, e                                          ; $7132: $7b
	xor a                                            ; $7133: $af
	ld a, a                                          ; $7134: $7f
	add e                                            ; $7135: $83
	rst SubAFromDE                                          ; $7136: $df
	ldh [$9e], a                                     ; $7137: $e0 $9e
	ldh a, [$dd]                                     ; $7139: $f0 $dd
	rst $38                                          ; $713b: $ff
	ld a, a                                          ; $713c: $7f
	ld l, c                                          ; $713d: $69
	sbc l                                            ; $713e: $9d
	ccf                                              ; $713f: $3f
	sbc a                                            ; $7140: $9f
	rlca                                             ; $7141: $07
	ld b, b                                          ; $7142: $40
	dec bc                                           ; $7143: $0b
	nop                                              ; $7144: $00
	rst SubAFromDE                                          ; $7145: $df
	inc sp                                           ; $7146: $33
	sbc c                                            ; $7147: $99
	ld [hl], h                                       ; $7148: $74
	ld b, h                                          ; $7149: $44
	ld b, [hl]                                       ; $714a: $46
	ld h, [hl]                                       ; $714b: $66
	ld h, a                                          ; $714c: $67
	inc sp                                           ; $714d: $33
	xor a                                            ; $714e: $af
	add b                                            ; $714f: $80
	rst SubAFromDE                                          ; $7150: $df
	ld [bc], a                                       ; $7151: $02
	ei                                               ; $7152: $fb
	reti                                             ; $7153: $d9


	rst $38                                          ; $7154: $ff
	ld sp, hl                                        ; $7155: $f9
	reti                                             ; $7156: $d9


	rst $38                                          ; $7157: $ff
	sbc [hl]                                         ; $7158: $9e
	jr nz, jr_026_71a6                               ; $7159: $20 $4b

	ldh a, [$9e]                                     ; $715b: $f0 $9e
	inc bc                                           ; $715d: $03
	ld c, e                                          ; $715e: $4b
	ldh a, [$dd]                                     ; $715f: $f0 $dd
	rra                                              ; $7161: $1f
	rst SubAFromDE                                          ; $7162: $df

Jump_026_7163:
	rrca                                             ; $7163: $0f
	rst SubAFromDE                                          ; $7164: $df
	rlca                                             ; $7165: $07
	db $dd                                           ; $7166: $dd
	ldh a, [c]                                       ; $7167: $f2

jr_026_7168:
	sbc [hl]                                         ; $7168: $9e
	ld a, [$fcde]                                    ; $7169: $fa $de $fc
	sub e                                            ; $716c: $93
	inc sp                                           ; $716d: $33
	ld l, $aa                                        ; $716e: $2e $aa
	db $f4                                           ; $7170: $f4
	ld [hl], b                                       ; $7171: $70
	db $fd                                           ; $7172: $fd
	ld [hl], e                                       ; $7173: $73
	inc b                                            ; $7174: $04
	ld a, [hl-]                                      ; $7175: $3a
	ld a, $3e                                        ; $7176: $3e $3e
	inc e                                            ; $7178: $1c
	cp $9c                                           ; $7179: $fe $9c
	ld [bc], a                                       ; $717b: $02
	add c                                            ; $717c: $81
	add b                                            ; $717d: $80
	di                                               ; $717e: $f3
	sub h                                            ; $717f: $94
	rst $38                                          ; $7180: $ff
	rst JumpTable                                          ; $7181: $c7
	jp $0706                                         ; $7182: $c3 $06 $07


	dec b                                            ; $7185: $05
	dec e                                            ; $7186: $1d
	ld b, $7e                                        ; $7187: $06 $7e
	ld a, a                                          ; $7189: $7f
	inc bc                                           ; $718a: $03
	db $dd                                           ; $718b: $dd
	rlca                                             ; $718c: $07
	add [hl]                                         ; $718d: $86
	inc bc                                           ; $718e: $03
	rst $38                                          ; $718f: $ff
	ld a, h                                          ; $7190: $7c
	ret nc                                           ; $7191: $d0

	ld h, b                                          ; $7192: $60
	ld [hl], $bc                                     ; $7193: $36 $bc
	ld hl, sp+$60                                    ; $7195: $f8 $60
	add hl, de                                       ; $7197: $19
	add b                                            ; $7198: $80
	ldh [rSVBK], a                                   ; $7199: $e0 $70
	inc a                                            ; $719b: $3c
	sbc b                                            ; $719c: $98
	ldh a, [$c0]                                     ; $719d: $f0 $c0
	add sp, -$1c                                     ; $719f: $e8 $e4
	ld h, h                                          ; $71a1: $64
	ld l, b                                          ; $71a2: $68
	ld l, b                                          ; $71a3: $68
	ld a, b                                          ; $71a4: $78
	ld l, b                                          ; $71a5: $68

jr_026_71a6:
	ld l, b                                          ; $71a6: $68
	reti                                             ; $71a7: $d9


	ccf                                              ; $71a8: $3f
	add b                                            ; $71a9: $80
	push hl                                          ; $71aa: $e5
	ccf                                              ; $71ab: $3f
	and c                                            ; $71ac: $a1
	and l                                            ; $71ad: $a5
	push hl                                          ; $71ae: $e5
	call nc, Call_026_7272                           ; $71af: $d4 $72 $72
	rst $38                                          ; $71b2: $ff
	rst $38                                          ; $71b3: $ff
	ld a, [hl]                                       ; $71b4: $7e
	ld a, d                                          ; $71b5: $7a
	ld a, [hl-]                                      ; $71b6: $3a
	dec sp                                           ; $71b7: $3b
	sbc l                                            ; $71b8: $9d
	sbc l                                            ; $71b9: $9d
	ldh a, [c]                                       ; $71ba: $f2
	ldh a, [$a9]                                     ; $71bb: $f0 $a9
	ld a, c                                          ; $71bd: $79
	db $f4                                           ; $71be: $f4
	call c, $feba                                    ; $71bf: $dc $ba $fe
	inc e                                            ; $71c2: $1c
	cp $de                                           ; $71c3: $fe $de
	adc $4f                                          ; $71c5: $ce $4f
	ld h, a                                          ; $71c7: $67
	ld h, a                                          ; $71c8: $67
	add a                                            ; $71c9: $87
	inc hl                                           ; $71ca: $23
	db $fc                                           ; $71cb: $fc
	ld a, h                                          ; $71cc: $7c
	ld a, a                                          ; $71cd: $7f
	ld a, b                                          ; $71ce: $78
	ld a, h                                          ; $71cf: $7c
	ld a, a                                          ; $71d0: $7f
	rst $38                                          ; $71d1: $ff
	ld a, [hl]                                       ; $71d2: $7e
	ld e, a                                          ; $71d3: $5f
	ld c, a                                          ; $71d4: $4f
	daa                                              ; $71d5: $27
	jr nz, jr_026_7208                               ; $71d6: $20 $30

	jr z, jr_026_71f1                                ; $71d8: $28 $17

	sub e                                            ; $71da: $93
	add b                                            ; $71db: $80
	ret nz                                           ; $71dc: $c0

	ldh [$60], a                                     ; $71dd: $e0 $60
	ldh [$c0], a                                     ; $71df: $e0 $c0
	add b                                            ; $71e1: $80
	ld a, e                                          ; $71e2: $7b
	ld h, b                                          ; $71e3: $60
	sub d                                            ; $71e4: $92
	cp a                                             ; $71e5: $bf
	ccf                                              ; $71e6: $3f
	ccf                                              ; $71e7: $3f
	ld a, a                                          ; $71e8: $7f
	rst $38                                          ; $71e9: $ff
	rst $38                                          ; $71ea: $ff
	ld b, $0e                                        ; $71eb: $06 $0e
	dec c                                            ; $71ed: $0d
	add hl, bc                                       ; $71ee: $09
	inc bc                                           ; $71ef: $03
	rlca                                             ; $71f0: $07

jr_026_71f1:
	ld b, $63                                        ; $71f1: $06 $63
	ld d, b                                          ; $71f3: $50
	ld a, a                                          ; $71f4: $7f
	pop hl                                           ; $71f5: $e1
	sbc l                                            ; $71f6: $9d
	ldh a, [$30]                                     ; $71f7: $f0 $30
	ld [hl], a                                       ; $71f9: $77
	inc l                                            ; $71fa: $2c
	reti                                             ; $71fb: $d9


	rst $38                                          ; $71fc: $ff
	dec bc                                           ; $71fd: $0b
	nop                                              ; $71fe: $00
	rst SubAFromDE                                          ; $71ff: $df
	inc sp                                           ; $7200: $33
	sbc c                                            ; $7201: $99
	ld [hl], h                                       ; $7202: $74
	ld b, h                                          ; $7203: $44
	ld b, h                                          ; $7204: $44
	ld h, [hl]                                       ; $7205: $66
	ld [hl], a                                       ; $7206: $77
	inc sp                                           ; $7207: $33

jr_026_7208:
	di                                               ; $7208: $f3
	add b                                            ; $7209: $80
	sub d                                            ; $720a: $92
	ld a, a                                          ; $720b: $7f
	ld l, a                                          ; $720c: $6f
	xor $dd                                          ; $720d: $ee $dd
	cp e                                             ; $720f: $bb
	dec sp                                           ; $7210: $3b
	inc de                                           ; $7211: $13
	inc bc                                           ; $7212: $03
	db $fc                                           ; $7213: $fc
	sub b                                            ; $7214: $90
	ld de, $7f33                                     ; $7215: $11 $33 $7f
	sbc $ff                                          ; $7218: $de $ff
	ld a, a                                          ; $721a: $7f
	db $fc                                           ; $721b: $fc
	sub h                                            ; $721c: $94
	db $fd                                           ; $721d: $fd
	ei                                               ; $721e: $fb
	or a                                             ; $721f: $b7
	add a                                            ; $7220: $87
	ld b, $00                                        ; $7221: $06 $00
	ld sp, hl                                        ; $7223: $f9
	pop hl                                           ; $7224: $e1
	jp $efc7                                         ; $7225: $c3 $c7 $ef


	sbc $ff                                          ; $7228: $de $ff
	sub d                                            ; $722a: $92
	db $fc                                           ; $722b: $fc
	ld a, h                                          ; $722c: $7c
	ld hl, sp-$10                                    ; $722d: $f8 $f0
	db $fc                                           ; $722f: $fc
	inc a                                            ; $7230: $3c
	ld [hl], $30                                     ; $7231: $36 $30
	add a                                            ; $7233: $87
	adc a                                            ; $7234: $8f
	daa                                              ; $7235: $27
	ccf                                              ; $7236: $3f
	sbc a                                            ; $7237: $9f
	sbc $ff                                          ; $7238: $de $ff
	sbc d                                            ; $723a: $9a
	rst JumpTable                                          ; $723b: $c7
	rst GetHLinHL                                          ; $723c: $cf
	adc [hl]                                         ; $723d: $8e
	inc c                                            ; $723e: $0c
	ld [$9afe], sp                                   ; $723f: $08 $fe $9a
	add hl, sp                                       ; $7242: $39
	inc sp                                           ; $7243: $33
	ld [hl], a                                       ; $7244: $77
	di                                               ; $7245: $f3
	rst FarCall                                          ; $7246: $f7
	sbc $ff                                          ; $7247: $de $ff
	sbc [hl]                                         ; $7249: $9e
	cp a                                             ; $724a: $bf
	call c, $937f                                    ; $724b: $dc $7f $93
	rst $38                                          ; $724e: $ff
	rst SubAFromDE                                          ; $724f: $df
	and $e4                                          ; $7250: $e6 $e4
	call nz, $cccd                                   ; $7252: $c4 $cd $cc
	call c, $f3fa                                    ; $7255: $dc $fa $f3
	pop hl                                           ; $7258: $e1
	adc a                                            ; $7259: $8f
	ld a, e                                          ; $725a: $7b
	di                                               ; $725b: $f3
	sub d                                            ; $725c: $92
	ld a, a                                          ; $725d: $7f
	rst FarCall                                          ; $725e: $f7
	ld [hl], d                                       ; $725f: $72
	ld c, a                                          ; $7260: $4f
	ld a, [hl]                                       ; $7261: $7e

jr_026_7262:
	ldh a, [$80]                                     ; $7262: $f0 $80
	jr c, jr_026_7262                                ; $7264: $38 $fc

	cp $b3                                           ; $7266: $fe $b3
	rlca                                             ; $7268: $07
	ld c, $de                                        ; $7269: $0e $de
	add b                                            ; $726b: $80
	sbc d                                            ; $726c: $9a
	add c                                            ; $726d: $81
	add e                                            ; $726e: $83
	add e                                            ; $726f: $83
	rlca                                             ; $7270: $07
	inc c                                            ; $7271: $0c

Call_026_7272:
	ei                                               ; $7272: $fb
	add a                                            ; $7273: $87
	add a                                            ; $7274: $87
	inc bc                                           ; $7275: $03
	ld bc, $f000                                     ; $7276: $01 $00 $f0
	db $fc                                           ; $7279: $fc
	rst $38                                          ; $727a: $ff
	db $db                                           ; $727b: $db
	ld bc, $0000                                     ; $727c: $01 $00 $00
	ld [hl], b                                       ; $727f: $70
	ld a, h                                          ; $7280: $7c
	rrca                                             ; $7281: $0f
	inc bc                                           ; $7282: $03
	inc a                                            ; $7283: $3c
	db $10                                           ; $7284: $10
	adc b                                            ; $7285: $88
	adc b                                            ; $7286: $88
	call nz, $3264                                   ; $7287: $c4 $64 $32
	dec a                                            ; $728a: $3d
	db $eb                                           ; $728b: $eb
	ld [hl], a                                       ; $728c: $77
	add l                                            ; $728d: $85
	sub c                                            ; $728e: $91
	ccf                                              ; $728f: $3f
	rra                                              ; $7290: $1f
	rst GetHLinHL                                          ; $7291: $cf
	rst FarCall                                          ; $7292: $f7
	adc l                                            ; $7293: $8d
	ld b, a                                          ; $7294: $47
	ld b, d                                          ; $7295: $42
	ld h, c                                          ; $7296: $61
	jr nc, jr_026_72c1                               ; $7297: $30 $28

	inc d                                            ; $7299: $14
	db $d3                                           ; $729a: $d3
	or $fa                                           ; $729b: $f6 $fa
	db $db                                           ; $729d: $db
	rst $38                                          ; $729e: $ff
	sub d                                            ; $729f: $92
	ld c, l                                          ; $72a0: $4d
	rst JumpTable                                          ; $72a1: $c7
	db $e3                                           ; $72a2: $e3
	ld h, e                                          ; $72a3: $63
	sub e                                            ; $72a4: $93
	ld c, d                                          ; $72a5: $4a
	dec h                                            ; $72a6: $25
	dec de                                           ; $72a7: $1b
	rst $38                                          ; $72a8: $ff
	ld a, a                                          ; $72a9: $7f
	ld a, $be                                        ; $72aa: $3e $be
	cp $de                                           ; $72ac: $fe $de
	rst $38                                          ; $72ae: $ff
	rst SubAFromDE                                          ; $72af: $df
	ld h, e                                          ; $72b0: $63
	sbc c                                            ; $72b1: $99
	ldh [$c0], a                                     ; $72b2: $e0 $c0
	and l                                            ; $72b4: $a5
	db $e4                                           ; $72b5: $e4
	ldh [c], a                                       ; $72b6: $e2
	jp nc, $d9de                                     ; $72b7: $d2 $de $d9

	sub d                                            ; $72ba: $92
	ld a, c                                          ; $72bb: $79
	ld a, b                                          ; $72bc: $78
	jr c, jr_026_72fb                                ; $72bd: $38 $3c

	inc a                                            ; $72bf: $3c
	ld a, a                                          ; $72c0: $7f

jr_026_72c1:
	rst $38                                          ; $72c1: $ff
	db $dd                                           ; $72c2: $dd
	db $dd                                           ; $72c3: $dd
	cp c                                             ; $72c4: $b9
	db $f4                                           ; $72c5: $f4
	call z, $daed                                    ; $72c6: $cc $ed $da
	rst $38                                          ; $72c9: $ff
	ld a, e                                          ; $72ca: $7b
	dec a                                            ; $72cb: $3d
	adc a                                            ; $72cc: $8f
	xor $85                                          ; $72cd: $ee $85
	adc a                                            ; $72cf: $8f
	sbc a                                            ; $72d0: $9f
	rrca                                             ; $72d1: $0f
	ld b, $63                                        ; $72d2: $06 $63
	rst SubAFromBC                                          ; $72d4: $e7
	ld [hl], a                                       ; $72d5: $77
	ld a, a                                          ; $72d6: $7f
	ld [hl], b                                       ; $72d7: $70
	ld h, b                                          ; $72d8: $60
	ldh a, [$f9]                                     ; $72d9: $f0 $f9
	rst $38                                          ; $72db: $ff
	dec h                                            ; $72dc: $25
	ld a, e                                          ; $72dd: $7b
	inc a                                            ; $72de: $3c
	add h                                            ; $72df: $84
	xor a                                            ; $72e0: $af
	rlca                                             ; $72e1: $07
	dec b                                            ; $72e2: $05
	sbc $ff                                          ; $72e3: $de $ff
	rst SubAFromBC                                          ; $72e5: $e7
	add e                                            ; $72e6: $83
	rlca                                             ; $72e7: $07
	ld e, [hl]                                       ; $72e8: $5e
	cp $fe                                           ; $72e9: $fe $fe
	rst AddAOntoHL                                          ; $72eb: $ef
	rst $38                                          ; $72ec: $ff
	ld sp, hl                                        ; $72ed: $f9
	ld e, $bf                                        ; $72ee: $1e $bf
	ld sp, hl                                        ; $72f0: $f9
	ld hl, sp-$20                                    ; $72f1: $f8 $e0
	inc de                                           ; $72f3: $13
	sbc a                                            ; $72f4: $9f
	rst AddAOntoHL                                          ; $72f5: $ef
	rst SubAFromBC                                          ; $72f6: $e7
	ld c, l                                          ; $72f7: $4d
	ld h, [hl]                                       ; $72f8: $66
	daa                                              ; $72f9: $27
	ld a, a                                          ; $72fa: $7f

jr_026_72fb:
	dec bc                                           ; $72fb: $0b
	nop                                              ; $72fc: $00
	rst SubAFromDE                                          ; $72fd: $df
	ld [hl+], a                                      ; $72fe: $22
	sbc c                                            ; $72ff: $99
	ld [hl], h                                       ; $7300: $74
	ld b, h                                          ; $7301: $44
	ld b, [hl]                                       ; $7302: $46
	ld h, [hl]                                       ; $7303: $66
	ld [hl], d                                       ; $7304: $72
	ld [hl+], a                                      ; $7305: $22
	push af                                          ; $7306: $f5
	add b                                            ; $7307: $80
	sbc l                                            ; $7308: $9d
	rst $38                                          ; $7309: $ff
	cp $db                                           ; $730a: $fe $db
	rst $38                                          ; $730c: $ff
	sub l                                            ; $730d: $95
	inc de                                           ; $730e: $13
	inc sp                                           ; $730f: $33
	and e                                            ; $7310: $a3
	dec d                                            ; $7311: $15
	inc l                                            ; $7312: $2c
	jr z, jr_026_731e                                ; $7313: $28 $09

	cp a                                             ; $7315: $bf
	rst $38                                          ; $7316: $ff
	ccf                                              ; $7317: $3f
	db $dd                                           ; $7318: $dd
	rst $38                                          ; $7319: $ff
	ld a, a                                          ; $731a: $7f
	ld sp, hl                                        ; $731b: $f9
	rst SubAFromDE                                          ; $731c: $df
	db $fc                                           ; $731d: $fc

jr_026_731e:
	sub [hl]                                         ; $731e: $96
	or b                                             ; $731f: $b0
	ld bc, $77a3                                     ; $7320: $01 $a3 $77
	db $fd                                           ; $7323: $fd
	ld hl, sp-$02                                    ; $7324: $f8 $fe
	rst $38                                          ; $7326: $ff
	pop af                                           ; $7327: $f1
	sbc $ff                                          ; $7328: $de $ff
	add a                                            ; $732a: $87
	ei                                               ; $732b: $fb
	pop af                                           ; $732c: $f1
	ld h, e                                          ; $732d: $63
	nop                                              ; $732e: $00
	adc a                                            ; $732f: $8f
	ld [hl], c                                       ; $7330: $71
	jr z, jr_026_7373                                ; $7331: $28 $40

	cp $ce                                           ; $7333: $fe $ce
	ld a, a                                          ; $7335: $7f
	rst AddAOntoHL                                          ; $7336: $ef
	rst JumpTable                                          ; $7337: $c7
	rst GetHLinHL                                          ; $7338: $cf
	rst $38                                          ; $7339: $ff
	ld a, a                                          ; $733a: $7f
	ccf                                              ; $733b: $3f
	inc bc                                           ; $733c: $03

Jump_026_733d:
	cp $fe                                           ; $733d: $fe $fe
	db $fc                                           ; $733f: $fc
	ld hl, sp-$10                                    ; $7340: $f8 $f0
	pop bc                                           ; $7342: $c1
	jp c, $94ff                                      ; $7343: $da $ff $94

	cp a                                             ; $7346: $bf
	ccf                                              ; $7347: $3f
	ccf                                              ; $7348: $3f
	ld sp, $2331                                     ; $7349: $31 $31 $23
	ld h, e                                          ; $734c: $63
	db $e3                                           ; $734d: $e3
	db $e3                                           ; $734e: $e3
	and $e6                                          ; $734f: $e6 $e6
	db $dd                                           ; $7351: $dd
	inc sp                                           ; $7352: $33
	rst SubAFromDE                                          ; $7353: $df
	ld a, e                                          ; $7354: $7b
	sbc l                                            ; $7355: $9d
	rst AddAOntoHL                                          ; $7356: $ef
	rst SubAFromBC                                          ; $7357: $e7
	db $dd                                           ; $7358: $dd
	cp $83                                           ; $7359: $fe $83
	xor $ce                                          ; $735b: $ee $ce
	add $43                                          ; $735d: $c6 $43
	and e                                            ; $735f: $a3
	and e                                            ; $7360: $a3
	ld b, e                                          ; $7361: $43
	ld b, e                                          ; $7362: $43
	inc bc                                           ; $7363: $03
	inc bc                                           ; $7364: $03
	ld [bc], a                                       ; $7365: $02
	ld b, $e0                                        ; $7366: $06 $e0
	ldh [rLCDC], a                                   ; $7368: $e0 $40
	ld b, b                                          ; $736a: $40
	ld bc, $0301                                     ; $736b: $01 $01 $03
	inc bc                                           ; $736e: $03
	adc d                                            ; $736f: $8a
	adc d                                            ; $7370: $8a
	sbc d                                            ; $7371: $9a
	sbc d                                            ; $7372: $9a

jr_026_7373:
	ld a, [de]                                       ; $7373: $1a
	ld a, $7e                                        ; $7374: $3e $7e
	rst GetHLinHL                                          ; $7376: $cf
	call c, $92ff                                    ; $7377: $dc $ff $92
	rst AddAOntoHL                                          ; $737a: $ef
	res 0, e                                         ; $737b: $cb $83
	ld a, d                                          ; $737d: $7a
	ld l, [hl]                                       ; $737e: $6e
	ld h, $a7                                        ; $737f: $26 $a7
	and a                                            ; $7381: $a7
	and e                                            ; $7382: $a3
	ld d, d                                          ; $7383: $52
	ld d, b                                          ; $7384: $50
	ld hl, $de31                                     ; $7385: $21 $31 $de
	add hl, sp                                       ; $7388: $39
	add b                                            ; $7389: $80
	dec a                                            ; $738a: $3d
	cp l                                             ; $738b: $bd
	cp a                                             ; $738c: $bf
	ld c, $2d                                        ; $738d: $0e $2d
	ld l, a                                          ; $738f: $6f
	daa                                              ; $7390: $27
	ld [hl], $1f                                     ; $7391: $36 $1f
	sbc e                                            ; $7393: $9b
	sub a                                            ; $7394: $97
	or e                                             ; $7395: $b3
	sub e                                            ; $7396: $93
	sub c                                            ; $7397: $91
	reti                                             ; $7398: $d9


	ret                                              ; $7399: $c9


	add sp, -$14                                     ; $739a: $e8 $ec
	db $ec                                           ; $739c: $ec
	ld e, [hl]                                       ; $739d: $5e
	dec e                                            ; $739e: $1d
	dec a                                            ; $739f: $3d
	rra                                              ; $73a0: $1f
	adc [hl]                                         ; $73a1: $8e
	adc $a7                                          ; $73a2: $ce $a7
	sub c                                            ; $73a4: $91
	sub e                                            ; $73a5: $93
	db $d3                                           ; $73a6: $d3
	set 5, c                                         ; $73a7: $cb $e9
	rst SubAFromDE                                          ; $73a9: $df
	push af                                          ; $73aa: $f5
	adc l                                            ; $73ab: $8d
	ld a, [$99ff]                                    ; $73ac: $fa $ff $99
	reti                                             ; $73af: $d9


	ld e, c                                          ; $73b0: $59
	ld c, l                                          ; $73b1: $4d
	call $aded                                       ; $73b2: $cd $ed $ad
	ld l, e                                          ; $73b5: $6b
	ld h, a                                          ; $73b6: $67
	daa                                              ; $73b7: $27
	and a                                            ; $73b8: $a7
	or e                                             ; $73b9: $b3
	or e                                             ; $73ba: $b3
	sub e                                            ; $73bb: $93
	db $d3                                           ; $73bc: $d3
	pop de                                           ; $73bd: $d1
	call c, $dfff                                    ; $73be: $dc $ff $df
	rst FarCall                                          ; $73c1: $f7
	add b                                            ; $73c2: $80
	ld [hl], a                                       ; $73c3: $77
	ld l, [hl]                                       ; $73c4: $6e
	ld c, a                                          ; $73c5: $4f
	rra                                              ; $73c6: $1f
	ld a, a                                          ; $73c7: $7f
	rst SubAFromBC                                          ; $73c8: $e7
	rst GetHLinHL                                          ; $73c9: $cf
	adc $ee                                          ; $73ca: $ce $ee
	rst $38                                          ; $73cc: $ff
	rst $38                                          ; $73cd: $ff
	db $fc                                           ; $73ce: $fc
	rst SubAFromDE                                          ; $73cf: $df
	ld a, a                                          ; $73d0: $7f
	ld l, $fe                                        ; $73d1: $2e $fe
	db $fc                                           ; $73d3: $fc
	inc a                                            ; $73d4: $3c
	ld a, [hl]                                       ; $73d5: $7e
	rst $38                                          ; $73d6: $ff
	cp b                                             ; $73d7: $b8
	sub b                                            ; $73d8: $90
	db $d3                                           ; $73d9: $d3
	rla                                              ; $73da: $17
	ccf                                              ; $73db: $3f
	rst $38                                          ; $73dc: $ff
	cp $7f                                           ; $73dd: $fe $7f
	ld a, e                                          ; $73df: $7b
	ei                                               ; $73e0: $fb
	rst $38                                          ; $73e1: $ff
	sub l                                            ; $73e2: $95
	ld a, e                                          ; $73e3: $7b
	ld a, [hl]                                       ; $73e4: $7e
	db $ed                                           ; $73e5: $ed
	pop af                                           ; $73e6: $f1
	db $db                                           ; $73e7: $db
	adc [hl]                                         ; $73e8: $8e
	inc e                                            ; $73e9: $1c
	inc c                                            ; $73ea: $0c
	add [hl]                                         ; $73eb: $86
	adc a                                            ; $73ec: $8f
	call c, $94ff                                    ; $73ed: $dc $ff $94
	rst SubAFromDE                                          ; $73f0: $df
	rst $38                                          ; $73f1: $ff
	ld a, [hl]                                       ; $73f2: $7e
	ld [$ff9b], sp                                   ; $73f3: $08 $9b $ff
	scf                                              ; $73f6: $37
	ld sp, $e870                                     ; $73f7: $31 $70 $e8
	di                                               ; $73fa: $f3
	dec bc                                           ; $73fb: $0b
	nop                                              ; $73fc: $00
	sub a                                            ; $73fd: $97
	ld [hl+], a                                      ; $73fe: $22
	daa                                              ; $73ff: $27
	ld [hl], h                                       ; $7400: $74
	ld b, h                                          ; $7401: $44
	ld h, [hl]                                       ; $7402: $66
	ld h, [hl]                                       ; $7403: $66
	ld [hl+], a                                      ; $7404: $22
	ld [hl+], a                                      ; $7405: $22
	rst FarCall                                          ; $7406: $f7
	add b                                            ; $7407: $80
	rst SubAFromDE                                          ; $7408: $df
	rst $38                                          ; $7409: $ff
	sbc [hl]                                         ; $740a: $9e
	rst FarCall                                          ; $740b: $f7
	call c, $93ff                                    ; $740c: $dc $ff $93
	or a                                             ; $740f: $b7
	rst $38                                          ; $7410: $ff
	rst $38                                          ; $7411: $ff
	pop af                                           ; $7412: $f1
	pop af                                           ; $7413: $f1
	rrca                                             ; $7414: $0f
	rlca                                             ; $7415: $07
	and [hl]                                         ; $7416: $a6
	rst FarCall                                          ; $7417: $f7
	rst AddAOntoHL                                          ; $7418: $ef
	cp a                                             ; $7419: $bf
	sbc e                                            ; $741a: $9b
	ld a, e                                          ; $741b: $7b
	db $f4                                           ; $741c: $f4
	jp c, $99ff                                      ; $741d: $da $ff $99

	dec e                                            ; $7420: $1d
	ld sp, $f9ff                                     ; $7421: $31 $ff $f9
	ccf                                              ; $7424: $3f
	rst SubAFromDE                                          ; $7425: $df
	sbc $ff                                          ; $7426: $de $ff
	add b                                            ; $7428: $80
	ei                                               ; $7429: $fb
	rst $38                                          ; $742a: $ff
	rst $38                                          ; $742b: $ff
	ld hl, sp-$0f                                    ; $742c: $f8 $f1
	rla                                              ; $742e: $17
	dec de                                           ; $742f: $1b
	ld [hl], e                                       ; $7430: $73
	adc a                                            ; $7431: $8f
	rst AddAOntoHL                                          ; $7432: $ef
	rst AddAOntoHL                                          ; $7433: $ef
	rst $38                                          ; $7434: $ff
	cp $fc                                           ; $7435: $fe $fc
	ld sp, hl                                        ; $7437: $f9
	pop af                                           ; $7438: $f1
	or e                                             ; $7439: $b3
	rst $38                                          ; $743a: $ff
	rst $38                                          ; $743b: $ff

Jump_026_743c:
	cp $cf                                           ; $743c: $fe $cf
	add a                                            ; $743e: $87
	ld c, a                                          ; $743f: $4f
	rst $38                                          ; $7440: $ff
	rst $38                                          ; $7441: $ff
	rst SubAFromHL                                          ; $7442: $d7
	xor $fd                                          ; $7443: $ee $fd
	push de                                          ; $7445: $d5
	or a                                             ; $7446: $b7
	ld [$7680], a                                    ; $7447: $ea $80 $76
	rst SubAFromDE                                          ; $744a: $df
	ld sp, hl                                        ; $744b: $f9
	di                                               ; $744c: $f3
	and $ee                                          ; $744d: $e6 $ee
	call z, $999d                                    ; $744f: $cc $9d $99
	ld sp, $af4f                                     ; $7452: $31 $4f $af
	ld e, d                                          ; $7455: $5a
	or h                                             ; $7456: $b4
	ld l, c                                          ; $7457: $69
	ld [$57d5], a                                    ; $7458: $ea $d5 $57
	add b                                            ; $745b: $80
	ld de, $4e27                                     ; $745c: $11 $27 $4e
	sbc h                                            ; $745f: $9c
	sbc l                                            ; $7460: $9d
	cp e                                             ; $7461: $bb
	cp e                                             ; $7462: $bb
	dec bc                                           ; $7463: $0b
	sub l                                            ; $7464: $95
	cp h                                             ; $7465: $bc
	ld l, h                                          ; $7466: $6c
	inc b                                            ; $7467: $04
	add b                                            ; $7468: $80
	xor $df                                          ; $7469: $ee $df
	cp a                                             ; $746b: $bf
	rst $38                                          ; $746c: $ff
	cp $78                                           ; $746d: $fe $78
	dec de                                           ; $746f: $1b
	rst $38                                          ; $7470: $ff
	rst $38                                          ; $7471: $ff
	di                                               ; $7472: $f3
	pop hl                                           ; $7473: $e1
	ld a, b                                          ; $7474: $78
	add $79                                          ; $7475: $c6 $79
	ld a, [de]                                       ; $7477: $1a
	dec sp                                           ; $7478: $3b
	ld d, l                                          ; $7479: $55
	ld a, [hl+]                                      ; $747a: $2a
	xor l                                            ; $747b: $ad
	add b                                            ; $747c: $80
	ld a, b                                          ; $747d: $78
	ld a, $37                                        ; $747e: $3e $37
	sub c                                            ; $7480: $91
	sbc b                                            ; $7481: $98
	call c, $c0da                                    ; $7482: $dc $da $c0
	ld a, [bc]                                       ; $7485: $0a
	ld [hl+], a                                      ; $7486: $22
	and b                                            ; $7487: $a0
	add b                                            ; $7488: $80
	ld d, l                                          ; $7489: $55
	db $10                                           ; $748a: $10
	ld hl, sp+$58                                    ; $748b: $f8 $58
	inc c                                            ; $748d: $0c
	inc b                                            ; $748e: $04
	inc b                                            ; $748f: $04
	ld b, $82                                        ; $7490: $06 $82
	jp Jump_026_6343                                 ; $7492: $c3 $43 $63


	inc d                                            ; $7495: $14
	ld [bc], a                                       ; $7496: $02
	ld c, d                                          ; $7497: $4a
	ld l, b                                          ; $7498: $68
	ld c, c                                          ; $7499: $49
	add hl, bc                                       ; $749a: $09
	sbc [hl]                                         ; $749b: $9e
	sbc [hl]                                         ; $749c: $9e
	ld [$040c], sp                                   ; $749d: $08 $0c $04
	ld b, $26                                        ; $74a0: $06 $26
	ld h, $23                                        ; $74a2: $26 $23
	inc hl                                           ; $74a4: $23
	push de                                          ; $74a5: $d5
	ld l, b                                          ; $74a6: $68
	ld [hl-], a                                      ; $74a7: $32
	add d                                            ; $74a8: $82
	ld l, h                                          ; $74a9: $6c
	add hl, sp                                       ; $74aa: $39
	ld [hl], $bd                                     ; $74ab: $36 $bd
	cp d                                             ; $74ad: $ba
	ld h, d                                          ; $74ae: $62
	ld [hl], e                                       ; $74af: $73
	ld a, c                                          ; $74b0: $79
	add hl, sp                                       ; $74b1: $39
	inc l                                            ; $74b2: $2c
	inc l                                            ; $74b3: $2c
	ld h, $17                                        ; $74b4: $26 $17
	ld e, a                                          ; $74b6: $5f
	adc e                                            ; $74b7: $8b
	xor e                                            ; $74b8: $ab
	inc hl                                           ; $74b9: $23
	ld d, e                                          ; $74ba: $53
	ld de, $b991                                     ; $74bb: $11 $91 $b9
	daa                                              ; $74be: $27
	scf                                              ; $74bf: $37
	rla                                              ; $74c0: $17
	sbc a                                            ; $74c1: $9f
	adc a                                            ; $74c2: $8f
	rst GetHLinHL                                          ; $74c3: $cf
	ld c, a                                          ; $74c4: $4f
	ld b, a                                          ; $74c5: $47
	jp c, $dfff                                      ; $74c6: $da $ff $df

	ld a, a                                          ; $74c9: $7f
	sbc b                                            ; $74ca: $98
	sbc e                                            ; $74cb: $9b
	db $d3                                           ; $74cc: $d3
	pop bc                                           ; $74cd: $c1
	sub c                                            ; $74ce: $91
	dec de                                           ; $74cf: $1b
	sbc h                                            ; $74d0: $9c
	sbc [hl]                                         ; $74d1: $9e
	ld a, e                                          ; $74d2: $7b
	ld sp, $fd90                                     ; $74d3: $31 $90 $fd
	rst AddAOntoHL                                          ; $74d6: $ef
	db $fd                                           ; $74d7: $fd
	rst $38                                          ; $74d8: $ff
	rst $38                                          ; $74d9: $ff
	jr @-$46                                         ; $74da: $18 $b8

	cp h                                             ; $74dc: $bc
	ld e, $1f                                        ; $74dd: $1e $1f
	ccf                                              ; $74df: $3f
	jr c, jr_026_7512                                ; $74e0: $38 $30

	rst SubAFromDE                                          ; $74e2: $df
	sbc a                                            ; $74e3: $9f
	ld h, a                                          ; $74e4: $67
	sbc $94                                          ; $74e5: $de $94
	inc a                                            ; $74e7: $3c
	ld b, h                                          ; $74e8: $44
	adc l                                            ; $74e9: $8d
	sub b                                            ; $74ea: $90
	ld h, b                                          ; $74eb: $60
	ld h, l                                          ; $74ec: $65
	ld e, $e7                                        ; $74ed: $1e $e7
	db $fc                                           ; $74ef: $fc
	rst $38                                          ; $74f0: $ff
	rst AddAOntoHL                                          ; $74f1: $ef
	ld a, e                                          ; $74f2: $7b
	db $db                                           ; $74f3: $db
	ld a, a                                          ; $74f4: $7f
	ld hl, sp-$67                                    ; $74f5: $f8 $99
	adc h                                            ; $74f7: $8c
	add e                                            ; $74f8: $83
	sbc a                                            ; $74f9: $9f
	add hl, de                                       ; $74fa: $19
	rst SubAFromDE                                          ; $74fb: $df
	jr c, @+$0a                                      ; $74fc: $38 $08

	nop                                              ; $74fe: $00
	rst SubAFromDE                                          ; $74ff: $df
	ld [hl+], a                                      ; $7500: $22
	db $dd                                           ; $7501: $dd
	ld h, [hl]                                       ; $7502: $66
	rst SubAFromDE                                          ; $7503: $df
	ld [hl+], a                                      ; $7504: $22
	ldh a, [$80]                                     ; $7505: $f0 $80
	reti                                             ; $7507: $d9


	rst $38                                          ; $7508: $ff
	adc c                                            ; $7509: $89
	ld c, c                                          ; $750a: $49
	ld hl, sp-$08                                    ; $750b: $f8 $f8
	or b                                             ; $750d: $b0
	ld [$3bdb], sp                                   ; $750e: $08 $db $3b
	inc hl                                           ; $7511: $23

jr_026_7512:
	rst $38                                          ; $7512: $ff
	ei                                               ; $7513: $fb
	di                                               ; $7514: $f3
	rst $38                                          ; $7515: $ff
	rst $38                                          ; $7516: $ff
	ccf                                              ; $7517: $3f
	sbc a                                            ; $7518: $9f
	rst $38                                          ; $7519: $ff
	db $fd                                           ; $751a: $fd
	ld a, $7c                                        ; $751b: $3e $7c
	ld hl, sp-$33                                    ; $751d: $f8 $cd
	rst GetHLinHL                                          ; $751f: $cf
	jp c, $98ff                                      ; $7520: $da $ff $98

	cp a                                             ; $7523: $bf
	push hl                                          ; $7524: $e5
	rst $38                                          ; $7525: $ff
	rra                                              ; $7526: $1f
	ccf                                              ; $7527: $3f
	rra                                              ; $7528: $1f
	ccf                                              ; $7529: $3f
	jp c, $80ff                                      ; $752a: $da $ff $80

	rst SubAFromDE                                          ; $752d: $df
	ld e, a                                          ; $752e: $5f
	rst $38                                          ; $752f: $ff
	rst $38                                          ; $7530: $ff
	rst AddAOntoHL                                          ; $7531: $ef
	jp $c184                                         ; $7532: $c3 $84 $c1


	rst FarCall                                          ; $7535: $f7
	db $fc                                           ; $7536: $fc
	db $fc                                           ; $7537: $fc
	sub e                                            ; $7538: $93
	sub a                                            ; $7539: $97
	db $fc                                           ; $753a: $fc
	ld sp, hl                                        ; $753b: $f9
	di                                               ; $753c: $f3
	rst FarCall                                          ; $753d: $f7
	db $ec                                           ; $753e: $ec
	db $eb                                           ; $753f: $eb
	rst SubAFromHL                                          ; $7540: $d7
	rst SubAFromDE                                          ; $7541: $df
	rst $38                                          ; $7542: $ff
	cp $fc                                           ; $7543: $fe $fc
	ld hl, sp-$0d                                    ; $7545: $f8 $f3
	or $ec                                           ; $7547: $f6 $ec
	add sp, -$40                                     ; $7549: $e8 $c0
	db $fc                                           ; $754b: $fc
	add b                                            ; $754c: $80
	pop bc                                           ; $754d: $c1
	ld h, $81                                        ; $754e: $26 $81
	pop hl                                           ; $7550: $e1
	sub d                                            ; $7551: $92
	and c                                            ; $7552: $a1
	nop                                              ; $7553: $00
	nop                                              ; $7554: $00
	ld a, $c1                                        ; $7555: $3e $c1
	nop                                              ; $7557: $00
	ld e, $61                                        ; $7558: $1e $61
	ret nz                                           ; $755a: $c0

	sub l                                            ; $755b: $95
	ld c, b                                          ; $755c: $48
	ld h, $72                                        ; $755d: $26 $72
	ld [de], a                                       ; $755f: $12
	adc c                                            ; $7560: $89
	add d                                            ; $7561: $82
	ld b, l                                          ; $7562: $45
	ld h, d                                          ; $7563: $62
	inc sp                                           ; $7564: $33
	add hl, de                                       ; $7565: $19
	adc l                                            ; $7566: $8d
	db $ed                                           ; $7567: $ed
	ld [hl], a                                       ; $7568: $77
	ld a, a                                          ; $7569: $7f
	cp [hl]                                          ; $756a: $be
	adc h                                            ; $756b: $8c
	add b                                            ; $756c: $80
	sbc c                                            ; $756d: $99
	nop                                              ; $756e: $00
	ld a, $71                                        ; $756f: $3e $71
	add d                                            ; $7571: $82
	ld a, b                                          ; $7572: $78
	jp Jump_026_7e7f                                 ; $7573: $c3 $7f $7e


	rst $38                                          ; $7576: $ff
	pop bc                                           ; $7577: $c1
	add b                                            ; $7578: $80
	db $fc                                           ; $7579: $fc
	add a                                            ; $757a: $87
	nop                                              ; $757b: $00
	ld a, $ff                                        ; $757c: $3e $ff
	rst $38                                          ; $757e: $ff
	ld l, [hl]                                       ; $757f: $6e
	or a                                             ; $7580: $b7
	ld e, e                                          ; $7581: $5b
	add hl, hl                                       ; $7582: $29
	inc d                                            ; $7583: $14
	pop bc                                           ; $7584: $c1
	nop                                              ; $7585: $00
	nop                                              ; $7586: $00
	add b                                            ; $7587: $80
	ld b, b                                          ; $7588: $40
	jr nz, @+$12                                     ; $7589: $20 $10

	adc b                                            ; $758b: $88
	add b                                            ; $758c: $80
	ld de, $e3cc                                     ; $758d: $11 $cc $e3
	db $ed                                           ; $7590: $ed
	ld [hl], $5b                                     ; $7591: $36 $5b
	xor c                                            ; $7593: $a9
	adc h                                            ; $7594: $8c
	ldh [$30], a                                     ; $7595: $e0 $30
	inc e                                            ; $7597: $1c
	ld b, $43                                        ; $7598: $06 $43
	ld hl, $1010                                     ; $759a: $21 $10 $10
	ld hl, $1248                                     ; $759d: $21 $48 $12
	ret                                              ; $75a0: $c9


	or h                                             ; $75a1: $b4
	ld e, d                                          ; $75a2: $5a
	adc l                                            ; $75a3: $8d
	ld h, d                                          ; $75a4: $62
	rst JumpTable                                          ; $75a5: $c7
	ld sp, $060c                                     ; $75a6: $31 $0c $06
	inc bc                                           ; $75a9: $03
	add c                                            ; $75aa: $81
	ret nz                                           ; $75ab: $c0

	sub [hl]                                         ; $75ac: $96
	call nz, rIE                                   ; $75ad: $c4 $ff $ff
	ld a, a                                          ; $75b0: $7f
	ccf                                              ; $75b1: $3f
	sbc a                                            ; $75b2: $9f
	ld l, a                                          ; $75b3: $6f
	ccf                                              ; $75b4: $3f
	sub a                                            ; $75b5: $97
	sbc $ff                                          ; $75b6: $de $ff
	ld a, e                                          ; $75b8: $7b
	rst FarCall                                          ; $75b9: $f7
	sbc b                                            ; $75ba: $98
	rst GetHLinHL                                          ; $75bb: $cf
	ld l, a                                          ; $75bc: $6f
	call z, $fefe                                    ; $75bd: $cc $fe $fe
	rst FarCall                                          ; $75c0: $f7
	rst SubAFromHL                                          ; $75c1: $d7
	sbc $ff                                          ; $75c2: $de $ff
	sbc l                                            ; $75c4: $9d
	db $fc                                           ; $75c5: $fc
	cp $7b                                           ; $75c6: $fe $7b
	ld l, e                                          ; $75c8: $6b
	sub h                                            ; $75c9: $94
	rst SubAFromBC                                          ; $75ca: $e7
	rst FarCall                                          ; $75cb: $f7
	ld a, a                                          ; $75cc: $7f
	adc $3f                                          ; $75cd: $ce $3f
	ldh [$e1], a                                     ; $75cf: $e0 $e1
	or $fe                                           ; $75d1: $f6 $fe
	cp $ff                                           ; $75d3: $fe $ff
	ld a, e                                          ; $75d5: $7b
	ld hl, sp-$6e                                    ; $75d6: $f8 $92
	pop af                                           ; $75d8: $f1
	cp $c2                                           ; $75d9: $fe $c2
	add c                                            ; $75db: $81
	ld bc, $0f70                                     ; $75dc: $01 $70 $0f
	nop                                              ; $75df: $00
	ldh [rAUD3LEVEL], a                              ; $75e0: $e0 $1c
	jp c, $f63f                                      ; $75e2: $da $3f $f6

	ld l, a                                          ; $75e5: $6f
	ld hl, sp-$6c                                    ; $75e6: $f8 $94
	rst $38                                          ; $75e8: $ff
	or $73                                           ; $75e9: $f6 $73
	rra                                              ; $75eb: $1f
	rlca                                             ; $75ec: $07
	add hl, de                                       ; $75ed: $19
	pop bc                                           ; $75ee: $c1
	rlca                                             ; $75ef: $07
	dec de                                           ; $75f0: $1b
	jr z, jr_026_7670                                ; $75f1: $28 $7d

	ld l, e                                          ; $75f3: $6b
	ld hl, sp+$08                                    ; $75f4: $f8 $08
	nop                                              ; $75f6: $00
	rst SubAFromDE                                          ; $75f7: $df
	ld [hl+], a                                      ; $75f8: $22
	db $dd                                           ; $75f9: $dd
	ld h, [hl]                                       ; $75fa: $66
	rst SubAFromDE                                          ; $75fb: $df
	ld [hl+], a                                      ; $75fc: $22
	ldh a, [$80]                                     ; $75fd: $f0 $80
	add b                                            ; $75ff: $80
	adc $dc                                          ; $7600: $ce $dc
	call c, $ff7e                                    ; $7602: $dc $7e $ff
	rst FarCall                                          ; $7605: $f7
	di                                               ; $7606: $f3
	rst $38                                          ; $7607: $ff
	ccf                                              ; $7608: $3f
	ccf                                              ; $7609: $3f
	inc sp                                           ; $760a: $33
	add c                                            ; $760b: $81
	ld h, c                                          ; $760c: $61
	ld a, b                                          ; $760d: $78
	cp $30                                           ; $760e: $fe $30
	rrca                                             ; $7610: $0f
	ccf                                              ; $7611: $3f
	ld a, a                                          ; $7612: $7f
	db $e3                                           ; $7613: $e3
	rst SubAFromBC                                          ; $7614: $e7
	rst GetHLinHL                                          ; $7615: $cf
	rst AddAOntoHL                                          ; $7616: $ef
	rst $38                                          ; $7617: $ff
	rst $38                                          ; $7618: $ff
	sbc $9e                                          ; $7619: $de $9e
	ccf                                              ; $761b: $3f
	ccf                                              ; $761c: $3f
	ld a, h                                          ; $761d: $7c
	ld a, b                                          ; $761e: $78
	sbc [hl]                                         ; $761f: $9e
	ld a, b                                          ; $7620: $78
	sbc $ff                                          ; $7621: $de $ff
	ld a, a                                          ; $7623: $7f
	db $e3                                           ; $7624: $e3
	sbc c                                            ; $7625: $99
	ei                                               ; $7626: $fb
	db $eb                                           ; $7627: $eb
	rst $38                                          ; $7628: $ff
	pop af                                           ; $7629: $f1
	inc sp                                           ; $762a: $33
	ld [hl], a                                       ; $762b: $77
	sbc $ff                                          ; $762c: $de $ff
	sbc l                                            ; $762e: $9d
	ld e, $0f                                        ; $762f: $1e $0f
	db $dd                                           ; $7631: $dd
	rst $38                                          ; $7632: $ff
	sbc [hl]                                         ; $7633: $9e
	sbc a                                            ; $7634: $9f
	call c, Call_026_7fff                            ; $7635: $dc $ff $7f
	reti                                             ; $7638: $d9


	sub e                                            ; $7639: $93
	db $fc                                           ; $763a: $fc
	inc l                                            ; $763b: $2c
	ld b, $23                                        ; $763c: $06 $23
	rst $38                                          ; $763e: $ff
	rst GetHLinHL                                          ; $763f: $cf
	jp $dc8f                                         ; $7640: $c3 $8f $dc


	di                                               ; $7643: $f3
	rst SubAFromBC                                          ; $7644: $e7
	rst SubAFromHL                                          ; $7645: $d7
	db $db                                           ; $7646: $db
	rst $38                                          ; $7647: $ff
	sbc l                                            ; $7648: $9d
	cp $fc                                           ; $7649: $fe $fc
	ld [hl], a                                       ; $764b: $77
	ei                                               ; $764c: $fb
	sbc e                                            ; $764d: $9b
	ldh a, [$b8]                                     ; $764e: $f0 $b8
	pop hl                                           ; $7650: $e1
	ld [de], a                                       ; $7651: $12
	call c, $80ff                                    ; $7652: $dc $ff $80
	ret nz                                           ; $7655: $c0

	ld e, $e1                                        ; $7656: $1e $e1
	ei                                               ; $7658: $fb
	db $fc                                           ; $7659: $fc
	add e                                            ; $765a: $83
	call nz, Call_026_4831                           ; $765b: $c4 $31 $48
	inc d                                            ; $765e: $14
	ld c, d                                          ; $765f: $4a
	rst $38                                          ; $7660: $ff
	rst $38                                          ; $7661: $ff
	db $fc                                           ; $7662: $fc
	inc bc                                           ; $7663: $03
	ret nz                                           ; $7664: $c0

	jr nc, jr_026_766f                               ; $7665: $30 $08

	add h                                            ; $7667: $84
	rst $38                                          ; $7668: $ff
	ld h, e                                          ; $7669: $63
	sub c                                            ; $766a: $91
	and d                                            ; $766b: $a2
	ld d, h                                          ; $766c: $54
	sub d                                            ; $766d: $92
	cp [hl]                                          ; $766e: $be

jr_026_766f:
	adc a                                            ; $766f: $8f

jr_026_7670:
	rst $38                                          ; $7670: $ff
	adc l                                            ; $7671: $8d
	ld h, d                                          ; $7672: $62
	add hl, de                                       ; $7673: $19
	sbc h                                            ; $7674: $9c
	adc c                                            ; $7675: $89
	ld c, l                                          ; $7676: $4d
	ld b, l                                          ; $7677: $45
	ld a, e                                          ; $7678: $7b
	xor e                                            ; $7679: $ab
	add c                                            ; $767a: $81
	ld a, [hl]                                       ; $767b: $7e
	cp h                                             ; $767c: $bc
	ei                                               ; $767d: $fb
	ld [hl], a                                       ; $767e: $77
	adc $00                                          ; $767f: $ce $00
	rst JumpTable                                          ; $7681: $c7
	rst AddAOntoHL                                          ; $7682: $ef
	rst AddAOntoHL                                          ; $7683: $ef
	ld l, a                                          ; $7684: $6f
	cpl                                              ; $7685: $2f
	cp h                                             ; $7686: $bc
	pop af                                           ; $7687: $f1
	rst $38                                          ; $7688: $ff
	rst $38                                          ; $7689: $ff
	xor a                                            ; $768a: $af
	ei                                               ; $768b: $fb
	rst $38                                          ; $768c: $ff
	ld a, e                                          ; $768d: $7b
	rst $38                                          ; $768e: $ff
	rra                                              ; $768f: $1f
	ld hl, sp-$01                                    ; $7690: $f8 $ff
	rst SubAFromDE                                          ; $7692: $df
	rlca                                             ; $7693: $07
	rst $38                                          ; $7694: $ff
	add a                                            ; $7695: $87
	nop                                              ; $7696: $00
	rst $38                                          ; $7697: $ff
	rlca                                             ; $7698: $07
	call c, $9cff                                    ; $7699: $dc $ff $9c
	ld a, a                                          ; $769c: $7f
	rst $38                                          ; $769d: $ff
	rst GetHLinHL                                          ; $769e: $cf
	jp c, $86ff                                      ; $769f: $da $ff $86

	ccf                                              ; $76a2: $3f
	cp $ff                                           ; $76a3: $fe $ff
	cp l                                             ; $76a5: $bd
	ld e, $fd                                        ; $76a6: $1e $fd
	ld a, a                                          ; $76a8: $7f
	rst $38                                          ; $76a9: $ff
	rst $38                                          ; $76aa: $ff
	ld hl, sp-$1d                                    ; $76ab: $f8 $e3
	push bc                                          ; $76ad: $c5
	cp $ff                                           ; $76ae: $fe $ff
	rst FarCall                                          ; $76b0: $f7
	ccf                                              ; $76b1: $3f
	cp l                                             ; $76b2: $bd
	rst $38                                          ; $76b3: $ff
	cp $e3                                           ; $76b4: $fe $e3
	ld [hl], c                                       ; $76b6: $71
	cp $ef                                           ; $76b7: $fe $ef
	pop af                                           ; $76b9: $f1
	sbc $6b                                          ; $76ba: $de $6b
	ld hl, sp-$6a                                    ; $76bc: $f8 $96
	cp $8e                                           ; $76be: $fe $8e
	rst AddAOntoHL                                          ; $76c0: $ef
	ld a, [hl-]                                      ; $76c1: $3a
	cp $0d                                           ; $76c2: $fe $0d
	adc a                                            ; $76c4: $8f
	sbc b                                            ; $76c5: $98
	ld l, a                                          ; $76c6: $6f
	ld a, e                                          ; $76c7: $7b
	push de                                          ; $76c8: $d5
	sbc [hl]                                         ; $76c9: $9e
	rst $38                                          ; $76ca: $ff
	ld [hl], a                                       ; $76cb: $77
	ld hl, sp-$6d                                    ; $76cc: $f8 $93
	sbc a                                            ; $76ce: $9f
	cp a                                             ; $76cf: $bf
	cp $7f                                           ; $76d0: $fe $7f
	rst $38                                          ; $76d2: $ff
	di                                               ; $76d3: $f3
	ld a, a                                          ; $76d4: $7f
	cp e                                             ; $76d5: $bb
	ld hl, sp-$08                                    ; $76d6: $f8 $f8
	ld sp, hl                                        ; $76d8: $f9
	db $fd                                           ; $76d9: $fd
	ld a, e                                          ; $76da: $7b
	or a                                             ; $76db: $b7
	sbc l                                            ; $76dc: $9d
	cp e                                             ; $76dd: $bb
	pop hl                                           ; $76de: $e1
	ld [hl], a                                       ; $76df: $77
	rst SubAFromBC                                          ; $76e0: $e7
	rst SubAFromDE                                          ; $76e1: $df
	rst $38                                          ; $76e2: $ff
	sub [hl]                                         ; $76e3: $96
	dec sp                                           ; $76e4: $3b
	ld a, a                                          ; $76e5: $7f
	ei                                               ; $76e6: $fb
	pop af                                           ; $76e7: $f1
	ldh a, [$f3]                                     ; $76e8: $f0 $f3
	rst SubAFromHL                                          ; $76ea: $d7
	inc e                                            ; $76eb: $1c
	db $fc                                           ; $76ec: $fc
	dec bc                                           ; $76ed: $0b
	nop                                              ; $76ee: $00
	rst SubAFromDE                                          ; $76ef: $df
	ld [hl+], a                                      ; $76f0: $22
	sbc c                                            ; $76f1: $99
	halt                                             ; $76f2: $76
	ld h, [hl]                                       ; $76f3: $66
	ld h, [hl]                                       ; $76f4: $66
	ld h, d                                          ; $76f5: $62
	ld [hl+], a                                      ; $76f6: $22
	ld [hl+], a                                      ; $76f7: $22
	ld c, e                                          ; $76f8: $4b
	add b                                            ; $76f9: $80
	sbc [hl]                                         ; $76fa: $9e
	cp a                                             ; $76fb: $bf
	call c, $937f                                    ; $76fc: $dc $7f $93
	rst $38                                          ; $76ff: $ff
	rst SubAFromDE                                          ; $7700: $df
	and $e4                                          ; $7701: $e6 $e4
	call nz, $cccd                                   ; $7703: $c4 $cd $cc
	call c, $f3fa                                    ; $7706: $dc $fa $f3
	pop hl                                           ; $7709: $e1
	adc a                                            ; $770a: $8f
	ld a, e                                          ; $770b: $7b
	di                                               ; $770c: $f3
	sub d                                            ; $770d: $92
	ld a, a                                          ; $770e: $7f
	rst FarCall                                          ; $770f: $f7
	ld [hl], d                                       ; $7710: $72
	ld c, a                                          ; $7711: $4f
	ld a, [hl]                                       ; $7712: $7e

jr_026_7713:
	ldh a, [$80]                                     ; $7713: $f0 $80
	jr c, jr_026_7713                                ; $7715: $38 $fc

	cp $b3                                           ; $7717: $fe $b3
	rlca                                             ; $7719: $07
	ld c, $de                                        ; $771a: $0e $de
	add b                                            ; $771c: $80
	sbc d                                            ; $771d: $9a
	add c                                            ; $771e: $81
	add e                                            ; $771f: $83
	add e                                            ; $7720: $83
	rlca                                             ; $7721: $07
	inc c                                            ; $7722: $0c
	ei                                               ; $7723: $fb
	db $dd                                           ; $7724: $dd
	rra                                              ; $7725: $1f
	rst SubAFromDE                                          ; $7726: $df
	rrca                                             ; $7727: $0f
	rst SubAFromDE                                          ; $7728: $df
	rlca                                             ; $7729: $07
	db $dd                                           ; $772a: $dd
	ldh a, [c]                                       ; $772b: $f2
	sbc [hl]                                         ; $772c: $9e
	ld a, [$fcde]                                    ; $772d: $fa $de $fc
	sub e                                            ; $7730: $93
	inc sp                                           ; $7731: $33
	ld l, $aa                                        ; $7732: $2e $aa
	db $f4                                           ; $7734: $f4
	ld [hl], b                                       ; $7735: $70
	db $fd                                           ; $7736: $fd
	ld [hl], e                                       ; $7737: $73
	inc b                                            ; $7738: $04
	ld a, [hl-]                                      ; $7739: $3a
	ld a, $3e                                        ; $773a: $3e $3e
	inc e                                            ; $773c: $1c
	cp $9c                                           ; $773d: $fe $9c
	ld [bc], a                                       ; $773f: $02
	add c                                            ; $7740: $81
	add b                                            ; $7741: $80
	di                                               ; $7742: $f3
	ld b, $00                                        ; $7743: $06 $00
	sbc h                                            ; $7745: $9c
	ld [hl], h                                       ; $7746: $74
	ld b, h                                          ; $7747: $44
	ld [hl], h                                       ; $7748: $74
	ld c, e                                          ; $7749: $4b
	add b                                            ; $774a: $80
	sbc [hl]                                         ; $774b: $9e
	cp a                                             ; $774c: $bf
	call c, $837f                                    ; $774d: $dc $7f $83
	rst $38                                          ; $7750: $ff
	rst SubAFromDE                                          ; $7751: $df
	and $e4                                          ; $7752: $e6 $e4
	call nz, $cccd                                   ; $7754: $c4 $cd $cc
	call c, $f3fa                                    ; $7757: $dc $fa $f3
	pop hl                                           ; $775a: $e1
	adc a                                            ; $775b: $8f
	ld a, a                                          ; $775c: $7f
	rst $38                                          ; $775d: $ff
	rst $38                                          ; $775e: $ff
	rst SubAFromDE                                          ; $775f: $df
	ld a, a                                          ; $7760: $7f
	rst FarCall                                          ; $7761: $f7
	ld c, a                                          ; $7762: $4f
	ld a, [hl]                                       ; $7763: $7e
	ldh a, [$80]                                     ; $7764: $f0 $80
	nop                                              ; $7766: $00
	jr c, @-$02                                      ; $7767: $38 $fc

	cp $07                                           ; $7769: $fe $07
	ld c, $de                                        ; $776b: $0e $de
	add b                                            ; $776d: $80
	sbc d                                            ; $776e: $9a
	add c                                            ; $776f: $81
	add e                                            ; $7770: $83
	add e                                            ; $7771: $83
	rlca                                             ; $7772: $07
	inc c                                            ; $7773: $0c
	ei                                               ; $7774: $fb
	db $dd                                           ; $7775: $dd
	rra                                              ; $7776: $1f
	rst SubAFromDE                                          ; $7777: $df
	rrca                                             ; $7778: $0f
	rst SubAFromDE                                          ; $7779: $df
	rlca                                             ; $777a: $07
	db $dd                                           ; $777b: $dd
	ldh a, [c]                                       ; $777c: $f2
	sbc [hl]                                         ; $777d: $9e
	ld a, [$fcde]                                    ; $777e: $fa $de $fc
	sub e                                            ; $7781: $93
	ld [hl], d                                       ; $7782: $72
	inc sp                                           ; $7783: $33
	xor d                                            ; $7784: $aa
	db $f4                                           ; $7785: $f4
	ld [hl], b                                       ; $7786: $70
	db $fd                                           ; $7787: $fd
	ld [hl], e                                       ; $7788: $73
	inc b                                            ; $7789: $04
	or e                                             ; $778a: $b3
	ld a, [hl-]                                      ; $778b: $3a
	ld a, $1c                                        ; $778c: $3e $1c
	cp $9c                                           ; $778e: $fe $9c
	ld [bc], a                                       ; $7790: $02
	add c                                            ; $7791: $81
	add b                                            ; $7792: $80
	di                                               ; $7793: $f3
	ld b, $00                                        ; $7794: $06 $00
	sbc h                                            ; $7796: $9c
	ld [hl], h                                       ; $7797: $74
	ld b, h                                          ; $7798: $44
	ld [hl], h                                       ; $7799: $74
	ld c, d                                          ; $779a: $4a
	add b                                            ; $779b: $80
	sbc [hl]                                         ; $779c: $9e
	cp a                                             ; $779d: $bf
	call c, $927f                                    ; $779e: $dc $7f $92
	rst $38                                          ; $77a1: $ff
	rst SubAFromDE                                          ; $77a2: $df
	and $e4                                          ; $77a3: $e6 $e4
	call nz, $cccd                                   ; $77a5: $c4 $cd $cc
	call c, $f2fa                                    ; $77a8: $dc $fa $f2
	pop hl                                           ; $77ab: $e1
	adc a                                            ; $77ac: $8f
	ld a, a                                          ; $77ad: $7f
	call c, $9bff                                    ; $77ae: $dc $ff $9b
	ld c, a                                          ; $77b1: $4f
	ld a, [hl]                                       ; $77b2: $7e
	ldh a, [$80]                                     ; $77b3: $f0 $80
	db $fd                                           ; $77b5: $fd
	sbc l                                            ; $77b6: $9d
	rlca                                             ; $77b7: $07
	ld c, $de                                        ; $77b8: $0e $de
	add b                                            ; $77ba: $80
	sbc d                                            ; $77bb: $9a
	add c                                            ; $77bc: $81
	add e                                            ; $77bd: $83
	add e                                            ; $77be: $83
	rlca                                             ; $77bf: $07
	inc c                                            ; $77c0: $0c
	ei                                               ; $77c1: $fb
	db $dd                                           ; $77c2: $dd
	rra                                              ; $77c3: $1f
	rst SubAFromDE                                          ; $77c4: $df
	rrca                                             ; $77c5: $0f
	rst SubAFromDE                                          ; $77c6: $df
	rlca                                             ; $77c7: $07
	sbc [hl]                                         ; $77c8: $9e
	di                                               ; $77c9: $f3
	sbc $f2                                          ; $77ca: $de $f2
	sbc [hl]                                         ; $77cc: $9e
	ld a, [$fcde]                                    ; $77cd: $fa $de $fc
	sub e                                            ; $77d0: $93
	rst SubAFromDE                                          ; $77d1: $df
	rst $38                                          ; $77d2: $ff
	cp $f4                                           ; $77d3: $fe $f4
	ld [hl], b                                       ; $77d5: $70
	db $fd                                           ; $77d6: $fd
	ld [hl], e                                       ; $77d7: $73
	inc b                                            ; $77d8: $04
	ldh [$fe], a                                     ; $77d9: $e0 $fe
	inc a                                            ; $77db: $3c
	inc e                                            ; $77dc: $1c
	cp $9d                                           ; $77dd: $fe $9d
	ld [bc], a                                       ; $77df: $02
	add c                                            ; $77e0: $81
	ld [hl], e                                       ; $77e1: $73
	jp z, $06f7                                      ; $77e2: $ca $f7 $06

	nop                                              ; $77e5: $00
	sbc h                                            ; $77e6: $9c
	ld [hl], h                                       ; $77e7: $74
	ld b, h                                          ; $77e8: $44
	ld [hl], h                                       ; $77e9: $74
	ld c, d                                          ; $77ea: $4a
	add b                                            ; $77eb: $80
	sbc [hl]                                         ; $77ec: $9e
	cp a                                             ; $77ed: $bf
	call c, $927f                                    ; $77ee: $dc $7f $92
	rst $38                                          ; $77f1: $ff
	rst SubAFromDE                                          ; $77f2: $df
	and $e4                                          ; $77f3: $e6 $e4
	call nz, $cccd                                   ; $77f5: $c4 $cd $cc
	call c, $f2fa                                    ; $77f8: $dc $fa $f2
	pop hl                                           ; $77fb: $e1
	adc a                                            ; $77fc: $8f
	ld a, a                                          ; $77fd: $7f
	call c, $9bff                                    ; $77fe: $dc $ff $9b
	ld c, a                                          ; $7801: $4f
	ld a, [hl]                                       ; $7802: $7e
	ldh a, [$80]                                     ; $7803: $f0 $80
	db $fd                                           ; $7805: $fd
	sbc l                                            ; $7806: $9d
	rlca                                             ; $7807: $07
	ld c, $de                                        ; $7808: $0e $de
	add b                                            ; $780a: $80
	sbc d                                            ; $780b: $9a
	add c                                            ; $780c: $81
	add e                                            ; $780d: $83
	add e                                            ; $780e: $83
	rlca                                             ; $780f: $07
	inc c                                            ; $7810: $0c
	ei                                               ; $7811: $fb
	db $dd                                           ; $7812: $dd
	rra                                              ; $7813: $1f
	rst SubAFromDE                                          ; $7814: $df
	rrca                                             ; $7815: $0f
	rst SubAFromDE                                          ; $7816: $df
	rlca                                             ; $7817: $07
	sbc d                                            ; $7818: $9a
	ldh a, [c]                                       ; $7819: $f2
	di                                               ; $781a: $f3
	ldh a, [c]                                       ; $781b: $f2
	ldh a, [c]                                       ; $781c: $f2
	ld a, [$fcde]                                    ; $781d: $fa $de $fc
	sub e                                            ; $7820: $93
	ld a, a                                          ; $7821: $7f
	rst AddAOntoHL                                          ; $7822: $ef
	cp $dc                                           ; $7823: $fe $dc
	ld [hl], b                                       ; $7825: $70
	db $fd                                           ; $7826: $fd
	ld [hl], e                                       ; $7827: $73
	inc b                                            ; $7828: $04
	add b                                            ; $7829: $80
	ldh a, [$7e]                                     ; $782a: $f0 $7e
	inc a                                            ; $782c: $3c
	cp $9d                                           ; $782d: $fe $9d
	ld [bc], a                                       ; $782f: $02
	add c                                            ; $7830: $81
	ld [hl], e                                       ; $7831: $73
	jp z, $06f7                                      ; $7832: $ca $f7 $06

	nop                                              ; $7835: $00
	sbc h                                            ; $7836: $9c
	ld [hl], h                                       ; $7837: $74
	ld b, h                                          ; $7838: $44
	ld [hl], h                                       ; $7839: $74
	ld c, e                                          ; $783a: $4b
	add b                                            ; $783b: $80
	sbc [hl]                                         ; $783c: $9e
	cp a                                             ; $783d: $bf
	call c, $837f                                    ; $783e: $dc $7f $83
	rst $38                                          ; $7841: $ff
	rst SubAFromDE                                          ; $7842: $df
	and $e4                                          ; $7843: $e6 $e4
	push bc                                          ; $7845: $c5
	call z, $dccc                                    ; $7846: $cc $cc $dc
	ld a, [$c3f3]                                    ; $7849: $fa $f3 $c3
	dec a                                            ; $784c: $3d
	rst $38                                          ; $784d: $ff
	rst $38                                          ; $784e: $ff
	cp e                                             ; $784f: $bb
	ld a, l                                          ; $7850: $7d
	di                                               ; $7851: $f3
	ld [hl], d                                       ; $7852: $72
	ld a, l                                          ; $7853: $7d
	cp $c2                                           ; $7854: $fe $c2
	nop                                              ; $7856: $00
	ld a, h                                          ; $7857: $7c
	cp $fe                                           ; $7858: $fe $fe
	or e                                             ; $785a: $b3
	rlca                                             ; $785b: $07
	ld c, $de                                        ; $785c: $0e $de
	add b                                            ; $785e: $80
	sbc d                                            ; $785f: $9a
	add c                                            ; $7860: $81
	add e                                            ; $7861: $83
	add e                                            ; $7862: $83
	rlca                                             ; $7863: $07
	inc c                                            ; $7864: $0c
	ei                                               ; $7865: $fb
	db $dd                                           ; $7866: $dd
	rra                                              ; $7867: $1f
	rst SubAFromDE                                          ; $7868: $df
	rrca                                             ; $7869: $0f
	rst SubAFromDE                                          ; $786a: $df
	rlca                                             ; $786b: $07
	db $dd                                           ; $786c: $dd
	ldh a, [c]                                       ; $786d: $f2
	sbc [hl]                                         ; $786e: $9e
	ld a, [$fcde]                                    ; $786f: $fa $de $fc
	sub e                                            ; $7872: $93
	inc sp                                           ; $7873: $33
	ld l, $aa                                        ; $7874: $2e $aa
	db $f4                                           ; $7876: $f4
	ld [hl], b                                       ; $7877: $70
	db $fd                                           ; $7878: $fd
	ld [hl], e                                       ; $7879: $73
	inc b                                            ; $787a: $04
	ld a, [hl-]                                      ; $787b: $3a
	ld a, $3e                                        ; $787c: $3e $3e
	inc e                                            ; $787e: $1c
	cp $9c                                           ; $787f: $fe $9c
	ld [bc], a                                       ; $7881: $02
	add c                                            ; $7882: $81
	add b                                            ; $7883: $80
	di                                               ; $7884: $f3
	ld b, $00                                        ; $7885: $06 $00
	sbc h                                            ; $7887: $9c
	ld [hl], h                                       ; $7888: $74
	ld b, h                                          ; $7889: $44
	ld [hl], h                                       ; $788a: $74
	ld c, e                                          ; $788b: $4b
	add b                                            ; $788c: $80
	sbc [hl]                                         ; $788d: $9e
	cp a                                             ; $788e: $bf
	call c, $937f                                    ; $788f: $dc $7f $93
	rst $38                                          ; $7892: $ff
	rst SubAFromDE                                          ; $7893: $df
	and $e4                                          ; $7894: $e6 $e4
	push bc                                          ; $7896: $c5
	call z, $dccc                                    ; $7897: $cc $cc $dc
	ld a, [$c3f3]                                    ; $789a: $fa $f3 $c3
	dec a                                            ; $789d: $3d
	sbc $ff                                          ; $789e: $de $ff
	sub d                                            ; $78a0: $92
	rst SubAFromDE                                          ; $78a1: $df
	ld a, a                                          ; $78a2: $7f
	rst FarCall                                          ; $78a3: $f7
	ld a, l                                          ; $78a4: $7d
	cp $c2                                           ; $78a5: $fe $c2

jr_026_78a7:
	nop                                              ; $78a7: $00
	nop                                              ; $78a8: $00
	jr c, jr_026_78a7                                ; $78a9: $38 $fc

	cp $07                                           ; $78ab: $fe $07
	ld c, $de                                        ; $78ad: $0e $de
	add b                                            ; $78af: $80
	sbc d                                            ; $78b0: $9a
	add c                                            ; $78b1: $81
	add e                                            ; $78b2: $83
	add e                                            ; $78b3: $83
	rlca                                             ; $78b4: $07
	inc c                                            ; $78b5: $0c
	ei                                               ; $78b6: $fb
	db $dd                                           ; $78b7: $dd
	rra                                              ; $78b8: $1f
	rst SubAFromDE                                          ; $78b9: $df
	rrca                                             ; $78ba: $0f
	rst SubAFromDE                                          ; $78bb: $df
	rlca                                             ; $78bc: $07
	db $dd                                           ; $78bd: $dd
	ldh a, [c]                                       ; $78be: $f2
	sbc [hl]                                         ; $78bf: $9e
	ld a, [$fcde]                                    ; $78c0: $fa $de $fc
	sub e                                            ; $78c3: $93
	ld [hl], d                                       ; $78c4: $72
	inc sp                                           ; $78c5: $33
	xor d                                            ; $78c6: $aa
	db $f4                                           ; $78c7: $f4
	ld [hl], b                                       ; $78c8: $70
	db $fd                                           ; $78c9: $fd
	ld [hl], e                                       ; $78ca: $73
	inc b                                            ; $78cb: $04
	or e                                             ; $78cc: $b3
	ld a, [hl-]                                      ; $78cd: $3a
	ld a, $1c                                        ; $78ce: $3e $1c
	cp $9c                                           ; $78d0: $fe $9c
	ld [bc], a                                       ; $78d2: $02
	add c                                            ; $78d3: $81
	add b                                            ; $78d4: $80
	di                                               ; $78d5: $f3
	ld b, $00                                        ; $78d6: $06 $00
	sbc h                                            ; $78d8: $9c
	ld [hl], h                                       ; $78d9: $74
	ld b, h                                          ; $78da: $44
	ld [hl], h                                       ; $78db: $74
	ld b, a                                          ; $78dc: $47
	add b                                            ; $78dd: $80
	sbc [hl]                                         ; $78de: $9e
	cp a                                             ; $78df: $bf
	call c, $937f                                    ; $78e0: $dc $7f $93
	rst $38                                          ; $78e3: $ff
	rst SubAFromDE                                          ; $78e4: $df
	and $e4                                          ; $78e5: $e6 $e4
	push bc                                          ; $78e7: $c5
	call z, $dccc                                    ; $78e8: $cc $cc $dc
	ld a, [$c3f2]                                    ; $78eb: $fa $f2 $c3
	dec a                                            ; $78ee: $3d
	db $db                                           ; $78ef: $db
	rst $38                                          ; $78f0: $ff
	sbc h                                            ; $78f1: $9c
	ld a, l                                          ; $78f2: $7d
	cp $c2                                           ; $78f3: $fe $c2
	db $fc                                           ; $78f5: $fc
	sbc l                                            ; $78f6: $9d
	rlca                                             ; $78f7: $07
	ld c, $de                                        ; $78f8: $0e $de
	add b                                            ; $78fa: $80
	sbc d                                            ; $78fb: $9a
	add c                                            ; $78fc: $81
	add e                                            ; $78fd: $83
	add e                                            ; $78fe: $83
	rlca                                             ; $78ff: $07
	inc c                                            ; $7900: $0c
	ei                                               ; $7901: $fb
	db $dd                                           ; $7902: $dd
	rra                                              ; $7903: $1f
	rst SubAFromDE                                          ; $7904: $df
	rrca                                             ; $7905: $0f
	rst SubAFromDE                                          ; $7906: $df
	rlca                                             ; $7907: $07
	sbc [hl]                                         ; $7908: $9e
	di                                               ; $7909: $f3
	sbc $f2                                          ; $790a: $de $f2
	sbc [hl]                                         ; $790c: $9e
	ld a, [$fcde]                                    ; $790d: $fa $de $fc
	sub e                                            ; $7910: $93
	rst SubAFromDE                                          ; $7911: $df
	rst $38                                          ; $7912: $ff
	cp $f4                                           ; $7913: $fe $f4
	ld [hl], b                                       ; $7915: $70
	db $fd                                           ; $7916: $fd
	ld [hl], e                                       ; $7917: $73
	inc b                                            ; $7918: $04
	ldh [$fe], a                                     ; $7919: $e0 $fe
	inc a                                            ; $791b: $3c
	inc e                                            ; $791c: $1c
	cp $9c                                           ; $791d: $fe $9c
	ld [bc], a                                       ; $791f: $02
	add c                                            ; $7920: $81
	add b                                            ; $7921: $80
	di                                               ; $7922: $f3
	ld b, $00                                        ; $7923: $06 $00
	sbc h                                            ; $7925: $9c
	ld [hl], h                                       ; $7926: $74
	ld b, h                                          ; $7927: $44
	ld [hl], h                                       ; $7928: $74
	ld b, a                                          ; $7929: $47
	add b                                            ; $792a: $80
	sbc [hl]                                         ; $792b: $9e
	cp a                                             ; $792c: $bf
	call c, $937f                                    ; $792d: $dc $7f $93
	rst $38                                          ; $7930: $ff
	rst SubAFromDE                                          ; $7931: $df
	and $e4                                          ; $7932: $e6 $e4
	push bc                                          ; $7934: $c5
	call z, $dccc                                    ; $7935: $cc $cc $dc
	ld a, [$c3f2]                                    ; $7938: $fa $f2 $c3
	dec a                                            ; $793b: $3d
	db $db                                           ; $793c: $db
	rst $38                                          ; $793d: $ff
	sbc h                                            ; $793e: $9c
	ld a, l                                          ; $793f: $7d
	cp $c2                                           ; $7940: $fe $c2
	db $fc                                           ; $7942: $fc
	sbc l                                            ; $7943: $9d
	rlca                                             ; $7944: $07
	ld c, $de                                        ; $7945: $0e $de
	add b                                            ; $7947: $80
	sbc d                                            ; $7948: $9a
	add c                                            ; $7949: $81
	add e                                            ; $794a: $83
	add e                                            ; $794b: $83
	rlca                                             ; $794c: $07
	inc c                                            ; $794d: $0c
	ei                                               ; $794e: $fb
	db $dd                                           ; $794f: $dd
	rra                                              ; $7950: $1f
	rst SubAFromDE                                          ; $7951: $df
	rrca                                             ; $7952: $0f
	rst SubAFromDE                                          ; $7953: $df
	rlca                                             ; $7954: $07
	sbc d                                            ; $7955: $9a
	ldh a, [c]                                       ; $7956: $f2
	di                                               ; $7957: $f3
	ldh a, [c]                                       ; $7958: $f2
	ldh a, [c]                                       ; $7959: $f2
	ld a, [$fcde]                                    ; $795a: $fa $de $fc
	sub e                                            ; $795d: $93
	ld a, a                                          ; $795e: $7f
	rst AddAOntoHL                                          ; $795f: $ef
	cp $dc                                           ; $7960: $fe $dc
	ld [hl], b                                       ; $7962: $70
	db $fd                                           ; $7963: $fd
	ld [hl], e                                       ; $7964: $73
	inc b                                            ; $7965: $04
	add b                                            ; $7966: $80
	ldh a, [$7e]                                     ; $7967: $f0 $7e
	inc a                                            ; $7969: $3c
	cp $9c                                           ; $796a: $fe $9c
	ld [bc], a                                       ; $796c: $02
	add c                                            ; $796d: $81
	add b                                            ; $796e: $80
	di                                               ; $796f: $f3
	ld b, $00                                        ; $7970: $06 $00
	sbc h                                            ; $7972: $9c
	ld [hl], h                                       ; $7973: $74
	ld b, h                                          ; $7974: $44
	ld [hl], h                                       ; $7975: $74
	ld c, e                                          ; $7976: $4b
	add b                                            ; $7977: $80
	sbc [hl]                                         ; $7978: $9e
	cp a                                             ; $7979: $bf
	call c, $937f                                    ; $797a: $dc $7f $93
	rst $38                                          ; $797d: $ff
	rst SubAFromDE                                          ; $797e: $df
	and $e4                                          ; $797f: $e6 $e4
	call nz, $cccd                                   ; $7981: $c4 $cd $cc
	call c, $f3fa                                    ; $7984: $dc $fa $f3
	pop hl                                           ; $7987: $e1
	adc a                                            ; $7988: $8f
	ld a, e                                          ; $7989: $7b
	di                                               ; $798a: $f3
	sub d                                            ; $798b: $92
	ld a, a                                          ; $798c: $7f
	rst GetHLinHL                                          ; $798d: $cf
	ld b, d                                          ; $798e: $42
	ld c, a                                          ; $798f: $4f
	ld a, [hl]                                       ; $7990: $7e

jr_026_7991:
	ldh a, [$80]                                     ; $7991: $f0 $80
	jr c, jr_026_7991                                ; $7993: $38 $fc

	adc $eb                                          ; $7995: $ce $eb
	rlca                                             ; $7997: $07
	ld c, $de                                        ; $7998: $0e $de
	add b                                            ; $799a: $80
	sbc d                                            ; $799b: $9a
	add c                                            ; $799c: $81
	add e                                            ; $799d: $83
	add e                                            ; $799e: $83
	rlca                                             ; $799f: $07
	inc c                                            ; $79a0: $0c
	ei                                               ; $79a1: $fb
	db $dd                                           ; $79a2: $dd
	rra                                              ; $79a3: $1f
	rst SubAFromDE                                          ; $79a4: $df
	rrca                                             ; $79a5: $0f
	rst SubAFromDE                                          ; $79a6: $df
	rlca                                             ; $79a7: $07
	db $dd                                           ; $79a8: $dd
	ldh a, [c]                                       ; $79a9: $f2
	sbc [hl]                                         ; $79aa: $9e
	ld a, [$fcde]                                    ; $79ab: $fa $de $fc
	sub a                                            ; $79ae: $97
	ld [hl], c                                       ; $79af: $71
	ld a, b                                          ; $79b0: $78
	ret c                                            ; $79b1: $d8

	ldh [rSVBK], a                                   ; $79b2: $e0 $70
	db $fd                                           ; $79b4: $fd
	ld [hl], e                                       ; $79b5: $73
	inc b                                            ; $79b6: $04
	sbc $78                                          ; $79b7: $de $78
	sbc [hl]                                         ; $79b9: $9e

jr_026_79ba:
	jr nc, jr_026_79ba                               ; $79ba: $30 $fe

	sbc h                                            ; $79bc: $9c
	ld [bc], a                                       ; $79bd: $02
	add c                                            ; $79be: $81
	add b                                            ; $79bf: $80
	di                                               ; $79c0: $f3
	ld b, $00                                        ; $79c1: $06 $00
	sbc h                                            ; $79c3: $9c
	ld [hl], h                                       ; $79c4: $74
	ld b, h                                          ; $79c5: $44
	ld [hl], h                                       ; $79c6: $74
	ld c, l                                          ; $79c7: $4d
	add b                                            ; $79c8: $80
	sbc [hl]                                         ; $79c9: $9e
	cp a                                             ; $79ca: $bf
	call c, $837f                                    ; $79cb: $dc $7f $83
	rst $38                                          ; $79ce: $ff
	rst SubAFromDE                                          ; $79cf: $df
	and $e4                                          ; $79d0: $e6 $e4
	call nz, $cccd                                   ; $79d2: $c4 $cd $cc
	call c, $f2fa                                    ; $79d5: $dc $fa $f2
	pop hl                                           ; $79d8: $e1
	adc a                                            ; $79d9: $8f
	ld a, a                                          ; $79da: $7f
	rst $38                                          ; $79db: $ff
	rst $38                                          ; $79dc: $ff
	rst SubAFromDE                                          ; $79dd: $df
	ld a, a                                          ; $79de: $7f
	rst GetHLinHL                                          ; $79df: $cf
	ld c, a                                          ; $79e0: $4f
	ld a, [hl]                                       ; $79e1: $7e
	ldh a, [$80]                                     ; $79e2: $f0 $80
	nop                                              ; $79e4: $00
	jr c, @-$02                                      ; $79e5: $38 $fc

	adc $07                                          ; $79e7: $ce $07
	ld c, $de                                        ; $79e9: $0e $de
	add b                                            ; $79eb: $80
	sbc d                                            ; $79ec: $9a
	add c                                            ; $79ed: $81
	add e                                            ; $79ee: $83
	add e                                            ; $79ef: $83
	rlca                                             ; $79f0: $07
	inc c                                            ; $79f1: $0c
	ei                                               ; $79f2: $fb
	db $dd                                           ; $79f3: $dd
	rra                                              ; $79f4: $1f
	rst SubAFromDE                                          ; $79f5: $df
	rrca                                             ; $79f6: $0f
	rst SubAFromDE                                          ; $79f7: $df
	rlca                                             ; $79f8: $07
	sbc [hl]                                         ; $79f9: $9e
	di                                               ; $79fa: $f3
	sbc $f2                                          ; $79fb: $de $f2
	sbc [hl]                                         ; $79fd: $9e
	ld a, [$fcde]                                    ; $79fe: $fa $de $fc
	sub e                                            ; $7a01: $93
	ld b, [hl]                                       ; $7a02: $46
	ld [hl], c                                       ; $7a03: $71
	ret c                                            ; $7a04: $d8

	ldh [rSVBK], a                                   ; $7a05: $e0 $70
	db $fd                                           ; $7a07: $fd
	ld [hl], e                                       ; $7a08: $73
	inc b                                            ; $7a09: $04
	rst AddAOntoHL                                          ; $7a0a: $ef
	ld a, b                                          ; $7a0b: $78
	ld a, b                                          ; $7a0c: $78

jr_026_7a0d:
	jr nc, jr_026_7a0d                               ; $7a0d: $30 $fe

	sbc h                                            ; $7a0f: $9c
	ld [bc], a                                       ; $7a10: $02
	add c                                            ; $7a11: $81
	add b                                            ; $7a12: $80
	di                                               ; $7a13: $f3
	ld b, $00                                        ; $7a14: $06 $00
	sbc h                                            ; $7a16: $9c
	ld [hl], h                                       ; $7a17: $74
	ld b, h                                          ; $7a18: $44
	ld [hl], h                                       ; $7a19: $74
	ld c, d                                          ; $7a1a: $4a
	add b                                            ; $7a1b: $80
	sbc [hl]                                         ; $7a1c: $9e
	cp a                                             ; $7a1d: $bf
	call c, $927f                                    ; $7a1e: $dc $7f $92
	rst $38                                          ; $7a21: $ff
	rst SubAFromDE                                          ; $7a22: $df
	and $e4                                          ; $7a23: $e6 $e4
	call nz, $cccd                                   ; $7a25: $c4 $cd $cc
	call c, $f2fa                                    ; $7a28: $dc $fa $f2
	pop hl                                           ; $7a2b: $e1
	adc a                                            ; $7a2c: $8f
	ld a, a                                          ; $7a2d: $7f
	call c, $9bff                                    ; $7a2e: $dc $ff $9b
	ld c, a                                          ; $7a31: $4f
	ld a, [hl]                                       ; $7a32: $7e
	ldh a, [$80]                                     ; $7a33: $f0 $80
	db $fd                                           ; $7a35: $fd
	sbc l                                            ; $7a36: $9d
	rlca                                             ; $7a37: $07
	ld c, $de                                        ; $7a38: $0e $de
	add b                                            ; $7a3a: $80
	sbc d                                            ; $7a3b: $9a
	add c                                            ; $7a3c: $81
	add e                                            ; $7a3d: $83
	add e                                            ; $7a3e: $83
	rlca                                             ; $7a3f: $07
	inc c                                            ; $7a40: $0c
	ei                                               ; $7a41: $fb
	db $dd                                           ; $7a42: $dd
	rra                                              ; $7a43: $1f
	rst SubAFromDE                                          ; $7a44: $df
	rrca                                             ; $7a45: $0f
	rst SubAFromDE                                          ; $7a46: $df
	rlca                                             ; $7a47: $07
	sbc [hl]                                         ; $7a48: $9e
	di                                               ; $7a49: $f3
	sbc $f2                                          ; $7a4a: $de $f2
	sbc [hl]                                         ; $7a4c: $9e
	ld a, [$fcde]                                    ; $7a4d: $fa $de $fc
	sub e                                            ; $7a50: $93
	rst SubAFromDE                                          ; $7a51: $df
	rst $38                                          ; $7a52: $ff
	sbc $f8                                          ; $7a53: $de $f8
	ld [hl], b                                       ; $7a55: $70
	db $fd                                           ; $7a56: $fd
	ld [hl], e                                       ; $7a57: $73
	inc b                                            ; $7a58: $04
	ldh [$fe], a                                     ; $7a59: $e0 $fe
	ld a, h                                          ; $7a5b: $7c

jr_026_7a5c:
	jr nc, jr_026_7a5c                               ; $7a5c: $30 $fe

	sbc l                                            ; $7a5e: $9d
	ld [bc], a                                       ; $7a5f: $02
	add c                                            ; $7a60: $81
	ld [hl], e                                       ; $7a61: $73
	jp z, $06f7                                      ; $7a62: $ca $f7 $06

	nop                                              ; $7a65: $00
	sbc h                                            ; $7a66: $9c
	ld [hl], h                                       ; $7a67: $74
	ld b, h                                          ; $7a68: $44
	ld [hl], h                                       ; $7a69: $74
	ld c, d                                          ; $7a6a: $4a
	add b                                            ; $7a6b: $80
	sbc [hl]                                         ; $7a6c: $9e
	cp a                                             ; $7a6d: $bf
	call c, $927f                                    ; $7a6e: $dc $7f $92
	rst $38                                          ; $7a71: $ff
	rst SubAFromDE                                          ; $7a72: $df
	and $e4                                          ; $7a73: $e6 $e4
	call nz, $cccd                                   ; $7a75: $c4 $cd $cc
	call c, $f2fa                                    ; $7a78: $dc $fa $f2
	pop hl                                           ; $7a7b: $e1
	adc a                                            ; $7a7c: $8f
	ld a, a                                          ; $7a7d: $7f
	call c, $9bff                                    ; $7a7e: $dc $ff $9b
	ld c, a                                          ; $7a81: $4f
	ld a, [hl]                                       ; $7a82: $7e
	ldh a, [$80]                                     ; $7a83: $f0 $80
	db $fd                                           ; $7a85: $fd
	sbc l                                            ; $7a86: $9d
	rlca                                             ; $7a87: $07
	ld c, $de                                        ; $7a88: $0e $de
	add b                                            ; $7a8a: $80
	sbc d                                            ; $7a8b: $9a
	add c                                            ; $7a8c: $81
	add e                                            ; $7a8d: $83
	add e                                            ; $7a8e: $83
	rlca                                             ; $7a8f: $07
	inc c                                            ; $7a90: $0c
	ei                                               ; $7a91: $fb
	db $dd                                           ; $7a92: $dd
	rra                                              ; $7a93: $1f
	rst SubAFromDE                                          ; $7a94: $df
	rrca                                             ; $7a95: $0f
	rst SubAFromDE                                          ; $7a96: $df
	rlca                                             ; $7a97: $07
	sbc d                                            ; $7a98: $9a
	ldh a, [c]                                       ; $7a99: $f2
	di                                               ; $7a9a: $f3
	ldh a, [c]                                       ; $7a9b: $f2
	ldh a, [c]                                       ; $7a9c: $f2
	ld a, [$fcde]                                    ; $7a9d: $fa $de $fc
	sub e                                            ; $7aa0: $93
	ld a, a                                          ; $7aa1: $7f
	rst AddAOntoHL                                          ; $7aa2: $ef
	cp $dc                                           ; $7aa3: $fe $dc
	ld [hl], b                                       ; $7aa5: $70
	db $fd                                           ; $7aa6: $fd
	ld [hl], e                                       ; $7aa7: $73
	inc b                                            ; $7aa8: $04
	add b                                            ; $7aa9: $80
	ldh a, [$7e]                                     ; $7aaa: $f0 $7e
	inc a                                            ; $7aac: $3c
	cp $9d                                           ; $7aad: $fe $9d
	ld [bc], a                                       ; $7aaf: $02
	add c                                            ; $7ab0: $81
	ld [hl], e                                       ; $7ab1: $73
	jp z, $06f7                                      ; $7ab2: $ca $f7 $06

	nop                                              ; $7ab5: $00
	sbc h                                            ; $7ab6: $9c
	ld [hl], h                                       ; $7ab7: $74
	ld b, h                                          ; $7ab8: $44
	ld [hl], h                                       ; $7ab9: $74
	ld b, d                                          ; $7aba: $42
	add b                                            ; $7abb: $80
	add a                                            ; $7abc: $87
	add a                                            ; $7abd: $87
	inc bc                                           ; $7abe: $03
	ld bc, $f000                                     ; $7abf: $01 $00 $f0
	db $fc                                           ; $7ac2: $fc
	rst $38                                          ; $7ac3: $ff
	db $db                                           ; $7ac4: $db
	ld bc, $0000                                     ; $7ac5: $01 $00 $00
	ld [hl], b                                       ; $7ac8: $70
	ld a, h                                          ; $7ac9: $7c
	rrca                                             ; $7aca: $0f
	inc bc                                           ; $7acb: $03
	inc a                                            ; $7acc: $3c
	db $10                                           ; $7acd: $10
	adc b                                            ; $7ace: $88
	adc b                                            ; $7acf: $88
	call nz, $3264                                   ; $7ad0: $c4 $64 $32
	dec a                                            ; $7ad3: $3d
	db $eb                                           ; $7ad4: $eb
	sbc $ff                                          ; $7ad5: $de $ff
	adc a                                            ; $7ad7: $8f
	ld a, a                                          ; $7ad8: $7f
	ccf                                              ; $7ad9: $3f
	rra                                              ; $7ada: $1f
	rst GetHLinHL                                          ; $7adb: $cf
	rst FarCall                                          ; $7adc: $f7
	rst $38                                          ; $7add: $ff
	rst JumpTable                                          ; $7ade: $c7
	jp $0706                                         ; $7adf: $c3 $06 $07


	dec b                                            ; $7ae2: $05
	dec e                                            ; $7ae3: $1d
	ld b, $7e                                        ; $7ae4: $06 $7e
	ld a, a                                          ; $7ae6: $7f
	inc bc                                           ; $7ae7: $03
	db $dd                                           ; $7ae8: $dd
	rlca                                             ; $7ae9: $07
	adc [hl]                                         ; $7aea: $8e
	inc bc                                           ; $7aeb: $03
	rst $38                                          ; $7aec: $ff
	ld a, h                                          ; $7aed: $7c
	ret nc                                           ; $7aee: $d0

	ld h, b                                          ; $7aef: $60
	ld [hl], $bc                                     ; $7af0: $36 $bc
	ld hl, sp+$60                                    ; $7af2: $f8 $60
	add hl, de                                       ; $7af4: $19
	add b                                            ; $7af5: $80
	ldh [rSVBK], a                                   ; $7af6: $e0 $70
	inc a                                            ; $7af8: $3c
	sbc b                                            ; $7af9: $98
	ldh a, [$c0]                                     ; $7afa: $f0 $c0
	inc b                                            ; $7afc: $04
	nop                                              ; $7afd: $00
	rst SubAFromDE                                          ; $7afe: $df
	ld b, h                                          ; $7aff: $44
	ld b, d                                          ; $7b00: $42
	add b                                            ; $7b01: $80
	add a                                            ; $7b02: $87
	add a                                            ; $7b03: $87
	inc bc                                           ; $7b04: $03
	ld bc, $f000                                     ; $7b05: $01 $00 $f0
	db $fc                                           ; $7b08: $fc
	rst $38                                          ; $7b09: $ff
	rst $38                                          ; $7b0a: $ff
	ld bc, $0000                                     ; $7b0b: $01 $00 $00
	ld [hl], b                                       ; $7b0e: $70
	ld a, h                                          ; $7b0f: $7c
	rrca                                             ; $7b10: $0f
	inc bc                                           ; $7b11: $03
	nop                                              ; $7b12: $00
	db $10                                           ; $7b13: $10
	adc b                                            ; $7b14: $88
	adc b                                            ; $7b15: $88
	call nz, $3264                                   ; $7b16: $c4 $64 $32
	dec a                                            ; $7b19: $3d
	db $eb                                           ; $7b1a: $eb
	sbc $ff                                          ; $7b1b: $de $ff
	adc a                                            ; $7b1d: $8f
	ld a, a                                          ; $7b1e: $7f
	ccf                                              ; $7b1f: $3f
	rra                                              ; $7b20: $1f
	rst GetHLinHL                                          ; $7b21: $cf
	rst FarCall                                          ; $7b22: $f7
	db $db                                           ; $7b23: $db
	rst $38                                          ; $7b24: $ff
	rst JumpTable                                          ; $7b25: $c7
	ld b, $07                                        ; $7b26: $06 $07
	dec b                                            ; $7b28: $05
	dec e                                            ; $7b29: $1d
	ld b, $3c                                        ; $7b2a: $06 $3c
	ld a, [hl]                                       ; $7b2c: $7e
	ld a, a                                          ; $7b2d: $7f
	db $dd                                           ; $7b2e: $dd
	rlca                                             ; $7b2f: $07
	adc [hl]                                         ; $7b30: $8e
	inc bc                                           ; $7b31: $03
	rst $38                                          ; $7b32: $ff
	db $fc                                           ; $7b33: $fc
	ld [hl], b                                       ; $7b34: $70
	ret nz                                           ; $7b35: $c0

	ld h, b                                          ; $7b36: $60
	ld [hl], $f8                                     ; $7b37: $36 $f8
	ld h, b                                          ; $7b39: $60
	add hl, de                                       ; $7b3a: $19
	nop                                              ; $7b3b: $00
	add b                                            ; $7b3c: $80

Jump_026_7b3d:
	ldh [rSVBK], a                                   ; $7b3d: $e0 $70
	inc a                                            ; $7b3f: $3c
	ldh a, [$c0]                                     ; $7b40: $f0 $c0
	inc b                                            ; $7b42: $04
	nop                                              ; $7b43: $00
	rst SubAFromDE                                          ; $7b44: $df
	ld b, h                                          ; $7b45: $44
	ccf                                              ; $7b46: $3f
	nop                                              ; $7b47: $00
	sbc h                                            ; $7b48: $9c
	add a                                            ; $7b49: $87
	ld bc, $bf03                                     ; $7b4a: $01 $03 $bf
	ld bc, $9300                                     ; $7b4d: $01 $00 $93
	ld [hl], b                                       ; $7b50: $70
	ldh a, [$7c]                                     ; $7b51: $f0 $7c
	db $fc                                           ; $7b53: $fc
	rrca                                             ; $7b54: $0f
	rst $38                                          ; $7b55: $ff
	inc bc                                           ; $7b56: $03
	rst $38                                          ; $7b57: $ff
	nop                                              ; $7b58: $00
	db $10                                           ; $7b59: $10
	rst $38                                          ; $7b5a: $ff
	adc b                                            ; $7b5b: $88
	ld a, e                                          ; $7b5c: $7b
	cp $94                                           ; $7b5d: $fe $94
	call nz, $647f                                   ; $7b5f: $c4 $7f $64
	ccf                                              ; $7b62: $3f
	ld [hl-], a                                      ; $7b63: $32
	rra                                              ; $7b64: $1f
	dec a                                            ; $7b65: $3d
	rst GetHLinHL                                          ; $7b66: $cf
	db $eb                                           ; $7b67: $eb
	rst FarCall                                          ; $7b68: $f7
	rst $38                                          ; $7b69: $ff
	cp [hl]                                          ; $7b6a: $be
	rst $38                                          ; $7b6b: $ff
	rst $38                                          ; $7b6c: $ff
	ccf                                              ; $7b6d: $3f
	sub e                                            ; $7b6e: $93
	ld h, b                                          ; $7b6f: $60
	ld a, a                                          ; $7b70: $7f
	ld a, b                                          ; $7b71: $78
	ccf                                              ; $7b72: $3f
	ccf                                              ; $7b73: $3f
	dec de                                           ; $7b74: $1b
	rrca                                             ; $7b75: $0f
	ld b, $03                                        ; $7b76: $06 $03
	rst $38                                          ; $7b78: $ff
	add hl, de                                       ; $7b79: $19
	db $fc                                           ; $7b7a: $fc
	cp h                                             ; $7b7b: $bc
	ldh a, [$e0]                                     ; $7b7c: $f0 $e0
	add b                                            ; $7b7e: $80
	nop                                              ; $7b7f: $00
	ld a, [$fc9c]                                    ; $7b80: $fa $9c $fc
	ldh [$e0], a                                     ; $7b83: $e0 $e0
	inc b                                            ; $7b85: $04
	nop                                              ; $7b86: $00
	rst SubAFromDE                                          ; $7b87: $df
	ld b, h                                          ; $7b88: $44
	ld a, $00                                        ; $7b89: $3e $00
	sbc h                                            ; $7b8b: $9c
	add a                                            ; $7b8c: $87
	ld bc, $bf03                                     ; $7b8d: $01 $03 $bf
	ld bc, $9300                                     ; $7b90: $01 $00 $93
	ld [hl], b                                       ; $7b93: $70
	ldh a, [$7c]                                     ; $7b94: $f0 $7c
	db $fc                                           ; $7b96: $fc
	rrca                                             ; $7b97: $0f
	rst $38                                          ; $7b98: $ff
	inc bc                                           ; $7b99: $03
	rst $38                                          ; $7b9a: $ff
	nop                                              ; $7b9b: $00
	db $10                                           ; $7b9c: $10
	rst $38                                          ; $7b9d: $ff
	adc b                                            ; $7b9e: $88
	ld a, e                                          ; $7b9f: $7b
	cp $94                                           ; $7ba0: $fe $94
	call nz, $647f                                   ; $7ba2: $c4 $7f $64
	ccf                                              ; $7ba5: $3f
	ld [hl-], a                                      ; $7ba6: $32
	rra                                              ; $7ba7: $1f
	dec a                                            ; $7ba8: $3d
	rst GetHLinHL                                          ; $7ba9: $cf
	db $eb                                           ; $7baa: $eb
	rst FarCall                                          ; $7bab: $f7
	rst $38                                          ; $7bac: $ff
	cp l                                             ; $7bad: $bd
	rst $38                                          ; $7bae: $ff
	rst $38                                          ; $7baf: $ff
	ccf                                              ; $7bb0: $3f
	ccf                                              ; $7bb1: $3f
	sub l                                            ; $7bb2: $95
	ld h, b                                          ; $7bb3: $60
	ld a, l                                          ; $7bb4: $7d
	ld a, [hl]                                       ; $7bb5: $7e
	ccf                                              ; $7bb6: $3f
	rra                                              ; $7bb7: $1f
	rlca                                             ; $7bb8: $07
	inc bc                                           ; $7bb9: $03
	rst $38                                          ; $7bba: $ff
	add hl, de                                       ; $7bbb: $19
	db $fc                                           ; $7bbc: $fc
	cp h                                             ; $7bbd: $bc
	ldh a, [$e0]                                     ; $7bbe: $f0 $e0
	add b                                            ; $7bc0: $80
	nop                                              ; $7bc1: $00
	and b                                            ; $7bc2: $a0
	sbc h                                            ; $7bc3: $9c
	ret nz                                           ; $7bc4: $c0

	ld a, [$04fc]                                    ; $7bc5: $fa $fc $04
	nop                                              ; $7bc8: $00
	rst SubAFromDE                                          ; $7bc9: $df
	ld b, h                                          ; $7bca: $44
	ld b, d                                          ; $7bcb: $42
	add b                                            ; $7bcc: $80
	add a                                            ; $7bcd: $87
	add a                                            ; $7bce: $87
	inc bc                                           ; $7bcf: $03
	ld bc, $fc00                                     ; $7bd0: $01 $00 $fc
	rst $38                                          ; $7bd3: $ff
	rst $38                                          ; $7bd4: $ff
	db $dd                                           ; $7bd5: $dd
	ld bc, $0000                                     ; $7bd6: $01 $00 $00
	ld a, h                                          ; $7bd9: $7c
	ld a, a                                          ; $7bda: $7f
	inc bc                                           ; $7bdb: $03
	nop                                              ; $7bdc: $00
	ld a, $10                                        ; $7bdd: $3e $10
	adc b                                            ; $7bdf: $88
	adc b                                            ; $7be0: $88
	call nz, $3264                                   ; $7be1: $c4 $64 $32
	call $def3                                       ; $7be4: $cd $f3 $de
	rst $38                                          ; $7be7: $ff
	adc a                                            ; $7be8: $8f
	ld a, a                                          ; $7be9: $7f
	ccf                                              ; $7bea: $3f
	rst SubAFromDE                                          ; $7beb: $df
	rst $38                                          ; $7bec: $ff
	ccf                                              ; $7bed: $3f
	rst $38                                          ; $7bee: $ff
	rst JumpTable                                          ; $7bef: $c7
	jp $0706                                         ; $7bf0: $c3 $06 $07


	dec b                                            ; $7bf3: $05
	dec e                                            ; $7bf4: $1d
	ld b, $7f                                        ; $7bf5: $06 $7f
	ld a, a                                          ; $7bf7: $7f
	inc bc                                           ; $7bf8: $03
	db $dd                                           ; $7bf9: $dd
	rlca                                             ; $7bfa: $07
	adc [hl]                                         ; $7bfb: $8e
	inc bc                                           ; $7bfc: $03
	ld a, a                                          ; $7bfd: $7f
	db $fc                                           ; $7bfe: $fc
	ld [hl], b                                       ; $7bff: $70
	jr nc, jr_026_7c20                               ; $7c00: $30 $1e

	sbc h                                            ; $7c02: $9c
	ld hl, sp+$60                                    ; $7c03: $f8 $60
	adc c                                            ; $7c05: $89
	ret nz                                           ; $7c06: $c0

	ldh [$30], a                                     ; $7c07: $e0 $30
	inc e                                            ; $7c09: $1c
	cp b                                             ; $7c0a: $b8
	ldh a, [$c0]                                     ; $7c0b: $f0 $c0
	inc b                                            ; $7c0d: $04
	nop                                              ; $7c0e: $00
	rst SubAFromDE                                          ; $7c0f: $df
	ld b, h                                          ; $7c10: $44
	ld b, d                                          ; $7c11: $42
	add b                                            ; $7c12: $80
	sbc d                                            ; $7c13: $9a
	add a                                            ; $7c14: $87
	inc bc                                           ; $7c15: $03
	ld bc, $fc00                                     ; $7c16: $01 $00 $fc
	sbc $ff                                          ; $7c19: $de $ff
	ld a, a                                          ; $7c1b: $7f
	ld a, [$0091]                                    ; $7c1c: $fa $91 $00
	ld a, h                                          ; $7c1f: $7c

jr_026_7c20:
	ld a, a                                          ; $7c20: $7f
	inc bc                                           ; $7c21: $03
	nop                                              ; $7c22: $00
	nop                                              ; $7c23: $00
	db $10                                           ; $7c24: $10
	adc b                                            ; $7c25: $88
	adc b                                            ; $7c26: $88
	call nz, $3264                                   ; $7c27: $c4 $64 $32
	call $def3                                       ; $7c2a: $cd $f3 $de
	rst $38                                          ; $7c2d: $ff
	adc a                                            ; $7c2e: $8f
	ld a, a                                          ; $7c2f: $7f
	ccf                                              ; $7c30: $3f
	rst SubAFromDE                                          ; $7c31: $df
	rst $38                                          ; $7c32: $ff
	ccf                                              ; $7c33: $3f
	db $db                                           ; $7c34: $db
	rst $38                                          ; $7c35: $ff
	rst JumpTable                                          ; $7c36: $c7
	ld b, $07                                        ; $7c37: $06 $07
	dec b                                            ; $7c39: $05
	dec e                                            ; $7c3a: $1d
	ld b, $3c                                        ; $7c3b: $06 $3c
	ld a, [hl]                                       ; $7c3d: $7e
	ld a, a                                          ; $7c3e: $7f
	db $dd                                           ; $7c3f: $dd
	rlca                                             ; $7c40: $07
	adc [hl]                                         ; $7c41: $8e
	inc bc                                           ; $7c42: $03
	rst $38                                          ; $7c43: $ff
	db $fc                                           ; $7c44: $fc
	ld [hl], b                                       ; $7c45: $70
	ret nz                                           ; $7c46: $c0

	ld h, b                                          ; $7c47: $60
	ld [hl], $f8                                     ; $7c48: $36 $f8
	ld h, b                                          ; $7c4a: $60
	add hl, bc                                       ; $7c4b: $09
	nop                                              ; $7c4c: $00
	add b                                            ; $7c4d: $80
	ldh [rSVBK], a                                   ; $7c4e: $e0 $70
	inc a                                            ; $7c50: $3c
	ldh a, [$c0]                                     ; $7c51: $f0 $c0
	inc b                                            ; $7c53: $04
	nop                                              ; $7c54: $00
	rst SubAFromDE                                          ; $7c55: $df
	ld b, h                                          ; $7c56: $44
	ccf                                              ; $7c57: $3f
	nop                                              ; $7c58: $00
	sbc h                                            ; $7c59: $9c
	add a                                            ; $7c5a: $87
	ld bc, $bf03                                     ; $7c5b: $01 $03 $bf
	ld bc, $9900                                     ; $7c5e: $01 $00 $99
	ld a, h                                          ; $7c61: $7c
	db $fc                                           ; $7c62: $fc
	ld a, a                                          ; $7c63: $7f
	rst $38                                          ; $7c64: $ff
	inc bc                                           ; $7c65: $03
	rst $38                                          ; $7c66: $ff
	cp a                                             ; $7c67: $bf
	rst $38                                          ; $7c68: $ff
	db $10                                           ; $7c69: $10
	sbc l                                            ; $7c6a: $9d
	rst $38                                          ; $7c6b: $ff
	adc b                                            ; $7c6c: $88
	ld a, e                                          ; $7c6d: $7b
	cp $95                                           ; $7c6e: $fe $95
	call nz, $647f                                   ; $7c70: $c4 $7f $64
	ccf                                              ; $7c73: $3f
	ld [hl-], a                                      ; $7c74: $32
	rst SubAFromDE                                          ; $7c75: $df
	call $f3ff                                       ; $7c76: $cd $ff $f3
	ccf                                              ; $7c79: $3f
	ld [hl], a                                       ; $7c7a: $77
	db $ec                                           ; $7c7b: $ec
	ld a, a                                          ; $7c7c: $7f
	cp $92                                           ; $7c7d: $fe $92
	ccf                                              ; $7c7f: $3f
	ld h, b                                          ; $7c80: $60
	ld a, a                                          ; $7c81: $7f
	ld a, b                                          ; $7c82: $78
	ccf                                              ; $7c83: $3f
	ccf                                              ; $7c84: $3f
	dec de                                           ; $7c85: $1b
	rrca                                             ; $7c86: $0f
	ld b, $03                                        ; $7c87: $06 $03
	rst $38                                          ; $7c89: $ff
	add hl, bc                                       ; $7c8a: $09
	db $fc                                           ; $7c8b: $fc
	cp h                                             ; $7c8c: $bc
	ldh a, [$e0]                                     ; $7c8d: $f0 $e0
	add b                                            ; $7c8f: $80
	nop                                              ; $7c90: $00
	ld a, [$fc9c]                                    ; $7c91: $fa $9c $fc
	ldh [$e0], a                                     ; $7c94: $e0 $e0
	inc b                                            ; $7c96: $04
	nop                                              ; $7c97: $00
	rst SubAFromDE                                          ; $7c98: $df
	ld b, h                                          ; $7c99: $44
	ld a, $80                                        ; $7c9a: $3e $80
	sbc d                                            ; $7c9c: $9a
	add a                                            ; $7c9d: $87
	inc bc                                           ; $7c9e: $03
	ld bc, $fc00                                     ; $7c9f: $01 $00 $fc
	sbc $ff                                          ; $7ca2: $de $ff
	ld a, a                                          ; $7ca4: $7f
	ld a, [$0091]                                    ; $7ca5: $fa $91 $00
	ld a, h                                          ; $7ca8: $7c
	ld a, a                                          ; $7ca9: $7f
	inc bc                                           ; $7caa: $03
	nop                                              ; $7cab: $00
	nop                                              ; $7cac: $00
	db $10                                           ; $7cad: $10
	adc b                                            ; $7cae: $88
	adc b                                            ; $7caf: $88
	call nz, $3264                                   ; $7cb0: $c4 $64 $32
	call $def3                                       ; $7cb3: $cd $f3 $de
	rst $38                                          ; $7cb6: $ff
	sbc d                                            ; $7cb7: $9a
	ld a, a                                          ; $7cb8: $7f
	ccf                                              ; $7cb9: $3f
	rst SubAFromDE                                          ; $7cba: $df
	rst $38                                          ; $7cbb: $ff
	ccf                                              ; $7cbc: $3f
	sbc $ff                                          ; $7cbd: $de $ff
	rst SubAFromDE                                          ; $7cbf: $df
	ccf                                              ; $7cc0: $3f
	sbc h                                            ; $7cc1: $9c
	ld a, l                                          ; $7cc2: $7d
	ccf                                              ; $7cc3: $3f
	rlca                                             ; $7cc4: $07
	db $fd                                           ; $7cc5: $fd
	sub d                                            ; $7cc6: $92
	ld h, b                                          ; $7cc7: $60
	ld a, [hl]                                       ; $7cc8: $7e
	rra                                              ; $7cc9: $1f
	inc bc                                           ; $7cca: $03
	rst $38                                          ; $7ccb: $ff
	db $fc                                           ; $7ccc: $fc
	ldh a, [$e0]                                     ; $7ccd: $f0 $e0
	add b                                            ; $7ccf: $80
	nop                                              ; $7cd0: $00
	and b                                            ; $7cd1: $a0
	ld a, [$fc09]                                    ; $7cd2: $fa $09 $fc
	sbc l                                            ; $7cd5: $9d
	ret nz                                           ; $7cd6: $c0

	db $fc                                           ; $7cd7: $fc
	inc b                                            ; $7cd8: $04
	nop                                              ; $7cd9: $00
	rst SubAFromDE                                          ; $7cda: $df
	ld b, h                                          ; $7cdb: $44
	ld b, h                                          ; $7cdc: $44
	nop                                              ; $7cdd: $00
	adc h                                            ; $7cde: $8c
	add a                                            ; $7cdf: $87
	ld bc, $0003                                     ; $7ce0: $01 $03 $00
	ld bc, $0000                                     ; $7ce3: $01 $00 $00
	ld [hl], b                                       ; $7ce6: $70
	ldh a, [$7c]                                     ; $7ce7: $f0 $7c
	db $fc                                           ; $7ce9: $fc
	rrca                                             ; $7cea: $0f
	rst $38                                          ; $7ceb: $ff
	inc bc                                           ; $7cec: $03
	db $db                                           ; $7ced: $db
	inc a                                            ; $7cee: $3c
	db $10                                           ; $7cef: $10
	rst $38                                          ; $7cf0: $ff
	adc b                                            ; $7cf1: $88
	ld a, e                                          ; $7cf2: $7b
	cp $80                                           ; $7cf3: $fe $80
	call nz, $647f                                   ; $7cf5: $c4 $7f $64
	ccf                                              ; $7cf8: $3f
	ld [hl-], a                                      ; $7cf9: $32
	rra                                              ; $7cfa: $1f
	dec a                                            ; $7cfb: $3d
	rst GetHLinHL                                          ; $7cfc: $cf
	db $eb                                           ; $7cfd: $eb
	rst FarCall                                          ; $7cfe: $f7
	rst $38                                          ; $7cff: $ff
	ld a, [hl]                                       ; $7d00: $7e
	di                                               ; $7d01: $f3
	ld a, a                                          ; $7d02: $7f
	reti                                             ; $7d03: $d9


	dec de                                           ; $7d04: $1b
	jr jr_026_7d23                                   ; $7d05: $18 $1c

	inc c                                            ; $7d07: $0c
	ld e, $17                                        ; $7d08: $1e $17
	rra                                              ; $7d0a: $1f
	dec de                                           ; $7d0b: $1b
	rrca                                             ; $7d0c: $0f
	rlca                                             ; $7d0d: $07
	nop                                              ; $7d0e: $00
	rst $38                                          ; $7d0f: $ff
	add hl, de                                       ; $7d10: $19
	ld a, h                                          ; $7d11: $7c
	add b                                            ; $7d12: $80
	ret nc                                           ; $7d13: $d0

	rst SubAFromDE                                          ; $7d14: $df
	ldh [hDisp1_WX], a                                     ; $7d15: $e0 $96
	ldh a, [$b6]                                     ; $7d17: $f0 $b6
	cp h                                             ; $7d19: $bc
	inc e                                            ; $7d1a: $1c
	jr jr_026_7d35                                   ; $7d1b: $18 $18

	db $10                                           ; $7d1d: $10
	ldh [rP1], a                                     ; $7d1e: $e0 $00
	inc b                                            ; $7d20: $04
	nop                                              ; $7d21: $00
	rst SubAFromDE                                          ; $7d22: $df

jr_026_7d23:
	ld b, h                                          ; $7d23: $44
	ld b, h                                          ; $7d24: $44
	nop                                              ; $7d25: $00
	adc h                                            ; $7d26: $8c
	add a                                            ; $7d27: $87
	ld bc, $0003                                     ; $7d28: $01 $03 $00
	ld bc, $0000                                     ; $7d2b: $01 $00 $00
	ld [hl], b                                       ; $7d2e: $70
	ldh a, [$7c]                                     ; $7d2f: $f0 $7c
	db $fc                                           ; $7d31: $fc
	rrca                                             ; $7d32: $0f
	rst $38                                          ; $7d33: $ff
	inc bc                                           ; $7d34: $03

jr_026_7d35:
	rst $38                                          ; $7d35: $ff
	nop                                              ; $7d36: $00
	db $10                                           ; $7d37: $10
	rst $38                                          ; $7d38: $ff
	adc b                                            ; $7d39: $88
	ld a, e                                          ; $7d3a: $7b
	cp $80                                           ; $7d3b: $fe $80
	call nz, $647f                                   ; $7d3d: $c4 $7f $64
	ccf                                              ; $7d40: $3f
	ld [hl-], a                                      ; $7d41: $32
	rra                                              ; $7d42: $1f
	dec a                                            ; $7d43: $3d
	rst GetHLinHL                                          ; $7d44: $cf
	db $eb                                           ; $7d45: $eb
	rst FarCall                                          ; $7d46: $f7
	db $db                                           ; $7d47: $db
	inc a                                            ; $7d48: $3c
	rst $38                                          ; $7d49: $ff
	ld a, [hl]                                       ; $7d4a: $7e
	di                                               ; $7d4b: $f3
	ld a, a                                          ; $7d4c: $7f
	add hl, de                                       ; $7d4d: $19
	add hl, de                                       ; $7d4e: $19
	inc c                                            ; $7d4f: $0c
	ld e, $17                                        ; $7d50: $1e $17
	rra                                              ; $7d52: $1f
	dec de                                           ; $7d53: $1b
	rrca                                             ; $7d54: $0f
	rlca                                             ; $7d55: $07
	nop                                              ; $7d56: $00
	rst $38                                          ; $7d57: $ff
	add hl, de                                       ; $7d58: $19
	db $fc                                           ; $7d59: $fc
	nop                                              ; $7d5a: $00
	ld [hl], b                                       ; $7d5b: $70
	sub h                                            ; $7d5c: $94
	add b                                            ; $7d5d: $80
	ret nz                                           ; $7d5e: $c0

	ldh [$e0], a                                     ; $7d5f: $e0 $e0
	ldh a, [$be]                                     ; $7d61: $f0 $be
	cp h                                             ; $7d63: $bc
	jr jr_026_7d76                                   ; $7d64: $18 $10

	ldh [rP1], a                                     ; $7d66: $e0 $00
	inc b                                            ; $7d68: $04
	nop                                              ; $7d69: $00
	rst SubAFromDE                                          ; $7d6a: $df
	ld b, h                                          ; $7d6b: $44
	ccf                                              ; $7d6c: $3f
	nop                                              ; $7d6d: $00
	sbc h                                            ; $7d6e: $9c
	add a                                            ; $7d6f: $87
	ld bc, $bf03                                     ; $7d70: $01 $03 $bf
	ld bc, $9300                                     ; $7d73: $01 $00 $93

jr_026_7d76:
	ld [hl], b                                       ; $7d76: $70
	ldh a, [$7c]                                     ; $7d77: $f0 $7c
	db $fc                                           ; $7d79: $fc
	rrca                                             ; $7d7a: $0f
	rst $38                                          ; $7d7b: $ff
	inc bc                                           ; $7d7c: $03
	rst $38                                          ; $7d7d: $ff
	nop                                              ; $7d7e: $00
	db $10                                           ; $7d7f: $10
	rst $38                                          ; $7d80: $ff
	adc b                                            ; $7d81: $88
	ld a, e                                          ; $7d82: $7b
	cp $94                                           ; $7d83: $fe $94
	call nz, $647f                                   ; $7d85: $c4 $7f $64
	ccf                                              ; $7d88: $3f
	ld [hl-], a                                      ; $7d89: $32
	rra                                              ; $7d8a: $1f
	dec a                                            ; $7d8b: $3d
	rst GetHLinHL                                          ; $7d8c: $cf
	db $eb                                           ; $7d8d: $eb
	rst FarCall                                          ; $7d8e: $f7
	rst $38                                          ; $7d8f: $ff
	cp [hl]                                          ; $7d90: $be
	rst $38                                          ; $7d91: $ff
	rst $38                                          ; $7d92: $ff
	ccf                                              ; $7d93: $3f
	sub e                                            ; $7d94: $93
	ld h, b                                          ; $7d95: $60
	ld a, a                                          ; $7d96: $7f
	ld a, b                                          ; $7d97: $78
	ccf                                              ; $7d98: $3f
	ccf                                              ; $7d99: $3f
	inc de                                           ; $7d9a: $13
	rra                                              ; $7d9b: $1f
	rlca                                             ; $7d9c: $07
	nop                                              ; $7d9d: $00
	rst $38                                          ; $7d9e: $ff
	add hl, de                                       ; $7d9f: $19
	db $fc                                           ; $7da0: $fc
	cp h                                             ; $7da1: $bc
	ldh a, [$e0]                                     ; $7da2: $f0 $e0
	add b                                            ; $7da4: $80
	nop                                              ; $7da5: $00
	ld a, [$fc9c]                                    ; $7da6: $fa $9c $fc
	ldh [rP1], a                                     ; $7da9: $e0 $00
	inc b                                            ; $7dab: $04
	nop                                              ; $7dac: $00
	rst SubAFromDE                                          ; $7dad: $df
	ld b, h                                          ; $7dae: $44
	ld a, $00                                        ; $7daf: $3e $00
	sbc h                                            ; $7db1: $9c
	add a                                            ; $7db2: $87
	ld bc, $bf03                                     ; $7db3: $01 $03 $bf
	ld bc, $9300                                     ; $7db6: $01 $00 $93
	ld [hl], b                                       ; $7db9: $70
	ldh a, [$7c]                                     ; $7dba: $f0 $7c
	db $fc                                           ; $7dbc: $fc
	rrca                                             ; $7dbd: $0f
	rst $38                                          ; $7dbe: $ff
	inc bc                                           ; $7dbf: $03
	rst $38                                          ; $7dc0: $ff
	nop                                              ; $7dc1: $00
	db $10                                           ; $7dc2: $10
	rst $38                                          ; $7dc3: $ff
	adc b                                            ; $7dc4: $88
	ld a, e                                          ; $7dc5: $7b
	cp $94                                           ; $7dc6: $fe $94
	call nz, $647f                                   ; $7dc8: $c4 $7f $64
	ccf                                              ; $7dcb: $3f
	ld [hl-], a                                      ; $7dcc: $32
	rra                                              ; $7dcd: $1f
	dec a                                            ; $7dce: $3d
	rst GetHLinHL                                          ; $7dcf: $cf
	db $eb                                           ; $7dd0: $eb
	rst FarCall                                          ; $7dd1: $f7
	rst $38                                          ; $7dd2: $ff
	cp l                                             ; $7dd3: $bd
	rst $38                                          ; $7dd4: $ff
	rst $38                                          ; $7dd5: $ff
	ccf                                              ; $7dd6: $3f
	ccf                                              ; $7dd7: $3f
	sub l                                            ; $7dd8: $95
	ld h, b                                          ; $7dd9: $60
	ld a, l                                          ; $7dda: $7d
	ld a, [hl]                                       ; $7ddb: $7e
	ccf                                              ; $7ddc: $3f
	rra                                              ; $7ddd: $1f
	rlca                                             ; $7dde: $07
	inc bc                                           ; $7ddf: $03
	rst $38                                          ; $7de0: $ff
	add hl, de                                       ; $7de1: $19
	db $fc                                           ; $7de2: $fc
	cp h                                             ; $7de3: $bc
	ldh a, [$e0]                                     ; $7de4: $f0 $e0
	add b                                            ; $7de6: $80
	nop                                              ; $7de7: $00
	and b                                            ; $7de8: $a0
	sbc h                                            ; $7de9: $9c
	ret nz                                           ; $7dea: $c0

	ld a, [$04fc]                                    ; $7deb: $fa $fc $04
	nop                                              ; $7dee: $00
	rst SubAFromDE                                          ; $7def: $df
	ld b, h                                          ; $7df0: $44
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

Jump_026_7e7f:
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
	rst $38                                          ; $7f80: $ff
	rst $38                                          ; $7f81: $ff

Jump_026_7f82:
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

Call_026_7fff:
	rst $38                                          ; $7fff: $ff
