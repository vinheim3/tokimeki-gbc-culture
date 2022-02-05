; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $040", ROMX[$4000], BANK[$40]

	rst FarCall                                          ; $4000: $f7
	rst $38                                          ; $4001: $ff
	dec a                                            ; $4002: $3d
	rst $38                                          ; $4003: $ff
	sbc l                                            ; $4004: $9d
	ld a, l                                          ; $4005: $7d
	rst $38                                          ; $4006: $ff
	db $ed                                           ; $4007: $ed
	rst AddAOntoHL                                          ; $4008: $ef
	ld a, b                                          ; $4009: $78
	ld [hl], h                                       ; $400a: $74
	sbc b                                            ; $400b: $98
	ld a, l                                          ; $400c: $7d
	inc sp                                           ; $400d: $33
	ld a, h                                          ; $400e: $7c
	rra                                              ; $400f: $1f
	ld [hl], a                                       ; $4010: $77
	cpl                                              ; $4011: $2f
	dec de                                           ; $4012: $1b
	sbc $3f                                          ; $4013: $de $3f
	ld a, [hl]                                       ; $4015: $7e
	add $9a                                          ; $4016: $c6 $9a
	inc a                                            ; $4018: $3c
	ld a, h                                          ; $4019: $7c
	ld hl, $7339                                     ; $401a: $21 $39 $73
	ld a, b                                          ; $401d: $78
	ld b, a                                          ; $401e: $47
	ld l, d                                          ; $401f: $6a
	rst SubAFromHL                                          ; $4020: $d7
	sbc h                                            ; $4021: $9c
	db $fc                                           ; $4022: $fc
	ld a, a                                          ; $4023: $7f
	ld a, a                                          ; $4024: $7f
	halt                                             ; $4025: $76
	sbc $7e                                          ; $4026: $de $7e
	ldh a, [c]                                       ; $4028: $f2
	sbc e                                            ; $4029: $9b
	db $ed                                           ; $402a: $ed
	di                                               ; $402b: $f3
	sbc a                                            ; $402c: $9f
	rst SubAFromDE                                          ; $402d: $df
	ld a, d                                          ; $402e: $7a
	xor c                                            ; $402f: $a9
	ld l, d                                          ; $4030: $6a
	xor b                                            ; $4031: $a8
	sbc [hl]                                         ; $4032: $9e
	ei                                               ; $4033: $fb
	ld a, e                                          ; $4034: $7b
	ld hl, sp-$62                                    ; $4035: $f8 $9e
	ld sp, hl                                        ; $4037: $f9
	ld [hl], c                                       ; $4038: $71
	ld a, b                                          ; $4039: $78
	ld l, e                                          ; $403a: $6b
	ret c                                            ; $403b: $d8

	sbc [hl]                                         ; $403c: $9e
	inc bc                                           ; $403d: $03
	ld [hl], h                                       ; $403e: $74
	add d                                            ; $403f: $82
	ld a, [hl]                                       ; $4040: $7e
	ld e, [hl]                                       ; $4041: $5e
	ld e, [hl]                                       ; $4042: $5e
	ei                                               ; $4043: $fb
	sbc [hl]                                         ; $4044: $9e
	rrca                                             ; $4045: $0f
	ld [hl], h                                       ; $4046: $74
	ld a, [$fe63]                                    ; $4047: $fa $63 $fe
	halt                                             ; $404a: $76
	ld l, $56                                        ; $404b: $2e $56
	or c                                             ; $404d: $b1
	rst SubAFromDE                                          ; $404e: $df
	rst $38                                          ; $404f: $ff
	ld l, d                                          ; $4050: $6a
	rst FarCall                                          ; $4051: $f7
	dec hl                                           ; $4052: $2b
	cp $99                                           ; $4053: $fe $99
	daa                                              ; $4055: $27
	ret c                                            ; $4056: $d8

	dec bc                                           ; $4057: $0b
	db $f4                                           ; $4058: $f4
	ld b, b                                          ; $4059: $40
	cp a                                             ; $405a: $bf
	ld e, e                                          ; $405b: $5b
	ret nc                                           ; $405c: $d0

	ld a, e                                          ; $405d: $7b
	ei                                               ; $405e: $fb
	sbc b                                            ; $405f: $98
	ccf                                              ; $4060: $3f
	ret nz                                           ; $4061: $c0

	rlca                                             ; $4062: $07
	ld hl, sp+$03                                    ; $4063: $f8 $03
	db $fc                                           ; $4065: $fc
	inc bc                                           ; $4066: $03
	halt                                             ; $4067: $76
	pop de                                           ; $4068: $d1
	ld d, c                                          ; $4069: $51
	ld c, [hl]                                       ; $406a: $4e
	ld a, [hl]                                       ; $406b: $7e
	ld a, d                                          ; $406c: $7a
	ld a, l                                          ; $406d: $7d
	ld e, [hl]                                       ; $406e: $5e
	sbc [hl]                                         ; $406f: $9e
	ldh [rWX], a                                     ; $4070: $e0 $4b
	cp a                                             ; $4072: $bf
	rst $38                                          ; $4073: $ff
	sbc h                                            ; $4074: $9c
	ld [$e800], sp                                   ; $4075: $08 $00 $e8
	ld a, d                                          ; $4078: $7a
	and [hl]                                         ; $4079: $a6
	sbc h                                            ; $407a: $9c
	ld [$d000], a                                    ; $407b: $ea $00 $d0
	ld a, c                                          ; $407e: $79
	ld e, d                                          ; $407f: $5a
	ld l, h                                          ; $4080: $6c
	ld [hl], c                                       ; $4081: $71
	ld a, [hl]                                       ; $4082: $7e
	sub $7f                                          ; $4083: $d6 $7f
	cp $6c                                           ; $4085: $fe $6c
	ld l, d                                          ; $4087: $6a
	ld a, a                                          ; $4088: $7f
	ldh a, [$6e]                                     ; $4089: $f0 $6e
	cp h                                             ; $408b: $bc
	ld a, a                                          ; $408c: $7f
	ld c, e                                          ; $408d: $4b
	ld a, a                                          ; $408e: $7f
	cp $9c                                           ; $408f: $fe $9c
	ld [bc], a                                       ; $4091: $02
	nop                                              ; $4092: $00
	db $10                                           ; $4093: $10
	ld [hl], e                                       ; $4094: $73
	and h                                            ; $4095: $a4
	sbc d                                            ; $4096: $9a
	ld de, $000e                                     ; $4097: $11 $0e $00
	nop                                              ; $409a: $00
	ld [hl+], a                                      ; $409b: $22
	ld a, c                                          ; $409c: $79
	inc e                                            ; $409d: $1c
	sbc [hl]                                         ; $409e: $9e
	ccf                                              ; $409f: $3f
	ld l, e                                          ; $40a0: $6b
	ret nz                                           ; $40a1: $c0

	ld a, a                                          ; $40a2: $7f
	xor $9c                                          ; $40a3: $ee $9c
	rst FarCall                                          ; $40a5: $f7
	rrca                                             ; $40a6: $0f
	rlca                                             ; $40a7: $07
	ld a, d                                          ; $40a8: $7a
	ld h, d                                          ; $40a9: $62
	ld [hl], h                                       ; $40aa: $74
	ret c                                            ; $40ab: $d8

	ld a, e                                          ; $40ac: $7b
	xor $9a                                          ; $40ad: $ee $9a
	ld a, $07                                        ; $40af: $3e $07
	ld bc, $f3ef                                     ; $40b1: $01 $ef $f3
	ld a, d                                          ; $40b4: $7a
	cp l                                             ; $40b5: $bd
	sbc l                                            ; $40b6: $9d
	ccf                                              ; $40b7: $3f
	push hl                                          ; $40b8: $e5
	ld l, a                                          ; $40b9: $6f
	sbc [hl]                                         ; $40ba: $9e
	sbc [hl]                                         ; $40bb: $9e
	ld a, e                                          ; $40bc: $7b
	ld e, l                                          ; $40bd: $5d
	ld [hl], h                                       ; $40be: $74
	sub [hl]                                         ; $40bf: $96
	swap a                                           ; $40c0: $cb $37
	ei                                               ; $40c2: $fb
	ld bc, $3fcf                                     ; $40c3: $01 $cf $3f
	sbc a                                            ; $40c6: $9f
	ld a, a                                          ; $40c7: $7f
	cp a                                             ; $40c8: $bf
	ld a, e                                          ; $40c9: $7b
	cp $7b                                           ; $40ca: $fe $7b
	rst SubAFromDE                                          ; $40cc: $df
	sbc e                                            ; $40cd: $9b
	rst $38                                          ; $40ce: $ff
	sbc a                                            ; $40cf: $9f
	ld a, a                                          ; $40d0: $7f
	ret nz                                           ; $40d1: $c0

	ld [hl], d                                       ; $40d2: $72
	sub b                                            ; $40d3: $90
	db $db                                           ; $40d4: $db
	rst $38                                          ; $40d5: $ff
	sbc d                                            ; $40d6: $9a
	db $eb                                           ; $40d7: $eb
	db $e3                                           ; $40d8: $e3
	rla                                              ; $40d9: $17
	ccf                                              ; $40da: $3f
	cp a                                             ; $40db: $bf
	ld e, e                                          ; $40dc: $5b
	ldh a, [$cb]                                     ; $40dd: $f0 $cb
	rst $38                                          ; $40df: $ff
	ld d, $f4                                        ; $40e0: $16 $f4
	inc bc                                           ; $40e2: $03
	cp $03                                           ; $40e3: $fe $03
	cp $03                                           ; $40e5: $fe $03
	cp $7f                                           ; $40e7: $fe $7f
	daa                                              ; $40e9: $27
	sbc l                                            ; $40ea: $9d
	add b                                            ; $40eb: $80
	rlca                                             ; $40ec: $07
	halt                                             ; $40ed: $76
	reti                                             ; $40ee: $d9


	ld d, d                                          ; $40ef: $52
	sub b                                            ; $40f0: $90
	sbc l                                            ; $40f1: $9d
	ld l, l                                          ; $40f2: $6d
	sub d                                            ; $40f3: $92
	ld c, a                                          ; $40f4: $4f
	ldh a, [$7f]                                     ; $40f5: $f0 $7f
	cp $9a                                           ; $40f7: $fe $9a
	ld a, $c1                                        ; $40f9: $3e $c1
	jr @-$17                                         ; $40fb: $18 $e7

	ld bc, $ed76                                     ; $40fd: $01 $76 $ed
	ld [hl], e                                       ; $4100: $73
	ldh a, [$99]                                     ; $4101: $f0 $99
	cp $01                                           ; $4103: $fe $01
	inc c                                            ; $4105: $0c
	di                                               ; $4106: $f3
	ld [$5ff7], sp                                   ; $4107: $08 $f7 $5f
	ldh [$9b], a                                     ; $410a: $e0 $9b
	rst AddAOntoHL                                          ; $410c: $ef
	db $10                                           ; $410d: $10
	ld b, $f9                                        ; $410e: $06 $f9
	ld d, a                                          ; $4110: $57
	ret nc                                           ; $4111: $d0

	sbc l                                            ; $4112: $9d
	rst FarCall                                          ; $4113: $f7
	ld [$d46f], sp                                   ; $4114: $08 $6f $d4
	ld l, a                                          ; $4117: $6f
	ldh a, [hDisp1_WY]                                     ; $4118: $f0 $95
	cp a                                             ; $411a: $bf
	ld b, b                                          ; $411b: $40
	sub a                                            ; $411c: $97
	ld l, b                                          ; $411d: $68
	di                                               ; $411e: $f3
	inc c                                            ; $411f: $0c
	ld b, l                                          ; $4120: $45
	cp d                                             ; $4121: $ba
	dec c                                            ; $4122: $0d
	ldh a, [c]                                       ; $4123: $f2
	halt                                             ; $4124: $76
	ld a, [hl-]                                      ; $4125: $3a
	ld l, a                                          ; $4126: $6f
	ret nz                                           ; $4127: $c0

	ld e, a                                          ; $4128: $5f
	adc a                                            ; $4129: $8f
	sbc h                                            ; $412a: $9c
	rst SubAFromHL                                          ; $412b: $d7
	rrca                                             ; $412c: $0f
	ld e, a                                          ; $412d: $5f
	ld a, d                                          ; $412e: $7a
	call c, $bf9b                                    ; $412f: $dc $9b $bf
	rst JumpTable                                          ; $4132: $c7
	di                                               ; $4133: $f3
	inc bc                                           ; $4134: $03
	ld a, c                                          ; $4135: $79
	push de                                          ; $4136: $d5
	ld [hl], a                                       ; $4137: $77
	sub [hl]                                         ; $4138: $96
	sbc e                                            ; $4139: $9b
	rst $38                                          ; $413a: $ff
	ld a, [hl]                                       ; $413b: $7e
	rst $38                                          ; $413c: $ff
	cp a                                             ; $413d: $bf
	ld a, b                                          ; $413e: $78
	add hl, sp                                       ; $413f: $39
	sbc [hl]                                         ; $4140: $9e
	or a                                             ; $4141: $b7
	ld a, d                                          ; $4142: $7a
	xor [hl]                                         ; $4143: $ae
	sbc e                                            ; $4144: $9b
	add $3f                                          ; $4145: $c6 $3f
	db $fc                                           ; $4147: $fc
	inc c                                            ; $4148: $0c
	ld l, c                                          ; $4149: $69
	adc c                                            ; $414a: $89
	call c, $9cff                                    ; $414b: $dc $ff $9c
	ld bc, $00b3                                     ; $414e: $01 $b3 $00
	ld [hl], l                                       ; $4151: $75
	cp a                                             ; $4152: $bf
	halt                                             ; $4153: $76
	add h                                            ; $4154: $84
	sub [hl]                                         ; $4155: $96
	cp $fc                                           ; $4156: $fe $fc
	db $fc                                           ; $4158: $fc
	rst $38                                          ; $4159: $ff
	rst $38                                          ; $415a: $ff
	rst FarCall                                          ; $415b: $f7
	rst $38                                          ; $415c: $ff
	ld [bc], a                                       ; $415d: $02
	rlca                                             ; $415e: $07
	ld e, d                                          ; $415f: $5a
	nop                                              ; $4160: $00
	sbc c                                            ; $4161: $99
	dec [hl]                                         ; $4162: $35
	ld d, l                                          ; $4163: $55
	ld d, l                                          ; $4164: $55
	ld h, [hl]                                       ; $4165: $66
	ld h, [hl]                                       ; $4166: $66
	ld h, l                                          ; $4167: $65
	ld [hl], a                                       ; $4168: $77
	ei                                               ; $4169: $fb
	sbc [hl]                                         ; $416a: $9e
	ld [hl], $dd                                     ; $416b: $36 $dd
	ld h, [hl]                                       ; $416d: $66
	sbc c                                            ; $416e: $99
	ld [hl], $55                                     ; $416f: $36 $55
	inc sp                                           ; $4171: $33
	ld d, [hl]                                       ; $4172: $56
	ld [hl], $44                                     ; $4173: $36 $44
	ld [hl], e                                       ; $4175: $73
	or $8c                                           ; $4176: $f6 $8c
	ld h, [hl]                                       ; $4178: $66
	dec [hl]                                         ; $4179: $35
	ld b, [hl]                                       ; $417a: $46
	ld [hl], $33                                     ; $417b: $36 $33
	ld b, [hl]                                       ; $417d: $46
	ld h, [hl]                                       ; $417e: $66
	ld d, l                                          ; $417f: $55
	ld b, h                                          ; $4180: $44
	ld [hl], $66                                     ; $4181: $36 $66
	ld b, h                                          ; $4183: $44
	inc sp                                           ; $4184: $33
	inc [hl]                                         ; $4185: $34
	ld d, l                                          ; $4186: $55
	ld d, e                                          ; $4187: $53
	inc sp                                           ; $4188: $33
	inc sp                                           ; $4189: $33
	ld [hl], e                                       ; $418a: $73
	ld a, e                                          ; $418b: $7b
	db $d3                                           ; $418c: $d3
	sbc l                                            ; $418d: $9d
	ld d, l                                          ; $418e: $55
	ld d, h                                          ; $418f: $54
	ld [hl], a                                       ; $4190: $77
	or $99                                           ; $4191: $f6 $99
	inc sp                                           ; $4193: $33
	dec [hl]                                         ; $4194: $35
	ld d, l                                          ; $4195: $55
	inc [hl]                                         ; $4196: $34
	ld d, l                                          ; $4197: $55
	ld b, h                                          ; $4198: $44
	ld a, e                                          ; $4199: $7b
	or $73                                           ; $419a: $f6 $73
	xor $df                                          ; $419c: $ee $df
	ld b, h                                          ; $419e: $44
	ld l, e                                          ; $419f: $6b
	db $ec                                           ; $41a0: $ec
	ld a, e                                          ; $41a1: $7b
	or $9c                                           ; $41a2: $f6 $9c
	inc sp                                           ; $41a4: $33
	ld [hl], a                                       ; $41a5: $77
	ld [hl], e                                       ; $41a6: $73
	db $dd                                           ; $41a7: $dd
	inc sp                                           ; $41a8: $33
	sbc h                                            ; $41a9: $9c
	inc [hl]                                         ; $41aa: $34
	ld b, h                                          ; $41ab: $44
	ld b, h                                          ; $41ac: $44
	db $dd                                           ; $41ad: $dd
	ld [hl], a                                       ; $41ae: $77
	db $dd                                           ; $41af: $dd
	inc sp                                           ; $41b0: $33
	ld l, a                                          ; $41b1: $6f
	or $de                                           ; $41b2: $f6 $de
	ld [hl], a                                       ; $41b4: $77
	sbc h                                            ; $41b5: $9c
	ld [hl], e                                       ; $41b6: $73
	inc [hl]                                         ; $41b7: $34
	ld b, h                                          ; $41b8: $44
	add b                                            ; $41b9: $80
	inc b                                            ; $41ba: $04
	di                                               ; $41bb: $f3
	sbc [hl]                                         ; $41bc: $9e
	rst $38                                          ; $41bd: $ff
	ldh a, [c]                                       ; $41be: $f2
	ccf                                              ; $41bf: $3f
	ldh a, [$9e]                                     ; $41c0: $f0 $9e
	ld bc, $fe53                                     ; $41c2: $01 $53 $fe
	ld a, e                                          ; $41c5: $7b
	ldh [$7f], a                                     ; $41c6: $e0 $7f
	db $fd                                           ; $41c8: $fd
	inc bc                                           ; $41c9: $03
	cp $03                                           ; $41ca: $fe $03
	cp $03                                           ; $41cc: $fe $03
	cp $03                                           ; $41ce: $fe $03

jr_040_41d0:
	cp $03                                           ; $41d0: $fe $03
	cp $03                                           ; $41d2: $fe $03
	cp $03                                           ; $41d4: $fe $03
	cp $2f                                           ; $41d6: $fe $2f
	cp $d4                                           ; $41d8: $fe $d4
	rst $38                                          ; $41da: $ff
	ld c, e                                          ; $41db: $4b
	rst AddAOntoHL                                          ; $41dc: $ef
	sbc h                                            ; $41dd: $9c
	cp $00                                           ; $41de: $fe $00
	cp $5f                                           ; $41e0: $fe $5f
	ldh a, [$df]                                     ; $41e2: $f0 $df
	cp $9a                                           ; $41e4: $fe $9a
	ld sp, hl                                        ; $41e6: $f9
	ld hl, sp-$19                                    ; $41e7: $f8 $e7
	ldh [$9f], a                                     ; $41e9: $e0 $9f
	ld h, a                                          ; $41eb: $67
	ld hl, sp-$63                                    ; $41ec: $f8 $9d
	add b                                            ; $41ee: $80
	ld a, a                                          ; $41ef: $7f
	inc bc                                           ; $41f0: $03
	and h                                            ; $41f1: $a4
	dec sp                                           ; $41f2: $3b
	cp $9e                                           ; $41f3: $fe $9e
	ld bc, $af7b                                     ; $41f5: $01 $7b $af
	ld d, a                                          ; $41f8: $57
	cp $9d                                           ; $41f9: $fe $9d
	ld d, l                                          ; $41fb: $55
	xor d                                            ; $41fc: $aa
	ld d, a                                          ; $41fd: $57
	ldh a, [c]                                       ; $41fe: $f2
	sbc l                                            ; $41ff: $9d
	xor d                                            ; $4200: $aa
	ld d, l                                          ; $4201: $55
	ld d, a                                          ; $4202: $57
	ldh a, [$7f]                                     ; $4203: $f0 $7f
	db $f4                                           ; $4205: $f4
	ld d, a                                          ; $4206: $57
	ldh a, [$9d]                                     ; $4207: $f0 $9d
	ld a, [bc]                                       ; $4209: $0a
	push af                                          ; $420a: $f5
	ld c, a                                          ; $420b: $4f
	ldh a, [rPCM34]                                  ; $420c: $f0 $77
	db $f4                                           ; $420e: $f4
	ld e, a                                          ; $420f: $5f
	ldh a, [$6f]                                     ; $4210: $f0 $6f
	db $f4                                           ; $4212: $f4
	daa                                              ; $4213: $27
	ldh a, [$67]                                     ; $4214: $f0 $67
	db $f4                                           ; $4216: $f4
	ld l, a                                          ; $4217: $6f
	ldh a, [$7f]                                     ; $4218: $f0 $7f
	ld a, h                                          ; $421a: $7c
	ld c, a                                          ; $421b: $4f
	ldh a, [$5f]                                     ; $421c: $f0 $5f
	db $f4                                           ; $421e: $f4
	scf                                              ; $421f: $37
	ldh a, [rTAC]                                    ; $4220: $f0 $07
	db $fc                                           ; $4222: $fc
	ld c, a                                          ; $4223: $4f
	rra                                              ; $4224: $1f
	rst $38                                          ; $4225: $ff
	halt                                             ; $4226: $76
	call z, $fe5f                                    ; $4227: $cc $5f $fe
	ld [hl], c                                       ; $422a: $71
	adc l                                            ; $422b: $8d
	ld h, e                                          ; $422c: $63
	cp $77                                           ; $422d: $fe $77
	inc a                                            ; $422f: $3c
	scf                                              ; $4230: $37
	jr nc, jr_040_41d0                               ; $4231: $30 $9d

	ld [bc], a                                       ; $4233: $02
	db $fd                                           ; $4234: $fd
	ld d, a                                          ; $4235: $57
	add b                                            ; $4236: $80
	sbc l                                            ; $4237: $9d
	dec d                                            ; $4238: $15
	ld [$8803], a                                    ; $4239: $ea $03 $88
	ld h, e                                          ; $423c: $63
	db $fc                                           ; $423d: $fc
	ld a, a                                          ; $423e: $7f
	jp $f057                                         ; $423f: $c3 $57 $f0


	sbc l                                            ; $4242: $9d
	xor e                                            ; $4243: $ab
	ld d, h                                          ; $4244: $54
	ld c, a                                          ; $4245: $4f
	ldh a, [rPCM34]                                  ; $4246: $f0 $77
	sub a                                            ; $4248: $97
	ld e, a                                          ; $4249: $5f
	ldh a, [$9d]                                     ; $424a: $f0 $9d
	ld a, a                                          ; $424c: $7f
	add b                                            ; $424d: $80
	ld c, a                                          ; $424e: $4f
	ldh a, [$6f]                                     ; $424f: $f0 $6f
	ld [hl], a                                       ; $4251: $77
	ld h, a                                          ; $4252: $67
	ldh a, [$9d]                                     ; $4253: $f0 $9d
	cp a                                             ; $4255: $bf
	ld b, b                                          ; $4256: $40
	ld c, a                                          ; $4257: $4f
	ldh a, [$67]                                     ; $4258: $f0 $67
	ld c, e                                          ; $425a: $4b
	ld l, a                                          ; $425b: $6f
	ldh a, [$9d]                                     ; $425c: $f0 $9d
	ld e, a                                          ; $425e: $5f
	and b                                            ; $425f: $a0
	ld c, a                                          ; $4260: $4f
	ldh a, [$5f]                                     ; $4261: $f0 $5f
	dec hl                                           ; $4263: $2b
	scf                                              ; $4264: $37
	ldh a, [rRP]                                     ; $4265: $f0 $56
	xor $37                                          ; $4267: $ee $37
	ldh a, [hDisp1_OBP1]                                     ; $4269: $f0 $94
	ret nz                                           ; $426b: $c0

	nop                                              ; $426c: $00
	sbc a                                            ; $426d: $9f
	nop                                              ; $426e: $00
	ld e, a                                          ; $426f: $5f
	rlca                                             ; $4270: $07
	ld e, b                                          ; $4271: $58
	rlca                                             ; $4272: $07
	ld e, a                                          ; $4273: $5f
	nop                                              ; $4274: $00
	ld e, a                                          ; $4275: $5f
	ldh [$e0], a                                     ; $4276: $e0 $e0
	scf                                              ; $4278: $37
	ld h, b                                          ; $4279: $60
	sbc l                                            ; $427a: $9d
	xor a                                            ; $427b: $af
	ld d, b                                          ; $427c: $50
	ld d, a                                          ; $427d: $57
	or b                                             ; $427e: $b0
	sbc l                                            ; $427f: $9d
	ld d, a                                          ; $4280: $57
	xor b                                            ; $4281: $a8
	ld e, a                                          ; $4282: $5f
	ldh a, [c]                                       ; $4283: $f2
	sbc l                                            ; $4284: $9d
	inc sp                                           ; $4285: $33
	nop                                              ; $4286: $00
	halt                                             ; $4287: $76
	db $fc                                           ; $4288: $fc
	ld l, a                                          ; $4289: $6f
	cp $9c                                           ; $428a: $fe $9c
	rst FarCall                                          ; $428c: $f7
	nop                                              ; $428d: $00
	call z, $f07b                                    ; $428e: $cc $7b $f0
	ld e, a                                          ; $4291: $5f
	db $e4                                           ; $4292: $e4
	sbc [hl]                                         ; $4293: $9e
	dec sp                                           ; $4294: $3b
	ld d, e                                          ; $4295: $53
	ldh a, [$7e]                                     ; $4296: $f0 $7e
	ld h, h                                          ; $4298: $64
	sbc [hl]                                         ; $4299: $9e
	ei                                               ; $429a: $fb
	ld d, e                                          ; $429b: $53
	ldh a, [$9e]                                     ; $429c: $f0 $9e
	db $ec                                           ; $429e: $ec
	ld a, e                                          ; $429f: $7b
	db $f4                                           ; $42a0: $f4
	sbc h                                            ; $42a1: $9c
	call nz, $2000                                   ; $42a2: $c4 $00 $20
	ld h, e                                          ; $42a5: $63
	cp b                                             ; $42a6: $b8
	ld a, a                                          ; $42a7: $7f
	db $e4                                           ; $42a8: $e4
	sbc [hl]                                         ; $42a9: $9e
	ld [de], a                                       ; $42aa: $12
	db $fc                                           ; $42ab: $fc
	ld [hl], a                                       ; $42ac: $77
	ldh a, [c]                                       ; $42ad: $f2
	sbc d                                            ; $42ae: $9a
	sbc $00                                          ; $42af: $de $00
	dec l                                            ; $42b1: $2d
	nop                                              ; $42b2: $00
	sub d                                            ; $42b3: $92
	ld a, [$f27f]                                    ; $42b4: $fa $7f $f2
	sub h                                            ; $42b7: $94
	cp e                                             ; $42b8: $bb
	nop                                              ; $42b9: $00
	ld h, [hl]                                       ; $42ba: $66
	nop                                              ; $42bb: $00

jr_040_42bc:
	sbc c                                            ; $42bc: $99
	nop                                              ; $42bd: $00
	inc h                                            ; $42be: $24
	nop                                              ; $42bf: $00
	ld bc, $0300                                     ; $42c0: $01 $00 $03
	ld a, e                                          ; $42c3: $7b
	cp $7c                                           ; $42c4: $fe $7c
	ld sp, hl                                        ; $42c6: $f9
	ld a, a                                          ; $42c7: $7f
	db $f4                                           ; $42c8: $f4
	ld a, a                                          ; $42c9: $7f
	ldh a, [hDisp1_SCY]                                     ; $42ca: $f0 $90
	ldh a, [rP1]                                     ; $42cc: $f0 $00
	di                                               ; $42ce: $f3
	nop                                              ; $42cf: $00
	or e                                             ; $42d0: $b3
	ld b, b                                          ; $42d1: $40
	inc sp                                           ; $42d2: $33
	ret nz                                           ; $42d3: $c0

	inc sp                                           ; $42d4: $33
	ret nz                                           ; $42d5: $c0

	cp a                                             ; $42d6: $bf
	nop                                              ; $42d7: $00
	ld b, b                                          ; $42d8: $40
	ccf                                              ; $42d9: $3f

jr_040_42da:
	cp a                                             ; $42da: $bf
	ld l, e                                          ; $42db: $6b
	ret z                                            ; $42dc: $c8

	sub [hl]                                         ; $42dd: $96
	ret nz                                           ; $42de: $c0

	ccf                                              ; $42df: $3f
	db $db                                           ; $42e0: $db
	inc h                                            ; $42e1: $24
	or $00                                           ; $42e2: $f6 $00
	ret                                              ; $42e4: $c9


	nop                                              ; $42e5: $00
	or $6b                                           ; $42e6: $f6 $6b
	ldh a, [$7f]                                     ; $42e8: $f0 $7f
	adc e                                            ; $42ea: $8b
	sbc h                                            ; $42eb: $9c
	xor $10                                          ; $42ec: $ee $10

jr_040_42ee:
	rst FarCall                                          ; $42ee: $f7
	ld [hl], e                                       ; $42ef: $73

jr_040_42f0:
	ret nc                                           ; $42f0: $d0

	sbc [hl]                                         ; $42f1: $9e
	adc c                                            ; $42f2: $89
	ld hl, sp+$7f                                    ; $42f3: $f8 $7f
	ld [$9b98], a                                    ; $42f5: $ea $98 $9b
	nop                                              ; $42f8: $00
	db $e4                                           ; $42f9: $e4
	nop                                              ; $42fa: $00
	sbc b                                            ; $42fb: $98
	nop                                              ; $42fc: $00
	ld b, b                                          ; $42fd: $40
	ld h, e                                          ; $42fe: $63
	ldh a, [$9e]                                     ; $42ff: $f0 $9e
	ld [hl], a                                       ; $4301: $77
	ld [hl], e                                       ; $4302: $73
	ld l, b                                          ; $4303: $68
	ld sp, hl                                        ; $4304: $f9
	sbc [hl]                                         ; $4305: $9e
	and $7b                                          ; $4306: $e6 $7b
	ret nc                                           ; $4308: $d0

	sbc [hl]                                         ; $4309: $9e
	db $f4                                           ; $430a: $f4
	ld [hl], e                                       ; $430b: $73
	sub [hl]                                         ; $430c: $96
	sbc [hl]                                         ; $430d: $9e
	dec de                                           ; $430e: $1b
	ld [hl], e                                       ; $430f: $73
	cp $77                                           ; $4310: $fe $77
	sbc $9b                                          ; $4312: $de $9b
	ccf                                              ; $4314: $3f
	nop                                              ; $4315: $00
	cp b                                             ; $4316: $b8
	rlca                                             ; $4317: $07
	ld h, a                                          ; $4318: $67
	cp $e1                                           ; $4319: $fe $e1
	ld [hl], a                                       ; $431b: $77
	jr z, jr_040_42bc                                ; $431c: $28 $9e

	ret z                                            ; $431e: $c8

	ld a, e                                          ; $431f: $7b
	ld d, h                                          ; $4320: $54
	ld h, a                                          ; $4321: $67
	cp $7f                                           ; $4322: $fe $7f
	and h                                            ; $4324: $a4
	sub b                                            ; $4325: $90
	jr nc, jr_040_4328                               ; $4326: $30 $00

jr_040_4328:
	ret nz                                           ; $4328: $c0

	nop                                              ; $4329: $00
	ld hl, sp+$00                                    ; $432a: $f8 $00
	jr c, jr_040_42ee                                ; $432c: $38 $c0

	jr c, jr_040_42f0                                ; $432e: $38 $c0

	ccf                                              ; $4330: $3f
	ret nz                                           ; $4331: $c0

	cp $01                                           ; $4332: $fe $01
	call z, $0c7b                                    ; $4334: $cc $7b $0c

jr_040_4337:
	ld sp, hl                                        ; $4337: $f9
	sbc d                                            ; $4338: $9a
	ldh [rP1], a                                     ; $4339: $e0 $00
	ld h, b                                          ; $433b: $60
	add b                                            ; $433c: $80
	adc c                                            ; $433d: $89
	ld a, e                                          ; $433e: $7b
	sub [hl]                                         ; $433f: $96
	ld a, a                                          ; $4340: $7f
	xor e                                            ; $4341: $ab
	ld [hl], a                                       ; $4342: $77
	cp $9c                                           ; $4343: $fe $9c
	rrca                                             ; $4345: $0f
	nop                                              ; $4346: $00
	rra                                              ; $4347: $1f
	ld a, e                                          ; $4348: $7b
	sub [hl]                                         ; $4349: $96
	ld [hl], a                                       ; $434a: $77
	ld c, b                                          ; $434b: $48
	sbc l                                            ; $434c: $9d
	call z, Call_040_7b33                            ; $434d: $cc $33 $7b
	ld b, h                                          ; $4350: $44
	rst SubAFromDE                                          ; $4351: $df
	rst $38                                          ; $4352: $ff
	sbc c                                            ; $4353: $99
	nop                                              ; $4354: $00
	rst SubAFromDE                                          ; $4355: $df
	jr nz, jr_040_4337                               ; $4356: $20 $df

	jr nz, jr_040_42da                               ; $4358: $20 $80

	ld h, l                                          ; $435a: $65
	ld d, $7b                                        ; $435b: $16 $7b
	ldh a, [$7f]                                     ; $435d: $f0 $7f
	cp $9d                                           ; $435f: $fe $9d
	ldh a, [rIF]                                     ; $4361: $f0 $0f
	ld e, a                                          ; $4363: $5f
	jp $c27f                                         ; $4364: $c3 $7f $c2


	ld a, [hl]                                       ; $4367: $7e
	ld a, [$fd77]                                    ; $4368: $fa $77 $fd
	db $e3                                           ; $436b: $e3
	ld [hl], a                                       ; $436c: $77
	ld [hl], $57                                     ; $436d: $36 $57
	cp $9c                                           ; $436f: $fe $9c
	ld [hl], e                                       ; $4371: $73
	add b                                            ; $4372: $80
	di                                               ; $4373: $f3
	ld h, d                                          ; $4374: $62
	call nz, $f477                                   ; $4375: $c4 $77 $f4
	ld a, [hl]                                       ; $4378: $7e
	adc $66                                          ; $4379: $ce $66
	add $6f                                          ; $437b: $c6 $6f
	or $7e                                           ; $437d: $f6 $7e
	adc $66                                          ; $437f: $ce $66
	add $6f                                          ; $4381: $c6 $6f
	or $7f                                           ; $4383: $f6 $7f
	add b                                            ; $4385: $80
	ld a, a                                          ; $4386: $7f
	cp $67                                           ; $4387: $fe $67
	or [hl]                                          ; $4389: $b6
	sbc [hl]                                         ; $438a: $9e
	add e                                            ; $438b: $83
	ld a, d                                          ; $438c: $7a
	inc a                                            ; $438d: $3c
	ld sp, hl                                        ; $438e: $f9
	ld a, a                                          ; $438f: $7f
	ld h, $9e                                        ; $4390: $26 $9e
	pop hl                                           ; $4392: $e1
	ld [hl], e                                       ; $4393: $73
	cp $fd                                           ; $4394: $fe $fd
	sub d                                            ; $4396: $92
	ld a, h                                          ; $4397: $7c
	nop                                              ; $4398: $00
	db $fc                                           ; $4399: $fc
	nop                                              ; $439a: $00
	adc h                                            ; $439b: $8c
	ld [hl], b                                       ; $439c: $70
	db $fc                                           ; $439d: $fc
	nop                                              ; $439e: $00
	adc a                                            ; $439f: $8f
	ld [hl], b                                       ; $43a0: $70
	rst $38                                          ; $43a1: $ff
	nop                                              ; $43a2: $00
	inc de                                           ; $43a3: $13
	ld l, e                                          ; $43a4: $6b
	sbc b                                            ; $43a5: $98
	halt                                             ; $43a6: $76
	call nz, $967e                                   ; $43a7: $c4 $7e $96
	sbc [hl]                                         ; $43aa: $9e
	db $d3                                           ; $43ab: $d3
	ld e, d                                          ; $43ac: $5a
	add $02                                          ; $43ad: $c6 $02
	ret nz                                           ; $43af: $c0

	db $fc                                           ; $43b0: $fc
	sbc [hl]                                         ; $43b1: $9e
	add c                                            ; $43b2: $81
	ld [hl], d                                       ; $43b3: $72
	adc [hl]                                         ; $43b4: $8e
	ld a, a                                          ; $43b5: $7f
	db $fd                                           ; $43b6: $fd
	sbc d                                            ; $43b7: $9a
	sub c                                            ; $43b8: $91
	ld [$0891], sp                                   ; $43b9: $08 $91 $08
	ld de, $fc7b                                     ; $43bc: $11 $7b $fc
	ld a, [hl]                                       ; $43bf: $7e
	adc $6f                                          ; $43c0: $ce $6f
	ldh a, [$9b]                                     ; $43c2: $f0 $9b
	scf                                              ; $43c4: $37
	ret z                                            ; $43c5: $c8

	rst FarCall                                          ; $43c6: $f7
	ld [$fe77], sp                                   ; $43c7: $08 $77 $fe
	ld a, [hl]                                       ; $43ca: $7e
	adc $6f                                          ; $43cb: $ce $6f
	ldh a, [$9d]                                     ; $43cd: $f0 $9d
	ldh a, [$08]                                     ; $43cf: $f0 $08
	ld l, a                                          ; $43d1: $6f
	cp $7d                                           ; $43d2: $fe $7d
	ldh a, [$6f]                                     ; $43d4: $f0 $6f
	ldh a, [$97]                                     ; $43d6: $f0 $97
	ld [hl], a                                       ; $43d8: $77
	ld [$0e71], sp                                   ; $43d9: $08 $71 $0e
	ld h, c                                          ; $43dc: $61
	ld e, $47                                        ; $43dd: $1e $47
	jr c, @+$7d                                      ; $43df: $38 $7b

	db $f4                                           ; $43e1: $f4
	ld [hl], e                                       ; $43e2: $73
	ldh a, [$6f]                                     ; $43e3: $f0 $6f
	jp nc, $fe7f                                     ; $43e5: $d2 $7f $fe

	ld e, a                                          ; $43e8: $5f
	ldh a, [$7e]                                     ; $43e9: $f0 $7e
	call nz, $f077                                   ; $43eb: $c4 $77 $f0
	halt                                             ; $43ee: $76
	rst GetHLinHL                                          ; $43ef: $cf
	ld l, a                                          ; $43f0: $6f
	ret nz                                           ; $43f1: $c0

	ld a, [hl]                                       ; $43f2: $7e
	ld l, e                                          ; $43f3: $6b
	ld [hl], a                                       ; $43f4: $77
	ret nz                                           ; $43f5: $c0

	ld l, l                                          ; $43f6: $6d
	db $fc                                           ; $43f7: $fc
	ld a, a                                          ; $43f8: $7f
	db $fd                                           ; $43f9: $fd
	sbc l                                            ; $43fa: $9d
	db $10                                           ; $43fb: $10
	ld [$fe6f], sp                                   ; $43fc: $08 $6f $fe
	ld b, a                                          ; $43ff: $47
	ldh a, [$7f]                                     ; $4400: $f0 $7f
	ld [hl], $6f                                     ; $4402: $36 $6f
	ldh a, [$9d]                                     ; $4404: $f0 $9d
	inc de                                           ; $4406: $13
	ld [$fe6f], sp                                   ; $4407: $08 $6f $fe
	ld a, [hl]                                       ; $440a: $7e
	adc $6f                                          ; $440b: $ce $6f
	ldh a, [$9d]                                     ; $440d: $f0 $9d
	di                                               ; $440f: $f3
	ld [$fe6f], sp                                   ; $4410: $08 $6f $fe
	ld a, [hl]                                       ; $4413: $7e
	add $4f                                          ; $4414: $c6 $4f
	sub b                                            ; $4416: $90
	sbc l                                            ; $4417: $9d
	ld bc, $4ffe                                     ; $4418: $01 $fe $4f
	ldh a, [rPCM12]                                  ; $441b: $f0 $76
	adc $57                                          ; $441d: $ce $57
	ret nc                                           ; $441f: $d0

	halt                                             ; $4420: $76
	adc $77                                          ; $4421: $ce $77
	ldh a, [$9d]                                     ; $4423: $f0 $9d
	db $e3                                           ; $4425: $e3
	ld [$fe6f], sp                                   ; $4426: $08 $6f $fe
	ld b, a                                          ; $4429: $47
	ld d, b                                          ; $442a: $50
	sbc [hl]                                         ; $442b: $9e
	jp $f06b                                         ; $442c: $c3 $6b $f0


	sbc l                                            ; $442f: $9d
	rst JumpTable                                          ; $4430: $c7
	ld [$fe6f], sp                                   ; $4431: $08 $6f $fe
	halt                                             ; $4434: $76
	adc $77                                          ; $4435: $ce $77
	ldh a, [$9d]                                     ; $4437: $f0 $9d
	or b                                             ; $4439: $b0
	rrca                                             ; $443a: $0f
	ld l, a                                          ; $443b: $6f
	cp $e1                                           ; $443c: $fe $e1
	halt                                             ; $443e: $76
	jp z, $d077                                      ; $443f: $ca $77 $d0

	ld h, a                                          ; $4442: $67
	cp $6a                                           ; $4443: $fe $6a
	db $fc                                           ; $4445: $fc
	ld h, e                                          ; $4446: $63
	ldh a, [rPCM34]                                  ; $4447: $f0 $77
	inc c                                            ; $4449: $0c
	ld d, a                                          ; $444a: $57
	ldh a, [$7e]                                     ; $444b: $f0 $7e
	adc $7e                                          ; $444d: $ce $7e
	add $17                                          ; $444f: $c6 $17
	ret nc                                           ; $4451: $d0

	ld b, a                                          ; $4452: $47
	ldh a, [$9c]                                     ; $4453: $f0 $9c
	db $f4                                           ; $4455: $f4
	ld [$53f4], sp                                   ; $4456: $08 $f4 $53
	ldh a, [rPCM12]                                  ; $4459: $f0 $76
	call c, $f017                                    ; $445b: $dc $17 $f0
	halt                                             ; $445e: $76
	call z, $f057                                    ; $445f: $cc $57 $f0
	halt                                             ; $4462: $76
	db $fc                                           ; $4463: $fc
	inc bc                                           ; $4464: $03
	sub b                                            ; $4465: $90
	dec de                                           ; $4466: $1b
	ret nc                                           ; $4467: $d0

	ld l, [hl]                                       ; $4468: $6e
	call z, $039e                                    ; $4469: $cc $9e $03
	ld c, e                                          ; $446c: $4b
	ret nc                                           ; $446d: $d0

	rst SubAFromDE                                          ; $446e: $df
	rst $38                                          ; $446f: $ff
	sbc [hl]                                         ; $4470: $9e
	rra                                              ; $4471: $1f
	ld l, e                                          ; $4472: $6b
	ldh a, [rPCM12]                                  ; $4473: $f0 $76
	call z, $f077                                    ; $4475: $cc $77 $f0
	db $dd                                           ; $4478: $dd
	rst $38                                          ; $4479: $ff
	sbc [hl]                                         ; $447a: $9e
	rrca                                             ; $447b: $0f
	ld a, e                                          ; $447c: $7b
	rst FarCall                                          ; $447d: $f7

Call_040_447e:
	halt                                             ; $447e: $76
	call z, $f067                                    ; $447f: $cc $67 $f0
	rst SubAFromDE                                          ; $4482: $df
	rst $38                                          ; $4483: $ff
	sbc [hl]                                         ; $4484: $9e
	ld a, a                                          ; $4485: $7f
	halt                                             ; $4486: $76
	sub c                                            ; $4487: $91
	db $e3                                           ; $4488: $e3
	ld h, e                                          ; $4489: $63
	and [hl]                                         ; $448a: $a6
	db $dd                                           ; $448b: $dd

jr_040_448c:
	rst $38                                          ; $448c: $ff
	ld e, a                                          ; $448d: $5f
	ldh a, [c]                                       ; $448e: $f2
	inc bc                                           ; $448f: $03
	ldh a, [rWX]                                     ; $4490: $f0 $4b
	ldh a, [$7f]                                     ; $4492: $f0 $7f
	ld [hl], b                                       ; $4494: $70
	ld c, a                                          ; $4495: $4f
	ldh a, [$dd]                                     ; $4496: $f0 $dd
	rst $38                                          ; $4498: $ff
	sbc [hl]                                         ; $4499: $9e
	cp $03                                           ; $449a: $fe $03
	jp nz, $f003                                     ; $449c: $c2 $03 $f0

	dec hl                                           ; $449f: $2b
	ldh a, [$7f]                                     ; $44a0: $f0 $7f
	jr z, @-$21                                      ; $44a2: $28 $dd

	rst $38                                          ; $44a4: $ff
	sbc l                                            ; $44a5: $9d
	inc e                                            ; $44a6: $1c
	rst $38                                          ; $44a7: $ff
	ld h, [hl]                                       ; $44a8: $66
	add sp, -$23                                     ; $44a9: $e8 $dd
	rst $38                                          ; $44ab: $ff
	sbc [hl]                                         ; $44ac: $9e
	ldh [$7b], a                                     ; $44ad: $e0 $7b
	ld hl, sp-$62                                    ; $44af: $f8 $9e
	add b                                            ; $44b1: $80
	dec de                                           ; $44b2: $1b
	jp nz, $0e9c                                     ; $44b3: $c2 $9c $0e

	rst $38                                          ; $44b6: $ff
	ld bc, $f25b                                     ; $44b7: $01 $5b $f2
	ld [hl], a                                       ; $44ba: $77
	ldh [$9e], a                                     ; $44bb: $e0 $9e
	ret nz                                           ; $44bd: $c0

	ld d, e                                          ; $44be: $53
	ldh a, [rPCM12]                                  ; $44bf: $f0 $76
	ret                                              ; $44c1: $c9


	sbc [hl]                                         ; $44c2: $9e
	ld e, a                                          ; $44c3: $5f
	ld [hl], e                                       ; $44c4: $73
	ld a, [$ffdb]                                    ; $44c5: $fa $db $ff
	ld a, a                                          ; $44c8: $7f
	or h                                             ; $44c9: $b4
	sbc [hl]                                         ; $44ca: $9e
	ld a, b                                          ; $44cb: $78
	ld [hl], a                                       ; $44cc: $77
	jp c, $c102                                      ; $44cd: $da $02 $c1

	ld h, a                                          ; $44d0: $67
	cp $9c                                           ; $44d1: $fe $9c
	ld hl, sp+$07                                    ; $44d3: $f8 $07
	rlca                                             ; $44d5: $07
	ld l, e                                          ; $44d6: $6b
	adc c                                            ; $44d7: $89
	ld a, h                                          ; $44d8: $7c
	inc a                                            ; $44d9: $3c
	sbc h                                            ; $44da: $9c
	pop af                                           ; $44db: $f1
	rrca                                             ; $44dc: $0f
	rrca                                             ; $44dd: $0f
	reti                                             ; $44de: $d9


	rst $38                                          ; $44df: $ff
	sub a                                            ; $44e0: $97
	nop                                              ; $44e1: $00
	rra                                              ; $44e2: $1f
	ldh [$e7], a                                     ; $44e3: $e0 $e7
	ld hl, sp-$07                                    ; $44e5: $f8 $f9
	cp $fe                                           ; $44e7: $fe $fe
	ld h, e                                          ; $44e9: $63
	ldh a, [$6f]                                     ; $44ea: $f0 $6f
	cp $7c                                           ; $44ec: $fe $7c
	jr z, jr_040_448c                                ; $44ee: $28 $9c

	sbc b                                            ; $44f0: $98
	ldh [$e6], a                                     ; $44f1: $e0 $e6
	ld a, e                                          ; $44f3: $7b
	add sp, $67                                      ; $44f4: $e8 $67
	ldh a, [$7c]                                     ; $44f6: $f0 $7c
	xor c                                            ; $44f8: $a9
	sbc [hl]                                         ; $44f9: $9e
	ld bc, $9cfe                                     ; $44fa: $01 $fe $9c
	add b                                            ; $44fd: $80
	nop                                              ; $44fe: $00
	add b                                            ; $44ff: $80
	ld a, d                                          ; $4500: $7a
	ld c, l                                          ; $4501: $4d
	ld l, a                                          ; $4502: $6f
	cp $7c                                           ; $4503: $fe $7c
	and a                                            ; $4505: $a7
	ld a, b                                          ; $4506: $78
	push af                                          ; $4507: $f5
	ld a, e                                          ; $4508: $7b
	sbc a                                            ; $4509: $9f
	ld h, a                                          ; $450a: $67
	ldh a, [$7f]                                     ; $450b: $f0 $7f
	ldh a, [c]                                       ; $450d: $f2
	ld a, a                                          ; $450e: $7f
	ldh [c], a                                       ; $450f: $e2
	sbc [hl]                                         ; $4510: $9e
	ld h, b                                          ; $4511: $60
	ld e, e                                          ; $4512: $5b
	ldh a, [rOCPD]                                   ; $4513: $f0 $6b
	ld h, l                                          ; $4515: $65
	ld d, e                                          ; $4516: $53
	rla                                              ; $4517: $17
	ld a, b                                          ; $4518: $78
	ld b, d                                          ; $4519: $42
	ld c, a                                          ; $451a: $4f
	rlca                                             ; $451b: $07
	ld a, e                                          ; $451c: $7b
	ldh a, [$7f]                                     ; $451d: $f0 $7f
	ld [hl], d                                       ; $451f: $72
	ld c, a                                          ; $4520: $4f
	ldh a, [$7f]                                     ; $4521: $f0 $7f
	cp $9e                                           ; $4523: $fe $9e
	db $fc                                           ; $4525: $fc
	ld e, l                                          ; $4526: $5d
	or c                                             ; $4527: $b1
	ld l, e                                          ; $4528: $6b
	ccf                                              ; $4529: $3f
	sbc l                                            ; $452a: $9d
	ldh [$1f], a                                     ; $452b: $e0 $1f
	ld h, a                                          ; $452d: $67
	db $ec                                           ; $452e: $ec
	ld l, a                                          ; $452f: $6f
	ldh a, [$7c]                                     ; $4530: $f0 $7c
	ld a, [hl+]                                      ; $4532: $2a
	ld a, e                                          ; $4533: $7b
	ld c, d                                          ; $4534: $4a
	sbc [hl]                                         ; $4535: $9e
	jr jr_040_458f                                   ; $4536: $18 $57

	ldh [rVBK], a                                    ; $4538: $e0 $4f
	ret nc                                           ; $453a: $d0

	ld a, a                                          ; $453b: $7f
	cp $7f                                           ; $453c: $fe $7f
	ld [de], a                                       ; $453e: $12
	ld l, a                                          ; $453f: $6f
	ld d, $5f                                        ; $4540: $16 $5f
	and l                                            ; $4542: $a5
	ld [hl], a                                       ; $4543: $77
	cp [hl]                                          ; $4544: $be
	sbc l                                            ; $4545: $9d
	sub d                                            ; $4546: $92
	ld l, l                                          ; $4547: $6d
	ld d, a                                          ; $4548: $57
	add e                                            ; $4549: $83
	ld a, a                                          ; $454a: $7f
	jp z, Jump_040_5b67                              ; $454b: $ca $67 $5b

	ld a, [de]                                       ; $454e: $1a
	ret nz                                           ; $454f: $c0

	sub $ff                                          ; $4550: $d6 $ff
	sbc h                                            ; $4552: $9c
	cp e                                             ; $4553: $bb
	rst $38                                          ; $4554: $ff
	ld l, h                                          ; $4555: $6c
	jp nc, $9eff                                     ; $4556: $d2 $ff $9e

	or $d2                                           ; $4559: $f6 $d2
	rst $38                                          ; $455b: $ff
	sbc [hl]                                         ; $455c: $9e
	db $dd                                           ; $455d: $dd
	ld a, c                                          ; $455e: $79
	xor h                                            ; $455f: $ac
	db $d3                                           ; $4560: $d3
	rst $38                                          ; $4561: $ff
	ld a, [hl]                                       ; $4562: $7e
	cp b                                             ; $4563: $b8
	sbc [hl]                                         ; $4564: $9e
	sbc a                                            ; $4565: $9f
	ld [hl], d                                       ; $4566: $72
	cp b                                             ; $4567: $b8
	ld h, a                                          ; $4568: $67
	add sp, $77                                      ; $4569: $e8 $77
	ld l, a                                          ; $456b: $6f
	halt                                             ; $456c: $76
	cp b                                             ; $456d: $b8
	ld e, [hl]                                       ; $456e: $5e
	and b                                            ; $456f: $a0
	sbc h                                            ; $4570: $9c
	cp h                                             ; $4571: $bc
	nop                                              ; $4572: $00
	rrca                                             ; $4573: $0f
	ld [hl], d                                       ; $4574: $72
	and h                                            ; $4575: $a4
	ld h, [hl]                                       ; $4576: $66
	ld d, d                                          ; $4577: $52
	db $fd                                           ; $4578: $fd
	sbc d                                            ; $4579: $9a
	ret nz                                           ; $457a: $c0

	nop                                              ; $457b: $00
	ld [hl], b                                       ; $457c: $70
	nop                                              ; $457d: $00
	inc e                                            ; $457e: $1c
	ld a, e                                          ; $457f: $7b
	add sp, $62                                      ; $4580: $e8 $62
	cp d                                             ; $4582: $ba
	ld l, e                                          ; $4583: $6b
	ldh [c], a                                       ; $4584: $e2
	ld a, a                                          ; $4585: $7f
	add sp, $7a                                      ; $4586: $e8 $7a
	ld d, b                                          ; $4588: $50
	ld a, [$cc7f]                                    ; $4589: $fa $7f $cc
	ld a, [hl]                                       ; $458c: $7e
	ld a, [hl]                                       ; $458d: $7e
	ld l, a                                          ; $458e: $6f

jr_040_458f:
	db $ec                                           ; $458f: $ec
	sbc [hl]                                         ; $4590: $9e
	jr c, @+$74                                      ; $4591: $38 $72

	halt                                             ; $4593: $76
	ld l, a                                          ; $4594: $6f
	sub $7f                                          ; $4595: $d6 $7f
	ld a, [$ca7f]                                    ; $4597: $fa $7f $ca
	db $fd                                           ; $459a: $fd
	sbc d                                            ; $459b: $9a
	jp $fc00                                         ; $459c: $c3 $00 $fc


	nop                                              ; $459f: $00
	jr nc, @+$7d                                     ; $45a0: $30 $7b

	and $77                                          ; $45a2: $e6 $77
	cp [hl]                                          ; $45a4: $be
	sbc [hl]                                         ; $45a5: $9e
	ld a, a                                          ; $45a6: $7f
	ld a, e                                          ; $45a7: $7b
	ldh [$67], a                                     ; $45a8: $e0 $67
	cp b                                             ; $45aa: $b8
	ld c, d                                          ; $45ab: $4a
	ld h, d                                          ; $45ac: $62
	ld e, e                                          ; $45ad: $5b
	ldh a, [$7e]                                     ; $45ae: $f0 $7e
	ld e, $7a                                        ; $45b0: $1e $7a
	ld h, d                                          ; $45b2: $62
	ld d, d                                          ; $45b3: $52
	ld h, h                                          ; $45b4: $64
	inc bc                                           ; $45b5: $03
	cp $02                                           ; $45b6: $fe $02
	pop bc                                           ; $45b8: $c1
	rst $38                                          ; $45b9: $ff
	sbc h                                            ; $45ba: $9c
	sub e                                            ; $45bb: $93
	rst $38                                          ; $45bc: $ff
	ld l, b                                          ; $45bd: $68
	ld d, e                                          ; $45be: $53
	rst GetHLinHL                                          ; $45bf: $cf
	sbc d                                            ; $45c0: $9a
	dec sp                                           ; $45c1: $3b
	rst $38                                          ; $45c2: $ff
	inc b                                            ; $45c3: $04
	rst $38                                          ; $45c4: $ff
	ld [bc], a                                       ; $45c5: $02
	ld h, c                                          ; $45c6: $61
	ld d, $7f                                        ; $45c7: $16 $7f
	cp $9a                                           ; $45c9: $fe $9a
	scf                                              ; $45cb: $37
	rst $38                                          ; $45cc: $ff
	ret z                                            ; $45cd: $c8

	rst $38                                          ; $45ce: $ff
	ld hl, $e670                                     ; $45cf: $21 $70 $e6
	sub [hl]                                         ; $45d2: $96
	ld b, b                                          ; $45d3: $40
	rst $38                                          ; $45d4: $ff
	jr nz, @+$01                                     ; $45d5: $20 $ff

	jr @+$01                                         ; $45d7: $18 $ff

	ccf                                              ; $45d9: $3f
	rst $38                                          ; $45da: $ff
	rst GetHLinHL                                          ; $45db: $cf
	ld a, e                                          ; $45dc: $7b
	sbc $67                                          ; $45dd: $de $67
	ldh [$71], a                                     ; $45df: $e0 $71
	ld c, [hl]                                       ; $45e1: $4e
	sbc e                                            ; $45e2: $9b
	rst $38                                          ; $45e3: $ff
	set 7, a                                         ; $45e4: $cb $ff
	dec d                                            ; $45e6: $15
	ld a, e                                          ; $45e7: $7b
	call z, $f66c                                    ; $45e8: $cc $6c $f6
	ld l, [hl]                                       ; $45eb: $6e
	cp b                                             ; $45ec: $b8
	sbc h                                            ; $45ed: $9c
	sbc a                                            ; $45ee: $9f
	rst $38                                          ; $45ef: $ff
	ld h, e                                          ; $45f0: $63
	ld a, e                                          ; $45f1: $7b
	call nc, $069e                                   ; $45f2: $d4 $9e $06
	ld [hl], d                                       ; $45f5: $72
	and b                                            ; $45f6: $a0
	ld l, [hl]                                       ; $45f7: $6e
	cp b                                             ; $45f8: $b8
	ld [hl], a                                       ; $45f9: $77
	add sp, $7d                                      ; $45fa: $e8 $7d
	ei                                               ; $45fc: $fb
	ld h, h                                          ; $45fd: $64
	ldh a, [$5e]                                     ; $45fe: $f0 $5e
	and b                                            ; $4600: $a0
	ld a, l                                          ; $4601: $7d
	ld l, [hl]                                       ; $4602: $6e
	sbc h                                            ; $4603: $9c
	jr jr_040_4606                                   ; $4604: $18 $00

jr_040_4606:
	ld b, $5a                                        ; $4606: $06 $5a
	and b                                            ; $4608: $a0
	ld h, e                                          ; $4609: $63
	ldh [$7b], a                                     ; $460a: $e0 $7b
	add sp, $76                                      ; $460c: $e8 $76
	and b                                            ; $460e: $a0
	ld c, h                                          ; $460f: $4c
	call nc, $e87f                                   ; $4610: $d4 $7f $e8
	ld [hl], c                                       ; $4613: $71
	inc l                                            ; $4614: $2c
	ld d, e                                          ; $4615: $53
	jp nc, $e09e                                     ; $4616: $d2 $9e $e0

	ld a, d                                          ; $4619: $7a
	halt                                             ; $461a: $76
	ld l, [hl]                                       ; $461b: $6e
	and $4f                                          ; $461c: $e6 $4f
	call nc, $f89e                                   ; $461e: $d4 $9e $f8
	dec sp                                           ; $4621: $3b
	call nc, $747e                                   ; $4622: $d4 $7e $74
	ld a, [hl]                                       ; $4625: $7e
	ld h, d                                          ; $4626: $62
	ld l, a                                          ; $4627: $6f
	sub h                                            ; $4628: $94
	ld d, [hl]                                       ; $4629: $56
	and b                                            ; $462a: $a0
	ld a, [hl]                                       ; $462b: $7e
	and [hl]                                         ; $462c: $a6
	ld e, a                                          ; $462d: $5f
	sub [hl]                                         ; $462e: $96
	ld [hl], a                                       ; $462f: $77
	ldh a, [$7f]                                     ; $4630: $f0 $7f
	sbc d                                            ; $4632: $9a
	halt                                             ; $4633: $76
	ld c, d                                          ; $4634: $4a
	sbc [hl]                                         ; $4635: $9e
	inc a                                            ; $4636: $3c
	ld [hl], e                                       ; $4637: $73
	xor d                                            ; $4638: $aa
	inc sp                                           ; $4639: $33
	nop                                              ; $463a: $00
	sbc l                                            ; $463b: $9d
	ld d, h                                          ; $463c: $54
	ld [hl], a                                       ; $463d: $77
	reti                                             ; $463e: $d9


	ld d, l                                          ; $463f: $55
	sbc l                                            ; $4640: $9d
	ld h, [hl]                                       ; $4641: $66
	ld b, h                                          ; $4642: $44
	reti                                             ; $4643: $d9


	ld d, l                                          ; $4644: $55
	sbc [hl]                                         ; $4645: $9e
	ld h, h                                          ; $4646: $64
	ret c                                            ; $4647: $d8

	ld d, l                                          ; $4648: $55
	sbc [hl]                                         ; $4649: $9e
	ld [hl], l                                       ; $464a: $75
	call c, $9955                                    ; $464b: $dc $55 $99
	inc sp                                           ; $464e: $33
	dec [hl]                                         ; $464f: $35
	ld d, l                                          ; $4650: $55
	ld h, [hl]                                       ; $4651: $66
	ld [hl], e                                       ; $4652: $73
	ld d, e                                          ; $4653: $53
	jp c, Jump_040_7f33                              ; $4654: $da $33 $7f

	or $d9                                           ; $4657: $f6 $d9
	inc sp                                           ; $4659: $33
	ld h, e                                          ; $465a: $63
	or $df                                           ; $465b: $f6 $df
	ld h, [hl]                                       ; $465d: $66
	sbc [hl]                                         ; $465e: $9e
	halt                                             ; $465f: $76
	ret c                                            ; $4660: $d8

	ld h, [hl]                                       ; $4661: $66
	sbc $77                                          ; $4662: $de $77
	ld e, a                                          ; $4664: $5f
	or $6b                                           ; $4665: $f6 $6b
	push af                                          ; $4667: $f5
	call c, $dc77                                    ; $4668: $dc $77 $dc
	ld h, [hl]                                       ; $466b: $66
	and e                                            ; $466c: $a3
	inc b                                            ; $466d: $04
	di                                               ; $466e: $f3
	sbc [hl]                                         ; $466f: $9e
	rst $38                                          ; $4670: $ff
	ldh a, [c]                                       ; $4671: $f2
	ccf                                              ; $4672: $3f
	ldh a, [$9e]                                     ; $4673: $f0 $9e
	ld bc, $fe53                                     ; $4675: $01 $53 $fe
	ld a, e                                          ; $4678: $7b
	ldh [$7f], a                                     ; $4679: $e0 $7f
	db $fd                                           ; $467b: $fd
	inc bc                                           ; $467c: $03
	cp $03                                           ; $467d: $fe $03
	cp $03                                           ; $467f: $fe $03
	cp $03                                           ; $4681: $fe $03
	cp $03                                           ; $4683: $fe $03
	cp $03                                           ; $4685: $fe $03
	cp $03                                           ; $4687: $fe $03
	cp $2f                                           ; $4689: $fe $2f
	cp $d5                                           ; $468b: $fe $d5
	rst $38                                          ; $468d: $ff
	ld b, a                                          ; $468e: $47
	ldh a, [$9b]                                     ; $468f: $f0 $9b
	ld bc, $01fe                                     ; $4691: $01 $fe $01
	cp $d8                                           ; $4694: $fe $d8
	rst $38                                          ; $4696: $ff
	rst SubAFromDE                                          ; $4697: $df
	cp $9a                                           ; $4698: $fe $9a
	ld sp, hl                                        ; $469a: $f9
	ld hl, sp-$19                                    ; $469b: $f8 $e7
	ldh [$9f], a                                     ; $469d: $e0 $9f
	ld h, a                                          ; $469f: $67
	ld hl, sp-$63                                    ; $46a0: $f8 $9d
	add b                                            ; $46a2: $80
	ld a, a                                          ; $46a3: $7f
	inc bc                                           ; $46a4: $03
	and h                                            ; $46a5: $a4
	inc bc                                           ; $46a6: $03
	cp $03                                           ; $46a7: $fe $03
	cp $03                                           ; $46a9: $fe $03
	cp $03                                           ; $46ab: $fe $03
	cp $03                                           ; $46ad: $fe $03
	cp $03                                           ; $46af: $fe $03
	cp $23                                           ; $46b1: $fe $23
	cp $99                                           ; $46b3: $fe $99
	inc b                                            ; $46b5: $04
	ei                                               ; $46b6: $fb
	inc de                                           ; $46b7: $13
	db $ec                                           ; $46b8: $ec
	ld c, a                                          ; $46b9: $4f
	or b                                             ; $46ba: $b0
	ld d, d                                          ; $46bb: $52
	or h                                             ; $46bc: $b4
	cp $76                                           ; $46bd: $fe $76
	call z, $fe67                                    ; $46bf: $cc $67 $fe
	ld [hl], l                                       ; $46c2: $75
	sub d                                            ; $46c3: $92
	ld [bc], a                                       ; $46c4: $02
	ret c                                            ; $46c5: $d8

	inc bc                                           ; $46c6: $03
	cp $03                                           ; $46c7: $fe $03
	cp $03                                           ; $46c9: $fe $03
	cp $6f                                           ; $46cb: $fe $6f
	cp $7f                                           ; $46cd: $fe $7f
	ld [hl], b                                       ; $46cf: $70
	ld [hl], a                                       ; $46d0: $77
	ld c, [hl]                                       ; $46d1: $4e
	ld e, a                                          ; $46d2: $5f
	ldh a, [$99]                                     ; $46d3: $f0 $99
	inc sp                                           ; $46d5: $33
	call z, $33cc                                    ; $46d6: $cc $cc $33
	inc sp                                           ; $46d9: $33
	call z, $f267                                    ; $46da: $cc $67 $f2
	sub a                                            ; $46dd: $97
	sub h                                            ; $46de: $94
	ld l, e                                          ; $46df: $6b
	ld h, e                                          ; $46e0: $63
	sbc h                                            ; $46e1: $9c
	sbc h                                            ; $46e2: $9c
	ld h, e                                          ; $46e3: $63
	ld a, a                                          ; $46e4: $7f
	add b                                            ; $46e5: $80
	ld h, a                                          ; $46e6: $67
	ldh a, [$9d]                                     ; $46e7: $f0 $9d
	ret z                                            ; $46e9: $c8

	scf                                              ; $46ea: $37
	ld [hl], a                                       ; $46eb: $77
	ldh [$5c], a                                     ; $46ec: $e0 $5c
	ldh [$9b], a                                     ; $46ee: $e0 $9b
	add h                                            ; $46f0: $84
	ld a, e                                          ; $46f1: $7b
	ld [hl-], a                                      ; $46f2: $32
	call $d05f                                       ; $46f3: $cd $5f $d0
	sbc e                                            ; $46f6: $9b
	ld hl, $c4de                                     ; $46f7: $21 $de $c4
	dec sp                                           ; $46fa: $3b
	ld [hl], a                                       ; $46fb: $77
	ldh [$97], a                                     ; $46fc: $e0 $97
	ccf                                              ; $46fe: $3f
	ret nz                                           ; $46ff: $c0

	nop                                              ; $4700: $00
	rst $38                                          ; $4701: $ff
	ld [bc], a                                       ; $4702: $02
	db $fd                                           ; $4703: $fd
	ld c, h                                          ; $4704: $4c
	or e                                             ; $4705: $b3
	ld l, a                                          ; $4706: $6f
	db $f4                                           ; $4707: $f4
	ld [hl], a                                       ; $4708: $77
	push hl                                          ; $4709: $e5
	ld a, a                                          ; $470a: $7f
	db $fd                                           ; $470b: $fd
	sub a                                            ; $470c: $97
	inc [hl]                                         ; $470d: $34
	set 1, e                                         ; $470e: $cb $cb
	inc [hl]                                         ; $4710: $34
	inc a                                            ; $4711: $3c
	jp $04fb                                         ; $4712: $c3 $fb $04


	ld l, a                                          ; $4715: $6f
	rst JumpTable                                          ; $4716: $c7
	ld a, a                                          ; $4717: $7f
	adc d                                            ; $4718: $8a
	sub a                                            ; $4719: $97
	ld b, h                                          ; $471a: $44
	cp e                                             ; $471b: $bb
	inc sp                                           ; $471c: $33
	call z, $32cd                                    ; $471d: $cc $cd $32
	ld a, e                                          ; $4720: $7b
	add h                                            ; $4721: $84
	ld l, a                                          ; $4722: $6f
	ldh a, [$7f]                                     ; $4723: $f0 $7f
	db $f4                                           ; $4725: $f4
	sub e                                            ; $4726: $93
	rst GetHLinHL                                          ; $4727: $cf
	jr nc, @+$42                                     ; $4728: $30 $40

	sbc a                                            ; $472a: $9f
	add b                                            ; $472b: $80
	rra                                              ; $472c: $1f
	rlca                                             ; $472d: $07
	rra                                              ; $472e: $1f
	nop                                              ; $472f: $00
	jr jr_040_4732                                   ; $4730: $18 $00

jr_040_4732:
	rra                                              ; $4732: $1f
	rst AddAOntoHL                                          ; $4733: $ef
	ld c, h                                          ; $4734: $4c
	ld h, b                                          ; $4735: $60
	ld a, a                                          ; $4736: $7f
	cp $6f                                           ; $4737: $fe $6f
	sub b                                            ; $4739: $90
	sub l                                            ; $473a: $95
	add hl, bc                                       ; $473b: $09
	or $44                                           ; $473c: $f6 $44
	cp e                                             ; $473e: $bb
	sbc c                                            ; $473f: $99
	ld h, [hl]                                       ; $4740: $66
	ld h, [hl]                                       ; $4741: $66
	sbc c                                            ; $4742: $99
	sbc a                                            ; $4743: $9f
	ld h, b                                          ; $4744: $60
	ld h, a                                          ; $4745: $67
	ldh a, [$99]                                     ; $4746: $f0 $99
	ld h, $d9                                        ; $4748: $26 $d9
	sbc c                                            ; $474a: $99
	ld h, [hl]                                       ; $474b: $66
	ld a, a                                          ; $474c: $7f
	add b                                            ; $474d: $80
	ld h, a                                          ; $474e: $67
	ld h, b                                          ; $474f: $60
	ld [hl], a                                       ; $4750: $77
	db $e4                                           ; $4751: $e4
	sbc l                                            ; $4752: $9d
	ld sp, hl                                        ; $4753: $f9
	ld b, $6f                                        ; $4754: $06 $6f
	add b                                            ; $4756: $80
	ld l, a                                          ; $4757: $6f
	ldh a, [$9d]                                     ; $4758: $f0 $9d
	ld l, a                                          ; $475a: $6f
	sub b                                            ; $475b: $90
	ld l, a                                          ; $475c: $6f
	sub b                                            ; $475d: $90
	ld h, a                                          ; $475e: $67
	ldh a, [$9d]                                     ; $475f: $f0 $9d
	rst AddAOntoHL                                          ; $4761: $ef
	db $10                                           ; $4762: $10
	ld l, a                                          ; $4763: $6f
	ldh a, [$7f]                                     ; $4764: $f0 $7f
	ret z                                            ; $4766: $c8

	sbc c                                            ; $4767: $99
	add hl, de                                       ; $4768: $19
	and $67                                          ; $4769: $e6 $67
	sbc b                                            ; $476b: $98
	sbc a                                            ; $476c: $9f
	ld h, b                                          ; $476d: $60
	ld h, [hl]                                       ; $476e: $66
	ld sp, hl                                        ; $476f: $f9
	sub a                                            ; $4770: $97
	ld b, b                                          ; $4771: $40
	cp a                                             ; $4772: $bf
	or e                                             ; $4773: $b3
	ld c, h                                          ; $4774: $4c
	call z, $f333                                    ; $4775: $cc $33 $f3
	inc c                                            ; $4778: $0c
	ld h, a                                          ; $4779: $67
	ldh a, [$9d]                                     ; $477a: $f0 $9d
	adc b                                            ; $477c: $88
	ld [hl], a                                       ; $477d: $77
	ld l, a                                          ; $477e: $6f
	ld [$fe67], sp                                   ; $477f: $08 $67 $fe
	sbc e                                            ; $4782: $9b
	ld c, l                                          ; $4783: $4d
	or d                                             ; $4784: $b2
	inc sp                                           ; $4785: $33
	call z, $c467                                    ; $4786: $cc $67 $c4
	ld c, a                                          ; $4789: $4f
	cp $9c                                           ; $478a: $fe $9c
	cp $00                                           ; $478c: $fe $00
	db $fc                                           ; $478e: $fc
	ld a, e                                          ; $478f: $7b
	cp $6f                                           ; $4790: $fe $6f
	or $8f                                           ; $4792: $f6 $8f
	adc h                                            ; $4794: $8c
	nop                                              ; $4795: $00
	ld c, $01                                        ; $4796: $0e $01
	inc c                                            ; $4798: $0c
	inc bc                                           ; $4799: $03
	ld c, h                                          ; $479a: $4c
	ld b, e                                          ; $479b: $43
	call z, $80c3                                    ; $479c: $cc $c3 $80
	ccf                                              ; $479f: $3f
	ccf                                              ; $47a0: $3f
	ld a, a                                          ; $47a1: $7f
	nop                                              ; $47a2: $00
	cp a                                             ; $47a3: $bf
	ei                                               ; $47a4: $fb
	sbc $3f                                          ; $47a5: $de $3f
	sbc [hl]                                         ; $47a7: $9e
	inc h                                            ; $47a8: $24
	ld a, e                                          ; $47a9: $7b
	ld e, h                                          ; $47aa: $5c
	ld a, l                                          ; $47ab: $7d
	db $fd                                           ; $47ac: $fd
	ld a, [hl]                                       ; $47ad: $7e
	xor d                                            ; $47ae: $aa
	db $fc                                           ; $47af: $fc
	rst SubAFromDE                                          ; $47b0: $df
	cp $9e                                           ; $47b1: $fe $9e
	db $fd                                           ; $47b3: $fd
	inc sp                                           ; $47b4: $33
	or [hl]                                          ; $47b5: $b6
	rla                                              ; $47b6: $17
	cp $93                                           ; $47b7: $fe $93
	or $00                                           ; $47b9: $f6 $00
	sbc b                                            ; $47bb: $98
	ld bc, $00f0                                     ; $47bc: $01 $f0 $00
	jp $c300                                         ; $47bf: $c3 $00 $c3


	ld [$10cb], sp                                   ; $47c2: $08 $cb $10
	ld [hl], a                                       ; $47c5: $77
	cp $fe                                           ; $47c6: $fe $fe
	sbc e                                            ; $47c8: $9b
	rst $38                                          ; $47c9: $ff
	ld b, b                                          ; $47ca: $40
	ccf                                              ; $47cb: $3f
	ld b, a                                          ; $47cc: $47
	ld h, e                                          ; $47cd: $63
	cp $06                                           ; $47ce: $fe $06
	ret nz                                           ; $47d0: $c0

	ld h, a                                          ; $47d1: $67
	cp b                                             ; $47d2: $b8
	sbc [hl]                                         ; $47d3: $9e
	db $fd                                           ; $47d4: $fd

jr_040_47d5:
	ld a, e                                          ; $47d5: $7b
	cp $9c                                           ; $47d6: $fe $9c
	dec e                                            ; $47d8: $1d
	nop                                              ; $47d9: $00
	dec b                                            ; $47da: $05
	ld [hl], e                                       ; $47db: $73
	db $f4                                           ; $47dc: $f4
	sbc h                                            ; $47dd: $9c
	sbc a                                            ; $47de: $9f
	nop                                              ; $47df: $00
	rlca                                             ; $47e0: $07
	ld a, e                                          ; $47e1: $7b
	cp $99                                           ; $47e2: $fe $99
	ld b, a                                          ; $47e4: $47
	add b                                            ; $47e5: $80
	ld b, b                                          ; $47e6: $40
	add b                                            ; $47e7: $80
	nop                                              ; $47e8: $00
	ld bc, $9457                                     ; $47e9: $01 $57 $94
	ld a, [hl]                                       ; $47ec: $7e
	ld [hl], c                                       ; $47ed: $71
	sbc [hl]                                         ; $47ee: $9e
	rra                                              ; $47ef: $1f
	ld a, d                                          ; $47f0: $7a
	xor [hl]                                         ; $47f1: $ae
	ld a, a                                          ; $47f2: $7f
	sub d                                            ; $47f3: $92
	sub [hl]                                         ; $47f4: $96
	db $f4                                           ; $47f5: $f4
	ld [bc], a                                       ; $47f6: $02
	db $f4                                           ; $47f7: $f4
	ld [bc], a                                       ; $47f8: $02
	ldh a, [rP1]                                     ; $47f9: $f0 $00
	pop hl                                           ; $47fb: $e1
	nop                                              ; $47fc: $00
	pop bc                                           ; $47fd: $c1
	ld a, e                                          ; $47fe: $7b
	cp $ff                                           ; $47ff: $fe $ff
	ld a, a                                          ; $4801: $7f
	db $db                                           ; $4802: $db
	rst SubAFromDE                                          ; $4803: $df
	ld [hl], $77                                     ; $4804: $36 $77
	ld a, [$e67f]                                    ; $4806: $fa $7f $e6
	sbc d                                            ; $4809: $9a
	ret z                                            ; $480a: $c8

	jr nc, jr_040_47d5                               ; $480b: $30 $c8

	jr nc, jr_040_488e                               ; $480d: $30 $7f

	db $fd                                           ; $480f: $fd
	sbc [hl]                                         ; $4810: $9e
	ld b, h                                          ; $4811: $44
	ld a, e                                          ; $4812: $7b
	cp $76                                           ; $4813: $fe $76
	and h                                            ; $4815: $a4
	sbc h                                            ; $4816: $9c
	nop                                              ; $4817: $00
	rrca                                             ; $4818: $0f
	rrca                                             ; $4819: $0f
	ld e, a                                          ; $481a: $5f
	call nz, $ef9e                                   ; $481b: $c4 $9e $ef
	ld a, e                                          ; $481e: $7b
	xor h                                            ; $481f: $ac
	sbc l                                            ; $4820: $9d
	rst FarCall                                          ; $4821: $f7
	ldh a, [$5f]                                     ; $4822: $f0 $5f
	or d                                             ; $4824: $b2
	sbc [hl]                                         ; $4825: $9e
	ld hl, sp+$73                                    ; $4826: $f8 $73
	cp $7f                                           ; $4828: $fe $7f
	ld hl, sp-$62                                    ; $482a: $f8 $9e
	rst SubAFromBC                                          ; $482c: $e7
	ld [hl], a                                       ; $482d: $77
	ld b, d                                          ; $482e: $42
	ld a, e                                          ; $482f: $7b
	cp $9e                                           ; $4830: $fe $9e
	ld b, e                                          ; $4832: $43
	ld [hl], e                                       ; $4833: $73
	cp $76                                           ; $4834: $fe $76
	call z, $a47f                                    ; $4836: $cc $7f $a4
	ld l, a                                          ; $4839: $6f
	cp $7d                                           ; $483a: $fe $7d
	jp $fe7f                                         ; $483c: $c3 $7f $fe


	sbc d                                            ; $483f: $9a
	call z, wMemCopies+3*(NUM_WRAM_MEM_COPIES-$1f)                                    ; $4840: $cc $83 $cc
	inc bc                                           ; $4843: $03
	inc c                                            ; $4844: $0c
	ld a, e                                          ; $4845: $7b
	cp $76                                           ; $4846: $fe $76
	call nz, $f477                                   ; $4848: $c4 $77 $f4
	sbc l                                            ; $484b: $9d
	dec de                                           ; $484c: $1b
	inc b                                            ; $484d: $04
	ld h, [hl]                                       ; $484e: $66
	add $9d                                          ; $484f: $c6 $9d
	dec de                                           ; $4851: $1b
	inc h                                            ; $4852: $24
	db $fd                                           ; $4853: $fd
	sbc [hl]                                         ; $4854: $9e
	db $ed                                           ; $4855: $ed
	ld [hl], a                                       ; $4856: $77
	ld c, $72                                        ; $4857: $0e $72
	add $6f                                          ; $4859: $c6 $6f
	or $4f                                           ; $485b: $f6 $4f
	and b                                            ; $485d: $a0
	ld h, l                                          ; $485e: $65
	ld d, c                                          ; $485f: $51
	ld a, [hl]                                       ; $4860: $7e
	ld a, [hl]                                       ; $4861: $7e
	sbc h                                            ; $4862: $9c
	ld e, $00                                        ; $4863: $1e $00
	ld b, $7b                                        ; $4865: $06 $7b
	cp $6f                                           ; $4867: $fe $6f
	ldh [$9e], a                                     ; $4869: $e0 $9e
	inc bc                                           ; $486b: $03
	ld a, e                                          ; $486c: $7b
	cp $9c                                           ; $486d: $fe $9c
	ld [$0070], sp                                   ; $486f: $08 $70 $00
	ld [hl], e                                       ; $4872: $73
	db $fc                                           ; $4873: $fc
	sbc l                                            ; $4874: $9d
	jp $7310                                         ; $4875: $c3 $10 $73


	add d                                            ; $4878: $82
	ld a, d                                          ; $4879: $7a
	jp nz, Jump_040_4b9e                             ; $487a: $c2 $9e $4b

	ld a, e                                          ; $487d: $7b
	cp $9d                                           ; $487e: $fe $9d
	ld b, e                                          ; $4880: $43
	db $10                                           ; $4881: $10
	ld e, [hl]                                       ; $4882: $5e
	add $02                                          ; $4883: $c6 $02
	ret nz                                           ; $4885: $c0

	ld l, l                                          ; $4886: $6d
	add b                                            ; $4887: $80
	ld [hl], e                                       ; $4888: $73
	adc e                                            ; $4889: $8b
	rst SubAFromDE                                          ; $488a: $df
	rst $38                                          ; $488b: $ff
	sbc d                                            ; $488c: $9a
	db $ec                                           ; $488d: $ec

jr_040_488e:
	jr @-$12                                         ; $488e: $18 $ec

	jr @+$0a                                         ; $4890: $18 $08

	ld a, e                                          ; $4892: $7b
	cp $67                                           ; $4893: $fe $67
	ldh a, [rPCM34]                                  ; $4895: $f0 $77
	db $f4                                           ; $4897: $f4
	ld [hl], a                                       ; $4898: $77
	cp $7a                                           ; $4899: $fe $7a
	call z, $f073                                    ; $489b: $cc $73 $f0
	sbc l                                            ; $489e: $9d
	rrca                                             ; $489f: $0f
	jr jr_040_4911                                   ; $48a0: $18 $6f

	cp $72                                           ; $48a2: $fe $72
	call z, $ffde                                    ; $48a4: $cc $de $ff
	sbc l                                            ; $48a7: $9d
	ret                                              ; $48a8: $c9


	jr jr_040_491a                                   ; $48a9: $18 $6f

	cp $77                                           ; $48ab: $fe $77
	inc e                                            ; $48ad: $1c
	ld [hl], a                                       ; $48ae: $77
	ldh a, [$9d]                                     ; $48af: $f0 $9d
	ret z                                            ; $48b1: $c8

	jr jr_040_4923                                   ; $48b2: $18 $6f

	cp $47                                           ; $48b4: $fe $47
	ret nz                                           ; $48b6: $c0

	ld a, [hl]                                       ; $48b7: $7e
	call z, $4a7b                                    ; $48b8: $cc $7b $4a
	ld e, e                                          ; $48bb: $5b
	ldh a, [$7b]                                     ; $48bc: $f0 $7b
	jp nc, $f053                                     ; $48be: $d2 $53 $f0

	ld b, a                                          ; $48c1: $47
	ret nc                                           ; $48c2: $d0

	daa                                              ; $48c3: $27
	ldh a, [$9d]                                     ; $48c4: $f0 $9d
	inc c                                            ; $48c6: $0c
	jr @+$71                                         ; $48c7: $18 $6f

	cp $67                                           ; $48c9: $fe $67
	ldh a, [$9c]                                     ; $48cb: $f0 $9c
	add sp, $18                                      ; $48cd: $e8 $18
	add sp, $53                                      ; $48cf: $e8 $53
	sub b                                            ; $48d1: $90
	ld [hl], a                                       ; $48d2: $77
	db $f4                                           ; $48d3: $f4
	sbc [hl]                                         ; $48d4: $9e
	adc b                                            ; $48d5: $88
	ld a, e                                          ; $48d6: $7b
	cp $03                                           ; $48d7: $fe $03
	or b                                             ; $48d9: $b0
	dec hl                                           ; $48da: $2b
	ldh a, [$9d]                                     ; $48db: $f0 $9d
	dec bc                                           ; $48dd: $0b
	jr jr_040_494f                                   ; $48de: $18 $6f

	cp $7e                                           ; $48e0: $fe $7e
	ld h, l                                          ; $48e2: $65
	ld l, a                                          ; $48e3: $6f
	ldh a, [$9b]                                     ; $48e4: $f0 $9b
	ld c, d                                          ; $48e6: $4a
	dec a                                            ; $48e7: $3d
	ld c, l                                          ; $48e8: $4d
	ld a, [hl-]                                      ; $48e9: $3a
	ld [hl], a                                       ; $48ea: $77
	db $fc                                           ; $48eb: $fc
	ld b, $c0                                        ; $48ec: $06 $c0
	ld [hl], a                                       ; $48ee: $77
	cp e                                             ; $48ef: $bb
	ld h, h                                          ; $48f0: $64
	ld a, d                                          ; $48f1: $7a
	ld [hl], a                                       ; $48f2: $77
	cp $03                                           ; $48f3: $fe $03
	ldh a, [$03]                                     ; $48f5: $f0 $03
	ldh a, [$03]                                     ; $48f7: $f0 $03
	ldh a, [$03]                                     ; $48f9: $f0 $03
	ldh a, [$03]                                     ; $48fb: $f0 $03
	ldh a, [$03]                                     ; $48fd: $f0 $03
	ldh a, [rBGP]                                    ; $48ff: $f0 $47
	ldh a, [$9e]                                     ; $4901: $f0 $9e
	inc bc                                           ; $4903: $03
	ld c, e                                          ; $4904: $4b
	ldh a, [$df]                                     ; $4905: $f0 $df
	rst $38                                          ; $4907: $ff
	sbc [hl]                                         ; $4908: $9e
	rra                                              ; $4909: $1f
	ld c, e                                          ; $490a: $4b
	ldh a, [$dd]                                     ; $490b: $f0 $dd
	rst $38                                          ; $490d: $ff
	ld [hl], h                                       ; $490e: $74
	db $d3                                           ; $490f: $d3
	ld d, a                                          ; $4910: $57

jr_040_4911:
	ldh a, [$dd]                                     ; $4911: $f0 $dd
	rst $38                                          ; $4913: $ff
	ld bc, $5480                                     ; $4914: $01 $80 $54
	ld e, a                                          ; $4917: $5f
	ld [hl], a                                       ; $4918: $77
	ret nc                                           ; $4919: $d0

jr_040_491a:
	dec de                                           ; $491a: $1b
	ldh a, [$9e]                                     ; $491b: $f0 $9e
	ccf                                              ; $491d: $3f
	ld c, e                                          ; $491e: $4b
	ldh a, [$73]                                     ; $491f: $f0 $73
	and b                                            ; $4921: $a0
	inc hl                                           ; $4922: $23

jr_040_4923:
	ldh a, [$7f]                                     ; $4923: $f0 $7f
	ld e, [hl]                                       ; $4925: $5e
	ld c, a                                          ; $4926: $4f
	ldh a, [rOCPD]                                   ; $4927: $f0 $6b
	ld [hl], b                                       ; $4929: $70
	ld d, e                                          ; $492a: $53
	ldh a, [$58]                                     ; $492b: $f0 $58
	ld sp, $e24b                                     ; $492d: $31 $4b $e2
	ld a, a                                          ; $4930: $7f
	ld c, $03                                        ; $4931: $0e $03
	jp nz, $f05b                                     ; $4933: $c2 $5b $f0

jr_040_4936:
	ld a, a                                          ; $4936: $7f
	ld b, $4f                                        ; $4937: $06 $4f
	ldh a, [$63]                                     ; $4939: $f0 $63
	ld [bc], a                                       ; $493b: $02
	ld d, e                                          ; $493c: $53
	ldh a, [$9e]                                     ; $493d: $f0 $9e
	ld hl, sp+$13                                    ; $493f: $f8 $13
	ldh [c], a                                       ; $4941: $e2
	dec hl                                           ; $4942: $2b
	ldh a, [$0a]                                     ; $4943: $f0 $0a
	ret nz                                           ; $4945: $c0

	ld l, a                                          ; $4946: $6f
	db $db                                           ; $4947: $db
	sbc b                                            ; $4948: $98
	cp a                                             ; $4949: $bf
	ld b, b                                          ; $494a: $40
	rst SubAFromDE                                          ; $494b: $df
	jr nz, jr_040_4936                               ; $494c: $20 $e8

	rla                                              ; $494e: $17

jr_040_494f:
	rlca                                             ; $494f: $07
	ld l, e                                          ; $4950: $6b
	res 3, e                                         ; $4951: $cb $9b
	cp $01                                           ; $4953: $fe $01
	pop af                                           ; $4955: $f1
	rrca                                             ; $4956: $0f
	ld h, a                                          ; $4957: $67
	ld l, [hl]                                       ; $4958: $6e
	ld a, a                                          ; $4959: $7f
	ldh a, [c]                                       ; $495a: $f2
	sbc b                                            ; $495b: $98
	rra                                              ; $495c: $1f
	ldh [$e7], a                                     ; $495d: $e0 $e7
	ld hl, sp-$07                                    ; $495f: $f8 $f9
	cp $fe                                           ; $4961: $fe $fe
	ld c, e                                          ; $4963: $4b
	sbc e                                            ; $4964: $9b
	sbc d                                            ; $4965: $9a
	ld h, b                                          ; $4966: $60
	add b                                            ; $4967: $80
	sbc b                                            ; $4968: $98
	ldh [$e6], a                                     ; $4969: $e0 $e6
	ld a, e                                          ; $496b: $7b
	add sp, $6f                                      ; $496c: $e8 $6f
	ldh a, [c]                                       ; $496e: $f2
	sbc h                                            ; $496f: $9c
	db $fd                                           ; $4970: $fd
	nop                                              ; $4971: $00
	ld a, [hl+]                                      ; $4972: $2a
	halt                                             ; $4973: $76
	ld [hl], h                                       ; $4974: $74
	sbc d                                            ; $4975: $9a
	nop                                              ; $4976: $00
	add b                                            ; $4977: $80
	nop                                              ; $4978: $00
	add b                                            ; $4979: $80
	ld a, a                                          ; $497a: $7f
	ld [hl], a                                       ; $497b: $77
	ldh a, [$98]                                     ; $497c: $f0 $98
	ld e, l                                          ; $497e: $5d
	nop                                              ; $497f: $00
	xor d                                            ; $4980: $aa
	nop                                              ; $4981: $00
	ld d, [hl]                                       ; $4982: $56
	nop                                              ; $4983: $00
	rlca                                             ; $4984: $07
	ld l, h                                          ; $4985: $6c
	db $e4                                           ; $4986: $e4
	ld a, e                                          ; $4987: $7b
	ldh a, [$9e]                                     ; $4988: $f0 $9e
	ld d, l                                          ; $498a: $55
	ld a, e                                          ; $498b: $7b
	ldh a, [$9e]                                     ; $498c: $f0 $9e
	dec b                                            ; $498e: $05
	ld a, e                                          ; $498f: $7b
	ldh [c], a                                       ; $4990: $e2
	sbc [hl]                                         ; $4991: $9e
	ld h, b                                          ; $4992: $60
	ld a, e                                          ; $4993: $7b
	ldh a, [$9d]                                     ; $4994: $f0 $9d
	ld a, [$7705]                                    ; $4996: $fa $05 $77
	xor $7f                                          ; $4999: $ee $7f
	ldh a, [$7f]                                     ; $499b: $f0 $7f
	db $ec                                           ; $499d: $ec
	ld l, h                                          ; $499e: $6c
	call nz, $aa9d                                   ; $499f: $c4 $9d $aa
	ld d, l                                          ; $49a2: $55
	ld h, a                                          ; $49a3: $67
	ldh a, [rPCM34]                                  ; $49a4: $f0 $77
	call c, $f077                                    ; $49a6: $dc $77 $f0
	sbc l                                            ; $49a9: $9d
	push af                                          ; $49aa: $f5
	ld a, [bc]                                       ; $49ab: $0a
	ld a, e                                          ; $49ac: $7b
	ld l, [hl]                                       ; $49ad: $6e
	ld [hl], e                                       ; $49ae: $73
	ldh a, [$7b]                                     ; $49af: $f0 $7b
	call c, $f07b                                    ; $49b1: $dc $7b $f0
	sbc l                                            ; $49b4: $9d
	ld d, l                                          ; $49b5: $55
	xor d                                            ; $49b6: $aa
	ld h, a                                          ; $49b7: $67
	cp h                                             ; $49b8: $bc
	ld [hl], a                                       ; $49b9: $77
	ldh a, [$7f]                                     ; $49ba: $f0 $7f
	cp $9d                                           ; $49bc: $fe $9d
	ld d, h                                          ; $49be: $54
	xor e                                            ; $49bf: $ab
	ld l, a                                          ; $49c0: $6f
	call z, $ab9e                                    ; $49c1: $cc $9e $ab
	ld l, e                                          ; $49c4: $6b
	ldh a, [$7f]                                     ; $49c5: $f0 $7f
	cp $9b                                           ; $49c7: $fe $9b
	and b                                            ; $49c9: $a0
	ld e, a                                          ; $49ca: $5f
	push de                                          ; $49cb: $d5
	ld a, [hl+]                                      ; $49cc: $2a
	ld l, a                                          ; $49cd: $6f
	call c, $f06f                                    ; $49ce: $dc $6f $f0
	sbc c                                            ; $49d1: $99
	ld a, [bc]                                       ; $49d2: $0a
	push af                                          ; $49d3: $f5
	ld d, l                                          ; $49d4: $55
	xor d                                            ; $49d5: $aa
	ld [$7315], a                                    ; $49d6: $ea $15 $73
	ld bc, $e06b                                     ; $49d9: $01 $6b $e0
	ld a, a                                          ; $49dc: $7f
	ldh a, [$7f]                                     ; $49dd: $f0 $7f
	call z, $fd9d                                    ; $49df: $cc $9d $fd
	ld [bc], a                                       ; $49e2: $02
	ld e, l                                          ; $49e3: $5d
	ld h, [hl]                                       ; $49e4: $66
	sbc l                                            ; $49e5: $9d
	ld d, b                                          ; $49e6: $50
	xor a                                            ; $49e7: $af
	ld [hl], a                                       ; $49e8: $77
	xor b                                            ; $49e9: $a8
	ld a, a                                          ; $49ea: $7f
	ld d, $5e                                        ; $49eb: $16 $5e
	ld l, [hl]                                       ; $49ed: $6e
	sbc c                                            ; $49ee: $99
	xor b                                            ; $49ef: $a8
	ld d, a                                          ; $49f0: $57
	ld d, l                                          ; $49f1: $55
	xor d                                            ; $49f2: $aa
	cp d                                             ; $49f3: $ba
	ld b, a                                          ; $49f4: $47
	ld d, l                                          ; $49f5: $55
	ldh a, [$9d]                                     ; $49f6: $f0 $9d
	ld b, b                                          ; $49f8: $40
	cp a                                             ; $49f9: $bf
	ld a, e                                          ; $49fa: $7b
	add a                                            ; $49fb: $87
	ld a, [bc]                                       ; $49fc: $0a
	ret nz                                           ; $49fd: $c0

	ld a, a                                          ; $49fe: $7f
	ld de, $ffd7                                     ; $49ff: $11 $d7 $ff
	sbc h                                            ; $4a02: $9c
	cp e                                             ; $4a03: $bb
	rst $38                                          ; $4a04: $ff
	ld l, h                                          ; $4a05: $6c
	jp nc, $9eff                                     ; $4a06: $d2 $ff $9e

	or $d2                                           ; $4a09: $f6 $d2
	rst $38                                          ; $4a0b: $ff
	sbc l                                            ; $4a0c: $9d
	db $dd                                           ; $4a0d: $dd
	rst $38                                          ; $4a0e: $ff
	ld h, d                                          ; $4a0f: $62
	cp b                                             ; $4a10: $b8
	jp c, Jump_040_7eff                              ; $4a11: $da $ff $7e

	cp b                                             ; $4a14: $b8
	sbc [hl]                                         ; $4a15: $9e
	sbc a                                            ; $4a16: $9f
	ld [hl], d                                       ; $4a17: $72
	cp b                                             ; $4a18: $b8
	ld h, a                                          ; $4a19: $67
	add sp, $77                                      ; $4a1a: $e8 $77
	ld l, a                                          ; $4a1c: $6f
	halt                                             ; $4a1d: $76
	cp b                                             ; $4a1e: $b8
	ld e, [hl]                                       ; $4a1f: $5e
	and b                                            ; $4a20: $a0
	sbc [hl]                                         ; $4a21: $9e
	sbc h                                            ; $4a22: $9c
	ld a, d                                          ; $4a23: $7a
	cp b                                             ; $4a24: $b8
	halt                                             ; $4a25: $76
	and h                                            ; $4a26: $a4
	ld [hl], d                                       ; $4a27: $72
	db $d3                                           ; $4a28: $d3
	ld l, d                                          ; $4a29: $6a
	cpl                                              ; $4a2a: $2f
	sbc b                                            ; $4a2b: $98
	ret nz                                           ; $4a2c: $c0

	nop                                              ; $4a2d: $00
	ld [hl], b                                       ; $4a2e: $70
	nop                                              ; $4a2f: $00
	inc e                                            ; $4a30: $1c
	nop                                              ; $4a31: $00
	rrca                                             ; $4a32: $0f
	ld c, d                                          ; $4a33: $4a
	rra                                              ; $4a34: $1f
	ld a, a                                          ; $4a35: $7f
	db $f4                                           ; $4a36: $f4
	ld a, a                                          ; $4a37: $7f
	add sp, $7f                                      ; $4a38: $e8 $7f
	db $fc                                           ; $4a3a: $fc
	sbc [hl]                                         ; $4a3b: $9e
	dec d                                            ; $4a3c: $15
	ld h, e                                          ; $4a3d: $63
	ld d, [hl]                                       ; $4a3e: $56
	sbc [hl]                                         ; $4a3f: $9e
	cp $73                                           ; $4a40: $fe $73
	db $ec                                           ; $4a42: $ec
	sbc h                                            ; $4a43: $9c
	ld b, b                                          ; $4a44: $40
	nop                                              ; $4a45: $00
	jr c, jr_040_4aba                                ; $4a46: $38 $72

	halt                                             ; $4a48: $76
	ld l, a                                          ; $4a49: $6f
	sub $67                                          ; $4a4a: $d6 $67
	ldh [$98], a                                     ; $4a4c: $e0 $98
	jp $fc00                                         ; $4a4e: $c3 $00 $fc


	nop                                              ; $4a51: $00
	jr nc, jr_040_4a54                               ; $4a52: $30 $00

jr_040_4a54:
	inc c                                            ; $4a54: $0c
	ld [hl], d                                       ; $4a55: $72
	call z, Call_040_447e                            ; $4a56: $cc $7e $44
	ld a, [hl]                                       ; $4a59: $7e
	adc b                                            ; $4a5a: $88
	ld h, a                                          ; $4a5b: $67
	cp b                                             ; $4a5c: $b8
	ld a, a                                          ; $4a5d: $7f
	ld hl, sp-$62                                    ; $4a5e: $f8 $9e
	ld d, a                                          ; $4a60: $57
	ld [hl], d                                       ; $4a61: $72
	sbc b                                            ; $4a62: $98
	ld e, a                                          ; $4a63: $5f
	ldh a, [$6e]                                     ; $4a64: $f0 $6e
	sbc b                                            ; $4a66: $98
	ld [hl], a                                       ; $4a67: $77
	ret c                                            ; $4a68: $d8

	sbc [hl]                                         ; $4a69: $9e
	ld [bc], a                                       ; $4a6a: $02
	ld l, e                                          ; $4a6b: $6b
	ldh a, [$7f]                                     ; $4a6c: $f0 $7f
	cp $9e                                           ; $4a6e: $fe $9e
	ld e, a                                          ; $4a70: $5f
	ld h, d                                          ; $4a71: $62
	ld [hl], b                                       ; $4a72: $70
	ld a, [hl]                                       ; $4a73: $7e
	ld d, h                                          ; $4a74: $54
	ld a, [hl]                                       ; $4a75: $7e
	cp h                                             ; $4a76: $bc
	ld h, a                                          ; $4a77: $67
	db $ec                                           ; $4a78: $ec
	ld [hl], a                                       ; $4a79: $77
	ldh a, [rPCM12]                                  ; $4a7a: $f0 $76
	sbc b                                            ; $4a7c: $98
	ld e, [hl]                                       ; $4a7d: $5e
	cp l                                             ; $4a7e: $bd
	ld a, a                                          ; $4a7f: $7f
	or h                                             ; $4a80: $b4
	ld b, $c0                                        ; $4a81: $06 $c0
	sbc h                                            ; $4a83: $9c
	sub c                                            ; $4a84: $91
	rst $38                                          ; $4a85: $ff
	ld l, b                                          ; $4a86: $68
	ld d, b                                          ; $4a87: $50
	ld a, h                                          ; $4a88: $7c
	sbc c                                            ; $4a89: $99
	dec sp                                           ; $4a8a: $3b
	rst $38                                          ; $4a8b: $ff
	inc b                                            ; $4a8c: $04
	rst $38                                          ; $4a8d: $ff
	ld [bc], a                                       ; $4a8e: $02
	rst $38                                          ; $4a8f: $ff
	ld l, e                                          ; $4a90: $6b
	xor l                                            ; $4a91: $ad
	ld a, e                                          ; $4a92: $7b
	cp $9a                                           ; $4a93: $fe $9a
	scf                                              ; $4a95: $37
	rst $38                                          ; $4a96: $ff
	ret z                                            ; $4a97: $c8

	rst $38                                          ; $4a98: $ff
	ld hl, $f87b                                     ; $4a99: $21 $7b $f8
	sbc b                                            ; $4a9c: $98
	add b                                            ; $4a9d: $80
	rst $38                                          ; $4a9e: $ff
	ld b, b                                          ; $4a9f: $40
	rst $38                                          ; $4aa0: $ff
	jr nz, @+$01                                     ; $4aa1: $20 $ff

	jr jr_040_4b1d                                   ; $4aa3: $18 $78

	inc a                                            ; $4aa5: $3c
	sbc [hl]                                         ; $4aa6: $9e
	rst GetHLinHL                                          ; $4aa7: $cf
	ld a, e                                          ; $4aa8: $7b
	sbc $67                                          ; $4aa9: $de $67
	ldh [$71], a                                     ; $4aab: $e0 $71
	ld c, [hl]                                       ; $4aad: $4e
	sbc e                                            ; $4aae: $9b
	rst $38                                          ; $4aaf: $ff
	set 7, a                                         ; $4ab0: $cb $ff
	dec d                                            ; $4ab2: $15
	ld a, e                                          ; $4ab3: $7b
	call z, $066d                                    ; $4ab4: $cc $6d $06
	ld l, [hl]                                       ; $4ab7: $6e
	cp b                                             ; $4ab8: $b8
	sbc h                                            ; $4ab9: $9c

jr_040_4aba:
	sbc a                                            ; $4aba: $9f
	rst $38                                          ; $4abb: $ff
	ld h, e                                          ; $4abc: $63
	ld a, e                                          ; $4abd: $7b
	call nc, $069e                                   ; $4abe: $d4 $9e $06
	ld [hl], d                                       ; $4ac1: $72
	and b                                            ; $4ac2: $a0
	ld l, [hl]                                       ; $4ac3: $6e
	cp b                                             ; $4ac4: $b8
	ld [hl], a                                       ; $4ac5: $77
	add sp, $74                                      ; $4ac6: $e8 $74
	ld l, $fb                                        ; $4ac8: $2e $fb
	ld e, [hl]                                       ; $4aca: $5e
	and b                                            ; $4acb: $a0
	ld a, l                                          ; $4acc: $7d
	ld l, [hl]                                       ; $4acd: $6e
	sbc h                                            ; $4ace: $9c
	jr jr_040_4ad1                                   ; $4acf: $18 $00

jr_040_4ad1:
	ld b, $5a                                        ; $4ad1: $06 $5a
	and b                                            ; $4ad3: $a0
	ld h, e                                          ; $4ad4: $63
	ldh [$7b], a                                     ; $4ad5: $e0 $7b
	add sp, $76                                      ; $4ad7: $e8 $76
	and b                                            ; $4ad9: $a0
	push af                                          ; $4ada: $f5
	ld a, a                                          ; $4adb: $7f
	ldh a, [c]                                       ; $4adc: $f2
	ld a, a                                          ; $4add: $7f
	add sp, -$62                                     ; $4ade: $e8 $9e
	inc bc                                           ; $4ae0: $03
	ld d, e                                          ; $4ae1: $53
	ldh a, [rPCM34]                                  ; $4ae2: $f0 $77
	sub $7e                                          ; $4ae4: $d6 $7e
	halt                                             ; $4ae6: $76
	sbc [hl]                                         ; $4ae7: $9e
	ld e, $73                                        ; $4ae8: $1e $73
	ld [$d457], a                                    ; $4aea: $ea $57 $d4
	ld a, a                                          ; $4aed: $7f
	ld [$f27f], a                                    ; $4aee: $ea $7f $f2
	sbc [hl]                                         ; $4af1: $9e
	ld hl, sp+$6d                                    ; $4af2: $f8 $6d
	nop                                              ; $4af4: $00
	ld d, e                                          ; $4af5: $53
	and [hl]                                         ; $4af6: $a6
	ld a, [hl]                                       ; $4af7: $7e
	ld h, b                                          ; $4af8: $60
	sbc [hl]                                         ; $4af9: $9e
	ld a, [bc]                                       ; $4afa: $0a
	ld l, e                                          ; $4afb: $6b
	sub h                                            ; $4afc: $94
	ld h, a                                          ; $4afd: $67
	jp nc, $cc76                                     ; $4afe: $d2 $76 $cc

	ld d, [hl]                                       ; $4b01: $56
	add b                                            ; $4b02: $80
	ld [hl], a                                       ; $4b03: $77
	ldh a, [$7f]                                     ; $4b04: $f0 $7f
	jp nz, Jump_040_7f9e                             ; $4b06: $c2 $9e $7f

	ld a, e                                          ; $4b09: $7b
	sub $9e                                          ; $4b0a: $d6 $9e
	inc a                                            ; $4b0c: $3c
	ld [hl], e                                       ; $4b0d: $73
	xor d                                            ; $4b0e: $aa
	ld d, $00                                        ; $4b0f: $16 $00
	rst SubAFromDE                                          ; $4b11: $df
	ld h, [hl]                                       ; $4b12: $66
	reti                                             ; $4b13: $d9


	inc sp                                           ; $4b14: $33
	ld e, e                                          ; $4b15: $5b
	or $d8                                           ; $4b16: $f6 $d8
	inc sp                                           ; $4b18: $33
	inc sp                                           ; $4b19: $33
	or $d7                                           ; $4b1a: $f6 $d7
	ld h, [hl]                                       ; $4b1c: $66

jr_040_4b1d:
	ret c                                            ; $4b1d: $d8

	ld [hl], a                                       ; $4b1e: $77
	ld e, e                                          ; $4b1f: $5b
	or $d8                                           ; $4b20: $f6 $d8
	ld d, l                                          ; $4b22: $55
	scf                                              ; $4b23: $37
	or $2a                                           ; $4b24: $f6 $2a
	adc c                                            ; $4b26: $89
	jp c, $9e02                                      ; $4b27: $da $02 $9e

	ld bc, $dff9                                     ; $4b2a: $01 $f9 $df
	ld c, a                                          ; $4b2d: $4f
	db $db                                           ; $4b2e: $db
	ld l, a                                          ; $4b2f: $6f
	db $db                                           ; $4b30: $db
	ld b, a                                          ; $4b31: $47
	sbc l                                            ; $4b32: $9d
	ld b, e                                          ; $4b33: $43
	ld h, e                                          ; $4b34: $63
	ld sp, hl                                        ; $4b35: $f9
	reti                                             ; $4b36: $d9


	cp a                                             ; $4b37: $bf
	ld sp, hl                                        ; $4b38: $f9
	reti                                             ; $4b39: $d9


	rst $38                                          ; $4b3a: $ff
	ld b, a                                          ; $4b3b: $47
	ldh a, [$df]                                     ; $4b3c: $f0 $df
	or $de                                           ; $4b3e: $f6 $de
	db $f4                                           ; $4b40: $f4
	rst SubAFromDE                                          ; $4b41: $df
	db $ec                                           ; $4b42: $ec
	sbc [hl]                                         ; $4b43: $9e
	add sp, -$22                                     ; $4b44: $e8 $de
	and b                                            ; $4b46: $a0
	call c, $e0c0                                    ; $4b47: $dc $c0 $e0
	pop de                                           ; $4b4a: $d1
	reti                                             ; $4b4b: $d9


	ldh [$d9], a                                     ; $4b4c: $e0 $d9
	ld b, b                                          ; $4b4e: $40
	pop hl                                           ; $4b4f: $e1
	rst SubAFromDE                                          ; $4b50: $df
	inc l                                            ; $4b51: $2c
	rst SubAFromDE                                          ; $4b52: $df
	ld l, $9b                                        ; $4b53: $2e $9b
	dec hl                                           ; $4b55: $2b
	inc hl                                           ; $4b56: $23
	ld [de], a                                       ; $4b57: $12
	ld [de], a                                       ; $4b58: $12
	reti                                             ; $4b59: $d9


	inc b                                            ; $4b5a: $04
	reti                                             ; $4b5b: $d9


	ret nz                                           ; $4b5c: $c0

	daa                                              ; $4b5d: $27
	ld h, b                                          ; $4b5e: $60
	ccf                                              ; $4b5f: $3f
	ldh a, [$9d]                                     ; $4b60: $f0 $9d
	rra                                              ; $4b62: $1f
	ccf                                              ; $4b63: $3f
	db $dd                                           ; $4b64: $dd
	scf                                              ; $4b65: $37
	rst SubAFromDE                                          ; $4b66: $df
	rst $38                                          ; $4b67: $ff
	sbc c                                            ; $4b68: $99
	ld hl, sp-$19                                    ; $4b69: $f8 $e7
	rst SubAFromBC                                          ; $4b6b: $e7
	ldh [$e4], a                                     ; $4b6c: $e0 $e4
	db $e4                                           ; $4b6e: $e4
	ld [hl], e                                       ; $4b6f: $73
	and $9c                                          ; $4b70: $e6 $9c
	xor $fe                                          ; $4b72: $ee $fe
	cp $7b                                           ; $4b74: $fe $7b
	and $6b                                          ; $4b76: $e6 $6b
	db $d3                                           ; $4b78: $d3
	sbc $ff                                          ; $4b79: $de $ff
	sbc e                                            ; $4b7b: $9b
	dec a                                            ; $4b7c: $3d
	rst $38                                          ; $4b7d: $ff
	rst AddAOntoHL                                          ; $4b7e: $ef
	db $fc                                           ; $4b7f: $fc
	ld [hl], a                                       ; $4b80: $77
	rst FarCall                                          ; $4b81: $f7
	sub a                                            ; $4b82: $97
	ldh [rAUD4LEN], a                                ; $4b83: $e0 $20
	jr nz, jr_040_4b87                               ; $4b85: $20 $00

jr_040_4b87:
	nop                                              ; $4b87: $00
	cp $fc                                           ; $4b88: $fe $fc
	db $fc                                           ; $4b8a: $fc
	sbc $f4                                          ; $4b8b: $de $f4
	sbc d                                            ; $4b8d: $9a
	cp $1c                                           ; $4b8e: $fe $1c
	nop                                              ; $4b90: $00
	cp $fe                                           ; $4b91: $fe $fe
	sbc $0e                                          ; $4b93: $de $0e
	call c, $f601                                    ; $4b95: $dc $01 $f6
	sbc [hl]                                         ; $4b98: $9e
	daa                                              ; $4b99: $27
	db $dd                                           ; $4b9a: $dd
	scf                                              ; $4b9b: $37
	sbc e                                            ; $4b9c: $9b
	or a                                             ; $4b9d: $b7

Jump_040_4b9e:
	cp e                                             ; $4b9e: $bb
	sbc e                                            ; $4b9f: $9b
	ld h, e                                          ; $4ba0: $63
	call c, $df23                                    ; $4ba1: $dc $23 $df
	inc sp                                           ; $4ba4: $33
	ld [bc], a                                       ; $4ba5: $02
	ret nz                                           ; $4ba6: $c0

	ld c, e                                          ; $4ba7: $4b
	ldh a, [$df]                                     ; $4ba8: $f0 $df
	add sp, -$62                                     ; $4baa: $e8 $9e
	ld hl, sp-$24                                    ; $4bac: $f8 $dc
	ldh a, [$d9]                                     ; $4bae: $f0 $d9
	ret nz                                           ; $4bb0: $c0

	ldh [$d1], a                                     ; $4bb1: $e0 $d1
	ld [bc], a                                       ; $4bb3: $02
	ret nz                                           ; $4bb4: $c0

	ldh a, [c]                                       ; $4bb5: $f2
	rst SubAFromDE                                          ; $4bb6: $df
	inc de                                           ; $4bb7: $13
	sbc $11                                          ; $4bb8: $de $11
	sbc d                                            ; $4bba: $9a
	add hl, de                                       ; $4bbb: $19
	dec c                                            ; $4bbc: $0d
	inc c                                            ; $4bbd: $0c
	inc b                                            ; $4bbe: $04
	inc b                                            ; $4bbf: $04
	call c, $9e06                                    ; $4bc0: $dc $06 $9e
	rlca                                             ; $4bc3: $07
	sbc $c0                                          ; $4bc4: $de $c0
	db $dd                                           ; $4bc6: $dd
	rst GetHLinHL                                          ; $4bc7: $cf
	sbc [hl]                                         ; $4bc8: $9e
	rst SubAFromDE                                          ; $4bc9: $df
	ld a, d                                          ; $4bca: $7a
	ldh a, [$97]                                     ; $4bcb: $f0 $97
	ldh a, [$e7]                                     ; $4bcd: $f0 $e7
	db $ec                                           ; $4bcf: $ec
	rst AddAOntoHL                                          ; $4bd0: $ef
	rst AddAOntoHL                                          ; $4bd1: $ef
	nop                                              ; $4bd2: $00
	nop                                              ; $4bd3: $00
	rlca                                             ; $4bd4: $07
	sbc $ff                                          ; $4bd5: $de $ff
	rst SubAFromDE                                          ; $4bd7: $df
	rst FarCall                                          ; $4bd8: $f7
	ld a, e                                          ; $4bd9: $7b
	ld d, [hl]                                       ; $4bda: $56
	ld a, e                                          ; $4bdb: $7b
	rst FarCall                                          ; $4bdc: $f7
	rst SubAFromDE                                          ; $4bdd: $df
	adc $ff                                          ; $4bde: $ce $ff
	sbc $fc                                          ; $4be0: $de $fc
	sbc c                                            ; $4be2: $99
	ld hl, sp+$7e                                    ; $4be3: $f8 $7e
	ld a, [hl]                                       ; $4be5: $7e
	rst $38                                          ; $4be6: $ff
	rst $38                                          ; $4be7: $ff
	inc bc                                           ; $4be8: $03
	sbc $ff                                          ; $4be9: $de $ff
	rst SubAFromDE                                          ; $4beb: $df
	rst SubAFromDE                                          ; $4bec: $df
	reti                                             ; $4bed: $d9


	scf                                              ; $4bee: $37
	sbc d                                            ; $4bef: $9a
	db $e4                                           ; $4bf0: $e4
	rst SubAFromBC                                          ; $4bf1: $e7
	ldh [$e0], a                                     ; $4bf2: $e0 $e0
	ld h, b                                          ; $4bf4: $60
	ld a, e                                          ; $4bf5: $7b
	cp $7a                                           ; $4bf6: $fe $7a
	rst JumpTable                                          ; $4bf8: $c7
	adc l                                            ; $4bf9: $8d
	cp a                                             ; $4bfa: $bf
	ccf                                              ; $4bfb: $3f
	cp a                                             ; $4bfc: $bf
	cp a                                             ; $4bfd: $bf
	rst $38                                          ; $4bfe: $ff
	nop                                              ; $4bff: $00
	db $fc                                           ; $4c00: $fc
	ld b, b                                          ; $4c01: $40
	ld b, b                                          ; $4c02: $40
	ret nz                                           ; $4c03: $c0

	ld b, b                                          ; $4c04: $40
	ld a, a                                          ; $4c05: $7f
	nop                                              ; $4c06: $00
	rst AddAOntoHL                                          ; $4c07: $ef
	rst $38                                          ; $4c08: $ff
	di                                               ; $4c09: $f3
	ei                                               ; $4c0a: $fb
	db $fc                                           ; $4c0b: $fc
	sbc $ff                                          ; $4c0c: $de $ff
	sub l                                            ; $4c0e: $95
	jr nc, @+$41                                     ; $4c0f: $30 $3f

	inc c                                            ; $4c11: $0c
	inc b                                            ; $4c12: $04
	dec bc                                           ; $4c13: $0b
	ld [$0ff8], sp                                   ; $4c14: $08 $f8 $0f
	db $f4                                           ; $4c17: $f4
	db $f4                                           ; $4c18: $f4
	db $dd                                           ; $4c19: $dd
	inc b                                            ; $4c1a: $04
	sbc h                                            ; $4c1b: $9c
	add h                                            ; $4c1c: $84
	adc h                                            ; $4c1d: $8c
	ld c, $dd                                        ; $4c1e: $0e $dd
	cp $df                                           ; $4c20: $fe $df
	ld a, [hl]                                       ; $4c22: $7e
	sbc [hl]                                         ; $4c23: $9e
	or $f1                                           ; $4c24: $f6 $f1
	sub l                                            ; $4c26: $95
	sbc e                                            ; $4c27: $9b
	sub e                                            ; $4c28: $93
	sbc a                                            ; $4c29: $9f
	ld e, a                                          ; $4c2a: $5f
	ld c, a                                          ; $4c2b: $4f
	ld c, e                                          ; $4c2c: $4b
	ld c, a                                          ; $4c2d: $4f
	ld b, a                                          ; $4c2e: $47
	inc sp                                           ; $4c2f: $33
	dec sp                                           ; $4c30: $3b
	sbc $1b                                          ; $4c31: $de $1b
	rst SubAFromDE                                          ; $4c33: $df
	dec e                                            ; $4c34: $1d
	sbc [hl]                                         ; $4c35: $9e
	dec c                                            ; $4c36: $0d
	ld [bc], a                                       ; $4c37: $02
	ret nz                                           ; $4c38: $c0

	ld c, e                                          ; $4c39: $4b
	ldh a, [$9e]                                     ; $4c3a: $f0 $9e
	ldh a, [$db]                                     ; $4c3c: $f0 $db
	ldh [$de], a                                     ; $4c3e: $e0 $de
	ret nz                                           ; $4c40: $c0

	db $db                                           ; $4c41: $db
	add b                                            ; $4c42: $80
	ldh [$db], a                                     ; $4c43: $e0 $db
	ld h, d                                          ; $4c45: $62
	ld a, $9e                                        ; $4c46: $3e $9e
	inc bc                                           ; $4c48: $03
	db $db                                           ; $4c49: $db
	ldh [$9d], a                                     ; $4c4a: $e0 $9d
	cp $0f                                           ; $4c4c: $fe $0f
	ld l, d                                          ; $4c4e: $6a
	jp nz, $a063                                     ; $4c4f: $c2 $63 $a0

	jp hl                                            ; $4c52: $e9


	db $dd                                           ; $4c53: $dd
	inc c                                            ; $4c54: $0c
	rst SubAFromDE                                          ; $4c55: $df
	rlca                                             ; $4c56: $07
	rst SubAFromDE                                          ; $4c57: $df
	inc bc                                           ; $4c58: $03
	db $dd                                           ; $4c59: $dd
	rlca                                             ; $4c5a: $07
	sbc [hl]                                         ; $4c5b: $9e
	inc bc                                           ; $4c5c: $03
	cp $9e                                           ; $4c5d: $fe $9e
	rst SubAFromDE                                          ; $4c5f: $df
	halt                                             ; $4c60: $76
	jp $fb9c                                         ; $4c61: $c3 $9c $fb


	ldh [rIE], a                                     ; $4c64: $e0 $ff
	call c, $9cef                                    ; $4c66: $dc $ef $9c
	rst SubAFromHL                                          ; $4c69: $d7
	ret nz                                           ; $4c6a: $c0

	ret nz                                           ; $4c6b: $c0

	call c, $9df7                                    ; $4c6c: $dc $f7 $9d
	ei                                               ; $4c6f: $fb
	rra                                              ; $4c70: $1f
	ld a, d                                          ; $4c71: $7a
	add $de                                          ; $4c72: $c6 $de
	adc $9c                                          ; $4c74: $ce $9c
	rst $38                                          ; $4c76: $ff
	rlca                                             ; $4c77: $07
	inc b                                            ; $4c78: $04
	call c, Call_040_7a7e                            ; $4c79: $dc $7e $7a
	db $db                                           ; $4c7c: $db
	call c, $ded9                                    ; $4c7d: $dc $d9 $de
	rst $38                                          ; $4c80: $ff
	rst SubAFromDE                                          ; $4c81: $df
	scf                                              ; $4c82: $37
	rst SubAFromDE                                          ; $4c83: $df
	dec [hl]                                         ; $4c84: $35
	db $dd                                           ; $4c85: $dd
	rst FarCall                                          ; $4c86: $f7
	rst SubAFromDE                                          ; $4c87: $df
	ld h, b                                          ; $4c88: $60
	rst SubAFromDE                                          ; $4c89: $df
	ld h, d                                          ; $4c8a: $62
	sbc [hl]                                         ; $4c8b: $9e
	rst SubAFromBC                                          ; $4c8c: $e7
	sbc $20                                          ; $4c8d: $de $20
	sbc e                                            ; $4c8f: $9b
	rst $38                                          ; $4c90: $ff
	ld a, a                                          ; $4c91: $7f
	ld a, a                                          ; $4c92: $7f
	rst $38                                          ; $4c93: $ff
	halt                                             ; $4c94: $76
	adc [hl]                                         ; $4c95: $8e
	sbc d                                            ; $4c96: $9a
	nop                                              ; $4c97: $00
	add b                                            ; $4c98: $80
	add b                                            ; $4c99: $80
	ld [bc], a                                       ; $4c9a: $02
	cp $de                                           ; $4c9b: $fe $de
	ld [bc], a                                       ; $4c9d: $02
	sbc $ff                                          ; $4c9e: $de $ff
	sbc [hl]                                         ; $4ca0: $9e
	db $fd                                           ; $4ca1: $fd
	sbc $f8                                          ; $4ca2: $de $f8
	sbc [hl]                                         ; $4ca4: $9e
	ld a, [$6477]                                    ; $4ca5: $fa $77 $64
	sbc d                                            ; $4ca8: $9a
	ld a, h                                          ; $4ca9: $7c
	nop                                              ; $4caa: $00
	ld [$8c0e], sp                                   ; $4cab: $08 $0e $8c
	sbc $fc                                          ; $4cae: $de $fc
	sub e                                            ; $4cb0: $93
	inc a                                            ; $4cb1: $3c
	inc e                                            ; $4cb2: $1c
	inc e                                            ; $4cb3: $1c
	ld e, h                                          ; $4cb4: $5c
	halt                                             ; $4cb5: $76
	ld b, $06                                        ; $4cb6: $06 $06
	add $66                                          ; $4cb8: $c6 $66
	ld [hl], $16                                     ; $4cba: $36 $16
	sub $f1                                          ; $4cbc: $d6 $f1
	sbc $27                                          ; $4cbe: $de $27
	sbc d                                            ; $4cc0: $9a
	scf                                              ; $4cc1: $37
	rla                                              ; $4cc2: $17
	ld e, l                                          ; $4cc3: $5d
	ld b, l                                          ; $4cc4: $45
	ld b, l                                          ; $4cc5: $45
	call c, $9c0d                                    ; $4cc6: $dc $0d $9c
	rra                                              ; $4cc9: $1f
	dec de                                           ; $4cca: $1b
	dec de                                           ; $4ccb: $1b
	ld h, [hl]                                       ; $4ccc: $66
	pop hl                                           ; $4ccd: $e1
	jp c, Jump_040_67bf                              ; $4cce: $da $bf $67

	jr nc, @+$81                                     ; $4cd1: $30 $7f

	ld e, a                                          ; $4cd3: $5f
	ld a, [hl+]                                      ; $4cd4: $2a
	ret nz                                           ; $4cd5: $c0

	call c, $9cc0                                    ; $4cd6: $dc $c0 $9c
	ld b, b                                          ; $4cd9: $40
	add b                                            ; $4cda: $80
	sbc a                                            ; $4cdb: $9f
	halt                                             ; $4cdc: $76
	push bc                                          ; $4cdd: $c5
	ld a, c                                          ; $4cde: $79
	add e                                            ; $4cdf: $83
	sbc [hl]                                         ; $4ce0: $9e
	rra                                              ; $4ce1: $1f
	ld l, d                                          ; $4ce2: $6a
	ldh [$67], a                                     ; $4ce3: $e0 $67
	ret c                                            ; $4ce5: $d8

	ld l, e                                          ; $4ce6: $6b
	ld hl, sp+$67                                    ; $4ce7: $f8 $67
	ret z                                            ; $4ce9: $c8

	ld a, a                                          ; $4cea: $7f
	ld sp, hl                                        ; $4ceb: $f9
	sbc [hl]                                         ; $4cec: $9e
	inc b                                            ; $4ced: $04
	sbc $07                                          ; $4cee: $de $07
	sbc e                                            ; $4cf0: $9b
	inc b                                            ; $4cf1: $04
	ld a, l                                          ; $4cf2: $7d
	db $fc                                           ; $4cf3: $fc
	call z, $07dc                                    ; $4cf4: $cc $dc $07
	adc h                                            ; $4cf7: $8c
	ccf                                              ; $4cf8: $3f
	jp $3f30                                         ; $4cf9: $c3 $30 $3f


	rst $38                                          ; $4cfc: $ff
	call z, $82fe                                    ; $4cfd: $cc $fe $82
	nop                                              ; $4d00: $00
	add c                                            ; $4d01: $81
	ld b, c                                          ; $4d02: $41
	rst $38                                          ; $4d03: $ff
	cp $85                                           ; $4d04: $fe $85
	rst $38                                          ; $4d06: $ff
	xor c                                            ; $4d07: $a9
	inc bc                                           ; $4d08: $03
	dec e                                            ; $4d09: $1d
	adc h                                            ; $4d0a: $8c
	ld [hl], e                                       ; $4d0b: $73
	jp $d97f                                         ; $4d0c: $c3 $7f $d9


	sbc [hl]                                         ; $4d0f: $9e
	ldh [$6f], a                                     ; $4d10: $e0 $6f
	jp nc, $227f                                     ; $4d12: $d2 $7f $22

	ld d, e                                          ; $4d15: $53
	jp $ffde                                         ; $4d16: $c3 $de $ff


	sbc d                                            ; $4d19: $9a
	rrca                                             ; $4d1a: $0f
	ld c, $1c                                        ; $4d1b: $0e $1c
	rst $38                                          ; $4d1d: $ff
	rst $38                                          ; $4d1e: $ff
	sbc $1f                                          ; $4d1f: $de $1f
	rst SubAFromDE                                          ; $4d21: $df
	inc bc                                           ; $4d22: $03
	sbc b                                            ; $4d23: $98
	nop                                              ; $4d24: $00
	db $e3                                           ; $4d25: $e3
	inc bc                                           ; $4d26: $03
	rst AddAOntoHL                                          ; $4d27: $ef
	rst AddAOntoHL                                          ; $4d28: $ef
	rst SubAFromBC                                          ; $4d29: $e7
	pop bc                                           ; $4d2a: $c1
	ld [hl], e                                       ; $4d2b: $73
	ld [$9e7d], a                                    ; $4d2c: $ea $7d $9e
	sbc h                                            ; $4d2f: $9c
	ret nz                                           ; $4d30: $c0

	rra                                              ; $4d31: $1f
	nop                                              ; $4d32: $00
	ld [hl], h                                       ; $4d33: $74
	inc a                                            ; $4d34: $3c
	sbc [hl]                                         ; $4d35: $9e
	rrca                                             ; $4d36: $0f

jr_040_4d37:
	ld a, e                                          ; $4d37: $7b
	db $e3                                           ; $4d38: $e3
	ld [hl], e                                       ; $4d39: $73
	ret nc                                           ; $4d3a: $d0

	sbc h                                            ; $4d3b: $9c
	inc b                                            ; $4d3c: $04
	db $e4                                           ; $4d3d: $e4
	inc e                                            ; $4d3e: $1c
	ld a, e                                          ; $4d3f: $7b
	rst SubAFromHL                                          ; $4d40: $d7
	jp c, $94ff                                      ; $4d41: $da $ff $94

	ld a, a                                          ; $4d44: $7f
	rra                                              ; $4d45: $1f
	rst GetHLinHL                                          ; $4d46: $cf
	rra                                              ; $4d47: $1f
	inc hl                                           ; $4d48: $23
	ld bc, $8101                                     ; $4d49: $01 $01 $81
	rst $38                                          ; $4d4c: $ff
	pop af                                           ; $4d4d: $f1
	ld sp, hl                                        ; $4d4e: $f9
	ld a, c                                          ; $4d4f: $79
	ld h, a                                          ; $4d50: $67
	sbc $e0                                          ; $4d51: $de $e0
	ld a, l                                          ; $4d53: $7d
	sbc d                                            ; $4d54: $9a
	rst SubAFromDE                                          ; $4d55: $df
	jr nz, jr_040_4d37                               ; $4d56: $20 $df

	ccf                                              ; $4d58: $3f
	sbc e                                            ; $4d59: $9b
	jr nc, jr_040_4d94                               ; $4d5a: $30 $38

	jr c, jr_040_4d9d                                ; $4d5c: $38 $3f

	ld [hl], e                                       ; $4d5e: $73
	dec l                                            ; $4d5f: $2d
	sbc l                                            ; $4d60: $9d
	ld bc, $7bfe                                     ; $4d61: $01 $fe $7b
	ei                                               ; $4d64: $fb
	ld a, e                                          ; $4d65: $7b
	rst FarCall                                          ; $4d66: $f7
	sbc l                                            ; $4d67: $9d
	ld bc, $7903                                     ; $4d68: $01 $03 $79
	ld a, [hl-]                                      ; $4d6b: $3a
	sub h                                            ; $4d6c: $94
	ld sp, hl                                        ; $4d6d: $f9
	ld d, h                                          ; $4d6e: $54
	sub e                                            ; $4d6f: $93
	inc de                                           ; $4d70: $13
	ccf                                              ; $4d71: $3f
	rst $38                                          ; $4d72: $ff
	ld [$f91a], sp                                   ; $4d73: $08 $1a $f9
	call nc, Call_040_7bbf                           ; $4d76: $d4 $bf $7b
	db $ed                                           ; $4d79: $ed
	adc a                                            ; $4d7a: $8f
	inc e                                            ; $4d7b: $1c
	inc b                                            ; $4d7c: $04
	sbc b                                            ; $4d7d: $98
	inc h                                            ; $4d7e: $24
	ld a, [hl+]                                      ; $4d7f: $2a
	dec d                                            ; $4d80: $15
	dec l                                            ; $4d81: $2d
	rst $38                                          ; $4d82: $ff
	inc e                                            ; $4d83: $1c
	inc e                                            ; $4d84: $1c
	cp h                                             ; $4d85: $bc
	ld a, [hl]                                       ; $4d86: $7e
	sbc a                                            ; $4d87: $9f
	inc sp                                           ; $4d88: $33
	di                                               ; $4d89: $f3
	rrca                                             ; $4d8a: $0f
	ld l, a                                          ; $4d8b: $6f
	dec b                                            ; $4d8c: $05
	ld [hl], b                                       ; $4d8d: $70
	dec a                                            ; $4d8e: $3d
	sbc l                                            ; $4d8f: $9d
	cp $00                                           ; $4d90: $fe $00
	ld a, d                                          ; $4d92: $7a
	ld l, b                                          ; $4d93: $68

jr_040_4d94:
	adc [hl]                                         ; $4d94: $8e
	xor a                                            ; $4d95: $af
	cp c                                             ; $4d96: $b9
	and a                                            ; $4d97: $a7
	and a                                            ; $4d98: $a7
	ld a, $7c                                        ; $4d99: $3e $7c
	ld a, c                                          ; $4d9b: $79
	ld [hl], e                                       ; $4d9c: $73

jr_040_4d9d:
	ld d, $18                                        ; $4d9d: $16 $18
	jr nz, @+$29                                     ; $4d9f: $20 $27

	ld [hl+], a                                      ; $4da1: $22
	ld h, h                                          ; $4da2: $64
	ld e, b                                          ; $4da3: $58
	ld b, c                                          ; $4da4: $41
	ldh [$7b], a                                     ; $4da5: $e0 $7b
	add c                                            ; $4da7: $81
	sub c                                            ; $4da8: $91
	ld a, a                                          ; $4da9: $7f
	ccf                                              ; $4daa: $3f
	rra                                              ; $4dab: $1f
	rst $38                                          ; $4dac: $ff
	nop                                              ; $4dad: $00
	rra                                              ; $4dae: $1f
	ldh a, [hDisp0_OBP1]                                     ; $4daf: $f0 $87
	rrca                                             ; $4db1: $0f
	rlca                                             ; $4db2: $07
	ld bc, $f0ff                                     ; $4db3: $01 $ff $f0
	ld hl, sp-$22                                    ; $4db6: $f8 $de
	db $fc                                           ; $4db8: $fc
	ld a, a                                          ; $4db9: $7f
	ret c                                            ; $4dba: $d8

	sub [hl]                                         ; $4dbb: $96
	db $fd                                           ; $4dbc: $fd
	rrca                                             ; $4dbd: $0f
	rst SubAFromBC                                          ; $4dbe: $e7
	inc de                                           ; $4dbf: $13
	set 4, e                                         ; $4dc0: $cb $e3
	pop bc                                           ; $4dc2: $c1
	add b                                            ; $4dc3: $80
	jp nz, Jump_040_7bfa                             ; $4dc4: $c2 $fa $7b

	add $db                                          ; $4dc7: $c6 $db
	rst $38                                          ; $4dc9: $ff
	sbc c                                            ; $4dca: $99
	sbc a                                            ; $4dcb: $9f
	ret nz                                           ; $4dcc: $c0

	ldh [$e0], a                                     ; $4dcd: $e0 $e0
	ldh a, [$f0]                                     ; $4dcf: $f0 $f0
	ld a, e                                          ; $4dd1: $7b
	sub a                                            ; $4dd2: $97
	sbc [hl]                                         ; $4dd3: $9e
	rrca                                             ; $4dd4: $0f
	db $dd                                           ; $4dd5: $dd
	adc a                                            ; $4dd6: $8f
	sbc l                                            ; $4dd7: $9d
	ret z                                            ; $4dd8: $c8

	rst GetHLinHL                                          ; $4dd9: $cf
	ld l, a                                          ; $4dda: $6f
	inc d                                            ; $4ddb: $14
	ld a, e                                          ; $4ddc: $7b
	ldh a, [$6e]                                     ; $4ddd: $f0 $6e
	sub d                                            ; $4ddf: $92
	ld a, e                                          ; $4de0: $7b
	pop af                                           ; $4de1: $f1
	sbc e                                            ; $4de2: $9b
	inc bc                                           ; $4de3: $03
	inc b                                            ; $4de4: $04
	ld [$6f10], sp                                   ; $4de5: $08 $10 $6f
	inc e                                            ; $4de8: $1c
	ld a, c                                          ; $4de9: $79
	ld d, h                                          ; $4dea: $54
	sub [hl]                                         ; $4deb: $96
	nop                                              ; $4dec: $00
	inc h                                            ; $4ded: $24
	add d                                            ; $4dee: $82
	add d                                            ; $4def: $82
	sub c                                            ; $4df0: $91
	ld d, b                                          ; $4df1: $50
	jr nc, jr_040_4e28                               ; $4df2: $30 $34

	db $fc                                           ; $4df4: $fc
	ld a, d                                          ; $4df5: $7a
	sub h                                            ; $4df6: $94
	db $fc                                           ; $4df7: $fc
	add l                                            ; $4df8: $85
	inc a                                            ; $4df9: $3c
	ld [bc], a                                       ; $4dfa: $02
	ld a, [hl-]                                      ; $4dfb: $3a
	ld d, d                                          ; $4dfc: $52
	or [hl]                                          ; $4dfd: $b6
	nop                                              ; $4dfe: $00
	rrca                                             ; $4dff: $0f
	ld a, a                                          ; $4e00: $7f
	jp nz, $107c                                     ; $4e01: $c2 $7c $10

	jr c, jr_040_4e1e                                ; $4e04: $38 $18

	jr jr_040_4e18                                   ; $4e06: $18 $10

	nop                                              ; $4e08: $00
	jr c, jr_040_4e17                                ; $4e09: $38 $0c

	rrca                                             ; $4e0b: $0f
	dec l                                            ; $4e0c: $2d
	jr c, jr_040_4e8e                                ; $4e0d: $38 $7f

	ld hl, sp+$07                                    ; $4e0f: $f8 $07
	rra                                              ; $4e11: $1f
	rlca                                             ; $4e12: $07
	ld h, c                                          ; $4e13: $61
	ld e, h                                          ; $4e14: $5c
	sbc l                                            ; $4e15: $9d
	db $fc                                           ; $4e16: $fc

jr_040_4e17:
	ld a, a                                          ; $4e17: $7f

jr_040_4e18:
	halt                                             ; $4e18: $76
	jp hl                                            ; $4e19: $e9


	rst SubAFromDE                                          ; $4e1a: $df
	rst $38                                          ; $4e1b: $ff
	add b                                            ; $4e1c: $80
	ccf                                              ; $4e1d: $3f

jr_040_4e1e:
	inc bc                                           ; $4e1e: $03
	ld bc, $7f07                                     ; $4e1f: $01 $07 $7f
	jp $86c4                                         ; $4e22: $c3 $c4 $86


	add a                                            ; $4e25: $87
	ccf                                              ; $4e26: $3f
	ld a, a                                          ; $4e27: $7f

jr_040_4e28:
	rst FarCall                                          ; $4e28: $f7
	ld [hl], a                                       ; $4e29: $77
	ccf                                              ; $4e2a: $3f
	inc a                                            ; $4e2b: $3c
	ld a, a                                          ; $4e2c: $7f
	ld a, b                                          ; $4e2d: $78
	rst $38                                          ; $4e2e: $ff
	add c                                            ; $4e2f: $81
	ld sp, hl                                        ; $4e30: $f9
	ld sp, hl                                        ; $4e31: $f9
	db $fc                                           ; $4e32: $fc
	rst $38                                          ; $4e33: $ff
	cp $fe                                           ; $4e34: $fe $fe
	db $fc                                           ; $4e36: $fc
	cp $f8                                           ; $4e37: $fe $f8
	cp $ff                                           ; $4e39: $fe $ff
	sbc a                                            ; $4e3b: $9f
	sbc h                                            ; $4e3c: $9c
	sub l                                            ; $4e3d: $95
	sub [hl]                                         ; $4e3e: $96
	sub [hl]                                         ; $4e3f: $96
	sbc $94                                          ; $4e40: $de $94
	sbc l                                            ; $4e42: $9d
	rlca                                             ; $4e43: $07
	sbc a                                            ; $4e44: $9f
	ld [hl], h                                       ; $4e45: $74
	ld e, c                                          ; $4e46: $59
	sbc l                                            ; $4e47: $9d
	ld e, a                                          ; $4e48: $5f
	ld a, a                                          ; $4e49: $7f
	call c, $9bff                                    ; $4e4a: $dc $ff $9b
	rst SubAFromDE                                          ; $4e4d: $df
	rra                                              ; $4e4e: $1f
	ccf                                              ; $4e4f: $3f
	rst GetHLinHL                                          ; $4e50: $cf
	ld a, d                                          ; $4e51: $7a
	rst GetHLinHL                                          ; $4e52: $cf
	db $dd                                           ; $4e53: $dd
	rst $38                                          ; $4e54: $ff
	sub e                                            ; $4e55: $93
	ld sp, hl                                        ; $4e56: $f9
	db $fd                                           ; $4e57: $fd
	db $fd                                           ; $4e58: $fd
	rst $38                                          ; $4e59: $ff
	db $fd                                           ; $4e5a: $fd
	db $fd                                           ; $4e5b: $fd
	ld sp, hl                                        ; $4e5c: $f9
	pop af                                           ; $4e5d: $f1
	ld a, [hl]                                       ; $4e5e: $7e
	ld a, l                                          ; $4e5f: $7d
	ld a, c                                          ; $4e60: $79
	ld [hl], c                                       ; $4e61: $71
	db $dd                                           ; $4e62: $dd
	ld [hl], e                                       ; $4e63: $73
	db $dd                                           ; $4e64: $dd
	cp a                                             ; $4e65: $bf
	db $dd                                           ; $4e66: $dd
	cp l                                             ; $4e67: $bd
	sbc d                                            ; $4e68: $9a
	ccf                                              ; $4e69: $3f
	add e                                            ; $4e6a: $83
	ld a, [hl]                                       ; $4e6b: $7e
	ld [hl+], a                                      ; $4e6c: $22
	ld [hl+], a                                      ; $4e6d: $22
	sbc $62                                          ; $4e6e: $de $62
	sbc [hl]                                         ; $4e70: $9e
	jp $ffdd                                         ; $4e71: $c3 $dd $ff


	sbc $bf                                          ; $4e74: $de $bf
	sub a                                            ; $4e76: $97
	ld a, [$5ffd]                                    ; $4e77: $fa $fd $5f
	ld b, a                                          ; $4e7a: $47
	ld b, h                                          ; $4e7b: $44
	ld c, h                                          ; $4e7c: $4c
	adc b                                            ; $4e7d: $88
	sbc c                                            ; $4e7e: $99
	ld [hl], h                                       ; $4e7f: $74
	inc a                                            ; $4e80: $3c
	sub d                                            ; $4e81: $92
	rst $38                                          ; $4e82: $ff
	rst FarCall                                          ; $4e83: $f7
	rst FarCall                                          ; $4e84: $f7
	and $0f                                          ; $4e85: $e6 $0f
	di                                               ; $4e87: $f3
	ld l, b                                          ; $4e88: $68
	rlca                                             ; $4e89: $07
	dec b                                            ; $4e8a: $05
	ret                                              ; $4e8b: $c9


	res 2, a                                         ; $4e8c: $cb $97

jr_040_4e8e:
	rrca                                             ; $4e8e: $0f
	ld [hl], a                                       ; $4e8f: $77
	rst AddAOntoHL                                          ; $4e90: $ef
	add a                                            ; $4e91: $87
	ccf                                              ; $4e92: $3f
	dec a                                            ; $4e93: $3d
	ld a, e                                          ; $4e94: $7b
	ret nz                                           ; $4e95: $c0

	ldh [$9c], a                                     ; $4e96: $e0 $9c
	ld h, e                                          ; $4e98: $63
	adc b                                            ; $4e99: $88
	ld [bc], a                                       ; $4e9a: $02
	ld b, b                                          ; $4e9b: $40
	nop                                              ; $4e9c: $00
	jr nz, jr_040_4ebb                               ; $4e9d: $20 $1c

	ld h, e                                          ; $4e9f: $63
	sbc h                                            ; $4ea0: $9c
	rlca                                             ; $4ea1: $07
	ld bc, $c03f                                     ; $4ea2: $01 $3f $c0
	rst SubAFromBC                                          ; $4ea5: $e7
	ld a, h                                          ; $4ea6: $7c
	db $10                                           ; $4ea7: $10
	and b                                            ; $4ea8: $a0
	ld h, b                                          ; $4ea9: $60
	sbc $40                                          ; $4eaa: $de $40
	sbc e                                            ; $4eac: $9b
	rst JumpTable                                          ; $4ead: $c7
	ld a, a                                          ; $4eae: $7f
	cp $78                                           ; $4eaf: $fe $78
	ld a, e                                          ; $4eb1: $7b
	sub l                                            ; $4eb2: $95
	ld a, [hl]                                       ; $4eb3: $7e
	db $10                                           ; $4eb4: $10
	sbc [hl]                                         ; $4eb5: $9e
	ld [$98fc], sp                                   ; $4eb6: $08 $fc $98
	add b                                            ; $4eb9: $80
	rst $38                                          ; $4eba: $ff

jr_040_4ebb:
	sbc a                                            ; $4ebb: $9f
	rra                                              ; $4ebc: $1f
	inc c                                            ; $4ebd: $0c
	add b                                            ; $4ebe: $80
	rst SubAFromBC                                          ; $4ebf: $e7
	ld [hl], a                                       ; $4ec0: $77
	call z, $1fde                                    ; $4ec1: $cc $de $1f
	ld a, c                                          ; $4ec4: $79
	inc e                                            ; $4ec5: $1c
	sbc e                                            ; $4ec6: $9b
	pop hl                                           ; $4ec7: $e1
	rst $38                                          ; $4ec8: $ff
	rst $38                                          ; $4ec9: $ff
	ld a, $de                                        ; $4eca: $3e $de
	db $fc                                           ; $4ecc: $fc
	sbc e                                            ; $4ecd: $9b
	ld hl, sp+$00                                    ; $4ece: $f8 $00
	jr @-$01                                         ; $4ed0: $18 $fd

	call c, $9ccd                                    ; $4ed2: $dc $cd $9c
	pop bc                                           ; $4ed5: $c1
	ld sp, hl                                        ; $4ed6: $f9
	ld sp, hl                                        ; $4ed7: $f9
	call c, $df99                                    ; $4ed8: $dc $99 $df
	ld l, a                                          ; $4edb: $6f
	db $db                                           ; $4edc: $db
	ld h, a                                          ; $4edd: $67
	sbc [hl]                                         ; $4ede: $9e
	add b                                            ; $4edf: $80
	jp c, Jump_040_7b8d                              ; $4ee0: $da $8d $7b

	ld e, e                                          ; $4ee3: $5b
	call c, $9dfd                                    ; $4ee4: $dc $fd $9d
	rla                                              ; $4ee7: $17
	sub $dc                                          ; $4ee8: $d6 $dc
	ld d, [hl]                                       ; $4eea: $56
	sbc h                                            ; $4eeb: $9c

jr_040_4eec:
	ld d, a                                          ; $4eec: $57
	rst $38                                          ; $4eed: $ff
	ld h, e                                          ; $4eee: $63
	call c, $9c62                                    ; $4eef: $dc $62 $9c
	ldh [c], a                                       ; $4ef2: $e2
	rst $38                                          ; $4ef3: $ff
	db $d3                                           ; $4ef4: $d3
	db $dd                                           ; $4ef5: $dd
	jp nc, $d39b                                     ; $4ef6: $d2 $9b $d3

	di                                               ; $4ef9: $f3
	rst $38                                          ; $4efa: $ff
	db $fd                                           ; $4efb: $fd
	call c, $9c9f                                    ; $4efc: $dc $9f $9c
	rra                                              ; $4eff: $1f
	add b                                            ; $4f00: $80
	rst $38                                          ; $4f01: $ff
	call c, $9a35                                    ; $4f02: $dc $35 $9a
	or [hl]                                          ; $4f05: $b6
	ldh [$f8], a                                     ; $4f06: $e0 $f8
	jp z, $decb                                      ; $4f08: $ca $cb $de

	jp z, $c99b                                      ; $4f0b: $ca $9b $c9

	nop                                              ; $4f0e: $00
	cp $fd                                           ; $4f0f: $fe $fd
	db $dd                                           ; $4f11: $dd
	ld a, h                                          ; $4f12: $7c
	sbc e                                            ; $4f13: $9b
	ld a, [hl]                                       ; $4f14: $7e
	nop                                              ; $4f15: $00
	rrca                                             ; $4f16: $0f
	dec sp                                           ; $4f17: $3b
	sbc $6b                                          ; $4f18: $de $6b
	sbc d                                            ; $4f1a: $9a
	ld e, d                                          ; $4f1b: $5a
	ld d, [hl]                                       ; $4f1c: $56
	inc bc                                           ; $4f1d: $03
	ccf                                              ; $4f1e: $3f
	rst $38                                          ; $4f1f: $ff
	db $dd                                           ; $4f20: $dd
	adc a                                            ; $4f21: $8f
	sub [hl]                                         ; $4f22: $96
	sbc a                                            ; $4f23: $9f
	ld a, a                                          ; $4f24: $7f
	sbc a                                            ; $4f25: $9f
	rra                                              ; $4f26: $1f
	ld l, $3a                                        ; $4f27: $2e $3a
	ld e, h                                          ; $4f29: $5c
	ld a, h                                          ; $4f2a: $7c
	ld [hl], h                                       ; $4f2b: $74
	db $dd                                           ; $4f2c: $dd
	di                                               ; $4f2d: $f3
	rst SubAFromDE                                          ; $4f2e: $df
	rst SubAFromBC                                          ; $4f2f: $e7
	sbc l                                            ; $4f30: $9d

Jump_040_4f31:
	rst JumpTable                                          ; $4f31: $c7
	rst GetHLinHL                                          ; $4f32: $cf
	sbc $f7                                          ; $4f33: $de $f7
	db $dd                                           ; $4f35: $dd
	scf                                              ; $4f36: $37
	sbc [hl]                                         ; $4f37: $9e
	ld [hl], a                                       ; $4f38: $77
	reti                                             ; $4f39: $d9


	ld sp, hl                                        ; $4f3a: $f9
	ld a, [hl]                                       ; $4f3b: $7e
	call nz, $356e                                   ; $4f3c: $c4 $6e $35
	sbc l                                            ; $4f3f: $9d
	sub [hl]                                         ; $4f40: $96
	sub d                                            ; $4f41: $92
	db $dd                                           ; $4f42: $dd
	sub e                                            ; $4f43: $93
	sub a                                            ; $4f44: $97
	sub [hl]                                         ; $4f45: $96
	sbc b                                            ; $4f46: $98
	rlca                                             ; $4f47: $07
	jr jr_040_4eec                                   ; $4f48: $18 $a2

	db $f4                                           ; $4f4a: $f4
	ld hl, sp-$60                                    ; $4f4b: $f8 $a0
	ld a, b                                          ; $4f4d: $78
	xor b                                            ; $4f4e: $a8
	sbc e                                            ; $4f4f: $9b
	ld h, b                                          ; $4f50: $60
	ld e, c                                          ; $4f51: $59
	ldh a, [$f0]                                     ; $4f52: $f0 $f0
	ld a, d                                          ; $4f54: $7a
	ld e, e                                          ; $4f55: $5b
	sbc e                                            ; $4f56: $9b
	inc e                                            ; $4f57: $1c
	ld b, $41                                        ; $4f58: $06 $41
	ld e, $fd                                        ; $4f5a: $1e $fd
	sbc h                                            ; $4f5c: $9c
	rrca                                             ; $4f5d: $0f
	ld a, e                                          ; $4f5e: $7b
	add c                                            ; $4f5f: $81
	db $fc                                           ; $4f60: $fc
	sbc d                                            ; $4f61: $9a
	ld [hl], e                                       ; $4f62: $73
	ld [hl], a                                       ; $4f63: $77
	rst $38                                          ; $4f64: $ff
	cp [hl]                                          ; $4f65: $be
	inc bc                                           ; $4f66: $03
	ld a, e                                          ; $4f67: $7b
	jp hl                                            ; $4f68: $e9


	sbc e                                            ; $4f69: $9b
	cp l                                             ; $4f6a: $bd
	cp c                                             ; $4f6b: $b9
	rst $38                                          ; $4f6c: $ff
	rrca                                             ; $4f6d: $0f
	halt                                             ; $4f6e: $76
	ld e, [hl]                                       ; $4f6f: $5e
	sub e                                            ; $4f70: $93
	ld h, h                                          ; $4f71: $64
	ld a, a                                          ; $4f72: $7f
	cp $03                                           ; $4f73: $fe $03
	cp $e1                                           ; $4f75: $fe $e1
	ccf                                              ; $4f77: $3f
	ld a, a                                          ; $4f78: $7f
	cp a                                             ; $4f79: $bf
	rst $38                                          ; $4f7a: $ff
	ldh a, [$fc]                                     ; $4f7b: $f0 $fc
	ld a, b                                          ; $4f7d: $78
	inc [hl]                                         ; $4f7e: $34
	sbc e                                            ; $4f7f: $9b
	cpl                                              ; $4f80: $2f
	sub e                                            ; $4f81: $93
	di                                               ; $4f82: $f3
	rra                                              ; $4f83: $1f
	ld [hl], l                                       ; $4f84: $75
	cp l                                             ; $4f85: $bd
	sbc e                                            ; $4f86: $9b
	rst FarCall                                          ; $4f87: $f7
	db $ec                                           ; $4f88: $ec
	db $ec                                           ; $4f89: $ec
	rra                                              ; $4f8a: $1f
	ld [hl], h                                       ; $4f8b: $74
	adc e                                            ; $4f8c: $8b
	adc d                                            ; $4f8d: $8a
	ld hl, sp+$27                                    ; $4f8e: $f8 $27
	ld c, [hl]                                       ; $4f90: $4e
	call c, $a160                                    ; $4f91: $dc $60 $a1
	rst AddAOntoHL                                          ; $4f94: $ef
	ld a, h                                          ; $4f95: $7c
	ldh [$fa], a                                     ; $4f96: $e0 $fa
	push af                                          ; $4f98: $f5
	rst $38                                          ; $4f99: $ff
	ccf                                              ; $4f9a: $3f
	ld a, [hl]                                       ; $4f9b: $7e
	ldh a, [$80]                                     ; $4f9c: $f0 $80
	nop                                              ; $4f9e: $00
	rra                                              ; $4f9f: $1f
	cp $a2                                           ; $4fa0: $fe $a2
	and [hl]                                         ; $4fa2: $a6
	db $dd                                           ; $4fa3: $dd
	xor [hl]                                         ; $4fa4: $ae
	ld a, e                                          ; $4fa5: $7b
	call c, $fb9e                                    ; $4fa6: $dc $9e $fb
	db $dd                                           ; $4fa9: $dd
	di                                               ; $4faa: $f3
	sbc b                                            ; $4fab: $98
	ret z                                            ; $4fac: $c8

	ret                                              ; $4fad: $c9


	jp hl                                            ; $4fae: $e9


	jp hl                                            ; $4faf: $e9


	cp c                                             ; $4fb0: $b9
	cp l                                             ; $4fb1: $bd
	cp l                                             ; $4fb2: $bd
	ld a, c                                          ; $4fb3: $79
	ld d, l                                          ; $4fb4: $55
	halt                                             ; $4fb5: $76
	ld d, b                                          ; $4fb6: $50
	sub [hl]                                         ; $4fb7: $96
	rst SubAFromDE                                          ; $4fb8: $df
	rst GetHLinHL                                          ; $4fb9: $cf
	add b                                            ; $4fba: $80
	ld de, $3311                                     ; $4fbb: $11 $11 $33
	scf                                              ; $4fbe: $37
	ld a, a                                          ; $4fbf: $7f
	ld a, a                                          ; $4fc0: $7f
	ld l, c                                          ; $4fc1: $69
	and b                                            ; $4fc2: $a0
	ld a, [hl]                                       ; $4fc3: $7e
	dec h                                            ; $4fc4: $25
	ld a, a                                          ; $4fc5: $7f
	db $ec                                           ; $4fc6: $ec
	sbc $9f                                          ; $4fc7: $de $9f
	sbc e                                            ; $4fc9: $9b
	cp a                                             ; $4fca: $bf
	ccf                                              ; $4fcb: $3f
	ld a, a                                          ; $4fcc: $7f
	ret c                                            ; $4fcd: $d8

	db $dd                                           ; $4fce: $dd
	adc b                                            ; $4fcf: $88
	ld a, [hl]                                       ; $4fd0: $7e
	ld sp, $709e                                     ; $4fd1: $31 $9e $70
	sbc $cd                                          ; $4fd4: $de $cd
	rst SubAFromDE                                          ; $4fd6: $df
	rst GetHLinHL                                          ; $4fd7: $cf
	sbc h                                            ; $4fd8: $9c
	rst $38                                          ; $4fd9: $ff
	inc bc                                           ; $4fda: $03
	rra                                              ; $4fdb: $1f
	call c, Call_040_7d99                            ; $4fdc: $dc $99 $7d
	xor h                                            ; $4fdf: $ac
	sbc l                                            ; $4fe0: $9d
	ldh [$67], a                                     ; $4fe1: $e0 $67
	db $dd                                           ; $4fe3: $dd
	daa                                              ; $4fe4: $27
	sbc e                                            ; $4fe5: $9b
	add a                                            ; $4fe6: $87
	rst $38                                          ; $4fe7: $ff
	db $fc                                           ; $4fe8: $fc
	adc l                                            ; $4fe9: $8d
	db $dd                                           ; $4fea: $dd
	call $ed99                                       ; $4feb: $cd $99 $ed
	ld bc, $fe03                                     ; $4fee: $01 $03 $fe
	ld hl, sp-$10                                    ; $4ff1: $f8 $f0
	ld a, c                                          ; $4ff3: $79
	ld c, l                                          ; $4ff4: $4d
	sub b                                            ; $4ff5: $90
	add $83                                          ; $4ff6: $c6 $83
	ld d, a                                          ; $4ff8: $57
	ld e, [hl]                                       ; $4ff9: $5e
	ld d, b                                          ; $4ffa: $50
	ld d, b                                          ; $4ffb: $50
	ld a, b                                          ; $4ffc: $78
	ld b, h                                          ; $4ffd: $44
	add e                                            ; $4ffe: $83
	ld bc, $0b1b                                     ; $4fff: $01 $1b $0b
	rlca                                             ; $5002: $07
	ld [bc], a                                       ; $5003: $02
	ld [bc], a                                       ; $5004: $02
	ld a, c                                          ; $5005: $79
	pop bc                                           ; $5006: $c1
	adc a                                            ; $5007: $8f
	ld [hl-], a                                      ; $5008: $32
	ld a, [de]                                       ; $5009: $1a
	ld c, $06                                        ; $500a: $0e $06
	ld d, $7f                                        ; $500c: $16 $7f
	rst $38                                          ; $500e: $ff
	ld hl, sp+$1f                                    ; $500f: $f8 $1f
	rra                                              ; $5011: $1f
	ld e, a                                          ; $5012: $5f
	ld bc, $7000                                     ; $5013: $01 $00 $70
	add b                                            ; $5016: $80
	rst $38                                          ; $5017: $ff
	sbc $b6                                          ; $5018: $de $b6
	halt                                             ; $501a: $76
	ld e, d                                          ; $501b: $5a
	sbc [hl]                                         ; $501c: $9e
	ld a, a                                          ; $501d: $7f
	db $dd                                           ; $501e: $dd
	adc b                                            ; $501f: $88
	sbc [hl]                                         ; $5020: $9e
	add hl, bc                                       ; $5021: $09
	ld a, c                                          ; $5022: $79
	ld c, a                                          ; $5023: $4f
	db $dd                                           ; $5024: $dd
	cp $9e                                           ; $5025: $fe $9e
	ld c, $79                                        ; $5027: $0e $79
	ld e, c                                          ; $5029: $59
	sbc h                                            ; $502a: $9c

jr_040_502b:
	ld d, [hl]                                       ; $502b: $56
	halt                                             ; $502c: $76
	inc l                                            ; $502d: $2c
	sbc $2d                                          ; $502e: $de $2d
	sbc l                                            ; $5030: $9d
	rlca                                             ; $5031: $07
	sbc e                                            ; $5032: $9b
	ld a, e                                          ; $5033: $7b
	adc e                                            ; $5034: $8b
	rst SubAFromDE                                          ; $5035: $df
	cp a                                             ; $5036: $bf
	sub d                                            ; $5037: $92
	ccf                                              ; $5038: $3f
	db $e3                                           ; $5039: $e3
	ld h, a                                          ; $503a: $67
	cp b                                             ; $503b: $b8
	ld hl, sp-$18                                    ; $503c: $f8 $e8
	ld [hl], c                                       ; $503e: $71
	pop af                                           ; $503f: $f1
	db $e3                                           ; $5040: $e3
	ccf                                              ; $5041: $3f
	rst $38                                          ; $5042: $ff
	rst GetHLinHL                                          ; $5043: $cf
	adc a                                            ; $5044: $8f
	ld a, d                                          ; $5045: $7a
	adc e                                            ; $5046: $8b
	sub h                                            ; $5047: $94
	inc a                                            ; $5048: $3c
	ret nz                                           ; $5049: $c0

	nop                                              ; $504a: $00
	ld [hl], a                                       ; $504b: $77
	rst FarCall                                          ; $504c: $f7
	rst FarCall                                          ; $504d: $f7
	or $fc                                           ; $504e: $f6 $fc
	ldh a, [$d0]                                     ; $5050: $f0 $d0
	cp b                                             ; $5052: $b8
	sbc $f9                                          ; $5053: $de $f9
	sub [hl]                                         ; $5055: $96
	ei                                               ; $5056: $fb
	inc c                                            ; $5057: $0c
	jr jr_040_50c2                                   ; $5058: $18 $68

	call nz, Call_040_6874                           ; $505a: $c4 $74 $68
	and b                                            ; $505d: $a0
	add b                                            ; $505e: $80
	ld [hl], l                                       ; $505f: $75
	rrca                                             ; $5060: $0f
	sbc [hl]                                         ; $5061: $9e
	sbc b                                            ; $5062: $98
	halt                                             ; $5063: $76
	db $d3                                           ; $5064: $d3
	ld [hl], h                                       ; $5065: $74
	ld c, b                                          ; $5066: $48
	rst SubAFromDE                                          ; $5067: $df
	inc c                                            ; $5068: $0c
	sbc e                                            ; $5069: $9b
	ld c, $1e                                        ; $506a: $0e $1e
	rra                                              ; $506c: $1f
	ccf                                              ; $506d: $3f
	ld l, h                                          ; $506e: $6c
	ld sp, hl                                        ; $506f: $f9
	ei                                               ; $5070: $fb
	sbc d                                            ; $5071: $9a
	db $10                                           ; $5072: $10
	jr nc, jr_040_50e6                               ; $5073: $30 $71

	db $e3                                           ; $5075: $e3
	ld h, d                                          ; $5076: $62
	ld a, [$819c]                                    ; $5077: $fa $9c $81
	ld a, $3e                                        ; $507a: $3e $3e

jr_040_507c:
	ld a, c                                          ; $507c: $79
	di                                               ; $507d: $f3
	ld a, c                                          ; $507e: $79
	jr nc, jr_040_507c                               ; $507f: $30 $fb

	ld a, c                                          ; $5081: $79
	rst GetHLinHL                                          ; $5082: $cf
	ld a, a                                          ; $5083: $7f
	add [hl]                                         ; $5084: $86
	sbc l                                            ; $5085: $9d
	pop de                                           ; $5086: $d1
	rst $38                                          ; $5087: $ff
	ld a, b                                          ; $5088: $78
	ld a, [hl-]                                      ; $5089: $3a
	ld [hl], h                                       ; $508a: $74
	jr nc, jr_040_502b                               ; $508b: $30 $9e

	db $10                                           ; $508d: $10
	ld [hl], a                                       ; $508e: $77
	ld c, $99                                        ; $508f: $0e $99
	ret nz                                           ; $5091: $c0

	rst $38                                          ; $5092: $ff
	ei                                               ; $5093: $fb
	rst SubAFromBC                                          ; $5094: $e7
	ld a, a                                          ; $5095: $7f
	sbc a                                            ; $5096: $9f
	ld [hl], a                                       ; $5097: $77
	ldh [$9e], a                                     ; $5098: $e0 $9e
	db $fc                                           ; $509a: $fc
	ld a, d                                          ; $509b: $7a
	dec de                                           ; $509c: $1b
	ld [hl], a                                       ; $509d: $77
	ld hl, sp-$63                                    ; $509e: $f8 $9d
	cp $f7                                           ; $50a0: $fe $f7
	ld a, e                                          ; $50a2: $7b
	ld b, b                                          ; $50a3: $40
	db $fd                                           ; $50a4: $fd
	sbc [hl]                                         ; $50a5: $9e
	ld hl, sp-$22                                    ; $50a6: $f8 $de
	rst $38                                          ; $50a8: $ff
	sub l                                            ; $50a9: $95
	xor [hl]                                         ; $50aa: $ae
	and [hl]                                         ; $50ab: $a6
	and e                                            ; $50ac: $a3
	and [hl]                                         ; $50ad: $a6
	cp c                                             ; $50ae: $b9
	xor b                                            ; $50af: $a8
	ret nc                                           ; $50b0: $d0

	ldh a, [$f3]                                     ; $50b1: $f0 $f3
	ei                                               ; $50b3: $fb
	ld a, e                                          ; $50b4: $7b
	call nc, $af7c                                   ; $50b5: $d4 $7c $af
	adc b                                            ; $50b8: $88
	ret nz                                           ; $50b9: $c0

	cp a                                             ; $50ba: $bf
	cp a                                             ; $50bb: $bf
	rst $38                                          ; $50bc: $ff
	rst SubAFromDE                                          ; $50bd: $df
	scf                                              ; $50be: $37
	ld h, a                                          ; $50bf: $67
	ld l, a                                          ; $50c0: $6f
	rst GetHLinHL                                          ; $50c1: $cf

jr_040_50c2:
	rst GetHLinHL                                          ; $50c2: $cf
	rst SubAFromDE                                          ; $50c3: $df
	rst $38                                          ; $50c4: $ff
	dec de                                           ; $50c5: $1b
	inc sp                                           ; $50c6: $33
	ld h, e                                          ; $50c7: $63
	ld h, a                                          ; $50c8: $67
	rst JumpTable                                          ; $50c9: $c7
	ld hl, sp-$07                                    ; $50ca: $f8 $f9
	xor $98                                          ; $50cc: $ee $98
	and b                                            ; $50ce: $a0
	ld b, b                                          ; $50cf: $40
	ld a, e                                          ; $50d0: $7b
	ld h, $8f                                        ; $50d1: $26 $8f
	rst $38                                          ; $50d3: $ff
	pop af                                           ; $50d4: $f1
	rst SubAFromBC                                          ; $50d5: $e7
	call $8080                                       ; $50d6: $cd $80 $80
	nop                                              ; $50d9: $00
	rst SubAFromDE                                          ; $50da: $df
	add e                                            ; $50db: $83
	ret nz                                           ; $50dc: $c0

	ld a, a                                          ; $50dd: $7f
	add b                                            ; $50de: $80
	nop                                              ; $50df: $00
	jr nz, @+$42                                     ; $50e0: $20 $40

	ldh [$79], a                                     ; $50e2: $e0 $79
	ld b, b                                          ; $50e4: $40
	ld a, l                                          ; $50e5: $7d

jr_040_50e6:
	ld h, e                                          ; $50e6: $63
	ld l, h                                          ; $50e7: $6c
	ld h, [hl]                                       ; $50e8: $66
	ld a, d                                          ; $50e9: $7a
	ld b, b                                          ; $50ea: $40
	ld [hl], e                                       ; $50eb: $73
	or $9e                                           ; $50ec: $f6 $9e
	db $fc                                           ; $50ee: $fc
	cp $9a                                           ; $50ef: $fe $9a
	ei                                               ; $50f1: $fb
	or $00                                           ; $50f2: $f6 $00
	ldh a, [c]                                       ; $50f4: $f2
	rlca                                             ; $50f5: $07
	cp $9b                                           ; $50f6: $fe $9b
	ld b, $0c                                        ; $50f8: $06 $0c
	cp $fd                                           ; $50fa: $fe $fd

jr_040_50fc:
	db $fd                                           ; $50fc: $fd
	rst SubAFromDE                                          ; $50fd: $df
	dec b                                            ; $50fe: $05
	sbc c                                            ; $50ff: $99
	rst JumpTable                                          ; $5100: $c7
	ld l, e                                          ; $5101: $6b
	ld [$2a06], sp                                   ; $5102: $08 $06 $2a
	rst AddAOntoHL                                          ; $5105: $ef
	sbc $03                                          ; $5106: $de $03
	sbc c                                            ; $5108: $99
	add a                                            ; $5109: $87
	rlca                                             ; $510a: $07
	dec c                                            ; $510b: $0d
	dec e                                            ; $510c: $1d
	rra                                              ; $510d: $1f
	rrca                                             ; $510e: $0f
	ld a, e                                          ; $510f: $7b
	rst JumpTable                                          ; $5110: $c7
	ld a, h                                          ; $5111: $7c
	add a                                            ; $5112: $87
	ld [hl], a                                       ; $5113: $77
	jp nc, $ffd9                                     ; $5114: $d2 $d9 $ff

	sbc c                                            ; $5117: $99
	inc e                                            ; $5118: $1c
	ret nz                                           ; $5119: $c0

	cp $ff                                           ; $511a: $fe $ff
	rra                                              ; $511c: $1f
	inc bc                                           ; $511d: $03
	ld a, e                                          ; $511e: $7b
	sbc a                                            ; $511f: $9f
	jp c, Jump_040_7eff                              ; $5120: $da $ff $7e

	dec l                                            ; $5123: $2d
	ld a, c                                          ; $5124: $79
	ld [$277c], sp                                   ; $5125: $08 $7c $27
	ld a, e                                          ; $5128: $7b
	db $fc                                           ; $5129: $fc
	ld [hl], h                                       ; $512a: $74
	ld e, d                                          ; $512b: $5a
	ld a, a                                          ; $512c: $7f
	ld a, b                                          ; $512d: $78
	ld a, h                                          ; $512e: $7c
	adc $7e                                          ; $512f: $ce $7e
	add b                                            ; $5131: $80
	sbc c                                            ; $5132: $99
	add [hl]                                         ; $5133: $86
	ld a, [hl]                                       ; $5134: $7e
	cp [hl]                                          ; $5135: $be
	cp h                                             ; $5136: $bc
	ldh a, [$08]                                     ; $5137: $f0 $08
	sbc $f8                                          ; $5139: $de $f8
	sbc d                                            ; $513b: $9a
	add b                                            ; $513c: $80
	cp $ff                                           ; $513d: $fe $ff
	add $80                                          ; $513f: $c6 $80
	ld a, c                                          ; $5141: $79
	ret c                                            ; $5142: $d8

	ld a, h                                          ; $5143: $7c
	ld b, l                                          ; $5144: $45
	sbc $01                                          ; $5145: $de $01
	db $fd                                           ; $5147: $fd
	sbc h                                            ; $5148: $9c
	ld h, l                                          ; $5149: $65
	ld [bc], a                                       ; $514a: $02
	ld [bc], a                                       ; $514b: $02
	ld [hl], d                                       ; $514c: $72
	inc h                                            ; $514d: $24
	sbc e                                            ; $514e: $9b
	add d                                            ; $514f: $82
	add c                                            ; $5150: $81
	ld bc, $7b81                                     ; $5151: $01 $81 $7b
	ld [hl], b                                       ; $5154: $70

jr_040_5155:
	sub a                                            ; $5155: $97
	inc bc                                           ; $5156: $03
	ld a, a                                          ; $5157: $7f
	cp h                                             ; $5158: $bc
	ld d, b                                          ; $5159: $50
	ld l, a                                          ; $515a: $6f
	cp $f9                                           ; $515b: $fe $f9
	rst AddAOntoHL                                          ; $515d: $ef
	ld a, e                                          ; $515e: $7b
	jr nz, jr_040_50fc                               ; $515f: $20 $9b

	add b                                            ; $5161: $80
	pop bc                                           ; $5162: $c1
	pop hl                                           ; $5163: $e1
	rla                                              ; $5164: $17
	ld a, c                                          ; $5165: $79
	ld [$1287], a                                    ; $5166: $ea $87 $12
	adc l                                            ; $5169: $8d
	add e                                            ; $516a: $83
	ld d, a                                          ; $516b: $57
	cp c                                             ; $516c: $b9
	sbc [hl]                                         ; $516d: $9e
	call nz, $0d00                                   ; $516e: $c4 $00 $0d
	ld [hl], d                                       ; $5171: $72
	add b                                            ; $5172: $80
	adc b                                            ; $5173: $88
	add $e1                                          ; $5174: $c6 $e1
	ei                                               ; $5176: $fb
	ld b, l                                          ; $5177: $45
	adc e                                            ; $5178: $8b
	sbc a                                            ; $5179: $9f
	ccf                                              ; $517a: $3f
	rst FarCall                                          ; $517b: $f7
	rst FarCall                                          ; $517c: $f7
	rst SubAFromBC                                          ; $517d: $e7
	jp $de83                                         ; $517e: $c3 $83 $de


	rlca                                             ; $5181: $07
	rst SubAFromDE                                          ; $5182: $df
	rrca                                             ; $5183: $0f
	ld a, d                                          ; $5184: $7a
	and a                                            ; $5185: $a7
	sbc l                                            ; $5186: $9d
	cp $fb                                           ; $5187: $fe $fb
	sbc $f7                                          ; $5189: $de $f7
	ld a, e                                          ; $518b: $7b
	ld [bc], a                                       ; $518c: $02
	sbc [hl]                                         ; $518d: $9e
	ld hl, sp+$79                                    ; $518e: $f8 $79
	ld sp, $e79c                                     ; $5190: $31 $9c $e7
	db $e3                                           ; $5193: $e3
	di                                               ; $5194: $f3
	ld a, c                                          ; $5195: $79
	cpl                                              ; $5196: $2f
	ld [hl], c                                       ; $5197: $71
	ret c                                            ; $5198: $d8

	sbc h                                            ; $5199: $9c
	inc bc                                           ; $519a: $03
	di                                               ; $519b: $f3
	di                                               ; $519c: $f3

jr_040_519d:
	ld a, e                                          ; $519d: $7b
	rst FarCall                                          ; $519e: $f7
	ld a, a                                          ; $519f: $7f
	pop hl                                           ; $51a0: $e1
	ld a, a                                          ; $51a1: $7f
	adc [hl]                                         ; $51a2: $8e
	sbc $80                                          ; $51a3: $de $80
	ld a, e                                          ; $51a5: $7b
	xor b                                            ; $51a6: $a8
	reti                                             ; $51a7: $d9


	rst $38                                          ; $51a8: $ff
	jp c, Jump_040_7d4f                              ; $51a9: $da $4f $7d

	call $ffda                                       ; $51ac: $cd $da $ff
	sub [hl]                                         ; $51af: $96
	sub b                                            ; $51b0: $90
	jr nz, @-$5e                                     ; $51b1: $20 $a0

	jr nz, jr_040_51b5                               ; $51b3: $20 $00

jr_040_51b5:
	nop                                              ; $51b5: $00
	ld d, b                                          ; $51b6: $50
	ret nc                                           ; $51b7: $d0

	ret nz                                           ; $51b8: $c0

	ld a, e                                          ; $51b9: $7b
	db $db                                           ; $51ba: $db
	db $dd                                           ; $51bb: $dd
	jr nz, jr_040_519d                               ; $51bc: $20 $df

	rst SubAFromDE                                          ; $51be: $df
	sub e                                            ; $51bf: $93
	sbc $fe                                          ; $51c0: $de $fe
	db $fc                                           ; $51c2: $fc
	ld a, h                                          ; $51c3: $7c
	ld a, b                                          ; $51c4: $78
	jr nc, jr_040_5155                               ; $51c5: $30 $8e

	adc h                                            ; $51c7: $8c
	call c, Call_040_78d8                            ; $51c8: $dc $d8 $78
	jr nc, jr_040_5248                               ; $51cb: $30 $7b

	ld a, d                                          ; $51cd: $7a
	db $fc                                           ; $51ce: $fc
	sbc l                                            ; $51cf: $9d
	inc bc                                           ; $51d0: $03
	rrca                                             ; $51d1: $0f
	ld sp, hl                                        ; $51d2: $f9
	sbc $40                                          ; $51d3: $de $40
	sbc d                                            ; $51d5: $9a
	ld b, c                                          ; $51d6: $41
	ld b, a                                          ; $51d7: $47
	ccf                                              ; $51d8: $3f
	db $ed                                           ; $51d9: $ed
	ret c                                            ; $51da: $d8

	ei                                               ; $51db: $fb
	sbc e                                            ; $51dc: $9b
	ld [de], a                                       ; $51dd: $12
	inc hl                                           ; $51de: $23
	nop                                              ; $51df: $00
	jr c, @+$7b                                      ; $51e0: $38 $79

	cp e                                             ; $51e2: $bb
	sbc l                                            ; $51e3: $9d
	add $1f                                          ; $51e4: $c6 $1f
	ld [hl], d                                       ; $51e6: $72
	ld [hl], b                                       ; $51e7: $70
	sub a                                            ; $51e8: $97
	rlca                                             ; $51e9: $07
	ccf                                              ; $51ea: $3f
	ldh a, [$80]                                     ; $51eb: $f0 $80
	inc bc                                           ; $51ed: $03

jr_040_51ee:
	ld a, h                                          ; $51ee: $7c
	db $e3                                           ; $51ef: $e3
	rra                                              ; $51f0: $1f
	ld a, b                                          ; $51f1: $78
	inc h                                            ; $51f2: $24
	ld a, a                                          ; $51f3: $7f
	ldh a, [$7d]                                     ; $51f4: $f0 $7d
	ld l, l                                          ; $51f6: $6d
	ld a, a                                          ; $51f7: $7f
	ld a, d                                          ; $51f8: $7a
	cp $94                                           ; $51f9: $fe $94
	or b                                             ; $51fb: $b0
	ld [hl], c                                       ; $51fc: $71
	and $be                                          ; $51fd: $e6 $be
	db $fc                                           ; $51ff: $fc
	ld hl, sp-$20                                    ; $5200: $f8 $e0
	nop                                              ; $5202: $00
	ld a, a                                          ; $5203: $7f
	cp $f8                                           ; $5204: $fe $f8
	ld [hl], c                                       ; $5206: $71
	rst AddAOntoHL                                          ; $5207: $ef
	sbc h                                            ; $5208: $9c
	ldh a, [$cf]                                     ; $5209: $f0 $cf
	rra                                              ; $520b: $1f
	ld a, d                                          ; $520c: $7a
	jp nz, $0d9b                                     ; $520d: $c2 $9b $0d

	rst SubAFromDE                                          ; $5210: $df
	rst $38                                          ; $5211: $ff
	ccf                                              ; $5212: $3f
	ld [hl], e                                       ; $5213: $73
	xor b                                            ; $5214: $a8
	ld a, a                                          ; $5215: $7f
	ld a, [$839a]                                    ; $5216: $fa $9a $83
	ld a, [hl]                                       ; $5219: $7e
	ld sp, hl                                        ; $521a: $f9
	ld a, a                                          ; $521b: $7f
	dec c                                            ; $521c: $0d
	sbc $ff                                          ; $521d: $de $ff
	ld a, [hl]                                       ; $521f: $7e
	xor c                                            ; $5220: $a9
	ld a, [hl]                                       ; $5221: $7e
	adc c                                            ; $5222: $89
	ld a, e                                          ; $5223: $7b

jr_040_5224:
	ld e, d                                          ; $5224: $5a
	sbc d                                            ; $5225: $9a
	rra                                              ; $5226: $1f
	db $fc                                           ; $5227: $fc
	jp $87fb                                         ; $5228: $c3 $fb $87


	ld a, e                                          ; $522b: $7b
	ccf                                              ; $522c: $3f
	ld a, a                                          ; $522d: $7f
	adc $7e                                          ; $522e: $ce $7e
	db $10                                           ; $5230: $10
	ld a, c                                          ; $5231: $79
	rst SubAFromBC                                          ; $5232: $e7
	ld a, h                                          ; $5233: $7c
	cp d                                             ; $5234: $ba
	sbc h                                            ; $5235: $9c
	rrca                                             ; $5236: $0f
	ei                                               ; $5237: $fb
	rst SubAFromDE                                          ; $5238: $df
	ld a, c                                          ; $5239: $79
	add hl, hl                                       ; $523a: $29
	ld a, e                                          ; $523b: $7b
	ld e, h                                          ; $523c: $5c
	ld a, a                                          ; $523d: $7f
	and d                                            ; $523e: $a2
	db $dd                                           ; $523f: $dd
	rst $38                                          ; $5240: $ff
	sbc h                                            ; $5241: $9c
	dec a                                            ; $5242: $3d
	rst SubAFromDE                                          ; $5243: $df
	rst $38                                          ; $5244: $ff
	ld [hl], e                                       ; $5245: $73
	or a                                             ; $5246: $b7
	ld a, b                                          ; $5247: $78

jr_040_5248:
	jr nc, jr_040_5224                               ; $5248: $30 $da

	rst $38                                          ; $524a: $ff
	ld a, e                                          ; $524b: $7b
	sub $5b                                          ; $524c: $d6 $5b
	jr nz, jr_040_51ee                               ; $524e: $20 $9e

	ldh a, [$fd]                                     ; $5250: $f0 $fd
	sbc [hl]                                         ; $5252: $9e
	ld bc, $e367                                     ; $5253: $01 $67 $e3
	ld a, l                                          ; $5256: $7d
	jp nz, Jump_040_6097                             ; $5257: $c2 $97 $60

	jr nz, @+$22                                     ; $525a: $20 $20

	db $10                                           ; $525c: $10
	rra                                              ; $525d: $1f
	rst $38                                          ; $525e: $ff
	ei                                               ; $525f: $fb
	ld a, h                                          ; $5260: $7c
	ld l, a                                          ; $5261: $6f
	db $e3                                           ; $5262: $e3
	sbc l                                            ; $5263: $9d
	db $10                                           ; $5264: $10
	jr z, jr_040_52d9                                ; $5265: $28 $72

	inc d                                            ; $5267: $14
	sbc [hl]                                         ; $5268: $9e
	pop af                                           ; $5269: $f1
	reti                                             ; $526a: $d9


	rst $38                                          ; $526b: $ff
	ld a, c                                          ; $526c: $79
	ld e, $9e                                        ; $526d: $1e $9e
	ld [hl], d                                       ; $526f: $72
	sbc $02                                          ; $5270: $de $02
	sbc $f7                                          ; $5272: $de $f7
	db $db                                           ; $5274: $db
	rst $38                                          ; $5275: $ff
	rst SubAFromDE                                          ; $5276: $df
	inc c                                            ; $5277: $0c
	sub a                                            ; $5278: $97
	ld h, b                                          ; $5279: $60
	ccf                                              ; $527a: $3f
	jr nz, jr_040_52ad                               ; $527b: $20 $30

	jr c, jr_040_52db                                ; $527d: $38 $5c

	ld e, [hl]                                       ; $527f: $5e
	ld e, [hl]                                       ; $5280: $5e
	sbc $ff                                          ; $5281: $de $ff
	sbc d                                            ; $5283: $9a
	rst AddAOntoHL                                          ; $5284: $ef
	rst SubAFromBC                                          ; $5285: $e7
	db $e3                                           ; $5286: $e3
	pop hl                                           ; $5287: $e1
	pop hl                                           ; $5288: $e1
	ld [hl], l                                       ; $5289: $75
	db $ec                                           ; $528a: $ec
	ld l, l                                          ; $528b: $6d
	ldh [c], a                                       ; $528c: $e2
	ld d, [hl]                                       ; $528d: $56
	ret nz                                           ; $528e: $c0

	rst SubAFromDE                                          ; $528f: $df
	ld c, [hl]                                       ; $5290: $4e
	ld h, d                                          ; $5291: $62
	ret nz                                           ; $5292: $c0

	sbc h                                            ; $5293: $9c
	xor b                                            ; $5294: $a8
	xor h                                            ; $5295: $ac
	rlca                                             ; $5296: $07
	ld [hl], l                                       ; $5297: $75
	ld a, b                                          ; $5298: $78
	sbc h                                            ; $5299: $9c
	ld h, b                                          ; $529a: $60
	ld [hl], b                                       ; $529b: $70
	ld [hl], b                                       ; $529c: $70
	ld [hl], a                                       ; $529d: $77
	ld sp, hl                                        ; $529e: $f9
	ld a, e                                          ; $529f: $7b
	ld [$847f], sp                                   ; $52a0: $08 $7f $84
	sbc [hl]                                         ; $52a3: $9e
	inc bc                                           ; $52a4: $03
	ld a, c                                          ; $52a5: $79
	and h                                            ; $52a6: $a4
	db $fd                                           ; $52a7: $fd
	ld a, e                                          ; $52a8: $7b
	ld sp, hl                                        ; $52a9: $f9
	ld a, c                                          ; $52aa: $79
	jr nc, @-$62                                     ; $52ab: $30 $9c

jr_040_52ad:
	ld hl, sp-$1c                                    ; $52ad: $f8 $e4
	ld hl, sp+$75                                    ; $52af: $f8 $75
	sbc d                                            ; $52b1: $9a
	ld a, l                                          ; $52b2: $7d
	xor [hl]                                         ; $52b3: $ae
	sbc [hl]                                         ; $52b4: $9e
	jr jr_040_532e                                   ; $52b5: $18 $77

	cp e                                             ; $52b7: $bb
	sub c                                            ; $52b8: $91
	ret nc                                           ; $52b9: $d0

	add l                                            ; $52ba: $85
	ld l, c                                          ; $52bb: $69
	ld b, a                                          ; $52bc: $47
	ld d, e                                          ; $52bd: $53
	rst AddAOntoHL                                          ; $52be: $ef
	ld e, a                                          ; $52bf: $5f

Call_040_52c0:
	rst SubAFromDE                                          ; $52c0: $df
	inc hl                                           ; $52c1: $23
	ld [hl+], a                                      ; $52c2: $22
	ld b, $0c                                        ; $52c3: $06 $0c
	inc c                                            ; $52c5: $0c
	rra                                              ; $52c6: $1f
	ld a, c                                          ; $52c7: $79
	ld d, d                                          ; $52c8: $52
	ld a, [hl]                                       ; $52c9: $7e
	db $e4                                           ; $52ca: $e4
	ld [hl], l                                       ; $52cb: $75
	ld b, [hl]                                       ; $52cc: $46
	halt                                             ; $52cd: $76
	sbc c                                            ; $52ce: $99
	sbc [hl]                                         ; $52cf: $9e
	rlca                                             ; $52d0: $07
	ld [hl], e                                       ; $52d1: $73
	ld [hl-], a                                      ; $52d2: $32
	sbc [hl]                                         ; $52d3: $9e
	ld b, $7a                                        ; $52d4: $06 $7a
	ld h, l                                          ; $52d6: $65
	ld a, a                                          ; $52d7: $7f
	dec sp                                           ; $52d8: $3b

jr_040_52d9:
	ld a, [hl]                                       ; $52d9: $7e
	db $f4                                           ; $52da: $f4

jr_040_52db:
	ld l, a                                          ; $52db: $6f
	inc a                                            ; $52dc: $3c
	sub [hl]                                         ; $52dd: $96
	ld hl, sp+$1b                                    ; $52de: $f8 $1b
	rst $38                                          ; $52e0: $ff
	rst $38                                          ; $52e1: $ff
	ld sp, hl                                        ; $52e2: $f9
	add hl, bc                                       ; $52e3: $09
	ld [$f616], sp                                   ; $52e4: $08 $16 $f6
	ld [hl], e                                       ; $52e7: $73
	db $e3                                           ; $52e8: $e3
	sbc d                                            ; $52e9: $9a
	rst $38                                          ; $52ea: $ff
	jp hl                                            ; $52eb: $e9


	add hl, bc                                       ; $52ec: $09
	rst $38                                          ; $52ed: $ff
	rst $38                                          ; $52ee: $ff
	ld [hl], a                                       ; $52ef: $77
	ld [bc], a                                       ; $52f0: $02
	sbc [hl]                                         ; $52f1: $9e
	ldh [$73], a                                     ; $52f2: $e0 $73
	sub h                                            ; $52f4: $94
	ld a, d                                          ; $52f5: $7a
	jp nc, $079e                                     ; $52f6: $d2 $9e $07

	ld b, a                                          ; $52f9: $47
	ld h, b                                          ; $52fa: $60
	reti                                             ; $52fb: $d9


	daa                                              ; $52fc: $27
	reti                                             ; $52fd: $d9


	cp $9c                                           ; $52fe: $fe $9c
	ret c                                            ; $5300: $d8

	xor $83                                          ; $5301: $ee $83
	ld a, b                                          ; $5303: $78
	ld d, a                                          ; $5304: $57
	rst SubAFromDE                                          ; $5305: $df
	rra                                              ; $5306: $1f
	sbc l                                            ; $5307: $9d
	daa                                              ; $5308: $27
	ld hl, $af78                                     ; $5309: $21 $78 $af
	sbc $3f                                          ; $530c: $de $3f
	ld a, a                                          ; $530e: $7f
	and [hl]                                         ; $530f: $a6
	halt                                             ; $5310: $76
	xor d                                            ; $5311: $aa
	ld [hl], e                                       ; $5312: $73
	and l                                            ; $5313: $a5
	rst SubAFromDE                                          ; $5314: $df
	db $e3                                           ; $5315: $e3
	sbc $c0                                          ; $5316: $de $c0
	sbc h                                            ; $5318: $9c
	ccf                                              ; $5319: $3f
	cp $e4                                           ; $531a: $fe $e4
	ld [hl], c                                       ; $531c: $71
	add b                                            ; $531d: $80
	sbc [hl]                                         ; $531e: $9e
	db $fc                                           ; $531f: $fc
	ld a, e                                          ; $5320: $7b
	xor c                                            ; $5321: $a9
	sbc e                                            ; $5322: $9b
	ldh [$78], a                                     ; $5323: $e0 $78
	rrca                                             ; $5325: $0f
	rlca                                             ; $5326: $07
	ld [hl], e                                       ; $5327: $73

jr_040_5328:
	and d                                            ; $5328: $a2
	ld [hl], a                                       ; $5329: $77
	jr c, jr_040_5328                                ; $532a: $38 $fc

	sbc d                                            ; $532c: $9a
	ret nz                                           ; $532d: $c0

jr_040_532e:
	ld hl, sp-$0a                                    ; $532e: $f8 $f6
	rst JumpTable                                          ; $5330: $c7
	ld [bc], a                                       ; $5331: $02
	ld [hl], e                                       ; $5332: $73
	and d                                            ; $5333: $a2
	rst SubAFromDE                                          ; $5334: $df
	inc b                                            ; $5335: $04
	ei                                               ; $5336: $fb
	rst SubAFromDE                                          ; $5337: $df
	rrca                                             ; $5338: $0f
	ld l, [hl]                                       ; $5339: $6e
	add h                                            ; $533a: $84
	ld [hl], h                                       ; $533b: $74
	call c, $dffd                                    ; $533c: $dc $fd $df
	rst FarCall                                          ; $533f: $f7
	sbc l                                            ; $5340: $9d
	adc [hl]                                         ; $5341: $8e
	ld l, $dd                                        ; $5342: $2e $dd
	xor $9c                                          ; $5344: $ee $9c
	db $fc                                           ; $5346: $fc
	inc c                                            ; $5347: $0c
	sbc c                                            ; $5348: $99
	sbc $19                                          ; $5349: $de $19
	sbc c                                            ; $534b: $99
	rra                                              ; $534c: $1f
	ld a, a                                          ; $534d: $7f
	ld c, a                                          ; $534e: $4f
	ld c, a                                          ; $534f: $4f
	add b                                            ; $5350: $80
	add a                                            ; $5351: $87
	ld [hl], l                                       ; $5352: $75
	ld [hl], a                                       ; $5353: $77
	rst SubAFromDE                                          ; $5354: $df
	ldh [$9d], a                                     ; $5355: $e0 $9d
	rst GetHLinHL                                          ; $5357: $cf
	ldh a, [$dd]                                     ; $5358: $f0 $dd
	ldh [$9c], a                                     ; $535a: $e0 $9c
	inc bc                                           ; $535c: $03
	inc a                                            ; $535d: $3c
	ret nz                                           ; $535e: $c0

	sbc $80                                          ; $535f: $de $80
	rst SubAFromDE                                          ; $5361: $df
	ret nz                                           ; $5362: $c0

	halt                                             ; $5363: $76
	push af                                          ; $5364: $f5
	rst SubAFromDE                                          ; $5365: $df
	ld a, a                                          ; $5366: $7f
	rst SubAFromDE                                          ; $5367: $df
	ccf                                              ; $5368: $3f
	sbc h                                            ; $5369: $9c
	adc $4e                                          ; $536a: $ce $4e
	ld c, [hl]                                       ; $536c: $4e
	call c, $d94c                                    ; $536d: $dc $4c $d9
	rst $38                                          ; $5370: $ff
	sbc [hl]                                         ; $5371: $9e
	add b                                            ; $5372: $80
	ld a, c                                          ; $5373: $79
	dec sp                                           ; $5374: $3b
	rst SubAFromDE                                          ; $5375: $df
	rra                                              ; $5376: $1f
	sbc e                                            ; $5377: $9b
	sbc a                                            ; $5378: $9f
	rst SubAFromDE                                          ; $5379: $df
	rst $38                                          ; $537a: $ff
	ldh a, [$73]                                     ; $537b: $f0 $73
	ld a, c                                          ; $537d: $79
	ld a, c                                          ; $537e: $79
	jp hl                                            ; $537f: $e9


	db $db                                           ; $5380: $db
	cp $df                                           ; $5381: $fe $df
	rst $38                                          ; $5383: $ff
	sbc h                                            ; $5384: $9c
	ld bc, $fdfd                                     ; $5385: $01 $fd $fd
	ld [hl], e                                       ; $5388: $73
	dec e                                            ; $5389: $1d
	sbc $1f                                          ; $538a: $de $1f
	rst SubAFromDE                                          ; $538c: $df
	ccf                                              ; $538d: $3f
	ld l, a                                          ; $538e: $6f
	db $e3                                           ; $538f: $e3
	halt                                             ; $5390: $76
	ret nz                                           ; $5391: $c0

	sub d                                            ; $5392: $92
	ret nz                                           ; $5393: $c0

	rst SubAFromDE                                          ; $5394: $df
	add e                                            ; $5395: $83
	add b                                            ; $5396: $80
	inc bc                                           ; $5397: $03
	rrca                                             ; $5398: $0f
	rst $38                                          ; $5399: $ff
	cp a                                             ; $539a: $bf
	cp a                                             ; $539b: $bf
	and b                                            ; $539c: $a0
	cp $ff                                           ; $539d: $fe $ff
	db $fc                                           ; $539f: $fc
	ld a, d                                          ; $53a0: $7a
	ld [de], a                                       ; $53a1: $12
	ld a, a                                          ; $53a2: $7f
	push af                                          ; $53a3: $f5
	sbc d                                            ; $53a4: $9a
	cp $23                                           ; $53a5: $fe $23
	rst SubAFromDE                                          ; $53a7: $df
	ld hl, sp-$04                                    ; $53a8: $f8 $fc
	halt                                             ; $53aa: $76
	rlca                                             ; $53ab: $07
	sbc b                                            ; $53ac: $98
	rst SubAFromBC                                          ; $53ad: $e7
	ccf                                              ; $53ae: $3f
	rrca                                             ; $53af: $0f
	rlca                                             ; $53b0: $07
	rst $38                                          ; $53b1: $ff
	cp $e1                                           ; $53b2: $fe $e1
	ld a, b                                          ; $53b4: $78
	res 3, [hl]                                      ; $53b5: $cb $9e
	ld a, a                                          ; $53b7: $7f
	ld l, e                                          ; $53b8: $6b
	ld e, d                                          ; $53b9: $5a
	rst SubAFromDE                                          ; $53ba: $df
	rst $38                                          ; $53bb: $ff
	ld a, h                                          ; $53bc: $7c
	ld sp, $f89d                                     ; $53bd: $31 $9d $f8
	ld sp, hl                                        ; $53c0: $f9
	db $dd                                           ; $53c1: $dd
	ld hl, sp-$63                                    ; $53c2: $f8 $9d
	add hl, bc                                       ; $53c4: $09
	add hl, de                                       ; $53c5: $19
	db $db                                           ; $53c6: $db
	ld sp, hl                                        ; $53c7: $f9
	rst SubAFromDE                                          ; $53c8: $df
	rst $38                                          ; $53c9: $ff
	sbc h                                            ; $53ca: $9c
	ld a, h                                          ; $53cb: $7c
	inc bc                                           ; $53cc: $03
	rrca                                             ; $53cd: $0f
	ld [hl], c                                       ; $53ce: $71
	ei                                               ; $53cf: $fb
	ld a, [hl]                                       ; $53d0: $7e
	ld e, d                                          ; $53d1: $5a
	ld l, a                                          ; $53d2: $6f
	ld a, [$2090]                                    ; $53d3: $fa $90 $20
	ld hl, sp-$02                                    ; $53d6: $f8 $fe
	rst $38                                          ; $53d8: $ff
	cp $71                                           ; $53d9: $fe $71
	rst $38                                          ; $53db: $ff
	ccf                                              ; $53dc: $3f
	rst SubAFromDE                                          ; $53dd: $df
	rlca                                             ; $53de: $07
	ld bc, $0100                                     ; $53df: $01 $00 $01
	ld c, $e7                                        ; $53e2: $0e $e7
	db $db                                           ; $53e4: $db
	daa                                              ; $53e5: $27
	sbc [hl]                                         ; $53e6: $9e
	and a                                            ; $53e7: $a7
	jp c, $96fe                                      ; $53e8: $da $fe $96

jr_040_53eb:
	ld a, [hl]                                       ; $53eb: $7e
	rra                                              ; $53ec: $1f
	ld a, [de]                                       ; $53ed: $1a
	dec d                                            ; $53ee: $15
	jr jr_040_5405                                   ; $53ef: $18 $14

	ld [de], a                                       ; $53f1: $12
	sub l                                            ; $53f2: $95
	sbc d                                            ; $53f3: $9a
	call c, $943f                                    ; $53f4: $dc $3f $94
	dec a                                            ; $53f7: $3d
	ld a, [hl-]                                      ; $53f8: $3a
	dec [hl]                                         ; $53f9: $35
	ld a, a                                          ; $53fa: $7f
	rst $38                                          ; $53fb: $ff
	ld a, [hl]                                       ; $53fc: $7e
	ld a, [hl]                                       ; $53fd: $7e
	db $fc                                           ; $53fe: $fc
	db $fc                                           ; $53ff: $fc
	ld hl, sp-$08                                    ; $5400: $f8 $f8
	db $dd                                           ; $5402: $dd
	ret nz                                           ; $5403: $c0

	db $dd                                           ; $5404: $dd

jr_040_5405:
	add b                                            ; $5405: $80
	sbc d                                            ; $5406: $9a
	cp a                                             ; $5407: $bf
	ccf                                              ; $5408: $3f
	ccf                                              ; $5409: $3f
	add hl, de                                       ; $540a: $19
	jr jr_040_53eb                                   ; $540b: $18 $de

	jr nc, jr_040_5483                               ; $540d: $30 $74

	ld [hl], d                                       ; $540f: $72
	ld [hl], a                                       ; $5410: $77
	ld [hl], $dd                                     ; $5411: $36 $dd
	rst $38                                          ; $5413: $ff
	rst SubAFromDE                                          ; $5414: $df
	ld a, a                                          ; $5415: $7f
	ld a, h                                          ; $5416: $7c
	cp a                                             ; $5417: $bf
	call c, Call_040_7aff                            ; $5418: $dc $ff $7a
	ld a, [$ffdb]                                    ; $541b: $fa $db $ff
	rst SubAFromDE                                          ; $541e: $df
	ld a, a                                          ; $541f: $7f
	db $db                                           ; $5420: $db
	rst $38                                          ; $5421: $ff
	sbc l                                            ; $5422: $9d
	dec e                                            ; $5423: $1d
	ld e, $69                                        ; $5424: $1e $69
	ld e, d                                          ; $5426: $5a
	sbc [hl]                                         ; $5427: $9e
	ldh a, [$d9]                                     ; $5428: $f0 $d9
	rst $38                                          ; $542a: $ff
	sbc [hl]                                         ; $542b: $9e
	rst AddAOntoHL                                          ; $542c: $ef
	halt                                             ; $542d: $76
	halt                                             ; $542e: $76
	ld a, c                                          ; $542f: $79
	dec a                                            ; $5430: $3d
	ld [hl], d                                       ; $5431: $72
	ld a, h                                          ; $5432: $7c
	sbc $fc                                          ; $5433: $de $fc
	rst SubAFromDE                                          ; $5435: $df
	jp $819e                                         ; $5436: $c3 $9e $81


	sbc $01                                          ; $5439: $de $01
	ld a, d                                          ; $543b: $7a
	add [hl]                                         ; $543c: $86
	ld [hl], e                                       ; $543d: $73
	and d                                            ; $543e: $a2
	halt                                             ; $543f: $76
	add $de                                          ; $5440: $c6 $de
	ldh [$de], a                                     ; $5442: $e0 $de
	ldh a, [$df]                                     ; $5444: $f0 $df
	ccf                                              ; $5446: $3f
	sbc $1f                                          ; $5447: $de $1f
	sbc $0f                                          ; $5449: $de $0f
	reti                                             ; $544b: $d9


	ld c, b                                          ; $544c: $48
	reti                                             ; $544d: $d9


	rst $38                                          ; $544e: $ff
	ld c, [hl]                                       ; $544f: $4e
	nop                                              ; $5450: $00
	sbc h                                            ; $5451: $9c
	inc sp                                           ; $5452: $33
	ld b, h                                          ; $5453: $44
	ld b, e                                          ; $5454: $43
	sbc $33                                          ; $5455: $de $33
	sbc [hl]                                         ; $5457: $9e
	inc [hl]                                         ; $5458: $34
	sbc $44                                          ; $5459: $de $44
	ld b, e                                          ; $545b: $43
	or $7f                                           ; $545c: $f6 $7f
	ld sp, hl                                        ; $545e: $f9
	ld [hl], e                                       ; $545f: $73
	or $7f                                           ; $5460: $f6 $7f
	ld hl, sp-$21                                    ; $5462: $f8 $df
	inc sp                                           ; $5464: $33
	ld h, a                                          ; $5465: $67
	db $ec                                           ; $5466: $ec
	sub b                                            ; $5467: $90
	ld d, h                                          ; $5468: $54
	ld b, a                                          ; $5469: $47
	ld d, l                                          ; $546a: $55
	ld d, l                                          ; $546b: $55
	ld [hl], h                                       ; $546c: $74
	ld b, h                                          ; $546d: $44
	ld [hl], l                                       ; $546e: $75
	ld b, h                                          ; $546f: $44
	ld [hl], l                                       ; $5470: $75
	ld d, l                                          ; $5471: $55
	ld d, h                                          ; $5472: $54
	ld [hl], a                                       ; $5473: $77
	ld [hl], a                                       ; $5474: $77
	ld [hl], l                                       ; $5475: $75
	ld d, h                                          ; $5476: $54
	ld a, e                                          ; $5477: $7b
	or $9d                                           ; $5478: $f6 $9d
	ld [hl], a                                       ; $547a: $77
	ld d, l                                          ; $547b: $55
	sbc $77                                          ; $547c: $de $77
	ld [hl], a                                       ; $547e: $77
	db $fc                                           ; $547f: $fc
	ld a, a                                          ; $5480: $7f
	db $ed                                           ; $5481: $ed
	sbc e                                            ; $5482: $9b

jr_040_5483:
	ld d, l                                          ; $5483: $55
	ld b, a                                          ; $5484: $47
	ld [hl], a                                       ; $5485: $77
	ld h, [hl]                                       ; $5486: $66
	ld [hl], e                                       ; $5487: $73
	ldh a, [c]                                       ; $5488: $f2
	rst SubAFromDE                                          ; $5489: $df
	ld d, l                                          ; $548a: $55
	sbc c                                            ; $548b: $99
	ld d, [hl]                                       ; $548c: $56
	ld h, [hl]                                       ; $548d: $66
	ld h, a                                          ; $548e: $67
	ld d, l                                          ; $548f: $55
	ld d, l                                          ; $5490: $55
	ld d, a                                          ; $5491: $57
	ld [hl], e                                       ; $5492: $73
	rst FarCall                                          ; $5493: $f7
	sbc l                                            ; $5494: $9d
	ld h, [hl]                                       ; $5495: $66
	ld h, l                                          ; $5496: $65
	db $db                                           ; $5497: $db
	ld d, l                                          ; $5498: $55
	ld a, e                                          ; $5499: $7b
	or $df                                           ; $549a: $f6 $df
	ld d, l                                          ; $549c: $55
	call $8007                                       ; $549d: $cd $07 $80
	ld sp, hl                                        ; $54a0: $f9
	rra                                              ; $54a1: $1f
	rst $38                                          ; $54a2: $ff
	jr c, @+$01                                      ; $54a3: $38 $ff

jr_040_54a5:
	jr nc, jr_040_54a5                               ; $54a5: $30 $fe

	ld bc, $8779                                     ; $54a7: $01 $79 $87
	cp $c7                                           ; $54aa: $fe $c7
	and $ff                                          ; $54ac: $e6 $ff
	cp $3f                                           ; $54ae: $fe $3f
	ccf                                              ; $54b0: $3f
	ret nz                                           ; $54b1: $c0

	xor $11                                          ; $54b2: $ee $11
	ld bc, $07ff                                     ; $54b4: $01 $ff $07
	db $fc                                           ; $54b7: $fc
	ccf                                              ; $54b8: $3f
	ret nz                                           ; $54b9: $c0

	ld hl, sp+$07                                    ; $54ba: $f8 $07
	ldh a, [rIF]                                     ; $54bc: $f0 $0f
	ld [hl], b                                       ; $54be: $70
	add b                                            ; $54bf: $80
	adc a                                            ; $54c0: $8f
	rst $38                                          ; $54c1: $ff
	nop                                              ; $54c2: $00
	scf                                              ; $54c3: $37
	ret z                                            ; $54c4: $c8

	rst $38                                          ; $54c5: $ff
	nop                                              ; $54c6: $00
	rst $38                                          ; $54c7: $ff
	ld [$39f6], sp                                   ; $54c8: $08 $f6 $39
	rlca                                             ; $54cb: $07
	ld hl, sp+$02                                    ; $54cc: $f8 $02
	db $fd                                           ; $54ce: $fd
	inc c                                            ; $54cf: $0c
	rst $38                                          ; $54d0: $ff
	sbc b                                            ; $54d1: $98
	ld a, a                                          ; $54d2: $7f
	sub b                                            ; $54d3: $90
	ccf                                              ; $54d4: $3f
	nop                                              ; $54d5: $00
	ccf                                              ; $54d6: $3f
	sbc a                                            ; $54d7: $9f
	ld h, b                                          ; $54d8: $60
	ccf                                              ; $54d9: $3f
	ret nz                                           ; $54da: $c0

	ld c, [hl]                                       ; $54db: $4e
	or c                                             ; $54dc: $b1
	ld c, b                                          ; $54dd: $48
	or a                                             ; $54de: $b7
	ld a, a                                          ; $54df: $7f
	rst SubAFromBC                                          ; $54e0: $e7
	ld a, a                                          ; $54e1: $7f
	db $e4                                           ; $54e2: $e4
	sub [hl]                                         ; $54e3: $96
	db $fd                                           ; $54e4: $fd

jr_040_54e5:
	ld [bc], a                                       ; $54e5: $02
	cp a                                             ; $54e6: $bf
	ld b, b                                          ; $54e7: $40
	pop bc                                           ; $54e8: $c1
	ccf                                              ; $54e9: $3f
	pop bc                                           ; $54ea: $c1
	ccf                                              ; $54eb: $3f
	db $10                                           ; $54ec: $10
	ld a, e                                          ; $54ed: $7b
	reti                                             ; $54ee: $d9


	adc l                                            ; $54ef: $8d
	add b                                            ; $54f0: $80
	ld a, a                                          ; $54f1: $7f
	ret nz                                           ; $54f2: $c0

	jr nz, jr_040_54e5                               ; $54f3: $20 $f0

	nop                                              ; $54f5: $00
	ld [$81f0], sp                                   ; $54f6: $08 $f0 $81
	ld a, [$ff84]                                    ; $54f9: $fa $84 $ff
	ld a, [hl-]                                      ; $54fc: $3a
	db $fd                                           ; $54fd: $fd
	rlca                                             ; $54fe: $07
	ld hl, sp+$17                                    ; $54ff: $f8 $17
	add sp, -$05                                     ; $5501: $e8 $fb
	sub l                                            ; $5503: $95
	db $10                                           ; $5504: $10
	add sp, $62                                      ; $5505: $e8 $62
	sbc l                                            ; $5507: $9d
	ld a, h                                          ; $5508: $7c
	add e                                            ; $5509: $83
	ld e, l                                          ; $550a: $5d
	ldh [c], a                                       ; $550b: $e2
	rlca                                             ; $550c: $07
	ld hl, sp-$08                                    ; $550d: $f8 $f8
	rst SubAFromDE                                          ; $550f: $df
	add b                                            ; $5510: $80
	ldh [$8c], a                                     ; $5511: $e0 $8c
	sbc l                                            ; $5513: $9d
	rrca                                             ; $5514: $0f
	ld bc, $fe4f                                     ; $5515: $01 $4f $fe
	sbc l                                            ; $5518: $9d
	and b                                            ; $5519: $a0
	ret nz                                           ; $551a: $c0

	ld d, a                                          ; $551b: $57
	cp $9d                                           ; $551c: $fe $9d
	and c                                            ; $551e: $a1
	ret nz                                           ; $551f: $c0

	ei                                               ; $5520: $fb
	sub l                                            ; $5521: $95
	ld bc, $0500                                     ; $5522: $01 $00 $05
	inc bc                                           ; $5525: $03
	ld d, $0f                                        ; $5526: $16 $0f
	ld e, c                                          ; $5528: $59
	ccf                                              ; $5529: $3f
	ld h, [hl]                                       ; $552a: $66
	rst $38                                          ; $552b: $ff
	ld h, a                                          ; $552c: $67
	ld hl, sp-$80                                    ; $552d: $f8 $80
	sbc c                                            ; $552f: $99
	cp $67                                           ; $5530: $fe $67
	ld hl, sp-$41                                    ; $5532: $f8 $bf
	ldh [$3f], a                                     ; $5534: $e0 $3f
	and b                                            ; $5536: $a0
	sbc a                                            ; $5537: $9f
	db $fc                                           ; $5538: $fc
	ld a, a                                          ; $5539: $7f
	db $f4                                           ; $553a: $f4
	adc a                                            ; $553b: $8f
	db $f4                                           ; $553c: $f4
	ld l, a                                          ; $553d: $6f
	sub h                                            ; $553e: $94
	rst GetHLinHL                                          ; $553f: $cf
	inc [hl]                                         ; $5540: $34
	adc $35                                          ; $5541: $ce $35
	call z, $0c37                                    ; $5543: $cc $37 $0c
	rst FarCall                                          ; $5546: $f7
	sbc $37                                          ; $5547: $de $37
	rst $38                                          ; $5549: $ff
	rlca                                             ; $554a: $07
	rst $38                                          ; $554b: $ff
	rlca                                             ; $554c: $07
	rst JumpTable                                          ; $554d: $c7
	sbc e                                            ; $554e: $9b
	ccf                                              ; $554f: $3f
	ld b, h                                          ; $5550: $44
	rst $38                                          ; $5551: $ff
	xor $de                                          ; $5552: $ee $de
	rst $38                                          ; $5554: $ff
	sub h                                            ; $5555: $94
	or $9f                                           ; $5556: $f6 $9f
	nop                                              ; $5558: $00
	rst $38                                          ; $5559: $ff
	pop af                                           ; $555a: $f1
	rst $38                                          ; $555b: $ff
	rst $38                                          ; $555c: $ff
	ldh a, [$f3]                                     ; $555d: $f0 $f3
	db $fc                                           ; $555f: $fc
	jr nz, jr_040_55dc                               ; $5560: $20 $7a

	db $f4                                           ; $5562: $f4
	add e                                            ; $5563: $83
	db $ec                                           ; $5564: $ec
	rla                                              ; $5565: $17
	cp e                                             ; $5566: $bb
	ld b, a                                          ; $5567: $47
	rlca                                             ; $5568: $07

jr_040_5569:
	ld hl, sp+$4f                                    ; $5569: $f8 $4f
	ldh a, [$bf]                                     ; $556b: $f0 $bf
	ret nz                                           ; $556d: $c0

	rst AddAOntoHL                                          ; $556e: $ef
	db $10                                           ; $556f: $10
	pop hl                                           ; $5570: $e1
	ld e, $31                                        ; $5571: $1e $31
	adc $01                                          ; $5573: $ce $01
	cp $00                                           ; $5575: $fe $00
	rst $38                                          ; $5577: $ff
	add l                                            ; $5578: $85
	ld a, [hl]                                       ; $5579: $7e
	pop hl                                           ; $557a: $e1
	ld a, $c0                                        ; $557b: $3e $c0
	ld sp, $04fb                                     ; $557d: $31 $fb $04
	ld a, d                                          ; $5580: $7a
	db $d3                                           ; $5581: $d3
	adc [hl]                                         ; $5582: $8e
	nop                                              ; $5583: $00
	or $0f                                           ; $5584: $f6 $0f
	ld h, a                                          ; $5586: $67
	sbc a                                            ; $5587: $9f
	add e                                            ; $5588: $83
	ld a, a                                          ; $5589: $7f
	or b                                             ; $558a: $b0
	ld c, a                                          ; $558b: $4f
	ldh [$1f], a                                     ; $558c: $e0 $1f
	ret nz                                           ; $558e: $c0

	ccf                                              ; $558f: $3f
	add sp, $17                                      ; $5590: $e8 $17
	db $fc                                           ; $5592: $fc
	inc bc                                           ; $5593: $03
	ld a, e                                          ; $5594: $7b
	db $ec                                           ; $5595: $ec
	add a                                            ; $5596: $87
	add c                                            ; $5597: $81
	rlca                                             ; $5598: $07
	db $fc                                           ; $5599: $fc
	rrca                                             ; $559a: $0f
	db $fc                                           ; $559b: $fc
	inc bc                                           ; $559c: $03
	db $fc                                           ; $559d: $fc
	ld a, [bc]                                       ; $559e: $0a
	push af                                          ; $559f: $f5
	jr c, jr_040_5569                                ; $55a0: $38 $c7

	ld de, $43ee                                     ; $55a2: $11 $ee $43
	cp h                                             ; $55a5: $bc
	dec bc                                           ; $55a6: $0b
	db $fc                                           ; $55a7: $fc
	ld b, d                                          ; $55a8: $42
	db $fd                                           ; $55a9: $fd
	ld [hl], h                                       ; $55aa: $74
	cp $3d                                           ; $55ab: $fe $3d
	cp $f9                                           ; $55ad: $fe $f9
	ld a, e                                          ; $55af: $7b
	add $89                                          ; $55b0: $c6 $89
	ld [hl], $c9                                     ; $55b2: $36 $c9

jr_040_55b4:
	rst $38                                          ; $55b4: $ff
	nop                                              ; $55b5: $00
	ccf                                              ; $55b6: $3f
	ret nz                                           ; $55b7: $c0

	nop                                              ; $55b8: $00
	ret nz                                           ; $55b9: $c0

	add b                                            ; $55ba: $80
	nop                                              ; $55bb: $00
	add $00                                          ; $55bc: $c6 $00
	rst SubAFromDE                                          ; $55be: $df
	jr nz, @-$3a                                     ; $55bf: $20 $c4

	jr c, jr_040_55b4                                ; $55c1: $38 $f1

	ld c, $fc                                        ; $55c3: $0e $fc
	ld [bc], a                                       ; $55c5: $02

jr_040_55c6:
	ld sp, hl                                        ; $55c6: $f9
	ld b, $fb                                        ; $55c7: $06 $fb
	ld a, a                                          ; $55c9: $7f
	or b                                             ; $55ca: $b0
	sbc [hl]                                         ; $55cb: $9e
	ld [bc], a                                       ; $55cc: $02
	ld l, e                                          ; $55cd: $6b
	cp $fb                                           ; $55ce: $fe $fb
	ld a, a                                          ; $55d0: $7f
	sub $f3                                          ; $55d1: $d6 $f3
	ld b, a                                          ; $55d3: $47
	ldh a, [$7f]                                     ; $55d4: $f0 $7f
	ret nz                                           ; $55d6: $c0

	sbc [hl]                                         ; $55d7: $9e
	db $10                                           ; $55d8: $10
	ld l, e                                          ; $55d9: $6b
	cp $03                                           ; $55da: $fe $03

jr_040_55dc:
	ret nc                                           ; $55dc: $d0

	db $fc                                           ; $55dd: $fc
	sbc h                                            ; $55de: $9c
	ld a, a                                          ; $55df: $7f
	add b                                            ; $55e0: $80
	ld b, b                                          ; $55e1: $40
	ld l, e                                          ; $55e2: $6b
	cp $6e                                           ; $55e3: $fe $6e

jr_040_55e5:
	jp z, $ff9e                                      ; $55e5: $ca $9e $ff

	ld h, d                                          ; $55e8: $62
	ret nz                                           ; $55e9: $c0

	sub l                                            ; $55ea: $95
	and l                                            ; $55eb: $a5
	jp $cfb6                                         ; $55ec: $c3 $b6 $cf


	cp c                                             ; $55ef: $b9
	rst SubAFromDE                                          ; $55f0: $df
	cp h                                             ; $55f1: $bc
	rst SubAFromHL                                          ; $55f2: $d7
	cp h                                             ; $55f3: $bc
	sub $6f                                          ; $55f4: $d6 $6f
	cp $80                                           ; $55f6: $fe $80
	sbc b                                            ; $55f8: $98
	cp $70                                           ; $55f9: $fe $70
	ld hl, sp-$70                                    ; $55fb: $f8 $90
	ldh a, [rAUD1LEN]                                ; $55fd: $f0 $11
	jr nc, jr_040_5612                               ; $55ff: $30 $11

	jr nc, jr_040_5656                               ; $5601: $30 $53

	jr nc, jr_040_565c                               ; $5603: $30 $57

	jr nc, jr_040_55e5                               ; $5605: $30 $de

	jr nc, jr_040_5688                               ; $5607: $30 $7f

jr_040_5609:
	jr nz, jr_040_5609                               ; $5609: $20 $fe

	ld hl, $21fe                                     ; $560b: $21 $fe $21
	db $fc                                           ; $560e: $fc
	inc hl                                           ; $560f: $23
	ld hl, sp+$27                                    ; $5610: $f8 $27

jr_040_5612:
	ld hl, sp+$26                                    ; $5612: $f8 $26
	pop hl                                           ; $5614: $e1
	ld hl, $993e                                     ; $5615: $21 $3e $99
	rra                                              ; $5618: $1f
	dec c                                            ; $5619: $0d
	rst FarCall                                          ; $561a: $f7
	dec c                                            ; $561b: $0d
	rst FarCall                                          ; $561c: $f7
	rrca                                             ; $561d: $0f
	ld a, e                                          ; $561e: $7b
	cp $80                                           ; $561f: $fe $80
	inc bc                                           ; $5621: $03
	ldh [rTAC], a                                    ; $5622: $e0 $07
	rra                                              ; $5624: $1f
	rst FarCall                                          ; $5625: $f7
	rst $38                                          ; $5626: $ff
	ccf                                              ; $5627: $3f
	rst FarCall                                          ; $5628: $f7
	cp $03                                           ; $5629: $fe $03
	call $c732                                       ; $562b: $cd $32 $c7
	jr c, jr_040_55c6                                ; $562e: $38 $96

	ld a, c                                          ; $5630: $79
	sbc a                                            ; $5631: $9f
	ld a, a                                          ; $5632: $7f
	rst AddAOntoHL                                          ; $5633: $ef
	ccf                                              ; $5634: $3f
	ld l, a                                          ; $5635: $6f
	sbc a                                            ; $5636: $9f
	ld l, a                                          ; $5637: $6f
	sbc a                                            ; $5638: $9f
	rst SubAFromDE                                          ; $5639: $df
	ld h, a                                          ; $563a: $67
	rst JumpTable                                          ; $563b: $c7
	ccf                                              ; $563c: $3f
	rst FarCall                                          ; $563d: $f7
	ld a, a                                          ; $563e: $7f
	cp a                                             ; $563f: $bf
	ld a, a                                          ; $5640: $7f
	ei                                               ; $5641: $fb
	call c, $80ff                                    ; $5642: $dc $ff $80
	ldh a, [rIE]                                     ; $5645: $f0 $ff
	ret nz                                           ; $5647: $c0

	rst $38                                          ; $5648: $ff
	ld [hl], b                                       ; $5649: $70
	rst $38                                          ; $564a: $ff
	ldh [rIE], a                                     ; $564b: $e0 $ff
	db $e4                                           ; $564d: $e4
	rst $38                                          ; $564e: $ff
	db $fc                                           ; $564f: $fc
	rst $38                                          ; $5650: $ff
	cp $ff                                           ; $5651: $fe $ff
	ld sp, hl                                        ; $5653: $f9
	rst $38                                          ; $5654: $ff
	ld a, c                                          ; $5655: $79

jr_040_5656:
	rst $38                                          ; $5656: $ff
	ld [hl], d                                       ; $5657: $72
	adc a                                            ; $5658: $8f
	jr nc, @-$2f                                     ; $5659: $30 $cf

	db $dd                                           ; $565b: $dd

jr_040_565c:
	ld a, $7f                                        ; $565c: $3e $7f
	adc b                                            ; $565e: $88
	rst SubAFromBC                                          ; $565f: $e7
	sbc b                                            ; $5660: $98
	ld l, l                                          ; $5661: $6d
	or d                                             ; $5662: $b2
	cpl                                              ; $5663: $2f
	sbc b                                            ; $5664: $98
	ldh a, [$6e]                                     ; $5665: $f0 $6e
	pop af                                           ; $5667: $f1
	or d                                             ; $5668: $b2
	ld c, a                                          ; $5669: $4f
	cp h                                             ; $566a: $bc
	ld b, e                                          ; $566b: $43
	halt                                             ; $566c: $76
	or d                                             ; $566d: $b2
	sbc h                                            ; $566e: $9c
	call z, $083f                                    ; $566f: $cc $3f $08
	ld a, c                                          ; $5672: $79
	ld h, h                                          ; $5673: $64
	sub [hl]                                         ; $5674: $96
	sbc h                                            ; $5675: $9c
	ld a, e                                          ; $5676: $7b
	ld b, $f9                                        ; $5677: $06 $f9
	ld b, h                                          ; $5679: $44
	ei                                               ; $567a: $fb
	db $e4                                           ; $567b: $e4
	ld a, a                                          ; $567c: $7f
	inc c                                            ; $567d: $0c
	ld a, d                                          ; $567e: $7a
	or l                                             ; $567f: $b5
	add b                                            ; $5680: $80
	ld [bc], a                                       ; $5681: $02
	rst $38                                          ; $5682: $ff
	rrca                                             ; $5683: $0f
	rst $38                                          ; $5684: $ff
	ld a, l                                          ; $5685: $7d
	rst $38                                          ; $5686: $ff
	inc bc                                           ; $5687: $03

jr_040_5688:
	db $fc                                           ; $5688: $fc
	ld bc, $04fe                                     ; $5689: $01 $fe $04
	ei                                               ; $568c: $fb
	dec e                                            ; $568d: $1d
	db $e3                                           ; $568e: $e3
	dec sp                                           ; $568f: $3b
	rst JumpTable                                          ; $5690: $c7
	ld de, $ccef                                     ; $5691: $11 $ef $cc
	di                                               ; $5694: $f3
	nop                                              ; $5695: $00
	rst $38                                          ; $5696: $ff
	ldh a, [c]                                       ; $5697: $f2
	rrca                                             ; $5698: $0f
	call z, $c67e                                    ; $5699: $cc $7e $c6
	db $fc                                           ; $569c: $fc
	add b                                            ; $569d: $80
	db $fc                                           ; $569e: $fc
	ld hl, sp-$64                                    ; $569f: $f8 $9c
	ld hl, sp-$0e                                    ; $56a1: $f8 $f2
	db $fc                                           ; $56a3: $fc
	ld a, e                                          ; $56a4: $7b
	add hl, de                                       ; $56a5: $19
	ld a, a                                          ; $56a6: $7f
	jp c, $c662                                      ; $56a7: $da $62 $c6

	ld d, [hl]                                       ; $56aa: $56
	ret nz                                           ; $56ab: $c0

jr_040_56ac:
	rst SubAFromBC                                          ; $56ac: $e7
	ld h, [hl]                                       ; $56ad: $66
	ret z                                            ; $56ae: $c8

	ld c, [hl]                                       ; $56af: $4e
	ret nz                                           ; $56b0: $c0

	rst SubAFromBC                                          ; $56b1: $e7
	ld h, [hl]                                       ; $56b2: $66
	ret z                                            ; $56b3: $c8

	ld c, [hl]                                       ; $56b4: $4e
	ret nz                                           ; $56b5: $c0

jr_040_56b6:
	ld e, a                                          ; $56b6: $5f
	cp $76                                           ; $56b7: $fe $76
	call z, $bb97                                    ; $56b9: $cc $97 $bb
	pop de                                           ; $56bc: $d1
	or a                                             ; $56bd: $b7
	sbc $bd                                          ; $56be: $de $bd
	sub $bd                                          ; $56c0: $d6 $bd
	sub $7a                                          ; $56c2: $d6 $7a
	cp d                                             ; $56c4: $ba
	adc e                                            ; $56c5: $8b
	rst SubAFromHL                                          ; $56c6: $d7
	jp Jump_040_4f31                                 ; $56c7: $c3 $31 $4f


	ld a, $ff                                        ; $56ca: $3e $ff
	ldh a, [$de]                                     ; $56cc: $f0 $de
	ld sp, $33dc                                     ; $56ce: $31 $dc $33
	ld a, h                                          ; $56d1: $7c
	sub e                                            ; $56d2: $93
	jr c, jr_040_56ac                                ; $56d3: $38 $d7

	jr nc, jr_040_56b6                               ; $56d5: $30 $df

	ldh [rIE], a                                     ; $56d7: $e0 $ff
	jr nz, jr_040_5756                               ; $56d9: $20 $7b

	cp $98                                           ; $56db: $fe $98
	ld h, b                                          ; $56dd: $60
	cp a                                             ; $56de: $bf
	ld h, b                                          ; $56df: $60
	cp a                                             ; $56e0: $bf
	ld h, c                                          ; $56e1: $61
	cp a                                             ; $56e2: $bf
	ld h, e                                          ; $56e3: $63
	ld a, e                                          ; $56e4: $7b
	cp $7e                                           ; $56e5: $fe $7e
	db $e3                                           ; $56e7: $e3
	ld a, d                                          ; $56e8: $7a
	pop hl                                           ; $56e9: $e1
	ld a, e                                          ; $56ea: $7b
	cp $9e                                           ; $56eb: $fe $9e
	rst $38                                          ; $56ed: $ff
	ld l, e                                          ; $56ee: $6b
	cp $90                                           ; $56ef: $fe $90
	ld c, a                                          ; $56f1: $4f
	cp a                                             ; $56f2: $bf
	ld a, l                                          ; $56f3: $7d
	sbc a                                            ; $56f4: $9f
	db $fd                                           ; $56f5: $fd
	rrca                                             ; $56f6: $0f
	pop af                                           ; $56f7: $f1
	ld c, $11                                        ; $56f8: $0e $11
	xor $0f                                          ; $56fa: $ee $0f
	ldh a, [rDIV]                                    ; $56fc: $f0 $04
	ei                                               ; $56fe: $fb
	rlca                                             ; $56ff: $07
	ld a, d                                          ; $5700: $7a
	ret nc                                           ; $5701: $d0

	ld a, h                                          ; $5702: $7c
	ld a, [hl-]                                      ; $5703: $3a
	call c, $8fff                                    ; $5704: $dc $ff $8f
	ccf                                              ; $5707: $3f
	ld a, a                                          ; $5708: $7f
	sbc a                                            ; $5709: $9f
	rst $38                                          ; $570a: $ff
	sbc a                                            ; $570b: $9f
	call c, $f8ff                                    ; $570c: $dc $ff $f8
	rst $38                                          ; $570f: $ff
	inc de                                           ; $5710: $13
	rst $38                                          ; $5711: $ff
	ccf                                              ; $5712: $3f
	rst $38                                          ; $5713: $ff
	db $fd                                           ; $5714: $fd
	rst $38                                          ; $5715: $ff
	cp a                                             ; $5716: $bf
	call c, Call_040_7fff                            ; $5717: $dc $ff $7f
	db $ed                                           ; $571a: $ed
	sub h                                            ; $571b: $94
	ccf                                              ; $571c: $3f
	ldh a, [$b7]                                     ; $571d: $f0 $b7
	ret z                                            ; $571f: $c8

	sbc l                                            ; $5720: $9d
	db $e3                                           ; $5721: $e3
	rst SubAFromDE                                          ; $5722: $df
	ldh [$fd], a                                     ; $5723: $e0 $fd
	cp $f8                                           ; $5725: $fe $f8
	call c, Call_040_7cff                            ; $5727: $dc $ff $7c
	ld c, b                                          ; $572a: $48
	sbc d                                            ; $572b: $9a
	jp $973f                                         ; $572c: $c3 $3f $97


	rst $38                                          ; $572f: $ff
	rst JumpTable                                          ; $5730: $c7
	sbc $ff                                          ; $5731: $de $ff

Call_040_5733:
	sbc b                                            ; $5733: $98
	cp a                                             ; $5734: $bf
	ld a, a                                          ; $5735: $7f
	rst AddAOntoHL                                          ; $5736: $ef
	rra                                              ; $5737: $1f
	cp [hl]                                          ; $5738: $be
	rst SubAFromDE                                          ; $5739: $df
	db $fc                                           ; $573a: $fc
	ld a, d                                          ; $573b: $7a
	adc h                                            ; $573c: $8c
	sbc [hl]                                         ; $573d: $9e
	ret nc                                           ; $573e: $d0

	ld a, d                                          ; $573f: $7a
	sub d                                            ; $5740: $92
	ld a, a                                          ; $5741: $7f
	and l                                            ; $5742: $a5
	sub [hl]                                         ; $5743: $96
	db $e3                                           ; $5744: $e3
	rst $38                                          ; $5745: $ff
	di                                               ; $5746: $f3
	rst $38                                          ; $5747: $ff
	ei                                               ; $5748: $fb
	rst $38                                          ; $5749: $ff
	jr @+$01                                         ; $574a: $18 $ff

	ld a, a                                          ; $574c: $7f
	ld a, e                                          ; $574d: $7b
	cp $df                                           ; $574e: $fe $df
	rst $38                                          ; $5750: $ff
	sbc [hl]                                         ; $5751: $9e
	rst AddAOntoHL                                          ; $5752: $ef
	ld a, e                                          ; $5753: $7b
	cp $8b                                           ; $5754: $fe $8b

jr_040_5756:
	rst SubAFromBC                                          ; $5756: $e7
	rst $38                                          ; $5757: $ff
	rst SubAFromDE                                          ; $5758: $df
	rst $38                                          ; $5759: $ff
	ld a, [de]                                       ; $575a: $1a
	db $fc                                           ; $575b: $fc
	inc b                                            ; $575c: $04
	ld hl, sp-$7c                                    ; $575d: $f8 $84
	ld hl, sp-$7e                                    ; $575f: $f8 $82
	db $fc                                           ; $5761: $fc
	add b                                            ; $5762: $80
	ld hl, sp-$10                                    ; $5763: $f8 $f0
	ldh a, [$ed]                                     ; $5765: $f0 $ed
	ldh a, [rTIMA]                                   ; $5767: $f0 $05
	ld hl, sp+$6e                                    ; $5769: $f8 $6e
	jp z, $0f9e                                      ; $576b: $ca $9e $0f

	ld a, b                                          ; $576e: $78
	and a                                            ; $576f: $a7
	sbc d                                            ; $5770: $9a
	jr nc, jr_040_5792                               ; $5771: $30 $1f

	add b                                            ; $5773: $80
	ccf                                              ; $5774: $3f
	ld d, b                                          ; $5775: $50
	ld l, c                                          ; $5776: $69
	rst JumpTable                                          ; $5777: $c7
	ld a, l                                          ; $5778: $7d
	ld e, h                                          ; $5779: $5c
	ld a, a                                          ; $577a: $7f
	ld d, $99                                        ; $577b: $16 $99
	ld [$00f0], sp                                   ; $577d: $08 $f0 $00
	ld hl, sp+$04                                    ; $5780: $f8 $04
	ld hl, sp+$60                                    ; $5782: $f8 $60
	adc b                                            ; $5784: $88
	rst $38                                          ; $5785: $ff
	sbc d                                            ; $5786: $9a
	rra                                              ; $5787: $1f
	ld b, b                                          ; $5788: $40
	ccf                                              ; $5789: $3f
	ret nc                                           ; $578a: $d0

	ld a, a                                          ; $578b: $7f
	ld e, [hl]                                       ; $578c: $5e
	add $99                                          ; $578d: $c6 $99
	sub c                                            ; $578f: $91
	jr nz, jr_040_579c                               ; $5790: $20 $0a

jr_040_5792:
	pop af                                           ; $5792: $f1

Jump_040_5793:
	add hl, bc                                       ; $5793: $09
	di                                               ; $5794: $f3
	ei                                               ; $5795: $fb
	sbc e                                            ; $5796: $9b
	ld c, $00                                        ; $5797: $0e $00
	ld sp, $760e                                     ; $5799: $31 $0e $76

jr_040_579c:
	ld [hl], d                                       ; $579c: $72
	ld d, l                                          ; $579d: $55
	add a                                            ; $579e: $87
	sbc c                                            ; $579f: $99
	add b                                            ; $57a0: $80
	ld bc, $c102                                     ; $57a1: $01 $02 $c1
	ld hl, $6ec7                                     ; $57a4: $21 $c7 $6e
	jp z, Jump_040_5c95                              ; $57a7: $ca $95 $5c

	add b                                            ; $57aa: $80
	ld b, e                                          ; $57ab: $43
	cp h                                             ; $57ac: $bc
	add b                                            ; $57ad: $80
	rst $38                                          ; $57ae: $ff
	add b                                            ; $57af: $80
	rst $38                                          ; $57b0: $ff
	sub b                                            ; $57b1: $90
	rst $38                                          ; $57b2: $ff
	ld e, [hl]                                       ; $57b3: $5e
	add $99                                          ; $57b4: $c6 $99
	ld c, a                                          ; $57b6: $4f
	add c                                            ; $57b7: $81
	rrca                                             ; $57b8: $0f
	pop bc                                           ; $57b9: $c1
	cpl                                              ; $57ba: $2f
	pop bc                                           ; $57bb: $c1
	halt                                             ; $57bc: $76
	call z, $fe57                                    ; $57bd: $cc $57 $fe
	ld a, [hl]                                       ; $57c0: $7e
	adc $57                                          ; $57c1: $ce $57
	cp $9a                                           ; $57c3: $fe $9a
	ld sp, $77df                                     ; $57c5: $31 $df $77
	cp a                                             ; $57c8: $bf
	ld a, a                                          ; $57c9: $7f
	ld l, e                                          ; $57ca: $6b
	cp $7a                                           ; $57cb: $fe $7a
	db $fd                                           ; $57cd: $fd
	ld [hl], a                                       ; $57ce: $77
	cp $62                                           ; $57cf: $fe $62
	add $6f                                          ; $57d1: $c6 $6f
	cp $9e                                           ; $57d3: $fe $9e
	adc a                                            ; $57d5: $8f
	ld a, e                                          ; $57d6: $7b
	db $ed                                           ; $57d7: $ed
	sbc [hl]                                         ; $57d8: $9e
	xor b                                            ; $57d9: $a8
	ld a, e                                          ; $57da: $7b
	and [hl]                                         ; $57db: $a6
	ld a, [hl]                                       ; $57dc: $7e
	ret z                                            ; $57dd: $c8

	sbc [hl]                                         ; $57de: $9e
	add e                                            ; $57df: $83
	ld [hl], e                                       ; $57e0: $73
	cp $dd                                           ; $57e1: $fe $dd
	rst $38                                          ; $57e3: $ff
	ld a, a                                          ; $57e4: $7f
	db $10                                           ; $57e5: $10
	sub h                                            ; $57e6: $94
	ld a, h                                          ; $57e7: $7c
	rst SubAFromBC                                          ; $57e8: $e7
	db $fc                                           ; $57e9: $fc
	rst SubAFromBC                                          ; $57ea: $e7
	adc $fb                                          ; $57eb: $ce $fb
	cp l                                             ; $57ed: $bd
	jp $c0a3                                         ; $57ee: $c3 $a3 $c0


	rst $38                                          ; $57f1: $ff
	ld a, c                                          ; $57f2: $79
	adc b                                            ; $57f3: $88
	db $dd                                           ; $57f4: $dd
	rst $38                                          ; $57f5: $ff
	sbc [hl]                                         ; $57f6: $9e
	ld a, [hl]                                       ; $57f7: $7e
	ld a, d                                          ; $57f8: $7a
	db $f4                                           ; $57f9: $f4
	sbc d                                            ; $57fa: $9a
	db $fc                                           ; $57fb: $fc
	ei                                               ; $57fc: $fb
	dec a                                            ; $57fd: $3d
	halt                                             ; $57fe: $76
	db $fc                                           ; $57ff: $fc
	ld [hl], l                                       ; $5800: $75
	ld [hl], h                                       ; $5801: $74
	adc b                                            ; $5802: $88
	di                                               ; $5803: $f3
	or d                                             ; $5804: $b2
	db $fd                                           ; $5805: $fd
	jp $f7fc                                         ; $5806: $c3 $fc $f7


	ret z                                            ; $5809: $c8

	db $e3                                           ; $580a: $e3
	jr jr_040_5886                                   ; $580b: $18 $79

	nop                                              ; $580d: $00
	db $fd                                           ; $580e: $fd
	di                                               ; $580f: $f3
	push hl                                          ; $5810: $e5
	di                                               ; $5811: $f3
	ei                                               ; $5812: $fb
	rst FarCall                                          ; $5813: $f7
	pop hl                                           ; $5814: $e1
	cp $fd                                           ; $5815: $fe $fd
	ldh [c], a                                       ; $5817: $e2
	rst GetHLinHL                                          ; $5818: $cf
	rst AddAOntoHL                                          ; $5819: $ef
	ld a, e                                          ; $581a: $7b
	cp $9e                                           ; $581b: $fe $9e
	add sp, -$24                                     ; $581d: $e8 $dc
	rst $38                                          ; $581f: $ff
	sbc c                                            ; $5820: $99
	cp $58                                           ; $5821: $fe $58
	cp a                                             ; $5823: $bf
	db $fc                                           ; $5824: $fc
	ccf                                              ; $5825: $3f
	cp e                                             ; $5826: $bb
	ld a, d                                          ; $5827: $7a
	adc $df                                          ; $5828: $ce $df
	rst $38                                          ; $582a: $ff
	sbc c                                            ; $582b: $99
	sbc h                                            ; $582c: $9c
	sbc a                                            ; $582d: $9f
	ld [hl], b                                       ; $582e: $70
	sbc a                                            ; $582f: $9f
	ld [hl], b                                       ; $5830: $70
	ccf                                              ; $5831: $3f
	ld [hl], a                                       ; $5832: $77
	daa                                              ; $5833: $27
	sbc [hl]                                         ; $5834: $9e
	jp $ffdd                                         ; $5835: $c3 $dd $ff


	ld a, b                                          ; $5838: $78
	inc h                                            ; $5839: $24
	ld a, a                                          ; $583a: $7f
	push af                                          ; $583b: $f5
	ld a, l                                          ; $583c: $7d
	ld l, [hl]                                       ; $583d: $6e
	ld [hl], e                                       ; $583e: $73
	dec d                                            ; $583f: $15
	ld [hl], l                                       ; $5840: $75
	ld hl, $0098                                     ; $5841: $21 $98 $00
	halt                                             ; $5844: $76
	rst $38                                          ; $5845: $ff
	inc a                                            ; $5846: $3c
	rst $38                                          ; $5847: $ff
	rlca                                             ; $5848: $07
	ld a, a                                          ; $5849: $7f
	ld l, e                                          ; $584a: $6b
	ldh a, [$7b]                                     ; $584b: $f0 $7b
	ld a, [$e07f]                                    ; $584d: $fa $7f $e0
	sbc e                                            ; $5850: $9b
	add e                                            ; $5851: $83
	db $fc                                           ; $5852: $fc
	add [hl]                                         ; $5853: $86
	ld hl, sp+$5f                                    ; $5854: $f8 $5f
	ldh a, [$7d]                                     ; $5856: $f0 $7d
	ld [bc], a                                       ; $5858: $02
	sbc h                                            ; $5859: $9c
	cp h                                             ; $585a: $bc
	rst $38                                          ; $585b: $ff
	add b                                            ; $585c: $80

jr_040_585d:
	ld l, a                                          ; $585d: $6f
	ldh [$7e], a                                     ; $585e: $e0 $7e
	dec sp                                           ; $5860: $3b
	ld a, e                                          ; $5861: $7b
	ld a, [$0598]                                    ; $5862: $fa $98 $05
	ei                                               ; $5865: $fb
	dec b                                            ; $5866: $05
	ei                                               ; $5867: $fb
	ld a, [bc]                                       ; $5868: $0a
	pop af                                           ; $5869: $f1
	adc $77                                          ; $586a: $ce $77
	ldh a, [$7f]                                     ; $586c: $f0 $7f
	ld h, h                                          ; $586e: $64
	ld a, e                                          ; $586f: $7b
	ld a, [$fb7f]                                    ; $5870: $fa $7f $fb
	sbc d                                            ; $5873: $9a
	or b                                             ; $5874: $b0
	rst $38                                          ; $5875: $ff
	ld b, b                                          ; $5876: $40
	rst $38                                          ; $5877: $ff
	add b                                            ; $5878: $80
	ld l, d                                          ; $5879: $6a
	jp $fe7f                                         ; $587a: $c3 $7f $fe


	sbc c                                            ; $587d: $99
	db $db                                           ; $587e: $db
	rst SubAFromBC                                          ; $587f: $e7
	sbc e                                            ; $5880: $9b
	rst SubAFromBC                                          ; $5881: $e7
	inc h                                            ; $5882: $24
	jp $3e74                                         ; $5883: $c3 $74 $3e


jr_040_5886:
	ld a, a                                          ; $5886: $7f
	sub a                                            ; $5887: $97
	ld a, [hl]                                       ; $5888: $7e
	ld a, a                                          ; $5889: $7f
	sbc d                                            ; $588a: $9a
	ret nz                                           ; $588b: $c0

	nop                                              ; $588c: $00
	db $fc                                           ; $588d: $fc
	rst $38                                          ; $588e: $ff
	ret z                                            ; $588f: $c8

	ld [hl], d                                       ; $5890: $72
	xor d                                            ; $5891: $aa
	ld h, [hl]                                       ; $5892: $66
	and a                                            ; $5893: $a7
	sub [hl]                                         ; $5894: $96
	rra                                              ; $5895: $1f
	pop hl                                           ; $5896: $e1
	rra                                              ; $5897: $1f
	pop hl                                           ; $5898: $e1
	cpl                                              ; $5899: $2f
	pop bc                                           ; $589a: $c1
	rrca                                             ; $589b: $0f
	ld bc, $65ef                                     ; $589c: $01 $ef $65
	add b                                            ; $589f: $80
	ld a, d                                          ; $58a0: $7a
	call z, $bd9e                                    ; $58a1: $cc $9e $bd
	ld a, e                                          ; $58a4: $7b
	cp $9a                                           ; $58a5: $fe $9a
	and b                                            ; $58a7: $a0
	rst GetHLinHL                                          ; $58a8: $cf
	or e                                             ; $58a9: $b3
	ret nz                                           ; $58aa: $c0

	cp a                                             ; $58ab: $bf
	ld a, e                                          ; $58ac: $7b
	cp $9d                                           ; $58ad: $fe $9d
	ld [hl], a                                       ; $58af: $77
	rst SubAFromDE                                          ; $58b0: $df
	ld a, d                                          ; $58b1: $7a
	dec de                                           ; $58b2: $1b
	ld [hl], e                                       ; $58b3: $73
	cp $99                                           ; $58b4: $fe $99
	rra                                              ; $58b6: $1f
	rst $38                                          ; $58b7: $ff
	daa                                              ; $58b8: $27
	rra                                              ; $58b9: $1f
	add sp, $07                                      ; $58ba: $e8 $07
	ld l, d                                          ; $58bc: $6a
	jp z, $fe63                                      ; $58bd: $ca $63 $fe

	ld a, [hl]                                       ; $58c0: $7e
	call $cc7e                                       ; $58c1: $cd $7e $cc
	ld l, a                                          ; $58c4: $6f
	db $fc                                           ; $58c5: $fc
	ld l, a                                          ; $58c6: $6f
	cp $7f                                           ; $58c7: $fe $7f
	db $fd                                           ; $58c9: $fd
	ld a, l                                          ; $58ca: $7d
	ld [$5398], a                                    ; $58cb: $ea $98 $53
	rst SubAFromBC                                          ; $58ce: $e7
	ld h, a                                          ; $58cf: $67
	rlca                                             ; $58d0: $07
	ld b, $07                                        ; $58d1: $06 $07
	ld c, $7b                                        ; $58d3: $0e $7b
	cp $85                                           ; $58d5: $fe $85
	add [hl]                                         ; $58d7: $86
	rrca                                             ; $58d8: $0f
	add b                                            ; $58d9: $80
	add b                                            ; $58da: $80
	jr nz, jr_040_585d                               ; $58db: $20 $80

	ld hl, $2cc0                                     ; $58dd: $21 $c0 $2c
	jp $0788                                         ; $58e0: $c3 $88 $07


	add b                                            ; $58e3: $80
	ld c, a                                          ; $58e4: $4f
	db $10                                           ; $58e5: $10
	rst GetHLinHL                                          ; $58e6: $cf
	ld d, c                                          ; $58e7: $51
	adc a                                            ; $58e8: $8f
	rst $38                                          ; $58e9: $ff
	nop                                              ; $58ea: $00
	ld a, a                                          ; $58eb: $7f
	nop                                              ; $58ec: $00
	cp a                                             ; $58ed: $bf
	nop                                              ; $58ee: $00
	ld e, a                                          ; $58ef: $5f
	and b                                            ; $58f0: $a0
	ld [hl], a                                       ; $58f1: $77
	ld h, e                                          ; $58f2: $63
	sbc h                                            ; $58f3: $9c
	ld bc, $81ff                                     ; $58f4: $01 $ff $81
	ld a, e                                          ; $58f7: $7b
	inc l                                            ; $58f8: $2c
	sub [hl]                                         ; $58f9: $96
	cp $01                                           ; $58fa: $fe $01
	sbc [hl]                                         ; $58fc: $9e
	ld h, c                                          ; $58fd: $61
	ret nz                                           ; $58fe: $c0

	db $fd                                           ; $58ff: $fd
	inc bc                                           ; $5900: $03
	db $fd                                           ; $5901: $fd
	ld bc, $f07b                                     ; $5902: $01 $7b $f0
	add l                                            ; $5905: $85
	sub e                                            ; $5906: $93
	rst $38                                          ; $5907: $ff
	db $eb                                           ; $5908: $eb
	call nz, $ed82                                   ; $5909: $c4 $82 $ed
	or [hl]                                          ; $590c: $b6
	ret                                              ; $590d: $c9


	cp l                                             ; $590e: $bd
	jp nz, $ef80                                     ; $590f: $c2 $80 $ef

	adc a                                            ; $5912: $8f
	ret nz                                           ; $5913: $c0

	add b                                            ; $5914: $80
	ret nz                                           ; $5915: $c0

	ld b, b                                          ; $5916: $40
	add b                                            ; $5917: $80
	ldh [$1f], a                                     ; $5918: $e0 $1f
	ld b, b                                          ; $591a: $40
	cp a                                             ; $591b: $bf
	nop                                              ; $591c: $00
	rst $38                                          ; $591d: $ff
	ld h, c                                          ; $591e: $61
	sbc [hl]                                         ; $591f: $9e
	ld a, e                                          ; $5920: $7b
	ld bc, $9dfc                                     ; $5921: $01 $fc $9d
	ld [bc], a                                       ; $5924: $02
	db $fd                                           ; $5925: $fd
	ld l, [hl]                                       ; $5926: $6e
	ret nc                                           ; $5927: $d0

	ld a, a                                          ; $5928: $7f
	db $fc                                           ; $5929: $fc
	sbc [hl]                                         ; $592a: $9e
	rst SubAFromBC                                          ; $592b: $e7
	db $fc                                           ; $592c: $fc
	ld h, a                                          ; $592d: $67
	jr jr_040_59a7                                   ; $592e: $18 $77

	cp $9c                                           ; $5930: $fe $9c
	ld b, $00                                        ; $5932: $06 $00
	jr jr_040_5991                                   ; $5934: $18 $5b

	ldh a, [c]                                       ; $5936: $f2
	ld a, [hl]                                       ; $5937: $7e
	db $fc                                           ; $5938: $fc
	ld c, a                                          ; $5939: $4f
	ldh [$fb], a                                     ; $593a: $e0 $fb
	cpl                                              ; $593c: $2f
	ldh a, [$9e]                                     ; $593d: $f0 $9e
	db $f4                                           ; $593f: $f4
	ld h, e                                          ; $5940: $63
	ldh a, [$7e]                                     ; $5941: $f0 $7e
	jp c, $e09e                                      ; $5943: $da $9e $e0

	ld [hl], e                                       ; $5946: $73
	add $59                                          ; $5947: $c6 $59
	add a                                            ; $5949: $87
	ld l, e                                          ; $594a: $6b
	ret c                                            ; $594b: $d8

	cpl                                              ; $594c: $2f
	ldh a, [$9d]                                     ; $594d: $f0 $9d
	ld c, $01                                        ; $594f: $0e $01
	ld l, a                                          ; $5951: $6f
	cp $7f                                           ; $5952: $fe $7f
	ld a, [hl-]                                      ; $5954: $3a
	ld l, a                                          ; $5955: $6f
	ld hl, sp+$76                                    ; $5956: $f8 $76
	call z, $fe6f                                    ; $5958: $cc $6f $fe
	sbc l                                            ; $595b: $9d
	sbc a                                            ; $595c: $9f
	ldh [rPCM34], a                                  ; $595d: $e0 $77
	cp $9e                                           ; $595f: $fe $9e
	ld sp, hl                                        ; $5961: $f9
	ld d, e                                          ; $5962: $53
	ld e, [hl]                                       ; $5963: $5e
	ld a, a                                          ; $5964: $7f
	cp $7e                                           ; $5965: $fe $7e
	dec b                                            ; $5967: $05
	sbc b                                            ; $5968: $98
	ld b, a                                          ; $5969: $47
	ccf                                              ; $596a: $3f
	ret z                                            ; $596b: $c8

	rlca                                             ; $596c: $07
	ld hl, sp+$00                                    ; $596d: $f8 $00
	rst JumpTable                                          ; $596f: $c7
	ld a, e                                          ; $5970: $7b
	sbc d                                            ; $5971: $9a
	ld a, a                                          ; $5972: $7f
	cp $9d                                           ; $5973: $fe $9d
	adc l                                            ; $5975: $8d
	nop                                              ; $5976: $00
	halt                                             ; $5977: $76
	call z, Call_040_7796                            ; $5978: $cc $96 $77
	rst $38                                          ; $597b: $ff
	sub a                                            ; $597c: $97
	ld a, a                                          ; $597d: $7f
	and c                                            ; $597e: $a1
	rra                                              ; $597f: $1f
	ldh [c], a                                       ; $5980: $e2
	ld bc, $7bfe                                     ; $5981: $01 $fe $7b
	ldh [hDisp1_OBP1], a                                     ; $5984: $e0 $94
	ld b, a                                          ; $5986: $47
	adc [hl]                                         ; $5987: $8e
	rra                                              ; $5988: $1f
	xor $0e                                          ; $5989: $ee $0e
	rst $38                                          ; $598b: $ff
	ld c, $ff                                        ; $598c: $0e $ff
	inc c                                            ; $598e: $0c
	rst $38                                          ; $598f: $ff
	inc e                                            ; $5990: $1c

jr_040_5991:
	ld a, e                                          ; $5991: $7b
	cp $86                                           ; $5992: $fe $86
	sbc h                                            ; $5994: $9c
	rst $38                                          ; $5995: $ff
	rlca                                             ; $5996: $07
	rra                                              ; $5997: $1f
	adc a                                            ; $5998: $8f
	rra                                              ; $5999: $1f
	ccf                                              ; $599a: $3f
	rra                                              ; $599b: $1f
	xor a                                            ; $599c: $af
	rra                                              ; $599d: $1f
	ccf                                              ; $599e: $3f
	sbc a                                            ; $599f: $9f
	add hl, sp                                       ; $59a0: $39
	sbc a                                            ; $59a1: $9f
	and b                                            ; $59a2: $a0
	rra                                              ; $59a3: $1f
	xor b                                            ; $59a4: $a8
	rla                                              ; $59a5: $17
	inc bc                                           ; $59a6: $03

jr_040_59a7:
	rst $38                                          ; $59a7: $ff
	ld h, $ff                                        ; $59a8: $26 $ff
	halt                                             ; $59aa: $76
	rst $38                                          ; $59ab: $ff
	or $79                                           ; $59ac: $f6 $79
	push de                                          ; $59ae: $d5
	ld a, [hl]                                       ; $59af: $7e
	ld d, $91                                        ; $59b0: $16 $91
	ld c, $f0                                        ; $59b2: $0e $f0
	ld hl, sp+$00                                    ; $59b4: $f8 $00
	inc sp                                           ; $59b6: $33
	rst $38                                          ; $59b7: $ff
	ldh [c], a                                       ; $59b8: $e2
	rst $38                                          ; $59b9: $ff
	ld b, [hl]                                       ; $59ba: $46
	rst $38                                          ; $59bb: $ff
	ld a, [de]                                       ; $59bc: $1a
	rst SubAFromBC                                          ; $59bd: $e7
	ld b, $ff                                        ; $59be: $06 $ff
	ld a, d                                          ; $59c0: $7a
	and $fe                                          ; $59c1: $e6 $fe
	sbc l                                            ; $59c3: $9d
	ldh [$80], a                                     ; $59c4: $e0 $80
	ld a, e                                          ; $59c6: $7b
	ccf                                              ; $59c7: $3f
	sbc c                                            ; $59c8: $99
	ldh [$d0], a                                     ; $59c9: $e0 $d0
	jr nz, @+$0a                                     ; $59cb: $20 $08

	ldh a, [rLCDC]                                   ; $59cd: $f0 $40
	ld a, e                                          ; $59cf: $7b
	add hl, sp                                       ; $59d0: $39
	sbc [hl]                                         ; $59d1: $9e
	inc bc                                           ; $59d2: $03
	ld a, [$019e]                                    ; $59d3: $fa $9e $01
	ld a, d                                          ; $59d6: $7a
	db $e4                                           ; $59d7: $e4
	sbc d                                            ; $59d8: $9a
	add hl, de                                       ; $59d9: $19
	nop                                              ; $59da: $00
	ld h, [hl]                                       ; $59db: $66
	nop                                              ; $59dc: $00
	sbc b                                            ; $59dd: $98
	ld h, e                                          ; $59de: $63
	ld hl, sp-$62                                    ; $59df: $f8 $9e
	ld h, b                                          ; $59e1: $60
	ld l, d                                          ; $59e2: $6a
	ldh [$67], a                                     ; $59e3: $e0 $67
	ld hl, sp-$20                                    ; $59e5: $f8 $e0
	ret c                                            ; $59e7: $d8

	ldh [$b4], a                                     ; $59e8: $e0 $b4
	sbc l                                            ; $59ea: $9d
	rlca                                             ; $59eb: $07
	ld [$c066], sp                                   ; $59ec: $08 $66 $c0
	ld h, [hl]                                       ; $59ef: $66
	cp d                                             ; $59f0: $ba
	ld l, [hl]                                       ; $59f1: $6e
	jp z, $fe77                                      ; $59f2: $ca $77 $fe

	sbc l                                            ; $59f5: $9d
	adc a                                            ; $59f6: $8f
	ldh a, [rPCM34]                                  ; $59f7: $f0 $77
	cp $4e                                           ; $59f9: $fe $4e
	jp nz, $fe7f                                     ; $59fb: $c2 $7f $fe

	sbc h                                            ; $59fe: $9c
	rst GetHLinHL                                          ; $59ff: $cf
	nop                                              ; $5a00: $00
	rst SubAFromDE                                          ; $5a01: $df
	ld d, e                                          ; $5a02: $53
	ldh a, [$7e]                                     ; $5a03: $f0 $7e
	call z, $c29c                                    ; $5a05: $cc $9c $c2
	nop                                              ; $5a08: $00
	add c                                            ; $5a09: $81
	ld [hl], e                                       ; $5a0a: $73
	inc a                                            ; $5a0b: $3c
	ld a, a                                          ; $5a0c: $7f
	db $fc                                           ; $5a0d: $fc
	ld a, l                                          ; $5a0e: $7d
	ld [hl+], a                                      ; $5a0f: $22
	ld a, a                                          ; $5a10: $7f
	db $fc                                           ; $5a11: $fc
	sub d                                            ; $5a12: $92
	ret c                                            ; $5a13: $d8

	cp $f9                                           ; $5a14: $fe $f9
	db $fc                                           ; $5a16: $fc
	cp $fd                                           ; $5a17: $fe $fd
	sbc h                                            ; $5a19: $9c
	rst $38                                          ; $5a1a: $ff
	dec e                                            ; $5a1b: $1d
	ld a, $be                                        ; $5a1c: $3e $be
	ld a, h                                          ; $5a1e: $7c
	db $fc                                           ; $5a1f: $fc
	ld a, b                                          ; $5a20: $78
	ld d, h                                          ; $5a21: $54
	sbc [hl]                                         ; $5a22: $9e
	rrca                                             ; $5a23: $0f
	ld [hl], d                                       ; $5a24: $72
	sbc b                                            ; $5a25: $98
	ld [hl], a                                       ; $5a26: $77
	db $e4                                           ; $5a27: $e4
	sbc b                                            ; $5a28: $98
	ld h, b                                          ; $5a29: $60
	add b                                            ; $5a2a: $80
	ret c                                            ; $5a2b: $d8

	ldh [hDisp1_BGP], a                                     ; $5a2c: $e0 $92
	db $fc                                           ; $5a2e: $fc
	and b                                            ; $5a2f: $a0
	or $76                                           ; $5a30: $f6 $76
	ld [$7efb], a                                    ; $5a32: $ea $fb $7e
	ret c                                            ; $5a35: $d8

	sub b                                            ; $5a36: $90
	ld [$2104], sp                                   ; $5a37: $08 $04 $21
	ld [de], a                                       ; $5a3a: $12
	add [hl]                                         ; $5a3b: $86
	ld c, b                                          ; $5a3c: $48
	jr @+$22                                         ; $5a3d: $18 $20

	inc c                                            ; $5a3f: $0c
	nop                                              ; $5a40: $00
	inc sp                                           ; $5a41: $33
	nop                                              ; $5a42: $00
	add [hl]                                         ; $5a43: $86
	ld c, b                                          ; $5a44: $48
	jr c, jr_040_5ac2                                ; $5a45: $38 $7b

	jp nc, $e002                                     ; $5a47: $d2 $02 $e0

	ldh [$be], a                                     ; $5a4a: $e0 $be
	ld h, [hl]                                       ; $5a4c: $66
	ld h, b                                          ; $5a4d: $60
	ei                                               ; $5a4e: $fb
	sbc e                                            ; $5a4f: $9b
	ccf                                              ; $5a50: $3f
	nop                                              ; $5a51: $00
	ret nz                                           ; $5a52: $c0

	ccf                                              ; $5a53: $3f
	ld e, a                                          ; $5a54: $5f
	and $9d                                          ; $5a55: $e6 $9d
	db $fc                                           ; $5a57: $fc
	inc bc                                           ; $5a58: $03
	ld e, l                                          ; $5a59: $5d
	ld e, c                                          ; $5a5a: $59
	sbc e                                            ; $5a5b: $9b
	rlca                                             ; $5a5c: $07
	nop                                              ; $5a5d: $00
	ld hl, sp+$07                                    ; $5a5e: $f8 $07
	ld l, e                                          ; $5a60: $6b
	rrca                                             ; $5a61: $0f
	rst SubAFromDE                                          ; $5a62: $df
	ld [$049a], sp                                   ; $5a63: $08 $9a $04
	dec bc                                           ; $5a66: $0b
	inc b                                            ; $5a67: $04
	ldh [$1f], a                                     ; $5a68: $e0 $1f
	ld h, [hl]                                       ; $5a6a: $66
	rst $38                                          ; $5a6b: $ff
	ld a, [hl]                                       ; $5a6c: $7e
	call z, $3e99                                    ; $5a6d: $cc $99 $3e
	ld bc, $f10e                                     ; $5a70: $01 $0e $f1
	ld b, $f9                                        ; $5a73: $06 $f9
	ld [hl], h                                       ; $5a75: $74
	add sp, $77                                      ; $5a76: $e8 $77
	cp $76                                           ; $5a78: $fe $76
	call z, $cf94                                    ; $5a7a: $cc $94 $cf
	ldh a, [$ef]                                     ; $5a7d: $f0 $ef
	ldh a, [$f7]                                     ; $5a7f: $f0 $f7
	ld hl, sp-$05                                    ; $5a81: $f8 $fb
	db $fc                                           ; $5a83: $fc
	db $fd                                           ; $5a84: $fd
	cp $fe                                           ; $5a85: $fe $fe
	ld a, b                                          ; $5a87: $78
	jp z, $fe2f                                      ; $5a88: $ca $2f $fe

	ld a, a                                          ; $5a8b: $7f
	pop de                                           ; $5a8c: $d1
	ld a, l                                          ; $5a8d: $7d
	reti                                             ; $5a8e: $d9


	halt                                             ; $5a8f: $76
	call z, $e266                                    ; $5a90: $cc $66 $e2
	halt                                             ; $5a93: $76
	call nz, $9efd                                   ; $5a94: $c4 $fd $9e
	or $fc                                           ; $5a97: $f6 $fc
	sbc c                                            ; $5a99: $99
	inc e                                            ; $5a9a: $1c
	nop                                              ; $5a9b: $00
	ld h, e                                          ; $5a9c: $63
	inc e                                            ; $5a9d: $1c
	add b                                            ; $5a9e: $80
	ld a, a                                          ; $5a9f: $7f
	ld a, e                                          ; $5aa0: $7b
	reti                                             ; $5aa1: $d9


	ld a, h                                          ; $5aa2: $7c
	pop af                                           ; $5aa3: $f1
	ld [hl], d                                       ; $5aa4: $72
	ret c                                            ; $5aa5: $d8

	adc l                                            ; $5aa6: $8d
	inc c                                            ; $5aa7: $0c
	ld [bc], a                                       ; $5aa8: $02
	jr nc, @+$0a                                     ; $5aa9: $30 $08

	ret nz                                           ; $5aab: $c0

	inc hl                                           ; $5aac: $23
	add d                                            ; $5aad: $82
	inc c                                            ; $5aae: $0c
	ld c, b                                          ; $5aaf: $48
	jr nc, jr_040_5ac2                               ; $5ab0: $30 $10

	ld [$2241], sp                                   ; $5ab2: $08 $41 $22
	ld b, $88                                        ; $5ab5: $06 $88
	jr jr_040_5ad9                                   ; $5ab7: $18 $20

	ld h, d                                          ; $5ab9: $62
	ldh [rOCPD], a                                   ; $5aba: $e0 $6b
	ld hl, sp-$15                                    ; $5abc: $f8 $eb
	ld h, e                                          ; $5abe: $63
	ld sp, $2e5f                                     ; $5abf: $31 $5f $2e

jr_040_5ac2:
	ld a, [$687e]                                    ; $5ac2: $fa $7e $68
	sbc l                                            ; $5ac5: $9d
	ldh a, [rIF]                                     ; $5ac6: $f0 $0f
	ld e, a                                          ; $5ac8: $5f
	jr nz, jr_040_5b4a                               ; $5ac9: $20 $7f

	ld sp, $2e63                                     ; $5acb: $31 $63 $2e
	ld a, e                                          ; $5ace: $7b
	sub d                                            ; $5acf: $92
	sbc l                                            ; $5ad0: $9d
	ld a, [hl]                                       ; $5ad1: $7e
	ld bc, $8473                                     ; $5ad2: $01 $73 $84
	ld [hl], e                                       ; $5ad5: $73
	cp $7f                                           ; $5ad6: $fe $7f
	ldh a, [c]                                       ; $5ad8: $f2

jr_040_5ad9:
	ld l, d                                          ; $5ad9: $6a
	ld hl, sp+$6b                                    ; $5ada: $f8 $6b
	cp $5f                                           ; $5adc: $fe $5f
	ld b, $03                                        ; $5ade: $06 $03
	cp $03                                           ; $5ae0: $fe $03
	cp $77                                           ; $5ae2: $fe $77
	cp $9c                                           ; $5ae4: $fe $9c
	add b                                            ; $5ae6: $80
	rst $38                                          ; $5ae7: $ff
	ld b, b                                          ; $5ae8: $40
	ld a, e                                          ; $5ae9: $7b
	cp $9e                                           ; $5aea: $fe $9e
	jr nz, jr_040_5b69                               ; $5aec: $20 $7b

	cp $9e                                           ; $5aee: $fe $9e
	db $10                                           ; $5af0: $10
	ld a, e                                          ; $5af1: $7b
	cp $9a                                           ; $5af2: $fe $9a
	jr @+$01                                         ; $5af4: $18 $ff

	ld a, a                                          ; $5af6: $7f
	rst $38                                          ; $5af7: $ff
	ccf                                              ; $5af8: $3f
	ld a, e                                          ; $5af9: $7b
	cp $9c                                           ; $5afa: $fe $9c
	rra                                              ; $5afc: $1f
	rst $38                                          ; $5afd: $ff
	rrca                                             ; $5afe: $0f
	ld a, e                                          ; $5aff: $7b
	cp $8e                                           ; $5b00: $fe $8e
	rlca                                             ; $5b02: $07
	rst $38                                          ; $5b03: $ff
	inc sp                                           ; $5b04: $33
	rst GetHLinHL                                          ; $5b05: $cf
	ld a, a                                          ; $5b06: $7f
	add b                                            ; $5b07: $80
	cp [hl]                                          ; $5b08: $be
	ret nz                                           ; $5b09: $c0

	sbc $e0                                          ; $5b0a: $de $e0
	xor $f0                                          ; $5b0c: $ee $f0
	ldh a, [c]                                       ; $5b0e: $f2
	ld hl, sp-$07                                    ; $5b0f: $f8 $f9
	db $fc                                           ; $5b11: $fc
	db $fc                                           ; $5b12: $fc
	ld a, d                                          ; $5b13: $7a
	or b                                             ; $5b14: $b0
	pop hl                                           ; $5b15: $e1
	sub l                                            ; $5b16: $95
	db $10                                           ; $5b17: $10
	pop hl                                           ; $5b18: $e1
	ld b, c                                          ; $5b19: $41
	add [hl]                                         ; $5b1a: $86
	inc b                                            ; $5b1b: $04
	jr jr_040_5b2e                                   ; $5b1c: $18 $10

	ld h, b                                          ; $5b1e: $60
	ld c, a                                          ; $5b1f: $4f
	add b                                            ; $5b20: $80
	ld l, a                                          ; $5b21: $6f
	jr nz, jr_040_5ba2                               ; $5b22: $20 $7e

	ldh [$5a], a                                     ; $5b24: $e0 $5a
	inc [hl]                                         ; $5b26: $34
	ld [hl], e                                       ; $5b27: $73
	jr nz, jr_040_5b8d                               ; $5b28: $20 $63

	ld b, $73                                        ; $5b2a: $06 $73
	cp $5b                                           ; $5b2c: $fe $5b

jr_040_5b2e:
	ld b, $6f                                        ; $5b2e: $06 $6f
	ld [hl], b                                       ; $5b30: $70
	ld h, e                                          ; $5b31: $63
	ld b, $03                                        ; $5b32: $06 $03
	cp $43                                           ; $5b34: $fe $43
	cp $9b                                           ; $5b36: $fe $9b
	inc c                                            ; $5b38: $0c
	di                                               ; $5b39: $f3
	inc sp                                           ; $5b3a: $33
	call z, $f057                                    ; $5b3b: $cc $57 $f0
	sbc l                                            ; $5b3e: $9d
	call z, Call_040_5733                            ; $5b3f: $cc $33 $57
	ldh a, [$7f]                                     ; $5b42: $f0 $7f
	db $f4                                           ; $5b44: $f4
	ld a, a                                          ; $5b45: $7f
	ldh a, [$9d]                                     ; $5b46: $f0 $9d
	ld [hl], a                                       ; $5b48: $77
	adc b                                            ; $5b49: $88

jr_040_5b4a:
	ld e, a                                          ; $5b4a: $5f
	db $e4                                           ; $5b4b: $e4
	sbc c                                            ; $5b4c: $99
	scf                                              ; $5b4d: $37
	ret z                                            ; $5b4e: $c8

	sbc $21                                          ; $5b4f: $de $21
	ld l, l                                          ; $5b51: $6d
	sub d                                            ; $5b52: $92
	ld e, a                                          ; $5b53: $5f
	db $e4                                           ; $5b54: $e4
	sbc c                                            ; $5b55: $99
	ld [hl], e                                       ; $5b56: $73
	adc h                                            ; $5b57: $8c
	db $ed                                           ; $5b58: $ed
	ld [de], a                                       ; $5b59: $12
	ld a, a                                          ; $5b5a: $7f
	add b                                            ; $5b5b: $80
	ld h, a                                          ; $5b5c: $67
	ret z                                            ; $5b5d: $c8

	sbc c                                            ; $5b5e: $99
	call $7732                                       ; $5b5f: $cd $32 $77
	adc b                                            ; $5b62: $88
	rst AddAOntoHL                                          ; $5b63: $ef
	db $10                                           ; $5b64: $10
	ld a, e                                          ; $5b65: $7b
	ld d, c                                          ; $5b66: $51

Jump_040_5b67:
	sbc h                                            ; $5b67: $9c
	rst $38                                          ; $5b68: $ff

jr_040_5b69:
	inc bc                                           ; $5b69: $03
	db $fc                                           ; $5b6a: $fc
	ld [hl], a                                       ; $5b6b: $77
	ldh a, [$9b]                                     ; $5b6c: $f0 $9b
	db $dd                                           ; $5b6e: $dd
	ld [hl+], a                                      ; $5b6f: $22
	xor e                                            ; $5b70: $ab
	ld d, h                                          ; $5b71: $54
	ld [hl], e                                       ; $5b72: $73
	ld b, c                                          ; $5b73: $41
	ld [hl], e                                       ; $5b74: $73
	call nc, $3b9b                                   ; $5b75: $d4 $9b $3b
	call nz, $22dd                                   ; $5b78: $c4 $dd $22
	ld l, a                                          ; $5b7b: $6f
	or a                                             ; $5b7c: $b7
	adc c                                            ; $5b7d: $89
	ret                                              ; $5b7e: $c9


	ld a, $2e                                        ; $5b7f: $3e $2e
	db $dd                                           ; $5b81: $dd
	push de                                          ; $5b82: $d5
	ld l, $7f                                        ; $5b83: $2e $7f
	add h                                            ; $5b85: $84
	rst $38                                          ; $5b86: $ff
	ld b, $fb                                        ; $5b87: $06 $fb
	ld b, $ff                                        ; $5b89: $06 $ff
	inc bc                                           ; $5b8b: $03
	db $fd                                           ; $5b8c: $fd

jr_040_5b8d:
	inc bc                                           ; $5b8d: $03
	call $b633                                       ; $5b8e: $cd $33 $b6
	ld c, c                                          ; $5b91: $49
	ld l, a                                          ; $5b92: $6f
	sub b                                            ; $5b93: $90
	ld e, a                                          ; $5b94: $5f
	ld a, e                                          ; $5b95: $7b
	add b                                            ; $5b96: $80
	rst FarCall                                          ; $5b97: $f7
	ei                                               ; $5b98: $fb
	rst FarCall                                          ; $5b99: $f7
	ld sp, hl                                        ; $5b9a: $f9
	di                                               ; $5b9b: $f3
	db $fc                                           ; $5b9c: $fc
	ld [hl], c                                       ; $5b9d: $71

Jump_040_5b9e:
	cp $f8                                           ; $5b9e: $fe $f8
	ld a, a                                          ; $5ba0: $7f
	cp b                                             ; $5ba1: $b8

jr_040_5ba2:
	ld a, a                                          ; $5ba2: $7f
	ret c                                            ; $5ba3: $d8

	ccf                                              ; $5ba4: $3f
	db $ec                                           ; $5ba5: $ec
	rra                                              ; $5ba6: $1f
	nop                                              ; $5ba7: $00
	add b                                            ; $5ba8: $80
	add b                                            ; $5ba9: $80
	ret nz                                           ; $5baa: $c0

	ret nz                                           ; $5bab: $c0

	ldh [$e0], a                                     ; $5bac: $e0 $e0
	ld [hl], b                                       ; $5bae: $70
	ldh a, [$38]                                     ; $5baf: $f0 $38
	ld a, b                                          ; $5bb1: $78
	sbc h                                            ; $5bb2: $9c
	inc a                                            ; $5bb3: $3c
	adc $06                                          ; $5bb4: $ce $06
	ld a, $b0                                        ; $5bb6: $3e $b0
	inc bc                                           ; $5bb8: $03
	ld a, [de]                                       ; $5bb9: $1a
	ld d, a                                          ; $5bba: $57
	cp $7f                                           ; $5bbb: $fe $7f
	ld h, h                                          ; $5bbd: $64
	ld l, c                                          ; $5bbe: $69
	jp c, $fe96                                      ; $5bbf: $da $96 $fe

	inc b                                            ; $5bc2: $04
	ei                                               ; $5bc3: $fb
	rla                                              ; $5bc4: $17
	add sp, -$26                                     ; $5bc5: $e8 $da
	dec h                                            ; $5bc7: $25
	cpl                                              ; $5bc8: $2f
	ret nc                                           ; $5bc9: $d0

	ld [hl], a                                       ; $5bca: $77
	db $ec                                           ; $5bcb: $ec
	ld a, [hl]                                       ; $5bcc: $7e
	ld hl, sp+$7f                                    ; $5bcd: $f8 $7f
	ld h, b                                          ; $5bcf: $60
	ld e, a                                          ; $5bd0: $5f
	ld b, b                                          ; $5bd1: $40
	ld a, a                                          ; $5bd2: $7f
	ld d, b                                          ; $5bd3: $50
	sbc c                                            ; $5bd4: $99
	adc $31                                          ; $5bd5: $ce $31
	or a                                             ; $5bd7: $b7
	ld c, b                                          ; $5bd8: $48
	ld e, d                                          ; $5bd9: $5a
	and l                                            ; $5bda: $a5
	ld l, a                                          ; $5bdb: $6f
	call $346f                                       ; $5bdc: $cd $6f $34
	sbc l                                            ; $5bdf: $9d
	ld l, e                                          ; $5be0: $6b
	sub h                                            ; $5be1: $94
	ld h, a                                          ; $5be2: $67
	cp l                                             ; $5be3: $bd
	ld a, a                                          ; $5be4: $7f
	ret c                                            ; $5be5: $d8

	sbc c                                            ; $5be6: $99
	halt                                             ; $5be7: $76
	adc c                                            ; $5be8: $89
	cp e                                             ; $5be9: $bb
	ld b, h                                          ; $5bea: $44
	ld e, a                                          ; $5beb: $5f
	and b                                            ; $5bec: $a0
	ld h, a                                          ; $5bed: $67
	ldh a, [$7f]                                     ; $5bee: $f0 $7f
	db $e4                                           ; $5bf0: $e4
	ld a, a                                          ; $5bf1: $7f
	ldh a, [c]                                       ; $5bf2: $f2
	ld d, a                                          ; $5bf3: $57
	sbc l                                            ; $5bf4: $9d
	sbc e                                            ; $5bf5: $9b
	xor d                                            ; $5bf6: $aa
	ld d, l                                          ; $5bf7: $55
	ld a, a                                          ; $5bf8: $7f
	add b                                            ; $5bf9: $80
	daa                                              ; $5bfa: $27
	add c                                            ; $5bfb: $81
	ld a, a                                          ; $5bfc: $7f
	add e                                            ; $5bfd: $83
	sbc [hl]                                         ; $5bfe: $9e
	inc sp                                           ; $5bff: $33
	ld e, e                                          ; $5c00: $5b
	ldh a, [c]                                       ; $5c01: $f2
	sbc d                                            ; $5c02: $9a
	di                                               ; $5c03: $f3
	nop                                              ; $5c04: $00
	call z, $3200                                    ; $5c05: $cc $00 $32
	ld h, e                                          ; $5c08: $63
	ldh a, [c]                                       ; $5c09: $f2
	ld a, a                                          ; $5c0a: $7f
	db $f4                                           ; $5c0b: $f4
	ld a, a                                          ; $5c0c: $7f
	db $e4                                           ; $5c0d: $e4
	sbc h                                            ; $5c0e: $9c
	ret z                                            ; $5c0f: $c8

	nop                                              ; $5c10: $00
	inc d                                            ; $5c11: $14
	ld e, e                                          ; $5c12: $5b
	db $e4                                           ; $5c13: $e4
	ld a, a                                          ; $5c14: $7f
	ldh a, [$9c]                                     ; $5c15: $f0 $9c
	ld b, h                                          ; $5c17: $44
	nop                                              ; $5c18: $00
	ld a, [bc]                                       ; $5c19: $0a
	ld l, e                                          ; $5c1a: $6b
	ldh a, [$7f]                                     ; $5c1b: $f0 $7f
	db $f4                                           ; $5c1d: $f4
	ld l, a                                          ; $5c1e: $6f
	ldh a, [$7a]                                     ; $5c1f: $f0 $7a
	sub c                                            ; $5c21: $91
	sub l                                            ; $5c22: $95
	ld bc, $01ff                                     ; $5c23: $01 $ff $01
	call z, $3301                                    ; $5c26: $cc $01 $33
	nop                                              ; $5c29: $00
	call nz, $2a00                                   ; $5c2a: $c4 $00 $2a
	ld a, e                                          ; $5c2d: $7b
	ldh a, [c]                                       ; $5c2e: $f2
	sbc [hl]                                         ; $5c2f: $9e
	ld b, b                                          ; $5c30: $40
	ld [hl], a                                       ; $5c31: $77
	xor d                                            ; $5c32: $aa
	add [hl]                                         ; $5c33: $86
	add b                                            ; $5c34: $80
	di                                               ; $5c35: $f3
	add b                                            ; $5c36: $80
	call z, Call_040_52c0                            ; $5c37: $cc $c0 $52
	ldh [rBCPD], a                                   ; $5c3a: $e0 $69
	ld h, b                                          ; $5c3c: $60
	jr nz, jr_040_5c9f                               ; $5c3d: $20 $60

	jr nc, jr_040_5c71                               ; $5c3f: $30 $30

	cp $0f                                           ; $5c41: $fe $0f
	add $0f                                          ; $5c43: $c6 $0f
	inc sp                                           ; $5c45: $33
	rlca                                             ; $5c46: $07
	ret                                              ; $5c47: $c9


	inc bc                                           ; $5c48: $03
	ld hl, $5001                                     ; $5c49: $21 $01 $50
	ld bc, $c870                                     ; $5c4c: $01 $70 $c8
	sub b                                            ; $5c4f: $90
	di                                               ; $5c50: $f3
	rlca                                             ; $5c51: $07
	ld sp, hl                                        ; $5c52: $f9
	inc bc                                           ; $5c53: $03
	db $fc                                           ; $5c54: $fc
	add c                                            ; $5c55: $81
	cp $c0                                           ; $5c56: $fe $c0
	rst $38                                          ; $5c58: $ff
	ldh [rIE], a                                     ; $5c59: $e0 $ff
	ld h, b                                          ; $5c5b: $60
	rst $38                                          ; $5c5c: $ff
	jr nc, @+$81                                     ; $5c5d: $30 $7f

	ld h, [hl]                                       ; $5c5f: $66
	or b                                             ; $5c60: $b0
	sub a                                            ; $5c61: $97
	db $10                                           ; $5c62: $10
	ld hl, sp+$18                                    ; $5c63: $f8 $18
	db $fc                                           ; $5c65: $fc
	inc c                                            ; $5c66: $0c
	cp $06                                           ; $5c67: $fe $06
	rst $38                                          ; $5c69: $ff
	add hl, hl                                       ; $5c6a: $29
	nop                                              ; $5c6b: $00
	db $dd                                           ; $5c6c: $dd
	ld h, [hl]                                       ; $5c6d: $66
	db $dd                                           ; $5c6e: $dd
	ld [hl], a                                       ; $5c6f: $77
	rst SubAFromDE                                          ; $5c70: $df

jr_040_5c71:
	ld d, l                                          ; $5c71: $55
	rlca                                             ; $5c72: $07
	or $db                                           ; $5c73: $f6 $db
	ld [hl], a                                       ; $5c75: $77
	rst SubAFromDE                                          ; $5c76: $df
	ld d, l                                          ; $5c77: $55
	sbc $44                                          ; $5c78: $de $44
	sbc [hl]                                         ; $5c7a: $9e
	ld b, a                                          ; $5c7b: $47
	db $dd                                           ; $5c7c: $dd
	inc sp                                           ; $5c7d: $33
	ld [hl], a                                       ; $5c7e: $77
	or $9d                                           ; $5c7f: $f6 $9d
	ld b, a                                          ; $5c81: $47
	ld [hl], e                                       ; $5c82: $73
	ld l, e                                          ; $5c83: $6b
	or $6f                                           ; $5c84: $f6 $6f
	rst FarCall                                          ; $5c86: $f7
	ld a, e                                          ; $5c87: $7b
	or $9e                                           ; $5c88: $f6 $9e
	ld [hl], a                                       ; $5c8a: $77
	ld [hl], a                                       ; $5c8b: $77
	rst FarCall                                          ; $5c8c: $f7
	call c, Call_040_6b55                            ; $5c8d: $dc $55 $6b
	ld sp, hl                                        ; $5c90: $f9
	call nc, $8655                                   ; $5c91: $d4 $55 $86
	rlca                                             ; $5c94: $07

Jump_040_5c95:
	push af                                          ; $5c95: $f5
	sbc [hl]                                         ; $5c96: $9e
	rst $38                                          ; $5c97: $ff
	ld [hl], e                                       ; $5c98: $73
	db $fd                                           ; $5c99: $fd
	rst FarCall                                          ; $5c9a: $f7
	sbc [hl]                                         ; $5c9b: $9e
	ldh a, [$7b]                                     ; $5c9c: $f0 $7b
	db $fd                                           ; $5c9e: $fd

jr_040_5c9f:
	sbc l                                            ; $5c9f: $9d
	jr @+$0a                                         ; $5ca0: $18 $08

	ld d, e                                          ; $5ca2: $53
	cp $9e                                           ; $5ca3: $fe $9e
	rrca                                             ; $5ca5: $0f
	di                                               ; $5ca6: $f3
	sbc l                                            ; $5ca7: $9d
	ld bc, $f3fe                                     ; $5ca8: $01 $fe $f3
	ld d, e                                          ; $5cab: $53
	pop bc                                           ; $5cac: $c1
	inc sp                                           ; $5cad: $33
	ldh a, [$9d]                                     ; $5cae: $f0 $9d
	add b                                            ; $5cb0: $80
	ld b, b                                          ; $5cb1: $40
	ld d, a                                          ; $5cb2: $57
	cp $9b                                           ; $5cb3: $fe $9b
	nop                                              ; $5cb5: $00
	ret nz                                           ; $5cb6: $c0

	ld d, b                                          ; $5cb7: $50
	jr nz, jr_040_5d11                               ; $5cb8: $20 $57

	cp $9d                                           ; $5cba: $fe $9d
	ld e, a                                          ; $5cbc: $5f
	jr nz, @+$11                                     ; $5cbd: $20 $0f

	ret nz                                           ; $5cbf: $c0

	sbc [hl]                                         ; $5cc0: $9e
	db $fc                                           ; $5cc1: $fc
	and $9e                                          ; $5cc2: $e6 $9e
	ld bc, $fd7b                                     ; $5cc4: $01 $7b $fd
	sbc e                                            ; $5cc7: $9b
	inc c                                            ; $5cc8: $0c
	inc bc                                           ; $5cc9: $03
	add b                                            ; $5cca: $80
	nop                                              ; $5ccb: $00
	ld c, e                                          ; $5ccc: $4b
	cp $73                                           ; $5ccd: $fe $73
	sbc d                                            ; $5ccf: $9a
	ld e, e                                          ; $5cd0: $5b
	cp $e0                                           ; $5cd1: $fe $e0
	jp nc, $049e                                     ; $5cd3: $d2 $9e $04

	ld h, e                                          ; $5cd6: $63
	cp $6f                                           ; $5cd7: $fe $6f
	ld sp, hl                                        ; $5cd9: $f9
	sbc l                                            ; $5cda: $9d
	ld [bc], a                                       ; $5cdb: $02
	ld bc, $fe4f                                     ; $5cdc: $01 $4f $fe
	rst FarCall                                          ; $5cdf: $f7
	ld c, d                                          ; $5ce0: $4a
	push hl                                          ; $5ce1: $e5
	ld a, e                                          ; $5ce2: $7b
	ld b, h                                          ; $5ce3: $44
	sbc [hl]                                         ; $5ce4: $9e
	rra                                              ; $5ce5: $1f
	ld d, e                                          ; $5ce6: $53
	ld [$747f], a                                    ; $5ce7: $ea $7f $74
	sbc [hl]                                         ; $5cea: $9e
	ld hl, sp+$02                                    ; $5ceb: $f8 $02
	sbc $77                                          ; $5ced: $de $77
	ldh a, [rPCM34]                                  ; $5cef: $f0 $77
	jr c, jr_040_5d66                                ; $5cf1: $38 $73

	and [hl]                                         ; $5cf3: $a6
	sbc d                                            ; $5cf4: $9a
	inc bc                                           ; $5cf5: $03
	nop                                              ; $5cf6: $00
	inc bc                                           ; $5cf7: $03
	inc b                                            ; $5cf8: $04
	inc bc                                           ; $5cf9: $03
	ld [hl], a                                       ; $5cfa: $77
	ldh [$9b], a                                     ; $5cfb: $e0 $9b
	ld a, b                                          ; $5cfd: $78
	rlca                                             ; $5cfe: $07
	ccf                                              ; $5cff: $3f
	rst $38                                          ; $5d00: $ff
	ld [hl], a                                       ; $5d01: $77
	cp $9d                                           ; $5d02: $fe $9d
	add b                                            ; $5d04: $80
	ld a, a                                          ; $5d05: $7f
	ld a, e                                          ; $5d06: $7b
	db $fc                                           ; $5d07: $fc
	ld [hl], e                                       ; $5d08: $73
	or l                                             ; $5d09: $b5
	sbc [hl]                                         ; $5d0a: $9e
	ret nz                                           ; $5d0b: $c0

	ld [hl], e                                       ; $5d0c: $73
	cp $7f                                           ; $5d0d: $fe $7f
	dec h                                            ; $5d0f: $25
	ld a, a                                          ; $5d10: $7f

jr_040_5d11:
	db $fc                                           ; $5d11: $fc
	ld a, [hl]                                       ; $5d12: $7e
	adc $9e                                          ; $5d13: $ce $9e
	ld b, b                                          ; $5d15: $40
	ld [hl], a                                       ; $5d16: $77
	cp $99                                           ; $5d17: $fe $99
	ccf                                              ; $5d19: $3f
	ld e, a                                          ; $5d1a: $5f
	ccf                                              ; $5d1b: $3f
	ld e, e                                          ; $5d1c: $5b
	ccf                                              ; $5d1d: $3f
	ld d, b                                          ; $5d1e: $50
	ld a, e                                          ; $5d1f: $7b
	cp $6b                                           ; $5d20: $fe $6b
	or b                                             ; $5d22: $b0
	sbc d                                            ; $5d23: $9a
	rst $38                                          ; $5d24: $ff
	and $ff                                          ; $5d25: $e6 $ff
	ldh [rIE], a                                     ; $5d27: $e0 $ff
	ld a, e                                          ; $5d29: $7b
	or e                                             ; $5d2a: $b3
	rst SubAFromDE                                          ; $5d2b: $df
	rst $38                                          ; $5d2c: $ff
	ld h, a                                          ; $5d2d: $67
	xor c                                            ; $5d2e: $a9
	ld a, a                                          ; $5d2f: $7f
	cp $9c                                           ; $5d30: $fe $9c
	add $00                                          ; $5d32: $c6 $00
	db $e4                                           ; $5d34: $e4
	ld e, a                                          ; $5d35: $5f
	ldh a, [$9b]                                     ; $5d36: $f0 $9b
	add hl, sp                                       ; $5d38: $39
	rst $38                                          ; $5d39: $ff
	nop                                              ; $5d3a: $00
	add hl, bc                                       ; $5d3b: $09
	ld a, e                                          ; $5d3c: $7b
	cp $9d                                           ; $5d3d: $fe $9d
	db $fd                                           ; $5d3f: $fd
	ldh [rPCM34], a                                  ; $5d40: $e0 $77
	ld e, e                                          ; $5d42: $5b
	ld a, [hl]                                       ; $5d43: $7e
	xor b                                            ; $5d44: $a8
	call c, $9eff                                    ; $5d45: $dc $ff $9e
	ld a, a                                          ; $5d48: $7f
	sbc $ff                                          ; $5d49: $de $ff
	ld e, e                                          ; $5d4b: $5b
	ld d, c                                          ; $5d4c: $51
	db $fc                                           ; $5d4d: $fc
	sbc [hl]                                         ; $5d4e: $9e
	ccf                                              ; $5d4f: $3f
	ld [hl], d                                       ; $5d50: $72
	jp z, $fa7f                                      ; $5d51: $ca $7f $fa

	ld a, a                                          ; $5d54: $7f
	db $e4                                           ; $5d55: $e4
	sbc h                                            ; $5d56: $9c
	ld h, b                                          ; $5d57: $60
	rst $38                                          ; $5d58: $ff
	ld b, b                                          ; $5d59: $40
	ld a, e                                          ; $5d5a: $7b
	db $fc                                           ; $5d5b: $fc
	ld l, a                                          ; $5d5c: $6f
	rst SubAFromDE                                          ; $5d5d: $df
	ld [hl], e                                       ; $5d5e: $73
	and a                                            ; $5d5f: $a7
	ld e, e                                          ; $5d60: $5b
	and b                                            ; $5d61: $a0
	ld a, a                                          ; $5d62: $7f
	ld a, [$8f9b]                                    ; $5d63: $fa $9b $8f

jr_040_5d66:
	rst $38                                          ; $5d66: $ff
	nop                                              ; $5d67: $00
	rst AddAOntoHL                                          ; $5d68: $ef
	ld a, e                                          ; $5d69: $7b
	cp $63                                           ; $5d6a: $fe $63
	ldh a, [$9b]                                     ; $5d6c: $f0 $9b
	inc h                                            ; $5d6e: $24
	rst $38                                          ; $5d6f: $ff
	nop                                              ; $5d70: $00
	rst SubAFromBC                                          ; $5d71: $e7
	ld a, e                                          ; $5d72: $7b
	cp $9c                                           ; $5d73: $fe $9c
	rst FarCall                                          ; $5d75: $f7
	ldh a, [$0c]                                     ; $5d76: $f0 $0c
	db $fd                                           ; $5d78: $fd
	ld a, a                                          ; $5d79: $7f
	ld b, $9c                                        ; $5d7a: $06 $9c
	sub h                                            ; $5d7c: $94
	ld hl, sp+$04                                    ; $5d7d: $f8 $04
	ld [hl], e                                       ; $5d7f: $73
	cp $9d                                           ; $5d80: $fe $9d
	inc bc                                           ; $5d82: $03
	ld bc, $fe5f                                     ; $5d83: $01 $5f $fe
	ld e, d                                          ; $5d86: $5a
	ret nz                                           ; $5d87: $c0

	sbc e                                            ; $5d88: $9b
	rst $38                                          ; $5d89: $ff
	rst AddAOntoHL                                          ; $5d8a: $ef
	rst $38                                          ; $5d8b: $ff
	add b                                            ; $5d8c: $80
	ld a, c                                          ; $5d8d: $79
	db $e3                                           ; $5d8e: $e3
	ld a, a                                          ; $5d8f: $7f
	cpl                                              ; $5d90: $2f
	ld l, d                                          ; $5d91: $6a
	or h                                             ; $5d92: $b4
	sbc h                                            ; $5d93: $9c
	ldh a, [$e0]                                     ; $5d94: $f0 $e0
	ldh a, [$75]                                     ; $5d96: $f0 $75
	add c                                            ; $5d98: $81
	ld sp, hl                                        ; $5d99: $f9
	sbc c                                            ; $5d9a: $99
	rst SubAFromBC                                          ; $5d9b: $e7
	rra                                              ; $5d9c: $1f
	rrca                                             ; $5d9d: $0f
	rra                                              ; $5d9e: $1f
	ld [$751f], sp                                   ; $5d9f: $08 $1f $75
	ld a, a                                          ; $5da2: $7f
	ei                                               ; $5da3: $fb
	sbc [hl]                                         ; $5da4: $9e
	jr jr_040_5e1e                                   ; $5da5: $18 $77

	ld d, [hl]                                       ; $5da7: $56
	ld e, d                                          ; $5da8: $5a
	push bc                                          ; $5da9: $c5
	ld [hl], a                                       ; $5daa: $77
	ld [hl], a                                       ; $5dab: $77
	ld l, l                                          ; $5dac: $6d
	ld [hl], h                                       ; $5dad: $74
	ld a, [hl]                                       ; $5dae: $7e
	adc $8e                                          ; $5daf: $ce $8e
	ld [$0807], sp                                   ; $5db1: $08 $07 $08
	rlca                                             ; $5db4: $07
	rst SubAFromBC                                          ; $5db5: $e7
	rra                                              ; $5db6: $1f
	rst $38                                          ; $5db7: $ff
	rst $38                                          ; $5db8: $ff
	adc c                                            ; $5db9: $89
	ld a, a                                          ; $5dba: $7f
	add hl, bc                                       ; $5dbb: $09
	add hl, bc                                       ; $5dbc: $09
	dec e                                            ; $5dbd: $1d
	add hl, sp                                       ; $5dbe: $39
	ccf                                              ; $5dbf: $3f
	rst $38                                          ; $5dc0: $ff
	cp a                                             ; $5dc1: $bf
	ld a, d                                          ; $5dc2: $7a
	jp z, $bf9e                                      ; $5dc3: $ca $9e $bf

	ld a, d                                          ; $5dc6: $7a
	jp nz, $c09c                                     ; $5dc7: $c2 $9c $c0

	cp a                                             ; $5dca: $bf
	add b                                            ; $5dcb: $80
	ld a, e                                          ; $5dcc: $7b
	inc l                                            ; $5dcd: $2c
	ld l, [hl]                                       ; $5dce: $6e
	ret z                                            ; $5dcf: $c8

	halt                                             ; $5dd0: $76
	add $6f                                          ; $5dd1: $c6 $6f
	ld e, $7e                                        ; $5dd3: $1e $7e
	ret z                                            ; $5dd5: $c8

	ld h, a                                          ; $5dd6: $67
	cp $7e                                           ; $5dd7: $fe $7e
	cp h                                             ; $5dd9: $bc
	halt                                             ; $5dda: $76
	or [hl]                                          ; $5ddb: $b6
	sbc d                                            ; $5ddc: $9a
	db $e4                                           ; $5ddd: $e4
	rst $38                                          ; $5dde: $ff
	db $e4                                           ; $5ddf: $e4
	rst $38                                          ; $5de0: $ff
	rst SubAFromBC                                          ; $5de1: $e7
	ld [hl], e                                       ; $5de2: $73
	cp $6b                                           ; $5de3: $fe $6b
	and b                                            ; $5de5: $a0
	sbc l                                            ; $5de6: $9d
	or $00                                           ; $5de7: $f6 $00
	ld a, e                                          ; $5de9: $7b
	ld h, [hl]                                       ; $5dea: $66
	sbc [hl]                                         ; $5deb: $9e
	di                                               ; $5dec: $f3
	ld a, e                                          ; $5ded: $7b
	cp $6b                                           ; $5dee: $fe $6b
	ldh a, [$7e]                                     ; $5df0: $f0 $7e
	cpl                                              ; $5df2: $2f
	ld a, e                                          ; $5df3: $7b
	or $9c                                           ; $5df4: $f6 $9c
	ld a, b                                          ; $5df6: $78
	rst $38                                          ; $5df7: $ff
	ld hl, sp+$73                                    ; $5df8: $f8 $73
	ldh a, [$7f]                                     ; $5dfa: $f0 $7f
	ld b, c                                          ; $5dfc: $41
	rst SubAFromHL                                          ; $5dfd: $d7
	rst $38                                          ; $5dfe: $ff
	sbc c                                            ; $5dff: $99
	cp $ff                                           ; $5e00: $fe $ff
	ld [bc], a                                       ; $5e02: $02
	inc b                                            ; $5e03: $04
	ld [de], a                                       ; $5e04: $12
	or h                                             ; $5e05: $b4
	db $f4                                           ; $5e06: $f4
	sbc e                                            ; $5e07: $9b
	ld [bc], a                                       ; $5e08: $02
	ld d, $22                                        ; $5e09: $16 $22
	ld a, a                                          ; $5e0b: $7f
	ld a, d                                          ; $5e0c: $7a
	xor d                                            ; $5e0d: $aa
	ld a, a                                          ; $5e0e: $7f
	cp $9e                                           ; $5e0f: $fe $9e
	ld l, [hl]                                       ; $5e11: $6e
	ld a, e                                          ; $5e12: $7b
	db $fc                                           ; $5e13: $fc
	sbc l                                            ; $5e14: $9d
	ld h, c                                          ; $5e15: $61
	rst $38                                          ; $5e16: $ff
	ld a, d                                          ; $5e17: $7a
	or h                                             ; $5e18: $b4
	ld a, a                                          ; $5e19: $7f
	adc b                                            ; $5e1a: $88
	ld a, e                                          ; $5e1b: $7b
	or d                                             ; $5e1c: $b2
	sbc h                                            ; $5e1d: $9c

jr_040_5e1e:
	ret z                                            ; $5e1e: $c8

	rst $38                                          ; $5e1f: $ff
	rst SubAFromDE                                          ; $5e20: $df
	ld a, e                                          ; $5e21: $7b
	cp $7e                                           ; $5e22: $fe $7e
	adc $73                                          ; $5e24: $ce $73
	xor a                                            ; $5e26: $af
	ld [hl], d                                       ; $5e27: $72
	cp d                                             ; $5e28: $ba
	ld l, a                                          ; $5e29: $6f
	adc [hl]                                         ; $5e2a: $8e
	ld h, a                                          ; $5e2b: $67
	ldh a, [$9e]                                     ; $5e2c: $f0 $9e
	inc b                                            ; $5e2e: $04
	ld e, e                                          ; $5e2f: $5b
	ldh a, [rPCM12]                                  ; $5e30: $f0 $76
	call z, $f49c                                    ; $5e32: $cc $9c $f4
	ld hl, sp-$04                                    ; $5e35: $f8 $fc
	ld a, e                                          ; $5e37: $7b
	cp $7f                                           ; $5e38: $fe $7f
	ld a, [$c075]                                    ; $5e3a: $fa $75 $c0
	ld e, l                                          ; $5e3d: $5d
	add [hl]                                         ; $5e3e: $86
	ld l, [hl]                                       ; $5e3f: $6e
	cp h                                             ; $5e40: $bc
	sbc [hl]                                         ; $5e41: $9e
	ret nz                                           ; $5e42: $c0

	sbc $e0                                          ; $5e43: $de $e0
	rst SubAFromDE                                          ; $5e45: $df
	ld c, $75                                        ; $5e46: $0e $75
	pop hl                                           ; $5e48: $e1
	sbc c                                            ; $5e49: $99
	rst AddAOntoHL                                          ; $5e4a: $ef
	sbc a                                            ; $5e4b: $9f
	db $e3                                           ; $5e4c: $e3
	sub [hl]                                         ; $5e4d: $96
	ei                                               ; $5e4e: $fb
	rst SubAFromDE                                          ; $5e4f: $df
	ld l, d                                          ; $5e50: $6a
	ldh a, [$7f]                                     ; $5e51: $f0 $7f
	xor $98                                          ; $5e53: $ee $98
	rra                                              ; $5e55: $1f
	pop af                                           ; $5e56: $f1
	dec de                                           ; $5e57: $1b
	pop af                                           ; $5e58: $f1
	rra                                              ; $5e59: $1f
	pop af                                           ; $5e5a: $f1
	rst $38                                          ; $5e5b: $ff
	ld l, h                                          ; $5e5c: $6c
	ld c, c                                          ; $5e5d: $49
	ld l, d                                          ; $5e5e: $6a
	ld d, e                                          ; $5e5f: $53
	ld a, a                                          ; $5e60: $7f
	add d                                            ; $5e61: $82
	sbc [hl]                                         ; $5e62: $9e
	pop bc                                           ; $5e63: $c1
	ld a, d                                          ; $5e64: $7a
	call nz, $3893                                   ; $5e65: $c4 $93 $38
	add hl, de                                       ; $5e68: $19
	dec sp                                           ; $5e69: $3b
	or $1f                                           ; $5e6a: $f6 $1f
	add $37                                          ; $5e6c: $c6 $37
	ld b, $87                                        ; $5e6e: $06 $87
	add $c7                                          ; $5e70: $c6 $c7
	rst JumpTable                                          ; $5e72: $c7
	ld [hl], e                                       ; $5e73: $73
	adc l                                            ; $5e74: $8d
	add e                                            ; $5e75: $83
	ldh [$c0], a                                     ; $5e76: $e0 $c0
	cpl                                              ; $5e78: $2f
	ld [hl], b                                       ; $5e79: $70
	ccf                                              ; $5e7a: $3f
	ld [hl], b                                       ; $5e7b: $70
	ld a, $f1                                        ; $5e7c: $3e $f1
	ld a, h                                          ; $5e7e: $7c
	db $e3                                           ; $5e7f: $e3
	ld h, d                                          ; $5e80: $62
	db $e3                                           ; $5e81: $e3
	ld a, l                                          ; $5e82: $7d
	ld a, l                                          ; $5e83: $7d
	ld h, l                                          ; $5e84: $65
	ld a, l                                          ; $5e85: $7d
	dec b                                            ; $5e86: $05
	ld c, l                                          ; $5e87: $4d
	add e                                            ; $5e88: $83
	ld a, l                                          ; $5e89: $7d
	rst GetHLinHL                                          ; $5e8a: $cf
	add hl, sp                                       ; $5e8b: $39
	rra                                              ; $5e8c: $1f
	cp c                                             ; $5e8d: $b9
	rrca                                             ; $5e8e: $0f
	add hl, de                                       ; $5e8f: $19
	rlca                                             ; $5e90: $07
	push bc                                          ; $5e91: $c5
	ld e, l                                          ; $5e92: $5d

jr_040_5e93:
	pop bc                                           ; $5e93: $c1
	ld l, a                                          ; $5e94: $6f
	cp $47                                           ; $5e95: $fe $47
	ldh a, [$71]                                     ; $5e97: $f0 $71
	add d                                            ; $5e99: $82
	sbc [hl]                                         ; $5e9a: $9e
	jr nz, jr_040_5f18                               ; $5e9b: $20 $7b

	or $9c                                           ; $5e9d: $f6 $9c
	rrca                                             ; $5e9f: $0f
	rst $38                                          ; $5ea0: $ff
	rra                                              ; $5ea1: $1f
	ld a, e                                          ; $5ea2: $7b
	cp $9b                                           ; $5ea3: $fe $9b
	rrca                                             ; $5ea5: $0f
	rlca                                             ; $5ea6: $07
	rrca                                             ; $5ea7: $0f
	rrca                                             ; $5ea8: $0f
	ld a, d                                          ; $5ea9: $7a
	ld d, h                                          ; $5eaa: $54
	sub [hl]                                         ; $5eab: $96
	ld hl, sp+$0f                                    ; $5eac: $f8 $0f
	ldh a, [hDisp0_WX]                                     ; $5eae: $f0 $89
	add d                                            ; $5eb0: $82
	rst GetHLinHL                                          ; $5eb1: $cf
	sbc $fe                                          ; $5eb2: $de $fe
	adc $7b                                          ; $5eb4: $ce $7b
	adc l                                            ; $5eb6: $8d
	db $dd                                           ; $5eb7: $dd
	ret nz                                           ; $5eb8: $c0

	halt                                             ; $5eb9: $76
	inc hl                                           ; $5eba: $23
	ld a, a                                          ; $5ebb: $7f
	cp $7e                                           ; $5ebc: $fe $7e

jr_040_5ebe:
	push bc                                          ; $5ebe: $c5
	sbc l                                            ; $5ebf: $9d
	rlca                                             ; $5ec0: $07
	ld hl, sp+$7b                                    ; $5ec1: $f8 $7b
	ld c, l                                          ; $5ec3: $4d
	sbc e                                            ; $5ec4: $9b
	ld b, $00                                        ; $5ec5: $06 $00
	nop                                              ; $5ec7: $00
	cp $63                                           ; $5ec8: $fe $63
	cp $80                                           ; $5eca: $fe $80
	db $ec                                           ; $5ecc: $ec
	jr nc, jr_040_5ebe                               ; $5ecd: $30 $ef

	rlca                                             ; $5ecf: $07
	adc a                                            ; $5ed0: $8f
	rrca                                             ; $5ed1: $0f
	rst AddAOntoHL                                          ; $5ed2: $ef
	rra                                              ; $5ed3: $1f
	db $fc                                           ; $5ed4: $fc
	rrca                                             ; $5ed5: $0f
	db $fc                                           ; $5ed6: $fc
	rrca                                             ; $5ed7: $0f
	ld sp, hl                                        ; $5ed8: $f9
	rrca                                             ; $5ed9: $0f
	ld sp, hl                                        ; $5eda: $f9
	dec de                                           ; $5edb: $1b
	nop                                              ; $5edc: $00
	ld [hl], $82                                     ; $5edd: $36 $82
	or l                                             ; $5edf: $b5
	ret nz                                           ; $5ee0: $c0

	ret c                                            ; $5ee1: $d8

	ld a, e                                          ; $5ee2: $7b
	ldh [$5b], a                                     ; $5ee3: $e0 $5b
	ret nz                                           ; $5ee5: $c0

	ld e, e                                          ; $5ee6: $5b
	ret nz                                           ; $5ee7: $c0

	db $db                                           ; $5ee8: $db
	add b                                            ; $5ee9: $80
	db $db                                           ; $5eea: $db
	ld [hl], l                                       ; $5eeb: $75
	db $ed                                           ; $5eec: $ed
	ld a, e                                          ; $5eed: $7b
	cp $73                                           ; $5eee: $fe $73
	sub h                                            ; $5ef0: $94
	sbc d                                            ; $5ef1: $9a
	jr nz, jr_040_5e93                               ; $5ef2: $20 $9f

	ld a, b                                          ; $5ef4: $78
	cp a                                             ; $5ef5: $bf
	ret c                                            ; $5ef6: $d8

	ld e, e                                          ; $5ef7: $5b
	add b                                            ; $5ef8: $80
	ld a, h                                          ; $5ef9: $7c
	db $e4                                           ; $5efa: $e4
	ld a, a                                          ; $5efb: $7f
	adc h                                            ; $5efc: $8c
	ld l, b                                          ; $5efd: $68
	and c                                            ; $5efe: $a1
	ld [hl], e                                       ; $5eff: $73
	ldh a, [$7f]                                     ; $5f00: $f0 $7f
	sbc d                                            ; $5f02: $9a
	sbc l                                            ; $5f03: $9d
	ldh a, [rIE]                                     ; $5f04: $f0 $ff
	halt                                             ; $5f06: $76
	db $dd                                           ; $5f07: $dd
	ld l, a                                          ; $5f08: $6f
	ldh a, [$9e]                                     ; $5f09: $f0 $9e
	ld bc, $fe6f                                     ; $5f0b: $01 $6f $fe
	cp $7b                                           ; $5f0e: $fe $7b
	adc l                                            ; $5f10: $8d
	add b                                            ; $5f11: $80
	ei                                               ; $5f12: $fb
	add a                                            ; $5f13: $87
	ld a, a                                          ; $5f14: $7f
	add a                                            ; $5f15: $87
	ld a, a                                          ; $5f16: $7f
	add e                                            ; $5f17: $83

jr_040_5f18:
	ld a, [hl]                                       ; $5f18: $7e
	add a                                            ; $5f19: $87
	ld e, h                                          ; $5f1a: $5c
	cp a                                             ; $5f1b: $bf
	inc bc                                           ; $5f1c: $03
	ld bc, $c301                                     ; $5f1d: $01 $01 $c3
	db $e3                                           ; $5f20: $e3
	pop af                                           ; $5f21: $f1
	db $f4                                           ; $5f22: $f4
	ei                                               ; $5f23: $fb
	rst $38                                          ; $5f24: $ff
	ldh a, [$9f]                                     ; $5f25: $f0 $9f
	and b                                            ; $5f27: $a0
	ccf                                              ; $5f28: $3f
	ld b, b                                          ; $5f29: $40
	ld a, a                                          ; $5f2a: $7f
	add b                                            ; $5f2b: $80
	ld a, [hl]                                       ; $5f2c: $7e
	rst $38                                          ; $5f2d: $ff
	nop                                              ; $5f2e: $00
	ldh [rP1], a                                     ; $5f2f: $e0 $00
	add b                                            ; $5f31: $80
	and c                                            ; $5f32: $a1
	call nz, $c0c7                                   ; $5f33: $c4 $c7 $c0
	pop bc                                           ; $5f36: $c1
	ret nz                                           ; $5f37: $c0

	rst AddAOntoHL                                          ; $5f38: $ef
	ret nz                                           ; $5f39: $c0

	rst JumpTable                                          ; $5f3a: $c7
	pop bc                                           ; $5f3b: $c1
	ld b, e                                          ; $5f3c: $43
	ld e, a                                          ; $5f3d: $5f
	rst $38                                          ; $5f3e: $ff
	ld b, b                                          ; $5f3f: $40
	ldh [rP1], a                                     ; $5f40: $e0 $00
	ldh [rAUD4LEN], a                                ; $5f42: $e0 $20
	ld a, a                                          ; $5f44: $7f
	ld a, a                                          ; $5f45: $7f
	ldh [rIE], a                                     ; $5f46: $e0 $ff
	ret nz                                           ; $5f48: $c0

	rst SubAFromDE                                          ; $5f49: $df
	ldh [$ef], a                                     ; $5f4a: $e0 $ef
	ldh a, [hLCDCIntHandlerIdx]                                     ; $5f4c: $f0 $81
	rst $38                                          ; $5f4e: $ff
	ld bc, $dec1                                     ; $5f4f: $01 $c1 $de
	ld bc, $a179                                     ; $5f52: $01 $79 $a1
	ld [hl], e                                       ; $5f55: $73
	cp $72                                           ; $5f56: $fe $72
	db $10                                           ; $5f58: $10
	rst SubAFromDE                                          ; $5f59: $df
	rst SubAFromDE                                          ; $5f5a: $df
	sbc e                                            ; $5f5b: $9b
	adc e                                            ; $5f5c: $8b
	adc a                                            ; $5f5d: $8f
	ret c                                            ; $5f5e: $d8

	reti                                             ; $5f5f: $d9


	db $dd                                           ; $5f60: $dd
	rst $38                                          ; $5f61: $ff
	sub h                                            ; $5f62: $94
	cp c                                             ; $5f63: $b9
	cp a                                             ; $5f64: $bf
	cp $fe                                           ; $5f65: $fe $fe
	rst SubAFromBC                                          ; $5f67: $e7
	rst FarCall                                          ; $5f68: $f7
	rst JumpTable                                          ; $5f69: $c7
	rst SubAFromBC                                          ; $5f6a: $e7
	push bc                                          ; $5f6b: $c5
	rst AddAOntoHL                                          ; $5f6c: $ef
	ld c, l                                          ; $5f6d: $4d
	ld a, e                                          ; $5f6e: $7b
	add hl, sp                                       ; $5f6f: $39
	adc h                                            ; $5f70: $8c
	ld b, $8f                                        ; $5f71: $06 $8f
	add h                                            ; $5f73: $84
	rst AddAOntoHL                                          ; $5f74: $ef
	rst JumpTable                                          ; $5f75: $c7
	push bc                                          ; $5f76: $c5
	rlca                                             ; $5f77: $07
	add l                                            ; $5f78: $85
	rlca                                             ; $5f79: $07
	push bc                                          ; $5f7a: $c5

jr_040_5f7b:
	add a                                            ; $5f7b: $87
	push bc                                          ; $5f7c: $c5
	rlca                                             ; $5f7d: $07
	push bc                                          ; $5f7e: $c5
	dec b                                            ; $5f7f: $05
	rst JumpTable                                          ; $5f80: $c7
	inc b                                            ; $5f81: $04
	add a                                            ; $5f82: $87
	ld b, $7a                                        ; $5f83: $06 $7a
	sbc a                                            ; $5f85: $9f
	ld d, e                                          ; $5f86: $53
	cp $6f                                           ; $5f87: $fe $6f
	ld [hl], $57                                     ; $5f89: $36 $57
	cp $80                                           ; $5f8b: $fe $80
	rrca                                             ; $5f8d: $0f
	rst SubAFromBC                                          ; $5f8e: $e7
	rra                                              ; $5f8f: $1f
	ldh [rAUD3LEVEL], a                              ; $5f90: $e0 $1c
	ldh [rAUD4LEN], a                                ; $5f92: $e0 $20
	ret nz                                           ; $5f94: $c0

	ld h, b                                          ; $5f95: $60
	ret nz                                           ; $5f96: $c0

	ld b, a                                          ; $5f97: $47
	call z, $bc4e                                    ; $5f98: $cc $4e $bc
	ld a, [hl]                                       ; $5f9b: $7e
	sbc e                                            ; $5f9c: $9b
	rst $38                                          ; $5f9d: $ff
	ld a, b                                          ; $5f9e: $78
	ld sp, hl                                        ; $5f9f: $f9
	ld [hl], b                                       ; $5fa0: $70
	ld sp, hl                                        ; $5fa1: $f9
	jr nz, jr_040_6014                               ; $5fa2: $20 $70

	jr nz, jr_040_6023                               ; $5fa4: $20 $7d

	ld [hl], b                                       ; $5fa6: $70
	ld a, a                                          ; $5fa7: $7f
	ld [hl], c                                       ; $5fa8: $71
	ld a, a                                          ; $5fa9: $7f
	ld [hl], b                                       ; $5faa: $70
	rst $38                                          ; $5fab: $ff
	sub d                                            ; $5fac: $92
	ld a, a                                          ; $5fad: $7f
	ld hl, sp-$71                                    ; $5fae: $f8 $8f
	db $fc                                           ; $5fb0: $fc
	cp a                                             ; $5fb1: $bf
	db $fc                                           ; $5fb2: $fc
	add a                                            ; $5fb3: $87
	db $fc                                           ; $5fb4: $fc
	cp a                                             ; $5fb5: $bf

jr_040_5fb6:
	cp $07                                           ; $5fb6: $fe $07
	cp $3f                                           ; $5fb8: $fe $3f
	ld a, e                                          ; $5fba: $7b
	dec c                                            ; $5fbb: $0d
	ld l, [hl]                                       ; $5fbc: $6e
	jp z, Jump_040_7473                              ; $5fbd: $ca $73 $74

	ld a, a                                          ; $5fc0: $7f
	di                                               ; $5fc1: $f3
	ld a, c                                          ; $5fc2: $79
	dec c                                            ; $5fc3: $0d
	add b                                            ; $5fc4: $80
	ldh [rAUD4ENV], a                                ; $5fc5: $e0 $21
	ret nz                                           ; $5fc7: $c0

	ld h, c                                          ; $5fc8: $61
	pop bc                                           ; $5fc9: $c1
	pop hl                                           ; $5fca: $e1
	ld b, c                                          ; $5fcb: $41
	pop bc                                           ; $5fcc: $c1
	ld b, b                                          ; $5fcd: $40
	pop hl                                           ; $5fce: $e1
	ld h, b                                          ; $5fcf: $60
	pop hl                                           ; $5fd0: $e1
	and b                                            ; $5fd1: $a0
	db $e3                                           ; $5fd2: $e3
	ldh [$e3], a                                     ; $5fd3: $e0 $e3
	ld a, [hl-]                                      ; $5fd5: $3a
	pop hl                                           ; $5fd6: $e1
	jr jr_040_5f7b                                   ; $5fd7: $18 $a2

	add c                                            ; $5fd9: $81
	db $fd                                           ; $5fda: $fd
	jp $fff7                                         ; $5fdb: $c3 $f7 $ff


	cp $7f                                           ; $5fde: $fe $7f
	db $ec                                           ; $5fe0: $ec
	ld a, e                                          ; $5fe1: $7b
	ldh [$7b], a                                     ; $5fe2: $e0 $7b
	sub d                                            ; $5fe4: $92

jr_040_5fe5:
	ldh [$7f], a                                     ; $5fe5: $e0 $7f
	ld a, b                                          ; $5fe7: $78
	rst $38                                          ; $5fe8: $ff
	ret c                                            ; $5fe9: $d8

	ei                                               ; $5fea: $fb
	sbc h                                            ; $5feb: $9c
	ei                                               ; $5fec: $fb
	ld c, $fc                                        ; $5fed: $0e $fc
	rrca                                             ; $5fef: $0f
	rst $38                                          ; $5ff0: $ff
	rlca                                             ; $5ff1: $07
	ld [hl], a                                       ; $5ff2: $77
	sub b                                            ; $5ff3: $90
	add b                                            ; $5ff4: $80
	db $fd                                           ; $5ff5: $fd
	rlca                                             ; $5ff6: $07
	db $fc                                           ; $5ff7: $fc
	rlca                                             ; $5ff8: $07
	rst $38                                          ; $5ff9: $ff
	inc bc                                           ; $5ffa: $03
	pop hl                                           ; $5ffb: $e1
	ccf                                              ; $5ffc: $3f
	ret nz                                           ; $5ffd: $c0

	pop hl                                           ; $5ffe: $e1
	ldh [$f0], a                                     ; $5fff: $e0 $f0
	ldh a, [$30]                                     ; $6001: $f0 $30
	ld hl, sp+$08                                    ; $6003: $f8 $08
	rst $38                                          ; $6005: $ff
	db $fc                                           ; $6006: $fc
	rst $38                                          ; $6007: $ff
	call c, $9dff                                    ; $6008: $dc $ff $9d
	rst $38                                          ; $600b: $ff
	db $dd                                           ; $600c: $dd
	ccf                                              ; $600d: $3f
	ccf                                              ; $600e: $3f
	rlca                                             ; $600f: $07
	adc a                                            ; $6010: $8f
	add a                                            ; $6011: $87
	rst JumpTable                                          ; $6012: $c7
	scf                                              ; $6013: $37

jr_040_6014:
	ld a, a                                          ; $6014: $7f
	ret z                                            ; $6015: $c8

jr_040_6016:
	ld l, a                                          ; $6016: $6f
	jr jr_040_5fb6                                   ; $6017: $18 $9d

	ret nz                                           ; $6019: $c0

	ld b, b                                          ; $601a: $40
	ld a, c                                          ; $601b: $79
	add c                                            ; $601c: $81
	ld a, l                                          ; $601d: $7d
	ld c, h                                          ; $601e: $4c
	ld a, a                                          ; $601f: $7f
	ldh [c], a                                       ; $6020: $e2
	add l                                            ; $6021: $85
	ld d, b                                          ; $6022: $50

jr_040_6023:
	ei                                               ; $6023: $fb
	jr nc, jr_040_6016                               ; $6024: $30 $f0

	ld h, b                                          ; $6026: $60
	ldh a, [$e0]                                     ; $6027: $f0 $e0
	or b                                             ; $6029: $b0

jr_040_602a:
	jr nz, jr_040_602a                               ; $602a: $20 $fe

	ldh a, [rIE]                                     ; $602c: $f0 $ff
	pop af                                           ; $602e: $f1
	rst $38                                          ; $602f: $ff
	ldh a, [$3f]                                     ; $6030: $f0 $3f
	rst $38                                          ; $6032: $ff
	ld hl, sp+$4f                                    ; $6033: $f8 $4f
	ld a, h                                          ; $6035: $7c
	ld b, a                                          ; $6036: $47
	adc $73                                          ; $6037: $ce $73
	rst FarCall                                          ; $6039: $f7
	ld a, b                                          ; $603a: $78
	ei                                               ; $603b: $fb
	ld a, e                                          ; $603c: $7b
	ldh [c], a                                       ; $603d: $e2
	rst SubAFromDE                                          ; $603e: $df
	rst $38                                          ; $603f: $ff
	ld a, [hl]                                       ; $6040: $7e
	jp c, $1f71                                      ; $6041: $da $71 $1f

	add a                                            ; $6044: $87
	ld hl, sp+$7f                                    ; $6045: $f8 $7f
	or b                                             ; $6047: $b0
	ld a, l                                          ; $6048: $7d
	add c                                            ; $6049: $81
	ld a, d                                          ; $604a: $7a
	and c                                            ; $604b: $a1
	ld [hl], d                                       ; $604c: $72

jr_040_604d:
	db $e3                                           ; $604d: $e3
	ld h, h                                          ; $604e: $64
	rst SubAFromBC                                          ; $604f: $e7
	jr c, jr_040_604d                                ; $6050: $38 $fb

	inc e                                            ; $6052: $1c
	ld sp, hl                                        ; $6053: $f9
	ld b, $ff                                        ; $6054: $06 $ff
	ld b, $ea                                        ; $6056: $06 $ea
	dec d                                            ; $6058: $15
	push de                                          ; $6059: $d5
	ld a, [hl+]                                      ; $605a: $2a
	and b                                            ; $605b: $a0
	ld e, a                                          ; $605c: $5f
	ld a, d                                          ; $605d: $7a
	pop de                                           ; $605e: $d1
	ld l, e                                          ; $605f: $6b
	jr jr_040_5fe5                                   ; $6060: $18 $83

	xor [hl]                                         ; $6062: $ae
	ld d, e                                          ; $6063: $53
	ld d, a                                          ; $6064: $57
	xor d                                            ; $6065: $aa
	ld a, [bc]                                       ; $6066: $0a
	push af                                          ; $6067: $f5
	dec b                                            ; $6068: $05
	ld a, [$0bf3]                                    ; $6069: $fa $f3 $0b
	rst SubAFromBC                                          ; $606c: $e7
	rra                                              ; $606d: $1f
	rst SubAFromDE                                          ; $606e: $df
	dec sp                                           ; $606f: $3b
	ccf                                              ; $6070: $3f
	pop hl                                           ; $6071: $e1
	ld a, [hl]                                       ; $6072: $7e
	pop bc                                           ; $6073: $c1
	db $fc                                           ; $6074: $fc
	ld [bc], a                                       ; $6075: $02
	db $fc                                           ; $6076: $fc

Jump_040_6077:
	ld [bc], a                                       ; $6077: $02
	ld hl, sp+$05                                    ; $6078: $f8 $05
	rlca                                             ; $607a: $07
	rst JumpTable                                          ; $607b: $c7
	rrca                                             ; $607c: $0f
	rrca                                             ; $607d: $0f
	db $dd                                           ; $607e: $dd
	rst $38                                          ; $607f: $ff
	ld a, a                                          ; $6080: $7f
	cp e                                             ; $6081: $bb
	sbc [hl]                                         ; $6082: $9e
	ccf                                              ; $6083: $3f
	ld a, b                                          ; $6084: $78
	ld e, b                                          ; $6085: $58
	sbc e                                            ; $6086: $9b
	ld a, b                                          ; $6087: $78
	rst SubAFromBC                                          ; $6088: $e7
	rst $38                                          ; $6089: $ff
	ld sp, hl                                        ; $608a: $f9
	ld a, b                                          ; $608b: $78
	and l                                            ; $608c: $a5
	sub h                                            ; $608d: $94
	ld hl, sp-$06                                    ; $608e: $f8 $fa
	db $fd                                           ; $6090: $fd
	db $fd                                           ; $6091: $fd
	ld a, [$fdfa]                                    ; $6092: $fa $fa $fd
	ld hl, sp-$01                                    ; $6095: $f8 $ff

Jump_040_6097:
	ldh a, [$ef]                                     ; $6097: $f0 $ef
	halt                                             ; $6099: $76
	adc $97                                          ; $609a: $ce $97
	push af                                          ; $609c: $f5
	ld a, [bc]                                       ; $609d: $0a
	xor d                                            ; $609e: $aa
	ld d, l                                          ; $609f: $55
	ld d, l                                          ; $60a0: $55
	xor d                                            ; $60a1: $aa
	add b                                            ; $60a2: $80
	ld a, a                                          ; $60a3: $7f
	ld [hl], a                                       ; $60a4: $77
	or a                                             ; $60a5: $b7
	ld l, a                                          ; $60a6: $6f
	or d                                             ; $60a7: $b2
	ld [hl], a                                       ; $60a8: $77
	ldh a, [$9d]                                     ; $60a9: $f0 $9d
	inc bc                                           ; $60ab: $03
	db $fd                                           ; $60ac: $fd
	ld [hl], a                                       ; $60ad: $77
	push af                                          ; $60ae: $f5
	sub [hl]                                         ; $60af: $96
	db $f4                                           ; $60b0: $f4
	db $fc                                           ; $60b1: $fc
	db $e4                                           ; $60b2: $e4
	ld a, h                                          ; $60b3: $7c
	ret z                                            ; $60b4: $c8

	ld a, b                                          ; $60b5: $78
	ret                                              ; $60b6: $c9


	ld a, a                                          ; $60b7: $7f
	sbc a                                            ; $60b8: $9f
	ld a, e                                          ; $60b9: $7b
	jp nz, $777b                                     ; $60ba: $c2 $7b $77

	sbc e                                            ; $60bd: $9b
	xor a                                            ; $60be: $af
	pop bc                                           ; $60bf: $c1
	rst $38                                          ; $60c0: $ff
	add $74                                          ; $60c1: $c6 $74
	ld [hl], l                                       ; $60c3: $75
	rst SubAFromDE                                          ; $60c4: $df
	cp $de                                           ; $60c5: $fe $de
	rst $38                                          ; $60c7: $ff
	sbc e                                            ; $60c8: $9b
	ld sp, hl                                        ; $60c9: $f9
	ld a, [$f8f3]                                    ; $60ca: $fa $f3 $f8
	sbc $ff                                          ; $60cd: $de $ff
	sbc b                                            ; $60cf: $98
	rrca                                             ; $60d0: $0f
	db $fd                                           ; $60d1: $fd
	ld [bc], a                                       ; $60d2: $02
	ld [$5515], a                                    ; $60d3: $ea $15 $55
	xor d                                            ; $60d6: $aa
	ld [hl], a                                       ; $60d7: $77
	ld [hl], d                                       ; $60d8: $72
	ld a, a                                          ; $60d9: $7f
	cp $99                                           ; $60da: $fe $99
	cp $c0                                           ; $60dc: $fe $c0
	db $fc                                           ; $60de: $fc
	add d                                            ; $60df: $82
	rst SubAFromHL                                          ; $60e0: $d7
	dec hl                                           ; $60e1: $2b
	ld [hl], a                                       ; $60e2: $77
	ret nz                                           ; $60e3: $c0

	ld l, a                                          ; $60e4: $6f
	ld h, a                                          ; $60e5: $67
	sbc h                                            ; $60e6: $9c
	ldh [rPCM34], a                                  ; $60e7: $e0 $77
	di                                               ; $60e9: $f3
	ld [hl], e                                       ; $60ea: $73
	rst JumpTable                                          ; $60eb: $c7
	ld a, e                                          ; $60ec: $7b
	ld [hl-], a                                      ; $60ed: $32
	rst SubAFromDE                                          ; $60ee: $df
	ld a, a                                          ; $60ef: $7f
	sbc h                                            ; $60f0: $9c
	cp a                                             ; $60f1: $bf
	ccf                                              ; $60f2: $3f
	rst SubAFromDE                                          ; $60f3: $df
	ld a, c                                          ; $60f4: $79
	adc d                                            ; $60f5: $8a
	ld a, l                                          ; $60f6: $7d
	cp b                                             ; $60f7: $b8
	sbc c                                            ; $60f8: $99
	rst AddAOntoHL                                          ; $60f9: $ef
	ld [$d5d5], a                                    ; $60fa: $ea $d5 $d5
	ld [$79c0], a                                    ; $60fd: $ea $c0 $79
	xor a                                            ; $6100: $af
	ld a, a                                          ; $6101: $7f
	add e                                            ; $6102: $83
	ld [hl], a                                       ; $6103: $77
	db $db                                           ; $6104: $db
	sbc l                                            ; $6105: $9d
	ld d, a                                          ; $6106: $57
	xor b                                            ; $6107: $a8
	ld e, a                                          ; $6108: $5f
	ret nc                                           ; $6109: $d0

	ld a, [hl]                                       ; $610a: $7e
	adc $6f                                          ; $610b: $ce $6f
	cp $87                                           ; $610d: $fe $87
	ld e, a                                          ; $610f: $5f
	xor a                                            ; $6110: $af
	cp a                                             ; $6111: $bf
	ld c, a                                          ; $6112: $4f
	rra                                              ; $6113: $1f
	rst AddAOntoHL                                          ; $6114: $ef
	rra                                              ; $6115: $1f
	xor $3f                                          ; $6116: $ee $3f
	inc a                                            ; $6118: $3c
	ccf                                              ; $6119: $3f
	ld l, h                                          ; $611a: $6c
	ccf                                              ; $611b: $3f
	ld l, $7e                                        ; $611c: $2e $7e
	ld h, a                                          ; $611e: $67
	rst SubAFromHL                                          ; $611f: $d7
	db $eb                                           ; $6120: $eb
	ld [$e0f5], a                                    ; $6121: $ea $f5 $e0
	rst $38                                          ; $6124: $ff
	ldh [$7f], a                                     ; $6125: $e0 $7f
	ld [hl], h                                       ; $6127: $74
	db $fc                                           ; $6128: $fc
	ld a, a                                          ; $6129: $7f
	ld b, $8e                                        ; $612a: $06 $8e
	xor d                                            ; $612c: $aa
	push de                                          ; $612d: $d5
	ld d, l                                          ; $612e: $55
	xor d                                            ; $612f: $aa
	ld [$50d5], a                                    ; $6130: $ea $d5 $50
	rst $38                                          ; $6133: $ff
	ld [hl], b                                       ; $6134: $70
	rst $38                                          ; $6135: $ff
	ldh [$fc], a                                     ; $6136: $e0 $fc
	ldh [rAUD1SWEEP], a                              ; $6138: $e0 $10
	ldh a, [$1f]                                     ; $613a: $f0 $1f
	cp a                                             ; $613c: $bf
	ld a, e                                          ; $613d: $7b
	and h                                            ; $613e: $a4
	ld a, a                                          ; $613f: $7f
	db $fc                                           ; $6140: $fc
	ld a, a                                          ; $6141: $7f
	push hl                                          ; $6142: $e5
	ld a, a                                          ; $6143: $7f
	and b                                            ; $6144: $a0
	ld a, e                                          ; $6145: $7b
	sub l                                            ; $6146: $95
	sub l                                            ; $6147: $95
	ldh [$f5], a                                     ; $6148: $e0 $f5
	ld [$f5ea], a                                    ; $614a: $ea $ea $f5
	push af                                          ; $614d: $f5
	ld [$f5fa], a                                    ; $614e: $ea $fa $f5
	ldh a, [$7a]                                     ; $6151: $f0 $7a
	pop bc                                           ; $6153: $c1
	adc a                                            ; $6154: $8f
	ld l, [hl]                                       ; $6155: $6e
	ld l, h                                          ; $6156: $6c
	ret z                                            ; $6157: $c8

	ld a, h                                          ; $6158: $7c
	ld c, d                                          ; $6159: $4a
	ld l, h                                          ; $615a: $6c
	db $ed                                           ; $615b: $ed
	ld l, h                                          ; $615c: $6c
	ld l, [hl]                                       ; $615d: $6e
	ld l, h                                          ; $615e: $6c
	db $ed                                           ; $615f: $ed
	inc [hl]                                         ; $6160: $34
	adc $3c                                          ; $6161: $ce $3c
	rst GetHLinHL                                          ; $6163: $cf
	inc a                                            ; $6164: $3c
	db $fd                                           ; $6165: $fd
	sbc b                                            ; $6166: $98
	add b                                            ; $6167: $80
	nop                                              ; $6168: $00
	ld d, b                                          ; $6169: $50
	nop                                              ; $616a: $00
	xor d                                            ; $616b: $aa
	nop                                              ; $616c: $00
	ld d, l                                          ; $616d: $55
	ld a, e                                          ; $616e: $7b
	db $fc                                           ; $616f: $fc
	sbc [hl]                                         ; $6170: $9e
	push af                                          ; $6171: $f5
	or $6f                                           ; $6172: $f6 $6f
	db $ec                                           ; $6174: $ec
	ld a, h                                          ; $6175: $7c
	cp l                                             ; $6176: $bd
	adc h                                            ; $6177: $8c
	dec c                                            ; $6178: $0d
	inc bc                                           ; $6179: $03
	dec bc                                           ; $617a: $0b
	rlca                                             ; $617b: $07
	dec bc                                           ; $617c: $0b
	dec b                                            ; $617d: $05
	ld [bc], a                                       ; $617e: $02
	dec b                                            ; $617f: $05
	ld bc, $a806                                     ; $6180: $01 $06 $a8
	inc bc                                           ; $6183: $03
	ld d, l                                          ; $6184: $55
	inc bc                                           ; $6185: $03
	db $eb                                           ; $6186: $eb
	call nz, $c48b                                   ; $6187: $c4 $8b $c4
	inc b                                            ; $618a: $04
	sbc $8e                                          ; $618b: $de $8e
	add a                                            ; $618d: $87
	adc h                                            ; $618e: $8c
	adc [hl]                                         ; $618f: $8e
	call c, $7acc                                    ; $6190: $dc $cc $7a
	call z, $b83d                                    ; $6193: $cc $3d $b8
	ldh a, [rBCPS]                                   ; $6196: $f0 $68
	ld [hl], b                                       ; $6198: $70
	ld l, b                                          ; $6199: $68
	ld a, b                                          ; $619a: $78
	ld h, b                                          ; $619b: $60
	ld a, b                                          ; $619c: $78
	ld h, b                                          ; $619d: $60
	jr c, @+$6a                                      ; $619e: $38 $68

	ld a, b                                          ; $61a0: $78
	ld [hl], b                                       ; $61a1: $70
	ld a, [$7570]                                    ; $61a2: $fa $70 $75
	ld h, b                                          ; $61a5: $60
	push af                                          ; $61a6: $f5
	ld [hl], e                                       ; $61a7: $73
	ret nz                                           ; $61a8: $c0

	ld c, e                                          ; $61a9: $4b
	ldh a, [$80]                                     ; $61aa: $f0 $80
	cpl                                              ; $61ac: $2f
	ld h, a                                          ; $61ad: $67
	ld h, $6f                                        ; $61ae: $26 $6f
	inc b                                            ; $61b0: $04
	ld l, $2c                                        ; $61b1: $2e $2c
	ld c, $2f                                        ; $61b3: $0e $2f
	inc c                                            ; $61b5: $0c
	rrca                                             ; $61b6: $0f
	daa                                              ; $61b7: $27
	and a                                            ; $61b8: $a7
	inc sp                                           ; $61b9: $33
	ld [hl], e                                       ; $61ba: $73
	dec sp                                           ; $61bb: $3b
	ld a, [hl]                                       ; $61bc: $7e
	ld a, c                                          ; $61bd: $79
	dec hl                                           ; $61be: $2b
	ld a, h                                          ; $61bf: $7c
	dec hl                                           ; $61c0: $2b
	ld a, h                                          ; $61c1: $7c
	ld h, $78                                        ; $61c2: $26 $78
	ld d, d                                          ; $61c4: $52
	db $ec                                           ; $61c5: $ec
	add b                                            ; $61c6: $80
	ld hl, sp-$5b                                    ; $61c7: $f8 $a5
	ld [hl], b                                       ; $61c9: $70
	ld a, [de]                                       ; $61ca: $1a
	ld d, e                                          ; $61cb: $53
	ret nz                                           ; $61cc: $c0

	ld [hl], a                                       ; $61cd: $77
	ld l, [hl]                                       ; $61ce: $6e
	ld b, a                                          ; $61cf: $47
	ldh a, [hDisp1_LCDC]                                     ; $61d0: $f0 $8f
	add hl, de                                       ; $61d2: $19
	inc e                                            ; $61d3: $1c
	add hl, de                                       ; $61d4: $19
	inc e                                            ; $61d5: $1c
	dec e                                            ; $61d6: $1d
	inc e                                            ; $61d7: $1c
	rrca                                             ; $61d8: $0f
	inc e                                            ; $61d9: $1c
	dec de                                           ; $61da: $1b
	inc e                                            ; $61db: $1c
	ld de, $793e                                     ; $61dc: $11 $3e $79
	ld [hl], $aa                                     ; $61df: $36 $aa

Jump_040_61e1:
	ld [hl], h                                       ; $61e1: $74
	rlca                                             ; $61e2: $07
	ret nc                                           ; $61e3: $d0

	adc l                                            ; $61e4: $8d
	inc b                                            ; $61e5: $04
	inc c                                            ; $61e6: $0c
	inc c                                            ; $61e7: $0c
	inc b                                            ; $61e8: $04
	inc c                                            ; $61e9: $0c
	add hl, de                                       ; $61ea: $19
	add hl, de                                       ; $61eb: $19
	add hl, bc                                       ; $61ec: $09
	jr jr_040_6202                                   ; $61ed: $18 $13

	inc e                                            ; $61ef: $1c
	ld [de], a                                       ; $61f0: $12
	ld e, b                                          ; $61f1: $58
	ld e, $b7                                        ; $61f2: $1e $b7
	ld a, [de]                                       ; $61f4: $1a
	ret nz                                           ; $61f5: $c0

	ld b, b                                          ; $61f6: $40
	sbc $c0                                          ; $61f7: $de $c0
	ld a, a                                          ; $61f9: $7f
	rrca                                             ; $61fa: $0f
	ld a, a                                          ; $61fb: $7f
	cp $9d                                           ; $61fc: $fe $9d
	nop                                              ; $61fe: $00
	dec d                                            ; $61ff: $15
	ld e, e                                          ; $6200: $5b
	ld h, b                                          ; $6201: $60

jr_040_6202:
	ld a, h                                          ; $6202: $7c
	ld c, c                                          ; $6203: $49
	sbc [hl]                                         ; $6204: $9e
	ld a, [bc]                                       ; $6205: $0a
	ld [hl], e                                       ; $6206: $73
	jp nc, Jump_040_5793                             ; $6207: $d2 $93 $57

	nop                                              ; $620a: $00
	rra                                              ; $620b: $1f
	rra                                              ; $620c: $1f
	dec e                                            ; $620d: $1d
	ld e, $1c                                        ; $620e: $1e $1c
	ld e, $5d                                        ; $6210: $1e $5d
	ld c, $bd                                        ; $6212: $0e $bd
	ld c, $7b                                        ; $6214: $0e $7b
	db $fc                                           ; $6216: $fc
	add b                                            ; $6217: $80
	rrca                                             ; $6218: $0f
	ei                                               ; $6219: $fb
	rrca                                             ; $621a: $0f
	push de                                          ; $621b: $d5
	ldh [$5a], a                                     ; $621c: $e0 $5a
	ldh [rAUDTERM], a                                ; $621e: $e0 $25
	ld [hl], b                                       ; $6220: $70
	jp nz, $d538                                     ; $6221: $c2 $38 $d5

	ld h, b                                          ; $6224: $60
	xor a                                            ; $6225: $af
	ret nz                                           ; $6226: $c0

	sbc a                                            ; $6227: $9f
	ret nz                                           ; $6228: $c0

	rst $38                                          ; $6229: $ff
	nop                                              ; $622a: $00
	call $c93e                                       ; $622b: $cd $3e $c9
	ld a, $1c                                        ; $622e: $3e $1c
	ld a, $ec                                        ; $6230: $3e $ec
	rrca                                             ; $6232: $0f
	db $ed                                           ; $6233: $ed
	ld e, $0c                                        ; $6234: $1e $0c
	sbc a                                            ; $6236: $9f
	rst SubAFromDE                                          ; $6237: $df
	ccf                                              ; $6238: $3f
	sbc $ff                                          ; $6239: $de $ff
	ld a, d                                          ; $623b: $7a
	ld e, e                                          ; $623c: $5b
	rst $38                                          ; $623d: $ff
	ld l, l                                          ; $623e: $6d
	jp c, $407c                                      ; $623f: $da $7c $40

	sbc h                                            ; $6242: $9c
	ei                                               ; $6243: $fb
	db $fc                                           ; $6244: $fc
	ld a, [$f05b]                                    ; $6245: $fa $5b $f0
	ld [hl], a                                       ; $6248: $77
	cp $8c                                           ; $6249: $fe $8c
	xor l                                            ; $624b: $ad
	inc bc                                           ; $624c: $03
	db $fd                                           ; $624d: $fd
	inc bc                                           ; $624e: $03
	nop                                              ; $624f: $00
	inc bc                                           ; $6250: $03
	db $fc                                           ; $6251: $fc
	inc bc                                           ; $6252: $03
	db $fd                                           ; $6253: $fd
	ld bc, $11f5                                     ; $6254: $01 $f5 $11
	jp hl                                            ; $6257: $e9


	add hl, de                                       ; $6258: $19
	rst $38                                          ; $6259: $ff
	rrca                                             ; $625a: $0f
	cp d                                             ; $625b: $ba
	cp b                                             ; $625c: $b8
	ld a, a                                          ; $625d: $7f
	sbc $78                                          ; $625e: $de $78
	sbc [hl]                                         ; $6260: $9e
	rst JumpTable                                          ; $6261: $c7
	ld [hl], l                                       ; $6262: $75
	ret c                                            ; $6263: $d8

	ld a, l                                          ; $6264: $7d
	sub d                                            ; $6265: $92
	ld a, h                                          ; $6266: $7c
	ld h, $8e                                        ; $6267: $26 $8e
	ldh [$fa], a                                     ; $6269: $e0 $fa
	ld [hl], b                                       ; $626b: $70
	rst $38                                          ; $626c: $ff
	ld [hl], b                                       ; $626d: $70
	ld [hl], b                                       ; $626e: $70
	jr nc, @-$07                                     ; $626f: $30 $f7

	ld l, b                                          ; $6271: $68
	ld h, b                                          ; $6272: $60
	rst $38                                          ; $6273: $ff
	rst SubAFromBC                                          ; $6274: $e7
	ld hl, sp-$1d                                    ; $6275: $f8 $e3
	ldh [$a3], a                                     ; $6277: $e0 $a3
	ld [hl], h                                       ; $6279: $74
	halt                                             ; $627a: $76
	add hl, bc                                       ; $627b: $09
	ld d, a                                          ; $627c: $57
	ret nz                                           ; $627d: $c0

	ld b, a                                          ; $627e: $47
	ldh a, [$80]                                     ; $627f: $f0 $80
	adc l                                            ; $6281: $8d
	dec a                                            ; $6282: $3d
	db $fc                                           ; $6283: $fc
	ld l, $31                                        ; $6284: $2e $31
	jr z, jr_040_6301                                ; $6286: $28 $79

	jr c, @+$01                                      ; $6288: $38 $ff

	ld l, l                                          ; $628a: $6d
	rst AddAOntoHL                                          ; $628b: $ef
	rlca                                             ; $628c: $07
	rst SubAFromBC                                          ; $628d: $e7
	ld l, a                                          ; $628e: $6f
	rlca                                             ; $628f: $07
	rrca                                             ; $6290: $0f
	or l                                             ; $6291: $b5
	ld b, b                                          ; $6292: $40
	ld e, a                                          ; $6293: $5f
	ldh [$e0], a                                     ; $6294: $e0 $e0
	ld h, b                                          ; $6296: $60
	rst GetHLinHL                                          ; $6297: $cf
	ret nz                                           ; $6298: $c0

	inc l                                            ; $6299: $2c
	ccf                                              ; $629a: $3f
	add e                                            ; $629b: $83
	sub a                                            ; $629c: $97
	sub c                                            ; $629d: $91
	jp nc, $9db7                                     ; $629e: $d2 $b7 $9d

	cp b                                             ; $62a1: $b8
	ld d, l                                          ; $62a2: $55
	ld l, e                                          ; $62a3: $6b
	ret nc                                           ; $62a4: $d0

	sbc h                                            ; $62a5: $9c
	ld a, a                                          ; $62a6: $7f
	add b                                            ; $62a7: $80
	ccf                                              ; $62a8: $3f
	ld a, e                                          ; $62a9: $7b
	ld d, d                                          ; $62aa: $52
	ld a, a                                          ; $62ab: $7f
	cp $7f                                           ; $62ac: $fe $7f
	ldh a, [hDisp1_OBP1]                                     ; $62ae: $f0 $94
	ei                                               ; $62b0: $fb
	inc b                                            ; $62b1: $04
	ld b, $1f                                        ; $62b2: $06 $1f
	push af                                          ; $62b4: $f5
	ld c, $f8                                        ; $62b5: $0e $f8
	inc b                                            ; $62b7: $04
	ld a, [$ff06]                                    ; $62b8: $fa $06 $ff
	ld a, e                                          ; $62bb: $7b
	ld [hl], h                                       ; $62bc: $74
	adc a                                            ; $62bd: $8f
	call $ff78                                       ; $62be: $cd $78 $ff
	ld e, b                                          ; $62c1: $58
	jr nc, jr_040_6334                               ; $62c2: $30 $70

	rst $38                                          ; $62c4: $ff
	ld h, b                                          ; $62c5: $60
	rst $38                                          ; $62c6: $ff
	ld l, b                                          ; $62c7: $68
	ld a, c                                          ; $62c8: $79
	ld h, b                                          ; $62c9: $60
	ld a, l                                          ; $62ca: $7d
	ld hl, $bfbf                                     ; $62cb: $21 $bf $bf
	ld h, a                                          ; $62ce: $67
	ret nc                                           ; $62cf: $d0

	ld [hl], a                                       ; $62d0: $77
	cp $9b                                           ; $62d1: $fe $9b
	di                                               ; $62d3: $f3
	db $fc                                           ; $62d4: $fc
	nop                                              ; $62d5: $00
	rst $38                                          ; $62d6: $ff
	ld d, a                                          ; $62d7: $57
	ldh a, [$7d]                                     ; $62d8: $f0 $7d
	sub c                                            ; $62da: $91
	adc d                                            ; $62db: $8a
	ld b, a                                          ; $62dc: $47
	cp a                                             ; $62dd: $bf
	ld b, a                                          ; $62de: $47
	dec de                                           ; $62df: $1b
	rst SubAFromBC                                          ; $62e0: $e7
	inc de                                           ; $62e1: $13
	rla                                              ; $62e2: $17
	rlca                                             ; $62e3: $07
	rst $38                                          ; $62e4: $ff
	dec b                                            ; $62e5: $05
	db $fd                                           ; $62e6: $fd
	rlca                                             ; $62e7: $07
	rst AddAOntoHL                                          ; $62e8: $ef
	dec c                                            ; $62e9: $0d
	call z, $dfee                                    ; $62ea: $cc $ee $df
	rst AddAOntoHL                                          ; $62ed: $ef
	cp a                                             ; $62ee: $bf
	nop                                              ; $62ef: $00
	rst $38                                          ; $62f0: $ff
	sbc $80                                          ; $62f1: $de $80
	ld a, l                                          ; $62f3: $7d
	ld d, l                                          ; $62f4: $55
	ld a, a                                          ; $62f5: $7f
	adc d                                            ; $62f6: $8a
	sbc c                                            ; $62f7: $99
	rra                                              ; $62f8: $1f
	ld h, b                                          ; $62f9: $60
	cp a                                             ; $62fa: $bf
	ret nz                                           ; $62fb: $c0

	sbc a                                            ; $62fc: $9f
	ldh [$73], a                                     ; $62fd: $e0 $73
	nop                                              ; $62ff: $00
	sbc l                                            ; $6300: $9d

jr_040_6301:
	ld bc, $7bfe                                     ; $6301: $01 $fe $7b
	cp $6f                                           ; $6304: $fe $6f
	call z, $fe96                                    ; $6306: $cc $96 $fe
	rrca                                             ; $6309: $0f
	cp $0e                                           ; $630a: $fe $0e
	rlca                                             ; $630c: $07
	adc a                                            ; $630d: $8f
	and a                                            ; $630e: $a7
	rst GetHLinHL                                          ; $630f: $cf
	push hl                                          ; $6310: $e5
	ld a, c                                          ; $6311: $79
	dec de                                           ; $6312: $1b
	adc l                                            ; $6313: $8d
	cp h                                             ; $6314: $bc
	ld a, [hl]                                       ; $6315: $7e
	rst SubAFromDE                                          ; $6316: $df
	ccf                                              ; $6317: $3f
	ccf                                              ; $6318: $3f
	ret nz                                           ; $6319: $c0

	ld a, a                                          ; $631a: $7f
	add b                                            ; $631b: $80
	nop                                              ; $631c: $00
	jr nz, @+$21                                     ; $631d: $20 $1f

	and b                                            ; $631f: $a0
	adc a                                            ; $6320: $8f
	ret nc                                           ; $6321: $d0

	ld a, a                                          ; $6322: $7f
	ldh [$5f], a                                     ; $6323: $e0 $5f
	ld h, b                                          ; $6325: $60
	ld [hl], a                                       ; $6326: $77
	pop de                                           ; $6327: $d1
	ld l, [hl]                                       ; $6328: $6e
	adc $7f                                          ; $6329: $ce $7f
	ld [$af97], a                                    ; $632b: $ea $97 $af
	ld d, b                                          ; $632e: $50
	ld d, l                                          ; $632f: $55
	xor d                                            ; $6330: $aa
	xor d                                            ; $6331: $aa
	ld d, l                                          ; $6332: $55
	inc bc                                           ; $6333: $03

jr_040_6334:
	db $fc                                           ; $6334: $fc
	ld d, [hl]                                       ; $6335: $56
	cp [hl]                                          ; $6336: $be
	sbc l                                            ; $6337: $9d
	cp a                                             ; $6338: $bf
	ld b, b                                          ; $6339: $40
	ld l, a                                          ; $633a: $6f
	ld hl, sp+$5f                                    ; $633b: $f8 $5f
	ld c, $9b                                        ; $633d: $0e $9b
	sbc $3f                                          ; $633f: $de $3f
	adc a                                            ; $6341: $8f
	ld [hl], b                                       ; $6342: $70
	ld d, a                                          ; $6343: $57
	ldh a, [$7f]                                     ; $6344: $f0 $7f
	ret z                                            ; $6346: $c8

	ld c, a                                          ; $6347: $4f
	ldh [$9d], a                                     ; $6348: $e0 $9d
	db $e3                                           ; $634a: $e3
	inc e                                            ; $634b: $1c
	ld c, a                                          ; $634c: $4f
	ldh a, [rBGP]                                    ; $634d: $f0 $47
	ret nz                                           ; $634f: $c0

	ld a, a                                          ; $6350: $7f
	ld c, $9b                                        ; $6351: $0e $9b
	ld sp, hl                                        ; $6353: $f9
	rlca                                             ; $6354: $07
	db $fc                                           ; $6355: $fc
	inc bc                                           ; $6356: $03
	ld e, a                                          ; $6357: $5f
	ldh a, [$7d]                                     ; $6358: $f0 $7d
	add a                                            ; $635a: $87
	rst SubAFromDE                                          ; $635b: $df
	rst $38                                          ; $635c: $ff
	ld a, [hl]                                       ; $635d: $7e
	add d                                            ; $635e: $82
	ld e, a                                          ; $635f: $5f
	ldh a, [$9c]                                     ; $6360: $f0 $9c
	ld l, a                                          ; $6362: $6f
	ld [hl], b                                       ; $6363: $70
	rst SubAFromDE                                          ; $6364: $df
	ld a, e                                          ; $6365: $7b
	ld l, e                                          ; $6366: $6b
	rra                                              ; $6367: $1f
	ret nz                                           ; $6368: $c0

	ld l, a                                          ; $6369: $6f
	jr z, jr_040_63c7                                ; $636a: $28 $5b

	add b                                            ; $636c: $80
	sbc d                                            ; $636d: $9a
	db $fc                                           ; $636e: $fc
	ld a, a                                          ; $636f: $7f
	db $fc                                           ; $6370: $fc
	pop hl                                           ; $6371: $e1
	ld e, $17                                        ; $6372: $1e $17
	sub b                                            ; $6374: $90
	ld a, d                                          ; $6375: $7a
	inc d                                            ; $6376: $14
	ld e, e                                          ; $6377: $5b
	sub b                                            ; $6378: $90
	sbc c                                            ; $6379: $99
	rst GetHLinHL                                          ; $637a: $cf
	adc a                                            ; $637b: $8f
	rra                                              ; $637c: $1f
	rra                                              ; $637d: $1f
	and c                                            ; $637e: $a1
	cp $5f                                           ; $637f: $fe $5f
	ldh a, [$7e]                                     ; $6381: $f0 $7e
	sbc h                                            ; $6383: $9c
	ld a, [hl]                                       ; $6384: $7e
	ld l, c                                          ; $6385: $69
	ld b, a                                          ; $6386: $47
	sub b                                            ; $6387: $90
	ld a, a                                          ; $6388: $7f
	ld a, [bc]                                       ; $6389: $0a
	ld e, e                                          ; $638a: $5b
	ldh [$7e], a                                     ; $638b: $e0 $7e
	ret nz                                           ; $638d: $c0

	ld a, e                                          ; $638e: $7b
	adc [hl]                                         ; $638f: $8e
	ld e, a                                          ; $6390: $5f
	ldh a, [$9e]                                     ; $6391: $f0 $9e
	ld sp, hl                                        ; $6393: $f9
	ld [hl], d                                       ; $6394: $72
	adc $ff                                          ; $6395: $ce $ff
	ld a, a                                          ; $6397: $7f
	ld [$f593], a                                    ; $6398: $ea $93 $f5
	ld a, [bc]                                       ; $639b: $0a
	ld [$5515], a                                    ; $639c: $ea $15 $55
	xor d                                            ; $639f: $aa
	ld d, l                                          ; $63a0: $55
	xor d                                            ; $63a1: $aa
	ld a, [bc]                                       ; $63a2: $0a
	push af                                          ; $63a3: $f5
	ld bc, $5ffe                                     ; $63a4: $01 $fe $5f
	adc l                                            ; $63a7: $8d
	sbc e                                            ; $63a8: $9b
	ld e, a                                          ; $63a9: $5f
	and b                                            ; $63aa: $a0
	xor e                                            ; $63ab: $ab
	ld d, h                                          ; $63ac: $54
	halt                                             ; $63ad: $76
	cp b                                             ; $63ae: $b8
	rst $38                                          ; $63af: $ff
	ld a, a                                          ; $63b0: $7f
	add sp, $77                                      ; $63b1: $e8 $77
	ldh a, [rPCM34]                                  ; $63b3: $f0 $77
	db $eb                                           ; $63b5: $eb
	ld a, a                                          ; $63b6: $7f
	db $ec                                           ; $63b7: $ec
	ld [hl], a                                       ; $63b8: $77
	ldh a, [$7f]                                     ; $63b9: $f0 $7f
	db $fc                                           ; $63bb: $fc
	sbc [hl]                                         ; $63bc: $9e
	dec b                                            ; $63bd: $05
	ld a, c                                          ; $63be: $79
	ld [hl], e                                       ; $63bf: $73
	ld l, a                                          ; $63c0: $6f
	cp d                                             ; $63c1: $ba
	ld a, [hl]                                       ; $63c2: $7e
	sub h                                            ; $63c3: $94
	ld [hl], a                                       ; $63c4: $77
	ldh a, [$7f]                                     ; $63c5: $f0 $7f

jr_040_63c7:
	ret c                                            ; $63c7: $d8

	sbc l                                            ; $63c8: $9d
	ld a, [hl+]                                      ; $63c9: $2a
	push de                                          ; $63ca: $d5
	ld d, a                                          ; $63cb: $57
	ld c, [hl]                                       ; $63cc: $4e
	ld [hl], a                                       ; $63cd: $77
	ret z                                            ; $63ce: $c8

	rla                                              ; $63cf: $17
	ldh a, [$79]                                     ; $63d0: $f0 $79
	add d                                            ; $63d2: $82
	inc bc                                           ; $63d3: $03
	ldh a, [$03]                                     ; $63d4: $f0 $03
	ldh a, [$03]                                     ; $63d6: $f0 $03
	ldh a, [$03]                                     ; $63d8: $f0 $03
	ldh a, [$2b]                                     ; $63da: $f0 $2b
	ld h, b                                          ; $63dc: $60
	ld [hl], a                                       ; $63dd: $77
	jr nc, jr_040_644f                               ; $63de: $30 $6f

	ldh a, [$7e]                                     ; $63e0: $f0 $7e
	db $e4                                           ; $63e2: $e4
	ld a, a                                          ; $63e3: $7f
	or $77                                           ; $63e4: $f6 $77
	ldh a, [$9b]                                     ; $63e6: $f0 $9b
	ld d, h                                          ; $63e8: $54
	xor e                                            ; $63e9: $ab
	nop                                              ; $63ea: $00
	rst $38                                          ; $63eb: $ff
	halt                                             ; $63ec: $76
	ret c                                            ; $63ed: $d8

	ld [hl], a                                       ; $63ee: $77
	and $ff                                          ; $63ef: $e6 $ff
	sbc l                                            ; $63f1: $9d
	xor b                                            ; $63f2: $a8
	ld d, a                                          ; $63f3: $57
	ld [hl], a                                       ; $63f4: $77
	rst SubAFromHL                                          ; $63f5: $d7
	ld [hl], a                                       ; $63f6: $77
	ld [$f67f], a                                    ; $63f7: $ea $7f $f6
	sbc l                                            ; $63fa: $9d
	ld b, b                                          ; $63fb: $40
	cp a                                             ; $63fc: $bf
	ld b, d                                          ; $63fd: $42
	dec e                                            ; $63fe: $1d
	inc bc                                           ; $63ff: $03
	cp $2f                                           ; $6400: $fe $2f
	cp $7b                                           ; $6402: $fe $7b
	and [hl]                                         ; $6404: $a6
	inc bc                                           ; $6405: $03
	ldh a, [rVBK]                                    ; $6406: $f0 $4f
	ldh a, [$7a]                                     ; $6408: $f0 $7a
	ld [hl], h                                       ; $640a: $74
	inc bc                                           ; $640b: $03
	ldh a, [$03]                                     ; $640c: $f0 $03
	ldh a, [$03]                                     ; $640e: $f0 $03
	ldh a, [$03]                                     ; $6410: $f0 $03
	ld [hl], b                                       ; $6412: $70
	inc bc                                           ; $6413: $03
	cp $03                                           ; $6414: $fe $03
	cp $73                                           ; $6416: $fe $73
	cp $21                                           ; $6418: $fe $21
	nop                                              ; $641a: $00
	jp $9d55                                         ; $641b: $c3 $55 $9d


	ld b, e                                          ; $641e: $43
	inc sp                                           ; $641f: $33
	reti                                             ; $6420: $d9


	ld b, h                                          ; $6421: $44
	rst SubAFromDE                                          ; $6422: $df
	inc sp                                           ; $6423: $33
	sub b                                            ; $6424: $90
	inc [hl]                                         ; $6425: $34
	inc sp                                           ; $6426: $33
	inc sp                                           ; $6427: $33
	ld b, e                                          ; $6428: $43
	inc [hl]                                         ; $6429: $34
	ld b, h                                          ; $642a: $44
	inc sp                                           ; $642b: $33
	inc [hl]                                         ; $642c: $34
	ld b, a                                          ; $642d: $47
	ld [hl], h                                       ; $642e: $74
	ld b, a                                          ; $642f: $47
	ld [hl], a                                       ; $6430: $77
	ld b, h                                          ; $6431: $44
	ld [hl], a                                       ; $6432: $77
	scf                                              ; $6433: $37
	sbc $77                                          ; $6434: $de $77
	pop bc                                           ; $6436: $c1
	ld h, [hl]                                       ; $6437: $66
	rst GetHLinHL                                          ; $6438: $cf
	ld h, [hl]                                       ; $6439: $66
	ld [hl], b                                       ; $643a: $70
	inc b                                            ; $643b: $04
	push af                                          ; $643c: $f5
	sbc [hl]                                         ; $643d: $9e
	rst $38                                          ; $643e: $ff
	ld [hl], e                                       ; $643f: $73
	db $fd                                           ; $6440: $fd
	rst FarCall                                          ; $6441: $f7
	sbc [hl]                                         ; $6442: $9e
	ldh a, [$7b]                                     ; $6443: $f0 $7b
	db $fd                                           ; $6445: $fd
	sbc l                                            ; $6446: $9d
	jr @+$0a                                         ; $6447: $18 $08

	ld d, e                                          ; $6449: $53
	cp $9e                                           ; $644a: $fe $9e
	rrca                                             ; $644c: $0f
	di                                               ; $644d: $f3
	sbc l                                            ; $644e: $9d

jr_040_644f:
	ld bc, $f3fe                                     ; $644f: $01 $fe $f3
	ld d, e                                          ; $6452: $53
	pop bc                                           ; $6453: $c1
	inc sp                                           ; $6454: $33
	ldh a, [$9d]                                     ; $6455: $f0 $9d
	add b                                            ; $6457: $80
	ld b, b                                          ; $6458: $40
	ld d, a                                          ; $6459: $57
	cp $9b                                           ; $645a: $fe $9b
	nop                                              ; $645c: $00
	ret nz                                           ; $645d: $c0

	ld d, b                                          ; $645e: $50
	jr nz, jr_040_64b8                               ; $645f: $20 $57

	cp $9d                                           ; $6461: $fe $9d
	ld e, a                                          ; $6463: $5f
	jr nz, @+$11                                     ; $6464: $20 $0f

	ret nz                                           ; $6466: $c0

	sbc [hl]                                         ; $6467: $9e
	db $fc                                           ; $6468: $fc
	and $9e                                          ; $6469: $e6 $9e
	ld bc, $fd7b                                     ; $646b: $01 $7b $fd
	sbc e                                            ; $646e: $9b
	inc c                                            ; $646f: $0c
	inc bc                                           ; $6470: $03
	add b                                            ; $6471: $80
	nop                                              ; $6472: $00
	ld c, e                                          ; $6473: $4b
	cp $73                                           ; $6474: $fe $73
	sbc d                                            ; $6476: $9a
	ld e, e                                          ; $6477: $5b
	cp $e0                                           ; $6478: $fe $e0
	jp nc, $049e                                     ; $647a: $d2 $9e $04

	ld h, e                                          ; $647d: $63
	cp $6f                                           ; $647e: $fe $6f
	ld sp, hl                                        ; $6480: $f9
	sbc l                                            ; $6481: $9d
	ld [bc], a                                       ; $6482: $02
	ld bc, $fe4f                                     ; $6483: $01 $4f $fe
	rst FarCall                                          ; $6486: $f7
	ld c, d                                          ; $6487: $4a
	push hl                                          ; $6488: $e5
	ld a, e                                          ; $6489: $7b
	ld b, h                                          ; $648a: $44
	sbc [hl]                                         ; $648b: $9e
	rra                                              ; $648c: $1f
	ld d, e                                          ; $648d: $53
	ld [$747f], a                                    ; $648e: $ea $7f $74
	sbc [hl]                                         ; $6491: $9e
	ld hl, sp+$02                                    ; $6492: $f8 $02
	sbc $77                                          ; $6494: $de $77
	ldh a, [rPCM34]                                  ; $6496: $f0 $77
	jr c, jr_040_650d                                ; $6498: $38 $73

	and [hl]                                         ; $649a: $a6
	sbc d                                            ; $649b: $9a
	inc bc                                           ; $649c: $03
	nop                                              ; $649d: $00
	inc bc                                           ; $649e: $03
	inc b                                            ; $649f: $04
	inc bc                                           ; $64a0: $03
	ld [hl], a                                       ; $64a1: $77
	ldh [$9b], a                                     ; $64a2: $e0 $9b
	ld a, b                                          ; $64a4: $78
	rlca                                             ; $64a5: $07
	ccf                                              ; $64a6: $3f
	rst $38                                          ; $64a7: $ff
	ld [hl], a                                       ; $64a8: $77
	cp $9d                                           ; $64a9: $fe $9d
	add b                                            ; $64ab: $80
	ld a, a                                          ; $64ac: $7f
	ld a, e                                          ; $64ad: $7b
	db $fc                                           ; $64ae: $fc
	ld [hl], e                                       ; $64af: $73
	or l                                             ; $64b0: $b5
	sbc [hl]                                         ; $64b1: $9e
	ret nz                                           ; $64b2: $c0

	ld [hl], e                                       ; $64b3: $73
	cp $7f                                           ; $64b4: $fe $7f
	dec h                                            ; $64b6: $25
	ld a, a                                          ; $64b7: $7f

jr_040_64b8:
	db $fc                                           ; $64b8: $fc
	ld a, [hl]                                       ; $64b9: $7e
	adc $9e                                          ; $64ba: $ce $9e
	ld b, b                                          ; $64bc: $40
	ld [hl], a                                       ; $64bd: $77
	cp $99                                           ; $64be: $fe $99
	ccf                                              ; $64c0: $3f
	ld e, a                                          ; $64c1: $5f
	ccf                                              ; $64c2: $3f
	ld e, e                                          ; $64c3: $5b
	ccf                                              ; $64c4: $3f
	ld d, b                                          ; $64c5: $50
	ld a, e                                          ; $64c6: $7b
	cp $6b                                           ; $64c7: $fe $6b
	or b                                             ; $64c9: $b0
	sbc d                                            ; $64ca: $9a
	rst $38                                          ; $64cb: $ff
	and $ff                                          ; $64cc: $e6 $ff
	ldh [rIE], a                                     ; $64ce: $e0 $ff
	ld a, e                                          ; $64d0: $7b
	or e                                             ; $64d1: $b3
	rst SubAFromDE                                          ; $64d2: $df
	rst $38                                          ; $64d3: $ff
	ld h, a                                          ; $64d4: $67
	xor c                                            ; $64d5: $a9
	ld a, a                                          ; $64d6: $7f
	cp $9c                                           ; $64d7: $fe $9c
	add $00                                          ; $64d9: $c6 $00
	db $e4                                           ; $64db: $e4
	ld e, a                                          ; $64dc: $5f
	ldh a, [$9b]                                     ; $64dd: $f0 $9b
	add hl, sp                                       ; $64df: $39
	rst $38                                          ; $64e0: $ff
	nop                                              ; $64e1: $00
	add hl, bc                                       ; $64e2: $09
	ld a, e                                          ; $64e3: $7b
	cp $9d                                           ; $64e4: $fe $9d
	db $fd                                           ; $64e6: $fd
	ldh [rPCM34], a                                  ; $64e7: $e0 $77
	ld e, e                                          ; $64e9: $5b
	ld a, [hl]                                       ; $64ea: $7e
	xor b                                            ; $64eb: $a8
	call c, $9eff                                    ; $64ec: $dc $ff $9e
	ld a, a                                          ; $64ef: $7f
	sbc $ff                                          ; $64f0: $de $ff
	ld e, e                                          ; $64f2: $5b
	ld d, c                                          ; $64f3: $51
	db $fc                                           ; $64f4: $fc
	sbc [hl]                                         ; $64f5: $9e
	ccf                                              ; $64f6: $3f
	ld [hl], d                                       ; $64f7: $72
	jp z, $fa7f                                      ; $64f8: $ca $7f $fa

	ld a, a                                          ; $64fb: $7f
	db $e4                                           ; $64fc: $e4
	sbc h                                            ; $64fd: $9c
	ld h, b                                          ; $64fe: $60
	rst $38                                          ; $64ff: $ff
	ld b, b                                          ; $6500: $40
	ld a, e                                          ; $6501: $7b
	db $fc                                           ; $6502: $fc
	ld l, a                                          ; $6503: $6f
	rst SubAFromDE                                          ; $6504: $df
	ld [hl], e                                       ; $6505: $73
	and a                                            ; $6506: $a7
	ld e, e                                          ; $6507: $5b
	and b                                            ; $6508: $a0
	ld a, a                                          ; $6509: $7f
	ld a, [$8f9b]                                    ; $650a: $fa $9b $8f

jr_040_650d:
	rst $38                                          ; $650d: $ff
	nop                                              ; $650e: $00
	rst AddAOntoHL                                          ; $650f: $ef
	ld a, e                                          ; $6510: $7b
	cp $63                                           ; $6511: $fe $63
	ldh a, [$9b]                                     ; $6513: $f0 $9b
	inc h                                            ; $6515: $24
	rst $38                                          ; $6516: $ff
	nop                                              ; $6517: $00
	rst SubAFromBC                                          ; $6518: $e7
	ld a, e                                          ; $6519: $7b
	cp $9c                                           ; $651a: $fe $9c
	rst FarCall                                          ; $651c: $f7
	ldh a, [$0c]                                     ; $651d: $f0 $0c
	db $fd                                           ; $651f: $fd
	ld a, a                                          ; $6520: $7f
	ld b, $9c                                        ; $6521: $06 $9c
	sub h                                            ; $6523: $94
	ld hl, sp+$04                                    ; $6524: $f8 $04
	ld [hl], e                                       ; $6526: $73
	cp $9d                                           ; $6527: $fe $9d
	inc bc                                           ; $6529: $03
	ld bc, $fe5f                                     ; $652a: $01 $5f $fe
	ld e, d                                          ; $652d: $5a
	ret nz                                           ; $652e: $c0

	sbc e                                            ; $652f: $9b
	rst $38                                          ; $6530: $ff
	rst AddAOntoHL                                          ; $6531: $ef
	rst $38                                          ; $6532: $ff
	add b                                            ; $6533: $80
	ld a, c                                          ; $6534: $79
	db $e3                                           ; $6535: $e3
	ld a, a                                          ; $6536: $7f
	cpl                                              ; $6537: $2f
	ld l, d                                          ; $6538: $6a
	or h                                             ; $6539: $b4
	sbc h                                            ; $653a: $9c
	ldh a, [$e0]                                     ; $653b: $f0 $e0
	ldh a, [$75]                                     ; $653d: $f0 $75
	add c                                            ; $653f: $81
	ld sp, hl                                        ; $6540: $f9
	sbc c                                            ; $6541: $99
	rst SubAFromBC                                          ; $6542: $e7
	rra                                              ; $6543: $1f
	rrca                                             ; $6544: $0f
	rra                                              ; $6545: $1f
	ld [$751f], sp                                   ; $6546: $08 $1f $75
	ld a, a                                          ; $6549: $7f
	ei                                               ; $654a: $fb
	sbc [hl]                                         ; $654b: $9e
	jr jr_040_65c5                                   ; $654c: $18 $77

	ld d, [hl]                                       ; $654e: $56
	ld e, d                                          ; $654f: $5a
	push bc                                          ; $6550: $c5
	ld [hl], a                                       ; $6551: $77
	ld [hl], a                                       ; $6552: $77
	ld l, l                                          ; $6553: $6d
	ld [hl], h                                       ; $6554: $74
	ld a, [hl]                                       ; $6555: $7e
	adc $95                                          ; $6556: $ce $95
	ld [$0807], sp                                   ; $6558: $08 $07 $08
	rlca                                             ; $655b: $07
	rst SubAFromBC                                          ; $655c: $e7
	rra                                              ; $655d: $1f
	rst $38                                          ; $655e: $ff
	rst $38                                          ; $655f: $ff
	adc c                                            ; $6560: $89
	ld a, a                                          ; $6561: $7f
	db $dd                                           ; $6562: $dd
	add hl, bc                                       ; $6563: $09
	ld a, [hl]                                       ; $6564: $7e
	rst AddAOntoHL                                          ; $6565: $ef
	sbc [hl]                                         ; $6566: $9e
	cp a                                             ; $6567: $bf
	ld a, d                                          ; $6568: $7a
	jp z, $bf9e                                      ; $6569: $ca $9e $bf

	ld a, d                                          ; $656c: $7a
	jp nz, $c09d                                     ; $656d: $c2 $9d $c0

	cp a                                             ; $6570: $bf
	db $fd                                           ; $6571: $fd
	ld l, [hl]                                       ; $6572: $6e
	ret z                                            ; $6573: $c8

	halt                                             ; $6574: $76
	add $6f                                          ; $6575: $c6 $6f
	ld e, $7e                                        ; $6577: $1e $7e
	ret z                                            ; $6579: $c8

	ld h, a                                          ; $657a: $67
	cp $7e                                           ; $657b: $fe $7e
	cp h                                             ; $657d: $bc
	halt                                             ; $657e: $76
	or [hl]                                          ; $657f: $b6
	sbc d                                            ; $6580: $9a
	db $e4                                           ; $6581: $e4
	rst $38                                          ; $6582: $ff
	db $e4                                           ; $6583: $e4
	rst $38                                          ; $6584: $ff
	rst SubAFromBC                                          ; $6585: $e7
	ld [hl], e                                       ; $6586: $73
	cp $6b                                           ; $6587: $fe $6b
	and b                                            ; $6589: $a0
	sbc l                                            ; $658a: $9d
	or $00                                           ; $658b: $f6 $00
	ld a, e                                          ; $658d: $7b
	ld h, [hl]                                       ; $658e: $66
	sbc [hl]                                         ; $658f: $9e
	di                                               ; $6590: $f3
	ld a, e                                          ; $6591: $7b
	cp $6b                                           ; $6592: $fe $6b
	ldh a, [$7e]                                     ; $6594: $f0 $7e
	cpl                                              ; $6596: $2f
	ld a, e                                          ; $6597: $7b
	or $9c                                           ; $6598: $f6 $9c
	ld a, b                                          ; $659a: $78
	rst $38                                          ; $659b: $ff
	ld hl, sp+$73                                    ; $659c: $f8 $73
	ldh a, [$7f]                                     ; $659e: $f0 $7f
	ld b, c                                          ; $65a0: $41
	rst SubAFromHL                                          ; $65a1: $d7
	rst $38                                          ; $65a2: $ff
	sbc c                                            ; $65a3: $99
	cp $ff                                           ; $65a4: $fe $ff
	ld [bc], a                                       ; $65a6: $02
	inc b                                            ; $65a7: $04
	db $10                                           ; $65a8: $10
	or [hl]                                          ; $65a9: $b6
	db $f4                                           ; $65aa: $f4
	sbc e                                            ; $65ab: $9b
	ld [bc], a                                       ; $65ac: $02
	ld d, $22                                        ; $65ad: $16 $22
	ld a, a                                          ; $65af: $7f
	ld a, d                                          ; $65b0: $7a
	xor d                                            ; $65b1: $aa
	ld a, a                                          ; $65b2: $7f
	cp $9e                                           ; $65b3: $fe $9e
	ld l, [hl]                                       ; $65b5: $6e
	ld a, e                                          ; $65b6: $7b
	db $fc                                           ; $65b7: $fc
	sbc l                                            ; $65b8: $9d
	ld h, c                                          ; $65b9: $61
	rst $38                                          ; $65ba: $ff
	ld a, d                                          ; $65bb: $7a
	or h                                             ; $65bc: $b4
	ld a, a                                          ; $65bd: $7f
	adc b                                            ; $65be: $88
	ld a, e                                          ; $65bf: $7b
	or d                                             ; $65c0: $b2
	sbc h                                            ; $65c1: $9c
	ret z                                            ; $65c2: $c8

	rst $38                                          ; $65c3: $ff
	rst SubAFromDE                                          ; $65c4: $df

jr_040_65c5:
	ld a, e                                          ; $65c5: $7b
	cp $7e                                           ; $65c6: $fe $7e
	adc $73                                          ; $65c8: $ce $73
	xor a                                            ; $65ca: $af
	ld [hl], d                                       ; $65cb: $72
	cp d                                             ; $65cc: $ba

jr_040_65cd:
	ld l, a                                          ; $65cd: $6f
	adc [hl]                                         ; $65ce: $8e
	ld h, a                                          ; $65cf: $67
	ldh a, [$9e]                                     ; $65d0: $f0 $9e
	inc b                                            ; $65d2: $04
	ld e, e                                          ; $65d3: $5b
	ldh a, [rPCM12]                                  ; $65d4: $f0 $76
	call z, $f49c                                    ; $65d6: $cc $9c $f4
	ld hl, sp-$04                                    ; $65d9: $f8 $fc
	ld a, e                                          ; $65db: $7b
	cp $7f                                           ; $65dc: $fe $7f
	ld a, [$c075]                                    ; $65de: $fa $75 $c0
	ld e, l                                          ; $65e1: $5d
	add [hl]                                         ; $65e2: $86
	ld l, [hl]                                       ; $65e3: $6e
	cp h                                             ; $65e4: $bc
	ld e, [hl]                                       ; $65e5: $5e
	ld hl, $ef56                                     ; $65e6: $21 $56 $ef
	sub [hl]                                         ; $65e9: $96
	rst $38                                          ; $65ea: $ff
	ld c, $ff                                        ; $65eb: $0e $ff
	rra                                              ; $65ed: $1f
	pop af                                           ; $65ee: $f1
	dec de                                           ; $65ef: $1b
	pop af                                           ; $65f0: $f1
	rra                                              ; $65f1: $1f
	ld de, $cc72                                     ; $65f2: $11 $72 $cc
	ld a, a                                          ; $65f5: $7f
	cp $6b                                           ; $65f6: $fe $6b
	ldh [$7f], a                                     ; $65f8: $e0 $7f
	add d                                            ; $65fa: $82
	sbc [hl]                                         ; $65fb: $9e
	pop bc                                           ; $65fc: $c1
	ld a, d                                          ; $65fd: $7a
	call nz, $3893                                   ; $65fe: $c4 $93 $38
	jr jr_040_663b                                   ; $6601: $18 $38

	rst FarCall                                          ; $6603: $f7
	jr jr_040_65cd                                   ; $6604: $18 $c7

	inc [hl]                                         ; $6606: $34
	inc bc                                           ; $6607: $03
	add d                                            ; $6608: $82
	push bc                                          ; $6609: $c5
	add $c0                                          ; $660a: $c6 $c0
	ld [hl], a                                       ; $660c: $77
	xor l                                            ; $660d: $ad
	ld d, e                                          ; $660e: $53
	ret nz                                           ; $660f: $c0

	db $db                                           ; $6610: $db
	add hl, bc                                       ; $6611: $09
	sbc [hl]                                         ; $6612: $9e
	rst $38                                          ; $6613: $ff
	ld l, e                                          ; $6614: $6b
	cp $9d                                           ; $6615: $fe $9d
	dec bc                                           ; $6617: $0b
	dec c                                            ; $6618: $0d
	ld c, a                                          ; $6619: $4f
	ldh [$67], a                                     ; $661a: $e0 $67
	sbc [hl]                                         ; $661c: $9e
	ld e, a                                          ; $661d: $5f
	ldh a, [$71]                                     ; $661e: $f0 $71
	add d                                            ; $6620: $82
	sbc [hl]                                         ; $6621: $9e
	jr nz, jr_040_6693                               ; $6622: $20 $6f

	db $f4                                           ; $6624: $f4
	ld a, a                                          ; $6625: $7f
	or e                                             ; $6626: $b3
	sbc [hl]                                         ; $6627: $9e
	ldh a, [rBCPD]                                   ; $6628: $f0 $69
	ld de, $d463                                     ; $662a: $11 $63 $d4
	ld e, c                                          ; $662d: $59
	add c                                            ; $662e: $81
	ld a, a                                          ; $662f: $7f
	cp $7f                                           ; $6630: $fe $7f
	db $e3                                           ; $6632: $e3
	sub [hl]                                         ; $6633: $96
	rlca                                             ; $6634: $07
	ld hl, sp+$01                                    ; $6635: $f8 $01
	inc bc                                           ; $6637: $03
	nop                                              ; $6638: $00
	rlca                                             ; $6639: $07
	nop                                              ; $663a: $00

jr_040_663b:
	nop                                              ; $663b: $00
	cp $63                                           ; $663c: $fe $63
	cp $98                                           ; $663e: $fe $98
	ld l, b                                          ; $6640: $68
	or [hl]                                          ; $6641: $b6
	ldh [$0e], a                                     ; $6642: $e0 $0e
	nop                                              ; $6644: $00
	nop                                              ; $6645: $00
	db $ed                                           ; $6646: $ed
	ld h, e                                          ; $6647: $63
	cp $97                                           ; $6648: $fe $97
	nop                                              ; $664a: $00
	ld [hl], $02                                     ; $664b: $36 $02
	dec [hl]                                         ; $664d: $35
	nop                                              ; $664e: $00
	jr @-$23                                         ; $664f: $18 $db

	nop                                              ; $6651: $00
	ld h, a                                          ; $6652: $67
	cp $db                                           ; $6653: $fe $db
	add b                                            ; $6655: $80
	rra                                              ; $6656: $1f
	add b                                            ; $6657: $80
	inc bc                                           ; $6658: $03
	ldh a, [rWX]                                     ; $6659: $f0 $4b
	ldh a, [$7e]                                     ; $665b: $f0 $7e
	adc $7f                                          ; $665d: $ce $7f
	ld a, [hl]                                       ; $665f: $7e
	ld a, a                                          ; $6660: $7f
	db $fc                                           ; $6661: $fc
	sbc [hl]                                         ; $6662: $9e
	db $fc                                           ; $6663: $fc
	ld a, b                                          ; $6664: $78
	xor b                                            ; $6665: $a8
	ld l, e                                          ; $6666: $6b
	ldh [rBCPD], a                                   ; $6667: $e0 $69
	ld c, a                                          ; $6669: $4f
	ld h, a                                          ; $666a: $67
	ldh a, [$7d]                                     ; $666b: $f0 $7d
	rst JumpTable                                          ; $666d: $c7
	ld c, a                                          ; $666e: $4f
	ldh a, [$9b]                                     ; $666f: $f0 $9b
	add c                                            ; $6671: $81
	rst $38                                          ; $6672: $ff
	ld bc, $dec1                                     ; $6673: $01 $c1 $de
	ld bc, $a179                                     ; $6676: $01 $79 $a1
	ld [hl], e                                       ; $6679: $73
	cp $78                                           ; $667a: $fe $78
	sub $df                                          ; $667c: $d6 $df
	db $fc                                           ; $667e: $fc
	rst SubAFromDE                                          ; $667f: $df
	call c, $8c9a                                    ; $6680: $dc $9a $8c
	adc a                                            ; $6683: $8f
	rst SubAFromDE                                          ; $6684: $df
	call c, Call_040_7bff                            ; $6685: $dc $ff $7b
	push af                                          ; $6688: $f5
	sbc l                                            ; $6689: $9d
	or a                                             ; $668a: $b7
	or h                                             ; $668b: $b4
	ld b, a                                          ; $668c: $47
	ret nz                                           ; $668d: $c0

	sub l                                            ; $668e: $95
	dec bc                                           ; $668f: $0b
	db $fd                                           ; $6690: $fd
	dec bc                                           ; $6691: $0b
	dec a                                            ; $6692: $3d

jr_040_6693:
	dec bc                                           ; $6693: $0b
	dec a                                            ; $6694: $3d
	rrca                                             ; $6695: $0f
	db $fd                                           ; $6696: $fd
	rst $38                                          ; $6697: $ff
	dec l                                            ; $6698: $2d
	ld [hl], e                                       ; $6699: $73
	cp $9e                                           ; $669a: $fe $9e
	dec hl                                           ; $669c: $2b
	ld e, a                                          ; $669d: $5f
	add [hl]                                         ; $669e: $86
	ld l, [hl]                                       ; $669f: $6e
	ld a, [hl]                                       ; $66a0: $7e
	ld c, e                                          ; $66a1: $4b
	ldh a, [$7f]                                     ; $66a2: $f0 $7f
	cp $80                                           ; $66a4: $fe $80
	rrca                                             ; $66a6: $0f
	ldh [$1f], a                                     ; $66a7: $e0 $1f
	cp $1f                                           ; $66a9: $fe $1f
	ldh [$1f], a                                     ; $66ab: $e0 $1f
	db $fc                                           ; $66ad: $fc
	ccf                                              ; $66ae: $3f
	ret nz                                           ; $66af: $c0

	ccf                                              ; $66b0: $3f
	ld hl, sp+$7f                                    ; $66b1: $f8 $7f
	add b                                            ; $66b3: $80
	ld a, a                                          ; $66b4: $7f
	sbc [hl]                                         ; $66b5: $9e
	db $fd                                           ; $66b6: $fd
	ld hl, $1ede                                     ; $66b7: $21 $de $1e
	db $fd                                           ; $66ba: $fd
	ld [hl], c                                       ; $66bb: $71
	adc [hl]                                         ; $66bc: $8e
	ld e, $fd                                        ; $66bd: $1e $fd
	pop af                                           ; $66bf: $f1
	ld c, $1e                                        ; $66c0: $0e $1e
	db $fd                                           ; $66c2: $fd
	nop                                              ; $66c3: $00
	rst $38                                          ; $66c4: $ff
	adc a                                            ; $66c5: $8f
	ld a, a                                          ; $66c6: $7f
	ld hl, sp+$0f                                    ; $66c7: $f8 $0f
	db $fc                                           ; $66c9: $fc
	ccf                                              ; $66ca: $3f
	db $fc                                           ; $66cb: $fc
	rlca                                             ; $66cc: $07
	db $fc                                           ; $66cd: $fc
	ccf                                              ; $66ce: $3f
	cp $07                                           ; $66cf: $fe $07
	cp $3f                                           ; $66d1: $fe $3f
	rst $38                                          ; $66d3: $ff
	inc bc                                           ; $66d4: $03
	rst $38                                          ; $66d5: $ff
	ld e, [hl]                                       ; $66d6: $5e
	add $6f                                          ; $66d7: $c6 $6f
	cp $5e                                           ; $66d9: $fe $5e
	add $6f                                          ; $66db: $c6 $6f
	cp $5e                                           ; $66dd: $fe $5e
	add $6f                                          ; $66df: $c6 $6f
	cp $43                                           ; $66e1: $fe $43
	sub b                                            ; $66e3: $90
	ld [hl], a                                       ; $66e4: $77
	cp $87                                           ; $66e5: $fe $87
	ld [bc], a                                       ; $66e7: $02
	db $fd                                           ; $66e8: $fd
	rlca                                             ; $66e9: $07
	db $fd                                           ; $66ea: $fd
	rlca                                             ; $66eb: $07
	ei                                               ; $66ec: $fb
	rrca                                             ; $66ed: $0f
	ld hl, sp+$0f                                    ; $66ee: $f8 $0f
	rst $38                                          ; $66f0: $ff
	rra                                              ; $66f1: $1f
	rst $38                                          ; $66f2: $ff
	db $10                                           ; $66f3: $10
	rst AddAOntoHL                                          ; $66f4: $ef
	jr nc, @-$0f                                     ; $66f5: $30 $ef

	add hl, sp                                       ; $66f7: $39
	sbc $7d                                          ; $66f8: $de $7d
	add $7f                                          ; $66fa: $c6 $7f
	sbc $ff                                          ; $66fc: $de $ff
	add h                                            ; $66fe: $84
	db $dd                                           ; $66ff: $dd
	rst $38                                          ; $6700: $ff
	ld l, e                                          ; $6701: $6b
	ld e, b                                          ; $6702: $58
	sbc [hl]                                         ; $6703: $9e
	ld b, b                                          ; $6704: $40
	ld a, c                                          ; $6705: $79
	add c                                            ; $6706: $81
	ld a, l                                          ; $6707: $7d
	ld c, h                                          ; $6708: $4c
	ld a, e                                          ; $6709: $7b
	inc e                                            ; $670a: $1c
	ld h, [hl]                                       ; $670b: $66
	ret c                                            ; $670c: $d8

	ld a, l                                          ; $670d: $7d
	ld hl, $e25f                                     ; $670e: $21 $5f $e2
	ld [hl], d                                       ; $6711: $72
	ret z                                            ; $6712: $c8

	ld c, a                                          ; $6713: $4f
	ldh a, [rPCM34]                                  ; $6714: $f0 $77
	cp $9b                                           ; $6716: $fe $9b
	push af                                          ; $6718: $f5
	ld a, [bc]                                       ; $6719: $0a
	xor d                                            ; $671a: $aa
	ld d, l                                          ; $671b: $55
	ld d, a                                          ; $671c: $57
	db $f4                                           ; $671d: $f4
	sbc e                                            ; $671e: $9b
	ld d, h                                          ; $671f: $54
	xor e                                            ; $6720: $ab
	and b                                            ; $6721: $a0
	ld e, a                                          ; $6722: $5f
	ld h, a                                          ; $6723: $67
	ldh a, [$9b]                                     ; $6724: $f0 $9b
	ld d, a                                          ; $6726: $57
	xor b                                            ; $6727: $a8
	xor d                                            ; $6728: $aa
	ld d, l                                          ; $6729: $55
	ld a, b                                          ; $672a: $78
	ld e, [hl]                                       ; $672b: $5e
	ld e, e                                          ; $672c: $5b
	adc $7f                                          ; $672d: $ce $7f
	ldh a, [$9d]                                     ; $672f: $f0 $9d
	ld d, l                                          ; $6731: $55
	xor d                                            ; $6732: $aa
	ld e, a                                          ; $6733: $5f
	ldh a, [$99]                                     ; $6734: $f0 $99
	push de                                          ; $6736: $d5
	ld a, [hl+]                                      ; $6737: $2a
	xor d                                            ; $6738: $aa
	ld d, l                                          ; $6739: $55
	ld d, b                                          ; $673a: $50
	xor a                                            ; $673b: $af
	ld a, e                                          ; $673c: $7b
	ldh a, [hDisp1_OBP1]                                     ; $673d: $f0 $94
	jr z, @+$01                                      ; $673f: $28 $ff

	ld [$1cff], sp                                   ; $6741: $08 $ff $1c
	ld a, [$5505]                                    ; $6744: $fa $05 $55
	xor d                                            ; $6747: $aa
	xor d                                            ; $6748: $aa
	ld d, l                                          ; $6749: $55
	ld [hl], b                                       ; $674a: $70
	add hl, hl                                       ; $674b: $29
	ld l, e                                          ; $674c: $6b
	or h                                             ; $674d: $b4
	ld a, a                                          ; $674e: $7f
	ldh a, [$7e]                                     ; $674f: $f0 $7e
	db $e4                                           ; $6751: $e4
	ld h, a                                          ; $6752: $67
	ldh a, [$6f]                                     ; $6753: $f0 $6f
	call nz, $0a9d                                   ; $6755: $c4 $9d $0a
	push af                                          ; $6758: $f5
	ld [hl], e                                       ; $6759: $73
	ldh a, [$73]                                     ; $675a: $f0 $73
	xor $9d                                          ; $675c: $ee $9d
	cp a                                             ; $675e: $bf
	ld b, b                                          ; $675f: $40
	ld h, e                                          ; $6760: $63
	ret nc                                           ; $6761: $d0

	ld [hl], e                                       ; $6762: $73
	ldh a, [$9d]                                     ; $6763: $f0 $9d
	cp $01                                           ; $6765: $fe $01
	ld e, e                                          ; $6767: $5b
	ldh a, [$7e]                                     ; $6768: $f0 $7e
	ld [hl], e                                       ; $676a: $73
	sbc [hl]                                         ; $676b: $9e
	ld [bc], a                                       ; $676c: $02
	ld [hl], a                                       ; $676d: $77
	ret nc                                           ; $676e: $d0

	ld a, a                                          ; $676f: $7f
	ld [hl], h                                       ; $6770: $74
	ld [hl], a                                       ; $6771: $77
	ldh a, [$99]                                     ; $6772: $f0 $99
	cp $c0                                           ; $6774: $fe $c0
	db $fc                                           ; $6776: $fc
	add d                                            ; $6777: $82
	rst SubAFromHL                                          ; $6778: $d7
	dec hl                                           ; $6779: $2b
	ld l, a                                          ; $677a: $6f
	add h                                            ; $677b: $84
	ld [hl], a                                       ; $677c: $77
	cp $7e                                           ; $677d: $fe $7e
	adc $9b                                          ; $677f: $ce $9b
	xor b                                            ; $6781: $a8
	ld b, l                                          ; $6782: $45
	rst $38                                          ; $6783: $ff
	cp e                                             ; $6784: $bb
	ld e, a                                          ; $6785: $5f
	ldh a, [$7e]                                     ; $6786: $f0 $7e
	adc $9b                                          ; $6788: $ce $9b
	adc d                                            ; $678a: $8a
	ld d, c                                          ; $678b: $51
	ld a, a                                          ; $678c: $7f
	rst AddAOntoHL                                          ; $678d: $ef
	ld e, a                                          ; $678e: $5f
	ldh a, [rPCM34]                                  ; $678f: $f0 $77
	and h                                            ; $6791: $a4
	ld [hl], a                                       ; $6792: $77
	ld b, h                                          ; $6793: $44
	ld e, a                                          ; $6794: $5f
	ldh a, [rWX]                                     ; $6795: $f0 $4b
	sub b                                            ; $6797: $90
	ld [hl], e                                       ; $6798: $73
	ldh a, [$5b]                                     ; $6799: $f0 $5b
	sub b                                            ; $679b: $90
	ld a, [hl]                                       ; $679c: $7e
	xor [hl]                                         ; $679d: $ae

Jump_040_679e:
	sbc [hl]                                         ; $679e: $9e
	rrca                                             ; $679f: $0f
	ld [hl], a                                       ; $67a0: $77
	inc [hl]                                         ; $67a1: $34
	ld c, a                                          ; $67a2: $4f
	ld [hl], b                                       ; $67a3: $70
	ld c, a                                          ; $67a4: $4f
	ldh a, [$57]                                     ; $67a5: $f0 $57
	ldh [$98], a                                     ; $67a7: $e0 $98
	xor b                                            ; $67a9: $a8
	nop                                              ; $67aa: $00
	ld d, h                                          ; $67ab: $54
	nop                                              ; $67ac: $00
	xor d                                            ; $67ad: $aa
	nop                                              ; $67ae: $00
	ld d, l                                          ; $67af: $55
	ld a, e                                          ; $67b0: $7b
	db $fc                                           ; $67b1: $fc
	ld a, a                                          ; $67b2: $7f
	ld sp, $e17a                                     ; $67b3: $31 $7a $e1
	db $fc                                           ; $67b6: $fc
	sbc h                                            ; $67b7: $9c
	add b                                            ; $67b8: $80
	nop                                              ; $67b9: $00
	ld d, b                                          ; $67ba: $50
	ld h, e                                          ; $67bb: $63
	db $ec                                           ; $67bc: $ec
	rst FarCall                                          ; $67bd: $f7
	ld l, a                                          ; $67be: $6f

Jump_040_67bf:
	db $ec                                           ; $67bf: $ec
	push af                                          ; $67c0: $f5
	inc bc                                           ; $67c1: $03
	ldh a, [$03]                                     ; $67c2: $f0 $03
	ldh a, [$03]                                     ; $67c4: $f0 $03
	ldh a, [$03]                                     ; $67c6: $f0 $03
	ldh a, [$03]                                     ; $67c8: $f0 $03
	ldh a, [$03]                                     ; $67ca: $f0 $03
	ldh a, [$f9]                                     ; $67cc: $f0 $f9
	sbc [hl]                                         ; $67ce: $9e
	ld bc, $f053                                     ; $67cf: $01 $53 $f0
	sbc [hl]                                         ; $67d2: $9e
	ld [bc], a                                       ; $67d3: $02
	ld [hl], e                                       ; $67d4: $73
	nop                                              ; $67d5: $00
	ld l, a                                          ; $67d6: $6f
	ldh a, [$7f]                                     ; $67d7: $f0 $7f
	db $f4                                           ; $67d9: $f4
	sbc [hl]                                         ; $67da: $9e
	dec d                                            ; $67db: $15
	ld [hl], e                                       ; $67dc: $73
	db $f4                                           ; $67dd: $f4
	ld a, c                                          ; $67de: $79
	pop hl                                           ; $67df: $e1
	sbc l                                            ; $67e0: $9d
	nop                                              ; $67e1: $00
	ld a, [hl+]                                      ; $67e2: $2a
	ld l, e                                          ; $67e3: $6b
	add sp, $7f                                      ; $67e4: $e8 $7f
	db $f4                                           ; $67e6: $f4
	ld [hl], c                                       ; $67e7: $71
	pop af                                           ; $67e8: $f1
	ld l, l                                          ; $67e9: $6d
	ld [hl], h                                       ; $67ea: $74
	ld c, c                                          ; $67eb: $49
	jr nz, @+$59                                     ; $67ec: $20 $57

	ldh a, [$9e]                                     ; $67ee: $f0 $9e
	ld a, [$f04b]                                    ; $67f0: $fa $4b $f0
	halt                                             ; $67f3: $76
	add hl, sp                                       ; $67f4: $39
	inc bc                                           ; $67f5: $03
	ldh a, [$03]                                     ; $67f6: $f0 $03
	ldh a, [$03]                                     ; $67f8: $f0 $03
	ldh a, [$03]                                     ; $67fa: $f0 $03
	ldh a, [$03]                                     ; $67fc: $f0 $03
	ldh a, [$03]                                     ; $67fe: $f0 $03
	ldh a, [$2f]                                     ; $6800: $f0 $2f
	ldh a, [rTMA]                                    ; $6802: $f0 $06
	ldh a, [$37]                                     ; $6804: $f0 $37
	ldh a, [rPCM34]                                  ; $6806: $f0 $77
	xor $9b                                          ; $6808: $ee $9b
	ld a, a                                          ; $680a: $7f
	add b                                            ; $680b: $80
	xor a                                            ; $680c: $af
	ld d, b                                          ; $680d: $50
	ld [hl], l                                       ; $680e: $75
	ld l, h                                          ; $680f: $6c
	ld c, a                                          ; $6810: $4f
	sbc $7d                                          ; $6811: $de $7d
	jr @+$05                                         ; $6813: $18 $03

	cp [hl]                                          ; $6815: $be
	inc bc                                           ; $6816: $03
	ldh a, [$03]                                     ; $6817: $f0 $03
	ldh a, [$03]                                     ; $6819: $f0 $03
	ldh a, [$03]                                     ; $681b: $f0 $03
	ldh a, [$03]                                     ; $681d: $f0 $03
	ldh a, [$03]                                     ; $681f: $f0 $03
	ldh a, [$03]                                     ; $6821: $f0 $03
	ldh a, [rBGP]                                    ; $6823: $f0 $47
	ldh a, [hDisp1_BGP]                                     ; $6825: $f0 $92
	cp $01                                           ; $6827: $fe $01
	push af                                          ; $6829: $f5
	ld a, [bc]                                       ; $682a: $0a
	ld [$5515], a                                    ; $682b: $ea $15 $55
	xor d                                            ; $682e: $aa
	ld d, l                                          ; $682f: $55
	xor d                                            ; $6830: $aa
	ld a, [bc]                                       ; $6831: $0a
	push af                                          ; $6832: $f5
	ld bc, $476c                                     ; $6833: $01 $6c $47
	ld [hl], e                                       ; $6836: $73
	push hl                                          ; $6837: $e5
	sbc e                                            ; $6838: $9b
	ld e, a                                          ; $6839: $5f
	and b                                            ; $683a: $a0
	xor e                                            ; $683b: $ab
	ld d, h                                          ; $683c: $54
	ld [hl], b                                       ; $683d: $70
	inc h                                            ; $683e: $24
	sbc h                                            ; $683f: $9c
	nop                                              ; $6840: $00
	ld a, [bc]                                       ; $6841: $0a
	push af                                          ; $6842: $f5
	ld [hl], a                                       ; $6843: $77
	ldh a, [rPCM34]                                  ; $6844: $f0 $77
	db $eb                                           ; $6846: $eb
	ld a, a                                          ; $6847: $7f
	db $ec                                           ; $6848: $ec
	ld [hl], a                                       ; $6849: $77
	ldh a, [$7f]                                     ; $684a: $f0 $7f
	db $fc                                           ; $684c: $fc
	sbc [hl]                                         ; $684d: $9e
	dec b                                            ; $684e: $05
	ld a, c                                          ; $684f: $79
	ld [hl], e                                       ; $6850: $73
	ld l, a                                          ; $6851: $6f
	ret nz                                           ; $6852: $c0

	ld a, [hl]                                       ; $6853: $7e
	sub h                                            ; $6854: $94
	ld [hl], a                                       ; $6855: $77
	ldh a, [$7f]                                     ; $6856: $f0 $7f
	ret c                                            ; $6858: $d8

	sbc l                                            ; $6859: $9d
	ld a, [hl+]                                      ; $685a: $2a
	push de                                          ; $685b: $d5
	ld d, a                                          ; $685c: $57
	sbc [hl]                                         ; $685d: $9e
	ld e, [hl]                                       ; $685e: $5e
	add b                                            ; $685f: $80
	cpl                                              ; $6860: $2f
	ldh a, [$7a]                                     ; $6861: $f0 $7a
	ld [de], a                                       ; $6863: $12
	inc bc                                           ; $6864: $03
	ldh a, [$03]                                     ; $6865: $f0 $03
	ldh a, [$03]                                     ; $6867: $f0 $03
	ldh a, [$03]                                     ; $6869: $f0 $03
	ldh a, [$2b]                                     ; $686b: $f0 $2b
	ld h, b                                          ; $686d: $60
	ld [hl], a                                       ; $686e: $77
	jr nc, jr_040_68e0                               ; $686f: $30 $6f

	ldh a, [$7e]                                     ; $6871: $f0 $7e
	db $e4                                           ; $6873: $e4

Call_040_6874:
	ld a, a                                          ; $6874: $7f
	or $77                                           ; $6875: $f6 $77
	ldh a, [$9b]                                     ; $6877: $f0 $9b
	ld d, h                                          ; $6879: $54
	xor e                                            ; $687a: $ab
	nop                                              ; $687b: $00
	rst $38                                          ; $687c: $ff
	halt                                             ; $687d: $76
	ret c                                            ; $687e: $d8

	ld [hl], a                                       ; $687f: $77
	and $ff                                          ; $6880: $e6 $ff
	sbc l                                            ; $6882: $9d
	xor b                                            ; $6883: $a8
	ld d, a                                          ; $6884: $57
	ld [hl], a                                       ; $6885: $77
	rst SubAFromHL                                          ; $6886: $d7
	ld [hl], a                                       ; $6887: $77
	ld [$f67f], a                                    ; $6888: $ea $7f $f6
	sbc l                                            ; $688b: $9d
	ld b, b                                          ; $688c: $40
	cp a                                             ; $688d: $bf
	add hl, sp                                       ; $688e: $39
	ld a, e                                          ; $688f: $7b
	inc bc                                           ; $6890: $03
	cp $37                                           ; $6891: $fe $37
	cp $7b                                           ; $6893: $fe $7b
	and [hl]                                         ; $6895: $a6
	inc bc                                           ; $6896: $03
	ldh a, [rVBK]                                    ; $6897: $f0 $4f
	ldh a, [$7a]                                     ; $6899: $f0 $7a
	ld [hl], h                                       ; $689b: $74
	inc bc                                           ; $689c: $03
	ldh a, [$03]                                     ; $689d: $f0 $03
	ldh a, [$03]                                     ; $689f: $f0 $03
	ldh a, [$03]                                     ; $68a1: $f0 $03
	ld [hl], b                                       ; $68a3: $70
	inc bc                                           ; $68a4: $03
	cp $03                                           ; $68a5: $fe $03
	cp $73                                           ; $68a7: $fe $73
	cp $19                                           ; $68a9: $fe $19
	nop                                              ; $68ab: $00
	jp $9c55                                         ; $68ac: $c3 $55 $9c


	ld b, e                                          ; $68af: $43
	inc sp                                           ; $68b0: $33
	ld b, e                                          ; $68b1: $43
	jp c, $dd44                                      ; $68b2: $da $44 $dd

	inc sp                                           ; $68b5: $33
	sbc c                                            ; $68b6: $99
	ld b, [hl]                                       ; $68b7: $46
	ld b, e                                          ; $68b8: $43
	inc [hl]                                         ; $68b9: $34
	ld b, h                                          ; $68ba: $44
	ld b, e                                          ; $68bb: $43
	inc sp                                           ; $68bc: $33
	rst SubAFromHL                                          ; $68bd: $d7
	ld [hl], a                                       ; $68be: $77
	pop bc                                           ; $68bf: $c1
	ld h, [hl]                                       ; $68c0: $66
	rst GetHLinHL                                          ; $68c1: $cf
	ld h, [hl]                                       ; $68c2: $66
	sbc a                                            ; $68c3: $9f
	add a                                            ; $68c4: $87
	call c, $f6ff                                    ; $68c5: $dc $ff $f6
	inc bc                                           ; $68c8: $03
	ldh a, [$dd]                                     ; $68c9: $f0 $dd
	rst $38                                          ; $68cb: $ff
	sbc $7f                                          ; $68cc: $de $7f
	ld a, [$409e]                                    ; $68ce: $fa $9e $40
	jp c, $9eff                                      ; $68d1: $da $ff $9e

	push de                                          ; $68d4: $d5
	ld d, e                                          ; $68d5: $53
	ldh [$9c], a                                     ; $68d6: $e0 $9c
	rst $38                                          ; $68d8: $ff
	xor d                                            ; $68d9: $aa
	ld d, l                                          ; $68da: $55
	ld d, e                                          ; $68db: $53
	ldh a, [$9e]                                     ; $68dc: $f0 $9e
	push de                                          ; $68de: $d5
	ld c, e                                          ; $68df: $4b

jr_040_68e0:
	ldh a, [$9e]                                     ; $68e0: $f0 $9e
	ld d, l                                          ; $68e2: $55
	ld c, a                                          ; $68e3: $4f
	ldh a, [$9e]                                     ; $68e4: $f0 $9e
	cp $4b                                           ; $68e6: $fe $4b
	ldh a, [$7f]                                     ; $68e8: $f0 $7f
	ldh a, [c]                                       ; $68ea: $f2
	inc bc                                           ; $68eb: $03
	ldh a, [$03]                                     ; $68ec: $f0 $03
	ldh a, [$03]                                     ; $68ee: $f0 $03
	ldh a, [$5b]                                     ; $68f0: $f0 $5b
	ldh a, [$9e]                                     ; $68f2: $f0 $9e
	xor e                                            ; $68f4: $ab
	ld b, e                                          ; $68f5: $43
	ld [hl], b                                       ; $68f6: $70
	sbc l                                            ; $68f7: $9d
	xor e                                            ; $68f8: $ab
	ld d, h                                          ; $68f9: $54
	ld a, [$039e]                                    ; $68fa: $fa $9e $03
	ld l, a                                          ; $68fd: $6f
	ret nc                                           ; $68fe: $d0

	sbc l                                            ; $68ff: $9d
	ld a, [hl+]                                      ; $6900: $2a
	dec a                                            ; $6901: $3d
	ei                                               ; $6902: $fb
	rst SubAFromDE                                          ; $6903: $df
	ret nz                                           ; $6904: $c0

	db $dd                                           ; $6905: $dd
	rst $38                                          ; $6906: $ff
	sbc e                                            ; $6907: $9b
	cp a                                             ; $6908: $bf
	ld d, a                                          ; $6909: $57
	xor e                                            ; $690a: $ab
	ld d, a                                          ; $690b: $57
	db $fd                                           ; $690c: $fd
	sbc [hl]                                         ; $690d: $9e
	ld bc, $03de                                     ; $690e: $01 $de $03
	db $ed                                           ; $6911: $ed
	db $dd                                           ; $6912: $dd
	ld bc, $f85f                                     ; $6913: $01 $5f $f8
	sbc c                                            ; $6916: $99
	ld b, b                                          ; $6917: $40
	ldh a, [$f0]                                     ; $6918: $f0 $f0
	add sp, -$10                                     ; $691a: $e8 $f0
	ldh a, [$fe]                                     ; $691c: $f0 $fe
	add l                                            ; $691e: $85
	ld [hl], b                                       ; $691f: $70
	ldh a, [$f8]                                     ; $6920: $f0 $f8
	ld hl, sp-$10                                    ; $6922: $f8 $f0
	ld a, e                                          ; $6924: $7b
	ld [hl], l                                       ; $6925: $75
	ld h, c                                          ; $6926: $61
	ld l, h                                          ; $6927: $6c
	ld h, b                                          ; $6928: $60
	ld [hl], b                                       ; $6929: $70
	ld h, b                                          ; $692a: $60
	ld h, h                                          ; $692b: $64
	ld b, h                                          ; $692c: $44
	ld c, d                                          ; $692d: $4a
	ld a, [hl]                                       ; $692e: $7e

jr_040_692f:
	ld [hl], e                                       ; $692f: $73
	ld a, a                                          ; $6930: $7f
	ld a, a                                          ; $6931: $7f
	ld e, a                                          ; $6932: $5f
	ld a, a                                          ; $6933: $7f
	adc d                                            ; $6934: $8a
	push af                                          ; $6935: $f5
	ldh [c], a                                       ; $6936: $e2
	dec b                                            ; $6937: $05
	ld a, [bc]                                       ; $6938: $0a
	cp $99                                           ; $6939: $fe $99
	ld h, b                                          ; $693b: $60
	nop                                              ; $693c: $00
	jr jr_040_692f                                   ; $693d: $18 $f0

	db $e4                                           ; $693f: $e4

Call_040_6940:
	db $fd                                           ; $6940: $fd
	ld a, e                                          ; $6941: $7b
	sub h                                            ; $6942: $94
	sbc d                                            ; $6943: $9a
	ld d, b                                          ; $6944: $50
	xor b                                            ; $6945: $a8
	nop                                              ; $6946: $00
	add b                                            ; $6947: $80
	db $10                                           ; $6948: $10
	ld a, e                                          ; $6949: $7b
	call nz, $07df                                   ; $694a: $c4 $df $07
	rst SubAFromDE                                          ; $694d: $df
	ld a, a                                          ; $694e: $7f
	sbc $ff                                          ; $694f: $de $ff
	sbc [hl]                                         ; $6951: $9e
	ld b, d                                          ; $6952: $42
	ld [hl], a                                       ; $6953: $77
	cp h                                             ; $6954: $bc
	ld a, e                                          ; $6955: $7b
	cp d                                             ; $6956: $ba
	sbc [hl]                                         ; $6957: $9e
	cp h                                             ; $6958: $bc
	sbc $fe                                          ; $6959: $de $fe
	ld h, a                                          ; $695b: $67
	ld b, h                                          ; $695c: $44
	ld a, e                                          ; $695d: $7b
	ld [hl], b                                       ; $695e: $70
	sbc [hl]                                         ; $695f: $9e
	dec d                                            ; $6960: $15
	db $fc                                           ; $6961: $fc
	sbc h                                            ; $6962: $9c
	add b                                            ; $6963: $80
	ret nz                                           ; $6964: $c0

	ldh [$6f], a                                     ; $6965: $e0 $6f
	ldh a, [$9d]                                     ; $6967: $f0 $9d
	ld a, [$f9fd]                                    ; $6969: $fa $fd $f9
	ld l, a                                          ; $696c: $6f
	ldh a, [$9d]                                     ; $696d: $f0 $9d
	xor d                                            ; $696f: $aa
	ld [hl], l                                       ; $6970: $75
	ld c, e                                          ; $6971: $4b
	ldh a, [$63]                                     ; $6972: $f0 $63
	jr nz, jr_040_69f5                               ; $6974: $20 $7f

	or $99                                           ; $6976: $f6 $99
	and b                                            ; $6978: $a0
	ld d, b                                          ; $6979: $50
	and b                                            ; $697a: $a0
	ld b, b                                          ; $697b: $40
	and b                                            ; $697c: $a0
	ld b, b                                          ; $697d: $40
	ld e, a                                          ; $697e: $5f
	ldh a, [$9e]                                     ; $697f: $f0 $9e
	ld [bc], a                                       ; $6981: $02
	ld [hl], e                                       ; $6982: $73
	and b                                            ; $6983: $a0
	ld h, e                                          ; $6984: $63
	ldh a, [$9b]                                     ; $6985: $f0 $9b
	ld d, h                                          ; $6987: $54
	xor d                                            ; $6988: $aa
	ld d, h                                          ; $6989: $54
	and b                                            ; $698a: $a0
	ld e, e                                          ; $698b: $5b
	ret nc                                           ; $698c: $d0

	sbc [hl]                                         ; $698d: $9e
	add b                                            ; $698e: $80
	ei                                               ; $698f: $fb
	sbc [hl]                                         ; $6990: $9e
	ld d, b                                          ; $6991: $50
	ld sp, hl                                        ; $6992: $f9
	sbc [hl]                                         ; $6993: $9e
	ld [bc], a                                       ; $6994: $02
	db $fd                                           ; $6995: $fd
	sbc h                                            ; $6996: $9c
	ld a, [bc]                                       ; $6997: $0a
	sub b                                            ; $6998: $90
	ld a, b                                          ; $6999: $78
	ld h, e                                          ; $699a: $63
	ret nc                                           ; $699b: $d0

	ld a, e                                          ; $699c: $7b
	jp nz, $0f9c                                     ; $699d: $c2 $9c $0f

	xor h                                            ; $69a0: $ac
	ld [$4e7b], sp                                   ; $69a1: $08 $7b $4e
	halt                                             ; $69a4: $76
	jp nc, $079c                                     ; $69a5: $d2 $9c $07

	rrca                                             ; $69a8: $0f
	ld hl, sp+$77                                    ; $69a9: $f8 $77
	adc $9a                                          ; $69ab: $ce $9a
	ld d, b                                          ; $69ad: $50
	jr c, jr_040_6a20                                ; $69ae: $38 $70

	rlca                                             ; $69b0: $07
	rst $38                                          ; $69b1: $ff
	ld [hl], a                                       ; $69b2: $77
	ld b, d                                          ; $69b3: $42
	rst SubAFromDE                                          ; $69b4: $df
	rst $38                                          ; $69b5: $ff
	sbc d                                            ; $69b6: $9a
	ld d, $03                                        ; $69b7: $16 $03
	ld [bc], a                                       ; $69b9: $02
	inc bc                                           ; $69ba: $03
	nop                                              ; $69bb: $00
	ld a, d                                          ; $69bc: $7a
	jp c, $e89e                                      ; $69bd: $da $9e $e8

	sbc $fc                                          ; $69c0: $de $fc
	sub e                                            ; $69c2: $93
	rst $38                                          ; $69c3: $ff
	db $fc                                           ; $69c4: $fc
	rst $38                                          ; $69c5: $ff
	rst $38                                          ; $69c6: $ff
	xor a                                            ; $69c7: $af
	ld e, [hl]                                       ; $69c8: $5e
	or a                                             ; $69c9: $b7
	ld a, e                                          ; $69ca: $7b
	cp e                                             ; $69cb: $bb
	rst $38                                          ; $69cc: $ff
	cp a                                             ; $69cd: $bf
	ld a, a                                          ; $69ce: $7f
	sbc $0f                                          ; $69cf: $de $0f
	rst SubAFromDE                                          ; $69d1: $df
	ccf                                              ; $69d2: $3f
	rst SubAFromDE                                          ; $69d3: $df
	rra                                              ; $69d4: $1f
	sbc [hl]                                         ; $69d5: $9e
	adc a                                            ; $69d6: $8f
	ld a, [hl-]                                      ; $69d7: $3a
	jp $fb6f                                         ; $69d8: $c3 $6f $fb


	ld l, d                                          ; $69db: $6a
	cp l                                             ; $69dc: $bd
	add a                                            ; $69dd: $87
	ld hl, sp+$10                                    ; $69de: $f8 $10
	add b                                            ; $69e0: $80
	ldh a, [rLCDC]                                   ; $69e1: $f0 $40
	ld h, b                                          ; $69e3: $60
	nop                                              ; $69e4: $00
	add b                                            ; $69e5: $80
	ld hl, sp-$78                                    ; $69e6: $f8 $88
	ldh a, [$f0]                                     ; $69e8: $f0 $f0
	ret nz                                           ; $69ea: $c0

	ldh [$a0], a                                     ; $69eb: $e0 $a0
	add b                                            ; $69ed: $80
	ld a, h                                          ; $69ee: $7c
	ld l, h                                          ; $69ef: $6c
	ld h, a                                          ; $69f0: $67
	ld h, e                                          ; $69f1: $63
	ld h, e                                          ; $69f2: $63
	ld a, a                                          ; $69f3: $7f
	ld a, a                                          ; $69f4: $7f

jr_040_69f5:
	ld [hl], a                                       ; $69f5: $77
	halt                                             ; $69f6: $76
	call nz, Call_040_7fde                           ; $69f7: $c4 $de $7f
	sbc b                                            ; $69fa: $98
	ld l, a                                          ; $69fb: $6f
	add e                                            ; $69fc: $83
	ld b, e                                          ; $69fd: $43
	ccf                                              ; $69fe: $3f
	ld a, $3e                                        ; $69ff: $3e $3e
	sbc a                                            ; $6a01: $9f
	rst SubAFromHL                                          ; $6a02: $d7
	rst $38                                          ; $6a03: $ff
	sbc b                                            ; $6a04: $98
	ret nz                                           ; $6a05: $c0

	jp z, $dfce                                      ; $6a06: $ca $ce $df

	ld hl, $f8e3                                     ; $6a09: $21 $e3 $f8
	ld a, e                                          ; $6a0c: $7b
	sub [hl]                                         ; $6a0d: $96
	sbc l                                            ; $6a0e: $9d
	rst $38                                          ; $6a0f: $ff

jr_040_6a10:
	ccf                                              ; $6a10: $3f
	ld l, c                                          ; $6a11: $69
	ld b, l                                          ; $6a12: $45
	sbc d                                            ; $6a13: $9a
	jr @-$76                                         ; $6a14: $18 $88

	sbc b                                            ; $6a16: $98
	dec e                                            ; $6a17: $1d
	ldh a, [$d9]                                     ; $6a18: $f0 $d9
	rst $38                                          ; $6a1a: $ff
	sbc l                                            ; $6a1b: $9d
	nop                                              ; $6a1c: $00
	inc b                                            ; $6a1d: $04
	ld a, e                                          ; $6a1e: $7b
	ld e, c                                          ; $6a1f: $59

jr_040_6a20:
	adc a                                            ; $6a20: $8f
	ld [bc], a                                       ; $6a21: $02
	pop bc                                           ; $6a22: $c1
	ld bc, $f8f0                                     ; $6a23: $01 $f0 $f8
	db $fc                                           ; $6a26: $fc
	db $fc                                           ; $6a27: $fc
	db $fd                                           ; $6a28: $fd
	db $fc                                           ; $6a29: $fc
	ld sp, hl                                        ; $6a2a: $f9
	ld hl, sp+$0b                                    ; $6a2b: $f8 $0b
	dec b                                            ; $6a2d: $05
	ld a, [bc]                                       ; $6a2e: $0a
	dec d                                            ; $6a2f: $15
	xor d                                            ; $6a30: $aa
	ld a, d                                          ; $6a31: $7a
	add hl, bc                                       ; $6a32: $09
	sub a                                            ; $6a33: $97
	ld [$0e0c], sp                                   ; $6a34: $08 $0c $0e
	rrca                                             ; $6a37: $0f
	add b                                            ; $6a38: $80
	nop                                              ; $6a39: $00
	rst $38                                          ; $6a3a: $ff
	or [hl]                                          ; $6a3b: $b6
	ld a, d                                          ; $6a3c: $7a
	call nc, $f79e                                   ; $6a3d: $d4 $9e $f7
	ld [hl], a                                       ; $6a40: $77
	ldh a, [rBCPD]                                   ; $6a41: $f0 $69
	ldh a, [c]                                       ; $6a43: $f2
	sbc [hl]                                         ; $6a44: $9e
	db $db                                           ; $6a45: $db
	ld [hl], d                                       ; $6a46: $72
	jp nz, $f05f                                     ; $6a47: $c2 $5f $f0

	sub l                                            ; $6a4a: $95
	ld l, l                                          ; $6a4b: $6d
	add b                                            ; $6a4c: $80
	ld b, l                                          ; $6a4d: $45
	add l                                            ; $6a4e: $85
	ld b, l                                          ; $6a4f: $45
	add l                                            ; $6a50: $85
	push bc                                          ; $6a51: $c5
	dec b                                            ; $6a52: $05
	push bc                                          ; $6a53: $c5
	dec c                                            ; $6a54: $0d
	call c, $df08                                    ; $6a55: $dc $08 $df
	adc b                                            ; $6a58: $88
	sbc [hl]                                         ; $6a59: $9e
	nop                                              ; $6a5a: $00
	reti                                             ; $6a5b: $d9


	ld d, h                                          ; $6a5c: $54
	jp c, Jump_040_7604                              ; $6a5d: $da $04 $76

	add h                                            ; $6a60: $84
	ld a, a                                          ; $6a61: $7f
	cp b                                             ; $6a62: $b8
	sbc [hl]                                         ; $6a63: $9e

jr_040_6a64:
	add b                                            ; $6a64: $80
	ld l, e                                          ; $6a65: $6b
	ret nc                                           ; $6a66: $d0

	sbc e                                            ; $6a67: $9b
	ld a, a                                          ; $6a68: $7f
	ld e, e                                          ; $6a69: $5b
	add b                                            ; $6a6a: $80
	ld d, h                                          ; $6a6b: $54
	ld [hl], d                                       ; $6a6c: $72
	or h                                             ; $6a6d: $b4
	ld h, e                                          ; $6a6e: $63
	ret nz                                           ; $6a6f: $c0

	sub h                                            ; $6a70: $94
	db $10                                           ; $6a71: $10
	jr jr_040_6a64                                   ; $6a72: $18 $f0

	ret c                                            ; $6a74: $d8

	dec d                                            ; $6a75: $15
	sbc a                                            ; $6a76: $9f
	db $e3                                           ; $6a77: $e3
	ld a, [$6060]                                    ; $6a78: $fa $60 $60
	nop                                              ; $6a7b: $00
	sbc $60                                          ; $6a7c: $de $60
	sbc b                                            ; $6a7e: $98
	or $e0                                           ; $6a7f: $f6 $e0
	jr @+$0b                                         ; $6a81: $18 $09

	rra                                              ; $6a83: $1f
	add hl, bc                                       ; $6a84: $09
	ld l, a                                          ; $6a85: $6f
	ld a, c                                          ; $6a86: $79
	xor l                                            ; $6a87: $ad
	sbc [hl]                                         ; $6a88: $9e
	rrca                                             ; $6a89: $0f
	call c, $961f                                    ; $6a8a: $dc $1f $96
	adc a                                            ; $6a8d: $8f
	jr jr_040_6a10                                   ; $6a8e: $18 $80

	add b                                            ; $6a90: $80
	ldh [$e0], a                                     ; $6a91: $e0 $e0
	add b                                            ; $6a93: $80
	jp $d9e7                                         ; $6a94: $c3 $e7 $d9


	rst $38                                          ; $6a97: $ff
	sbc b                                            ; $6a98: $98
	ccf                                              ; $6a99: $3f
	ld [bc], a                                       ; $6a9a: $02
	rrca                                             ; $6a9b: $0f
	stop                                             ; $6a9c: $10 $00
	ld b, $0e                                        ; $6a9e: $06 $0e
	ld e, a                                          ; $6aa0: $5f
	rra                                              ; $6aa1: $1f
	ld a, a                                          ; $6aa2: $7f
	add hl, bc                                       ; $6aa3: $09
	sub [hl]                                         ; $6aa4: $96
	scf                                              ; $6aa5: $37
	inc bc                                           ; $6aa6: $03
	nop                                              ; $6aa7: $00
	ld [$f3d3], sp                                   ; $6aa8: $08 $d3 $f3
	cp a                                             ; $6aab: $bf
	sbc a                                            ; $6aac: $9f
	rst GetHLinHL                                          ; $6aad: $cf
	ld h, h                                          ; $6aae: $64
	ld h, l                                          ; $6aaf: $65
	rst SubAFromDE                                          ; $6ab0: $df
	ld [bc], a                                       ; $6ab1: $02
	sbc h                                            ; $6ab2: $9c
	rra                                              ; $6ab3: $1f
	ccf                                              ; $6ab4: $3f
	dec e                                            ; $6ab5: $1d
	db $fd                                           ; $6ab6: $fd
	sbc c                                            ; $6ab7: $99
	ld b, $3f                                        ; $6ab8: $06 $3f
	add hl, de                                       ; $6aba: $19
	add hl, bc                                       ; $6abb: $09
	ld bc, $7a03                                     ; $6abc: $01 $03 $7a
	ret z                                            ; $6abf: $c8

	sbc h                                            ; $6ac0: $9c
	ldh [$c0], a                                     ; $6ac1: $e0 $c0
	add b                                            ; $6ac3: $80
	ld [hl], c                                       ; $6ac4: $71
	add l                                            ; $6ac5: $85
	ld a, a                                          ; $6ac6: $7f
	ld sp, hl                                        ; $6ac7: $f9
	add l                                            ; $6ac8: $85
	add c                                            ; $6ac9: $81
	ldh a, [$9c]                                     ; $6aca: $f0 $9c
	ld [$f01c], sp                                   ; $6acc: $08 $1c $f0

jr_040_6acf:
	ldh a, [$30]                                     ; $6acf: $f0 $30
	jr nz, @-$06                                     ; $6ad1: $20 $f8

	ret z                                            ; $6ad3: $c8

	adc h                                            ; $6ad4: $8c
	jr jr_040_6acf                                   ; $6ad5: $18 $f8

	ldh [rAUD4LEN], a                                ; $6ad7: $e0 $20
	or b                                             ; $6ad9: $b0
	ld a, a                                          ; $6ada: $7f
	ld c, a                                          ; $6adb: $4f
	ld l, a                                          ; $6adc: $6f
	ld c, a                                          ; $6add: $4f
	ld l, h                                          ; $6ade: $6c
	ld a, h                                          ; $6adf: $7c

Call_040_6ae0:
	ld a, a                                          ; $6ae0: $7f
	ld b, e                                          ; $6ae1: $43
	ld [hl], a                                       ; $6ae2: $77
	db $dd                                           ; $6ae3: $dd
	ld c, a                                          ; $6ae4: $4f
	rst SubAFromDE                                          ; $6ae5: $df
	ld a, a                                          ; $6ae6: $7f
	ld a, b                                          ; $6ae7: $78
	ld b, b                                          ; $6ae8: $40
	sbc h                                            ; $6ae9: $9c
	ld hl, sp-$60                                    ; $6aea: $f8 $a0
	ld [hl], $d7                                     ; $6aec: $36 $d7
	rst $38                                          ; $6aee: $ff
	ld a, [hl]                                       ; $6aef: $7e
	ld c, e                                          ; $6af0: $4b
	sbc e                                            ; $6af1: $9b
	ei                                               ; $6af2: $fb
	rst $38                                          ; $6af3: $ff
	rst $38                                          ; $6af4: $ff
	ld a, h                                          ; $6af5: $7c
	ld a, b                                          ; $6af6: $78
	db $fd                                           ; $6af7: $fd
	reti                                             ; $6af8: $d9


	rst $38                                          ; $6af9: $ff
	sbc [hl]                                         ; $6afa: $9e
	db $fc                                           ; $6afb: $fc
	ld a, c                                          ; $6afc: $79
	adc c                                            ; $6afd: $89
	sbc e                                            ; $6afe: $9b
	add hl, de                                       ; $6aff: $19
	db $10                                           ; $6b00: $10
	jr nc, jr_040_6b71                               ; $6b01: $30 $6e

	reti                                             ; $6b03: $d9


	rst $38                                          ; $6b04: $ff
	sub [hl]                                         ; $6b05: $96
	ld [$0302], sp                                   ; $6b06: $08 $02 $03
	rst GetHLinHL                                          ; $6b09: $cf
	rst GetHLinHL                                          ; $6b0a: $cf
	rst AddAOntoHL                                          ; $6b0b: $ef
	db $d3                                           ; $6b0c: $d3
	nop                                              ; $6b0d: $00
	ldh a, [$7b]                                     ; $6b0e: $f0 $7b
	rst SubAFromBC                                          ; $6b10: $e7
	adc c                                            ; $6b11: $89
	cp $fc                                           ; $6b12: $fe $fc
	ldh a, [$c0]                                     ; $6b14: $f0 $c0
	ld a, a                                          ; $6b16: $7f
	ld d, $00                                        ; $6b17: $16 $00
	add b                                            ; $6b19: $80
	and b                                            ; $6b1a: $a0
	or a                                             ; $6b1b: $b7
	scf                                              ; $6b1c: $37
	ld d, [hl]                                       ; $6b1d: $56
	ld [hl], $0b                                     ; $6b1e: $36 $0b
	add b                                            ; $6b20: $80
	ld h, b                                          ; $6b21: $60
	ld e, a                                          ; $6b22: $5f
	ld c, [hl]                                       ; $6b23: $4e
	adc $0f                                          ; $6b24: $ce $0f
	rst $38                                          ; $6b26: $ff
	db $db                                           ; $6b27: $db
	ld [hl], b                                       ; $6b28: $70
	cp e                                             ; $6b29: $bb
	rst SubAFromDE                                          ; $6b2a: $df
	db $db                                           ; $6b2b: $db
	ld a, e                                          ; $6b2c: $7b
	ld h, [hl]                                       ; $6b2d: $66
	ld [hl], a                                       ; $6b2e: $77
	ld a, [$0e7f]                                    ; $6b2f: $fa $7f $0e
	rst SubAFromDE                                          ; $6b32: $df
	ld [bc], a                                       ; $6b33: $02
	sbc [hl]                                         ; $6b34: $9e
	ld bc, $fa7b                                     ; $6b35: $01 $7b $fa
	sbc e                                            ; $6b38: $9b
	ld l, l                                          ; $6b39: $6d
	rst $38                                          ; $6b3a: $ff
	ld bc, $7701                                     ; $6b3b: $01 $01 $77
	ld a, [$c47a]                                    ; $6b3e: $fa $7a $c4
	ld a, d                                          ; $6b41: $7a
	ret nz                                           ; $6b42: $c0

	sbc l                                            ; $6b43: $9d
	add l                                            ; $6b44: $85
	ret nz                                           ; $6b45: $c0

	jp c, Jump_040_7e88                              ; $6b46: $da $88 $7e

	pop hl                                           ; $6b49: $e1
	db $db                                           ; $6b4a: $db
	ld d, h                                          ; $6b4b: $54
	ld a, [hl]                                       ; $6b4c: $7e
	ld l, c                                          ; $6b4d: $69
	db $db                                           ; $6b4e: $db
	inc b                                            ; $6b4f: $04
	ld a, e                                          ; $6b50: $7b
	call z, $80de                                    ; $6b51: $cc $de $80
	rst SubAFromDE                                          ; $6b54: $df

Call_040_6b55:
	rst $38                                          ; $6b55: $ff
	rst SubAFromDE                                          ; $6b56: $df
	ld e, e                                          ; $6b57: $5b
	sbc [hl]                                         ; $6b58: $9e
	ld a, a                                          ; $6b59: $7f
	halt                                             ; $6b5a: $76
	jp nz, Jump_040_5b9e                             ; $6b5b: $c2 $9e $5b

	ld a, e                                          ; $6b5e: $7b
	add $73                                          ; $6b5f: $c6 $73
	or b                                             ; $6b61: $b0
	ld a, e                                          ; $6b62: $7b
	add $76                                          ; $6b63: $c6 $76
	jp nz, $fa7f                                     ; $6b65: $c2 $7f $fa

	ld a, [hl]                                       ; $6b68: $7e
	ld c, b                                          ; $6b69: $48
	sbc c                                            ; $6b6a: $99
	db $10                                           ; $6b6b: $10
	sbc a                                            ; $6b6c: $9f
	rst FarCall                                          ; $6b6d: $f7
	ld a, [$eff2]                                    ; $6b6e: $fa $f2 $ef

jr_040_6b71:
	sbc $e0                                          ; $6b71: $de $e0
	sub a                                            ; $6b73: $97
	ld h, b                                          ; $6b74: $60
	ldh [$e0], a                                     ; $6b75: $e0 $e0
	pop hl                                           ; $6b77: $e1
	rst $38                                          ; $6b78: $ff
	inc a                                            ; $6b79: $3c
	rst $38                                          ; $6b7a: $ff
	db $fd                                           ; $6b7b: $fd
	ld a, e                                          ; $6b7c: $7b
	cp $88                                           ; $6b7d: $fe $88
	ret nz                                           ; $6b7f: $c0

jr_040_6b80:
	ld [$ff38], a                                    ; $6b80: $ea $38 $ff
	ld sp, hl                                        ; $6b83: $f9
	rst $38                                          ; $6b84: $ff
	ld hl, sp-$01                                    ; $6b85: $f8 $ff
	ret nz                                           ; $6b87: $c0

	ret nz                                           ; $6b88: $c0

	ld l, a                                          ; $6b89: $6f
	jp $e781                                         ; $6b8a: $c3 $81 $e7


	ld a, l                                          ; $6b8d: $7d
	rst $38                                          ; $6b8e: $ff
	nop                                              ; $6b8f: $00
	xor d                                            ; $6b90: $aa
	ld h, [hl]                                       ; $6b91: $66
	add c                                            ; $6b92: $81
	nop                                              ; $6b93: $00
	jp Jump_040_7b24                                 ; $6b94: $c3 $24 $7b


	call z, $6e9a                                    ; $6b97: $cc $9a $6e
	add e                                            ; $6b9a: $83
	jp Jump_040_7ef7                                 ; $6b9b: $c3 $f7 $7e


	ld a, e                                          ; $6b9e: $7b
	ldh a, [$9a]                                     ; $6b9f: $f0 $9a
	ld h, h                                          ; $6ba1: $64
	jp $c381                                         ; $6ba2: $c3 $81 $c3


	inc a                                            ; $6ba5: $3c
	ld a, e                                          ; $6ba6: $7b
	ldh a, [$9e]                                     ; $6ba7: $f0 $9e
	ld [hl], e                                       ; $6ba9: $73
	ld a, e                                          ; $6baa: $7b
	dec e                                            ; $6bab: $1d
	sbc d                                            ; $6bac: $9a
	ld a, a                                          ; $6bad: $7f
	ret nz                                           ; $6bae: $c0

	nop                                              ; $6baf: $00
	xor d                                            ; $6bb0: $aa
	ccf                                              ; $6bb1: $3f
	ld a, c                                          ; $6bb2: $79
	pop hl                                           ; $6bb3: $e1
	ld a, a                                          ; $6bb4: $7f
	cp $ff                                           ; $6bb5: $fe $ff
	sbc d                                            ; $6bb7: $9a
	dec c                                            ; $6bb8: $0d
	ld b, $07                                        ; $6bb9: $06 $07
	add hl, de                                       ; $6bbb: $19
	ld [$9afe], sp                                   ; $6bbc: $08 $fe $9a
	rrca                                             ; $6bbf: $0f
	rlca                                             ; $6bc0: $07
	rrca                                             ; $6bc1: $0f
	dec a                                            ; $6bc2: $3d

jr_040_6bc3:
	jr nc, jr_040_6bc3                               ; $6bc3: $30 $fe

	sbc d                                            ; $6bc5: $9a
	add c                                            ; $6bc6: $81
	ld bc, $e381                                     ; $6bc7: $01 $81 $e3
	add c                                            ; $6bca: $81
	ld a, c                                          ; $6bcb: $79
	ld d, b                                          ; $6bcc: $50
	ld a, c                                          ; $6bcd: $79
	ld a, a                                          ; $6bce: $7f
	sbc l                                            ; $6bcf: $9d
	pop bc                                           ; $6bd0: $c1
	ld b, e                                          ; $6bd1: $43
	ld a, d                                          ; $6bd2: $7a
	cp h                                             ; $6bd3: $bc
	ld a, l                                          ; $6bd4: $7d
	reti                                             ; $6bd5: $d9


	adc c                                            ; $6bd6: $89
	adc b                                            ; $6bd7: $88
	call z, $dcc8                                    ; $6bd8: $cc $c8 $dc
	jr nc, jr_040_6bdd                               ; $6bdb: $30 $00

jr_040_6bdd:
	ldh a, [$f8]                                     ; $6bdd: $f0 $f8
	db $ec                                           ; $6bdf: $ec
	db $ec                                           ; $6be0: $ec
	ld c, h                                          ; $6be1: $4c
	ret z                                            ; $6be2: $c8

	cp b                                             ; $6be3: $b8
	nop                                              ; $6be4: $00
	ld e, a                                          ; $6be5: $5f
	ld a, [hl-]                                      ; $6be6: $3a
	ld e, a                                          ; $6be7: $5f
	ld l, e                                          ; $6be8: $6b
	ld b, b                                          ; $6be9: $40
	ld e, a                                          ; $6bea: $5f
	ld d, l                                          ; $6beb: $55
	ld h, c                                          ; $6bec: $61
	db $fc                                           ; $6bed: $fc
	rst SubAFromDE                                          ; $6bee: $df
	jr nz, jr_040_6b80                               ; $6bef: $20 $8f

	nop                                              ; $6bf1: $00
	rst SubAFromDE                                          ; $6bf2: $df
	and [hl]                                         ; $6bf3: $a6
	rst FarCall                                          ; $6bf4: $f7
	ei                                               ; $6bf5: $fb
	dec b                                            ; $6bf6: $05
	ld d, l                                          ; $6bf7: $55
	ld l, e                                          ; $6bf8: $6b
	adc l                                            ; $6bf9: $8d
	rrca                                             ; $6bfa: $0f
	rrca                                             ; $6bfb: $0f
	rlca                                             ; $6bfc: $07
	rlca                                             ; $6bfd: $07
	inc bc                                           ; $6bfe: $03
	inc bc                                           ; $6bff: $03
	rst $38                                          ; $6c00: $ff
	ld a, e                                          ; $6c01: $7b
	rrca                                             ; $6c02: $0f
	call c, $9eff                                    ; $6c03: $dc $ff $9e
	cp a                                             ; $6c06: $bf
	call c, $9dff                                    ; $6c07: $dc $ff $9d
	rst FarCall                                          ; $6c0a: $f7
	rst $38                                          ; $6c0b: $ff
	halt                                             ; $6c0c: $76
	or c                                             ; $6c0d: $b1
	ld a, l                                          ; $6c0e: $7d
	sbc e                                            ; $6c0f: $9b
	sbc l                                            ; $6c10: $9d
	ldh a, [$e3]                                     ; $6c11: $f0 $e3
	ld h, d                                          ; $6c13: $62
	cpl                                              ; $6c14: $2f
	adc [hl]                                         ; $6c15: $8e
	nop                                              ; $6c16: $00
	sbc [hl]                                         ; $6c17: $9e
	sbc a                                            ; $6c18: $9f
	cp a                                             ; $6c19: $bf
	rra                                              ; $6c1a: $1f
	inc bc                                           ; $6c1b: $03
	ld bc, $e082                                     ; $6c1c: $01 $82 $e0
	ld hl, sp-$09                                    ; $6c1f: $f8 $f7
	or $fe                                           ; $6c21: $f6 $fe
	rst $38                                          ; $6c23: $ff
	cp $fc                                           ; $6c24: $fe $fc
	ld a, [bc]                                       ; $6c26: $0a
	ld a, e                                          ; $6c27: $7b
	add hl, hl                                       ; $6c28: $29
	rst SubAFromDE                                          ; $6c29: $df
	rst JumpTable                                          ; $6c2a: $c7
	sbc l                                            ; $6c2b: $9d
	xor a                                            ; $6c2c: $af
	ld [hl], b                                       ; $6c2d: $70
	ld [hl], h                                       ; $6c2e: $74
	or l                                             ; $6c2f: $b5
	sbc e                                            ; $6c30: $9b
	or $ff                                           ; $6c31: $f6 $ff
	or $30                                           ; $6c33: $f6 $30
	ld a, c                                          ; $6c35: $79
	sub h                                            ; $6c36: $94
	sbc d                                            ; $6c37: $9a
	ld d, [hl]                                       ; $6c38: $56
	ld h, $07                                        ; $6c39: $26 $07
	ld h, $07                                        ; $6c3b: $26 $07
	cp $99                                           ; $6c3d: $fe $99
	xor c                                            ; $6c3f: $a9
	rst SubAFromDE                                          ; $6c40: $df
	cp $df                                           ; $6c41: $fe $df
	ld b, $f1                                        ; $6c43: $06 $f1
	ld l, [hl]                                       ; $6c45: $6e
	pop bc                                           ; $6c46: $c1
	sbc l                                            ; $6c47: $9d
	ld d, a                                          ; $6c48: $57
	rrca                                             ; $6c49: $0f
	ld l, [hl]                                       ; $6c4a: $6e
	pop bc                                           ; $6c4b: $c1
	ld a, a                                          ; $6c4c: $7f
	ld l, a                                          ; $6c4d: $6f
	add e                                            ; $6c4e: $83
	dec d                                            ; $6c4f: $15
	ld a, [bc]                                       ; $6c50: $0a
	stop                                             ; $6c51: $10 $00
	ld sp, $1831                                     ; $6c53: $31 $31 $18
	add b                                            ; $6c56: $80
	xor d                                            ; $6c57: $aa
	sub l                                            ; $6c58: $95
	adc a                                            ; $6c59: $8f
	sbc a                                            ; $6c5a: $9f
	xor a                                            ; $6c5b: $af
	cp a                                             ; $6c5c: $bf
	or a                                             ; $6c5d: $b7
	ld d, l                                          ; $6c5e: $55
	rlca                                             ; $6c5f: $07
	ld [bc], a                                       ; $6c60: $02
	ld hl, sp-$06                                    ; $6c61: $f8 $fa
	ld hl, sp-$06                                    ; $6c63: $f8 $fa
	ldh a, [rP1]                                     ; $6c65: $f0 $00
	cp $fc                                           ; $6c67: $fe $fc
	db $fc                                           ; $6c69: $fc
	inc d                                            ; $6c6a: $14
	sbc $fc                                          ; $6c6b: $de $fc
	add b                                            ; $6c6d: $80
	dec b                                            ; $6c6e: $05
	add b                                            ; $6c6f: $80
	ret c                                            ; $6c70: $d8

	rst $38                                          ; $6c71: $ff
	rst $38                                          ; $6c72: $ff
	rst SubAFromDE                                          ; $6c73: $df
	rst AddAOntoHL                                          ; $6c74: $ef
	call $84fe                                       ; $6c75: $cd $fe $84
	add h                                            ; $6c78: $84
	rst SubAFromDE                                          ; $6c79: $df
	db $dd                                           ; $6c7a: $dd
	rst $38                                          ; $6c7b: $ff
	db $dd                                           ; $6c7c: $dd
	adc l                                            ; $6c7d: $8d
	rst $38                                          ; $6c7e: $ff
	jr jr_040_6cfa                                   ; $6c7f: $18 $79

	db $fd                                           ; $6c81: $fd
	xor a                                            ; $6c82: $af
	rst FarCall                                          ; $6c83: $f7
	cp e                                             ; $6c84: $bb
	or e                                             ; $6c85: $b3
	rst $38                                          ; $6c86: $ff
	ld bc, $fb99                                     ; $6c87: $01 $99 $fb
	jp $ffcb                                         ; $6c8a: $c3 $cb $ff


	add l                                            ; $6c8d: $85
	sbc a                                            ; $6c8e: $9f
	rra                                              ; $6c8f: $1f
	ld a, a                                          ; $6c90: $7f
	ld a, [hl]                                       ; $6c91: $7e
	ld a, [hl]                                       ; $6c92: $7e
	ld a, a                                          ; $6c93: $7f
	ld a, [hl]                                       ; $6c94: $7e
	cp $fe                                           ; $6c95: $fe $fe
	ldh [hLCDCIntHandlerIdx], a                                     ; $6c97: $e0 $81
	add b                                            ; $6c99: $80
	add b                                            ; $6c9a: $80
	add d                                            ; $6c9b: $82
	add d                                            ; $6c9c: $82
	ldh a, [c]                                       ; $6c9d: $f2
	or b                                             ; $6c9e: $b0
	nop                                              ; $6c9f: $00
	ccf                                              ; $6ca0: $3f
	add b                                            ; $6ca1: $80
	ld a, a                                          ; $6ca2: $7f
	rst $38                                          ; $6ca3: $ff
	ld a, b                                          ; $6ca4: $78
	ldh [$28], a                                     ; $6ca5: $e0 $28
	add b                                            ; $6ca7: $80
	ld a, b                                          ; $6ca8: $78
	ld c, c                                          ; $6ca9: $49
	rst $38                                          ; $6caa: $ff
	rst SubAFromDE                                          ; $6cab: $df
	db $10                                           ; $6cac: $10
	ld a, c                                          ; $6cad: $79
	ld d, [hl]                                       ; $6cae: $56
	ld [hl], c                                       ; $6caf: $71
	xor e                                            ; $6cb0: $ab
	ld hl, sp+$07                                    ; $6cb1: $f8 $07
	ldh a, [$fd]                                     ; $6cb3: $f0 $fd
	sbc h                                            ; $6cb5: $9c
	dec b                                            ; $6cb6: $05
	ld c, $0b                                        ; $6cb7: $0e $0b
	db $fc                                           ; $6cb9: $fc
	sbc h                                            ; $6cba: $9c
	ld a, [bc]                                       ; $6cbb: $0a
	rrca                                             ; $6cbc: $0f
	ld a, [de]                                       ; $6cbd: $1a
	halt                                             ; $6cbe: $76

jr_040_6cbf:
	add $7a                                          ; $6cbf: $c6 $7a
	pop bc                                           ; $6cc1: $c1
	sbc [hl]                                         ; $6cc2: $9e
	ld b, c                                          ; $6cc3: $41
	ld a, b                                          ; $6cc4: $78
	ld b, b                                          ; $6cc5: $40
	ld [hl], h                                       ; $6cc6: $74
	dec sp                                           ; $6cc7: $3b
	add e                                            ; $6cc8: $83
	ld h, c                                          ; $6cc9: $61
	ld d, b                                          ; $6cca: $50
	ldh a, [$b8]                                     ; $6ccb: $f0 $b8
	jr nc, jr_040_6cbf                               ; $6ccd: $30 $f0

	ld hl, sp-$80                                    ; $6ccf: $f8 $80
	add b                                            ; $6cd1: $80
	ld h, b                                          ; $6cd2: $60
	ld a, b                                          ; $6cd3: $78
	db $fc                                           ; $6cd4: $fc
	ld hl, sp-$10                                    ; $6cd5: $f8 $f0
	ld hl, sp-$08                                    ; $6cd7: $f8 $f8
	add b                                            ; $6cd9: $80
	ld [hl], l                                       ; $6cda: $75
	inc d                                            ; $6cdb: $14
	ld e, b                                          ; $6cdc: $58
	ld [hl], b                                       ; $6cdd: $70
	ld [hl], h                                       ; $6cde: $74
	ld sp, $1e71                                     ; $6cdf: $31 $71 $1e
	nop                                              ; $6ce2: $00
	ccf                                              ; $6ce3: $3f
	ld hl, $5e75                                     ; $6ce4: $21 $75 $5e
	add c                                            ; $6ce7: $81
	ld hl, $c9ad                                     ; $6ce8: $21 $ad $c9
	sbc a                                            ; $6ceb: $9f
	rst SubAFromDE                                          ; $6cec: $df
	sbc $9e                                          ; $6ced: $de $9e
	xor b                                            ; $6cef: $a8
	jp z, $ffdb                                      ; $6cf0: $ca $db $ff

	ret                                              ; $6cf3: $c9


	adc c                                            ; $6cf4: $89
	adc c                                            ; $6cf5: $89
	ret                                              ; $6cf6: $c9


	rst SubAFromDE                                          ; $6cf7: $df
	db $fd                                           ; $6cf8: $fd
	sub [hl]                                         ; $6cf9: $96

jr_040_6cfa:
	sbc [hl]                                         ; $6cfa: $9e
	sub $d7                                          ; $6cfb: $d6 $d7
	db $db                                           ; $6cfd: $db
	cp d                                             ; $6cfe: $ba
	sub a                                            ; $6cff: $97
	sub h                                            ; $6d00: $94
	db $fd                                           ; $6d01: $fd
	db $fd                                           ; $6d02: $fd
	cp l                                             ; $6d03: $bd
	cp a                                             ; $6d04: $bf
	or a                                             ; $6d05: $b7
	ld a, d                                          ; $6d06: $7a
	ret nz                                           ; $6d07: $c0

	sbc [hl]                                         ; $6d08: $9e
	ld [hl], a                                       ; $6d09: $77
	sbc $7f                                          ; $6d0a: $de $7f
	rst SubAFromDE                                          ; $6d0c: $df
	cp a                                             ; $6d0d: $bf
	sbc l                                            ; $6d0e: $9d
	ccf                                              ; $6d0f: $3f
	xor b                                            ; $6d10: $a8
	ld l, c                                          ; $6d11: $69
	ld h, d                                          ; $6d12: $62
	sub l                                            ; $6d13: $95
	rst $38                                          ; $6d14: $ff
	ld [bc], a                                       ; $6d15: $02
	add hl, de                                       ; $6d16: $19
	db $fc                                           ; $6d17: $fc
	sbc $fe                                          ; $6d18: $de $fe
	db $fc                                           ; $6d1a: $fc
	nop                                              ; $6d1b: $00
	nop                                              ; $6d1c: $00
	db $fc                                           ; $6d1d: $fc
	ld l, c                                          ; $6d1e: $69
	ld e, [hl]                                       ; $6d1f: $5e
	sbc h                                            ; $6d20: $9c
	ei                                               ; $6d21: $fb
	cp a                                             ; $6d22: $bf
	call c, $3878                                    ; $6d23: $dc $78 $38
	ld a, a                                          ; $6d26: $7f
	di                                               ; $6d27: $f3
	add e                                            ; $6d28: $83
	ld a, h                                          ; $6d29: $7c
	db $dd                                           ; $6d2a: $dd
	rst $38                                          ; $6d2b: $ff
	rst SubAFromDE                                          ; $6d2c: $df
	cp $ff                                           ; $6d2d: $fe $ff
	db $fd                                           ; $6d2f: $fd
	cp $ff                                           ; $6d30: $fe $ff
	ldh a, [c]                                       ; $6d32: $f2
	ld [bc], a                                       ; $6d33: $02
	jp c, $0101                                      ; $6d34: $da $01 $01

	ld b, b                                          ; $6d37: $40
	sbc b                                            ; $6d38: $98
	or a                                             ; $6d39: $b7
	rst $38                                          ; $6d3a: $ff
	cp $06                                           ; $6d3b: $fe $06
	ld bc, $e0e1                                     ; $6d3d: $01 $e1 $e0
	ldh [$74], a                                     ; $6d40: $e0 $74
	ldh a, [$3f]                                     ; $6d42: $f0 $3f
	rlca                                             ; $6d44: $07
	ld [hl], a                                       ; $6d45: $77
	ld c, a                                          ; $6d46: $4f
	sbc h                                            ; $6d47: $9c
	rst SubAFromDE                                          ; $6d48: $df
	rst $38                                          ; $6d49: $ff
	rlca                                             ; $6d4a: $07
	ld [hl], e                                       ; $6d4b: $73
	ld b, a                                          ; $6d4c: $47
	sub l                                            ; $6d4d: $95
	cp [hl]                                          ; $6d4e: $be
	cp c                                             ; $6d4f: $b9
	cp c                                             ; $6d50: $b9
	add hl, sp                                       ; $6d51: $39
	cp a                                             ; $6d52: $bf
	cp l                                             ; $6d53: $bd
	ld de, $7319                                     ; $6d54: $11 $19 $73
	ld a, e                                          ; $6d57: $7b
	sbc $fb                                          ; $6d58: $de $fb
	adc a                                            ; $6d5a: $8f
	di                                               ; $6d5b: $f3
	jr nz, jr_040_6d5e                               ; $6d5c: $20 $00

jr_040_6d5e:
	adc e                                            ; $6d5e: $8b
	call nc, $e0bf                                   ; $6d5f: $d4 $bf $e0
	rst $38                                          ; $6d62: $ff
	ret nz                                           ; $6d63: $c0

	nop                                              ; $6d64: $00
	nop                                              ; $6d65: $00
	db $f4                                           ; $6d66: $f4
	cp a                                             ; $6d67: $bf
	rst $38                                          ; $6d68: $ff
	add b                                            ; $6d69: $80
	ret nz                                           ; $6d6a: $c0

	ld a, d                                          ; $6d6b: $7a
	db $fc                                           ; $6d6c: $fc
	sub h                                            ; $6d6d: $94
	cpl                                              ; $6d6e: $2f
	nop                                              ; $6d6f: $00
	pop hl                                           ; $6d70: $e1
	ld sp, $05f9                                     ; $6d71: $31 $f9 $05
	ld c, $0f                                        ; $6d74: $0e $0f
	call $c1ff                                       ; $6d76: $cd $ff $c1
	ld a, b                                          ; $6d79: $78
	xor a                                            ; $6d7a: $af
	rst SubAFromDE                                          ; $6d7b: $df
	rrca                                             ; $6d7c: $0f
	sub d                                            ; $6d7d: $92
	rst $38                                          ; $6d7e: $ff
	ld [hl], l                                       ; $6d7f: $75
	push af                                          ; $6d80: $f5
	scf                                              ; $6d81: $37
	rlca                                             ; $6d82: $07
	dec b                                            ; $6d83: $05
	rlca                                             ; $6d84: $07
	add l                                            ; $6d85: $85
	sbc a                                            ; $6d86: $9f
	rst SubAFromDE                                          ; $6d87: $df
	ld e, a                                          ; $6d88: $5f
	scf                                              ; $6d89: $37
	rlca                                             ; $6d8a: $07
	ld a, e                                          ; $6d8b: $7b
	or [hl]                                          ; $6d8c: $b6
	ld a, b                                          ; $6d8d: $78
	push hl                                          ; $6d8e: $e5
	db $dd                                           ; $6d8f: $dd
	cp $80                                           ; $6d90: $fe $80
	rst $38                                          ; $6d92: $ff
	sbc [hl]                                         ; $6d93: $9e
	sbc e                                            ; $6d94: $9b
	sbc b                                            ; $6d95: $98
	sbc d                                            ; $6d96: $9a
	jp c, $bef2                                      ; $6d97: $da $f2 $be

	sub [hl]                                         ; $6d9a: $96
	jr @-$23                                         ; $6d9b: $18 $db

	add hl, hl                                       ; $6d9d: $29
	db $eb                                           ; $6d9e: $eb
	jp hl                                            ; $6d9f: $e9


	add sp, -$17                                     ; $6da0: $e8 $e9
	add hl, de                                       ; $6da2: $19
	pop af                                           ; $6da3: $f1
	pop af                                           ; $6da4: $f1
	ld de, $1011                                     ; $6da5: $11 $11 $10
	db $10                                           ; $6da8: $10
	ld de, $acf0                                     ; $6da9: $11 $f0 $ac
	jp z, $9184                                      ; $6dac: $ca $84 $91

	sbc d                                            ; $6daf: $9a
	nop                                              ; $6db0: $00
	add b                                            ; $6db1: $80
	sub l                                            ; $6db2: $95
	push af                                          ; $6db3: $f5
	call nz, $cace                                   ; $6db4: $c4 $ce $ca
	xor $00                                          ; $6db7: $ee $00
	ld b, d                                          ; $6db9: $42
	rst FarCall                                          ; $6dba: $f7
	and e                                            ; $6dbb: $a3
	add h                                            ; $6dbc: $84
	ld [hl], a                                       ; $6dbd: $77
	ld [hl], c                                       ; $6dbe: $71
	ld b, h                                          ; $6dbf: $44
	inc c                                            ; $6dc0: $0c
	push de                                          ; $6dc1: $d5
	add e                                            ; $6dc2: $83
	cp h                                             ; $6dc3: $bc
	ld c, h                                          ; $6dc4: $4c
	ret                                              ; $6dc5: $c9


	rst GetHLinHL                                          ; $6dc6: $cf
	add a                                            ; $6dc7: $87
	ld b, b                                          ; $6dc8: $40
	rrca                                             ; $6dc9: $0f
	rst SubAFromDE                                          ; $6dca: $df
	add $08                                          ; $6dcb: $c6 $08
	ret c                                            ; $6dcd: $d8

	xor b                                            ; $6dce: $a8
	jr nz, jr_040_6dd9                               ; $6dcf: $20 $08

	adc d                                            ; $6dd1: $8a
	inc h                                            ; $6dd2: $24
	jr nc, @+$2e                                     ; $6dd3: $30 $2c

	sbc b                                            ; $6dd5: $98
	db $fc                                           ; $6dd6: $fc
	ld a, h                                          ; $6dd7: $7c
	ld d, b                                          ; $6dd8: $50

jr_040_6dd9:
	db $10                                           ; $6dd9: $10
	ld c, b                                          ; $6dda: $48
	ld a, h                                          ; $6ddb: $7c
	ld [hl], h                                       ; $6ddc: $74
	ld a, [hl-]                                      ; $6ddd: $3a
	inc sp                                           ; $6dde: $33
	inc hl                                           ; $6ddf: $23
	ld a, [bc]                                       ; $6de0: $0a
	ld a, [bc]                                       ; $6de1: $0a
	dec bc                                           ; $6de2: $0b
	add hl, de                                       ; $6de3: $19
	nop                                              ; $6de4: $00
	dec de                                           ; $6de5: $1b
	dec sp                                           ; $6de6: $3b
	db $dd                                           ; $6de7: $dd
	dec de                                           ; $6de8: $1b
	rst $38                                          ; $6de9: $ff
	sub a                                            ; $6dea: $97
	pop hl                                           ; $6deb: $e1
	add b                                            ; $6dec: $80
	ld bc, $0003                                     ; $6ded: $01 $03 $00
	pop bc                                           ; $6df0: $c1
	ld b, e                                          ; $6df1: $43
	inc bc                                           ; $6df2: $03
	ld a, e                                          ; $6df3: $7b
	ld [hl], h                                       ; $6df4: $74
	add [hl]                                         ; $6df5: $86
	ld bc, $e060                                     ; $6df6: $01 $60 $e0
	add c                                            ; $6df9: $81
	ld bc, $00f0                                     ; $6dfa: $01 $f0 $00
	nop                                              ; $6dfd: $00
	ld hl, sp-$10                                    ; $6dfe: $f8 $f0
	ldh a, [$f8]                                     ; $6e00: $f0 $f8
	ld l, b                                          ; $6e02: $68
	ldh a, [rP1]                                     ; $6e03: $f0 $00
	ld h, b                                          ; $6e05: $60
	db $fc                                           ; $6e06: $fc
	ldh a, [$f0]                                     ; $6e07: $f0 $f0
	db $fc                                           ; $6e09: $fc
	db $fc                                           ; $6e0a: $fc
	ld d, [hl]                                       ; $6e0b: $56
	ld [hl], c                                       ; $6e0c: $71
	ld e, d                                          ; $6e0d: $5a
	ld d, b                                          ; $6e0e: $50
	sbc $58                                          ; $6e0f: $de $58
	sbc l                                            ; $6e11: $9d
	ld d, h                                          ; $6e12: $54
	jr c, jr_040_6e8e                                ; $6e13: $38 $79

	add e                                            ; $6e15: $83
	sbc $20                                          ; $6e16: $de $20
	sub [hl]                                         ; $6e18: $96
	inc hl                                           ; $6e19: $23
	sbc e                                            ; $6e1a: $9b
	sbc [hl]                                         ; $6e1b: $9e
	sbc [hl]                                         ; $6e1c: $9e
	sbc e                                            ; $6e1d: $9b
	sbc h                                            ; $6e1e: $9c
	sbc h                                            ; $6e1f: $9c
	xor b                                            ; $6e20: $a8
	ei                                               ; $6e21: $fb
	db $dd                                           ; $6e22: $dd
	ret                                              ; $6e23: $c9


	rst SubAFromDE                                          ; $6e24: $df
	res 2, l                                         ; $6e25: $cb $95
	rst SubAFromDE                                          ; $6e27: $df
	ret                                              ; $6e28: $c9


	sub h                                            ; $6e29: $94
	sub e                                            ; $6e2a: $93
	rst $38                                          ; $6e2b: $ff
	sbc l                                            ; $6e2c: $9d
	sub c                                            ; $6e2d: $91
	sub e                                            ; $6e2e: $93
	ei                                               ; $6e2f: $fb
	sub a                                            ; $6e30: $97
	db $db                                           ; $6e31: $db
	rst $38                                          ; $6e32: $ff
	ld a, a                                          ; $6e33: $7f
	ld sp, hl                                        ; $6e34: $f9
	ld a, a                                          ; $6e35: $7f
	cp h                                             ; $6e36: $bc
	sbc c                                            ; $6e37: $99
	pop hl                                           ; $6e38: $e1
	ld l, h                                          ; $6e39: $6c
	ld h, a                                          ; $6e3a: $67
	ld h, a                                          ; $6e3b: $67
	rst SubAFromBC                                          ; $6e3c: $e7
	ldh [$61], a                                     ; $6e3d: $e0 $61
	add b                                            ; $6e3f: $80
	sbc b                                            ; $6e40: $98
	add b                                            ; $6e41: $80
	jr c, @+$3a                                      ; $6e42: $38 $38

	db $10                                           ; $6e44: $10
	add c                                            ; $6e45: $81
	adc [hl]                                         ; $6e46: $8e
	ld [hl], b                                       ; $6e47: $70
	call c, $99ff                                    ; $6e48: $dc $ff $99
	cp $f0                                           ; $6e4b: $fe $f0
	add b                                            ; $6e4d: $80
	cp $ff                                           ; $6e4e: $fe $ff
	db $fc                                           ; $6e50: $fc
	sbc $f8                                          ; $6e51: $de $f8
	sbc e                                            ; $6e53: $9b
	jr c, jr_040_6e6e                                ; $6e54: $38 $18

	db $fd                                           ; $6e56: $fd
	ld a, b                                          ; $6e57: $78
	ld [hl], a                                       ; $6e58: $77
	ld sp, hl                                        ; $6e59: $f9
	rst SubAFromDE                                          ; $6e5a: $df
	jr c, @-$60                                      ; $6e5b: $38 $9e

	jr nz, jr_040_6ed0                               ; $6e5d: $20 $71

	ld hl, sp-$01                                    ; $6e5f: $f8 $ff
	ld a, d                                          ; $6e61: $7a
	db $ed                                           ; $6e62: $ed
	ld l, [hl]                                       ; $6e63: $6e
	dec l                                            ; $6e64: $2d
	ld a, d                                          ; $6e65: $7a
	ld e, e                                          ; $6e66: $5b
	push af                                          ; $6e67: $f5
	sbc l                                            ; $6e68: $9d
	or d                                             ; $6e69: $b2
	ld a, d                                          ; $6e6a: $7a
	ei                                               ; $6e6b: $fb
	sbc l                                            ; $6e6c: $9d
	add hl, de                                       ; $6e6d: $19

jr_040_6e6e:
	dec sp                                           ; $6e6e: $3b
	db $eb                                           ; $6e6f: $eb
	sub a                                            ; $6e70: $97
	ccf                                              ; $6e71: $3f
	rra                                              ; $6e72: $1f
	rrca                                             ; $6e73: $0f
	rlca                                             ; $6e74: $07
	inc bc                                           ; $6e75: $03
	ld bc, $ffe0                                     ; $6e76: $01 $e0 $ff
	ld [hl], a                                       ; $6e79: $77
	ld a, [$9aff]                                    ; $6e7a: $fa $ff $9a
	add b                                            ; $6e7d: $80
	ld a, h                                          ; $6e7e: $7c
	rst JumpTable                                          ; $6e7f: $c7
	rst $38                                          ; $6e80: $ff
	push af                                          ; $6e81: $f5
	ld [hl], h                                       ; $6e82: $74
	ld e, [hl]                                       ; $6e83: $5e
	ld a, d                                          ; $6e84: $7a
	ld [hl], $76                                     ; $6e85: $36 $76
	ld b, b                                          ; $6e87: $40
	ld a, a                                          ; $6e88: $7f
	ldh [c], a                                       ; $6e89: $e2
	ld l, [hl]                                       ; $6e8a: $6e
	pop bc                                           ; $6e8b: $c1
	ld a, a                                          ; $6e8c: $7f
	adc d                                            ; $6e8d: $8a

jr_040_6e8e:
	sub h                                            ; $6e8e: $94
	sub c                                            ; $6e8f: $91
	sub d                                            ; $6e90: $92
	sub b                                            ; $6e91: $90
	ret nc                                           ; $6e92: $d0

	ldh a, [$f8]                                     ; $6e93: $f0 $f8
	cp h                                             ; $6e95: $bc
	sub d                                            ; $6e96: $92
	db $db                                           ; $6e97: $db
	ld [$77e8], a                                    ; $6e98: $ea $e8 $77
	ld h, h                                          ; $6e9b: $64
	sbc d                                            ; $6e9c: $9a
	nop                                              ; $6e9d: $00
	pop af                                           ; $6e9e: $f1
	ld de, $1f10                                     ; $6e9f: $11 $10 $1f
	ld [hl], l                                       ; $6ea2: $75
	and d                                            ; $6ea3: $a2
	sbc l                                            ; $6ea4: $9d
	ldh a, [c]                                       ; $6ea5: $f2
	ret nc                                           ; $6ea6: $d0

	ld a, e                                          ; $6ea7: $7b
	ei                                               ; $6ea8: $fb
	ld [hl], a                                       ; $6ea9: $77
	ldh a, [$9e]                                     ; $6eaa: $f0 $9e
	ld sp, $9679                                     ; $6eac: $31 $79 $96
	ld a, e                                          ; $6eaf: $7b
	push af                                          ; $6eb0: $f5
	sbc [hl]                                         ; $6eb1: $9e
	ld b, l                                          ; $6eb2: $45
	ld a, b                                          ; $6eb3: $78
	ld h, e                                          ; $6eb4: $63
	sbc b                                            ; $6eb5: $98
	rst $38                                          ; $6eb6: $ff
	ld d, l                                          ; $6eb7: $55
	ld a, [$ce00]                                    ; $6eb8: $fa $00 $ce
	call nz, Call_040_7880                           ; $6ebb: $c4 $80 $78
	ld a, [hl-]                                      ; $6ebe: $3a
	sbc e                                            ; $6ebf: $9b
	dec b                                            ; $6ec0: $05
	rst $38                                          ; $6ec1: $ff
	inc c                                            ; $6ec2: $0c
	ld d, [hl]                                       ; $6ec3: $56
	ld a, e                                          ; $6ec4: $7b
	ldh a, [$9a]                                     ; $6ec5: $f0 $9a
	ld d, [hl]                                       ; $6ec7: $56
	xor a                                            ; $6ec8: $af
	nop                                              ; $6ec9: $00
	ld a, b                                          ; $6eca: $78
	inc l                                            ; $6ecb: $2c
	ld a, e                                          ; $6ecc: $7b
	ldh [$9d], a                                     ; $6ecd: $e0 $9d
	xor c                                            ; $6ecf: $a9

jr_040_6ed0:
	ld d, b                                          ; $6ed0: $50
	ld h, l                                          ; $6ed1: $65
	ld [hl], l                                       ; $6ed2: $75
	ld [hl], h                                       ; $6ed3: $74
	dec a                                            ; $6ed4: $3d
	db $fd                                           ; $6ed5: $fd
	sbc e                                            ; $6ed6: $9b
	rrca                                             ; $6ed7: $0f
	inc bc                                           ; $6ed8: $03
	ld [bc], a                                       ; $6ed9: $02
	nop                                              ; $6eda: $00
	ld a, d                                          ; $6edb: $7a
	cp a                                             ; $6edc: $bf
	sbc l                                            ; $6edd: $9d
	ld bc, $75a3                                     ; $6ede: $01 $a3 $75
	and e                                            ; $6ee1: $a3

jr_040_6ee2:
	sbc $01                                          ; $6ee2: $de $01
	add h                                            ; $6ee4: $84
	ld b, c                                          ; $6ee5: $41
	ld hl, sp+$0c                                    ; $6ee6: $f8 $0c
	nop                                              ; $6ee8: $00
	db $10                                           ; $6ee9: $10
	sbc b                                            ; $6eea: $98

jr_040_6eeb:
	ret z                                            ; $6eeb: $c8

	sub b                                            ; $6eec: $90
	jr nc, jr_040_6eeb                               ; $6eed: $30 $fc

	ld [$b800], sp                                   ; $6eef: $08 $00 $b8
	db $ec                                           ; $6ef2: $ec
	xor b                                            ; $6ef3: $a8
	ld hl, sp-$50                                    ; $6ef4: $f8 $b0
	ld b, c                                          ; $6ef6: $41
	ld [$1014], sp                                   ; $6ef7: $08 $14 $10
	inc d                                            ; $6efa: $14
	db $10                                           ; $6efb: $10
	ld d, $33                                        ; $6efc: $16 $33
	ld a, $70                                        ; $6efe: $3e $70
	db $dd                                           ; $6f00: $dd
	ld h, b                                          ; $6f01: $60
	add l                                            ; $6f02: $85
	ld h, c                                          ; $6f03: $61
	ld a, h                                          ; $6f04: $7c
	adc l                                            ; $6f05: $8d
	sbc l                                            ; $6f06: $9d
	sbc a                                            ; $6f07: $9f
	adc c                                            ; $6f08: $89
	cp b                                             ; $6f09: $b8
	sbc $de                                          ; $6f0a: $de $de
	rst $38                                          ; $6f0c: $ff
	set 1, e                                         ; $6f0d: $cb $cb
	ret                                              ; $6f0f: $c9


	rst GetHLinHL                                          ; $6f10: $cf
	rst GetHLinHL                                          ; $6f11: $cf
	jp hl                                            ; $6f12: $e9


	ret                                              ; $6f13: $c9


	ret                                              ; $6f14: $c9


	sbc a                                            ; $6f15: $9f
	db $dd                                           ; $6f16: $dd
	cp $f3                                           ; $6f17: $fe $f3
	sub e                                            ; $6f19: $93
	sbc a                                            ; $6f1a: $9f
	cp [hl]                                          ; $6f1b: $be
	ld hl, sp-$25                                    ; $6f1c: $f8 $db
	rst $38                                          ; $6f1e: $ff
	ld a, d                                          ; $6f1f: $7a
	adc l                                            ; $6f20: $8d
	sbc e                                            ; $6f21: $9b
	rst SubAFromBC                                          ; $6f22: $e7
	add sp, -$10                                     ; $6f23: $e8 $f0
	db $fc                                           ; $6f25: $fc
	ld a, d                                          ; $6f26: $7a
	db $ec                                           ; $6f27: $ec
	sbc d                                            ; $6f28: $9a
	rst $38                                          ; $6f29: $ff
	ld hl, sp-$10                                    ; $6f2a: $f8 $f0
	ldh [$e3], a                                     ; $6f2c: $e0 $e3
	ld [hl], d                                       ; $6f2e: $72
	add sp, -$65                                     ; $6f2f: $e8 $9b
	xor d                                            ; $6f31: $aa
	dec d                                            ; $6f32: $15
	nop                                              ; $6f33: $00
	ld hl, sp+$74                                    ; $6f34: $f8 $74
	ld h, c                                          ; $6f36: $61
	ld a, e                                          ; $6f37: $7b
	ld [hl+], a                                      ; $6f38: $22
	sub h                                            ; $6f39: $94
	ld h, b                                          ; $6f3a: $60
	ld b, $00                                        ; $6f3b: $06 $00
	jr jr_040_6f4f                                   ; $6f3d: $18 $10

	or b                                             ; $6f3f: $b0
	ld [hl], b                                       ; $6f40: $70
	jr nz, jr_040_6f43                               ; $6f41: $20 $00

jr_040_6f43:
	nop                                              ; $6f43: $00
	ldh a, [$de]                                     ; $6f44: $f0 $de
	jr nc, jr_040_6ee2                               ; $6f46: $30 $9a

	jr nz, jr_040_6f7a                               ; $6f48: $20 $30

	nop                                              ; $6f4a: $00
	nop                                              ; $6f4b: $00
	ld h, b                                          ; $6f4c: $60
	ldh [$da], a                                     ; $6f4d: $e0 $da

jr_040_6f4f:
	ld l, a                                          ; $6f4f: $6f
	cp a                                             ; $6f50: $bf
	rst $38                                          ; $6f51: $ff
	sbc [hl]                                         ; $6f52: $9e
	inc bc                                           ; $6f53: $03
	ld [hl], a                                       ; $6f54: $77
	dec bc                                           ; $6f55: $0b
	cp $7f                                           ; $6f56: $fe $7f
	ld c, d                                          ; $6f58: $4a
	call c, $9d1f                                    ; $6f59: $dc $1f $9d
	ccf                                              ; $6f5c: $3f
	pop bc                                           ; $6f5d: $c1
	halt                                             ; $6f5e: $76
	add c                                            ; $6f5f: $81
	sbc e                                            ; $6f60: $9b
	rlca                                             ; $6f61: $07
	ld hl, sp+$00                                    ; $6f62: $f8 $00
	nop                                              ; $6f64: $00
	ld a, c                                          ; $6f65: $79
	dec d                                            ; $6f66: $15
	call c, $9aff                                    ; $6f67: $dc $ff $9a
	scf                                              ; $6f6a: $37
	rra                                              ; $6f6b: $1f
	dec bc                                           ; $6f6c: $0b
	ccf                                              ; $6f6d: $3f
	rst JumpTable                                          ; $6f6e: $c7
	ld a, e                                          ; $6f6f: $7b
	inc [hl]                                         ; $6f70: $34
	sbc l                                            ; $6f71: $9d
	rst GetHLinHL                                          ; $6f72: $cf
	rst SubAFromBC                                          ; $6f73: $e7
	ld l, [hl]                                       ; $6f74: $6e
	cp l                                             ; $6f75: $bd
	ld l, c                                          ; $6f76: $69
	add c                                            ; $6f77: $81
	sbc l                                            ; $6f78: $9d
	ld a, a                                          ; $6f79: $7f

jr_040_6f7a:
	sub b                                            ; $6f7a: $90
	ld a, d                                          ; $6f7b: $7a
	pop bc                                           ; $6f7c: $c1
	sbc e                                            ; $6f7d: $9b
	cp b                                             ; $6f7e: $b8
	db $f4                                           ; $6f7f: $f4
	ldh a, [c]                                       ; $6f80: $f2
	ldh a, [rPCM12]                                  ; $6f81: $f0 $76
	db $d3                                           ; $6f83: $d3
	ld l, [hl]                                       ; $6f84: $6e
	daa                                              ; $6f85: $27
	sbc l                                            ; $6f86: $9d
	ld d, l                                          ; $6f87: $55
	xor d                                            ; $6f88: $aa
	ld a, e                                          ; $6f89: $7b
	cp $74                                           ; $6f8a: $fe $74
	ld h, d                                          ; $6f8c: $62
	db $db                                           ; $6f8d: $db
	rst $38                                          ; $6f8e: $ff
	sbc [hl]                                         ; $6f8f: $9e
	ld [bc], a                                       ; $6f90: $02
	ld c, e                                          ; $6f91: $4b
	ldh a, [rPCM34]                                  ; $6f92: $f0 $77
	ldh a, [c]                                       ; $6f94: $f2
	dec sp                                           ; $6f95: $3b
	ldh a, [$80]                                     ; $6f96: $f0 $80
	dec e                                            ; $6f98: $1d
	inc a                                            ; $6f99: $3c
	dec c                                            ; $6f9a: $0d
	inc [hl]                                         ; $6f9b: $34
	ccf                                              ; $6f9c: $3f
	ld [$100f], sp                                   ; $6f9d: $08 $0f $10
	rra                                              ; $6fa0: $1f
	dec e                                            ; $6fa1: $1d
	rra                                              ; $6fa2: $1f
	dec de                                           ; $6fa3: $1b
	rra                                              ; $6fa4: $1f
	rrca                                             ; $6fa5: $0f
	ld a, [de]                                       ; $6fa6: $1a
	ld [bc], a                                       ; $6fa7: $02
	ld h, b                                          ; $6fa8: $60
	add c                                            ; $6fa9: $81
	and b                                            ; $6faa: $a0
	ret nz                                           ; $6fab: $c0

	ret nz                                           ; $6fac: $c0

	add b                                            ; $6fad: $80
	ldh [rP1], a                                     ; $6fae: $e0 $00
	pop bc                                           ; $6fb0: $c1
	ret nz                                           ; $6fb1: $c0

	ret nz                                           ; $6fb2: $c0

	ld h, b                                          ; $6fb3: $60
	ldh [$c0], a                                     ; $6fb4: $e0 $c0
	ld b, b                                          ; $6fb6: $40
	ld a, [hl]                                       ; $6fb7: $7e
	sbc b                                            ; $6fb8: $98
	ld a, [hl]                                       ; $6fb9: $7e
	ret nz                                           ; $6fba: $c0

	db $fc                                           ; $6fbb: $fc
	sbc [hl]                                         ; $6fbc: $9e
	db $fc                                           ; $6fbd: $fc
	ld l, c                                          ; $6fbe: $69
	rst AddAOntoHL                                          ; $6fbf: $ef
	sub a                                            ; $6fc0: $97
	ld [$1e16], sp                                   ; $6fc1: $08 $16 $1e
	dec d                                            ; $6fc4: $15
	inc d                                            ; $6fc5: $14
	ld [bc], a                                       ; $6fc6: $02
	ld a, [bc]                                       ; $6fc7: $0a
	inc d                                            ; $6fc8: $14
	halt                                             ; $6fc9: $76
	pop bc                                           ; $6fca: $c1
	sub a                                            ; $6fcb: $97
	ld h, e                                          ; $6fcc: $63
	ld a, h                                          ; $6fcd: $7c
	ld [hl], b                                       ; $6fce: $70
	ld h, b                                          ; $6fcf: $60
	ld e, e                                          ; $6fd0: $5b
	rst AddAOntoHL                                          ; $6fd1: $ef
	db $f4                                           ; $6fd2: $f4
	ld b, b                                          ; $6fd3: $40
	ld [hl], a                                       ; $6fd4: $77
	push hl                                          ; $6fd5: $e5
	sbc e                                            ; $6fd6: $9b
	rst GetHLinHL                                          ; $6fd7: $cf
	ld e, [hl]                                       ; $6fd8: $5e
	ld a, b                                          ; $6fd9: $78
	ldh [rHDMA5], a                                  ; $6fda: $e0 $55
	ret z                                            ; $6fdc: $c8

	ld l, c                                          ; $6fdd: $69
	cp c                                             ; $6fde: $b9
	ldh [$e0], a                                     ; $6fdf: $e0 $e0
	sbc [hl]                                         ; $6fe1: $9e
	ld c, $69                                        ; $6fe2: $0e $69
	and b                                            ; $6fe4: $a0
	sbc [hl]                                         ; $6fe5: $9e
	ld [$9865], sp                                   ; $6fe6: $08 $65 $98
	ld a, [hl]                                       ; $6fe9: $7e
	xor e                                            ; $6fea: $ab
	sbc h                                            ; $6feb: $9c
	jr @+$07                                         ; $6fec: $18 $05

	inc bc                                           ; $6fee: $03
	ld [hl], e                                       ; $6fef: $73
	cp a                                             ; $6ff0: $bf
	sbc l                                            ; $6ff1: $9d
	stop                                             ; $6ff2: $10 $00
	ld [hl], a                                       ; $6ff4: $77
	db $ec                                           ; $6ff5: $ec
	sbc h                                            ; $6ff6: $9c
	ld bc, $300e                                     ; $6ff7: $01 $0e $30
	ld [hl], e                                       ; $6ffa: $73
	xor h                                            ; $6ffb: $ac
	sbc l                                            ; $6ffc: $9d
	ld bc, $730c                                     ; $6ffd: $01 $0c $73
	ld hl, sp-$62                                    ; $7000: $f8 $9e
	jr c, @+$69                                      ; $7002: $38 $67

	ld a, b                                          ; $7004: $78
	ld c, e                                          ; $7005: $4b
	sbc a                                            ; $7006: $9f
	ld [hl], l                                       ; $7007: $75
	sub d                                            ; $7008: $92
	ld l, a                                          ; $7009: $6f
	ret nz                                           ; $700a: $c0

	ld l, l                                          ; $700b: $6d
	push af                                          ; $700c: $f5
	ld a, [hl]                                       ; $700d: $7e
	sbc $66                                          ; $700e: $de $66
	sbc l                                            ; $7010: $9d
	ld l, a                                          ; $7011: $6f
	xor $75                                          ; $7012: $ee $75
	add d                                            ; $7014: $82
	ld [hl], a                                       ; $7015: $77
	xor $df                                          ; $7016: $ee $df
	rrca                                             ; $7018: $0f
	ld a, c                                          ; $7019: $79
	ld h, a                                          ; $701a: $67
	sbc e                                            ; $701b: $9b
	ld bc, $0008                                     ; $701c: $01 $08 $00
	db $fc                                           ; $701f: $fc
	call c, Call_040_7bfe                            ; $7020: $dc $fe $7b
	xor $52                                          ; $7023: $ee $52
	ldh a, [$79]                                     ; $7025: $f0 $79
	or c                                             ; $7027: $b1
	inc bc                                           ; $7028: $03
	ldh a, [$3f]                                     ; $7029: $f0 $3f
	ldh a, [$9e]                                     ; $702b: $f0 $9e
	cp $73                                           ; $702d: $fe $73
	adc a                                            ; $702f: $8f
	rst SubAFromDE                                          ; $7030: $df
	rst $38                                          ; $7031: $ff
	ld a, d                                          ; $7032: $7a
	ld c, c                                          ; $7033: $49
	rst $38                                          ; $7034: $ff
	sbc h                                            ; $7035: $9c
	ld a, [rIE]                                    ; $7036: $fa $ff $ff
	ld [hl], e                                       ; $7039: $73
	add [hl]                                         ; $703a: $86
	sbc $ff                                          ; $703b: $de $ff
	ld [hl], e                                       ; $703d: $73
	ld l, l                                          ; $703e: $6d
	sbc d                                            ; $703f: $9a
	cp a                                             ; $7040: $bf
	add c                                            ; $7041: $81
	pop af                                           ; $7042: $f1
	db $fd                                           ; $7043: $fd
	ld e, $7b                                        ; $7044: $1e $7b
	or $7e                                           ; $7046: $f6 $7e
	xor e                                            ; $7048: $ab
	ld a, l                                          ; $7049: $7d
	cp b                                             ; $704a: $b8
	sbc h                                            ; $704b: $9c
	rrca                                             ; $704c: $0f
	nop                                              ; $704d: $00
	nop                                              ; $704e: $00
	ld a, d                                          ; $704f: $7a
	db $d3                                           ; $7050: $d3
	sbc l                                            ; $7051: $9d
	add b                                            ; $7052: $80
	ret nz                                           ; $7053: $c0

	ld a, e                                          ; $7054: $7b
	inc a                                            ; $7055: $3c
	rst SubAFromDE                                          ; $7056: $df
	ld b, b                                          ; $7057: $40
	ld a, [hl]                                       ; $7058: $7e
	and e                                            ; $7059: $a3
	rst SubAFromDE                                          ; $705a: $df
	ld b, b                                          ; $705b: $40
	ldh [$5e], a                                     ; $705c: $e0 $5e
	ldh [rP1], a                                     ; $705e: $e0 $00
	ldh [$63], a                                     ; $7060: $e0 $63
	inc [hl]                                         ; $7062: $34
	nop                                              ; $7063: $00
	rst SubAFromHL                                          ; $7064: $d7
	ld d, l                                          ; $7065: $55
	sbc l                                            ; $7066: $9d
	ld h, [hl]                                       ; $7067: $66
	ld h, l                                          ; $7068: $65
	ld d, a                                          ; $7069: $57
	or $dd                                           ; $706a: $f6 $dd
	ld [hl], a                                       ; $706c: $77
	ld d, e                                          ; $706d: $53
	or $8e                                           ; $706e: $f6 $8e
	ld h, h                                          ; $7070: $64
	ld h, l                                          ; $7071: $65
	ld d, l                                          ; $7072: $55
	ld b, [hl]                                       ; $7073: $46
	halt                                             ; $7074: $76
	ld [hl], a                                       ; $7075: $77
	ld [hl], e                                       ; $7076: $73
	ld b, h                                          ; $7077: $44
	ld b, h                                          ; $7078: $44
	ld h, [hl]                                       ; $7079: $66
	ld h, h                                          ; $707a: $64
	ld b, l                                          ; $707b: $45
	ld d, l                                          ; $707c: $55
	ld d, l                                          ; $707d: $55
	ld d, [hl]                                       ; $707e: $56
	ld d, l                                          ; $707f: $55
	ld d, e                                          ; $7080: $53
	ld l, a                                          ; $7081: $6f
	or $9d                                           ; $7082: $f6 $9d
	ld h, l                                          ; $7084: $65
	ld b, h                                          ; $7085: $44
	ld h, e                                          ; $7086: $63
	or $9c                                           ; $7087: $f6 $9c
	ld b, l                                          ; $7089: $45
	ld b, e                                          ; $708a: $43
	inc sp                                           ; $708b: $33
	ld l, e                                          ; $708c: $6b
	ldh [c], a                                       ; $708d: $e2
	sbc [hl]                                         ; $708e: $9e
	ld d, l                                          ; $708f: $55
	db $db                                           ; $7090: $db
	ld b, h                                          ; $7091: $44
	reti                                             ; $7092: $d9


	ld d, l                                          ; $7093: $55
	rst SubAFromHL                                          ; $7094: $d7
	ld [hl], a                                       ; $7095: $77
	cp l                                             ; $7096: $bd
	add a                                            ; $7097: $87
	sbc l                                            ; $7098: $9d
	ld a, l                                          ; $7099: $7d
	ld a, e                                          ; $709a: $7b
	ld a, e                                          ; $709b: $7b
	cp $9c                                           ; $709c: $fe $9c
	ld a, a                                          ; $709e: $7f
	ld a, l                                          ; $709f: $7d
	ld a, a                                          ; $70a0: $7f
	reti                                             ; $70a1: $d9


	cp $9c                                           ; $70a2: $fe $9c
	rst AddAOntoHL                                          ; $70a4: $ef
	ei                                               ; $70a5: $fb
	db $fd                                           ; $70a6: $fd
	db $dd                                           ; $70a7: $dd
	rst $38                                          ; $70a8: $ff
	sbc e                                            ; $70a9: $9b
	di                                               ; $70aa: $f3
	rra                                              ; $70ab: $1f
	rlca                                             ; $70ac: $07
	inc bc                                           ; $70ad: $03
	db $fd                                           ; $70ae: $fd
	sbc [hl]                                         ; $70af: $9e
	db $10                                           ; $70b0: $10
	db $dd                                           ; $70b1: $dd
	rst $38                                          ; $70b2: $ff
	sbc e                                            ; $70b3: $9b
	cp a                                             ; $70b4: $bf
	rst SubAFromDE                                          ; $70b5: $df
	rst $38                                          ; $70b6: $ff

jr_040_70b7:
	ei                                               ; $70b7: $fb

Call_040_70b8:
	db $dd                                           ; $70b8: $dd
	rst $38                                          ; $70b9: $ff
	sbc e                                            ; $70ba: $9b
	ld a, a                                          ; $70bb: $7f
	ccf                                              ; $70bc: $3f
	rrca                                             ; $70bd: $0f
	rlca                                             ; $70be: $07
	pop bc                                           ; $70bf: $c1
	rst $38                                          ; $70c0: $ff
	inc bc                                           ; $70c1: $03
	rst $38                                          ; $70c2: $ff
	inc bc                                           ; $70c3: $03
	rst $38                                          ; $70c4: $ff
	inc bc                                           ; $70c5: $03
	rst $38                                          ; $70c6: $ff
	jp nc, $9bff                                     ; $70c7: $d2 $ff $9b

	db $fc                                           ; $70ca: $fc
	ld sp, hl                                        ; $70cb: $f9
	add sp, -$20                                     ; $70cc: $e8 $e0
	ld l, a                                          ; $70ce: $6f
	rst FarCall                                          ; $70cf: $f7
	sbc [hl]                                         ; $70d0: $9e
	ldh a, [$de]                                     ; $70d1: $f0 $de
	rst $38                                          ; $70d3: $ff
	sub d                                            ; $70d4: $92
	and c                                            ; $70d5: $a1
	ld b, a                                          ; $70d6: $47
	inc c                                            ; $70d7: $0c
	or h                                             ; $70d8: $b4
	ld c, $03                                        ; $70d9: $0e $03
	rst $38                                          ; $70db: $ff
	rst $38                                          ; $70dc: $ff
	ret nz                                           ; $70dd: $c0

	add b                                            ; $70de: $80
	nop                                              ; $70df: $00
	ld [$de01], sp                                   ; $70e0: $08 $01 $de
	rst $38                                          ; $70e3: $ff
	sbc e                                            ; $70e4: $9b
	ld b, l                                          ; $70e5: $45
	add a                                            ; $70e6: $87
	cpl                                              ; $70e7: $2f
	cp a                                             ; $70e8: $bf
	db $dd                                           ; $70e9: $dd
	rst $38                                          ; $70ea: $ff
	sbc e                                            ; $70eb: $9b
	inc bc                                           ; $70ec: $03
	rrca                                             ; $70ed: $0f
	rra                                              ; $70ee: $1f
	ld a, a                                          ; $70ef: $7f
	rst SubAFromHL                                          ; $70f0: $d7
	rst $38                                          ; $70f1: $ff
	sbc l                                            ; $70f2: $9d
	cp $fa                                           ; $70f3: $fe $fa
	ld h, a                                          ; $70f5: $67
	jp $fc77                                         ; $70f6: $c3 $77 $fc


	sbc [hl]                                         ; $70f9: $9e
	db $f4                                           ; $70fa: $f4
	ld a, e                                          ; $70fb: $7b
	db $d3                                           ; $70fc: $d3
	db $dd                                           ; $70fd: $dd
	rst $38                                          ; $70fe: $ff
	sbc b                                            ; $70ff: $98
	ld hl, sp-$20                                    ; $7100: $f8 $e0
	nop                                              ; $7102: $00
	nop                                              ; $7103: $00
	ld hl, sp-$18                                    ; $7104: $f8 $e8
	and b                                            ; $7106: $a0
	db $fc                                           ; $7107: $fc
	sbc h                                            ; $7108: $9c
	cp $f0                                           ; $7109: $fe $f0
	ret nz                                           ; $710b: $c0

	ei                                               ; $710c: $fb
	rst SubAFromDE                                          ; $710d: $df
	ld bc, $189e                                     ; $710e: $01 $9e $18
	db $dd                                           ; $7111: $dd
	dec c                                            ; $7112: $0d
	sbc [hl]                                         ; $7113: $9e
	ld bc, $f67b                                     ; $7114: $01 $7b $f6
	db $dd                                           ; $7117: $dd
	jr jr_040_70b7                                   ; $7118: $18 $9d

	rst SubAFromDE                                          ; $711a: $df
	cp a                                             ; $711b: $bf
	ld l, a                                          ; $711c: $6f
	cp $d9                                           ; $711d: $fe $d9
	rst $38                                          ; $711f: $ff
	ld [hl], d                                       ; $7120: $72
	ret nz                                           ; $7121: $c0

	ld a, d                                          ; $7122: $7a
	cp [hl]                                          ; $7123: $be
	reti                                             ; $7124: $d9


	cp $d9                                           ; $7125: $fe $d9
	ldh a, [$da]                                     ; $7127: $f0 $da
	db $10                                           ; $7129: $10
	sbc h                                            ; $712a: $9c
	ld de, $7efd                                     ; $712b: $11 $fd $7e
	ld a, d                                          ; $712e: $7a
	bit 7, a                                         ; $712f: $cb $7f
	jp $089d                                         ; $7131: $c3 $9d $08


	inc bc                                           ; $7134: $03
	ld a, e                                          ; $7135: $7b
	cp a                                             ; $7136: $bf
	db $fd                                           ; $7137: $fd
	adc a                                            ; $7138: $8f
	add b                                            ; $7139: $80
	rst $38                                          ; $713a: $ff
	rst $38                                          ; $713b: $ff
	ld e, a                                          ; $713c: $5f
	xor a                                            ; $713d: $af
	ld b, a                                          ; $713e: $47
	and c                                            ; $713f: $a1
	db $10                                           ; $7140: $10
	rst $38                                          ; $7141: $ff
	ret nz                                           ; $7142: $c0

	ld h, b                                          ; $7143: $60
	or b                                             ; $7144: $b0
	ld e, a                                          ; $7145: $5f
	cp a                                             ; $7146: $bf
	ld e, a                                          ; $7147: $5f
	cpl                                              ; $7148: $2f
	ld [hl], e                                       ; $7149: $73
	add a                                            ; $714a: $87
	sbc [hl]                                         ; $714b: $9e
	rst $38                                          ; $714c: $ff
	ld a, e                                          ; $714d: $7b
	ld a, [$6bfe]                                    ; $714e: $fa $fe $6b
	or $3b                                           ; $7151: $f6 $3b
	ldh a, [$9d]                                     ; $7153: $f0 $9d
	rlca                                             ; $7155: $07
	rst FarCall                                          ; $7156: $f7
	ld l, a                                          ; $7157: $6f
	ldh a, [$9d]                                     ; $7158: $f0 $9d
	ld hl, sp-$04                                    ; $715a: $f8 $fc
	ld l, a                                          ; $715c: $6f
	ldh a, [$9d]                                     ; $715d: $f0 $9d
	ldh [$cf], a                                     ; $715f: $e0 $cf

jr_040_7161:
	ld l, a                                          ; $7161: $6f
	ldh a, [$9d]                                     ; $7162: $f0 $9d
	rra                                              ; $7164: $1f
	ccf                                              ; $7165: $3f
	inc bc                                           ; $7166: $03
	ret nz                                           ; $7167: $c0

	inc sp                                           ; $7168: $33
	ldh a, [$9d]                                     ; $7169: $f0 $9d
	inc bc                                           ; $716b: $03
	ei                                               ; $716c: $fb
	ld l, a                                          ; $716d: $6f
	ldh a, [$df]                                     ; $716e: $f0 $df
	db $fc                                           ; $7170: $fc
	ld l, e                                          ; $7171: $6b
	ldh [$7e], a                                     ; $7172: $e0 $7e
	db $e4                                           ; $7174: $e4
	ld e, a                                          ; $7175: $5f
	ldh [$9a], a                                     ; $7176: $e0 $9a
	cp $eb                                           ; $7178: $fe $eb
	cp $f4                                           ; $717a: $fe $f4
	ret nc                                           ; $717c: $d0

	ld a, e                                          ; $717d: $7b
	ldh a, [$97]                                     ; $717e: $f0 $97
	ld bc, $fff7                                     ; $7180: $01 $f7 $ff
	ld a, b                                          ; $7183: $78
	ldh [$03], a                                     ; $7184: $e0 $03
	rst FarCall                                          ; $7186: $f7
	cp h                                             ; $7187: $bc
	ld [hl], d                                       ; $7188: $72
	xor $9c                                          ; $7189: $ee $9c
	rst $38                                          ; $718b: $ff
	rrca                                             ; $718c: $0f
	ld a, [hl]                                       ; $718d: $7e
	ld [hl], d                                       ; $718e: $72
	xor $9d                                          ; $718f: $ee $9d
	ldh a, [$80]                                     ; $7191: $f0 $80
	ei                                               ; $7193: $fb
	sbc d                                            ; $7194: $9a
	ret z                                            ; $7195: $c8

	ld b, b                                          ; $7196: $40
	jr nc, jr_040_71d9                               ; $7197: $30 $40

	ld h, b                                          ; $7199: $60
	sbc $20                                          ; $719a: $de $20
	xor $9e                                          ; $719c: $ee $9e
	db $10                                           ; $719e: $10
	ld a, [$0a98]                                    ; $719f: $fa $98 $0a
	ld a, [de]                                       ; $71a2: $1a
	ld a, [de]                                       ; $71a3: $1a
	ld [bc], a                                       ; $71a4: $02
	ld b, b                                          ; $71a5: $40
	dec c                                            ; $71a6: $0d
	dec c                                            ; $71a7: $0d
	sbc $4d                                          ; $71a8: $de $4d
	sbc $0d                                          ; $71aa: $de $0d
	sbc $18                                          ; $71ac: $de $18
	db $dd                                           ; $71ae: $dd
	ld e, b                                          ; $71af: $58
	ld a, $c0                                        ; $71b0: $3e $c0
	ld a, l                                          ; $71b2: $7d
	add h                                            ; $71b3: $84
	ld [hl-], a                                      ; $71b4: $32
	ret nz                                           ; $71b5: $c0

	rst SubAFromDE                                          ; $71b6: $df
	add hl, de                                       ; $71b7: $19
	sbc c                                            ; $71b8: $99
	inc de                                           ; $71b9: $13
	add hl, de                                       ; $71ba: $19
	dec de                                           ; $71bb: $1b
	add hl, de                                       ; $71bc: $19
	inc de                                           ; $71bd: $13
	dec de                                           ; $71be: $1b
	ei                                               ; $71bf: $fb
	sbc [hl]                                         ; $71c0: $9e
	inc b                                            ; $71c1: $04
	cp $de                                           ; $71c2: $fe $de
	jr nz, jr_040_7161                               ; $71c4: $20 $9b

	inc h                                            ; $71c6: $24
	ld [hl+], a                                      ; $71c7: $22
	inc a                                            ; $71c8: $3c
	ld [$9bfa], sp                                   ; $71c9: $08 $fa $9b
	rlca                                             ; $71cc: $07
	daa                                              ; $71cd: $27
	add hl, sp                                       ; $71ce: $39
	inc c                                            ; $71cf: $0c
	db $fd                                           ; $71d0: $fd
	sbc e                                            ; $71d1: $9b
	ld [hl], b                                       ; $71d2: $70
	jr jr_040_71e1                                   ; $71d3: $18 $0c

	ld b, $75                                        ; $71d5: $06 $75
	ld d, [hl]                                       ; $71d7: $56
	sbc d                                            ; $71d8: $9a

jr_040_71d9:
	rst AddAOntoHL                                          ; $71d9: $ef
	di                                               ; $71da: $f3
	ei                                               ; $71db: $fb
	rst $38                                          ; $71dc: $ff
	ld a, a                                          ; $71dd: $7f
	ld l, c                                          ; $71de: $69
	ld c, e                                          ; $71df: $4b
	ld a, [hl]                                       ; $71e0: $7e

jr_040_71e1:
	sbc e                                            ; $71e1: $9b
	ld a, l                                          ; $71e2: $7d
	ld d, [hl]                                       ; $71e3: $56
	call c, Call_040_7eff                            ; $71e4: $dc $ff $7e
	sub e                                            ; $71e7: $93
	sbc [hl]                                         ; $71e8: $9e
	ld [hl], b                                       ; $71e9: $70
	call c, Call_040_7917                            ; $71ea: $dc $17 $79
	ld c, d                                          ; $71ed: $4a
	call c, $9afc                                    ; $71ee: $dc $fc $9a
	inc e                                            ; $71f1: $1c
	db $fc                                           ; $71f2: $fc
	nop                                              ; $71f3: $00
	add sp, -$18                                     ; $71f4: $e8 $e8
	db $dd                                           ; $71f6: $dd
	ldh [$df], a                                     ; $71f7: $e0 $df
	rst $38                                          ; $71f9: $ff
	call c, $9d3f                                    ; $71fa: $dc $3f $9d
	jr nz, jr_040_723e                               ; $71fd: $20 $3f

	ld a, [$ffda]                                    ; $71ff: $fa $da $ff
	ld a, a                                          ; $7202: $7f
	ld hl, sp+$57                                    ; $7203: $f8 $57
	ldh a, [$9c]                                     ; $7205: $f0 $9c
	cp $f8                                           ; $7207: $fe $f8
	ldh a, [$5b]                                     ; $7209: $f0 $5b
	ldh a, [$98]                                     ; $720b: $f0 $98
	ret nz                                           ; $720d: $c0

	add c                                            ; $720e: $81
	rrca                                             ; $720f: $0f
	rra                                              ; $7210: $1f
	ccf                                              ; $7211: $3f
	rst $38                                          ; $7212: $ff
	ld bc, $0bde                                     ; $7213: $01 $de $0b
	sub b                                            ; $7216: $90
	rrca                                             ; $7217: $0f
	ld e, $70                                        ; $7218: $1e $70
	ret nz                                           ; $721a: $c0

	nop                                              ; $721b: $00
	db $fc                                           ; $721c: $fc
	inc a                                            ; $721d: $3c
	db $fc                                           ; $721e: $fc
	rst $38                                          ; $721f: $ff
	db $fc                                           ; $7220: $fc
	add sp, -$60                                     ; $7221: $e8 $a0
	ld bc, $5c47                                     ; $7223: $01 $47 $5c
	ld l, [hl]                                       ; $7226: $6e
	xor $7d                                          ; $7227: $ee $7d
	xor [hl]                                         ; $7229: $ae
	sbc l                                            ; $722a: $9d
	ldh [rLCDC], a                                   ; $722b: $e0 $40
	ld a, e                                          ; $722d: $7b
	add a                                            ; $722e: $87
	sbc [hl]                                         ; $722f: $9e
	add [hl]                                         ; $7230: $86
	db $fd                                           ; $7231: $fd
	sbc e                                            ; $7232: $9b
	ld b, b                                          ; $7233: $40
	add b                                            ; $7234: $80
	nop                                              ; $7235: $00
	add b                                            ; $7236: $80
	ld l, [hl]                                       ; $7237: $6e
	reti                                             ; $7238: $d9


	rst SubAFromDE                                          ; $7239: $df
	ld b, b                                          ; $723a: $40
	rst $38                                          ; $723b: $ff
	sbc h                                            ; $723c: $9c
	ld [bc], a                                       ; $723d: $02

jr_040_723e:
	ld bc, $6a00                                     ; $723e: $01 $00 $6a
	inc b                                            ; $7241: $04
	db $fd                                           ; $7242: $fd
	sbc $20                                          ; $7243: $de $20
	sbc l                                            ; $7245: $9d
	jr nc, @-$4e                                     ; $7246: $30 $b0

	sbc $30                                          ; $7248: $de $30
	db $dd                                           ; $724a: $dd
	jr nz, @-$60                                     ; $724b: $20 $9e

	and b                                            ; $724d: $a0
	ld [hl], $c0                                     ; $724e: $36 $c0
	sbc b                                            ; $7250: $98
	ld b, c                                          ; $7251: $41
	nop                                              ; $7252: $00
	ld [bc], a                                       ; $7253: $02
	jr nz, @+$62                                     ; $7254: $20 $60

	ld [bc], a                                       ; $7256: $02
	ld bc, $02de                                     ; $7257: $01 $de $02
	ld a, l                                          ; $725a: $7d
	res 3, h                                         ; $725b: $cb $9c
	ld [$2a28], sp                                   ; $725d: $08 $28 $2a
	jp c, $9e1d                                      ; $7260: $da $1d $9e

	inc e                                            ; $7263: $1c
	reti                                             ; $7264: $d9


	ld [$c03a], sp                                   ; $7265: $08 $3a $c0
	ld [hl], e                                       ; $7268: $73
	cp $4e                                           ; $7269: $fe $4e
	ret nz                                           ; $726b: $c0

	sub [hl]                                         ; $726c: $96
	pop af                                           ; $726d: $f1
	ldh a, [$1f]                                     ; $726e: $f0 $1f
	ld a, [de]                                       ; $7270: $1a
	rra                                              ; $7271: $1f
	dec de                                           ; $7272: $1b
	dec de                                           ; $7273: $1b
	ld a, [de]                                       ; $7274: $1a
	ld e, $72                                        ; $7275: $1e $72
	ret nz                                           ; $7277: $c0

	ld a, [hl]                                       ; $7278: $7e
	ret z                                            ; $7279: $c8

	ld a, a                                          ; $727a: $7f
	sbc c                                            ; $727b: $99
	sub a                                            ; $727c: $97
	inc h                                            ; $727d: $24
	nop                                              ; $727e: $00
	jr z, jr_040_72ad                                ; $727f: $28 $2c

	ld e, h                                          ; $7281: $5c
	ld c, d                                          ; $7282: $4a
	inc c                                            ; $7283: $0c
	ld l, h                                          ; $7284: $6c
	ld sp, hl                                        ; $7285: $f9
	sub [hl]                                         ; $7286: $96
	ret nz                                           ; $7287: $c0

	dec c                                            ; $7288: $0d
	ld d, b                                          ; $7289: $50
	add hl, de                                       ; $728a: $19
	sbc l                                            ; $728b: $9d
	adc e                                            ; $728c: $8b
	sbc h                                            ; $728d: $9c
	rst $38                                          ; $728e: $ff
	inc bc                                           ; $728f: $03
	db $dd                                           ; $7290: $dd
	ld bc, $0393                                     ; $7291: $01 $93 $03
	ld b, c                                          ; $7294: $41
	ld bc, $0204                                     ; $7295: $01 $04 $02
	ld b, $a6                                        ; $7298: $06 $a6
	and [hl]                                         ; $729a: $a6
	ldh a, [$b2]                                     ; $729b: $f0 $b2
	or [hl]                                          ; $729d: $b6
	ccf                                              ; $729e: $3f
	jp c, $9720                                      ; $729f: $da $20 $97

	ldh [$f4], a                                     ; $72a2: $e0 $f4
	pop af                                           ; $72a4: $f1
	ld a, [$faf4]                                    ; $72a5: $fa $f4 $fa
	push af                                          ; $72a8: $f5
	ld a, [$fe66]                                    ; $72a9: $fa $66 $fe
	db $fd                                           ; $72ac: $fd

jr_040_72ad:
	sbc c                                            ; $72ad: $99
	inc d                                            ; $72ae: $14
	add d                                            ; $72af: $82
	ld b, c                                          ; $72b0: $41
	ld [bc], a                                       ; $72b1: $02
	rst $38                                          ; $72b2: $ff
	add hl, bc                                       ; $72b3: $09
	db $db                                           ; $72b4: $db
	ld bc, $0095                                     ; $72b5: $01 $95 $00
	inc c                                            ; $72b8: $0c
	ld [$7305], sp                                   ; $72b9: $08 $05 $73
	and a                                            ; $72bc: $a7
	rla                                              ; $72bd: $17
	add e                                            ; $72be: $83
	rst $38                                          ; $72bf: $ff
	db $e4                                           ; $72c0: $e4
	db $db                                           ; $72c1: $db
	ldh [$7e], a                                     ; $72c2: $e0 $7e
	ld e, l                                          ; $72c4: $5d
	sbc d                                            ; $72c5: $9a
	inc c                                            ; $72c6: $0c
	ldh a, [$f8]                                     ; $72c7: $f0 $f8
	ldh a, [$e8]                                     ; $72c9: $f0 $e8
	ld h, d                                          ; $72cb: $62
	adc $6b                                          ; $72cc: $ce $6b
	ld [de], a                                       ; $72ce: $12
	sbc l                                            ; $72cf: $9d
	ld b, h                                          ; $72d0: $44
	rst $38                                          ; $72d1: $ff
	reti                                             ; $72d2: $d9


	ld bc, $03dd                                     ; $72d3: $01 $dd $03
	sbc h                                            ; $72d6: $9c
	ld b, e                                          ; $72d7: $43
	inc hl                                           ; $72d8: $23
	inc de                                           ; $72d9: $13
	ld l, [hl]                                       ; $72da: $6e
	ld h, b                                          ; $72db: $60
	sbc e                                            ; $72dc: $9b
	adc d                                            ; $72dd: $8a
	add h                                            ; $72de: $84
	ld bc, $de1d                                     ; $72df: $01 $1d $de
	ccf                                              ; $72e2: $3f
	adc a                                            ; $72e3: $8f
	scf                                              ; $72e4: $37
	dec h                                            ; $72e5: $25
	add hl, sp                                       ; $72e6: $39
	add b                                            ; $72e7: $80
	adc b                                            ; $72e8: $88
	add b                                            ; $72e9: $80
	add d                                            ; $72ea: $82
	add c                                            ; $72eb: $81
	add d                                            ; $72ec: $82
	and l                                            ; $72ed: $a5
	add d                                            ; $72ee: $82
	rlca                                             ; $72ef: $07
	ld b, $06                                        ; $72f0: $06 $06
	nop                                              ; $72f2: $00
	ld [bc], a                                       ; $72f3: $02
	ld a, e                                          ; $72f4: $7b
	cp $9e                                           ; $72f5: $fe $9e
	nop                                              ; $72f7: $00
	ld [hl], l                                       ; $72f8: $75
	sub e                                            ; $72f9: $93
	ld a, [hl]                                       ; $72fa: $7e
	jp $a09d                                         ; $72fb: $c3 $9d $a0


	ret nz                                           ; $72fe: $c0

	jp c, $9940                                      ; $72ff: $da $40 $99

	rlca                                             ; $7302: $07
	jr jr_040_734d                                   ; $7303: $18 $48

	ld [hl+], a                                      ; $7305: $22
	ld sp, $7a00                                     ; $7306: $31 $00 $7a
	di                                               ; $7309: $f3
	ld [hl], c                                       ; $730a: $71

jr_040_730b:
	and [hl]                                         ; $730b: $a6
	sbc e                                            ; $730c: $9b
	jr nc, jr_040_731f                               ; $730d: $30 $10

	jr nc, jr_040_7341                               ; $730f: $30 $30

	sbc $b0                                          ; $7311: $de $b0
	sbc h                                            ; $7313: $9c
	ld [hl], b                                       ; $7314: $70
	ldh a, [$b0]                                     ; $7315: $f0 $b0
	ld a, d                                          ; $7317: $7a
	jp nz, $a0dc                                     ; $7318: $c2 $dc $a0

	ld [hl], c                                       ; $731b: $71
	push hl                                          ; $731c: $e5
	or $8f                                           ; $731d: $f6 $8f

jr_040_731f:
	dec h                                            ; $731f: $25
	and [hl]                                         ; $7320: $a6
	ld bc, $00a3                                     ; $7321: $01 $a3 $00
	nop                                              ; $7324: $00
	add l                                            ; $7325: $85
	add l                                            ; $7326: $85
	ld [bc], a                                       ; $7327: $02
	add hl, bc                                       ; $7328: $09
	jr nz, jr_040_732b                               ; $7329: $20 $00

jr_040_732b:
	jr nz, jr_040_732e                               ; $732b: $20 $01

	ld [hl+], a                                      ; $732d: $22

jr_040_732e:
	jr nz, jr_040_730b                               ; $732e: $20 $db

	inc e                                            ; $7330: $1c
	rst SubAFromDE                                          ; $7331: $df
	inc c                                            ; $7332: $0c
	ld d, [hl]                                       ; $7333: $56
	ret nz                                           ; $7334: $c0

	ld a, b                                          ; $7335: $78
	adc b                                            ; $7336: $88
	ld l, [hl]                                       ; $7337: $6e
	ret nz                                           ; $7338: $c0

	ld a, l                                          ; $7339: $7d
	ld a, [bc]                                       ; $733a: $0a
	ld l, d                                          ; $733b: $6a
	jp nz, $c05e                                     ; $733c: $c2 $5e $c0

	rst SubAFromDE                                          ; $733f: $df
	db $f4                                           ; $7340: $f4

jr_040_7341:
	rst SubAFromDE                                          ; $7341: $df
	push af                                          ; $7342: $f5
	sub e                                            ; $7343: $93
	db $fd                                           ; $7344: $fd
	db $fc                                           ; $7345: $fc
	push af                                          ; $7346: $f5
	ld a, [$1b1a]                                    ; $7347: $fa $1a $1b
	ld a, [de]                                       ; $734a: $1a
	ld a, [de]                                       ; $734b: $1a
	ld [de], a                                       ; $734c: $12

jr_040_734d:
	ld [de], a                                       ; $734d: $12
	ld a, [de]                                       ; $734e: $1a
	dec d                                            ; $734f: $15
	sbc $20                                          ; $7350: $de $20
	sub d                                            ; $7352: $92
	add h                                            ; $7353: $84
	and b                                            ; $7354: $a0
	or c                                             ; $7355: $b1
	ld bc, $5e09                                     ; $7356: $01 $09 $5e
	ld c, b                                          ; $7359: $48
	ld e, [hl]                                       ; $735a: $5e
	ld l, c                                          ; $735b: $69
	ld c, l                                          ; $735c: $4d
	ld c, [hl]                                       ; $735d: $4e
	cp $74                                           ; $735e: $fe $74
	ld a, d                                          ; $7360: $7a
	ld l, e                                          ; $7361: $6b
	sub d                                            ; $7362: $92
	inc h                                            ; $7363: $24
	db $10                                           ; $7364: $10
	ld b, b                                          ; $7365: $40
	ld bc, $db04                                     ; $7366: $01 $04 $db
	rst SubAFromHL                                          ; $7369: $d7
	db $d3                                           ; $736a: $d3
	add e                                            ; $736b: $83
	db $ed                                           ; $736c: $ed
	xor [hl]                                         ; $736d: $ae
	cp d                                             ; $736e: $ba
	db $eb                                           ; $736f: $eb
	db $dd                                           ; $7370: $dd
	ld bc, $0593                                     ; $7371: $01 $93 $05
	ld bc, $054d                                     ; $7374: $01 $4d $05
	ld l, [hl]                                       ; $7377: $6e
	ld l, d                                          ; $7378: $6a
	ld l, [hl]                                       ; $7379: $6e
	ld a, [$aeda]                                    ; $737a: $fa $da $ae
	or d                                             ; $737d: $b2
	ld a, [$20d9]                                    ; $737e: $fa $d9 $20
	ld a, d                                          ; $7381: $7a
	call nz, $fe9a                                   ; $7382: $c4 $9a $fe
	rst $38                                          ; $7385: $ff
	ei                                               ; $7386: $fb
	rst $38                                          ; $7387: $ff
	ld a, [$98f8]                                    ; $7388: $fa $f8 $98
	add d                                            ; $738b: $82
	ld d, a                                          ; $738c: $57
	cp $fc                                           ; $738d: $fe $fc
	cp $dd                                           ; $738f: $fe $dd
	xor d                                            ; $7391: $aa
	reti                                             ; $7392: $d9


	ld bc, $567d                                     ; $7393: $01 $7d $56
	sbc c                                            ; $7396: $99
	ld b, a                                          ; $7397: $47
	ld l, e                                          ; $7398: $6b
	ld d, e                                          ; $7399: $53
	adc e                                            ; $739a: $8b
	ld e, l                                          ; $739b: $5d
	inc bc                                           ; $739c: $03
	reti                                             ; $739d: $d9


	ldh [$97], a                                     ; $739e: $e0 $97
	ld [$e0f5], a                                    ; $73a0: $ea $f5 $e0
	push af                                          ; $73a3: $f5
	ld [$fafd], a                                    ; $73a4: $ea $fd $fa
	db $f4                                           ; $73a7: $f4
	ld e, h                                          ; $73a8: $5c
	cp d                                             ; $73a9: $ba
	sbc d                                            ; $73aa: $9a
	ld [hl+], a                                      ; $73ab: $22
	dec d                                            ; $73ac: $15
	jr nz, @+$17                                     ; $73ad: $20 $15

	jr nz, @-$26                                     ; $73af: $20 $d8

	ld bc, $ab8e                                     ; $73b1: $01 $8e $ab
	ld d, e                                          ; $73b4: $53
	and e                                            ; $73b5: $a3
	inc de                                           ; $73b6: $13
	or e                                             ; $73b7: $b3
	rla                                              ; $73b8: $17
	db $eb                                           ; $73b9: $eb
	ld d, e                                          ; $73ba: $53
	adc d                                            ; $73bb: $8a
	sub l                                            ; $73bc: $95
	xor d                                            ; $73bd: $aa
	add c                                            ; $73be: $81
	add d                                            ; $73bf: $82

jr_040_73c0:
	sbc [hl]                                         ; $73c0: $9e
	add b                                            ; $73c1: $80
	add b                                            ; $73c2: $80
	ld sp, $9efe                                     ; $73c3: $31 $fe $9e
	inc e                                            ; $73c6: $1c
	cp $99                                           ; $73c7: $fe $99
	and d                                            ; $73c9: $a2
	sub b                                            ; $73ca: $90
	xor b                                            ; $73cb: $a8
	sub c                                            ; $73cc: $91
	nop                                              ; $73cd: $00
	rrca                                             ; $73ce: $0f
	rst FarCall                                          ; $73cf: $f7
	ld a, c                                          ; $73d0: $79
	add l                                            ; $73d1: $85
	ld [hl], c                                       ; $73d2: $71
	sub d                                            ; $73d3: $92
	call c, Call_040_6940                            ; $73d4: $dc $40 $69
	ld b, e                                          ; $73d7: $43
	ld a, l                                          ; $73d8: $7d
	ld h, e                                          ; $73d9: $63
	sbc [hl]                                         ; $73da: $9e
	ld [de], a                                       ; $73db: $12
	ld a, [$d37e]                                    ; $73dc: $fa $7e $d3
	rst SubAFromDE                                          ; $73df: $df
	jr nc, jr_040_73c0                               ; $73e0: $30 $de

	ldh a, [$6d]                                     ; $73e2: $f0 $6d
	ld a, b                                          ; $73e4: $78
	ld a, [hl]                                       ; $73e5: $7e
	ld c, h                                          ; $73e6: $4c
	cp $98                                           ; $73e7: $fe $98
	jr jr_040_73eb                                   ; $73e9: $18 $00

jr_040_73eb:
	nop                                              ; $73eb: $00
	rra                                              ; $73ec: $1f
	nop                                              ; $73ed: $00

jr_040_73ee:
	nop                                              ; $73ee: $00
	ld b, $fd                                        ; $73ef: $06 $fd
	ld a, e                                          ; $73f1: $7b
	ld hl, sp+$6b                                    ; $73f2: $f8 $6b
	ret nc                                           ; $73f4: $d0

	sbc h                                            ; $73f5: $9c
	nop                                              ; $73f6: $00
	jp c, Jump_040_794c                              ; $73f7: $da $4c $79

	ld h, a                                          ; $73fa: $67
	ld a, e                                          ; $73fb: $7b
	ld hl, sp-$63                                    ; $73fc: $f8 $9d
	adc e                                            ; $73fe: $8b
	dec bc                                           ; $73ff: $0b
	sbc $0c                                          ; $7400: $de $0c
	sbc [hl]                                         ; $7402: $9e
	cp $fd                                           ; $7403: $fe $fd
	sbc $08                                          ; $7405: $de $08
	sbc [hl]                                         ; $7407: $9e
	ld hl, sp-$03                                    ; $7408: $f8 $fd
	halt                                             ; $740a: $76
	call nz, $c072                                   ; $740b: $c4 $72 $c0
	ld a, d                                          ; $740e: $7a
	call nz, $c032                                   ; $740f: $c4 $32 $c0
	sbc [hl]                                         ; $7412: $9e
	or $dd                                           ; $7413: $f6 $dd
	db $f4                                           ; $7415: $f4
	sbc l                                            ; $7416: $9d
	rst FarCall                                          ; $7417: $f7
	push af                                          ; $7418: $f5
	sbc $19                                          ; $7419: $de $19
	ld a, [hl]                                       ; $741b: $7e
	cp l                                             ; $741c: $bd
	add b                                            ; $741d: $80
	add hl, de                                       ; $741e: $19
	jr jr_040_7439                                   ; $741f: $18 $18

	ld a, [hl+]                                      ; $7421: $2a
	xor c                                            ; $7422: $a9
	nop                                              ; $7423: $00
	ld hl, $a925                                     ; $7424: $21 $25 $a9
	add l                                            ; $7427: $85
	dec c                                            ; $7428: $0d
	call nc, $7e44                                   ; $7429: $d4 $44 $7e
	sbc $da                                          ; $742c: $de $da
	ld d, d                                          ; $742e: $52
	ld a, d                                          ; $742f: $7a
	ldh [c], a                                       ; $7430: $e2
	nop                                              ; $7431: $00
	ld c, l                                          ; $7432: $4d
	nop                                              ; $7433: $00
	dec b                                            ; $7434: $05
	ld d, l                                          ; $7435: $55
	ld d, h                                          ; $7436: $54
	ld b, h                                          ; $7437: $44
	ld b, e                                          ; $7438: $43

jr_040_7439:
	cp $a2                                           ; $7439: $fe $a2
	cp l                                             ; $743b: $bd
	jp c, $aa96                                      ; $743c: $da $96 $aa

	xor e                                            ; $743f: $ab
	dec sp                                           ; $7440: $3b
	cp a                                             ; $7441: $bf
	add hl, hl                                       ; $7442: $29
	or l                                             ; $7443: $b5
	sub l                                            ; $7444: $95
	inc hl                                           ; $7445: $23
	rrca                                             ; $7446: $0f
	ld a, b                                          ; $7447: $78
	ld d, d                                          ; $7448: $52
	sbc b                                            ; $7449: $98
	sub $4a                                          ; $744a: $d6 $4a
	ld l, d                                          ; $744c: $6a
	sbc $fc                                          ; $744d: $de $fc
	ldh a, [$c0]                                     ; $744f: $f0 $c0
	ld [hl], a                                       ; $7451: $77
	ld l, b                                          ; $7452: $68
	db $dd                                           ; $7453: $dd
	jr nz, jr_040_73ee                               ; $7454: $20 $98

	ccf                                              ; $7456: $3f
	push af                                          ; $7457: $f5
	ld a, [$fbf5]                                    ; $7458: $fa $f5 $fb
	rst FarCall                                          ; $745b: $f7
	ei                                               ; $745c: $fb
	ld a, b                                          ; $745d: $78
	ld l, l                                          ; $745e: $6d
	ld l, e                                          ; $745f: $6b
	ld l, h                                          ; $7460: $6c
	sbc b                                            ; $7461: $98
	ld e, a                                          ; $7462: $5f
	rst $38                                          ; $7463: $ff
	ld e, a                                          ; $7464: $5f
	ei                                               ; $7465: $fb
	rst SubAFromDE                                          ; $7466: $df
	cp d                                             ; $7467: $ba
	rst $38                                          ; $7468: $ff
	ld l, c                                          ; $7469: $69
	or c                                             ; $746a: $b1
	sub l                                            ; $746b: $95
	add hl, bc                                       ; $746c: $09
	rst $38                                          ; $746d: $ff
	ld d, e                                          ; $746e: $53
	ei                                               ; $746f: $fb
	push af                                          ; $7470: $f5
	db $eb                                           ; $7471: $eb
	rst FarCall                                          ; $7472: $f7

Jump_040_7473:
	xor e                                            ; $7473: $ab
	cp $fc                                           ; $7474: $fe $fc
	db $db                                           ; $7476: $db
	ldh [hDisp1_WX], a                                     ; $7477: $e0 $96
	db $e4                                           ; $7479: $e4
	rst $38                                          ; $747a: $ff
	add sp, -$0b                                     ; $747b: $e8 $f5
	ld [$faf5], a                                    ; $747d: $ea $f5 $fa
	db $ed                                           ; $7480: $ed
	rra                                              ; $7481: $1f
	ld h, [hl]                                       ; $7482: $66
	or $98                                           ; $7483: $f6 $98
	rst $38                                          ; $7485: $ff
	ld [bc], a                                       ; $7486: $02
	ld b, l                                          ; $7487: $45
	xor d                                            ; $7488: $aa
	ld d, l                                          ; $7489: $55
	xor d                                            ; $748a: $aa
	ld d, c                                          ; $748b: $51
	ld h, a                                          ; $748c: $67
	ret nc                                           ; $748d: $d0

	sbc e                                            ; $748e: $9b
	ld bc, $abff                                     ; $748f: $01 $ff $ab
	ld d, a                                          ; $7492: $57
	ld a, e                                          ; $7493: $7b
	cp $9c                                           ; $7494: $fe $9c
	ld d, e                                          ; $7496: $53
	rst $38                                          ; $7497: $ff
	rst $38                                          ; $7498: $ff
	reti                                             ; $7499: $d9


	add b                                            ; $749a: $80
	ldh [hDisp0_WX], a                                     ; $749b: $e0 $89
	ld a, [hl+]                                      ; $749d: $2a
	ret nz                                           ; $749e: $c0

	sbc [hl]                                         ; $749f: $9e
	ld a, [hl]                                       ; $74a0: $7e
	jp c, $9efe                                      ; $74a1: $da $fe $9e

	rst $38                                          ; $74a4: $ff
	db $dd                                           ; $74a5: $dd
	push af                                          ; $74a6: $f5
	rst SubAFromDE                                          ; $74a7: $df
	db $f4                                           ; $74a8: $f4
	ld a, h                                          ; $74a9: $7c
	ccf                                              ; $74aa: $3f
	db $dd                                           ; $74ab: $dd
	ld a, [de]                                       ; $74ac: $1a
	rst SubAFromDE                                          ; $74ad: $df
	dec de                                           ; $74ae: $1b
	rst SubAFromDE                                          ; $74af: $df
	rra                                              ; $74b0: $1f
	adc [hl]                                         ; $74b1: $8e
	dec d                                            ; $74b2: $15
	ld d, b                                          ; $74b3: $50
	ret nz                                           ; $74b4: $c0

	add c                                            ; $74b5: $81
	rlca                                             ; $74b6: $07
	rra                                              ; $74b7: $1f
	ld a, a                                          ; $74b8: $7f
	rst $38                                          ; $74b9: $ff
	xor d                                            ; $74ba: $aa
	xor a                                            ; $74bb: $af
	ccf                                              ; $74bc: $3f
	ld a, a                                          ; $74bd: $7f
	cp $f8                                           ; $74be: $fe $f8
	ldh [$80], a                                     ; $74c0: $e0 $80
	rrca                                             ; $74c2: $0f
	ld a, e                                          ; $74c3: $7b
	db $f4                                           ; $74c4: $f4
	db $dd                                           ; $74c5: $dd
	rst $38                                          ; $74c6: $ff
	ld a, [hl]                                       ; $74c7: $7e
	call nc, $f47f                                   ; $74c8: $d4 $7f $f4
	ld [hl], e                                       ; $74cb: $73
	rla                                              ; $74cc: $17
	adc a                                            ; $74cd: $8f
	cp $fd                                           ; $74ce: $fe $fd
	ei                                               ; $74d0: $fb
	or $ec                                           ; $74d1: $f6 $ec
	ret c                                            ; $74d3: $d8

	or b                                             ; $74d4: $b0
	nop                                              ; $74d5: $00
	nop                                              ; $74d6: $00
	ld bc, $0703                                     ; $74d7: $01 $03 $07
	rrca                                             ; $74da: $0f
	rra                                              ; $74db: $1f
	ccf                                              ; $74dc: $3f
	ld l, a                                          ; $74dd: $6f
	jp c, $d9ef                                      ; $74de: $da $ef $d9

	ldh a, [$d9]                                     ; $74e1: $f0 $d9
	rst $38                                          ; $74e3: $ff
	ld sp, hl                                        ; $74e4: $f9
	inc bc                                           ; $74e5: $03
	ldh a, [$2b]                                     ; $74e6: $f0 $2b
	ldh a, [$d9]                                     ; $74e8: $f0 $d9
	ld bc, $667c                                     ; $74ea: $01 $7c $66
	sub d                                            ; $74ed: $92
	ret z                                            ; $74ee: $c8

	jp c, $deda                                      ; $74ef: $da $da $de

	rst SubAFromDE                                          ; $74f2: $df
	rst SubAFromDE                                          ; $74f3: $df
	add b                                            ; $74f4: $80
	ret nz                                           ; $74f5: $c0

	ldh a, [$ec]                                     ; $74f6: $f0 $ec
	rst SubAFromBC                                          ; $74f8: $e7
	pop hl                                           ; $74f9: $e1
	ldh [$71], a                                     ; $74fa: $e0 $71
	cp h                                             ; $74fc: $bc
	sbc e                                            ; $74fd: $9b
	add b                                            ; $74fe: $80
	ldh [$b4], a                                     ; $74ff: $e0 $b4
	db $ed                                           ; $7501: $ed
	db $fc                                           ; $7502: $fc
	sbc h                                            ; $7503: $9c
	ret nz                                           ; $7504: $c0

	ld a, b                                          ; $7505: $78
	ld e, $e0                                        ; $7506: $1e $e0
	and c                                            ; $7508: $a1
	ld b, [hl]                                       ; $7509: $46
	ret nz                                           ; $750a: $c0

	sbc l                                            ; $750b: $9d
	ld a, h                                          ; $750c: $7c
	ld a, [hl]                                       ; $750d: $7e
	ld l, a                                          ; $750e: $6f
	cp $d9                                           ; $750f: $fe $d9
	rst $38                                          ; $7511: $ff
	adc a                                            ; $7512: $8f
	rst SubAFromBC                                          ; $7513: $e7
	rst $38                                          ; $7514: $ff
	cp a                                             ; $7515: $bf
	ld a, a                                          ; $7516: $7f
	cp a                                             ; $7517: $bf
	ld d, a                                          ; $7518: $57
	xor a                                            ; $7519: $af
	ld e, a                                          ; $751a: $5f
	ld e, $00                                        ; $751b: $1e $00
	ld b, b                                          ; $751d: $40
	add b                                            ; $751e: $80
	ld b, b                                          ; $751f: $40
	xor b                                            ; $7520: $a8
	ld d, b                                          ; $7521: $50
	and b                                            ; $7522: $a0
	db $db                                           ; $7523: $db
	rst $38                                          ; $7524: $ff
	ld a, [hl]                                       ; $7525: $7e
	db $db                                           ; $7526: $db
	ei                                               ; $7527: $fb
	sbc l                                            ; $7528: $9d
	ld bc, $dd02                                     ; $7529: $01 $02 $dd
	rst $38                                          ; $752c: $ff
	sbc e                                            ; $752d: $9b
	or $6c                                           ; $752e: $f6 $6c
	ret c                                            ; $7530: $d8

	ld [hl], b                                       ; $7531: $70
	halt                                             ; $7532: $76
	ret nc                                           ; $7533: $d0

	sbc l                                            ; $7534: $9d
	rrca                                             ; $7535: $0f
	sbc a                                            ; $7536: $9f
	ld a, c                                          ; $7537: $79
	add a                                            ; $7538: $87
	ld l, e                                          ; $7539: $6b
	dec d                                            ; $753a: $15
	sbc l                                            ; $753b: $9d
	ld h, b                                          ; $753c: $60
	ret nz                                           ; $753d: $c0

	db $db                                           ; $753e: $db
	rst $38                                          ; $753f: $ff
	sbc $ef                                          ; $7540: $de $ef
	db $dd                                           ; $7542: $dd
	ldh [$5a], a                                     ; $7543: $e0 $5a
	add $61                                          ; $7545: $c6 $61
	ld a, l                                          ; $7547: $7d
	inc bc                                           ; $7548: $03
	ldh a, [$2b]                                     ; $7549: $f0 $2b
	ldh a, [$65]                                     ; $754b: $f0 $65
	ld a, l                                          ; $754d: $7d
	call c, $deff                                    ; $754e: $dc $ff $de
	rst SubAFromDE                                          ; $7551: $df
	sbc l                                            ; $7552: $9d
	ret nz                                           ; $7553: $c0

	ldh [rPCM34], a                                  ; $7554: $e0 $77
	cp $9e                                           ; $7556: $fe $9e
	ldh [$db], a                                     ; $7558: $e0 $db
	rst $38                                          ; $755a: $ff
	sbc l                                            ; $755b: $9d
	ei                                               ; $755c: $fb
	cp $6f                                           ; $755d: $fe $6f
	ret nc                                           ; $755f: $d0

	sbc [hl]                                         ; $7560: $9e
	rlca                                             ; $7561: $07
	ld l, e                                          ; $7562: $6b
	ldh [hDisp1_SCX], a                                     ; $7563: $e0 $91
	ld b, b                                          ; $7565: $40
	ret nc                                           ; $7566: $d0

	inc [hl]                                         ; $7567: $34
	inc c                                            ; $7568: $0c
	inc bc                                           ; $7569: $03
	ld [bc], a                                       ; $756a: $02
	ld bc, $8002                                     ; $756b: $01 $02 $80
	ldh [$f8], a                                     ; $756e: $e0 $f8
	rst $38                                          ; $7570: $ff
	rst $38                                          ; $7571: $ff
	db $fd                                           ; $7572: $fd
	ld a, e                                          ; $7573: $7b
	ld c, b                                          ; $7574: $48
	sbc b                                            ; $7575: $98
	jr nz, jr_040_757c                               ; $7576: $20 $04

	ld bc, $e8a0                                     ; $7578: $01 $a0 $e8
	ld e, d                                          ; $757b: $5a

jr_040_757c:
	cp [hl]                                          ; $757c: $be
	ld [hl], d                                       ; $757d: $72
	and c                                            ; $757e: $a1
	sbc h                                            ; $757f: $9c
	ld [hl], b                                       ; $7580: $70
	cp h                                             ; $7581: $bc
	ld b, a                                          ; $7582: $47
	ldh [$cc], a                                     ; $7583: $e0 $cc
	sbc h                                            ; $7585: $9c
	ld [bc], a                                       ; $7586: $02
	inc b                                            ; $7587: $04
	ld [bc], a                                       ; $7588: $02
	ld [bc], a                                       ; $7589: $02
	ret nz                                           ; $758a: $c0

	jp c, $80ff                                      ; $758b: $da $ff $80

	ld l, $5d                                        ; $758e: $2e $5d
	dec hl                                           ; $7590: $2b
	dec d                                            ; $7591: $15
	ld a, [hl+]                                      ; $7592: $2a
	stop                                             ; $7593: $10 $00
	ld bc, $a2d1                                     ; $7595: $01 $d1 $a2
	call nc, $d5ea                                   ; $7598: $d4 $ea $d5
	rst AddAOntoHL                                          ; $759b: $ef
	rst $38                                          ; $759c: $ff
	cp $ea                                           ; $759d: $fe $ea
	push de                                          ; $759f: $d5
	db $eb                                           ; $75a0: $eb
	ld d, $2d                                        ; $75a1: $16 $2d
	ld e, d                                          ; $75a3: $5a
	or a                                             ; $75a4: $b7
	ld a, d                                          ; $75a5: $7a
	dec d                                            ; $75a6: $15
	dec hl                                           ; $75a7: $2b
	rla                                              ; $75a8: $17
	rst AddAOntoHL                                          ; $75a9: $ef
	sbc $bd                                          ; $75aa: $de $bd
	ld a, b                                          ; $75ac: $78
	adc b                                            ; $75ad: $88
	push hl                                          ; $75ae: $e5
	pop bc                                           ; $75af: $c1
	and d                                            ; $75b0: $a2
	nop                                              ; $75b1: $00
	adc b                                            ; $75b2: $88
	ld d, l                                          ; $75b3: $55
	xor d                                            ; $75b4: $aa
	ld [hl], l                                       ; $75b5: $75
	xor d                                            ; $75b6: $aa
	cp $dd                                           ; $75b7: $fe $dd
	rst $38                                          ; $75b9: $ff
	ld [hl], a                                       ; $75ba: $77
	xor d                                            ; $75bb: $aa
	ld d, l                                          ; $75bc: $55
	adc d                                            ; $75bd: $8a
	ld d, l                                          ; $75be: $55
	nop                                              ; $75bf: $00
	dec b                                            ; $75c0: $05
	dec bc                                           ; $75c1: $0b
	rrca                                             ; $75c2: $0f
	rra                                              ; $75c3: $1f
	and b                                            ; $75c4: $a0
	ld a, d                                          ; $75c5: $7a
	sbc b                                            ; $75c6: $98
	ld a, h                                          ; $75c7: $7c
	ld d, d                                          ; $75c8: $52
	rst SubAFromDE                                          ; $75c9: $df
	rst $38                                          ; $75ca: $ff
	sbc c                                            ; $75cb: $99
	ld e, a                                          ; $75cc: $5f
	xor a                                            ; $75cd: $af
	ld e, a                                          ; $75ce: $5f
	ldh [$f0], a                                     ; $75cf: $e0 $f0
	db $fc                                           ; $75d1: $fc
	ld [hl], d                                       ; $75d2: $72
	cp $73                                           ; $75d3: $fe $73
	ld h, $6a                                        ; $75d5: $26 $6a
	di                                               ; $75d7: $f3
	sbc e                                            ; $75d8: $9b
	ld a, [bc]                                       ; $75d9: $0a
	inc d                                            ; $75da: $14
	add hl, hl                                       ; $75db: $29
	ld d, l                                          ; $75dc: $55
	db $dd                                           ; $75dd: $dd
	rst $38                                          ; $75de: $ff
	ld a, h                                          ; $75df: $7c
	ld c, [hl]                                       ; $75e0: $4e
	sbc b                                            ; $75e1: $98
	sub $aa                                          ; $75e2: $d6 $aa
	nop                                              ; $75e4: $00
	dec b                                            ; $75e5: $05
	nop                                              ; $75e6: $00
	ld d, l                                          ; $75e7: $55
	xor d                                            ; $75e8: $aa
	ld [hl], l                                       ; $75e9: $75
	dec a                                            ; $75ea: $3d
	sbc e                                            ; $75eb: $9b
	ld a, [$aaff]                                    ; $75ec: $fa $ff $aa
	ld d, l                                          ; $75ef: $55
	ld [hl], l                                       ; $75f0: $75
	ld a, $9e                                        ; $75f1: $3e $9e
	ld b, b                                          ; $75f3: $40
	ld a, e                                          ; $75f4: $7b
	ldh a, [$dd]                                     ; $75f5: $f0 $dd
	rst $38                                          ; $75f7: $ff
	ld a, a                                          ; $75f8: $7f
	ld l, [hl]                                       ; $75f9: $6e
	ld a, a                                          ; $75fa: $7f
	ldh a, [$fa]                                     ; $75fb: $f0 $fa
	sbc e                                            ; $75fd: $9b
	xor d                                            ; $75fe: $aa
	push de                                          ; $75ff: $d5
	ld a, [$ddfd]                                    ; $7600: $fa $fd $dd
	rst $38                                          ; $7603: $ff

Jump_040_7604:
	sbc e                                            ; $7604: $9b
	ld d, l                                          ; $7605: $55
	ld a, [hl+]                                      ; $7606: $2a
	dec b                                            ; $7607: $05
	ld [bc], a                                       ; $7608: $02
	ld a, d                                          ; $7609: $7a
	ld e, d                                          ; $760a: $5a
	ld a, [hl]                                       ; $760b: $7e
	ld e, e                                          ; $760c: $5b
	adc c                                            ; $760d: $89
	ld d, h                                          ; $760e: $54
	ld a, [hl+]                                      ; $760f: $2a
	ld d, l                                          ; $7610: $55
	rst $38                                          ; $7611: $ff
	db $fd                                           ; $7612: $fd
	rst FarCall                                          ; $7613: $f7
	rst SubAFromDE                                          ; $7614: $df
	ld a, a                                          ; $7615: $7f
	xor e                                            ; $7616: $ab
	push de                                          ; $7617: $d5
	xor d                                            ; $7618: $aa
	ret nz                                           ; $7619: $c0

	add sp, -$0b                                     ; $761a: $e8 $f5
	db $fc                                           ; $761c: $fc
	cp $00                                           ; $761d: $fe $00
	and b                                            ; $761f: $a0
	ld d, h                                          ; $7620: $54
	rst $38                                          ; $7621: $ff
	rst FarCall                                          ; $7622: $f7
	ld a, [$ffde]                                    ; $7623: $fa $de $ff
	sbc l                                            ; $7626: $9d
	ld e, a                                          ; $7627: $5f
	xor e                                            ; $7628: $ab
	cp $9e                                           ; $7629: $fe $9e
	xor b                                            ; $762b: $a8
	ld [hl], a                                       ; $762c: $77
	ret z                                            ; $762d: $c8

	sbc $ff                                          ; $762e: $de $ff
	sbc [hl]                                         ; $7630: $9e
	ld d, a                                          ; $7631: $57
	ld [hl], a                                       ; $7632: $77
	cp b                                             ; $7633: $b8
	adc l                                            ; $7634: $8d
	dec b                                            ; $7635: $05
	ld a, [hl+]                                      ; $7636: $2a
	ld d, l                                          ; $7637: $55
	xor a                                            ; $7638: $af
	ld d, l                                          ; $7639: $55
	ld a, [bc]                                       ; $763a: $0a
	ld bc, $fa00                                     ; $763b: $01 $00 $fa
	push de                                          ; $763e: $d5
	xor d                                            ; $763f: $aa
	ld d, b                                          ; $7640: $50
	xor d                                            ; $7641: $aa
	push af                                          ; $7642: $f5
	cp $ff                                           ; $7643: $fe $ff
	ld [hl], l                                       ; $7645: $75
	cp b                                             ; $7646: $b8
	ld a, e                                          ; $7647: $7b
	dec de                                           ; $7648: $1b
	ld a, a                                          ; $7649: $7f
	db $10                                           ; $764a: $10
	sub c                                            ; $764b: $91
	dec hl                                           ; $764c: $2b
	add e                                            ; $764d: $83
	ld b, b                                          ; $764e: $40
	add b                                            ; $764f: $80
	nop                                              ; $7650: $00
	add b                                            ; $7651: $80
	ld b, b                                          ; $7652: $40
	and b                                            ; $7653: $a0
	call nc, $68a0                                   ; $7654: $d4 $a0 $68
	jp c, $f5c6                                      ; $7657: $da $c6 $f5

	ld a, e                                          ; $765a: $7b
	push bc                                          ; $765b: $c5
	ld a, l                                          ; $765c: $7d
	ld b, c                                          ; $765d: $41
	sbc e                                            ; $765e: $9b
	inc a                                            ; $765f: $3c
	rrca                                             ; $7660: $0f
	dec bc                                           ; $7661: $0b
	dec b                                            ; $7662: $05
	db $fc                                           ; $7663: $fc
	ld a, [hl]                                       ; $7664: $7e
	sub l                                            ; $7665: $95
	sbc h                                            ; $7666: $9c
	or b                                             ; $7667: $b0
	call $6dfb                                       ; $7668: $cd $fb $6d
	ld b, c                                          ; $766b: $41
	sbc l                                            ; $766c: $9d
	ld a, $07                                        ; $766d: $3e $07
	db $fd                                           ; $766f: $fd
	sbc e                                            ; $7670: $9b
	inc b                                            ; $7671: $04
	add hl, bc                                       ; $7672: $09
	ld [bc], a                                       ; $7673: $02
	add c                                            ; $7674: $81
	ld e, [hl]                                       ; $7675: $5e
	call nz, $fe7f                                   ; $7676: $c4 $7f $fe
	sbc e                                            ; $7679: $9b
	add h                                            ; $767a: $84
	ld c, d                                          ; $767b: $4a
	and l                                            ; $767c: $a5
	ld a, [bc]                                       ; $767d: $0a
	ld a, [bc]                                       ; $767e: $0a
	ret nz                                           ; $767f: $c0

	ld l, h                                          ; $7680: $6c
	ld l, e                                          ; $7681: $6b
	ld a, c                                          ; $7682: $79
	sub a                                            ; $7683: $97
	ld a, b                                          ; $7684: $78
	ld a, e                                          ; $7685: $7b
	add b                                            ; $7686: $80
	ld e, $3e                                        ; $7687: $1e $3e
	ld a, h                                          ; $7689: $7c
	add sp, -$30                                     ; $768a: $e8 $d0
	db $fd                                           ; $768c: $fd
	ei                                               ; $768d: $fb
	rst FarCall                                          ; $768e: $f7
	rst AddAOntoHL                                          ; $768f: $ef
	call c, Call_040_70b8                            ; $7690: $dc $b8 $70
	ldh [$cf], a                                     ; $7693: $e0 $cf
	sbc [hl]                                         ; $7695: $9e
	inc d                                            ; $7696: $14
	ld a, e                                          ; $7697: $7b
	rrca                                             ; $7698: $0f
	rlca                                             ; $7699: $07
	dec de                                           ; $769a: $1b
	dec h                                            ; $769b: $25
	ldh [$c1], a                                     ; $769c: $e0 $c1
	xor e                                            ; $769e: $ab
	inc b                                            ; $769f: $04
	nop                                              ; $76a0: $00
	ld [rRAMG], sp                                   ; $76a1: $08 $00 $00
	ld [hl], a                                       ; $76a4: $77
	xor [hl]                                         ; $76a5: $ae
	ld a, a                                          ; $76a6: $7f
	ld hl, $fc7f                                     ; $76a7: $21 $7f $fc
	sub e                                            ; $76aa: $93
	ld a, a                                          ; $76ab: $7f
	cp [hl]                                          ; $76ac: $be
	adc b                                            ; $76ad: $88
	ld d, c                                          ; $76ae: $51
	rst $38                                          ; $76af: $ff
	ld d, l                                          ; $76b0: $55
	adc b                                            ; $76b1: $88
	ld d, c                                          ; $76b2: $51
	add b                                            ; $76b3: $80
	ld b, c                                          ; $76b4: $41
	ld d, b                                          ; $76b5: $50
	and b                                            ; $76b6: $a0
	ld a, e                                          ; $76b7: $7b
	ld l, c                                          ; $76b8: $69
	ld a, d                                          ; $76b9: $7a
	ld hl, sp+$7e                                    ; $76ba: $f8 $7e
	add $7b                                          ; $76bc: $c6 $7b
	ld e, c                                          ; $76be: $59
	ld a, e                                          ; $76bf: $7b
	cp d                                             ; $76c0: $ba
	ld [hl], c                                       ; $76c1: $71
	ld e, e                                          ; $76c2: $5b
	ld a, a                                          ; $76c3: $7f
	cp $9e                                           ; $76c4: $fe $9e
	dec b                                            ; $76c6: $05
	ld [hl], c                                       ; $76c7: $71
	ld c, e                                          ; $76c8: $4b
	ld a, a                                          ; $76c9: $7f
	cp $84                                           ; $76ca: $fe $84
	ld a, [$5bad]                                    ; $76cc: $fa $ad $5b
	and d                                            ; $76cf: $a2
	ld a, e                                          ; $76d0: $7b
	or a                                             ; $76d1: $b7
	ld [hl], a                                       ; $76d2: $77
	or $6d                                           ; $76d3: $f6 $6d
	ld d, d                                          ; $76d5: $52
	and h                                            ; $76d6: $a4
	ld e, l                                          ; $76d7: $5d
	add h                                            ; $76d8: $84
	ld c, b                                          ; $76d9: $48
	adc b                                            ; $76da: $88
	ld [$ff90], sp                                   ; $76db: $08 $90 $ff
	rst $38                                          ; $76de: $ff
	xor d                                            ; $76df: $aa
	rst $38                                          ; $76e0: $ff
	ld a, [$a054]                                    ; $76e1: $fa $54 $a0
	ld b, b                                          ; $76e4: $40
	nop                                              ; $76e5: $00
	nop                                              ; $76e6: $00
	ld l, [hl]                                       ; $76e7: $6e
	jp nc, $f077                                     ; $76e8: $d2 $77 $f0

	sbc [hl]                                         ; $76eb: $9e
	xor d                                            ; $76ec: $aa
	ld [hl], e                                       ; $76ed: $73
	jr c, jr_040_7753                                ; $76ee: $38 $63

	ldh a, [$9a]                                     ; $76f0: $f0 $9a
	push af                                          ; $76f2: $f5
	cp a                                             ; $76f3: $bf
	ld e, a                                          ; $76f4: $5f
	xor a                                            ; $76f5: $af
	ld d, a                                          ; $76f6: $57
	ld a, e                                          ; $76f7: $7b
	ldh a, [$73]                                     ; $76f8: $f0 $73
	ld c, h                                          ; $76fa: $4c
	adc a                                            ; $76fb: $8f
	dec hl                                           ; $76fc: $2b
	rra                                              ; $76fd: $1f
	sub l                                            ; $76fe: $95
	ld c, a                                          ; $76ff: $4f
	xor a                                            ; $7700: $af
	rst SubAFromHL                                          ; $7701: $d7
	and a                                            ; $7702: $a7
	db $db                                           ; $7703: $db
	call nc, Call_040_6ae0                           ; $7704: $d4 $e0 $6a
	or b                                             ; $7707: $b0
	ld d, b                                          ; $7708: $50
	jr z, jr_040_7763                                ; $7709: $28 $58

	inc h                                            ; $770b: $24
	ld a, d                                          ; $770c: $7a
	xor d                                            ; $770d: $aa
	ld l, c                                          ; $770e: $69
	ld e, e                                          ; $770f: $5b
	ld a, [hl]                                       ; $7710: $7e
	ld [hl], l                                       ; $7711: $75
	ld [hl], e                                       ; $7712: $73
	inc bc                                           ; $7713: $03
	sbc l                                            ; $7714: $9d
	ret nz                                           ; $7715: $c0

	ld d, b                                          ; $7716: $50
	halt                                             ; $7717: $76
	or a                                             ; $7718: $b7
	ld a, a                                          ; $7719: $7f
	add e                                            ; $771a: $83
	sbc l                                            ; $771b: $9d
	ccf                                              ; $771c: $3f
	xor a                                            ; $771d: $af
	ld l, [hl]                                       ; $771e: $6e
	ldh a, [c]                                       ; $771f: $f2
	halt                                             ; $7720: $76
	ld l, l                                          ; $7721: $6d
	sbc l                                            ; $7722: $9d
	and b                                            ; $7723: $a0
	db $f4                                           ; $7724: $f4
	ld [hl], d                                       ; $7725: $72
	ld b, h                                          ; $7726: $44
	ld a, a                                          ; $7727: $7f
	cp b                                             ; $7728: $b8
	sbc d                                            ; $7729: $9a
	dec bc                                           ; $772a: $0b
	ld bc, $0215                                     ; $772b: $01 $15 $02
	ld bc, $9dfc                                     ; $772e: $01 $fc $9d
	ld [$73fd], a                                    ; $7731: $ea $fd $73
	db $ed                                           ; $7734: $ed
	halt                                             ; $7735: $76
	ld l, d                                          ; $7736: $6a
	sbc h                                            ; $7737: $9c
	ccf                                              ; $7738: $3f
	rra                                              ; $7739: $1f
	rlca                                             ; $773a: $07
	ld [hl], a                                       ; $773b: $77
	db $ec                                           ; $773c: $ec
	ld a, [hl]                                       ; $773d: $7e
	ld [hl], l                                       ; $773e: $75
	ld a, l                                          ; $773f: $7d
	ld e, l                                          ; $7740: $5d
	ld a, a                                          ; $7741: $7f
	db $ec                                           ; $7742: $ec
	ld a, [hl]                                       ; $7743: $7e
	ld [de], a                                       ; $7744: $12
	sbc [hl]                                         ; $7745: $9e
	ld d, a                                          ; $7746: $57
	db $dd                                           ; $7747: $dd
	rst $38                                          ; $7748: $ff
	sbc e                                            ; $7749: $9b
	ld a, $03                                        ; $774a: $3e $03
	nop                                              ; $774c: $00
	xor b                                            ; $774d: $a8
	db $fd                                           ; $774e: $fd
	sbc e                                            ; $774f: $9b
	pop bc                                           ; $7750: $c1
	ret nc                                           ; $7751: $d0

	or h                                             ; $7752: $b4

jr_040_7753:
	call z, $0772                                    ; $7753: $cc $72 $07
	sbc h                                            ; $7756: $9c
	ldh [$78], a                                     ; $7757: $e0 $78
	ccf                                              ; $7759: $3f
	ld [hl], e                                       ; $775a: $73
	jp c, $0597                                      ; $775b: $da $97 $05

	ld a, [bc]                                       ; $775e: $0a
	dec b                                            ; $775f: $05
	add d                                            ; $7760: $82
	ld l, b                                          ; $7761: $68
	sbc d                                            ; $7762: $9a

jr_040_7763:
	or $f9                                           ; $7763: $f6 $f9
	halt                                             ; $7765: $76
	and c                                            ; $7766: $a1
	sbc e                                            ; $7767: $9b
	ldh a, [$7c]                                     ; $7768: $f0 $7c
	rrca                                             ; $776a: $0f
	rlca                                             ; $776b: $07
	ld c, d                                          ; $776c: $4a
	ret nz                                           ; $776d: $c0

	sbc l                                            ; $776e: $9d
	rst $38                                          ; $776f: $ff
	ld a, l                                          ; $7770: $7d
	ld [hl], d                                       ; $7771: $72
	cp [hl]                                          ; $7772: $be
	sbc [hl]                                         ; $7773: $9e
	ld a, l                                          ; $7774: $7d
	ld [hl], l                                       ; $7775: $75
	add b                                            ; $7776: $80
	call c, $96fe                                    ; $7777: $dc $fe $96
	ldh [rLCDC], a                                   ; $777a: $e0 $40
	add b                                            ; $777c: $80
	ld bc, $0402                                     ; $777d: $01 $02 $04
	rst AddAOntoHL                                          ; $7780: $ef
	db $10                                           ; $7781: $10
	ret nz                                           ; $7782: $c0

	ld [hl], l                                       ; $7783: $75
	db $e4                                           ; $7784: $e4
	cp $9c                                           ; $7785: $fe $9c
	ld h, e                                          ; $7787: $63
	push bc                                          ; $7788: $c5
	add d                                            ; $7789: $82
	ld a, c                                          ; $778a: $79
	ei                                               ; $778b: $fb
	sbc [hl]                                         ; $778c: $9e
	ld e, l                                          ; $778d: $5d
	ld [hl], d                                       ; $778e: $72
	ld l, b                                          ; $778f: $68
	halt                                             ; $7790: $76
	ld [hl], e                                       ; $7791: $73
	sub l                                            ; $7792: $95
	ld a, h                                          ; $7793: $7c
	cp $bc                                           ; $7794: $fe $bc

Call_040_7796:
	ld a, b                                          ; $7796: $78
	or b                                             ; $7797: $b0
	ld h, b                                          ; $7798: $60
	ld d, b                                          ; $7799: $50
	ldh [hDisp0_SCY], a                                     ; $779a: $e0 $83
	ld bc, $967a                                     ; $779c: $01 $7a $96
	sbc h                                            ; $779f: $9c
	rra                                              ; $77a0: $1f
	xor a                                            ; $77a1: $af
	rra                                              ; $77a2: $1f
	ld sp, hl                                        ; $77a3: $f9
	reti                                             ; $77a4: $d9


	rst $38                                          ; $77a5: $ff
	ld a, [hl]                                       ; $77a6: $7e
	inc l                                            ; $77a7: $2c
	add a                                            ; $77a8: $87
	dec bc                                           ; $77a9: $0b
	dec e                                            ; $77aa: $1d
	dec hl                                           ; $77ab: $2b
	dec e                                            ; $77ac: $1d
	dec hl                                           ; $77ad: $2b
	ld a, a                                          ; $77ae: $7f
	db $f4                                           ; $77af: $f4
	ld a, [$e2f4]                                    ; $77b0: $fa $f4 $e2
	call nc, $d4e2                                   ; $77b3: $d4 $e2 $d4
	add b                                            ; $77b6: $80
	xor $6d                                          ; $77b7: $ee $6d
	jp c, $dadd                                      ; $77b9: $da $dd $da

	or l                                             ; $77bc: $b5
	cp a                                             ; $77bd: $bf
	cp l                                             ; $77be: $bd
	db $10                                           ; $77bf: $10
	sub b                                            ; $77c0: $90
	sbc $20                                          ; $77c1: $de $20
	sbc $40                                          ; $77c3: $de $40
	ld a, [hl]                                       ; $77c5: $7e
	add $7a                                          ; $77c6: $c6 $7a
	sub c                                            ; $77c8: $91
	sbc h                                            ; $77c9: $9c
	ld b, b                                          ; $77ca: $40
	ld [$f354], a                                    ; $77cb: $ea $54 $f3
	ld a, c                                          ; $77ce: $79
	rst GetHLinHL                                          ; $77cf: $cf
	ld a, [$2f98]                                    ; $77d0: $fa $98 $2f
	ld d, a                                          ; $77d3: $57
	dec hl                                           ; $77d4: $2b
	rla                                              ; $77d5: $17
	dec hl                                           ; $77d6: $2b
	dec d                                            ; $77d7: $15
	rst $38                                          ; $77d8: $ff
	ld a, d                                          ; $77d9: $7a
	ret nz                                           ; $77da: $c0

	ei                                               ; $77db: $fb
	sub c                                            ; $77dc: $91
	rst AddAOntoHL                                          ; $77dd: $ef
	db $dd                                           ; $77de: $dd
	rst AddAOntoHL                                          ; $77df: $ef
	cp $ff                                           ; $77e0: $fe $ff
	rst AddAOntoHL                                          ; $77e2: $ef
	rst $38                                          ; $77e3: $ff
	rst $38                                          ; $77e4: $ff
	db $10                                           ; $77e5: $10
	ld [hl+], a                                      ; $77e6: $22
	db $10                                           ; $77e7: $10
	ld bc, $1000                                     ; $77e8: $01 $00 $10
	ld [hl], a                                       ; $77eb: $77
	sbc b                                            ; $77ec: $98
	sbc c                                            ; $77ed: $99
	cp $b0                                           ; $77ee: $fe $b0
	ld b, b                                          ; $77f0: $40
	ret nz                                           ; $77f1: $c0

	cp a                                             ; $77f2: $bf
	sbc $72                                          ; $77f3: $de $72
	call nz, $d67e                                   ; $77f5: $c4 $7e $d6
	sub [hl]                                         ; $77f8: $96
	jr nz, @+$01                                     ; $77f9: $20 $ff

	rst $38                                          ; $77fb: $ff
	rra                                              ; $77fc: $1f
	rlca                                             ; $77fd: $07
	ld [bc], a                                       ; $77fe: $02
	nop                                              ; $77ff: $00
	rst $38                                          ; $7800: $ff
	rrca                                             ; $7801: $0f
	ld d, e                                          ; $7802: $53
	ld a, b                                          ; $7803: $78
	sbc h                                            ; $7804: $9c
	ld a, b                                          ; $7805: $78
	rst $38                                          ; $7806: $ff
	ld hl, sp+$62                                    ; $7807: $f8 $62
	or h                                             ; $7809: $b4
	sbc [hl]                                         ; $780a: $9e
	ldh [$7a], a                                     ; $780b: $e0 $7a
	or h                                             ; $780d: $b4
	sbc [hl]                                         ; $780e: $9e
	add a                                            ; $780f: $87
	ld a, d                                          ; $7810: $7a
	inc h                                            ; $7811: $24
	sbc l                                            ; $7812: $9d
	rra                                              ; $7813: $1f
	dec bc                                           ; $7814: $0b
	ld h, e                                          ; $7815: $63
	sbc h                                            ; $7816: $9c
	sbc h                                            ; $7817: $9c
	ld b, b                                          ; $7818: $40
	add sp, -$0c                                     ; $7819: $e8 $f4
	call c, $9aff                                    ; $781b: $dc $ff $9a
	cp a                                             ; $781e: $bf
	rla                                              ; $781f: $17
	dec bc                                           ; $7820: $0b
	nop                                              ; $7821: $00
	rla                                              ; $7822: $17
	ld l, b                                          ; $7823: $68
	ld h, [hl]                                       ; $7824: $66
	sbc [hl]                                         ; $7825: $9e
	add sp, $71                                      ; $7826: $e8 $71
	ld c, $7a                                        ; $7828: $0e $7a
	ld a, b                                          ; $782a: $78
	sbc h                                            ; $782b: $9c
	cp a                                             ; $782c: $bf
	ld d, a                                          ; $782d: $57
	cpl                                              ; $782e: $2f
	halt                                             ; $782f: $76
	ld [hl], a                                       ; $7830: $77
	ld a, a                                          ; $7831: $7f
	ld e, h                                          ; $7832: $5c
	sbc l                                            ; $7833: $9d
	xor b                                            ; $7834: $a8
	ret nc                                           ; $7835: $d0

	halt                                             ; $7836: $76
	ld h, a                                          ; $7837: $67
	ld a, [hl]                                       ; $7838: $7e
	and b                                            ; $7839: $a0
	ld a, c                                          ; $783a: $79
	ld a, [$be9a]                                    ; $783b: $fa $9a $be
	ld d, l                                          ; $783e: $55
	rrca                                             ; $783f: $0f
	inc bc                                           ; $7840: $03
	nop                                              ; $7841: $00
	ld a, c                                          ; $7842: $79
	ld [$4199], a                                    ; $7843: $ea $99 $41
	xor d                                            ; $7846: $aa
	ldh a, [$df]                                     ; $7847: $f0 $df
	ccf                                              ; $7849: $3f
	rst SubAFromDE                                          ; $784a: $df
	halt                                             ; $784b: $76
	ret nz                                           ; $784c: $c0

	ld a, h                                          ; $784d: $7c
	db $ec                                           ; $784e: $ec
	ld a, a                                          ; $784f: $7f
	sub $72                                          ; $7850: $d6 $72
	ret nz                                           ; $7852: $c0

	ccf                                              ; $7853: $3f
	nop                                              ; $7854: $00
	rst SubAFromHL                                          ; $7855: $d7
	inc sp                                           ; $7856: $33
	sbc l                                            ; $7857: $9d
	inc [hl]                                         ; $7858: $34
	dec [hl]                                         ; $7859: $35
	db $dd                                           ; $785a: $dd
	ld d, l                                          ; $785b: $55
	sbc c                                            ; $785c: $99
	ld d, [hl]                                       ; $785d: $56
	ld h, l                                          ; $785e: $65
	ld b, h                                          ; $785f: $44
	inc sp                                           ; $7860: $33
	inc [hl]                                         ; $7861: $34
	ld b, h                                          ; $7862: $44
	db $dd                                           ; $7863: $dd
	ld d, l                                          ; $7864: $55
	sbc l                                            ; $7865: $9d
	ld d, e                                          ; $7866: $53
	ld b, e                                          ; $7867: $43
	ld [hl], a                                       ; $7868: $77
	or $9a                                           ; $7869: $f6 $9a
	ld b, l                                          ; $786b: $45
	ld d, l                                          ; $786c: $55
	ld d, l                                          ; $786d: $55
	ld d, h                                          ; $786e: $54
	ld b, e                                          ; $786f: $43
	ld e, e                                          ; $7870: $5b
	or $7b                                           ; $7871: $f6 $7b
	ret c                                            ; $7873: $d8

	ld [hl], e                                       ; $7874: $73
	or $de                                           ; $7875: $f6 $de
	ld b, h                                          ; $7877: $44
	sbc e                                            ; $7878: $9b
	ld b, e                                          ; $7879: $43
	inc [hl]                                         ; $787a: $34
	ld b, h                                          ; $787b: $44
	halt                                             ; $787c: $76
	ld a, e                                          ; $787d: $7b
	rst GetHLinHL                                          ; $787e: $cf
	sbc [hl]                                         ; $787f: $9e

Call_040_7880:
	ld h, h                                          ; $7880: $64
	ld a, e                                          ; $7881: $7b
	or $df                                           ; $7882: $f6 $df
	inc sp                                           ; $7884: $33
	db $dd                                           ; $7885: $dd
	ld h, [hl]                                       ; $7886: $66
	sbc l                                            ; $7887: $9d
	ld h, e                                          ; $7888: $63
	inc [hl]                                         ; $7889: $34
	ld [hl], a                                       ; $788a: $77
	or $6b                                           ; $788b: $f6 $6b
	or d                                             ; $788d: $b2
	ld h, e                                          ; $788e: $63
	or $d5                                           ; $788f: $f6 $d5
	inc sp                                           ; $7891: $33
	ld h, e                                          ; $7892: $63
	adc b                                            ; $7893: $88
	ld sp, hl                                        ; $7894: $f9
	reti                                             ; $7895: $d9


	rst $38                                          ; $7896: $ff
	reti                                             ; $7897: $d9


	cpl                                              ; $7898: $2f
	reti                                             ; $7899: $d9


	rst SubAFromDE                                          ; $789a: $df
	rst SubAFromDE                                          ; $789b: $df
	pop af                                           ; $789c: $f1
	sbc c                                            ; $789d: $99
	db $fd                                           ; $789e: $fd
	di                                               ; $789f: $f3
	ld [hl], a                                       ; $78a0: $77
	db $fd                                           ; $78a1: $fd
	halt                                             ; $78a2: $76
	ld [hl], a                                       ; $78a3: $77
	reti                                             ; $78a4: $d9


	rst $38                                          ; $78a5: $ff
	rst SubAFromDE                                          ; $78a6: $df
	and e                                            ; $78a7: $a3
	sbc l                                            ; $78a8: $9d
	inc hl                                           ; $78a9: $23
	and e                                            ; $78aa: $a3
	sbc $23                                          ; $78ab: $de $23
	sbc [hl]                                         ; $78ad: $9e
	and e                                            ; $78ae: $a3
	db $dd                                           ; $78af: $dd
	ld a, h                                          ; $78b0: $7c
	sbc e                                            ; $78b1: $9b
	inc a                                            ; $78b2: $3c
	ld a, h                                          ; $78b3: $7c
	inc a                                            ; $78b4: $3c
	inc a                                            ; $78b5: $3c
	reti                                             ; $78b6: $d9


	and l                                            ; $78b7: $a5
	reti                                             ; $78b8: $d9


	jp Jump_040_679e                                 ; $78b9: $c3 $9e $67


	db $db                                           ; $78bc: $db
	ld c, [hl]                                       ; $78bd: $4e
	sbc [hl]                                         ; $78be: $9e
	ld l, d                                          ; $78bf: $6a
	reti                                             ; $78c0: $d9


	sbc c                                            ; $78c1: $99
	sbc [hl]                                         ; $78c2: $9e
	ld [hl], a                                       ; $78c3: $77
	db $dd                                           ; $78c4: $dd
	ld d, a                                          ; $78c5: $57
	rst SubAFromDE                                          ; $78c6: $df
	ld d, [hl]                                       ; $78c7: $56
	sbc [hl]                                         ; $78c8: $9e
	ld b, [hl]                                       ; $78c9: $46
	reti                                             ; $78ca: $d9


	adc h                                            ; $78cb: $8c
	rst SubAFromDE                                          ; $78cc: $df
	ld l, b                                          ; $78cd: $68
	sbc $e8                                          ; $78ce: $de $e8
	rst SubAFromDE                                          ; $78d0: $df
	jp hl                                            ; $78d1: $e9


	sbc h                                            ; $78d2: $9c
	ret nc                                           ; $78d3: $d0

	pop de                                           ; $78d4: $d1
	pop de                                           ; $78d5: $d1
	sbc $51                                          ; $78d6: $de $51

Call_040_78d8:
	rst SubAFromDE                                          ; $78d8: $df
	ld d, b                                          ; $78d9: $50
	sbc [hl]                                         ; $78da: $9e
	ld h, c                                          ; $78db: $61
	call c, $de36                                    ; $78dc: $dc $36 $de
	inc [hl]                                         ; $78df: $34
	reti                                             ; $78e0: $d9


	rst AddAOntoHL                                          ; $78e1: $ef
	reti                                             ; $78e2: $d9


	ld d, l                                          ; $78e3: $55
	reti                                             ; $78e4: $d9


	db $e3                                           ; $78e5: $e3
	sbc h                                            ; $78e6: $9c
	ld bc, $0313                                     ; $78e7: $01 $13 $03
	db $dd                                           ; $78ea: $dd
	inc de                                           ; $78eb: $13
	sbc [hl]                                         ; $78ec: $9e
	inc sp                                           ; $78ed: $33
	reti                                             ; $78ee: $d9


	rst $38                                          ; $78ef: $ff
	pop de                                           ; $78f0: $d1
	ld hl, sp-$6a                                    ; $78f1: $f8 $96
	inc a                                            ; $78f3: $3c
	jr z, jr_040_791e                                ; $78f4: $28 $28

	ld [$0e09], sp                                   ; $78f6: $08 $09 $0e
	dec bc                                           ; $78f9: $0b
	dec bc                                           ; $78fa: $0b
	rrca                                             ; $78fb: $0f
	call c, $901f                                    ; $78fc: $dc $1f $90
	inc e                                            ; $78ff: $1c
	db $10                                           ; $7900: $10
	dec d                                            ; $7901: $15
	ld d, $18                                        ; $7902: $16 $18
	ld l, l                                          ; $7904: $6d
	add l                                            ; $7905: $85
	and l                                            ; $7906: $a5
	ld d, l                                          ; $7907: $55
	db $fd                                           ; $7908: $fd
	rst $38                                          ; $7909: $ff
	rst $38                                          ; $790a: $ff
	cp $f0                                           ; $790b: $fe $f0
	ret nz                                           ; $790d: $c0

	cp $96                                           ; $790e: $fe $96
	add b                                            ; $7910: $80
	nop                                              ; $7911: $00
	nop                                              ; $7912: $00
	cp $a2                                           ; $7913: $fe $a2
	ld d, d                                          ; $7915: $52
	xor d                                            ; $7916: $aa

Call_040_7917:
	cp $e0                                           ; $7917: $fe $e0
	ld a, e                                          ; $7919: $7b
	rst FarCall                                          ; $791a: $f7
	db $fd                                           ; $791b: $fd
	sbc $03                                          ; $791c: $de $03

jr_040_791e:
	sbc d                                            ; $791e: $9a
	rst $38                                          ; $791f: $ff
	db $d3                                           ; $7920: $d3
	xor e                                            ; $7921: $ab
	rst SubAFromHL                                          ; $7922: $d7
	rst $38                                          ; $7923: $ff
	reti                                             ; $7924: $d9


	inc bc                                           ; $7925: $03
	rst SubAFromDE                                          ; $7926: $df
	dec [hl]                                         ; $7927: $35
	sbc [hl]                                         ; $7928: $9e
	or l                                             ; $7929: $b5
	ld [hl], e                                       ; $792a: $73
	db $fd                                           ; $792b: $fd
	reti                                             ; $792c: $d9


	ei                                               ; $792d: $fb
	call c, $deec                                    ; $792e: $dc $ec $de
	db $fc                                           ; $7931: $fc
	reti                                             ; $7932: $d9


	rst JumpTable                                          ; $7933: $c7
	reti                                             ; $7934: $d9


	ld l, l                                          ; $7935: $6d
	reti                                             ; $7936: $d9


	di                                               ; $7937: $f3
	jp c, $9e39                                      ; $7938: $da $39 $9e

	ld sp, $f7da                                     ; $793b: $31 $da $f7
	sbc [hl]                                         ; $793e: $9e
	rst $38                                          ; $793f: $ff
	ld b, $c0                                        ; $7940: $06 $c0
	sub a                                            ; $7942: $97
	ld [hl], h                                       ; $7943: $74
	or $f6                                           ; $7944: $f6 $f6
	db $f4                                           ; $7946: $f4
	push af                                          ; $7947: $f5
	ld [hl], l                                       ; $7948: $75
	ld [hl], a                                       ; $7949: $77
	push af                                          ; $794a: $f5
	ld h, d                                          ; $794b: $62

Jump_040_794c:
	ret nz                                           ; $794c: $c0

	sbc [hl]                                         ; $794d: $9e
	and d                                            ; $794e: $a2
	db $dd                                           ; $794f: $dd
	and [hl]                                         ; $7950: $a6
	rst SubAFromDE                                          ; $7951: $df
	and h                                            ; $7952: $a4
	sbc h                                            ; $7953: $9c
	ld a, h                                          ; $7954: $7c
	dec a                                            ; $7955: $3d
	add hl, sp                                       ; $7956: $39
	call c, $dd79                                    ; $7957: $dc $79 $dd
	and l                                            ; $795a: $a5
	ld a, a                                          ; $795b: $7f
	ld d, b                                          ; $795c: $50
	rst SubAFromDE                                          ; $795d: $df
	push bc                                          ; $795e: $c5
	db $dd                                           ; $795f: $dd
	jp $e390                                         ; $7960: $c3 $90 $e3


	jp $a3a3                                         ; $7963: $c3 $a3 $a3


	ld b, d                                          ; $7966: $42
	ld b, d                                          ; $7967: $42
	ld [de], a                                       ; $7968: $12
	sub d                                            ; $7969: $92
	sub d                                            ; $796a: $92
	sub e                                            ; $796b: $93
	sub d                                            ; $796c: $92
	sub d                                            ; $796d: $92
	sbc c                                            ; $796e: $99
	sbc c                                            ; $796f: $99
	adc c                                            ; $7970: $89
	call c, $9c09                                    ; $7971: $dc $09 $9c
	ld b, [hl]                                       ; $7974: $46
	ld b, d                                          ; $7975: $42
	ld b, [hl]                                       ; $7976: $46
	call c, $de4e                                    ; $7977: $dc $4e $de
	adc h                                            ; $797a: $8c
	call c, $9b84                                    ; $797b: $dc $84 $9b
	ret nc                                           ; $797e: $d0

	ld d, b                                          ; $797f: $50
	ld [hl], b                                       ; $7980: $70
	ld [hl], b                                       ; $7981: $70
	db $dd                                           ; $7982: $dd
	ld d, b                                          ; $7983: $50
	sbc e                                            ; $7984: $9b
	ld h, c                                          ; $7985: $61
	pop hl                                           ; $7986: $e1
	pop bc                                           ; $7987: $c1
	pop bc                                           ; $7988: $c1
	db $dd                                           ; $7989: $dd
	pop hl                                           ; $798a: $e1
	sub a                                            ; $798b: $97
	inc [hl]                                         ; $798c: $34
	inc d                                            ; $798d: $14
	inc d                                            ; $798e: $14
	add h                                            ; $798f: $84
	inc b                                            ; $7990: $04
	add h                                            ; $7991: $84
	sub h                                            ; $7992: $94
	call nz, $efda                                   ; $7993: $c4 $da $ef
	sbc e                                            ; $7996: $9b
	xor a                                            ; $7997: $af
	ld d, c                                          ; $7998: $51
	ld d, c                                          ; $7999: $51
	ld d, l                                          ; $799a: $55
	sbc $15                                          ; $799b: $de $15
	ld a, a                                          ; $799d: $7f
	db $fc                                           ; $799e: $fc
	reti                                             ; $799f: $d9


	db $e3                                           ; $79a0: $e3
	reti                                             ; $79a1: $d9


jr_040_79a2:
	dec sp                                           ; $79a2: $3b
	reti                                             ; $79a3: $d9


	rst FarCall                                          ; $79a4: $f7
	pop de                                           ; $79a5: $d1
	ld hl, sp-$63                                    ; $79a6: $f8 $9d
	jr nz, jr_040_79ba                               ; $79a8: $20 $10

	db $db                                           ; $79aa: $db
	jr nc, jr_040_79a2                               ; $79ab: $30 $f5

	sbc e                                            ; $79ad: $9b
	ld a, a                                          ; $79ae: $7f
	rst JumpTable                                          ; $79af: $c7
	add sp, -$30                                     ; $79b0: $e8 $d0
	ld l, a                                          ; $79b2: $6f
	rst FarCall                                          ; $79b3: $f7
	sbc l                                            ; $79b4: $9d
	ld d, a                                          ; $79b5: $57
	ld l, a                                          ; $79b6: $6f
	ld l, a                                          ; $79b7: $6f
	inc h                                            ; $79b8: $24
	sbc [hl]                                         ; $79b9: $9e

jr_040_79ba:
	inc b                                            ; $79ba: $04
	ld h, e                                          ; $79bb: $63
	dec de                                           ; $79bc: $1b
	db $dd                                           ; $79bd: $dd
	inc bc                                           ; $79be: $03
	rst SubAFromDE                                          ; $79bf: $df
	rst $38                                          ; $79c0: $ff
	ld a, [hl]                                       ; $79c1: $7e
	ld l, e                                          ; $79c2: $6b
	call c, $de03                                    ; $79c3: $dc $03 $de
	rst $38                                          ; $79c6: $ff
	db $dd                                           ; $79c7: $dd
	or l                                             ; $79c8: $b5
	sbc e                                            ; $79c9: $9b
	cp l                                             ; $79ca: $bd
	or l                                             ; $79cb: $b5
	cp l                                             ; $79cc: $bd
	cp l                                             ; $79cd: $bd
	reti                                             ; $79ce: $d9


	ei                                               ; $79cf: $fb
	sbc e                                            ; $79d0: $9b
	db $fc                                           ; $79d1: $fc
	cp $de                                           ; $79d2: $fe $de
	sbc $dd                                          ; $79d4: $de $dd
	call c, $c7df                                    ; $79d6: $dc $df $c7
	db $db                                           ; $79d9: $db
	rst SubAFromBC                                          ; $79da: $e7
	reti                                             ; $79db: $d9


	ld h, l                                          ; $79dc: $65
	reti                                             ; $79dd: $d9


	di                                               ; $79de: $f3
	db $dd                                           ; $79df: $dd
	ld sp, $11dd                                     ; $79e0: $31 $dd $11
	reti                                             ; $79e3: $d9


	rst $38                                          ; $79e4: $ff
	ld b, $c0                                        ; $79e5: $06 $c0

Call_040_79e7:
	sbc e                                            ; $79e7: $9b
	rst FarCall                                          ; $79e8: $f7
	ld [hl], a                                       ; $79e9: $77
	ld [hl], a                                       ; $79ea: $77
	ld [hl], l                                       ; $79eb: $75
	sbc $f5                                          ; $79ec: $de $f5
	ld a, [hl]                                       ; $79ee: $7e
	sub a                                            ; $79ef: $97
	jp c, $9bff                                      ; $79f0: $da $ff $9b

	and h                                            ; $79f3: $a4
	cp h                                             ; $79f4: $bc
	or h                                             ; $79f5: $b4
	or h                                             ; $79f6: $b4
	db $dd                                           ; $79f7: $dd
	inc h                                            ; $79f8: $24
	sbc e                                            ; $79f9: $9b

jr_040_79fa:
	add hl, sp                                       ; $79fa: $39
	ld h, c                                          ; $79fb: $61
	add hl, hl                                       ; $79fc: $29
	add hl, hl                                       ; $79fd: $29
	sbc $b9                                          ; $79fe: $de $b9
	sbc l                                            ; $7a00: $9d
	ld sp, hl                                        ; $7a01: $f9
	push bc                                          ; $7a02: $c5
	call c, Call_040_7fe5                            ; $7a03: $dc $e5 $7f
	ld a, [$a39e]                                    ; $7a06: $fa $9e $a3
	call c, Call_040_7f83                            ; $7a09: $dc $83 $7f
	ld a, [$92de]                                    ; $7a0c: $fa $de $92
	sbc [hl]                                         ; $7a0f: $9e
	sub h                                            ; $7a10: $94
	sbc $84                                          ; $7a11: $de $84
	sbc [hl]                                         ; $7a13: $9e
	add l                                            ; $7a14: $85
	db $dd                                           ; $7a15: $dd
	add hl, bc                                       ; $7a16: $09
	sbc $19                                          ; $7a17: $de $19
	sbc [hl]                                         ; $7a19: $9e
	jr jr_040_79fa                                   ; $7a1a: $18 $de

	ld c, [hl]                                       ; $7a1c: $4e
	call c, $d9ce                                    ; $7a1d: $dc $ce $d9
	add h                                            ; $7a20: $84
	reti                                             ; $7a21: $d9


	ld d, d                                          ; $7a22: $52
	reti                                             ; $7a23: $d9


	pop hl                                           ; $7a24: $e1
	sub l                                            ; $7a25: $95
	call nz, $c494                                   ; $7a26: $c4 $94 $c4
	ld b, h                                          ; $7a29: $44
	call nz, $c0c4                                   ; $7a2a: $c4 $c4 $c0
	ret nz                                           ; $7a2d: $c0

	xor a                                            ; $7a2e: $af
	rst AddAOntoHL                                          ; $7a2f: $ef
	db $db                                           ; $7a30: $db
	xor a                                            ; $7a31: $af
	db $dd                                           ; $7a32: $dd
	dec d                                            ; $7a33: $15
	halt                                             ; $7a34: $76
	cp [hl]                                          ; $7a35: $be
	ld d, d                                          ; $7a36: $52
	ret nz                                           ; $7a37: $c0

	rst SubAFromDE                                          ; $7a38: $df
	ei                                               ; $7a39: $fb
	ld l, [hl]                                       ; $7a3a: $6e
	ret nz                                           ; $7a3b: $c0

jr_040_7a3c:
	rst SubAFromDE                                          ; $7a3c: $df
	scf                                              ; $7a3d: $37
	ld b, d                                          ; $7a3e: $42
	ret nz                                           ; $7a3f: $c0

	reti                                             ; $7a40: $d9


	jr nc, jr_040_7a3c                               ; $7a41: $30 $f9

	sbc h                                            ; $7a43: $9c
	ret nz                                           ; $7a44: $c0

	ret nc                                           ; $7a45: $d0

	ldh [$dc], a                                     ; $7a46: $e0 $dc
	ret nz                                           ; $7a48: $c0

	sbc h                                            ; $7a49: $9c
	ld a, a                                          ; $7a4a: $7f
	ld l, a                                          ; $7a4b: $6f
	ld e, a                                          ; $7a4c: $5f
	call c, $807f                                    ; $7a4d: $dc $7f $80
	nop                                              ; $7a50: $00
	ld bc, $0102                                     ; $7a51: $01 $02 $01
	ld a, [hl+]                                      ; $7a54: $2a
	ld d, c                                          ; $7a55: $51
	xor e                                            ; $7a56: $ab
	ld e, c                                          ; $7a57: $59
	rst $38                                          ; $7a58: $ff
	cp $fd                                           ; $7a59: $fe $fd
	cp $d5                                           ; $7a5b: $fe $d5
	xor [hl]                                         ; $7a5d: $ae

jr_040_7a5e:
	ld d, h                                          ; $7a5e: $54
	and [hl]                                         ; $7a5f: $a6
	inc bc                                           ; $7a60: $03
	ld b, a                                          ; $7a61: $47
	xor a                                            ; $7a62: $af
	ld l, a                                          ; $7a63: $6f
	xor a                                            ; $7a64: $af
	ld l, a                                          ; $7a65: $6f
	rst AddAOntoHL                                          ; $7a66: $ef
	rst AddAOntoHL                                          ; $7a67: $ef
	rst $38                                          ; $7a68: $ff
	cp e                                             ; $7a69: $bb
	ld d, e                                          ; $7a6a: $53
	sub e                                            ; $7a6b: $93
	ld d, e                                          ; $7a6c: $53
	sub e                                            ; $7a6d: $93
	inc de                                           ; $7a6e: $13
	sbc h                                            ; $7a6f: $9c
	inc de                                           ; $7a70: $13
	ld a, l                                          ; $7a71: $7d
	dec a                                            ; $7a72: $3d
	db $dd                                           ; $7a73: $dd
	ld a, l                                          ; $7a74: $7d
	ld a, a                                          ; $7a75: $7f
	ei                                               ; $7a76: $fb
	reti                                             ; $7a77: $d9


	ei                                               ; $7a78: $fb
	sbc [hl]                                         ; $7a79: $9e
	call c, $d8dd                                    ; $7a7a: $dc $dd $d8
	rst SubAFromDE                                          ; $7a7d: $df

Call_040_7a7e:
	ret z                                            ; $7a7e: $c8

	sbc [hl]                                         ; $7a7f: $9e
	ret nz                                           ; $7a80: $c0

	call c, Call_040_79e7                            ; $7a81: $dc $e7 $79
	and b                                            ; $7a84: $a0
	call c, $9c65                                    ; $7a85: $dc $65 $9c
	ld h, a                                          ; $7a88: $67
	rst SubAFromBC                                          ; $7a89: $e7
	ld h, a                                          ; $7a8a: $67
	call c, $def3                                    ; $7a8b: $dc $f3 $de
	pop af                                           ; $7a8e: $f1
	reti                                             ; $7a8f: $d9


	ld de, $c002                                     ; $7a90: $11 $02 $c0
	jp c, $dfdf                                      ; $7a93: $da $df $df

	ld [hl], l                                       ; $7a96: $75
	rst SubAFromDE                                          ; $7a97: $df
	dec [hl]                                         ; $7a98: $35
	rst SubAFromDE                                          ; $7a99: $df

jr_040_7a9a:
	ld sp, $21df                                     ; $7a9a: $31 $df $21
	reti                                             ; $7a9d: $d9


	rst $38                                          ; $7a9e: $ff
	rst SubAFromDE                                          ; $7a9f: $df
	inc a                                            ; $7aa0: $3c
	sbc [hl]                                         ; $7aa1: $9e
	ld a, h                                          ; $7aa2: $7c
	sbc $fc                                          ; $7aa3: $de $fc
	ld a, l                                          ; $7aa5: $7d
	ld e, $9c                                        ; $7aa6: $1e $9c
	and e                                            ; $7aa8: $a3
	and c                                            ; $7aa9: $a1
	and c                                            ; $7aaa: $a1
	sbc $21                                          ; $7aab: $de $21
	ld a, a                                          ; $7aad: $7f
	rst SubAFromBC                                          ; $7aae: $e7
	sbc $a5                                          ; $7aaf: $de $a5
	sbc [hl]                                         ; $7ab1: $9e
	push bc                                          ; $7ab2: $c5
	ld l, b                                          ; $7ab3: $68
	ld b, b                                          ; $7ab4: $40
	sbc [hl]                                         ; $7ab5: $9e
	add e                                            ; $7ab6: $83
	db $dd                                           ; $7ab7: $dd
	jp $859e                                         ; $7ab8: $c3 $9e $85


	sbc $8d                                          ; $7abb: $de $8d
	sbc e                                            ; $7abd: $9b
	adc h                                            ; $7abe: $8c
	sbc l                                            ; $7abf: $9d
	adc l                                            ; $7ac0: $8d
	sbc l                                            ; $7ac1: $9d
	db $dd                                           ; $7ac2: $dd
	jr jr_040_7a5e                                   ; $7ac3: $18 $99

	add hl, de                                       ; $7ac5: $19
	ld [$0818], sp                                   ; $7ac6: $08 $18 $08
	adc $ce                                          ; $7ac9: $ce $ce
	call c, $9e4e                                    ; $7acb: $dc $4e $9e
	ld c, d                                          ; $7ace: $4a
	ld h, $c0                                        ; $7acf: $26 $c0
	adc a                                            ; $7ad1: $8f
	pop bc                                           ; $7ad2: $c1
	ret                                              ; $7ad3: $c9


jr_040_7ad4:
	ret                                              ; $7ad4: $c9


	ld l, c                                          ; $7ad5: $69
	ld l, e                                          ; $7ad6: $6b
	ld l, e                                          ; $7ad7: $6b
	ld h, e                                          ; $7ad8: $63
	ld h, e                                          ; $7ad9: $63
	xor [hl]                                         ; $7ada: $ae
	and [hl]                                         ; $7adb: $a6
	and [hl]                                         ; $7adc: $a6
	add [hl]                                         ; $7add: $86
	add h                                            ; $7ade: $84
	add h                                            ; $7adf: $84
	adc h                                            ; $7ae0: $8c
	adc h                                            ; $7ae1: $8c
	db $dd                                           ; $7ae2: $dd
	sub h                                            ; $7ae3: $94
	sbc [hl]                                         ; $7ae4: $9e
	call nc, $fe7b                                   ; $7ae5: $d4 $7b $fe
	reti                                             ; $7ae8: $d9


	ld h, e                                          ; $7ae9: $63
	rst SubAFromDE                                          ; $7aea: $df
	ld [$aadd], a                                    ; $7aeb: $ea $dd $aa
	sbc e                                            ; $7aee: $9b
	adc d                                            ; $7aef: $8a
	xor b                                            ; $7af0: $a8
	scf                                              ; $7af1: $37
	scf                                              ; $7af2: $37
	db $db                                           ; $7af3: $db
	ld [hl], a                                       ; $7af4: $77
	db $db                                           ; $7af5: $db
	ld hl, sp+$5c                                    ; $7af6: $f8 $5c
	jr c, jr_040_7ad4                                ; $7af8: $38 $da

	jr nc, jr_040_7a9a                               ; $7afa: $30 $9e

	db $fc                                           ; $7afc: $fc
	ld sp, hl                                        ; $7afd: $f9
	adc e                                            ; $7afe: $8b

Call_040_7aff:
	jp nz, $cac4                                     ; $7aff: $c2 $c4 $ca

	add $ce                                          ; $7b02: $c6 $ce
	sub $ce                                          ; $7b04: $d6 $ce
	sbc $7d                                          ; $7b06: $de $7d
	ld a, e                                          ; $7b08: $7b
	ld [hl], l                                       ; $7b09: $75
	ld a, c                                          ; $7b0a: $79
	ld [hl], c                                       ; $7b0b: $71
	ld l, c                                          ; $7b0c: $69
	ld [hl], c                                       ; $7b0d: $71
	ld h, c                                          ; $7b0e: $61
	cp e                                             ; $7b0f: $bb
	ld a, e                                          ; $7b10: $7b
	cp e                                             ; $7b11: $bb
	ld a, e                                          ; $7b12: $7b
	db $dd                                           ; $7b13: $dd
	ei                                               ; $7b14: $fb
	sbc e                                            ; $7b15: $9b
	ld b, h                                          ; $7b16: $44
	add h                                            ; $7b17: $84
	ld b, h                                          ; $7b18: $44
	add h                                            ; $7b19: $84
	db $dd                                           ; $7b1a: $dd
	inc b                                            ; $7b1b: $04
	reti                                             ; $7b1c: $d9


	rst AddAOntoHL                                          ; $7b1d: $ef
	reti                                             ; $7b1e: $d9


	inc de                                           ; $7b1f: $13
	ld a, e                                          ; $7b20: $7b
	ld hl, $35de                                     ; $7b21: $21 $de $35

Jump_040_7b24:
	sbc l                                            ; $7b24: $9d
	ld h, l                                          ; $7b25: $65
	ld [hl], l                                       ; $7b26: $75
	reti                                             ; $7b27: $d9


	ei                                               ; $7b28: $fb
	rst SubAFromDE                                          ; $7b29: $df
	ret nz                                           ; $7b2a: $c0

	sbc [hl]                                         ; $7b2b: $9e
	call z, $cadc                                    ; $7b2c: $cc $dc $ca
	rst SubAFromDE                                          ; $7b2f: $df
	rst $38                                          ; $7b30: $ff
	db $db                                           ; $7b31: $db
	rst FarCall                                          ; $7b32: $f7

Call_040_7b33:
	sbc $66                                          ; $7b33: $de $66
	call c, $d96e                                    ; $7b35: $dc $6e $d9
	pop af                                           ; $7b38: $f1
	rst SubAFromDE                                          ; $7b39: $df
	ld de, $13db                                     ; $7b3a: $11 $db $13
	ld [bc], a                                       ; $7b3d: $02
	ret nz                                           ; $7b3e: $c0

	jp c, $dedf                                      ; $7b3f: $da $df $de

	ld hl, $957c                                     ; $7b42: $21 $7c $95
	sbc h                                            ; $7b45: $9c
	pop af                                           ; $7b46: $f1
	db $e3                                           ; $7b47: $e3
	ld h, b                                          ; $7b48: $60
	reti                                             ; $7b49: $d9


	rst $38                                          ; $7b4a: $ff
	sub l                                            ; $7b4b: $95
	cp [hl]                                          ; $7b4c: $be
	ld a, [$b2ba]                                    ; $7b4d: $fa $ba $b2
	cp d                                             ; $7b50: $ba
	cp d                                             ; $7b51: $ba
	or d                                             ; $7b52: $b2
	or d                                             ; $7b53: $b2
	ld h, c                                          ; $7b54: $61
	ld hl, $61db                                     ; $7b55: $21 $db $61
	db $dd                                           ; $7b58: $dd
	and l                                            ; $7b59: $a5
	db $dd                                           ; $7b5a: $dd
	push hl                                          ; $7b5b: $e5
	reti                                             ; $7b5c: $d9


	jp $1d9c                                         ; $7b5d: $c3 $9c $1d


	inc e                                            ; $7b60: $1c
	sbc l                                            ; $7b61: $9d
	sbc $8d                                          ; $7b62: $de $8d
	rst SubAFromDE                                          ; $7b64: $df
	add l                                            ; $7b65: $85
	sbc h                                            ; $7b66: $9c
	adc b                                            ; $7b67: $88
	adc c                                            ; $7b68: $89
	ld [$18dc], sp                                   ; $7b69: $08 $dc $18
	sbc h                                            ; $7b6c: $9c
	adc $ca                                          ; $7b6d: $ce $ca
	ld c, d                                          ; $7b6f: $4a
	db $dd                                           ; $7b70: $dd
	jp z, $c04e                                      ; $7b71: $ca $4e $c0

	sbc l                                            ; $7b74: $9d
	ld d, [hl]                                       ; $7b75: $56
	ld d, $62                                        ; $7b76: $16 $62
	ret nz                                           ; $7b78: $c0

	sbc [hl]                                         ; $7b79: $9e
	ld h, e                                          ; $7b7a: $63
	sbc $23                                          ; $7b7b: $de $23
	sbc e                                            ; $7b7d: $9b
	ld h, c                                          ; $7b7e: $61
	ld h, e                                          ; $7b7f: $63
	ld b, e                                          ; $7b80: $43
	ld b, c                                          ; $7b81: $41
	db $dd                                           ; $7b82: $dd
	adc h                                            ; $7b83: $8c
	sbc [hl]                                         ; $7b84: $9e
	adc [hl]                                         ; $7b85: $8e
	ld a, e                                          ; $7b86: $7b
	db $fd                                           ; $7b87: $fd
	sbc [hl]                                         ; $7b88: $9e
	sub l                                            ; $7b89: $95
	db $db                                           ; $7b8a: $db
	and l                                            ; $7b8b: $a5
	sbc l                                            ; $7b8c: $9d

Jump_040_7b8d:
	push hl                                          ; $7b8d: $e5
	ld h, e                                          ; $7b8e: $63
	jp c, $de43                                      ; $7b8f: $da $43 $de

	xor b                                            ; $7b92: $a8
	sbc d                                            ; $7b93: $9a
	cp d                                             ; $7b94: $ba
	sbc d                                            ; $7b95: $9a
	sbc d                                            ; $7b96: $9a
	cp b                                             ; $7b97: $b8
	cp b                                             ; $7b98: $b8
	sbc $77                                          ; $7b99: $de $77
	call c, $de67                                    ; $7b9b: $dc $67 $de
	rst $38                                          ; $7b9e: $ff
	reti                                             ; $7b9f: $d9


	ld hl, sp-$27                                    ; $7ba0: $f8 $d9
	rst $38                                          ; $7ba2: $ff
	sbc l                                            ; $7ba3: $9d
	ld a, a                                          ; $7ba4: $7f
	ld bc, $9dfb                                     ; $7ba5: $01 $fb $9d
	add b                                            ; $7ba8: $80
	cp $de                                           ; $7ba9: $fe $de
	rst $38                                          ; $7bab: $ff
	sbc [hl]                                         ; $7bac: $9e
	xor $dd                                          ; $7bad: $ee $dd
	rst $38                                          ; $7baf: $ff
	sbc h                                            ; $7bb0: $9c
	rlca                                             ; $7bb1: $07
	nop                                              ; $7bb2: $00
	nop                                              ; $7bb3: $00
	ld [hl], e                                       ; $7bb4: $73
	db $ec                                           ; $7bb5: $ec
	ld a, e                                          ; $7bb6: $7b
	db $dd                                           ; $7bb7: $dd
	sbc h                                            ; $7bb8: $9c
	ei                                               ; $7bb9: $fb
	cp e                                             ; $7bba: $bb
	db $fd                                           ; $7bbb: $fd
	sbc $ff                                          ; $7bbc: $de $ff
	sbc h                                            ; $7bbe: $9c

Call_040_7bbf:
	rra                                              ; $7bbf: $1f
	nop                                              ; $7bc0: $00
	inc b                                            ; $7bc1: $04
	ld [hl], b                                       ; $7bc2: $70
	dec a                                            ; $7bc3: $3d
	sbc l                                            ; $7bc4: $9d
	ldh [rIE], a                                     ; $7bc5: $e0 $ff
	ld a, c                                          ; $7bc7: $79
	add [hl]                                         ; $7bc8: $86
	ld a, a                                          ; $7bc9: $7f
	cp $de                                           ; $7bca: $fe $de
	rst $38                                          ; $7bcc: $ff
	rst SubAFromDE                                          ; $7bcd: $df
	inc de                                           ; $7bce: $13
	db $db                                           ; $7bcf: $db
	inc bc                                           ; $7bd0: $03
	ld a, c                                          ; $7bd1: $79
	and e                                            ; $7bd2: $a3
	sbc d                                            ; $7bd3: $9a
	ld h, a                                          ; $7bd4: $67
	ld [hl], a                                       ; $7bd5: $77
	ld l, l                                          ; $7bd6: $6d
	ld l, a                                          ; $7bd7: $6f
	dec b                                            ; $7bd8: $05
	reti                                             ; $7bd9: $d9


	ei                                               ; $7bda: $fb
	rst SubAFromDE                                          ; $7bdb: $df
	ret z                                            ; $7bdc: $c8

	sbc c                                            ; $7bdd: $99
	db $ec                                           ; $7bde: $ec
	xor $ef                                          ; $7bdf: $ee $ef
	rst AddAOntoHL                                          ; $7be1: $ef
	rst GetHLinHL                                          ; $7be2: $cf
	rst AddAOntoHL                                          ; $7be3: $ef
	reti                                             ; $7be4: $d9


	rst FarCall                                          ; $7be5: $f7
	db $db                                           ; $7be6: $db
	ld l, [hl]                                       ; $7be7: $6e
	sbc l                                            ; $7be8: $9d
	ld l, a                                          ; $7be9: $6f
	ld l, l                                          ; $7bea: $6d
	jp c, $9cf1                                      ; $7beb: $da $f1 $9c

	di                                               ; $7bee: $f3
	inc de                                           ; $7bef: $13
	rla                                              ; $7bf0: $17
	db $dd                                           ; $7bf1: $dd
	inc de                                           ; $7bf2: $13
	sbc e                                            ; $7bf3: $9b
	inc sp                                           ; $7bf4: $33
	inc de                                           ; $7bf5: $13
	rst $38                                          ; $7bf6: $ff
	ei                                               ; $7bf7: $fb

Call_040_7bf8:
	ld l, $c0                                        ; $7bf8: $2e $c0

Jump_040_7bfa:
	sbc [hl]                                         ; $7bfa: $9e
	db $10                                           ; $7bfb: $10
	db $db                                           ; $7bfc: $db
	ccf                                              ; $7bfd: $3f

Call_040_7bfe:
	sbc l                                            ; $7bfe: $9d

Call_040_7bff:
	rra                                              ; $7bff: $1f
	rst SubAFromDE                                          ; $7c00: $df
	call c, $96c0                                    ; $7c01: $dc $c0 $96
	ret nc                                           ; $7c04: $d0

	rst GetHLinHL                                          ; $7c05: $cf
	nop                                              ; $7c06: $00
	rst $38                                          ; $7c07: $ff
	add b                                            ; $7c08: $80
	and $cf                                          ; $7c09: $e6 $cf
	pop hl                                           ; $7c0b: $e1
	jp hl                                            ; $7c0c: $e9


	ld a, e                                          ; $7c0d: $7b
	ret c                                            ; $7c0e: $d8

	sub l                                            ; $7c0f: $95
	ld a, a                                          ; $7c10: $7f
	cp a                                             ; $7c11: $bf
	jr nc, @+$20                                     ; $7c12: $30 $1e

	rra                                              ; $7c14: $1f
	rst $38                                          ; $7c15: $ff
	ld b, $ff                                        ; $7c16: $06 $ff
	inc h                                            ; $7c18: $24
	pop af                                           ; $7c19: $f1
	ld l, a                                          ; $7c1a: $6f
	ret z                                            ; $7c1b: $c8

	ld [hl], e                                       ; $7c1c: $73
	call nz, $ff9b                                   ; $7c1d: $c4 $9b $ff
	jr nz, @+$01                                     ; $7c20: $20 $ff

	cp $77                                           ; $7c22: $fe $77
	call nz, $be73                                   ; $7c24: $c4 $73 $be
	ld [hl], a                                       ; $7c27: $77
	ei                                               ; $7c28: $fb
	sbc [hl]                                         ; $7c29: $9e
	ld h, [hl]                                       ; $7c2a: $66
	ld a, e                                          ; $7c2b: $7b
	ldh a, [$9d]                                     ; $7c2c: $f0 $9d
	cp $f0                                           ; $7c2e: $fe $f0
	ld l, a                                          ; $7c30: $6f
	ldh a, [$9e]                                     ; $7c31: $f0 $9e
	inc bc                                           ; $7c33: $03
	ld a, e                                          ; $7c34: $7b
	ei                                               ; $7c35: $fb
	sbc d                                            ; $7c36: $9a
	ld de, $f4fe                                     ; $7c37: $11 $fe $f4
	nop                                              ; $7c3a: $00
	rst $38                                          ; $7c3b: $ff
	ld a, e                                          ; $7c3c: $7b
	cp $7f                                           ; $7c3d: $fe $7f
	cpl                                              ; $7c3f: $2f
	rst SubAFromDE                                          ; $7c40: $df
	rst $38                                          ; $7c41: $ff
	sbc [hl]                                         ; $7c42: $9e
	ldh [$7b], a                                     ; $7c43: $e0 $7b
	ldh a, [$9e]                                     ; $7c45: $f0 $9e
	sbc [hl]                                         ; $7c47: $9e
	ld [hl], a                                       ; $7c48: $77
	add $7e                                          ; $7c49: $c6 $7e
	ld [hl], d                                       ; $7c4b: $72
	rst $38                                          ; $7c4c: $ff
	sbc [hl]                                         ; $7c4d: $9e
	dec de                                           ; $7c4e: $1b
	ld l, a                                          ; $7c4f: $6f
	ret nc                                           ; $7c50: $d0

	sbc c                                            ; $7c51: $99
	inc sp                                           ; $7c52: $33
	rst $38                                          ; $7c53: $ff
	inc bc                                           ; $7c54: $03
	inc bc                                           ; $7c55: $03
	rst $38                                          ; $7c56: $ff
	rra                                              ; $7c57: $1f
	ld e, a                                          ; $7c58: $5f
	ret nz                                           ; $7c59: $c0

	sbc b                                            ; $7c5a: $98
	add c                                            ; $7c5b: $81
	rst $38                                          ; $7c5c: $ff
	nop                                              ; $7c5d: $00
	ld a, a                                          ; $7c5e: $7f
	nop                                              ; $7c5f: $00
	cp $fe                                           ; $7c60: $fe $fe
	ld [hl], e                                       ; $7c62: $73
	and b                                            ; $7c63: $a0
	sbc h                                            ; $7c64: $9c
	rst $38                                          ; $7c65: $ff
	ld bc, $7b01                                     ; $7c66: $01 $01 $7b
	push bc                                          ; $7c69: $c5
	sbc l                                            ; $7c6a: $9d
	inc bc                                           ; $7c6b: $03
	ld sp, hl                                        ; $7c6c: $f9
	ld a, d                                          ; $7c6d: $7a
	db $f4                                           ; $7c6e: $f4
	ld a, e                                          ; $7c6f: $7b
	ldh a, [$9e]                                     ; $7c70: $f0 $9e
	db $fc                                           ; $7c72: $fc
	ld a, e                                          ; $7c73: $7b
	ld [$ffdf], a                                    ; $7c74: $ea $df $ff
	adc a                                            ; $7c77: $8f
	ldh a, [$c3]                                     ; $7c78: $f0 $c3
	ld sp, hl                                        ; $7c7a: $f9
	push af                                          ; $7c7b: $f5
	db $f4                                           ; $7c7c: $f4
	db $f4                                           ; $7c7d: $f4
	db $fc                                           ; $7c7e: $fc
	db $fc                                           ; $7c7f: $fc
	nop                                              ; $7c80: $00
	daa                                              ; $7c81: $27
	jr nc, jr_040_7cbc                               ; $7c82: $30 $38

	add hl, sp                                       ; $7c84: $39
	add hl, sp                                       ; $7c85: $39
	ld sp, $77f1                                     ; $7c86: $31 $f1 $77
	reti                                             ; $7c89: $d9


	sbc l                                            ; $7c8a: $9d
	ld hl, sp-$80                                    ; $7c8b: $f8 $80
	ld a, e                                          ; $7c8d: $7b
	call nz, $de7b                                   ; $7c8e: $c4 $7b $de
	sbc e                                            ; $7c91: $9b
	rlca                                             ; $7c92: $07
	ld a, a                                          ; $7c93: $7f
	add b                                            ; $7c94: $80
	add b                                            ; $7c95: $80
	ld [hl], e                                       ; $7c96: $73
	scf                                              ; $7c97: $37
	ld a, h                                          ; $7c98: $7c
	and d                                            ; $7c99: $a2
	sbc l                                            ; $7c9a: $9d
	xor $00                                          ; $7c9b: $ee $00
	halt                                             ; $7c9d: $76
	cp e                                             ; $7c9e: $bb
	ld a, [hl]                                       ; $7c9f: $7e
	or $9e                                           ; $7ca0: $f6 $9e
	ld de, $276b                                     ; $7ca2: $11 $6b $27
	sbc [hl]                                         ; $7ca5: $9e
	db $10                                           ; $7ca6: $10
	ld l, e                                          ; $7ca7: $6b
	or c                                             ; $7ca8: $b1
	sbc [hl]                                         ; $7ca9: $9e
	rst AddAOntoHL                                          ; $7caa: $ef
	ld a, e                                          ; $7cab: $7b
	ld a, c                                          ; $7cac: $79
	ld l, a                                          ; $7cad: $6f
	ld [$fedb], sp                                   ; $7cae: $08 $db $fe
	adc b                                            ; $7cb1: $88
	ld sp, $0b87                                     ; $7cb2: $31 $87 $0b
	ld [hl+], a                                      ; $7cb5: $22
	jp $b7f7                                         ; $7cb6: $c3 $f7 $b7


	or l                                             ; $7cb9: $b5
	dec [hl]                                         ; $7cba: $35
	ld a, b                                          ; $7cbb: $78

jr_040_7cbc:
	inc b                                            ; $7cbc: $04
	rst JumpTable                                          ; $7cbd: $c7
	ld a, a                                          ; $7cbe: $7f
	ld c, e                                          ; $7cbf: $4b
	ld l, e                                          ; $7cc0: $6b
	ld l, e                                          ; $7cc1: $6b
	db $eb                                           ; $7cc2: $eb
	inc b                                            ; $7cc3: $04
	nop                                              ; $7cc4: $00
	ret z                                            ; $7cc5: $c8

	nop                                              ; $7cc6: $00
	nop                                              ; $7cc7: $00
	ret nz                                           ; $7cc8: $c0

	ld [hl], a                                       ; $7cc9: $77
	ld b, h                                          ; $7cca: $44
	ld h, [hl]                                       ; $7ccb: $66
	ldh [$7b], a                                     ; $7ccc: $e0 $7b
	push bc                                          ; $7cce: $c5
	ld a, e                                          ; $7ccf: $7b
	db $f4                                           ; $7cd0: $f4
	sbc [hl]                                         ; $7cd1: $9e
	jp Jump_040_6077                                 ; $7cd2: $c3 $77 $60


	ld [hl], a                                       ; $7cd5: $77
	cp h                                             ; $7cd6: $bc
	ld [hl], e                                       ; $7cd7: $73
	ld d, a                                          ; $7cd8: $57
	rst SubAFromDE                                          ; $7cd9: $df
	rst $38                                          ; $7cda: $ff
	sbc [hl]                                         ; $7cdb: $9e
	adc $77                                          ; $7cdc: $ce $77
	adc a                                            ; $7cde: $8f
	ld a, [hl-]                                      ; $7cdf: $3a
	ret nz                                           ; $7ce0: $c0

	reti                                             ; $7ce1: $d9


	rra                                              ; $7ce2: $1f
	reti                                             ; $7ce3: $d9


	call nz, $109d                                   ; $7ce4: $c4 $9d $10
	inc de                                           ; $7ce7: $13
	db $dd                                           ; $7ce8: $dd
	db $10                                           ; $7ce9: $10
	ld a, c                                          ; $7cea: $79
	ld d, b                                          ; $7ceb: $50
	sbc [hl]                                         ; $7cec: $9e
	db $fc                                           ; $7ced: $fc
	db $dd                                           ; $7cee: $dd
	rst $38                                          ; $7cef: $ff
	rst SubAFromDE                                          ; $7cf0: $df
	db $fc                                           ; $7cf1: $fc
	sbc e                                            ; $7cf2: $9b
	ld bc, $5fd9                                     ; $7cf3: $01 $d9 $5f
	db $dd                                           ; $7cf6: $dd
	sbc $d9                                          ; $7cf7: $de $d9
	sbc h                                            ; $7cf9: $9c
	pop de                                           ; $7cfa: $d1
	rst $38                                          ; $7cfb: $ff
	ld hl, $4074                                     ; $7cfc: $21 $74 $40

Call_040_7cff:
	rst SubAFromDE                                          ; $7cff: $df
	ld hl, $bfd9                                     ; $7d00: $21 $d9 $bf
	reti                                             ; $7d03: $d9


	ld b, b                                          ; $7d04: $40
	sbc $ff                                          ; $7d05: $de $ff
	sbc d                                            ; $7d07: $9a
	db $fd                                           ; $7d08: $fd
	ld a, [$eaf5]                                    ; $7d09: $fa $f5 $ea
	call nc, $a85b                                   ; $7d0c: $d4 $5b $a8
	sbc d                                            ; $7d0f: $9a
	ld e, a                                          ; $7d10: $5f
	xor a                                            ; $7d11: $af
	ld e, d                                          ; $7d12: $5a
	xor l                                            ; $7d13: $ad
	ld e, b                                          ; $7d14: $58
	ld d, a                                          ; $7d15: $57
	sbc b                                            ; $7d16: $98
	sbc e                                            ; $7d17: $9b
	ld a, a                                          ; $7d18: $7f
	xor a                                            ; $7d19: $af
	ld d, a                                          ; $7d1a: $57
	dec bc                                           ; $7d1b: $0b
	ld sp, hl                                        ; $7d1c: $f9
	reti                                             ; $7d1d: $d9


	db $fd                                           ; $7d1e: $fd
	reti                                             ; $7d1f: $d9


	ld [bc], a                                       ; $7d20: $02
	sbc d                                            ; $7d21: $9a
	add b                                            ; $7d22: $80
	push de                                          ; $7d23: $d5
	call $c4cd                                       ; $7d24: $cd $cd $c4
	sbc $c0                                          ; $7d27: $de $c0
	sbc [hl]                                         ; $7d29: $9e
	rst $38                                          ; $7d2a: $ff
	jp c, $9382                                      ; $7d2b: $da $82 $93

	rra                                              ; $7d2e: $1f
	rst FarCall                                          ; $7d2f: $f7
	rst SubAFromBC                                          ; $7d30: $e7
	rst SubAFromBC                                          ; $7d31: $e7
	rst FarCall                                          ; $7d32: $f7
	push af                                          ; $7d33: $f5
	pop af                                           ; $7d34: $f1
	rst FarCall                                          ; $7d35: $f7
	rst $38                                          ; $7d36: $ff
	rrca                                             ; $7d37: $0f
	rra                                              ; $7d38: $1f
	rra                                              ; $7d39: $1f
	db $dd                                           ; $7d3a: $dd
	rrca                                             ; $7d3b: $0f
	sub l                                            ; $7d3c: $95
	ld a, c                                          ; $7d3d: $79
	ld sp, $383b                                     ; $7d3e: $31 $3b $38
	add hl, sp                                       ; $7d41: $39
	dec a                                            ; $7d42: $3d
	dec a                                            ; $7d43: $3d
	inc a                                            ; $7d44: $3c
	db $f4                                           ; $7d45: $f4
	db $fc                                           ; $7d46: $fc
	sbc $f4                                          ; $7d47: $de $f4
	sbc $f0                                          ; $7d49: $de $f0
	ld l, e                                          ; $7d4b: $6b
	ld b, [hl]                                       ; $7d4c: $46
	ld a, [hl]                                       ; $7d4d: $7e
	ld c, e                                          ; $7d4e: $4b

Jump_040_7d4f:
	ld a, e                                          ; $7d4f: $7b
	ld hl, sp-$65                                    ; $7d50: $f8 $9b
	add b                                            ; $7d52: $80
	ret nz                                           ; $7d53: $c0

	ldh [$e1], a                                     ; $7d54: $e0 $e1
	ld l, a                                          ; $7d56: $6f
	ldh a, [$9e]                                     ; $7d57: $f0 $9e
	daa                                              ; $7d59: $27
	ld l, d                                          ; $7d5a: $6a
	ld [hl], b                                       ; $7d5b: $70
	sbc [hl]                                         ; $7d5c: $9e
	ret c                                            ; $7d5d: $d8

	ld l, a                                          ; $7d5e: $6f
	dec de                                           ; $7d5f: $1b
	sbc [hl]                                         ; $7d60: $9e
	rst $38                                          ; $7d61: $ff
	ld a, d                                          ; $7d62: $7a
	db $ec                                           ; $7d63: $ec
	ld [hl], e                                       ; $7d64: $73
	ldh a, [$9b]                                     ; $7d65: $f0 $9b
	scf                                              ; $7d67: $37
	rst $38                                          ; $7d68: $ff
	ccf                                              ; $7d69: $3f
	ccf                                              ; $7d6a: $3f
	call c, $9bff                                    ; $7d6b: $dc $ff $9b
	ccf                                              ; $7d6e: $3f
	ld b, b                                          ; $7d6f: $40
	ld b, b                                          ; $7d70: $40
	ei                                               ; $7d71: $fb
	ld [hl], a                                       ; $7d72: $77
	inc b                                            ; $7d73: $04
	add l                                            ; $7d74: $85
	ret nz                                           ; $7d75: $c0

	ccf                                              ; $7d76: $3f
	db $fd                                           ; $7d77: $fd
	ld [hl], c                                       ; $7d78: $71
	ld h, h                                          ; $7d79: $64
	ld [hl], l                                       ; $7d7a: $75
	push af                                          ; $7d7b: $f5
	rst $38                                          ; $7d7c: $ff
	jp nc, Jump_040_61e1                             ; $7d7d: $d2 $e1 $61

	push hl                                          ; $7d80: $e5
	pop af                                           ; $7d81: $f1
	ldh a, [rSVBK]                                   ; $7d82: $f0 $70
	ldh a, [$78]                                     ; $7d84: $f0 $78
	pop hl                                           ; $7d86: $e1
	db $e3                                           ; $7d87: $e3
	di                                               ; $7d88: $f3
	ei                                               ; $7d89: $fb
	ld sp, hl                                        ; $7d8a: $f9
	ld sp, hl                                        ; $7d8b: $f9
	ld hl, sp-$08                                    ; $7d8c: $f8 $f8
	cp $de                                           ; $7d8e: $fe $de
	db $fc                                           ; $7d90: $fc
	halt                                             ; $7d91: $76
	ld c, a                                          ; $7d92: $4f
	rst SubAFromDE                                          ; $7d93: $df
	ld a, h                                          ; $7d94: $7c
	sbc c                                            ; $7d95: $99
	ld [hl], b                                       ; $7d96: $70
	ld [hl], e                                       ; $7d97: $73
	ld [hl], b                                       ; $7d98: $70

Call_040_7d99:
	ld [hl], l                                       ; $7d99: $75
	ld [hl], a                                       ; $7d9a: $77
	ld [hl], l                                       ; $7d9b: $75
	sbc $81                                          ; $7d9c: $de $81
	sbc l                                            ; $7d9e: $9d
	add b                                            ; $7d9f: $80
	add c                                            ; $7da0: $81
	sbc $80                                          ; $7da1: $de $80
	sbc d                                            ; $7da3: $9a
	and [hl]                                         ; $7da4: $a6
	db $e4                                           ; $7da5: $e4
	xor h                                            ; $7da6: $ac
	xor b                                            ; $7da7: $a8
	dec de                                           ; $7da8: $1b
	sbc $13                                          ; $7da9: $de $13
	sbc [hl]                                         ; $7dab: $9e
	add hl, de                                       ; $7dac: $19
	ld a, e                                          ; $7dad: $7b
	ei                                               ; $7dae: $fb
	push af                                          ; $7daf: $f5
	ld h, $c0                                        ; $7db0: $26 $c0
	ld a, l                                          ; $7db2: $7d
	ld d, b                                          ; $7db3: $50
	rst SubAFromDE                                          ; $7db4: $df
	rra                                              ; $7db5: $1f
	adc e                                            ; $7db6: $8b
	inc d                                            ; $7db7: $14
	dec e                                            ; $7db8: $1d
	rra                                              ; $7db9: $1f
	rra                                              ; $7dba: $1f
	db $fc                                           ; $7dbb: $fc
	ld hl, sp-$10                                    ; $7dbc: $f8 $f0
	ldh a, [$fb]                                     ; $7dbe: $f0 $fb
	ldh a, [c]                                       ; $7dc0: $f2
	ldh a, [$f0]                                     ; $7dc1: $f0 $f0
	pop de                                           ; $7dc3: $d1
	pop bc                                           ; $7dc4: $c1
	pop bc                                           ; $7dc5: $c1
	add c                                            ; $7dc6: $81
	add c                                            ; $7dc7: $81
	sub c                                            ; $7dc8: $91
	reti                                             ; $7dc9: $d9


	sbc c                                            ; $7dca: $99
	reti                                             ; $7dcb: $d9


	ld hl, $be9b                                     ; $7dcc: $21 $9b $be
	cp l                                             ; $7dcf: $bd
	cp [hl]                                          ; $7dd0: $be
	cp a                                             ; $7dd1: $bf
	ld a, e                                          ; $7dd2: $7b
	db $fc                                           ; $7dd3: $fc
	sbc [hl]                                         ; $7dd4: $9e
	cp l                                             ; $7dd5: $bd
	reti                                             ; $7dd6: $d9


	ld b, b                                          ; $7dd7: $40
	sbc b                                            ; $7dd8: $98
	and b                                            ; $7dd9: $a0
	ld b, b                                          ; $7dda: $40
	add b                                            ; $7ddb: $80
	ld b, l                                          ; $7ddc: $45
	add d                                            ; $7ddd: $82
	ld b, h                                          ; $7dde: $44
	add b                                            ; $7ddf: $80
	ld l, b                                          ; $7de0: $68
	xor l                                            ; $7de1: $ad
	rst $38                                          ; $7de2: $ff
	rst SubAFromDE                                          ; $7de3: $df
	ld [$8899], sp                                   ; $7de4: $08 $99 $88
	ld c, b                                          ; $7de7: $48
	xor b                                            ; $7de8: $a8
	ld l, b                                          ; $7de9: $68
	db $eb                                           ; $7dea: $eb
	add hl, hl                                       ; $7deb: $29
	ei                                               ; $7dec: $fb
	sub l                                            ; $7ded: $95
	ld hl, $0563                                     ; $7dee: $21 $63 $05
	ld [bc], a                                       ; $7df1: $02
	ld bc, $0102                                     ; $7df2: $01 $02 $01
	nop                                              ; $7df5: $00
	ld b, c                                          ; $7df6: $41
	add b                                            ; $7df7: $80
	ld e, [hl]                                       ; $7df8: $5e
	ret nz                                           ; $7df9: $c0

	sbc [hl]                                         ; $7dfa: $9e
	ld a, l                                          ; $7dfb: $7d
	ld [hl], e                                       ; $7dfc: $73
	cp $d9                                           ; $7dfd: $fe $d9
	ld [bc], a                                       ; $7dff: $02
	sbc $c0                                          ; $7e00: $de $c0
	sbc d                                            ; $7e02: $9a
	pop bc                                           ; $7e03: $c1
	push bc                                          ; $7e04: $c5
	push bc                                          ; $7e05: $c5
	call $d9cd                                       ; $7e06: $cd $cd $d9
	add d                                            ; $7e09: $82
	rst SubAFromDE                                          ; $7e0a: $df
	pop af                                           ; $7e0b: $f1
	sbc c                                            ; $7e0c: $99
	push af                                          ; $7e0d: $f5
	rst FarCall                                          ; $7e0e: $f7
	ld [hl], a                                       ; $7e0f: $77
	rst FarCall                                          ; $7e10: $f7
	rst SubAFromBC                                          ; $7e11: $e7
	push hl                                          ; $7e12: $e5
	db $dd                                           ; $7e13: $dd
	rrca                                             ; $7e14: $0f
	sbc [hl]                                         ; $7e15: $9e
	adc a                                            ; $7e16: $8f
	ld a, d                                          ; $7e17: $7a
	cp h                                             ; $7e18: $bc
	rst SubAFromDE                                          ; $7e19: $df
	ld [hl], b                                       ; $7e1a: $70
	sbc [hl]                                         ; $7e1b: $9e
	halt                                             ; $7e1c: $76
	sbc $74                                          ; $7e1d: $de $74
	rst SubAFromDE                                          ; $7e1f: $df
	halt                                             ; $7e20: $76
	rst SubAFromDE                                          ; $7e21: $df
	db $fc                                           ; $7e22: $fc
	sbc [hl]                                         ; $7e23: $9e
	ld hl, sp-$22                                    ; $7e24: $f8 $de
	ld a, [$187b]                                    ; $7e26: $fa $7b $18
	ld l, h                                          ; $7e29: $6c
	push af                                          ; $7e2a: $f5
	sbc l                                            ; $7e2b: $9d
	rst $38                                          ; $7e2c: $ff
	pop bc                                           ; $7e2d: $c1
	ld a, c                                          ; $7e2e: $79
	call z, $f77b                                    ; $7e2f: $cc $7b $f7
	ld a, [hl]                                       ; $7e32: $7e
	or b                                             ; $7e33: $b0
	ld a, [hl]                                       ; $7e34: $7e
	ld a, $6f                                        ; $7e35: $3e $6f
	inc sp                                           ; $7e37: $33
	sbc [hl]                                         ; $7e38: $9e
	cp a                                             ; $7e39: $bf
	ld a, e                                          ; $7e3a: $7b
	ldh a, [$7e]                                     ; $7e3b: $f0 $7e
	add sp, $77                                      ; $7e3d: $e8 $77
	ld h, $6b                                        ; $7e3f: $26 $6b
	inc hl                                           ; $7e41: $23
	ld a, a                                          ; $7e42: $7f
	ld a, [$019d]                                    ; $7e43: $fa $9d $01
	ld a, a                                          ; $7e46: $7f
	ld a, c                                          ; $7e47: $79
	ld l, e                                          ; $7e48: $6b
	sbc [hl]                                         ; $7e49: $9e
	rrca                                             ; $7e4a: $0f
	ld a, c                                          ; $7e4b: $79
	ld d, b                                          ; $7e4c: $50
	db $dd                                           ; $7e4d: $dd
	rst $38                                          ; $7e4e: $ff
	ld a, d                                          ; $7e4f: $7a
	add [hl]                                         ; $7e50: $86
	sbc [hl]                                         ; $7e51: $9e
	rlca                                             ; $7e52: $07
	sbc $ff                                          ; $7e53: $de $ff
	sbc e                                            ; $7e55: $9b
	jp nc, $88d0                                     ; $7e56: $d2 $d0 $88

	db $ed                                           ; $7e59: $ed
	sbc $f9                                          ; $7e5a: $de $f9
	sbc c                                            ; $7e5c: $99
	db $fd                                           ; $7e5d: $fd
	ld a, b                                          ; $7e5e: $78
	ld a, d                                          ; $7e5f: $7a
	ld a, [hl-]                                      ; $7e60: $3a
	jr jr_040_7e6f                                   ; $7e61: $18 $0c

	sbc $fc                                          ; $7e63: $de $fc
	sub [hl]                                         ; $7e65: $96
	ld a, b                                          ; $7e66: $78
	ld hl, sp-$08                                    ; $7e67: $f8 $f8
	ld a, b                                          ; $7e69: $78
	inc a                                            ; $7e6a: $3c
	jr c, @+$3a                                      ; $7e6b: $38 $38

	ld a, b                                          ; $7e6d: $78
	rst $38                                          ; $7e6e: $ff

jr_040_7e6f:
	db $db                                           ; $7e6f: $db
	ld a, a                                          ; $7e70: $7f
	sbc [hl]                                         ; $7e71: $9e
	ccf                                              ; $7e72: $3f
	reti                                             ; $7e73: $d9


	ld a, l                                          ; $7e74: $7d
	reti                                             ; $7e75: $d9


	add b                                            ; $7e76: $80
	sbc d                                            ; $7e77: $9a
	inc de                                           ; $7e78: $13
	inc bc                                           ; $7e79: $03
	dec b                                            ; $7e7a: $05
	inc b                                            ; $7e7b: $04
	inc b                                            ; $7e7c: $04
	sbc $06                                          ; $7e7d: $de $06
	rst $38                                          ; $7e7f: $ff
	sbc $02                                          ; $7e80: $de $02
	ld [bc], a                                       ; $7e82: $02
	ret nz                                           ; $7e83: $c0

	rst SubAFromDE                                          ; $7e84: $df
	call nz, $1797                                   ; $7e85: $c4 $97 $17

Jump_040_7e88:
	ld d, $14                                        ; $7e88: $16 $14
	dec d                                            ; $7e8a: $15
	rla                                              ; $7e8b: $17
	rla                                              ; $7e8c: $17
	inc de                                           ; $7e8d: $13
	inc de                                           ; $7e8e: $13
	db $db                                           ; $7e8f: $db
	ld hl, sp-$21                                    ; $7e90: $f8 $df
	db $fc                                           ; $7e92: $fc
	sbc h                                            ; $7e93: $9c
	add hl, de                                       ; $7e94: $19
	add hl, bc                                       ; $7e95: $09
	add hl, de                                       ; $7e96: $19
	sbc $d9                                          ; $7e97: $de $d9
	rst SubAFromDE                                          ; $7e99: $df
	add hl, de                                       ; $7e9a: $19
	ld h, d                                          ; $7e9b: $62
	ret nz                                           ; $7e9c: $c0

	call c, $7fbf                                    ; $7e9d: $dc $bf $7f
	ld a, [$40d9]                                    ; $7ea0: $fa $d9 $40
	ld a, d                                          ; $7ea3: $7a
	jp nz, $e37e                                     ; $7ea4: $c2 $7e $e3

	sbc h                                            ; $7ea7: $9c
	ld b, c                                          ; $7ea8: $41
	add h                                            ; $7ea9: $84
	ld a, [bc]                                       ; $7eaa: $0a
	ld sp, hl                                        ; $7eab: $f9
	adc b                                            ; $7eac: $88
	adc b                                            ; $7ead: $88
	ld c, e                                          ; $7eae: $4b
	bit 1, d                                         ; $7eaf: $cb $4a
	xor c                                            ; $7eb1: $a9
	ld c, c                                          ; $7eb2: $49
	adc b                                            ; $7eb3: $88
	ld [$6263], sp                                   ; $7eb4: $08 $63 $62
	ld h, d                                          ; $7eb7: $62
	ld h, e                                          ; $7eb8: $63
	ld h, e                                          ; $7eb9: $63
	ld [hl+], a                                      ; $7eba: $22
	nop                                              ; $7ebb: $00
	nop                                              ; $7ebc: $00
	ld b, c                                          ; $7ebd: $41
	and d                                            ; $7ebe: $a2
	ld b, c                                          ; $7ebf: $41
	and b                                            ; $7ec0: $a0
	ld b, c                                          ; $7ec1: $41
	add b                                            ; $7ec2: $80
	ld bc, $8563                                     ; $7ec3: $01 $63 $85
	ld a, [hl]                                       ; $7ec6: $7e
	add $6e                                          ; $7ec7: $c6 $6e
	cp [hl]                                          ; $7ec9: $be
	reti                                             ; $7eca: $d9


	ld [bc], a                                       ; $7ecb: $02
	db $dd                                           ; $7ecc: $dd
	push bc                                          ; $7ecd: $c5
	rst SubAFromDE                                          ; $7ece: $df
	call $c5df                                       ; $7ecf: $cd $df $c5
	reti                                             ; $7ed2: $d9


	add d                                            ; $7ed3: $82
	rst SubAFromDE                                          ; $7ed4: $df
	rst SubAFromBC                                          ; $7ed5: $e7
	sbc c                                            ; $7ed6: $99
	push hl                                          ; $7ed7: $e5
	db $f4                                           ; $7ed8: $f4
	db $e4                                           ; $7ed9: $e4
	push hl                                          ; $7eda: $e5
	db $e3                                           ; $7edb: $e3
	db $e4                                           ; $7edc: $e4
	sbc $1f                                          ; $7edd: $de $1f
	ld a, d                                          ; $7edf: $7a
	jp nz, $1fdf                                     ; $7ee0: $c2 $df $1f

	sbc [hl]                                         ; $7ee3: $9e
	ld a, $de                                        ; $7ee4: $3e $de
	ld [hl], h                                       ; $7ee6: $74
	sbc d                                            ; $7ee7: $9a
	ld a, h                                          ; $7ee8: $7c
	ld [hl], h                                       ; $7ee9: $74
	halt                                             ; $7eea: $76
	ld [hl], d                                       ; $7eeb: $72
	ldh a, [$de]                                     ; $7eec: $f0 $de
	ld a, [$f29e]                                    ; $7eee: $fa $9e $f2
	ld a, d                                          ; $7ef1: $7a
	ret nz                                           ; $7ef2: $c0

	db $db                                           ; $7ef3: $db
	rst $38                                          ; $7ef4: $ff
	sub e                                            ; $7ef5: $93
	ld [hl], b                                       ; $7ef6: $70

Jump_040_7ef7:
	ld a, a                                          ; $7ef7: $7f
	ldh [$f0], a                                     ; $7ef8: $e0 $f0
	ldh a, [$f8]                                     ; $7efa: $f0 $f8
	ldh [$7f], a                                     ; $7efc: $e0 $7f
	adc a                                            ; $7efe: $8f

Call_040_7eff:
Jump_040_7eff:
	add b                                            ; $7eff: $80
	ldh a, [$c0]                                     ; $7f00: $f0 $c0
	ld a, d                                          ; $7f02: $7a
	ld h, l                                          ; $7f03: $65
	ld a, h                                          ; $7f04: $7c
	ld [hl+], a                                      ; $7f05: $22
	ld a, l                                          ; $7f06: $7d
	ld d, c                                          ; $7f07: $51
	sbc l                                            ; $7f08: $9d
	ccf                                              ; $7f09: $3f
	ld a, a                                          ; $7f0a: $7f
	ld a, b                                          ; $7f0b: $78
	adc e                                            ; $7f0c: $8b
	ld l, b                                          ; $7f0d: $68
	and c                                            ; $7f0e: $a1
	sbc h                                            ; $7f0f: $9c
	ld b, b                                          ; $7f10: $40
	dec b                                            ; $7f11: $05
	di                                               ; $7f12: $f3
	call c, $9cff                                    ; $7f13: $dc $ff $9c
	cp a                                             ; $7f16: $bf
	ei                                               ; $7f17: $fb
	inc c                                            ; $7f18: $0c
	ld a, b                                          ; $7f19: $78
	ld h, [hl]                                       ; $7f1a: $66
	sbc [hl]                                         ; $7f1b: $9e
	rra                                              ; $7f1c: $1f
	ld a, d                                          ; $7f1d: $7a
	rst JumpTable                                          ; $7f1e: $c7
	sbc [hl]                                         ; $7f1f: $9e
	ld hl, sp+$7b                                    ; $7f20: $f8 $7b
	db $db                                           ; $7f22: $db
	sbc [hl]                                         ; $7f23: $9e
	ldh [$7b], a                                     ; $7f24: $e0 $7b
	ld a, [$0786]                                    ; $7f26: $fa $86 $07
	cp $fe                                           ; $7f29: $fe $fe
	adc $de                                          ; $7f2b: $ce $de
	ld c, $3e                                        ; $7f2d: $0e $3e
	and $03                                          ; $7f2f: $e6 $03
	dec b                                            ; $7f31: $05
	dec c                                            ; $7f32: $0d

Jump_040_7f33:
	ccf                                              ; $7f33: $3f
	cpl                                              ; $7f34: $2f
	ei                                               ; $7f35: $fb
	rr e                                             ; $7f36: $cb $1b
	cp $3c                                           ; $7f38: $fe $3c
	cp h                                             ; $7f3a: $bc
	sbc [hl]                                         ; $7f3b: $9e
	sbc [hl]                                         ; $7f3c: $9e
	jr jr_040_7f5b                                   ; $7f3d: $18 $1c

	ld e, h                                          ; $7f3f: $5c
	ld e, $dd                                        ; $7f40: $1e $dd
	ccf                                              ; $7f42: $3f
	sbc $1f                                          ; $7f43: $de $1f
	sbc l                                            ; $7f45: $9d
	ld c, a                                          ; $7f46: $4f
	dec a                                            ; $7f47: $3d
	ld [hl], a                                       ; $7f48: $77
	ld sp, hl                                        ; $7f49: $f9
	sbc h                                            ; $7f4a: $9c
	ld a, $1f                                        ; $7f4b: $3e $1f
	rlca                                             ; $7f4d: $07
	sbc $c0                                          ; $7f4e: $de $c0
	rst SubAFromDE                                          ; $7f50: $df
	ldh [$9a], a                                     ; $7f51: $e0 $9a
	pop bc                                           ; $7f53: $c1
	ldh [$f8], a                                     ; $7f54: $e0 $f8
	ld b, $04                                        ; $7f56: $06 $04
	ld [hl], l                                       ; $7f58: $75
	ld c, d                                          ; $7f59: $4a
	sbc l                                            ; $7f5a: $9d

jr_040_7f5b:
	db $e4                                           ; $7f5b: $e4
	and $f1                                          ; $7f5c: $e6 $f1
	ld a, $c0                                        ; $7f5e: $3e $c0
	sbc l                                            ; $7f60: $9d
	call z, $ddce                                    ; $7f61: $cc $ce $dd
	rst GetHLinHL                                          ; $7f64: $cf
	halt                                             ; $7f65: $76
	call nz, $139b                                   ; $7f66: $c4 $9b $13
	sub e                                            ; $7f69: $93
	db $d3                                           ; $7f6a: $d3
	pop af                                           ; $7f6b: $f1
	halt                                             ; $7f6c: $76
	call nz, $2d75                                   ; $7f6d: $c4 $75 $2d
	sbc h                                            ; $7f70: $9c
	sbc c                                            ; $7f71: $99
	reti                                             ; $7f72: $d9


	pop de                                           ; $7f73: $d1
	ld [hl], h                                       ; $7f74: $74
	ld b, c                                          ; $7f75: $41
	sbc [hl]                                         ; $7f76: $9e
	pop bc                                           ; $7f77: $c1
	ld e, c                                          ; $7f78: $59
	add b                                            ; $7f79: $80
	ld a, c                                          ; $7f7a: $79
	ld a, [hl]                                       ; $7f7b: $7e
	sbc l                                            ; $7f7c: $9d
	cp a                                             ; $7f7d: $bf
	nop                                              ; $7f7e: $00
	ld h, h                                          ; $7f7f: $64
	ld b, c                                          ; $7f80: $41
	sbc c                                            ; $7f81: $99
	add l                                            ; $7f82: $85

Call_040_7f83:
	ld [bc], a                                       ; $7f83: $02
	add b                                            ; $7f84: $80
	ld b, b                                          ; $7f85: $40
	xor b                                            ; $7f86: $a8
	ld a, l                                          ; $7f87: $7d
	ld h, c                                          ; $7f88: $61
	and c                                            ; $7f89: $a1
	sbc [hl]                                         ; $7f8a: $9e
	rst $38                                          ; $7f8b: $ff
	jp c, $6308                                      ; $7f8c: $da $08 $63

	ldh a, [$79]                                     ; $7f8f: $f0 $79
	add b                                            ; $7f91: $80
	sbc h                                            ; $7f92: $9c
	ld a, [bc]                                       ; $7f93: $0a
	dec d                                            ; $7f94: $15
	cpl                                              ; $7f95: $2f
	ld e, a                                          ; $7f96: $5f
	adc c                                            ; $7f97: $89
	halt                                             ; $7f98: $76
	jp nz, $fdde                                     ; $7f99: $c2 $de $fd

	halt                                             ; $7f9c: $76
	ld [hl-], a                                      ; $7f9d: $32

Jump_040_7f9e:
	db $dd                                           ; $7f9e: $dd
	ld [bc], a                                       ; $7f9f: $02
	sbc e                                            ; $7fa0: $9b
	rst $38                                          ; $7fa1: $ff
	push de                                          ; $7fa2: $d5
	db $dd                                           ; $7fa3: $dd
	call $c07a                                       ; $7fa4: $cd $7a $c0
	rst SubAFromDE                                          ; $7fa7: $df
	db $dd                                           ; $7fa8: $dd
	reti                                             ; $7fa9: $d9


	add d                                            ; $7faa: $82
	rst SubAFromDE                                          ; $7fab: $df
	pop hl                                           ; $7fac: $e1
	sbc $e7                                          ; $7fad: $de $e7
	rst SubAFromDE                                          ; $7faf: $df
	rst AddAOntoHL                                          ; $7fb0: $ef
	sbc [hl]                                         ; $7fb1: $9e
	rst GetHLinHL                                          ; $7fb2: $cf
	jp c, $9a1f                                      ; $7fb3: $da $1f $9a

	ccf                                              ; $7fb6: $3f
	ld [hl], d                                       ; $7fb7: $72
	or $f4                                           ; $7fb8: $f6 $f4
	or $de                                           ; $7fba: $f6 $de
	cp $9b                                           ; $7fbc: $fe $9b
	ld a, [$f0f0]                                    ; $7fbe: $fa $f0 $f0
	ldh a, [c]                                       ; $7fc1: $f2
	call c, Call_040_7bf8                            ; $7fc2: $dc $f8 $7b
	cp l                                             ; $7fc5: $bd
	rst SubAFromDE                                          ; $7fc6: $df
	ld a, a                                          ; $7fc7: $7f
	sub h                                            ; $7fc8: $94
	ld a, [hl]                                       ; $7fc9: $7e
	ld a, a                                          ; $7fca: $7f
	ld a, [hl]                                       ; $7fcb: $7e
	nop                                              ; $7fcc: $00
	nop                                              ; $7fcd: $00
	ld a, a                                          ; $7fce: $7f
	rst $38                                          ; $7fcf: $ff
	ld hl, sp-$1f                                    ; $7fd0: $f8 $e1
	ldh [$f1], a                                     ; $7fd2: $e0 $f1
	ld [hl], e                                       ; $7fd4: $73
	ld [hl], $6b                                     ; $7fd5: $36 $6b
	ld l, $77                                        ; $7fd7: $2e $77
	push af                                          ; $7fd9: $f5
	ld a, a                                          ; $7fda: $7f
	ld de, $ffde                                     ; $7fdb: $11 $de $ff

Call_040_7fde:
	ld a, l                                          ; $7fde: $7d
	adc d                                            ; $7fdf: $8a
	sbc l                                            ; $7fe0: $9d
	nop                                              ; $7fe1: $00
	inc bc                                           ; $7fe2: $03
	ld a, c                                          ; $7fe3: $79
	sub e                                            ; $7fe4: $93

Call_040_7fe5:
	sbc [hl]                                         ; $7fe5: $9e
	nop                                              ; $7fe6: $00
	ld a, d                                          ; $7fe7: $7a
	sub d                                            ; $7fe8: $92
	ld l, e                                          ; $7fe9: $6b
	ld d, $7a                                        ; $7fea: $16 $7a
	and e                                            ; $7fec: $a3
	ld [hl], e                                       ; $7fed: $73
	ret c                                            ; $7fee: $d8

	sbc h                                            ; $7fef: $9c
	add b                                            ; $7ff0: $80
	inc bc                                           ; $7ff1: $03
	ld bc, $ffdb                                     ; $7ff2: $01 $db $ff
	sbc [hl]                                         ; $7ff5: $9e
	db $fd                                           ; $7ff6: $fd
	db $dd                                           ; $7ff7: $dd
	rst $38                                          ; $7ff8: $ff
	sub h                                            ; $7ff9: $94
	rlca                                             ; $7ffa: $07
	inc bc                                           ; $7ffb: $03
	inc bc                                           ; $7ffc: $03
	ld e, $3f                                        ; $7ffd: $1e $3f

Call_040_7fff:
	rra                                              ; $7fff: $1f
