; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

	ld b, $41                                        ; $4000: $06 $41
	ld [bc], a                                       ; $4002: $02
	ld b, b                                          ; $4003: $40
	inc b                                            ; $4004: $04
	ld b, e                                          ; $4005: $43
	rrca                                             ; $4006: $0f
	ld b, e                                          ; $4007: $43
	ld a, [de]                                       ; $4008: $1a
	ld b, e                                          ; $4009: $43
	dec h                                            ; $400a: $25
	ld b, e                                          ; $400b: $43
	jr nc, jr_007_4051                               ; $400c: $30 $43

	dec sp                                           ; $400e: $3b
	ld b, e                                          ; $400f: $43
	ld b, h                                          ; $4010: $44
	ld b, e                                          ; $4011: $43
	ld c, a                                          ; $4012: $4f
	ld b, e                                          ; $4013: $43
	ld e, d                                          ; $4014: $5a
	ld b, e                                          ; $4015: $43
	ld h, e                                          ; $4016: $63
	ld b, e                                          ; $4017: $43
	ld l, [hl]                                       ; $4018: $6e
	ld b, e                                          ; $4019: $43
	ld a, c                                          ; $401a: $79
	ld b, e                                          ; $401b: $43
	add h                                            ; $401c: $84
	ld b, e                                          ; $401d: $43
	adc a                                            ; $401e: $8f
	ld b, e                                          ; $401f: $43
	sbc d                                            ; $4020: $9a
	ld b, e                                          ; $4021: $43
	and l                                            ; $4022: $a5
	ld b, e                                          ; $4023: $43
	or b                                             ; $4024: $b0
	ld b, e                                          ; $4025: $43
	cp e                                             ; $4026: $bb
	ld b, e                                          ; $4027: $43
	add $43                                          ; $4028: $c6 $43
	pop de                                           ; $402a: $d1
	ld b, e                                          ; $402b: $43
	call c, $e743                                    ; $402c: $dc $43 $e7
	ld b, e                                          ; $402f: $43
	ldh a, [rSCX]                                    ; $4030: $f0 $43
	ei                                               ; $4032: $fb
	ld b, e                                          ; $4033: $43
	ld b, $44                                        ; $4034: $06 $44
	rrca                                             ; $4036: $0f
	ld b, h                                          ; $4037: $44
	ld a, [de]                                       ; $4038: $1a
	ld b, h                                          ; $4039: $44
	dec h                                            ; $403a: $25
	ld b, h                                          ; $403b: $44
	jr nc, jr_007_4082                               ; $403c: $30 $44

	add hl, sp                                       ; $403e: $39
	ld b, h                                          ; $403f: $44
	ld b, h                                          ; $4040: $44
	ld b, h                                          ; $4041: $44
	ld c, a                                          ; $4042: $4f
	ld b, h                                          ; $4043: $44
	ld e, d                                          ; $4044: $5a
	ld b, h                                          ; $4045: $44
	ld h, l                                          ; $4046: $65
	ld b, h                                          ; $4047: $44
	ld [hl], b                                       ; $4048: $70
	ld b, h                                          ; $4049: $44
	ld a, e                                          ; $404a: $7b
	ld b, h                                          ; $404b: $44
	add [hl]                                         ; $404c: $86
	ld b, h                                          ; $404d: $44
	sub c                                            ; $404e: $91
	ld b, h                                          ; $404f: $44
	sbc h                                            ; $4050: $9c

jr_007_4051:
	ld b, h                                          ; $4051: $44
	and a                                            ; $4052: $a7
	ld b, h                                          ; $4053: $44
	xor [hl]                                         ; $4054: $ae
	ld b, h                                          ; $4055: $44
	cp c                                             ; $4056: $b9
	ld b, h                                          ; $4057: $44
	call nz, $cd44                                   ; $4058: $c4 $44 $cd
	ld b, h                                          ; $405b: $44
	ret c                                            ; $405c: $d8

	ld b, h                                          ; $405d: $44
	db $e3                                           ; $405e: $e3
	ld b, h                                          ; $405f: $44
	xor $44                                          ; $4060: $ee $44
	ld sp, hl                                        ; $4062: $f9
	ld b, h                                          ; $4063: $44
	inc b                                            ; $4064: $04
	ld b, l                                          ; $4065: $45
	rrca                                             ; $4066: $0f
	ld b, l                                          ; $4067: $45
	ld a, [de]                                       ; $4068: $1a
	ld b, l                                          ; $4069: $45
	inc hl                                           ; $406a: $23
	ld b, l                                          ; $406b: $45
	ld l, $45                                        ; $406c: $2e $45
	add hl, sp                                       ; $406e: $39
	ld b, l                                          ; $406f: $45
	ld b, h                                          ; $4070: $44
	ld b, l                                          ; $4071: $45
	ld c, a                                          ; $4072: $4f
	ld b, l                                          ; $4073: $45
	ld e, d                                          ; $4074: $5a
	ld b, l                                          ; $4075: $45
	ld h, l                                          ; $4076: $65
	ld b, l                                          ; $4077: $45
	ld [hl], b                                       ; $4078: $70
	ld b, l                                          ; $4079: $45
	ld a, e                                          ; $407a: $7b
	ld b, l                                          ; $407b: $45
	add [hl]                                         ; $407c: $86
	ld b, l                                          ; $407d: $45
	sub c                                            ; $407e: $91
	ld b, l                                          ; $407f: $45
	sbc d                                            ; $4080: $9a
	ld b, l                                          ; $4081: $45

jr_007_4082:
	and l                                            ; $4082: $a5
	ld b, l                                          ; $4083: $45
	or b                                             ; $4084: $b0
	ld b, l                                          ; $4085: $45
	cp e                                             ; $4086: $bb
	ld b, l                                          ; $4087: $45
	add $45                                          ; $4088: $c6 $45
	pop de                                           ; $408a: $d1
	ld b, l                                          ; $408b: $45
	jp c, $e545                                      ; $408c: $da $45 $e5

	ld b, l                                          ; $408f: $45
	xor $45                                          ; $4090: $ee $45
	ld sp, hl                                        ; $4092: $f9
	ld b, l                                          ; $4093: $45
	inc b                                            ; $4094: $04
	ld b, [hl]                                       ; $4095: $46
	rrca                                             ; $4096: $0f
	ld b, [hl]                                       ; $4097: $46
	ld a, [de]                                       ; $4098: $1a
	ld b, [hl]                                       ; $4099: $46
	dec h                                            ; $409a: $25
	ld b, [hl]                                       ; $409b: $46
	jr nc, jr_007_40e4                               ; $409c: $30 $46

	dec sp                                           ; $409e: $3b
	ld b, [hl]                                       ; $409f: $46
	ld b, [hl]                                       ; $40a0: $46
	ld b, [hl]                                       ; $40a1: $46
	ld c, a                                          ; $40a2: $4f
	ld b, [hl]                                       ; $40a3: $46
	ld e, d                                          ; $40a4: $5a
	ld b, [hl]                                       ; $40a5: $46
	ld h, e                                          ; $40a6: $63
	ld b, [hl]                                       ; $40a7: $46
	ld l, [hl]                                       ; $40a8: $6e
	ld b, [hl]                                       ; $40a9: $46
	ld a, c                                          ; $40aa: $79
	ld b, [hl]                                       ; $40ab: $46
	add h                                            ; $40ac: $84
	ld b, [hl]                                       ; $40ad: $46
	adc a                                            ; $40ae: $8f
	ld b, [hl]                                       ; $40af: $46
	sbc d                                            ; $40b0: $9a
	ld b, [hl]                                       ; $40b1: $46
	and l                                            ; $40b2: $a5
	ld b, [hl]                                       ; $40b3: $46
	or b                                             ; $40b4: $b0
	ld b, [hl]                                       ; $40b5: $46
	cp c                                             ; $40b6: $b9
	ld b, [hl]                                       ; $40b7: $46
	call nz, $cf46                                   ; $40b8: $c4 $46 $cf
	ld b, [hl]                                       ; $40bb: $46
	jp c, $e546                                      ; $40bc: $da $46 $e5

	ld b, [hl]                                       ; $40bf: $46
	ldh a, [rDMA]                                    ; $40c0: $f0 $46
	ei                                               ; $40c2: $fb
	ld b, [hl]                                       ; $40c3: $46
	ld b, $47                                        ; $40c4: $06 $47
	ld de, $1847                                     ; $40c6: $11 $47 $18
	ld b, a                                          ; $40c9: $47
	inc hl                                           ; $40ca: $23
	ld b, a                                          ; $40cb: $47
	inc l                                            ; $40cc: $2c
	ld b, a                                          ; $40cd: $47
	scf                                              ; $40ce: $37
	ld b, a                                          ; $40cf: $47
	ld b, d                                          ; $40d0: $42

Call_007_40d1:
	ld b, a                                          ; $40d1: $47
	ld c, l                                          ; $40d2: $4d
	ld b, a                                          ; $40d3: $47
	ld e, b                                          ; $40d4: $58
	ld b, a                                          ; $40d5: $47
	ld h, e                                          ; $40d6: $63
	ld b, a                                          ; $40d7: $47
	ld l, [hl]                                       ; $40d8: $6e
	ld b, a                                          ; $40d9: $47
	ld a, c                                          ; $40da: $79
	ld b, a                                          ; $40db: $47
	add d                                            ; $40dc: $82
	ld b, a                                          ; $40dd: $47
	adc e                                            ; $40de: $8b
	ld b, a                                          ; $40df: $47
	sub [hl]                                         ; $40e0: $96
	ld b, a                                          ; $40e1: $47
	and c                                            ; $40e2: $a1
	ld b, a                                          ; $40e3: $47

jr_007_40e4:
	xor h                                            ; $40e4: $ac
	ld b, a                                          ; $40e5: $47
	or a                                             ; $40e6: $b7
	ld b, a                                          ; $40e7: $47
	ret nz                                           ; $40e8: $c0

	ld b, a                                          ; $40e9: $47
	bit 0, a                                         ; $40ea: $cb $47
	sub $47                                          ; $40ec: $d6 $47
	rst SubAFromDE                                          ; $40ee: $df
	ld b, a                                          ; $40ef: $47
	add sp, $47                                      ; $40f0: $e8 $47
	di                                               ; $40f2: $f3
	ld b, a                                          ; $40f3: $47
	cp $47                                           ; $40f4: $fe $47
	add hl, bc                                       ; $40f6: $09
	ld c, b                                          ; $40f7: $48
	inc d                                            ; $40f8: $14
	ld c, b                                          ; $40f9: $48
	rra                                              ; $40fa: $1f
	ld c, b                                          ; $40fb: $48
	ld a, [hl+]                                      ; $40fc: $2a
	ld c, b                                          ; $40fd: $48
	inc sp                                           ; $40fe: $33
	ld c, b                                          ; $40ff: $48
	ld a, $48                                        ; $4100: $3e $48
	ld c, c                                          ; $4102: $49
	ld c, b                                          ; $4103: $48
	ld d, d                                          ; $4104: $52
	ld c, b                                          ; $4105: $48
	ld e, l                                          ; $4106: $5d
	ld c, b                                          ; $4107: $48
	ld h, [hl]                                       ; $4108: $66
	ld c, b                                          ; $4109: $48
	ld l, e                                          ; $410a: $6b
	ld c, b                                          ; $410b: $48
	ld [hl], b                                       ; $410c: $70
	ld c, b                                          ; $410d: $48
	ld [hl], l                                       ; $410e: $75
	ld c, b                                          ; $410f: $48
	ld a, d                                          ; $4110: $7a
	ld c, b                                          ; $4111: $48
	ld a, a                                          ; $4112: $7f
	ld c, b                                          ; $4113: $48
	add h                                            ; $4114: $84
	ld c, b                                          ; $4115: $48
	adc e                                            ; $4116: $8b
	ld c, b                                          ; $4117: $48
	sub h                                            ; $4118: $94
	ld c, b                                          ; $4119: $48
	sbc e                                            ; $411a: $9b
	ld c, b                                          ; $411b: $48
	and d                                            ; $411c: $a2
	ld c, b                                          ; $411d: $48
	and a                                            ; $411e: $a7
	ld c, b                                          ; $411f: $48
	xor [hl]                                         ; $4120: $ae
	ld c, b                                          ; $4121: $48
	or l                                             ; $4122: $b5
	ld c, b                                          ; $4123: $48
	cp d                                             ; $4124: $ba
	ld c, b                                          ; $4125: $48
	pop bc                                           ; $4126: $c1
	ld c, b                                          ; $4127: $48
	ret z                                            ; $4128: $c8

	ld c, b                                          ; $4129: $48
	call $d248                                       ; $412a: $cd $48 $d2
	ld c, b                                          ; $412d: $48
	rst SubAFromHL                                          ; $412e: $d7
	ld c, b                                          ; $412f: $48
	sbc $48                                          ; $4130: $de $48
	push hl                                          ; $4132: $e5
	ld c, b                                          ; $4133: $48
	xor $48                                          ; $4134: $ee $48
	di                                               ; $4136: $f3
	ld c, b                                          ; $4137: $48
	ld hl, sp+$48                                    ; $4138: $f8 $48
	rst $38                                          ; $413a: $ff
	ld c, b                                          ; $413b: $48
	inc b                                            ; $413c: $04
	ld c, c                                          ; $413d: $49

Jump_007_413e:
	dec bc                                           ; $413e: $0b
	ld c, c                                          ; $413f: $49
	db $10                                           ; $4140: $10
	ld c, c                                          ; $4141: $49
	rla                                              ; $4142: $17
	ld c, c                                          ; $4143: $49
	inc e                                            ; $4144: $1c
	ld c, c                                          ; $4145: $49
	ld hl, $2849                                     ; $4146: $21 $49 $28
	ld c, c                                          ; $4149: $49
	cpl                                              ; $414a: $2f
	ld c, c                                          ; $414b: $49
	inc [hl]                                         ; $414c: $34
	ld c, c                                          ; $414d: $49
	add hl, sp                                       ; $414e: $39
	ld c, c                                          ; $414f: $49
	ld a, $49                                        ; $4150: $3e $49
	ld b, a                                          ; $4152: $47
	ld c, c                                          ; $4153: $49
	ld c, h                                          ; $4154: $4c
	ld c, c                                          ; $4155: $49
	ld d, c                                          ; $4156: $51
	ld c, c                                          ; $4157: $49
	ld e, b                                          ; $4158: $58
	ld c, c                                          ; $4159: $49
	ld e, a                                          ; $415a: $5f
	ld c, c                                          ; $415b: $49
	ld h, [hl]                                       ; $415c: $66
	ld c, c                                          ; $415d: $49
	ld l, e                                          ; $415e: $6b
	ld c, c                                          ; $415f: $49
	ld [hl], b                                       ; $4160: $70
	ld c, c                                          ; $4161: $49
	ld [hl], l                                       ; $4162: $75
	ld c, c                                          ; $4163: $49
	ld a, d                                          ; $4164: $7a
	ld c, c                                          ; $4165: $49
	add c                                            ; $4166: $81
	ld c, c                                          ; $4167: $49
	add [hl]                                         ; $4168: $86
	ld c, c                                          ; $4169: $49
	adc l                                            ; $416a: $8d
	ld c, c                                          ; $416b: $49
	sub d                                            ; $416c: $92
	ld c, c                                          ; $416d: $49
	sub a                                            ; $416e: $97
	ld c, c                                          ; $416f: $49
	sbc h                                            ; $4170: $9c
	ld c, c                                          ; $4171: $49
	and c                                            ; $4172: $a1
	ld c, c                                          ; $4173: $49
	xor b                                            ; $4174: $a8
	ld c, c                                          ; $4175: $49
	xor l                                            ; $4176: $ad
	ld c, c                                          ; $4177: $49
	or d                                             ; $4178: $b2
	ld c, c                                          ; $4179: $49
	or a                                             ; $417a: $b7
	ld c, c                                          ; $417b: $49
	cp [hl]                                          ; $417c: $be
	ld c, c                                          ; $417d: $49
	jp $ca49                                         ; $417e: $c3 $49 $ca


	ld c, c                                          ; $4181: $49
	rst GetHLinHL                                          ; $4182: $cf
	ld c, c                                          ; $4183: $49
	call nc, $d949                                   ; $4184: $d4 $49 $d9
	ld c, c                                          ; $4187: $49
	ldh [rOBP1], a                                   ; $4188: $e0 $49
	push hl                                          ; $418a: $e5
	ld c, c                                          ; $418b: $49
	ld [$ef49], a                                    ; $418c: $ea $49 $ef
	ld c, c                                          ; $418f: $49
	db $f4                                           ; $4190: $f4
	ld c, c                                          ; $4191: $49
	ei                                               ; $4192: $fb
	ld c, c                                          ; $4193: $49
	ld [bc], a                                       ; $4194: $02
	ld c, d                                          ; $4195: $4a
	add hl, bc                                       ; $4196: $09
	ld c, d                                          ; $4197: $4a
	db $10                                           ; $4198: $10
	ld c, d                                          ; $4199: $4a
	rla                                              ; $419a: $17
	ld c, d                                          ; $419b: $4a
	ld e, $4a                                        ; $419c: $1e $4a
	dec h                                            ; $419e: $25
	ld c, d                                          ; $419f: $4a
	ld a, [hl+]                                      ; $41a0: $2a
	ld c, d                                          ; $41a1: $4a
	ld sp, $364a                                     ; $41a2: $31 $4a $36
	ld c, d                                          ; $41a5: $4a
	dec sp                                           ; $41a6: $3b
	ld c, d                                          ; $41a7: $4a
	ld b, d                                          ; $41a8: $42
	ld c, d                                          ; $41a9: $4a
	ld c, c                                          ; $41aa: $49
	ld c, d                                          ; $41ab: $4a
	ld d, b                                          ; $41ac: $50
	ld c, d                                          ; $41ad: $4a
	ld d, a                                          ; $41ae: $57
	ld c, d                                          ; $41af: $4a
	ld e, [hl]                                       ; $41b0: $5e
	ld c, d                                          ; $41b1: $4a
	ld h, l                                          ; $41b2: $65
	ld c, d                                          ; $41b3: $4a
	ld l, h                                          ; $41b4: $6c
	ld c, d                                          ; $41b5: $4a
	ld [hl], c                                       ; $41b6: $71
	ld c, d                                          ; $41b7: $4a
	halt                                             ; $41b8: $76
	ld c, d                                          ; $41b9: $4a
	ld a, l                                          ; $41ba: $7d
	ld c, d                                          ; $41bb: $4a
	add d                                            ; $41bc: $82
	ld c, d                                          ; $41bd: $4a
	add a                                            ; $41be: $87
	ld c, d                                          ; $41bf: $4a
	adc h                                            ; $41c0: $8c
	ld c, d                                          ; $41c1: $4a
	sub e                                            ; $41c2: $93
	ld c, d                                          ; $41c3: $4a
	sbc d                                            ; $41c4: $9a
	ld c, d                                          ; $41c5: $4a
	and c                                            ; $41c6: $a1
	ld c, d                                          ; $41c7: $4a
	xor b                                            ; $41c8: $a8
	ld c, d                                          ; $41c9: $4a
	xor a                                            ; $41ca: $af
	ld c, d                                          ; $41cb: $4a
	or h                                             ; $41cc: $b4
	ld c, d                                          ; $41cd: $4a
	cp e                                             ; $41ce: $bb
	ld c, d                                          ; $41cf: $4a
	ret nz                                           ; $41d0: $c0

	ld c, d                                          ; $41d1: $4a
	rst JumpTable                                          ; $41d2: $c7
	ld c, d                                          ; $41d3: $4a
	call z, $d14a                                    ; $41d4: $cc $4a $d1
	ld c, d                                          ; $41d7: $4a
	sub $4a                                          ; $41d8: $d6 $4a
	db $db                                           ; $41da: $db
	ld c, d                                          ; $41db: $4a
	ldh [rWY], a                                     ; $41dc: $e0 $4a
	rst SubAFromBC                                          ; $41de: $e7
	ld c, d                                          ; $41df: $4a
	xor $4a                                          ; $41e0: $ee $4a
	push af                                          ; $41e2: $f5
	ld c, d                                          ; $41e3: $4a
	db $fc                                           ; $41e4: $fc
	ld c, d                                          ; $41e5: $4a
	ld bc, $064b                                     ; $41e6: $01 $4b $06
	ld c, e                                          ; $41e9: $4b
	dec c                                            ; $41ea: $0d
	ld c, e                                          ; $41eb: $4b
	inc d                                            ; $41ec: $14
	ld c, e                                          ; $41ed: $4b
	dec de                                           ; $41ee: $1b
	ld c, e                                          ; $41ef: $4b
	jr nz, jr_007_423d                               ; $41f0: $20 $4b

	dec h                                            ; $41f2: $25
	ld c, e                                          ; $41f3: $4b
	ld a, [hl+]                                      ; $41f4: $2a
	ld c, e                                          ; $41f5: $4b
	ld sp, $364b                                     ; $41f6: $31 $4b $36
	ld c, e                                          ; $41f9: $4b
	dec a                                            ; $41fa: $3d
	ld c, e                                          ; $41fb: $4b
	ld b, d                                          ; $41fc: $42
	ld c, e                                          ; $41fd: $4b
	ld b, a                                          ; $41fe: $47
	ld c, e                                          ; $41ff: $4b
	ld c, h                                          ; $4200: $4c
	ld c, e                                          ; $4201: $4b
	ld d, c                                          ; $4202: $51
	ld c, e                                          ; $4203: $4b
	ld d, [hl]                                       ; $4204: $56
	ld c, e                                          ; $4205: $4b
	ld e, a                                          ; $4206: $5f
	ld c, e                                          ; $4207: $4b
	ld h, h                                          ; $4208: $64
	ld c, e                                          ; $4209: $4b
	ld l, c                                          ; $420a: $69
	ld c, e                                          ; $420b: $4b
	ld l, [hl]                                       ; $420c: $6e
	ld c, e                                          ; $420d: $4b
	ld [hl], e                                       ; $420e: $73
	ld c, e                                          ; $420f: $4b
	ld a, b                                          ; $4210: $78
	ld c, e                                          ; $4211: $4b
	ld a, a                                          ; $4212: $7f
	ld c, e                                          ; $4213: $4b
	add [hl]                                         ; $4214: $86
	ld c, e                                          ; $4215: $4b
	adc e                                            ; $4216: $8b
	ld c, e                                          ; $4217: $4b
	sub b                                            ; $4218: $90
	ld c, e                                          ; $4219: $4b
	sub l                                            ; $421a: $95
	ld c, e                                          ; $421b: $4b
	sbc h                                            ; $421c: $9c
	ld c, e                                          ; $421d: $4b
	and c                                            ; $421e: $a1
	ld c, e                                          ; $421f: $4b
	and [hl]                                         ; $4220: $a6
	ld c, e                                          ; $4221: $4b
	xor e                                            ; $4222: $ab
	ld c, e                                          ; $4223: $4b
	or b                                             ; $4224: $b0
	ld c, e                                          ; $4225: $4b
	or l                                             ; $4226: $b5
	ld c, e                                          ; $4227: $4b
	cp d                                             ; $4228: $ba
	ld c, e                                          ; $4229: $4b
	cp a                                             ; $422a: $bf
	ld c, e                                          ; $422b: $4b
	call nz, $c94b                                   ; $422c: $c4 $4b $c9
	ld c, e                                          ; $422f: $4b
	adc $4b                                          ; $4230: $ce $4b
	db $d3                                           ; $4232: $d3
	ld c, e                                          ; $4233: $4b
	ret c                                            ; $4234: $d8

	ld c, e                                          ; $4235: $4b
	db $dd                                           ; $4236: $dd
	ld c, e                                          ; $4237: $4b
	ldh [c], a                                       ; $4238: $e2
	ld c, e                                          ; $4239: $4b
	rst SubAFromBC                                          ; $423a: $e7
	ld c, e                                          ; $423b: $4b
	db $ec                                           ; $423c: $ec

jr_007_423d:
	ld c, e                                          ; $423d: $4b
	pop af                                           ; $423e: $f1
	ld c, e                                          ; $423f: $4b
	or $4b                                           ; $4240: $f6 $4b
	ei                                               ; $4242: $fb
	ld c, e                                          ; $4243: $4b
	nop                                              ; $4244: $00
	ld c, h                                          ; $4245: $4c
	dec b                                            ; $4246: $05
	ld c, h                                          ; $4247: $4c
	ld a, [bc]                                       ; $4248: $0a
	ld c, h                                          ; $4249: $4c
	rrca                                             ; $424a: $0f
	ld c, h                                          ; $424b: $4c
	inc d                                            ; $424c: $14
	ld c, h                                          ; $424d: $4c
	add hl, de                                       ; $424e: $19
	ld c, h                                          ; $424f: $4c
	ld e, $4c                                        ; $4250: $1e $4c
	inc hl                                           ; $4252: $23
	ld c, h                                          ; $4253: $4c
	ld a, [hl+]                                      ; $4254: $2a
	ld c, h                                          ; $4255: $4c
	cpl                                              ; $4256: $2f
	ld c, h                                          ; $4257: $4c
	inc [hl]                                         ; $4258: $34
	ld c, h                                          ; $4259: $4c
	add hl, sp                                       ; $425a: $39
	ld c, h                                          ; $425b: $4c
	ld a, $4c                                        ; $425c: $3e $4c
	ld b, e                                          ; $425e: $43
	ld c, h                                          ; $425f: $4c
	ld c, b                                          ; $4260: $48
	ld c, h                                          ; $4261: $4c
	ld c, l                                          ; $4262: $4d
	ld c, h                                          ; $4263: $4c
	ld d, d                                          ; $4264: $52
	ld c, h                                          ; $4265: $4c
	ld d, a                                          ; $4266: $57
	ld c, h                                          ; $4267: $4c
	ld e, [hl]                                       ; $4268: $5e
	ld c, h                                          ; $4269: $4c
	ld h, e                                          ; $426a: $63
	ld c, h                                          ; $426b: $4c
	ld l, b                                          ; $426c: $68
	ld c, h                                          ; $426d: $4c
	ld l, l                                          ; $426e: $6d
	ld c, h                                          ; $426f: $4c
	ld [hl], d                                       ; $4270: $72
	ld c, h                                          ; $4271: $4c
	ld [hl], a                                       ; $4272: $77
	ld c, h                                          ; $4273: $4c
	ld a, h                                          ; $4274: $7c
	ld c, h                                          ; $4275: $4c
	add c                                            ; $4276: $81
	ld c, h                                          ; $4277: $4c
	add [hl]                                         ; $4278: $86
	ld c, h                                          ; $4279: $4c
	adc e                                            ; $427a: $8b
	ld c, h                                          ; $427b: $4c
	sub b                                            ; $427c: $90
	ld c, h                                          ; $427d: $4c
	sub l                                            ; $427e: $95
	ld c, h                                          ; $427f: $4c
	sbc d                                            ; $4280: $9a
	ld c, h                                          ; $4281: $4c
	sbc a                                            ; $4282: $9f
	ld c, h                                          ; $4283: $4c
	and h                                            ; $4284: $a4
	ld c, h                                          ; $4285: $4c
	xor c                                            ; $4286: $a9
	ld c, h                                          ; $4287: $4c
	xor [hl]                                         ; $4288: $ae
	ld c, h                                          ; $4289: $4c
	or e                                             ; $428a: $b3
	ld c, h                                          ; $428b: $4c
	cp b                                             ; $428c: $b8
	ld c, h                                          ; $428d: $4c
	cp l                                             ; $428e: $bd
	ld c, h                                          ; $428f: $4c
	jp nz, $c74c                                     ; $4290: $c2 $4c $c7

	ld c, h                                          ; $4293: $4c
	call z, $d14c                                    ; $4294: $cc $4c $d1
	ld c, h                                          ; $4297: $4c
	sub $4c                                          ; $4298: $d6 $4c
	db $db                                           ; $429a: $db
	ld c, h                                          ; $429b: $4c
	ldh [$4c], a                                     ; $429c: $e0 $4c
	push hl                                          ; $429e: $e5
	ld c, h                                          ; $429f: $4c
	ld [$ef4c], a                                    ; $42a0: $ea $4c $ef
	ld c, h                                          ; $42a3: $4c
	db $f4                                           ; $42a4: $f4
	ld c, h                                          ; $42a5: $4c
	ei                                               ; $42a6: $fb
	ld c, h                                          ; $42a7: $4c
	nop                                              ; $42a8: $00
	ld c, l                                          ; $42a9: $4d
	dec b                                            ; $42aa: $05
	ld c, l                                          ; $42ab: $4d
	inc c                                            ; $42ac: $0c
	ld c, l                                          ; $42ad: $4d
	ld de, $164d                                     ; $42ae: $11 $4d $16
	ld c, l                                          ; $42b1: $4d
	dec de                                           ; $42b2: $1b
	ld c, l                                          ; $42b3: $4d
	jr nz, jr_007_4303                               ; $42b4: $20 $4d

	dec h                                            ; $42b6: $25
	ld c, l                                          ; $42b7: $4d
	ld a, [hl+]                                      ; $42b8: $2a
	ld c, l                                          ; $42b9: $4d
	cpl                                              ; $42ba: $2f
	ld c, l                                          ; $42bb: $4d
	inc [hl]                                         ; $42bc: $34
	ld c, l                                          ; $42bd: $4d
	add hl, sp                                       ; $42be: $39
	ld c, l                                          ; $42bf: $4d
	ld a, $4d                                        ; $42c0: $3e $4d
	ld b, e                                          ; $42c2: $43
	ld c, l                                          ; $42c3: $4d
	ld c, b                                          ; $42c4: $48
	ld c, l                                          ; $42c5: $4d
	ld c, l                                          ; $42c6: $4d
	ld c, l                                          ; $42c7: $4d
	ld d, d                                          ; $42c8: $52
	ld c, l                                          ; $42c9: $4d
	ld d, a                                          ; $42ca: $57
	ld c, l                                          ; $42cb: $4d
	ld e, h                                          ; $42cc: $5c
	ld c, l                                          ; $42cd: $4d
	ld h, c                                          ; $42ce: $61
	ld c, l                                          ; $42cf: $4d
	ld h, [hl]                                       ; $42d0: $66
	ld c, l                                          ; $42d1: $4d
	ld l, e                                          ; $42d2: $6b
	ld c, l                                          ; $42d3: $4d
	ld [hl], b                                       ; $42d4: $70
	ld c, l                                          ; $42d5: $4d
	ld [hl], l                                       ; $42d6: $75
	ld c, l                                          ; $42d7: $4d
	ld a, d                                          ; $42d8: $7a
	ld c, l                                          ; $42d9: $4d
	ld a, a                                          ; $42da: $7f
	ld c, l                                          ; $42db: $4d
	add h                                            ; $42dc: $84
	ld c, l                                          ; $42dd: $4d
	adc c                                            ; $42de: $89
	ld c, l                                          ; $42df: $4d
	adc [hl]                                         ; $42e0: $8e
	ld c, l                                          ; $42e1: $4d
	sub e                                            ; $42e2: $93
	ld c, l                                          ; $42e3: $4d
	sbc b                                            ; $42e4: $98
	ld c, l                                          ; $42e5: $4d
	sbc l                                            ; $42e6: $9d
	ld c, l                                          ; $42e7: $4d
	and d                                            ; $42e8: $a2
	ld c, l                                          ; $42e9: $4d
	and a                                            ; $42ea: $a7
	ld c, l                                          ; $42eb: $4d
	xor h                                            ; $42ec: $ac
	ld c, l                                          ; $42ed: $4d
	or c                                             ; $42ee: $b1
	ld c, l                                          ; $42ef: $4d
	or [hl]                                          ; $42f0: $b6
	ld c, l                                          ; $42f1: $4d
	cp e                                             ; $42f2: $bb

jr_007_42f3:
	ld c, l                                          ; $42f3: $4d
	ret nz                                           ; $42f4: $c0

	ld c, l                                          ; $42f5: $4d
	rst JumpTable                                          ; $42f6: $c7
	ld c, l                                          ; $42f7: $4d
	adc $4d                                          ; $42f8: $ce $4d
	push de                                          ; $42fa: $d5
	ld c, l                                          ; $42fb: $4d
	call c, $e34d                                    ; $42fc: $dc $4d $e3
	ld c, l                                          ; $42ff: $4d
	ld [$f14d], a                                    ; $4300: $ea $4d $f1

jr_007_4303:
	ld c, l                                          ; $4303: $4d
	adc d                                            ; $4304: $8a
	ld a, b                                          ; $4305: $78
	ld l, $08                                        ; $4306: $2e $08
	ld c, d                                          ; $4308: $4a
	ld h, e                                          ; $4309: $63
	ld c, h                                          ; $430a: $4c
	add $4e                                          ; $430b: $c6 $4e
	dec a                                            ; $430d: $3d
	ld d, b                                          ; $430e: $50
	adc d                                            ; $430f: $8a
	ld a, b                                          ; $4310: $78
	jr c, jr_007_4313                                ; $4311: $38 $00

jr_007_4313:
	ld b, b                                          ; $4313: $40
	rla                                              ; $4314: $17
	ld b, e                                          ; $4315: $43
	bit 0, l                                         ; $4316: $cb $45
	xor a                                            ; $4318: $af
	ld b, a                                          ; $4319: $47
	adc d                                            ; $431a: $8a
	ld a, b                                          ; $431b: $78
	jr c, jr_007_42f3                                ; $431c: $38 $d5

	ld c, b                                          ; $431e: $48
	or e                                             ; $431f: $b3
	ld c, d                                          ; $4320: $4a
	db $10                                           ; $4321: $10

jr_007_4322:
	ld c, l                                          ; $4322: $4d
	ld b, d                                          ; $4323: $42
	ld c, [hl]                                       ; $4324: $4e
	adc d                                            ; $4325: $8a
	ld a, b                                          ; $4326: $78
	jr c, jr_007_4322                                ; $4327: $38 $f9

	ld c, [hl]                                       ; $4329: $4e
	cp d                                             ; $432a: $ba
	ld c, a                                          ; $432b: $4f
	add d                                            ; $432c: $82
	ld d, c                                          ; $432d: $51
	pop hl                                           ; $432e: $e1
	ld d, d                                          ; $432f: $52
	adc d                                            ; $4330: $8a
	ld a, b                                          ; $4331: $78
	jr c, jr_007_42f3                                ; $4332: $38 $bf

	ld d, e                                          ; $4334: $53
	sbc e                                            ; $4335: $9b
	ld d, h                                          ; $4336: $54
	rla                                              ; $4337: $17
	ld d, [hl]                                       ; $4338: $56
	ld b, d                                          ; $4339: $42
	ld d, [hl]                                       ; $433a: $56

jr_007_433b:
	adc d                                            ; $433b: $8a
	jr c, jr_007_4376                                ; $433c: $38 $38

	rst JumpTable                                          ; $433e: $c7
	ld d, [hl]                                       ; $433f: $56
	dec l                                            ; $4340: $2d
	ld e, b                                          ; $4341: $58
	ld a, e                                          ; $4342: $7b
	ld e, c                                          ; $4343: $59
	adc d                                            ; $4344: $8a
	ld a, b                                          ; $4345: $78
	jr c, jr_007_436d                                ; $4346: $38 $25

	ld e, d                                          ; $4348: $5a

Jump_007_4349:
	rst SubAFromHL                                          ; $4349: $d7
	ld e, h                                          ; $434a: $5c
	call c, $785f                            ; $434b: $dc $5f $78
	ld h, c                                          ; $434e: $61
	adc d                                            ; $434f: $8a
	ld a, b                                          ; $4350: $78
	jr c, jr_007_435d                                ; $4351: $38 $0a

	ld l, d                                          ; $4353: $6a
	jp z, $7a6c                              ; $4354: $ca $6c $7a

	ld l, a                                          ; $4357: $6f
	ld c, e                                          ; $4358: $4b
	ld [hl], d                                       ; $4359: $72
	adc d                                            ; $435a: $8a

Jump_007_435b:
	jr c, jr_007_4394                                ; $435b: $38 $37

jr_007_435d:
	add d                                            ; $435d: $82
	ld l, d                                          ; $435e: $6a
	ld e, $6b                                        ; $435f: $1e $6b
	ld c, $6c                                        ; $4361: $0e $6c
	adc d                                            ; $4363: $8a
	ld a, b                                          ; $4364: $78
	scf                                              ; $4365: $37
	xor b                                            ; $4366: $a8
	ld e, d                                          ; $4367: $5a
	ld a, [hl-]                                      ; $4368: $3a
	ld e, [hl]                                       ; $4369: $5e
	ld c, d                                          ; $436a: $4a
	ld h, l                                          ; $436b: $65
	ld e, b                                          ; $436c: $58

jr_007_436d:
	ld l, c                                          ; $436d: $69
	adc d                                            ; $436e: $8a
	ld a, b                                          ; $436f: $78
	jr c, jr_007_433b                                ; $4370: $38 $c9

	ld h, c                                          ; $4372: $61
	jp Jump_007_4e64                                 ; $4373: $c3 $64 $4e


jr_007_4376:
	ld h, a                                          ; $4376: $67
	or a                                             ; $4377: $b7
	ld l, b                                          ; $4378: $68
	adc d                                            ; $4379: $8a
	ld a, b                                          ; $437a: $78
	ld l, $00                                        ; $437b: $2e $00
	ld b, b                                          ; $437d: $40
	and d                                            ; $437e: $a2
	ld b, h                                          ; $437f: $44
	ld c, a                                          ; $4380: $4f
	ld b, a                                          ; $4381: $47
	ld c, b                                          ; $4382: $48
	ld c, c                                          ; $4383: $49
	adc d                                            ; $4384: $8a
	ld a, b                                          ; $4385: $78
	ld l, $d1                                        ; $4386: $2e $d1
	ld d, b                                          ; $4388: $50
	ld [$a553], sp                                   ; $4389: $08 $53 $a5
	ld d, h                                          ; $438c: $54
	ld c, [hl]                                       ; $438d: $4e
	ld d, a                                          ; $438e: $57
	adc d                                            ; $438f: $8a
	ld a, b                                          ; $4390: $78
	cpl                                              ; $4391: $2f
	nop                                              ; $4392: $00
	ld b, b                                          ; $4393: $40

jr_007_4394:
	cp c                                             ; $4394: $b9
	ld b, c                                          ; $4395: $41
	and h                                            ; $4396: $a4
	ld b, e                                          ; $4397: $43
	inc h                                            ; $4398: $24
	ld b, l                                          ; $4399: $45
	adc d                                            ; $439a: $8a
	ld a, b                                          ; $439b: $78
	cpl                                              ; $439c: $2f
	db $dd                                           ; $439d: $dd
	ld b, l                                          ; $439e: $45
	or h                                             ; $439f: $b4
	ld b, a                                          ; $43a0: $47
	ld [hl], e                                       ; $43a1: $73
	ld c, c                                          ; $43a2: $49
	pop bc                                           ; $43a3: $c1
	ld c, e                                          ; $43a4: $4b
	adc d                                            ; $43a5: $8a
	ld a, b                                          ; $43a6: $78
	cpl                                              ; $43a7: $2f
	or h                                             ; $43a8: $b4
	ld c, h                                          ; $43a9: $4c
	ld [$6250], a                                    ; $43aa: $ea $50 $62
	ld d, l                                          ; $43ad: $55
	dec e                                            ; $43ae: $1d
	ld e, c                                          ; $43af: $59
	adc d                                            ; $43b0: $8a
	ld a, b                                          ; $43b1: $78
	cpl                                              ; $43b2: $2f
	ld d, c                                          ; $43b3: $51
	ld e, d                                          ; $43b4: $5a
	ld b, $5c                                        ; $43b5: $06 $5c
	and l                                            ; $43b7: $a5
	ld e, l                                          ; $43b8: $5d
	inc b                                            ; $43b9: $04
	ld e, a                                          ; $43ba: $5f
	adc d                                            ; $43bb: $8a
	ld a, b                                          ; $43bc: $78
	cpl                                              ; $43bd: $2f
	sbc a                                            ; $43be: $9f
	ld e, a                                          ; $43bf: $5f
	dec [hl]                                         ; $43c0: $35
	ld h, d                                          ; $43c1: $62
	ld e, d                                          ; $43c2: $5a
	ld h, h                                          ; $43c3: $64
	cp e                                             ; $43c4: $bb
	ld h, l                                          ; $43c5: $65
	adc d                                            ; $43c6: $8a
	ld a, b                                          ; $43c7: $78
	cpl                                              ; $43c8: $2f
	ld b, e                                          ; $43c9: $43
	ld h, [hl]                                       ; $43ca: $66
	inc a                                            ; $43cb: $3c
	ld l, b                                          ; $43cc: $68
	ld h, $6a                                        ; $43cd: $26 $6a
	ld c, c                                          ; $43cf: $49
	ld l, e                                          ; $43d0: $6b
	adc d                                            ; $43d1: $8a
	ld a, b                                          ; $43d2: $78
	cpl                                              ; $43d3: $2f
	add hl, de                                       ; $43d4: $19
	ld l, h                                          ; $43d5: $6c
	or d                                             ; $43d6: $b2
	ld l, h                                          ; $43d7: $6c
	inc l                                            ; $43d8: $2c
	ld l, l                                          ; $43d9: $6d
	sbc e                                            ; $43da: $9b
	ld l, l                                          ; $43db: $6d
	adc d                                            ; $43dc: $8a
	ld a, b                                          ; $43dd: $78
	cpl                                              ; $43de: $2f
	add $6d                                          ; $43df: $c6 $6d
	rla                                              ; $43e1: $17
	ld l, [hl]                                       ; $43e2: $6e
	inc a                                            ; $43e3: $3c
	ld l, [hl]                                       ; $43e4: $6e
	adc d                                            ; $43e5: $8a
	ld l, [hl]                                       ; $43e6: $6e
	adc d                                            ; $43e7: $8a
	jr c, jr_007_4419                                ; $43e8: $38 $2f

	or c                                             ; $43ea: $b1
	ld l, [hl]                                       ; $43eb: $6e
	adc e                                            ; $43ec: $8b
	ld l, a                                          ; $43ed: $6f
	ld sp, $8a70                                     ; $43ee: $31 $70 $8a
	ld a, b                                          ; $43f1: $78
	cpl                                              ; $43f2: $2f
	add sp, $70                                      ; $43f3: $e8 $70
	and [hl]                                         ; $43f5: $a6
	ld [hl], c                                       ; $43f6: $71
	ld a, [hl-]                                      ; $43f7: $3a
	ld [hl], d                                       ; $43f8: $72
	sub d                                            ; $43f9: $92
	ld [hl], d                                       ; $43fa: $72
	adc d                                            ; $43fb: $8a

Call_007_43fc:
Jump_007_43fc:
	ld a, b                                          ; $43fc: $78
	cpl                                              ; $43fd: $2f
	xor [hl]                                         ; $43fe: $ae
	ld [hl], d                                       ; $43ff: $72
	ld d, e                                          ; $4400: $53
	ld [hl], h                                       ; $4401: $74
	rst SubAFromDE                                          ; $4402: $df
	ld [hl], l                                       ; $4403: $75
	ld c, d                                          ; $4404: $4a
	halt                                             ; $4405: $76
	adc d                                            ; $4406: $8a
	jr c, jr_007_443a                                ; $4407: $38 $31

	ld d, h                                          ; $4409: $54
	ld a, c                                          ; $440a: $79
	call z, $e17a                                    ; $440b: $cc $7a $e1
	ld a, h                                          ; $440e: $7c
	adc d                                            ; $440f: $8a
	ld a, b                                          ; $4410: $78
	jr nc, jr_007_4413                               ; $4411: $30 $00

jr_007_4413:
	ld b, b                                          ; $4413: $40
	rst $38                                          ; $4414: $ff
	ld b, d                                          ; $4415: $42
	db $e3                                           ; $4416: $e3
	ld b, l                                          ; $4417: $45
	cp a                                             ; $4418: $bf

jr_007_4419:
	ld b, [hl]                                       ; $4419: $46
	adc d                                            ; $441a: $8a
	ld a, b                                          ; $441b: $78
	jr nc, @-$4e                                     ; $441c: $30 $b0

	ld b, a                                          ; $441e: $47
	ld [hl], l                                       ; $441f: $75
	ld c, c                                          ; $4420: $49
	ld c, [hl]                                       ; $4421: $4e
	ld c, e                                          ; $4422: $4b
	adc h                                            ; $4423: $8c
	ld c, h                                          ; $4424: $4c
	adc d                                            ; $4425: $8a
	ld a, b                                          ; $4426: $78
	jr nc, jr_007_4460                               ; $4427: $30 $37

	ld c, l                                          ; $4429: $4d
	call $ec4e                                       ; $442a: $cd $4e $ec
	ld d, b                                          ; $442d: $50
	jp z, $8a52                                      ; $442e: $ca $52 $8a

	jr c, jr_007_4461                                ; $4431: $38 $2e

	daa                                              ; $4433: $27
	ld e, b                                          ; $4434: $58
	inc e                                            ; $4435: $1c
	ld e, c                                          ; $4436: $59
	xor d                                            ; $4437: $aa
	ld e, d                                          ; $4438: $5a
	adc d                                            ; $4439: $8a

jr_007_443a:
	ld a, b                                          ; $443a: $78
	jr nc, jr_007_44ba                               ; $443b: $30 $7d

	ld d, e                                          ; $443d: $53
	and e                                            ; $443e: $a3
	ld d, l                                          ; $443f: $55
	ld h, l                                          ; $4440: $65
	ld d, [hl]                                       ; $4441: $56
	ld a, a                                          ; $4442: $7f
	ld d, a                                          ; $4443: $57
	adc d                                            ; $4444: $8a
	ld a, b                                          ; $4445: $78
	ld sp, $7591                                     ; $4446: $31 $91 $75
	cp e                                             ; $4449: $bb
	halt                                             ; $444a: $76

jr_007_444b:
	ld [hl], d                                       ; $444b: $72
	ld [hl], a                                       ; $444c: $77
	ld h, c                                          ; $444d: $61
	ld a, b                                          ; $444e: $78
	adc d                                            ; $444f: $8a
	ld a, b                                          ; $4450: $78
	jr nc, @+$78                                     ; $4451: $30 $76

	ld e, b                                          ; $4453: $58
	ld [hl-], a                                      ; $4454: $32
	ld e, c                                          ; $4455: $59
	ld a, [$9c59]                                    ; $4456: $fa $59 $9c
	ld e, d                                          ; $4459: $5a
	adc d                                            ; $445a: $8a
	ld a, b                                          ; $445b: $78
	jr nc, @-$14                                     ; $445c: $30 $ea

	ld e, d                                          ; $445e: $5a
	ld e, d                                          ; $445f: $5a

jr_007_4460:
	ld e, e                                          ; $4460: $5b

jr_007_4461:
	ld b, e                                          ; $4461: $43
	ld e, h                                          ; $4462: $5c
	ret c                                            ; $4463: $d8

	ld e, h                                          ; $4464: $5c
	adc d                                            ; $4465: $8a
	ld a, b                                          ; $4466: $78
	jr nc, @-$0a                                     ; $4467: $30 $f4

	ld e, h                                          ; $4469: $5c
	and h                                            ; $446a: $a4
	ld e, [hl]                                       ; $446b: $5e
	ldh a, [$60]                                     ; $446c: $f0 $60
	or c                                             ; $446e: $b1
	ld h, c                                          ; $446f: $61
	adc d                                            ; $4470: $8a
	ld a, b                                          ; $4471: $78
	jr nc, jr_007_4460                               ; $4472: $30 $ec

	ld h, c                                          ; $4474: $61
	xor b                                            ; $4475: $a8
	ld h, d                                          ; $4476: $62
	ld b, h                                          ; $4477: $44
	ld h, h                                          ; $4478: $64
	push bc                                          ; $4479: $c5
	ld h, h                                          ; $447a: $64
	adc d                                            ; $447b: $8a
	ld a, b                                          ; $447c: $78
	jr nc, @+$11                                     ; $447d: $30 $0f

	ld h, l                                          ; $447f: $65
	and l                                            ; $4480: $a5
	ld h, l                                          ; $4481: $65
	db $dd                                           ; $4482: $dd
	ld h, l                                          ; $4483: $65
	ld c, b                                          ; $4484: $48
	ld h, [hl]                                       ; $4485: $66
	adc d                                            ; $4486: $8a
	ld a, b                                          ; $4487: $78
	jr nc, @+$6a                                     ; $4488: $30 $68

	ld h, [hl]                                       ; $448a: $66

jr_007_448b:
	rra                                              ; $448b: $1f
	ld h, a                                          ; $448c: $67
	ld hl, $b368                                     ; $448d: $21 $68 $b3
	ld l, b                                          ; $4490: $68
	adc d                                            ; $4491: $8a
	ld a, b                                          ; $4492: $78
	jr nc, jr_007_448b                               ; $4493: $30 $f6

	ld l, b                                          ; $4495: $68
	adc c                                            ; $4496: $89
	ld l, c                                          ; $4497: $69
	ld [hl], a                                       ; $4498: $77
	ld l, d                                          ; $4499: $6a
	or $6a                                           ; $449a: $f6 $6a
	adc d                                            ; $449c: $8a
	ld a, b                                          ; $449d: $78
	jr nc, jr_007_44ba                               ; $449e: $30 $1a

	ld l, e                                          ; $44a0: $6b
	ld d, c                                          ; $44a1: $51
	ld l, h                                          ; $44a2: $6c
	ld l, l                                          ; $44a3: $6d
	ld l, l                                          ; $44a4: $6d
	ld bc, $8a6e                                     ; $44a5: $01 $6e $8a
	jr jr_007_44da                                   ; $44a8: $18 $30

	sbc e                                            ; $44aa: $9b
	ld l, [hl]                                       ; $44ab: $6e
	dec [hl]                                         ; $44ac: $35
	ld l, a                                          ; $44ad: $6f
	adc d                                            ; $44ae: $8a
	ld a, b                                          ; $44af: $78
	jr nc, jr_007_444b                               ; $44b0: $30 $99

	ld [hl], b                                       ; $44b2: $70
	ldh [$72], a                                     ; $44b3: $e0 $72
	ld l, h                                          ; $44b5: $6c
	ld [hl], l                                       ; $44b6: $75
	ld c, a                                          ; $44b7: $4f
	ld [hl], a                                       ; $44b8: $77
	adc d                                            ; $44b9: $8a

jr_007_44ba:
	ld a, b                                          ; $44ba: $78
	jr nc, jr_007_44cb                               ; $44bb: $30 $0e

	ld a, b                                          ; $44bd: $78
	cp e                                             ; $44be: $bb
	ld a, d                                          ; $44bf: $7a
	and c                                            ; $44c0: $a1
	ld a, h                                          ; $44c1: $7c
	add hl, hl                                       ; $44c2: $29
	ld a, [hl]                                       ; $44c3: $7e
	adc d                                            ; $44c4: $8a
	jr c, @+$33                                      ; $44c5: $38 $31

	jp c, $0078                                      ; $44c7: $da $78 $00

	ld a, c                                          ; $44ca: $79

jr_007_44cb:
	inc e                                            ; $44cb: $1c
	ld a, c                                          ; $44cc: $79
	adc d                                            ; $44cd: $8a
	ld a, b                                          ; $44ce: $78
	ld [hl-], a                                      ; $44cf: $32
	nop                                              ; $44d0: $00
	ld b, b                                          ; $44d1: $40
	sub h                                            ; $44d2: $94
	ld b, b                                          ; $44d3: $40
	ld h, l                                          ; $44d4: $65
	ld b, c                                          ; $44d5: $41
	ld b, e                                          ; $44d6: $43
	ld b, d                                          ; $44d7: $42
	adc d                                            ; $44d8: $8a
	ld a, b                                          ; $44d9: $78

jr_007_44da:
	ld sp, $4000                                     ; $44da: $31 $00 $40
	ret c                                            ; $44dd: $d8

	ld b, c                                          ; $44de: $41
	ld [hl], a                                       ; $44df: $77
	ld b, e                                          ; $44e0: $43
	sbc a                                            ; $44e1: $9f
	ld b, l                                          ; $44e2: $45
	adc d                                            ; $44e3: $8a
	ld a, b                                          ; $44e4: $78
	ld sp, $4668                                     ; $44e5: $31 $68 $46
	add hl, sp                                       ; $44e8: $39
	ld c, b                                          ; $44e9: $48
	ld a, a                                          ; $44ea: $7f
	ld c, d                                          ; $44eb: $4a
	ld a, b                                          ; $44ec: $78
	ld c, e                                          ; $44ed: $4b
	adc d                                            ; $44ee: $8a
	ld a, b                                          ; $44ef: $78
	ld sp, $4ca4                                     ; $44f0: $31 $a4 $4c
	rst JumpTable                                          ; $44f3: $c7
	ld c, l                                          ; $44f4: $4d
	ld a, [bc]                                       ; $44f5: $0a
	ld c, a                                          ; $44f6: $4f
	add sp, $4f                                      ; $44f7: $e8 $4f
	adc d                                            ; $44f9: $8a
	ld a, b                                          ; $44fa: $78
	ld sp, $5045                                     ; $44fb: $31 $45 $50
	ld [$dc52], sp                                   ; $44fe: $08 $52 $dc
	ld d, e                                          ; $4501: $53
	ld l, d                                          ; $4502: $6a
	ld d, l                                          ; $4503: $55
	adc d                                            ; $4504: $8a
	ld a, b                                          ; $4505: $78
	ld sp, $5602                                     ; $4506: $31 $02 $56
	call Call_007_5558                               ; $4509: $cd $58 $55
	ld e, e                                          ; $450c: $5b
	and e                                            ; $450d: $a3
	ld e, l                                          ; $450e: $5d
	adc d                                            ; $450f: $8a
	ld a, b                                          ; $4510: $78
	ld sp, $5ea7                                     ; $4511: $31 $a7 $5e
	ld sp, $a560                                     ; $4514: $31 $60 $a5
	ld h, c                                          ; $4517: $61
	adc h                                            ; $4518: $8c
	ld h, d                                          ; $4519: $62
	adc d                                            ; $451a: $8a
	ld [hl], b                                       ; $451b: $70
	scf                                              ; $451c: $37
	dec hl                                           ; $451d: $2b
	ld c, c                                          ; $451e: $49
	jp c, $2849                                      ; $451f: $da $49 $28

	ld c, d                                          ; $4522: $4a
	adc d                                            ; $4523: $8a
	ld a, b                                          ; $4524: $78
	ld sp, $62e6                                     ; $4525: $31 $e6 $62
	ld h, $65                                        ; $4528: $26 $65
	jr @+$69                                         ; $452a: $18 $67

	sbc l                                            ; $452c: $9d
	ld l, b                                          ; $452d: $68
	adc d                                            ; $452e: $8a
	ld a, b                                          ; $452f: $78
	ld sp, $6982                                     ; $4530: $31 $82 $69
	sbc $6a                                          ; $4533: $de $6a
	rlca                                             ; $4535: $07
	ld l, h                                          ; $4536: $6c
	cp d                                             ; $4537: $ba
	ld l, l                                          ; $4538: $6d
	adc d                                            ; $4539: $8a
	ld a, b                                          ; $453a: $78
	ld sp, $6e00                                     ; $453b: $31 $00 $6e
	ld b, b                                          ; $453e: $40
	ld [hl], b                                       ; $453f: $70
	ld a, d                                          ; $4540: $7a
	ld [hl], d                                       ; $4541: $72
	sub c                                            ; $4542: $91
	ld [hl], h                                       ; $4543: $74
	adc d                                            ; $4544: $8a
	ld a, b                                          ; $4545: $78
	ld [hl-], a                                      ; $4546: $32
	call z, $0142                                    ; $4547: $cc $42 $01
	ld b, l                                          ; $454a: $45
	ld l, h                                          ; $454b: $6c
	ld b, a                                          ; $454c: $47
	xor [hl]                                         ; $454d: $ae
	ld c, c                                          ; $454e: $49
	adc d                                            ; $454f: $8a
	ld a, b                                          ; $4550: $78
	ld [hl-], a                                      ; $4551: $32
	call c, $204a                                    ; $4552: $dc $4a $20
	ld c, [hl]                                       ; $4555: $4e
	ld a, [de]                                       ; $4556: $1a
	ld d, c                                          ; $4557: $51
	jp $8a53                                         ; $4558: $c3 $53 $8a


	ld a, b                                          ; $455b: $78
	ld [hl-], a                                      ; $455c: $32
	call $f654                                       ; $455d: $cd $54 $f6
	ld d, l                                          ; $4560: $55
	sub e                                            ; $4561: $93
	ld d, a                                          ; $4562: $57
	or [hl]                                          ; $4563: $b6
	ld e, c                                          ; $4564: $59
	adc d                                            ; $4565: $8a
	ld a, b                                          ; $4566: $78
	ld [hl-], a                                      ; $4567: $32
	inc de                                           ; $4568: $13
	ld e, d                                          ; $4569: $5a
	halt                                             ; $456a: $76
	ld e, e                                          ; $456b: $5b
	and c                                            ; $456c: $a1
	ld e, h                                          ; $456d: $5c
	ld h, d                                          ; $456e: $62
	ld e, [hl]                                       ; $456f: $5e
	adc d                                            ; $4570: $8a
	ld a, b                                          ; $4571: $78
	cpl                                              ; $4572: $2f
	cp l                                             ; $4573: $bd
	halt                                             ; $4574: $76
	xor d                                            ; $4575: $aa
	ld [hl], a                                       ; $4576: $77
	db $fd                                           ; $4577: $fd
	ld a, b                                          ; $4578: $78
	and h                                            ; $4579: $a4
	ld a, c                                          ; $457a: $79
	adc d                                            ; $457b: $8a
	ld a, b                                          ; $457c: $78
	ld [hl-], a                                      ; $457d: $32
	cp $5e                                           ; $457e: $fe $5e
	ld [hl], a                                       ; $4580: $77
	ld h, c                                          ; $4581: $61
	xor d                                            ; $4582: $aa
	ld h, l                                          ; $4583: $65
	ld a, [de]                                       ; $4584: $1a
	ld h, a                                          ; $4585: $67
	adc d                                            ; $4586: $8a
	ld a, b                                          ; $4587: $78
	ld [hl-], a                                      ; $4588: $32
	add hl, sp                                       ; $4589: $39
	ld h, a                                          ; $458a: $67
	rla                                              ; $458b: $17
	ld l, b                                          ; $458c: $68
	adc $69                                          ; $458d: $ce $69
	ld a, [$8a6a]                                    ; $458f: $fa $6a $8a
	jr c, jr_007_45c6                                ; $4592: $38 $32

	ld b, b                                          ; $4594: $40
	ld l, e                                          ; $4595: $6b
	db $10                                           ; $4596: $10
	ld l, l                                          ; $4597: $6d
	ld e, e                                          ; $4598: $5b
	ld l, [hl]                                       ; $4599: $6e
	adc d                                            ; $459a: $8a
	ld a, b                                          ; $459b: $78
	ld [hl-], a                                      ; $459c: $32
	ret nc                                           ; $459d: $d0

	ld l, [hl]                                       ; $459e: $6e
	ld l, $70                                        ; $459f: $2e $70
	xor l                                            ; $45a1: $ad
	ld [hl], c                                       ; $45a2: $71
	ld b, h                                          ; $45a3: $44
	ld [hl], e                                       ; $45a4: $73
	adc d                                            ; $45a5: $8a
	ld a, b                                          ; $45a6: $78
	ld [hl-], a                                      ; $45a7: $32
	sbc [hl]                                         ; $45a8: $9e
	ld [hl], e                                       ; $45a9: $73
	ld b, $74                                        ; $45aa: $06 $74
	add h                                            ; $45ac: $84
	ld [hl], h                                       ; $45ad: $74
	ld de, $8a75                                     ; $45ae: $11 $75 $8a
	ld a, b                                          ; $45b1: $78
	ld [hl-], a                                      ; $45b2: $32
	ld a, a                                          ; $45b3: $7f
	ld [hl], l                                       ; $45b4: $75
	sub a                                            ; $45b5: $97
	ld [hl], a                                       ; $45b6: $77
	ld b, a                                          ; $45b7: $47
	ld a, d                                          ; $45b8: $7a
	ld [hl], e                                       ; $45b9: $73
	ld a, h                                          ; $45ba: $7c
	adc d                                            ; $45bb: $8a
	ld a, b                                          ; $45bc: $78
	ld [hl-], a                                      ; $45bd: $32
	xor h                                            ; $45be: $ac
	ld a, h                                          ; $45bf: $7c
	ld b, h                                          ; $45c0: $44
	ld a, l                                          ; $45c1: $7d
	pop af                                           ; $45c2: $f1
	ld a, l                                          ; $45c3: $7d
	cp c                                             ; $45c4: $b9
	ld a, [hl]                                       ; $45c5: $7e

jr_007_45c6:
	adc d                                            ; $45c6: $8a
	ld a, b                                          ; $45c7: $78
	scf                                              ; $45c8: $37
	ld [$1551], a                                    ; $45c9: $ea $51 $15
	ld d, h                                          ; $45cc: $54
	ld de, $5b56                                     ; $45cd: $11 $56 $5b
	ld d, a                                          ; $45d0: $57
	adc d                                            ; $45d1: $8a
	jr c, jr_007_4607                                ; $45d2: $38 $33

	nop                                              ; $45d4: $00
	ld b, b                                          ; $45d5: $40
	ld e, e                                          ; $45d6: $5b
	ld b, b                                          ; $45d7: $40
	cp b                                             ; $45d8: $b8
	ld b, b                                          ; $45d9: $40
	adc d                                            ; $45da: $8a
	ld a, b                                          ; $45db: $78
	scf                                              ; $45dc: $37
	nop                                              ; $45dd: $00
	ld b, b                                          ; $45de: $40
	adc d                                            ; $45df: $8a
	ld b, b                                          ; $45e0: $40
	inc b                                            ; $45e1: $04
	ld b, c                                          ; $45e2: $41
	ld c, e                                          ; $45e3: $4b
	ld b, c                                          ; $45e4: $41
	adc d                                            ; $45e5: $8a
	jr c, jr_007_461b                                ; $45e6: $38 $33

	ldh [c], a                                       ; $45e8: $e2
	ld b, b                                          ; $45e9: $40
	add l                                            ; $45ea: $85
	ld b, c                                          ; $45eb: $41
	ld [hl], d                                       ; $45ec: $72
	ld b, d                                          ; $45ed: $42
	adc d                                            ; $45ee: $8a
	ld a, b                                          ; $45ef: $78
	inc sp                                           ; $45f0: $33
	nop                                              ; $45f1: $00
	ld b, e                                          ; $45f2: $43
	inc l                                            ; $45f3: $2c
	ld b, h                                          ; $45f4: $44
	ld l, [hl]                                       ; $45f5: $6e
	ld b, h                                          ; $45f6: $44
	add d                                            ; $45f7: $82
	ld b, h                                          ; $45f8: $44
	adc d                                            ; $45f9: $8a
	ld a, b                                          ; $45fa: $78
	inc sp                                           ; $45fb: $33
	sub b                                            ; $45fc: $90
	ld b, h                                          ; $45fd: $44
	rst FarCall                                          ; $45fe: $f7
	ld b, h                                          ; $45ff: $44
	ld d, h                                          ; $4600: $54
	ld b, l                                          ; $4601: $45
	sbc b                                            ; $4602: $98
	ld b, l                                          ; $4603: $45
	adc d                                            ; $4604: $8a
	ld a, b                                          ; $4605: $78
	inc sp                                           ; $4606: $33

jr_007_4607:
	ret                                              ; $4607: $c9


	ld b, l                                          ; $4608: $45
	ld a, [bc]                                       ; $4609: $0a
	ld b, [hl]                                       ; $460a: $46
	ld c, l                                          ; $460b: $4d
	ld b, [hl]                                       ; $460c: $46
	adc [hl]                                         ; $460d: $8e
	ld b, [hl]                                       ; $460e: $46
	adc d                                            ; $460f: $8a
	ld a, b                                          ; $4610: $78
	inc sp                                           ; $4611: $33
	xor a                                            ; $4612: $af
	ld b, [hl]                                       ; $4613: $46
	rst GetHLinHL                                          ; $4614: $cf
	ld c, c                                          ; $4615: $49
	ld b, l                                          ; $4616: $45
	ld c, l                                          ; $4617: $4d
	call $8a50                                       ; $4618: $cd $50 $8a

jr_007_461b:
	ld a, b                                          ; $461b: $78
	inc sp                                           ; $461c: $33
	ld [hl+], a                                      ; $461d: $22
	ld d, d                                          ; $461e: $52
	ldh a, [rHDMA2]                                  ; $461f: $f0 $52
	cp a                                             ; $4621: $bf
	ld d, e                                          ; $4622: $53
	ld de, $8a54                                     ; $4623: $11 $54 $8a
	ld a, b                                          ; $4626: $78
	inc sp                                           ; $4627: $33
	ld c, l                                          ; $4628: $4d
	ld d, h                                          ; $4629: $54
	inc de                                           ; $462a: $13
	ld e, b                                          ; $462b: $58
	ld h, [hl]                                       ; $462c: $66
	ld e, h                                          ; $462d: $5c
	sbc d                                            ; $462e: $9a
	ld h, b                                          ; $462f: $60
	adc d                                            ; $4630: $8a
	ld a, b                                          ; $4631: $78
	inc sp                                           ; $4632: $33
	inc bc                                           ; $4633: $03
	ld h, d                                          ; $4634: $62
	ld b, h                                          ; $4635: $44
	ld h, d                                          ; $4636: $62
	add [hl]                                         ; $4637: $86
	ld h, d                                          ; $4638: $62
	cp h                                             ; $4639: $bc
	ld h, d                                          ; $463a: $62
	adc d                                            ; $463b: $8a
	ld a, b                                          ; $463c: $78
	inc sp                                           ; $463d: $33
	jp $2a62                                         ; $463e: $c3 $62 $2a


	ld h, e                                          ; $4641: $63
	ld e, e                                          ; $4642: $5b
	ld h, e                                          ; $4643: $63
	sbc l                                            ; $4644: $9d
	ld h, e                                          ; $4645: $63
	adc d                                            ; $4646: $8a
	jr c, jr_007_467c                                ; $4647: $38 $33

	xor a                                            ; $4649: $af
	ld h, e                                          ; $464a: $63
	xor $63                                          ; $464b: $ee $63
	ld b, e                                          ; $464d: $43
	ld h, h                                          ; $464e: $64
	adc d                                            ; $464f: $8a
	ld a, b                                          ; $4650: $78
	inc sp                                           ; $4651: $33
	ld h, c                                          ; $4652: $61
	ld h, h                                          ; $4653: $64
	di                                               ; $4654: $f3
	ld h, h                                          ; $4655: $64
	xor d                                            ; $4656: $aa
	ld h, l                                          ; $4657: $65
	ld a, d                                          ; $4658: $7a
	ld h, [hl]                                       ; $4659: $66
	adc d                                            ; $465a: $8a
	jr c, jr_007_4690                                ; $465b: $38 $33

	rst SubAFromHL                                          ; $465d: $d7
	ld h, [hl]                                       ; $465e: $66
	ld [hl+], a                                      ; $465f: $22
	ld h, a                                          ; $4660: $67
	inc a                                            ; $4661: $3c
	ld h, a                                          ; $4662: $67
	adc d                                            ; $4663: $8a
	ld a, b                                          ; $4664: $78
	inc sp                                           ; $4665: $33
	ld e, [hl]                                       ; $4666: $5e
	ld h, a                                          ; $4667: $67
	adc e                                            ; $4668: $8b
	ld h, a                                          ; $4669: $67
	or a                                             ; $466a: $b7
	ld h, a                                          ; $466b: $67
	and $67                                          ; $466c: $e6 $67
	adc d                                            ; $466e: $8a
	ld a, b                                          ; $466f: $78
	inc sp                                           ; $4670: $33
	rst FarCall                                          ; $4671: $f7
	ld h, a                                          ; $4672: $67
	rst FarCall                                          ; $4673: $f7
	ld l, c                                          ; $4674: $69
	ld e, $6b                                        ; $4675: $1e $6b
	ld a, $6c                                        ; $4677: $3e $6c
	adc d                                            ; $4679: $8a
	ld a, b                                          ; $467a: $78
	inc sp                                           ; $467b: $33

jr_007_467c:
	ld bc, $e66d                                     ; $467c: $01 $6d $e6
	ld l, [hl]                                       ; $467f: $6e
	inc de                                           ; $4680: $13
	ld [hl], b                                       ; $4681: $70
	rrca                                             ; $4682: $0f
	ld [hl], d                                       ; $4683: $72
	adc d                                            ; $4684: $8a
	ld a, b                                          ; $4685: $78
	inc sp                                           ; $4686: $33
	add $72                                          ; $4687: $c6 $72
	db $e4                                           ; $4689: $e4
	ld [hl], h                                       ; $468a: $74
	call nz, Call_007_4f76                           ; $468b: $c4 $76 $4f
	ld a, b                                          ; $468e: $78
	adc d                                            ; $468f: $8a

jr_007_4690:
	ld a, b                                          ; $4690: $78
	inc sp                                           ; $4691: $33
	cp h                                             ; $4692: $bc
	ld a, b                                          ; $4693: $78
	ld h, [hl]                                       ; $4694: $66
	ld a, c                                          ; $4695: $79
	jr nz, jr_007_4712                               ; $4696: $20 $7a

	inc e                                            ; $4698: $1c
	ld a, e                                          ; $4699: $7b
	adc d                                            ; $469a: $8a
	ld a, b                                          ; $469b: $78
	scf                                              ; $469c: $37
	ret c                                            ; $469d: $d8

	ld b, d                                          ; $469e: $42
	ld l, c                                          ; $469f: $69
	ld b, h                                          ; $46a0: $44
	jr nc, jr_007_46e9                               ; $46a1: $30 $46

	adc c                                            ; $46a3: $89
	ld b, a                                          ; $46a4: $47
	adc d                                            ; $46a5: $8a
	ld a, b                                          ; $46a6: $78
	scf                                              ; $46a7: $37
	ld e, h                                          ; $46a8: $5c
	ld c, b                                          ; $46a9: $48
	sub a                                            ; $46aa: $97
	ld c, b                                          ; $46ab: $48
	jp nc, $0c48                                     ; $46ac: $d2 $48 $0c

	ld c, c                                          ; $46af: $49
	adc d                                            ; $46b0: $8a
	jr c, jr_007_46e7                                ; $46b1: $38 $34

	nop                                              ; $46b3: $00
	ld b, b                                          ; $46b4: $40
	ld e, l                                          ; $46b5: $5d
	ld b, d                                          ; $46b6: $42
	dec bc                                           ; $46b7: $0b
	ld b, l                                          ; $46b8: $45
	adc d                                            ; $46b9: $8a
	ld a, b                                          ; $46ba: $78
	ld [hl], $00                                     ; $46bb: $36 $00
	ld b, b                                          ; $46bd: $40
	ld h, l                                          ; $46be: $65
	ld b, e                                          ; $46bf: $43
	dec l                                            ; $46c0: $2d
	ld b, a                                          ; $46c1: $47
	or l                                             ; $46c2: $b5
	ld c, c                                          ; $46c3: $49
	adc d                                            ; $46c4: $8a
	ld a, b                                          ; $46c5: $78
	inc [hl]                                         ; $46c6: $34
	cp [hl]                                          ; $46c7: $be
	ld b, [hl]                                       ; $46c8: $46
	rst SubAFromHL                                          ; $46c9: $d7
	ld b, [hl]                                       ; $46ca: $46
	ld [bc], a                                       ; $46cb: $02
	ld b, a                                          ; $46cc: $47
	dec e                                            ; $46cd: $1d
	ld b, a                                          ; $46ce: $47
	adc d                                            ; $46cf: $8a
	ld a, b                                          ; $46d0: $78
	inc [hl]                                         ; $46d1: $34
	ld b, b                                          ; $46d2: $40
	ld b, a                                          ; $46d3: $47
	ld [hl], d                                       ; $46d4: $72
	ld c, h                                          ; $46d5: $4c
	ld a, h                                          ; $46d6: $7c
	ld d, d                                          ; $46d7: $52
	xor a                                            ; $46d8: $af
	ld d, a                                          ; $46d9: $57
	adc d                                            ; $46da: $8a
	ld a, b                                          ; $46db: $78
	inc [hl]                                         ; $46dc: $34
	ld h, $59                                        ; $46dd: $26 $59
	ld [hl], b                                       ; $46df: $70
	ld e, e                                          ; $46e0: $5b
	ld b, h                                          ; $46e1: $44
	ld e, l                                          ; $46e2: $5d
	ld sp, hl                                        ; $46e3: $f9
	ld e, a                                          ; $46e4: $5f
	adc d                                            ; $46e5: $8a
	ld a, b                                          ; $46e6: $78

jr_007_46e7:
	inc [hl]                                         ; $46e7: $34
	ld [hl], b                                       ; $46e8: $70

jr_007_46e9:
	ld h, b                                          ; $46e9: $60
	pop de                                           ; $46ea: $d1
	ld h, d                                          ; $46eb: $62
	or [hl]                                          ; $46ec: $b6
	ld h, h                                          ; $46ed: $64
	nop                                              ; $46ee: $00
	ld h, [hl]                                       ; $46ef: $66
	adc d                                            ; $46f0: $8a
	ld a, b                                          ; $46f1: $78
	inc [hl]                                         ; $46f2: $34
	add a                                            ; $46f3: $87
	ld h, [hl]                                       ; $46f4: $66
	ld a, c                                          ; $46f5: $79
	ld l, b                                          ; $46f6: $68
	halt                                             ; $46f7: $76
	ld l, d                                          ; $46f8: $6a
	sbc $6b                                          ; $46f9: $de $6b
	adc d                                            ; $46fb: $8a
	ld a, b                                          ; $46fc: $78
	inc [hl]                                         ; $46fd: $34
	ld [hl], b                                       ; $46fe: $70
	ld l, h                                          ; $46ff: $6c
	push bc                                          ; $4700: $c5
	ld l, a                                          ; $4701: $6f
	cp b                                             ; $4702: $b8
	ld [hl], e                                       ; $4703: $73
	ld hl, $8a77                                     ; $4704: $21 $77 $8a
	ld a, b                                          ; $4707: $78
	inc [hl]                                         ; $4708: $34
	inc l                                            ; $4709: $2c
	ld a, b                                          ; $470a: $78
	and c                                            ; $470b: $a1
	ld a, b                                          ; $470c: $78
	sub $79                                          ; $470d: $d6 $79
	ld d, [hl]                                       ; $470f: $56
	ld a, d                                          ; $4710: $7a
	adc d                                            ; $4711: $8a

jr_007_4712:
	jr jr_007_474b                                   ; $4712: $18 $37

	dec h                                            ; $4714: $25
	ld e, c                                          ; $4715: $59
	ld l, e                                          ; $4716: $6b
	ld e, c                                          ; $4717: $59
	adc d                                            ; $4718: $8a
	ld a, b                                          ; $4719: $78
	inc [hl]                                         ; $471a: $34
	add e                                            ; $471b: $83
	ld a, d                                          ; $471c: $7a
	or l                                             ; $471d: $b5
	ld a, d                                          ; $471e: $7a
	rst SubAFromBC                                          ; $471f: $e7
	ld a, d                                          ; $4720: $7a
	rra                                              ; $4721: $1f
	ld a, e                                          ; $4722: $7b
	adc d                                            ; $4723: $8a
	jr c, jr_007_475d                                ; $4724: $38 $37

	rlca                                             ; $4726: $07
	ld e, d                                          ; $4727: $5a
	ld c, [hl]                                       ; $4728: $4e
	ld e, d                                          ; $4729: $5a
	sub l                                            ; $472a: $95
	ld e, d                                          ; $472b: $5a
	adc d                                            ; $472c: $8a
	ld a, b                                          ; $472d: $78
	inc [hl]                                         ; $472e: $34
	add hl, sp                                       ; $472f: $39
	ld a, e                                          ; $4730: $7b
	add [hl]                                         ; $4731: $86
	ld a, h                                          ; $4732: $7c
	and b                                            ; $4733: $a0
	ld a, l                                          ; $4734: $7d
	sub b                                            ; $4735: $90
	ld a, [hl]                                       ; $4736: $7e
	adc d                                            ; $4737: $8a
	ld a, b                                          ; $4738: $78
	dec [hl]                                         ; $4739: $35
	nop                                              ; $473a: $00
	ld b, b                                          ; $473b: $40
	call z, $b840                                    ; $473c: $cc $40 $b8
	ld b, d                                          ; $473f: $42
	and a                                            ; $4740: $a7
	ld b, h                                          ; $4741: $44
	adc d                                            ; $4742: $8a
	ld a, b                                          ; $4743: $78
	scf                                              ; $4744: $37
	ld e, d                                          ; $4745: $5a
	ld c, d                                          ; $4746: $4a
	and d                                            ; $4747: $a2
	ld c, d                                          ; $4748: $4a
	adc $4a                                          ; $4749: $ce $4a

jr_007_474b:
	inc d                                            ; $474b: $14
	ld c, e                                          ; $474c: $4b
	adc d                                            ; $474d: $8a
	ld a, b                                          ; $474e: $78
	scf                                              ; $474f: $37
	ld c, [hl]                                       ; $4750: $4e
	ld c, e                                          ; $4751: $4b
	ld [hl], b                                       ; $4752: $70
	ld c, e                                          ; $4753: $4b
	sub c                                            ; $4754: $91
	ld c, e                                          ; $4755: $4b
	or d                                             ; $4756: $b2
	ld c, e                                          ; $4757: $4b
	adc d                                            ; $4758: $8a
	ld a, b                                          ; $4759: $78
	scf                                              ; $475a: $37
	sbc b                                            ; $475b: $98
	ld e, b                                          ; $475c: $58

jr_007_475d:
	cp a                                             ; $475d: $bf
	ld e, b                                          ; $475e: $58
	and $58                                          ; $475f: $e6 $58
	inc d                                            ; $4761: $14
	ld e, c                                          ; $4762: $59
	adc d                                            ; $4763: $8a
	ld a, b                                          ; $4764: $78
	dec [hl]                                         ; $4765: $35
	and b                                            ; $4766: $a0
	ld b, l                                          ; $4767: $45
	add a                                            ; $4768: $87
	ld c, b                                          ; $4769: $48
	ld b, a                                          ; $476a: $47
	ld c, h                                          ; $476b: $4c
	or [hl]                                          ; $476c: $b6
	ld c, a                                          ; $476d: $4f
	adc d                                            ; $476e: $8a
	ld a, b                                          ; $476f: $78
	dec [hl]                                         ; $4770: $35
	cpl                                              ; $4771: $2f
	ld d, c                                          ; $4772: $51
	ld e, [hl]                                       ; $4773: $5e
	ld d, d                                          ; $4774: $52
	or [hl]                                          ; $4775: $b6
	ld d, e                                          ; $4776: $53
	ld l, h                                          ; $4777: $6c
	ld d, l                                          ; $4778: $55
	adc d                                            ; $4779: $8a

Call_007_477a:
	jr c, jr_007_47b1                                ; $477a: $38 $35

	ld d, $56                                        ; $477c: $16 $56
	add hl, de                                       ; $477e: $19
	ld e, b                                          ; $477f: $58
	ld [$8a5a], sp                                   ; $4780: $08 $5a $8a
	jr c, jr_007_47ba                                ; $4783: $38 $35

	adc c                                            ; $4785: $89
	ld e, d                                          ; $4786: $5a
	and h                                            ; $4787: $a4
	ld e, d                                          ; $4788: $5a
	dec de                                           ; $4789: $1b
	ld e, e                                          ; $478a: $5b
	adc d                                            ; $478b: $8a
	ld a, b                                          ; $478c: $78
	dec [hl]                                         ; $478d: $35
	ld b, [hl]                                       ; $478e: $46
	ld e, e                                          ; $478f: $5b
	ld d, h                                          ; $4790: $54
	ld e, l                                          ; $4791: $5d
	ld h, a                                          ; $4792: $67
	ld e, a                                          ; $4793: $5f
	ld h, c                                          ; $4794: $61
	ld h, c                                          ; $4795: $61
	adc d                                            ; $4796: $8a
	ld a, b                                          ; $4797: $78
	dec [hl]                                         ; $4798: $35
	jp c, $e561                                      ; $4799: $da $61 $e5

	ld h, d                                          ; $479c: $62
	adc $63                                          ; $479d: $ce $63
	ld a, $64                                        ; $479f: $3e $64
	adc d                                            ; $47a1: $8a
	ld a, b                                          ; $47a2: $78
	dec [hl]                                         ; $47a3: $35
	sbc h                                            ; $47a4: $9c
	ld h, h                                          ; $47a5: $64
	ld c, l                                          ; $47a6: $4d
	ld h, l                                          ; $47a7: $65
	ei                                               ; $47a8: $fb
	ld h, l                                          ; $47a9: $65
	ld a, c                                          ; $47aa: $79
	ld h, [hl]                                       ; $47ab: $66
	adc d                                            ; $47ac: $8a
	ld a, b                                          ; $47ad: $78
	dec [hl]                                         ; $47ae: $35
	or e                                             ; $47af: $b3
	ld h, [hl]                                       ; $47b0: $66

jr_007_47b1:
	rst GetHLinHL                                          ; $47b1: $cf
	ld h, a                                          ; $47b2: $67
	xor h                                            ; $47b3: $ac
	ld l, b                                          ; $47b4: $68
	ld h, a                                          ; $47b5: $67
	ld l, c                                          ; $47b6: $69
	adc d                                            ; $47b7: $8a
	jr c, jr_007_47ef                                ; $47b8: $38 $35

jr_007_47ba:
	xor l                                            ; $47ba: $ad
	ld l, c                                          ; $47bb: $69
	ld h, a                                          ; $47bc: $67
	ld l, d                                          ; $47bd: $6a
	ld c, e                                          ; $47be: $4b
	ld l, e                                          ; $47bf: $6b
	adc d                                            ; $47c0: $8a
	ld a, b                                          ; $47c1: $78
	dec [hl]                                         ; $47c2: $35
	ld b, d                                          ; $47c3: $42
	ld l, h                                          ; $47c4: $6c
	ld d, a                                          ; $47c5: $57
	ld l, [hl]                                       ; $47c6: $6e
	ld e, l                                          ; $47c7: $5d
	ld [hl], b                                       ; $47c8: $70
	db $fc                                           ; $47c9: $fc
	ld [hl], c                                       ; $47ca: $71
	adc d                                            ; $47cb: $8a
	ld a, b                                          ; $47cc: $78
	dec [hl]                                         ; $47cd: $35
	ld h, e                                          ; $47ce: $63
	ld [hl], d                                       ; $47cf: $72
	sub h                                            ; $47d0: $94
	ld [hl], d                                       ; $47d1: $72
	push bc                                          ; $47d2: $c5
	ld [hl], d                                       ; $47d3: $72
	cp $72                                           ; $47d4: $fe $72
	adc d                                            ; $47d6: $8a
	jr c, jr_007_480e                                ; $47d7: $38 $35

	ld sp, $9273                                     ; $47d9: $31 $73 $92
	ld [hl], h                                       ; $47dc: $74
	ld c, e                                          ; $47dd: $4b
	ld [hl], l                                       ; $47de: $75
	adc d                                            ; $47df: $8a
	jr c, @+$37                                      ; $47e0: $38 $35

	inc b                                            ; $47e2: $04
	halt                                             ; $47e3: $76
	ld e, l                                          ; $47e4: $5d
	halt                                             ; $47e5: $76
	sbc [hl]                                         ; $47e6: $9e
	halt                                             ; $47e7: $76
	adc d                                            ; $47e8: $8a
	ld a, b                                          ; $47e9: $78
	dec [hl]                                         ; $47ea: $35
	or a                                             ; $47eb: $b7
	halt                                             ; $47ec: $76
	ld a, h                                          ; $47ed: $7c
	ld a, b                                          ; $47ee: $78

jr_007_47ef:
	call z, $067a                                    ; $47ef: $cc $7a $06
	ld a, h                                          ; $47f2: $7c
	adc d                                            ; $47f3: $8a
	ld a, b                                          ; $47f4: $78
	ld [hl], $69                                     ; $47f5: $36 $69
	ld c, d                                          ; $47f7: $4a
	add hl, sp                                       ; $47f8: $39
	ld c, l                                          ; $47f9: $4d
	xor d                                            ; $47fa: $aa
	ld c, a                                          ; $47fb: $4f
	ld [hl], d                                       ; $47fc: $72
	ld d, c                                          ; $47fd: $51
	adc d                                            ; $47fe: $8a
	ld a, b                                          ; $47ff: $78
	scf                                              ; $4800: $37
	call nc, $934b                                   ; $4801: $d4 $4b $93
	ld c, [hl]                                       ; $4804: $4e
	and l                                            ; $4805: $a5
	ld d, b                                          ; $4806: $50
	ld b, d                                          ; $4807: $42
	ld d, c                                          ; $4808: $51
	adc d                                            ; $4809: $8a
	ld a, b                                          ; $480a: $78
	ld [hl], $4c                                     ; $480b: $36 $4c
	ld d, d                                          ; $480d: $52

jr_007_480e:
	add l                                            ; $480e: $85
	ld d, e                                          ; $480f: $53
	pop bc                                           ; $4810: $c1
	ld d, h                                          ; $4811: $54
	cp e                                             ; $4812: $bb
	ld d, l                                          ; $4813: $55
	adc d                                            ; $4814: $8a
	ld a, b                                          ; $4815: $78
	ld [hl], $5b                                     ; $4816: $36 $5b
	ld d, [hl]                                       ; $4818: $56
	ld [hl], $57                                     ; $4819: $36 $57
	ld d, h                                          ; $481b: $54
	ld e, b                                          ; $481c: $58
	call z, $8a59                                    ; $481d: $cc $59 $8a
	ld a, b                                          ; $4820: $78
	ld [hl], $23                                     ; $4821: $36 $23
	ld e, d                                          ; $4823: $5a
	sub [hl]                                         ; $4824: $96
	ld e, h                                          ; $4825: $5c
	dec bc                                           ; $4826: $0b
	ld e, [hl]                                       ; $4827: $5e
	ld b, a                                          ; $4828: $47
	ld e, a                                          ; $4829: $5f
	adc d                                            ; $482a: $8a
	jr c, jr_007_4863                                ; $482b: $38 $36

	ld a, [$835f]                                    ; $482d: $fa $5f $83
	ld h, c                                          ; $4830: $61
	add d                                            ; $4831: $82
	ld h, e                                          ; $4832: $63
	adc d                                            ; $4833: $8a
	ld a, b                                          ; $4834: $78
	scf                                              ; $4835: $37
	ld h, b                                          ; $4836: $60
	ld d, c                                          ; $4837: $51
	adc e                                            ; $4838: $8b
	ld d, c                                          ; $4839: $51
	or l                                             ; $483a: $b5
	ld d, c                                          ; $483b: $51
	rst SubAFromDE                                          ; $483c: $df
	ld d, c                                          ; $483d: $51
	adc d                                            ; $483e: $8a
	ld a, b                                          ; $483f: $78
	ld [hl], $b9                                     ; $4840: $36 $b9
	ld h, h                                          ; $4842: $64
	dec hl                                           ; $4843: $2b
	ld h, l                                          ; $4844: $65
	sbc c                                            ; $4845: $99
	ld h, l                                          ; $4846: $65
	call z, $8a65                                    ; $4847: $cc $65 $8a
	jr c, jr_007_4883                                ; $484a: $38 $37

	sub e                                            ; $484c: $93
	ld b, c                                          ; $484d: $41
	db $f4                                           ; $484e: $f4
	ld b, c                                          ; $484f: $41
	ld a, h                                          ; $4850: $7c
	ld b, d                                          ; $4851: $42
	adc d                                            ; $4852: $8a
	ld a, b                                          ; $4853: $78
	ld [hl], $de                                     ; $4854: $36 $de
	ld h, l                                          ; $4856: $65
	call nz, $6f67                                   ; $4857: $c4 $67 $6f
	ld l, c                                          ; $485a: $69
	ld [hl-], a                                      ; $485b: $32
	ld l, e                                          ; $485c: $6b
	adc d                                            ; $485d: $8a
	jr c, jr_007_4896                                ; $485e: $38 $36

	add a                                            ; $4860: $87
	ld l, e                                          ; $4861: $6b
	sbc a                                            ; $4862: $9f

jr_007_4863:
	ld l, e                                          ; $4863: $6b
	or [hl]                                          ; $4864: $b6
	ld l, e                                          ; $4865: $6b
	adc h                                            ; $4866: $8c
	inc b                                            ; $4867: $04
	rlca                                             ; $4868: $07
	inc c                                            ; $4869: $0c
	ld h, [hl]                                       ; $486a: $66
	adc h                                            ; $486b: $8c
	ld bc, $1607                                     ; $486c: $01 $07 $16
	ld h, [hl]                                       ; $486f: $66
	adc h                                            ; $4870: $8c
	inc b                                            ; $4871: $04
	rlca                                             ; $4872: $07
	add hl, hl                                       ; $4873: $29
	ld h, [hl]                                       ; $4874: $66
	adc h                                            ; $4875: $8c
	inc b                                            ; $4876: $04
	rlca                                             ; $4877: $07
	inc [hl]                                         ; $4878: $34
	ld h, [hl]                                       ; $4879: $66
	adc h                                            ; $487a: $8c
	ld bc, $4007                                     ; $487b: $01 $07 $40
	ld h, [hl]                                       ; $487e: $66
	adc h                                            ; $487f: $8c
	ld bc, $5107                                     ; $4880: $01 $07 $51

jr_007_4883:
	ld h, [hl]                                       ; $4883: $66
	adc h                                            ; $4884: $8c
	inc bc                                           ; $4885: $03
	rlca                                             ; $4886: $07
	ld e, l                                          ; $4887: $5d
	ld h, [hl]                                       ; $4888: $66
	ld l, c                                          ; $4889: $69
	ld h, [hl]                                       ; $488a: $66
	adc h                                            ; $488b: $8c
	rlca                                             ; $488c: $07
	rlca                                             ; $488d: $07
	ld a, d                                          ; $488e: $7a
	ld h, [hl]                                       ; $488f: $66
	xor l                                            ; $4890: $ad
	ld h, [hl]                                       ; $4891: $66
	sbc $66                                          ; $4892: $de $66
	adc h                                            ; $4894: $8c
	dec b                                            ; $4895: $05

jr_007_4896:
	rlca                                             ; $4896: $07
	rst SubAFromBC                                          ; $4897: $e7
	ld h, [hl]                                       ; $4898: $66
	rst FarCall                                          ; $4899: $f7
	ld h, [hl]                                       ; $489a: $66
	adc h                                            ; $489b: $8c
	dec b                                            ; $489c: $05
	rlca                                             ; $489d: $07
	dec b                                            ; $489e: $05
	ld h, a                                          ; $489f: $67
	add hl, de                                       ; $48a0: $19
	ld h, a                                          ; $48a1: $67
	adc h                                            ; $48a2: $8c
	inc b                                            ; $48a3: $04
	rlca                                             ; $48a4: $07
	inc h                                            ; $48a5: $24
	ld h, a                                          ; $48a6: $67
	adc h                                            ; $48a7: $8c
	dec b                                            ; $48a8: $05
	rlca                                             ; $48a9: $07
	cpl                                              ; $48aa: $2f
	ld h, a                                          ; $48ab: $67
	ld d, [hl]                                       ; $48ac: $56
	ld h, a                                          ; $48ad: $67
	adc h                                            ; $48ae: $8c
	dec b                                            ; $48af: $05
	rlca                                             ; $48b0: $07
	ld h, h                                          ; $48b1: $64
	ld h, a                                          ; $48b2: $67
	adc h                                            ; $48b3: $8c
	ld h, a                                          ; $48b4: $67
	adc h                                            ; $48b5: $8c
	inc b                                            ; $48b6: $04
	rlca                                             ; $48b7: $07
	sbc c                                            ; $48b8: $99
	ld h, a                                          ; $48b9: $67
	adc h                                            ; $48ba: $8c
	dec b                                            ; $48bb: $05
	rlca                                             ; $48bc: $07
	and e                                            ; $48bd: $a3
	ld h, a                                          ; $48be: $67
	or a                                             ; $48bf: $b7
	ld h, a                                          ; $48c0: $67
	adc h                                            ; $48c1: $8c
	dec b                                            ; $48c2: $05
	rlca                                             ; $48c3: $07
	ret z                                            ; $48c4: $c8

	ld h, a                                          ; $48c5: $67
	pop de                                           ; $48c6: $d1
	ld h, a                                          ; $48c7: $67
	adc h                                            ; $48c8: $8c
	ld bc, $db07                                     ; $48c9: $01 $07 $db
	ld h, a                                          ; $48cc: $67
	adc h                                            ; $48cd: $8c
	ld bc, $e507                                     ; $48ce: $01 $07 $e5
	ld h, a                                          ; $48d1: $67
	adc h                                            ; $48d2: $8c
	ld bc, $fa07                                     ; $48d3: $01 $07 $fa
	ld h, a                                          ; $48d6: $67
	adc h                                            ; $48d7: $8c
	inc bc                                           ; $48d8: $03
	rlca                                             ; $48d9: $07
	ld [de], a                                       ; $48da: $12
	ld l, b                                          ; $48db: $68
	ld b, e                                          ; $48dc: $43
	ld l, b                                          ; $48dd: $68
	adc h                                            ; $48de: $8c
	dec b                                            ; $48df: $05
	rlca                                             ; $48e0: $07
	ld l, [hl]                                       ; $48e1: $6e
	ld l, b                                          ; $48e2: $68
	and c                                            ; $48e3: $a1
	ld l, b                                          ; $48e4: $68
	adc h                                            ; $48e5: $8c
	rlca                                             ; $48e6: $07
	rlca                                             ; $48e7: $07
	cp b                                             ; $48e8: $b8
	ld l, b                                          ; $48e9: $68
	db $eb                                           ; $48ea: $eb
	ld l, b                                          ; $48eb: $68
	ld [de], a                                       ; $48ec: $12
	ld l, c                                          ; $48ed: $69
	adc h                                            ; $48ee: $8c
	ld bc, $2207                                     ; $48ef: $01 $07 $22
	ld l, c                                          ; $48f2: $69
	adc h                                            ; $48f3: $8c
	ld bc, $3607                                     ; $48f4: $01 $07 $36
	ld l, c                                          ; $48f7: $69
	adc h                                            ; $48f8: $8c
	dec b                                            ; $48f9: $05
	rlca                                             ; $48fa: $07
	ld d, c                                          ; $48fb: $51
	ld l, c                                          ; $48fc: $69
	ld h, b                                          ; $48fd: $60
	ld l, c                                          ; $48fe: $69
	adc h                                            ; $48ff: $8c
	ld bc, $6e07                                     ; $4900: $01 $07 $6e
	ld l, c                                          ; $4903: $69
	adc h                                            ; $4904: $8c
	inc bc                                           ; $4905: $03
	rlca                                             ; $4906: $07
	add c                                            ; $4907: $81
	ld l, c                                          ; $4908: $69
	xor b                                            ; $4909: $a8
	ld l, c                                          ; $490a: $69
	adc h                                            ; $490b: $8c
	ld bc, $c707                                     ; $490c: $01 $07 $c7
	ld l, c                                          ; $490f: $69
	adc h                                            ; $4910: $8c
	dec b                                            ; $4911: $05
	rlca                                             ; $4912: $07
	ld [$fd69], a                                    ; $4913: $ea $69 $fd
	ld l, c                                          ; $4916: $69
	adc h                                            ; $4917: $8c
	inc b                                            ; $4918: $04
	rlca                                             ; $4919: $07
	ld a, [bc]                                       ; $491a: $0a
	ld l, d                                          ; $491b: $6a
	adc h                                            ; $491c: $8c
	inc b                                            ; $491d: $04
	rlca                                             ; $491e: $07
	rla                                              ; $491f: $17
	ld l, d                                          ; $4920: $6a
	adc h                                            ; $4921: $8c
	inc bc                                           ; $4922: $03
	rlca                                             ; $4923: $07
	inc h                                            ; $4924: $24
	ld l, d                                          ; $4925: $6a
	ld b, c                                          ; $4926: $41
	ld l, d                                          ; $4927: $6a
	adc h                                            ; $4928: $8c
	dec b                                            ; $4929: $05
	rlca                                             ; $492a: $07
	ld e, e                                          ; $492b: $5b
	ld l, d                                          ; $492c: $6a
	ld [hl], b                                       ; $492d: $70
	ld l, d                                          ; $492e: $6a
	adc h                                            ; $492f: $8c
	ld bc, $7607                                     ; $4930: $01 $07 $76
	ld l, d                                          ; $4933: $6a
	adc h                                            ; $4934: $8c
	ld bc, $9107                                     ; $4935: $01 $07 $91
	ld l, d                                          ; $4938: $6a
	adc h                                            ; $4939: $8c
	ld bc, $a707                                     ; $493a: $01 $07 $a7
	ld l, d                                          ; $493d: $6a
	adc h                                            ; $493e: $8c
	rlca                                             ; $493f: $07
	rlca                                             ; $4940: $07
	call z, $f36a                                    ; $4941: $cc $6a $f3
	ld l, d                                          ; $4944: $6a
	ld a, [bc]                                       ; $4945: $0a
	ld l, e                                          ; $4946: $6b
	adc h                                            ; $4947: $8c
	ld bc, $1407                                     ; $4948: $01 $07 $14
	ld l, e                                          ; $494b: $6b
	adc h                                            ; $494c: $8c
	inc b                                            ; $494d: $04
	rlca                                             ; $494e: $07
	ld [hl-], a                                      ; $494f: $32
	ld l, e                                          ; $4950: $6b
	adc l                                            ; $4951: $8d
	dec b                                            ; $4952: $05
	rlca                                             ; $4953: $07
	ld c, e                                          ; $4954: $4b
	ld l, e                                          ; $4955: $6b
	ld e, a                                          ; $4956: $5f
	ld l, e                                          ; $4957: $6b
	adc h                                            ; $4958: $8c
	dec b                                            ; $4959: $05
	rlca                                             ; $495a: $07
	ld l, h                                          ; $495b: $6c
	ld l, e                                          ; $495c: $6b
	adc [hl]                                         ; $495d: $8e
	ld l, e                                          ; $495e: $6b
	adc h                                            ; $495f: $8c
	dec b                                            ; $4960: $05
	rlca                                             ; $4961: $07
	sbc l                                            ; $4962: $9d
	ld l, e                                          ; $4963: $6b
	or c                                             ; $4964: $b1
	ld l, e                                          ; $4965: $6b
	adc h                                            ; $4966: $8c
	ld bc, $c407                                     ; $4967: $01 $07 $c4
	ld l, e                                          ; $496a: $6b
	adc h                                            ; $496b: $8c
	ld bc, $d507                                     ; $496c: $01 $07 $d5
	ld l, e                                          ; $496f: $6b
	adc h                                            ; $4970: $8c
	ld bc, $1407                                     ; $4971: $01 $07 $14
	ld l, h                                          ; $4974: $6c
	adc h                                            ; $4975: $8c
	ld bc, $3a07                                     ; $4976: $01 $07 $3a
	ld l, h                                          ; $4979: $6c
	adc h                                            ; $497a: $8c
	dec b                                            ; $497b: $05
	rlca                                             ; $497c: $07
	ld e, e                                          ; $497d: $5b
	ld l, h                                          ; $497e: $6c
	ld a, h                                          ; $497f: $7c
	ld l, h                                          ; $4980: $6c
	adc h                                            ; $4981: $8c
	inc b                                            ; $4982: $04
	rlca                                             ; $4983: $07
	sub l                                            ; $4984: $95
	ld l, h                                          ; $4985: $6c
	adc h                                            ; $4986: $8c
	dec b                                            ; $4987: $05
	rlca                                             ; $4988: $07
	and b                                            ; $4989: $a0
	ld l, h                                          ; $498a: $6c
	cp l                                             ; $498b: $bd
	ld l, h                                          ; $498c: $6c
	adc h                                            ; $498d: $8c
	ld bc, $c707                                     ; $498e: $01 $07 $c7
	ld l, h                                          ; $4991: $6c
	adc h                                            ; $4992: $8c
	ld bc, $f907                                     ; $4993: $01 $07 $f9
	ld l, h                                          ; $4996: $6c
	adc h                                            ; $4997: $8c
	ld bc, $1907                                     ; $4998: $01 $07 $19
	ld l, l                                          ; $499b: $6d
	adc h                                            ; $499c: $8c
	ld bc, $4007                                     ; $499d: $01 $07 $40
	ld l, l                                          ; $49a0: $6d
	adc h                                            ; $49a1: $8c
	dec b                                            ; $49a2: $05
	rlca                                             ; $49a3: $07
	ld d, b                                          ; $49a4: $50
	ld l, l                                          ; $49a5: $6d
	ld e, c                                          ; $49a6: $59
	ld l, l                                          ; $49a7: $6d
	adc h                                            ; $49a8: $8c
	ld bc, $6207                                     ; $49a9: $01 $07 $62
	ld l, l                                          ; $49ac: $6d
	adc h                                            ; $49ad: $8c
	ld bc, $7c07                                     ; $49ae: $01 $07 $7c
	ld l, l                                          ; $49b1: $6d
	adc h                                            ; $49b2: $8c
	ld bc, $8e07                                     ; $49b3: $01 $07 $8e
	ld l, l                                          ; $49b6: $6d
	adc h                                            ; $49b7: $8c
	dec b                                            ; $49b8: $05
	rlca                                             ; $49b9: $07
	or e                                             ; $49ba: $b3
	ld l, l                                          ; $49bb: $6d
	ret nc                                           ; $49bc: $d0

	ld l, l                                          ; $49bd: $6d
	adc h                                            ; $49be: $8c
	ld bc, $ec07                                     ; $49bf: $01 $07 $ec
	ld l, l                                          ; $49c2: $6d
	adc h                                            ; $49c3: $8c
	dec b                                            ; $49c4: $05
	rlca                                             ; $49c5: $07
	ld a, [bc]                                       ; $49c6: $0a
	ld l, [hl]                                       ; $49c7: $6e
	ld a, [de]                                       ; $49c8: $1a
	ld l, [hl]                                       ; $49c9: $6e
	adc h                                            ; $49ca: $8c
	ld bc, $2407                                     ; $49cb: $01 $07 $24
	ld l, [hl]                                       ; $49ce: $6e
	adc h                                            ; $49cf: $8c
	inc b                                            ; $49d0: $04
	rlca                                             ; $49d1: $07
	add hl, sp                                       ; $49d2: $39
	ld l, [hl]                                       ; $49d3: $6e
	adc h                                            ; $49d4: $8c
	ld bc, $4607                                     ; $49d5: $01 $07 $46
	ld l, [hl]                                       ; $49d8: $6e
	adc h                                            ; $49d9: $8c
	dec b                                            ; $49da: $05
	rlca                                             ; $49db: $07
	ld l, h                                          ; $49dc: $6c
	ld l, [hl]                                       ; $49dd: $6e
	add d                                            ; $49de: $82
	ld l, [hl]                                       ; $49df: $6e
	adc h                                            ; $49e0: $8c
	ld bc, $8d07                                     ; $49e1: $01 $07 $8d
	ld l, [hl]                                       ; $49e4: $6e
	adc h                                            ; $49e5: $8c
	ld bc, $9f07                                     ; $49e6: $01 $07 $9f
	ld l, [hl]                                       ; $49e9: $6e
	adc h                                            ; $49ea: $8c
	inc b                                            ; $49eb: $04
	rlca                                             ; $49ec: $07
	or c                                             ; $49ed: $b1
	ld l, [hl]                                       ; $49ee: $6e
	adc h                                            ; $49ef: $8c
	inc b                                            ; $49f0: $04
	rlca                                             ; $49f1: $07
	cp d                                             ; $49f2: $ba
	ld l, [hl]                                       ; $49f3: $6e
	adc h                                            ; $49f4: $8c
	dec b                                            ; $49f5: $05
	rlca                                             ; $49f6: $07
	call $d66e                                       ; $49f7: $cd $6e $d6
	ld l, [hl]                                       ; $49fa: $6e
	adc h                                            ; $49fb: $8c
	dec b                                            ; $49fc: $05
	rlca                                             ; $49fd: $07
	pop hl                                           ; $49fe: $e1
	ld l, [hl]                                       ; $49ff: $6e
	rst $38                                          ; $4a00: $ff
	ld l, [hl]                                       ; $4a01: $6e
	adc h                                            ; $4a02: $8c
	dec b                                            ; $4a03: $05
	rlca                                             ; $4a04: $07
	ld a, [bc]                                       ; $4a05: $0a
	ld l, a                                          ; $4a06: $6f
	add hl, de                                       ; $4a07: $19
	ld l, a                                          ; $4a08: $6f
	adc h                                            ; $4a09: $8c
	dec b                                            ; $4a0a: $05
	rlca                                             ; $4a0b: $07
	ld e, $6f                                        ; $4a0c: $1e $6f
	cpl                                              ; $4a0e: $2f
	ld l, a                                          ; $4a0f: $6f
	adc h                                            ; $4a10: $8c
	dec b                                            ; $4a11: $05
	rlca                                             ; $4a12: $07
	ld b, d                                          ; $4a13: $42
	ld l, a                                          ; $4a14: $6f
	ld h, b                                          ; $4a15: $60
	ld l, a                                          ; $4a16: $6f
	adc h                                            ; $4a17: $8c
	dec b                                            ; $4a18: $05
	rlca                                             ; $4a19: $07
	ld l, [hl]                                       ; $4a1a: $6e
	ld l, a                                          ; $4a1b: $6f
	add e                                            ; $4a1c: $83
	ld l, a                                          ; $4a1d: $6f
	adc h                                            ; $4a1e: $8c
	dec b                                            ; $4a1f: $05
	rlca                                             ; $4a20: $07
	adc [hl]                                         ; $4a21: $8e
	ld l, a                                          ; $4a22: $6f
	xor c                                            ; $4a23: $a9
	ld l, a                                          ; $4a24: $6f
	adc h                                            ; $4a25: $8c
	ld bc, $bb07                                     ; $4a26: $01 $07 $bb
	ld l, a                                          ; $4a29: $6f
	adc h                                            ; $4a2a: $8c
	dec b                                            ; $4a2b: $05
	rlca                                             ; $4a2c: $07
	db $d3                                           ; $4a2d: $d3
	ld l, a                                          ; $4a2e: $6f
	push af                                          ; $4a2f: $f5
	ld l, a                                          ; $4a30: $6f
	adc h                                            ; $4a31: $8c
	ld bc, $1f07                                     ; $4a32: $01 $07 $1f
	ld [hl], b                                       ; $4a35: $70
	adc h                                            ; $4a36: $8c
	ld bc, $3b07                                     ; $4a37: $01 $07 $3b
	ld [hl], b                                       ; $4a3a: $70
	adc h                                            ; $4a3b: $8c
	dec b                                            ; $4a3c: $05
	rlca                                             ; $4a3d: $07
	ld b, h                                          ; $4a3e: $44
	ld [hl], b                                       ; $4a3f: $70
	ld d, [hl]                                       ; $4a40: $56
	ld [hl], b                                       ; $4a41: $70
	adc h                                            ; $4a42: $8c
	dec b                                            ; $4a43: $05
	rlca                                             ; $4a44: $07
	ld h, d                                          ; $4a45: $62
	ld [hl], b                                       ; $4a46: $70
	ld l, e                                          ; $4a47: $6b
	ld [hl], b                                       ; $4a48: $70
	adc h                                            ; $4a49: $8c
	dec b                                            ; $4a4a: $05
	rlca                                             ; $4a4b: $07
	ld [hl], e                                       ; $4a4c: $73
	ld [hl], b                                       ; $4a4d: $70
	adc a                                            ; $4a4e: $8f
	ld [hl], b                                       ; $4a4f: $70
	adc h                                            ; $4a50: $8c
	inc bc                                           ; $4a51: $03
	rlca                                             ; $4a52: $07
	sbc e                                            ; $4a53: $9b
	ld [hl], b                                       ; $4a54: $70
	or [hl]                                          ; $4a55: $b6
	ld [hl], b                                       ; $4a56: $70
	adc h                                            ; $4a57: $8c
	dec b                                            ; $4a58: $05
	rlca                                             ; $4a59: $07
	jp nc, $f770                                     ; $4a5a: $d2 $70 $f7

	ld [hl], b                                       ; $4a5d: $70
	adc h                                            ; $4a5e: $8c
	dec b                                            ; $4a5f: $05
	rlca                                             ; $4a60: $07
	inc d                                            ; $4a61: $14
	ld [hl], c                                       ; $4a62: $71
	jr z, jr_007_4ad6                                ; $4a63: $28 $71

	adc h                                            ; $4a65: $8c
	dec b                                            ; $4a66: $05
	rlca                                             ; $4a67: $07
	ld b, b                                          ; $4a68: $40
	ld [hl], c                                       ; $4a69: $71
	ld h, c                                          ; $4a6a: $61
	ld [hl], c                                       ; $4a6b: $71
	adc h                                            ; $4a6c: $8c
	ld bc, $7307                                     ; $4a6d: $01 $07 $73
	ld [hl], c                                       ; $4a70: $71
	adc h                                            ; $4a71: $8c
	inc b                                            ; $4a72: $04
	rlca                                             ; $4a73: $07
	add d                                            ; $4a74: $82
	ld [hl], c                                       ; $4a75: $71
	adc h                                            ; $4a76: $8c
	dec b                                            ; $4a77: $05
	rlca                                             ; $4a78: $07
	sub c                                            ; $4a79: $91
	ld [hl], c                                       ; $4a7a: $71
	and d                                            ; $4a7b: $a2
	ld [hl], c                                       ; $4a7c: $71
	adc h                                            ; $4a7d: $8c
	ld bc, $ad07                                     ; $4a7e: $01 $07 $ad
	ld [hl], c                                       ; $4a81: $71
	adc h                                            ; $4a82: $8c
	inc b                                            ; $4a83: $04
	rlca                                             ; $4a84: $07
	jp nz, $8c71                                     ; $4a85: $c2 $71 $8c

	ld bc, $d107                                     ; $4a88: $01 $07 $d1
	ld [hl], c                                       ; $4a8b: $71
	adc h                                            ; $4a8c: $8c
	dec b                                            ; $4a8d: $05
	rlca                                             ; $4a8e: $07
	ldh [c], a                                       ; $4a8f: $e2
	ld [hl], c                                       ; $4a90: $71
	rra                                              ; $4a91: $1f
	ld [hl], d                                       ; $4a92: $72
	adc h                                            ; $4a93: $8c
	dec b                                            ; $4a94: $05
	rlca                                             ; $4a95: $07
	ld e, c                                          ; $4a96: $59
	ld [hl], d                                       ; $4a97: $72
	ld l, h                                          ; $4a98: $6c
	ld [hl], d                                       ; $4a99: $72
	adc h                                            ; $4a9a: $8c
	dec b                                            ; $4a9b: $05
	rlca                                             ; $4a9c: $07
	ld a, h                                          ; $4a9d: $7c
	ld [hl], d                                       ; $4a9e: $72
	adc e                                            ; $4a9f: $8b
	ld [hl], d                                       ; $4aa0: $72
	adc h                                            ; $4aa1: $8c
	dec b                                            ; $4aa2: $05
	rlca                                             ; $4aa3: $07
	sbc c                                            ; $4aa4: $99
	ld [hl], d                                       ; $4aa5: $72
	and a                                            ; $4aa6: $a7
	ld [hl], d                                       ; $4aa7: $72
	adc h                                            ; $4aa8: $8c
	dec b                                            ; $4aa9: $05
	rlca                                             ; $4aaa: $07
	xor l                                            ; $4aab: $ad
	ld [hl], d                                       ; $4aac: $72
	jp nz, $8c72                                     ; $4aad: $c2 $72 $8c

	ld bc, $ce07                                     ; $4ab0: $01 $07 $ce
	ld [hl], d                                       ; $4ab3: $72
	adc h                                            ; $4ab4: $8c
	dec b                                            ; $4ab5: $05
	rlca                                             ; $4ab6: $07
	rst SubAFromDE                                          ; $4ab7: $df
	ld [hl], d                                       ; $4ab8: $72
	ld sp, hl                                        ; $4ab9: $f9
	ld [hl], d                                       ; $4aba: $72
	adc h                                            ; $4abb: $8c
	ld bc, $2507                                     ; $4abc: $01 $07 $25
	ld [hl], e                                       ; $4abf: $73
	adc h                                            ; $4ac0: $8c
	inc bc                                           ; $4ac1: $03
	rlca                                             ; $4ac2: $07
	inc a                                            ; $4ac3: $3c
	ld [hl], e                                       ; $4ac4: $73
	ld e, d                                          ; $4ac5: $5a
	ld [hl], e                                       ; $4ac6: $73
	adc h                                            ; $4ac7: $8c
	ld bc, $6b07                                     ; $4ac8: $01 $07 $6b
	ld [hl], e                                       ; $4acb: $73
	adc h                                            ; $4acc: $8c
	ld bc, $7a07                                     ; $4acd: $01 $07 $7a
	ld [hl], e                                       ; $4ad0: $73
	adc h                                            ; $4ad1: $8c
	ld bc, $a007                                     ; $4ad2: $01 $07 $a0
	ld [hl], e                                       ; $4ad5: $73

jr_007_4ad6:
	adc h                                            ; $4ad6: $8c
	inc b                                            ; $4ad7: $04
	rlca                                             ; $4ad8: $07
	xor [hl]                                         ; $4ad9: $ae
	ld [hl], e                                       ; $4ada: $73
	adc h                                            ; $4adb: $8c
	inc b                                            ; $4adc: $04
	rlca                                             ; $4add: $07
	cp [hl]                                          ; $4ade: $be
	ld [hl], e                                       ; $4adf: $73
	adc h                                            ; $4ae0: $8c
	inc bc                                           ; $4ae1: $03
	rlca                                             ; $4ae2: $07
	push bc                                          ; $4ae3: $c5
	ld [hl], e                                       ; $4ae4: $73
	db $d3                                           ; $4ae5: $d3
	ld [hl], e                                       ; $4ae6: $73
	adc h                                            ; $4ae7: $8c
	inc bc                                           ; $4ae8: $03
	rlca                                             ; $4ae9: $07
	sbc $73                                          ; $4aea: $de $73
	ei                                               ; $4aec: $fb
	ld [hl], e                                       ; $4aed: $73
	adc h                                            ; $4aee: $8c
	dec b                                            ; $4aef: $05
	rlca                                             ; $4af0: $07
	inc de                                           ; $4af1: $13
	ld [hl], h                                       ; $4af2: $74
	inc hl                                           ; $4af3: $23
	ld [hl], h                                       ; $4af4: $74
	adc h                                            ; $4af5: $8c
	inc bc                                           ; $4af6: $03
	rlca                                             ; $4af7: $07
	jr nc, jr_007_4b6e                               ; $4af8: $30 $74

	ld b, d                                          ; $4afa: $42
	ld [hl], h                                       ; $4afb: $74
	adc h                                            ; $4afc: $8c
	ld bc, $5407                                     ; $4afd: $01 $07 $54
	ld [hl], h                                       ; $4b00: $74
	adc h                                            ; $4b01: $8c
	ld bc, $7307                                     ; $4b02: $01 $07 $73
	ld [hl], h                                       ; $4b05: $74
	adc h                                            ; $4b06: $8c
	inc bc                                           ; $4b07: $03
	rlca                                             ; $4b08: $07
	sub c                                            ; $4b09: $91
	ld [hl], h                                       ; $4b0a: $74
	and e                                            ; $4b0b: $a3
	ld [hl], h                                       ; $4b0c: $74
	adc h                                            ; $4b0d: $8c
	dec b                                            ; $4b0e: $05
	rlca                                             ; $4b0f: $07
	or a                                             ; $4b10: $b7
	ld [hl], h                                       ; $4b11: $74
	rst JumpTable                                          ; $4b12: $c7
	ld [hl], h                                       ; $4b13: $74
	adc h                                            ; $4b14: $8c
	dec b                                            ; $4b15: $05
	rlca                                             ; $4b16: $07
	reti                                             ; $4b17: $d9


	ld [hl], h                                       ; $4b18: $74
	pop af                                           ; $4b19: $f1
	ld [hl], h                                       ; $4b1a: $74
	adc h                                            ; $4b1b: $8c
	ld bc, $fe07                                     ; $4b1c: $01 $07 $fe
	ld [hl], h                                       ; $4b1f: $74
	adc h                                            ; $4b20: $8c
	ld bc, $1107                                     ; $4b21: $01 $07 $11
	ld [hl], l                                       ; $4b24: $75
	adc h                                            ; $4b25: $8c
	ld bc, $2907                                     ; $4b26: $01 $07 $29
	ld [hl], l                                       ; $4b29: $75
	adc h                                            ; $4b2a: $8c
	dec b                                            ; $4b2b: $05
	rlca                                             ; $4b2c: $07
	ld b, b                                          ; $4b2d: $40
	ld [hl], l                                       ; $4b2e: $75
	ld c, a                                          ; $4b2f: $4f
	ld [hl], l                                       ; $4b30: $75
	adc h                                            ; $4b31: $8c
	inc b                                            ; $4b32: $04
	rlca                                             ; $4b33: $07
	ld e, l                                          ; $4b34: $5d
	ld [hl], l                                       ; $4b35: $75
	adc h                                            ; $4b36: $8c
	dec b                                            ; $4b37: $05
	rlca                                             ; $4b38: $07
	ld h, e                                          ; $4b39: $63
	ld [hl], l                                       ; $4b3a: $75
	ld [hl], a                                       ; $4b3b: $77
	ld [hl], l                                       ; $4b3c: $75
	adc h                                            ; $4b3d: $8c
	inc b                                            ; $4b3e: $04
	rlca                                             ; $4b3f: $07
	add l                                            ; $4b40: $85
	ld [hl], l                                       ; $4b41: $75
	adc h                                            ; $4b42: $8c
	ld bc, $9207                                     ; $4b43: $01 $07 $92
	ld [hl], l                                       ; $4b46: $75
	adc h                                            ; $4b47: $8c
	ld bc, $c807                                     ; $4b48: $01 $07 $c8
	ld [hl], l                                       ; $4b4b: $75
	adc h                                            ; $4b4c: $8c
	ld bc, $e407                                     ; $4b4d: $01 $07 $e4
	ld [hl], l                                       ; $4b50: $75
	adc e                                            ; $4b51: $8b
	ld bc, $f407                                     ; $4b52: $01 $07 $f4
	ld [hl], l                                       ; $4b55: $75
	adc l                                            ; $4b56: $8d
	rlca                                             ; $4b57: $07
	rlca                                             ; $4b58: $07
	nop                                              ; $4b59: $00
	halt                                             ; $4b5a: $76
	rrca                                             ; $4b5b: $0f
	halt                                             ; $4b5c: $76
	ld d, $76                                        ; $4b5d: $16 $76
	adc h                                            ; $4b5f: $8c
	inc b                                            ; $4b60: $04
	rlca                                             ; $4b61: $07
	ld h, $76                                        ; $4b62: $26 $76
	adc h                                            ; $4b64: $8c
	ld bc, $3707                                     ; $4b65: $01 $07 $37
	halt                                             ; $4b68: $76
	adc h                                            ; $4b69: $8c
	ld bc, $5f07                                     ; $4b6a: $01 $07 $5f
	halt                                             ; $4b6d: $76

jr_007_4b6e:
	adc h                                            ; $4b6e: $8c
	ld bc, $7207                                     ; $4b6f: $01 $07 $72
	halt                                             ; $4b72: $76
	adc h                                            ; $4b73: $8c
	ld bc, $8107                                     ; $4b74: $01 $07 $81
	halt                                             ; $4b77: $76
	adc h                                            ; $4b78: $8c
	dec b                                            ; $4b79: $05
	rlca                                             ; $4b7a: $07
	sub [hl]                                         ; $4b7b: $96
	halt                                             ; $4b7c: $76
	and d                                            ; $4b7d: $a2
	halt                                             ; $4b7e: $76
	adc h                                            ; $4b7f: $8c
	dec b                                            ; $4b80: $05
	rlca                                             ; $4b81: $07
	xor e                                            ; $4b82: $ab
	halt                                             ; $4b83: $76
	cp h                                             ; $4b84: $bc
	halt                                             ; $4b85: $76
	adc h                                            ; $4b86: $8c
	ld bc, $cb07                                     ; $4b87: $01 $07 $cb
	halt                                             ; $4b8a: $76
	adc h                                            ; $4b8b: $8c
	inc b                                            ; $4b8c: $04
	rlca                                             ; $4b8d: $07
	ldh [c], a                                       ; $4b8e: $e2
	halt                                             ; $4b8f: $76
	adc h                                            ; $4b90: $8c
	ld bc, $ff07                                     ; $4b91: $01 $07 $ff
	halt                                             ; $4b94: $76
	adc h                                            ; $4b95: $8c
	dec b                                            ; $4b96: $05
	rlca                                             ; $4b97: $07
	dec bc                                           ; $4b98: $0b
	ld [hl], a                                       ; $4b99: $77
	rla                                              ; $4b9a: $17
	ld [hl], a                                       ; $4b9b: $77
	adc h                                            ; $4b9c: $8c
	ld bc, $2007                                     ; $4b9d: $01 $07 $20
	ld [hl], a                                       ; $4ba0: $77
	adc h                                            ; $4ba1: $8c
	inc b                                            ; $4ba2: $04
	rlca                                             ; $4ba3: $07
	inc l                                            ; $4ba4: $2c
	ld [hl], a                                       ; $4ba5: $77
	adc h                                            ; $4ba6: $8c
	inc b                                            ; $4ba7: $04
	rlca                                             ; $4ba8: $07
	add hl, sp                                       ; $4ba9: $39
	ld [hl], a                                       ; $4baa: $77
	adc h                                            ; $4bab: $8c
	ld [bc], a                                       ; $4bac: $02
	rlca                                             ; $4bad: $07
	ld a, $77                                        ; $4bae: $3e $77
	adc h                                            ; $4bb0: $8c
	ld [bc], a                                       ; $4bb1: $02
	rlca                                             ; $4bb2: $07
	ld c, c                                          ; $4bb3: $49
	ld [hl], a                                       ; $4bb4: $77
	adc h                                            ; $4bb5: $8c
	ld [bc], a                                       ; $4bb6: $02
	rlca                                             ; $4bb7: $07
	ld d, a                                          ; $4bb8: $57
	ld [hl], a                                       ; $4bb9: $77
	adc h                                            ; $4bba: $8c
	ld [bc], a                                       ; $4bbb: $02
	rlca                                             ; $4bbc: $07
	ld h, l                                          ; $4bbd: $65
	ld [hl], a                                       ; $4bbe: $77
	adc h                                            ; $4bbf: $8c
	ld [bc], a                                       ; $4bc0: $02
	rlca                                             ; $4bc1: $07
	ld [hl], e                                       ; $4bc2: $73
	ld [hl], a                                       ; $4bc3: $77
	adc h                                            ; $4bc4: $8c
	inc b                                            ; $4bc5: $04
	rlca                                             ; $4bc6: $07
	add c                                            ; $4bc7: $81
	ld [hl], a                                       ; $4bc8: $77
	ld a, [bc]                                       ; $4bc9: $0a
	inc b                                            ; $4bca: $04
	rlca                                             ; $4bcb: $07
	adc b                                            ; $4bcc: $88
	ld h, b                                          ; $4bcd: $60
	adc d                                            ; $4bce: $8a
	inc b                                            ; $4bcf: $04
	rlca                                             ; $4bd0: $07
	adc l                                            ; $4bd1: $8d
	ld h, b                                          ; $4bd2: $60
	adc d                                            ; $4bd3: $8a
	inc b                                            ; $4bd4: $04
	rlca                                             ; $4bd5: $07
	sub [hl]                                         ; $4bd6: $96
	ld h, b                                          ; $4bd7: $60
	adc d                                            ; $4bd8: $8a
	inc b                                            ; $4bd9: $04
	rlca                                             ; $4bda: $07
	sbc a                                            ; $4bdb: $9f
	ld h, b                                          ; $4bdc: $60
	adc d                                            ; $4bdd: $8a
	inc b                                            ; $4bde: $04
	rlca                                             ; $4bdf: $07
	xor b                                            ; $4be0: $a8
	ld h, b                                          ; $4be1: $60
	adc d                                            ; $4be2: $8a
	inc b                                            ; $4be3: $04
	rlca                                             ; $4be4: $07
	or c                                             ; $4be5: $b1
	ld h, b                                          ; $4be6: $60
	adc h                                            ; $4be7: $8c
	ld bc, $ba07                                     ; $4be8: $01 $07 $ba
	ld h, b                                          ; $4beb: $60
	adc h                                            ; $4bec: $8c
	ld bc, $ce07                                     ; $4bed: $01 $07 $ce
	ld h, b                                          ; $4bf0: $60
	adc h                                            ; $4bf1: $8c
	ld bc, $e007                                     ; $4bf2: $01 $07 $e0
	ld h, b                                          ; $4bf5: $60
	adc h                                            ; $4bf6: $8c
	ld bc, $f007                                     ; $4bf7: $01 $07 $f0
	ld h, b                                          ; $4bfa: $60
	adc h                                            ; $4bfb: $8c
	ld bc, $fb07                                     ; $4bfc: $01 $07 $fb
	ld h, b                                          ; $4bff: $60
	adc d                                            ; $4c00: $8a
	inc b                                            ; $4c01: $04
	rlca                                             ; $4c02: $07
	ld b, $61                                        ; $4c03: $06 $61
	adc h                                            ; $4c05: $8c
	inc b                                            ; $4c06: $04
	rlca                                             ; $4c07: $07
	db $10                                           ; $4c08: $10
	ld h, c                                          ; $4c09: $61
	adc d                                            ; $4c0a: $8a
	inc b                                            ; $4c0b: $04
	rlca                                             ; $4c0c: $07
	inc e                                            ; $4c0d: $1c
	ld h, c                                          ; $4c0e: $61
	adc d                                            ; $4c0f: $8a
	inc b                                            ; $4c10: $04
	rlca                                             ; $4c11: $07
	inc h                                            ; $4c12: $24
	ld h, c                                          ; $4c13: $61
	adc e                                            ; $4c14: $8b
	ld bc, $3507                                     ; $4c15: $01 $07 $35
	ld h, c                                          ; $4c18: $61
	adc e                                            ; $4c19: $8b
	ld bc, $4107                                     ; $4c1a: $01 $07 $41
	ld h, c                                          ; $4c1d: $61
	adc h                                            ; $4c1e: $8c
	ld bc, $6007                                     ; $4c1f: $01 $07 $60
	ld h, c                                          ; $4c22: $61
	adc e                                            ; $4c23: $8b
	dec b                                            ; $4c24: $05
	rlca                                             ; $4c25: $07
	jp $cf61                                         ; $4c26: $c3 $61 $cf


	ld h, c                                          ; $4c29: $61
	adc d                                            ; $4c2a: $8a
	inc b                                            ; $4c2b: $04
	rlca                                             ; $4c2c: $07
	rst SubAFromHL                                          ; $4c2d: $d7
	ld h, c                                          ; $4c2e: $61
	adc d                                            ; $4c2f: $8a
	inc b                                            ; $4c30: $04
	rlca                                             ; $4c31: $07
	rst SubAFromDE                                          ; $4c32: $df
	ld h, c                                          ; $4c33: $61
	adc e                                            ; $4c34: $8b
	ld bc, $ee07                                     ; $4c35: $01 $07 $ee
	ld h, c                                          ; $4c38: $61
	adc e                                            ; $4c39: $8b
	ld bc, $0807                                     ; $4c3a: $01 $07 $08
	ld h, d                                          ; $4c3d: $62
	adc d                                            ; $4c3e: $8a
	inc b                                            ; $4c3f: $04
	rlca                                             ; $4c40: $07
	add hl, hl                                       ; $4c41: $29
	ld h, d                                          ; $4c42: $62
	adc h                                            ; $4c43: $8c
	inc b                                            ; $4c44: $04
	rlca                                             ; $4c45: $07
	ld sp, $8c62                                     ; $4c46: $31 $62 $8c
	inc b                                            ; $4c49: $04
	rlca                                             ; $4c4a: $07
	ld a, [hl-]                                      ; $4c4b: $3a
	ld h, d                                          ; $4c4c: $62
	adc h                                            ; $4c4d: $8c
	inc b                                            ; $4c4e: $04
	rlca                                             ; $4c4f: $07
	ld b, c                                          ; $4c50: $41
	ld h, d                                          ; $4c51: $62
	adc h                                            ; $4c52: $8c
	ld bc, $4707                                     ; $4c53: $01 $07 $47
	ld h, d                                          ; $4c56: $62
	adc h                                            ; $4c57: $8c
	dec b                                            ; $4c58: $05
	rlca                                             ; $4c59: $07
	ld d, e                                          ; $4c5a: $53
	ld h, d                                          ; $4c5b: $62
	ld e, a                                          ; $4c5c: $5f
	ld h, d                                          ; $4c5d: $62
	adc d                                            ; $4c5e: $8a
	inc b                                            ; $4c5f: $04
	rlca                                             ; $4c60: $07
	ld h, a                                          ; $4c61: $67
	ld h, d                                          ; $4c62: $62
	adc h                                            ; $4c63: $8c
	inc b                                            ; $4c64: $04
	rlca                                             ; $4c65: $07
	ld l, a                                          ; $4c66: $6f
	ld h, d                                          ; $4c67: $62
	adc h                                            ; $4c68: $8c
	inc b                                            ; $4c69: $04
	rlca                                             ; $4c6a: $07
	add b                                            ; $4c6b: $80
	ld h, d                                          ; $4c6c: $62
	adc h                                            ; $4c6d: $8c
	inc b                                            ; $4c6e: $04
	rlca                                             ; $4c6f: $07
	adc c                                            ; $4c70: $89
	ld h, d                                          ; $4c71: $62
	adc h                                            ; $4c72: $8c
	inc b                                            ; $4c73: $04
	rlca                                             ; $4c74: $07
	sub d                                            ; $4c75: $92
	ld h, d                                          ; $4c76: $62
	adc d                                            ; $4c77: $8a
	inc b                                            ; $4c78: $04
	rlca                                             ; $4c79: $07
	sbc h                                            ; $4c7a: $9c
	ld h, d                                          ; $4c7b: $62
	adc d                                            ; $4c7c: $8a
	inc b                                            ; $4c7d: $04
	rlca                                             ; $4c7e: $07
	and l                                            ; $4c7f: $a5
	ld h, d                                          ; $4c80: $62
	adc d                                            ; $4c81: $8a
	inc b                                            ; $4c82: $04
	rlca                                             ; $4c83: $07
	xor [hl]                                         ; $4c84: $ae
	ld h, d                                          ; $4c85: $62
	adc d                                            ; $4c86: $8a
	inc b                                            ; $4c87: $04
	rlca                                             ; $4c88: $07
	or a                                             ; $4c89: $b7
	ld h, d                                          ; $4c8a: $62
	adc d                                            ; $4c8b: $8a
	inc b                                            ; $4c8c: $04
	rlca                                             ; $4c8d: $07
	ret nz                                           ; $4c8e: $c0

	ld h, d                                          ; $4c8f: $62
	adc d                                            ; $4c90: $8a
	inc b                                            ; $4c91: $04
	rlca                                             ; $4c92: $07
	ret                                              ; $4c93: $c9


	ld h, d                                          ; $4c94: $62
	adc d                                            ; $4c95: $8a
	inc b                                            ; $4c96: $04
	rlca                                             ; $4c97: $07
	ret nc                                           ; $4c98: $d0

	ld h, d                                          ; $4c99: $62
	adc d                                            ; $4c9a: $8a
	inc b                                            ; $4c9b: $04
	rlca                                             ; $4c9c: $07
	sub $62                                          ; $4c9d: $d6 $62
	adc d                                            ; $4c9f: $8a
	inc b                                            ; $4ca0: $04
	rlca                                             ; $4ca1: $07
	call c, $8a62                                    ; $4ca2: $dc $62 $8a
	inc b                                            ; $4ca5: $04
	rlca                                             ; $4ca6: $07
	ldh [c], a                                       ; $4ca7: $e2
	ld h, d                                          ; $4ca8: $62
	adc d                                            ; $4ca9: $8a
	inc b                                            ; $4caa: $04
	rlca                                             ; $4cab: $07
	add sp, $62                                      ; $4cac: $e8 $62
	adc d                                            ; $4cae: $8a
	inc b                                            ; $4caf: $04
	rlca                                             ; $4cb0: $07
	xor $62                                          ; $4cb1: $ee $62
	adc d                                            ; $4cb3: $8a
	inc b                                            ; $4cb4: $04
	rlca                                             ; $4cb5: $07
	db $f4                                           ; $4cb6: $f4
	ld h, d                                          ; $4cb7: $62
	adc d                                            ; $4cb8: $8a
	inc b                                            ; $4cb9: $04
	rlca                                             ; $4cba: $07
	ei                                               ; $4cbb: $fb
	ld h, d                                          ; $4cbc: $62
	adc d                                            ; $4cbd: $8a
	inc b                                            ; $4cbe: $04
	rlca                                             ; $4cbf: $07
	ld bc, $8a63                                     ; $4cc0: $01 $63 $8a
	inc b                                            ; $4cc3: $04
	rlca                                             ; $4cc4: $07
	ld b, $63                                        ; $4cc5: $06 $63
	adc d                                            ; $4cc7: $8a
	inc b                                            ; $4cc8: $04
	rlca                                             ; $4cc9: $07
	dec bc                                           ; $4cca: $0b
	ld h, e                                          ; $4ccb: $63
	adc d                                            ; $4ccc: $8a
	inc b                                            ; $4ccd: $04
	rlca                                             ; $4cce: $07
	ld [de], a                                       ; $4ccf: $12
	ld h, e                                          ; $4cd0: $63
	adc d                                            ; $4cd1: $8a
	inc b                                            ; $4cd2: $04
	rlca                                             ; $4cd3: $07
	add hl, de                                       ; $4cd4: $19
	ld h, e                                          ; $4cd5: $63
	adc d                                            ; $4cd6: $8a
	inc b                                            ; $4cd7: $04
	rlca                                             ; $4cd8: $07
	ld [hl+], a                                      ; $4cd9: $22
	ld h, e                                          ; $4cda: $63
	adc d                                            ; $4cdb: $8a
	inc b                                            ; $4cdc: $04
	rlca                                             ; $4cdd: $07
	ld a, [hl+]                                      ; $4cde: $2a
	ld h, e                                          ; $4cdf: $63
	adc d                                            ; $4ce0: $8a
	inc b                                            ; $4ce1: $04
	rlca                                             ; $4ce2: $07
	ld sp, $8a63                                     ; $4ce3: $31 $63 $8a
	inc b                                            ; $4ce6: $04
	rlca                                             ; $4ce7: $07
	add hl, sp                                       ; $4ce8: $39
	ld h, e                                          ; $4ce9: $63
	adc e                                            ; $4cea: $8b
	inc b                                            ; $4ceb: $04
	rlca                                             ; $4cec: $07
	ld a, $63                                        ; $4ced: $3e $63
	adc e                                            ; $4cef: $8b
	ld bc, $4607                                     ; $4cf0: $01 $07 $46
	ld h, e                                          ; $4cf3: $63
	adc e                                            ; $4cf4: $8b
	dec b                                            ; $4cf5: $05
	rlca                                             ; $4cf6: $07
	ld d, d                                          ; $4cf7: $52
	ld h, e                                          ; $4cf8: $63
	ld e, [hl]                                       ; $4cf9: $5e
	ld h, e                                          ; $4cfa: $63
	adc e                                            ; $4cfb: $8b
	inc b                                            ; $4cfc: $04
	rlca                                             ; $4cfd: $07
	ld h, [hl]                                       ; $4cfe: $66
	ld h, e                                          ; $4cff: $63
	adc e                                            ; $4d00: $8b
	inc b                                            ; $4d01: $04
	rlca                                             ; $4d02: $07
	ld l, h                                          ; $4d03: $6c
	ld h, e                                          ; $4d04: $63
	adc e                                            ; $4d05: $8b
	dec b                                            ; $4d06: $05
	rlca                                             ; $4d07: $07
	ld [hl], e                                       ; $4d08: $73
	ld h, e                                          ; $4d09: $63
	ld a, a                                          ; $4d0a: $7f
	ld h, e                                          ; $4d0b: $63
	adc e                                            ; $4d0c: $8b
	inc b                                            ; $4d0d: $04
	rlca                                             ; $4d0e: $07
	add l                                            ; $4d0f: $85
	ld h, e                                          ; $4d10: $63
	adc e                                            ; $4d11: $8b
	inc b                                            ; $4d12: $04
	rlca                                             ; $4d13: $07
	adc e                                            ; $4d14: $8b
	ld h, e                                          ; $4d15: $63
	adc e                                            ; $4d16: $8b
	inc b                                            ; $4d17: $04
	rlca                                             ; $4d18: $07
	sbc h                                            ; $4d19: $9c
	ld h, e                                          ; $4d1a: $63
	adc d                                            ; $4d1b: $8a
	inc b                                            ; $4d1c: $04
	rlca                                             ; $4d1d: $07
	and d                                            ; $4d1e: $a2
	ld h, e                                          ; $4d1f: $63
	adc d                                            ; $4d20: $8a
	inc b                                            ; $4d21: $04
	rlca                                             ; $4d22: $07
	rst SubAFromHL                                          ; $4d23: $d7
	ld h, e                                          ; $4d24: $63
	adc d                                            ; $4d25: $8a
	inc b                                            ; $4d26: $04
	rlca                                             ; $4d27: $07
	ld [de], a                                       ; $4d28: $12
	ld h, h                                          ; $4d29: $64
	adc d                                            ; $4d2a: $8a
	inc b                                            ; $4d2b: $04

Jump_007_4d2c:
	rlca                                             ; $4d2c: $07
	dec hl                                           ; $4d2d: $2b
	ld h, h                                          ; $4d2e: $64
	adc d                                            ; $4d2f: $8a
	inc b                                            ; $4d30: $04
	rlca                                             ; $4d31: $07
	ld b, h                                          ; $4d32: $44
	ld h, h                                          ; $4d33: $64
	adc d                                            ; $4d34: $8a
	inc b                                            ; $4d35: $04
	rlca                                             ; $4d36: $07
	ld e, e                                          ; $4d37: $5b
	ld h, h                                          ; $4d38: $64
	adc d                                            ; $4d39: $8a
	inc b                                            ; $4d3a: $04
	rlca                                             ; $4d3b: $07
	ld [hl], d                                       ; $4d3c: $72
	ld h, h                                          ; $4d3d: $64
	adc d                                            ; $4d3e: $8a
	inc b                                            ; $4d3f: $04
	rlca                                             ; $4d40: $07
	ld a, d                                          ; $4d41: $7a
	ld h, h                                          ; $4d42: $64
	adc d                                            ; $4d43: $8a
	inc b                                            ; $4d44: $04
	rlca                                             ; $4d45: $07
	ld a, a                                          ; $4d46: $7f
	ld h, h                                          ; $4d47: $64
	adc d                                            ; $4d48: $8a
	inc b                                            ; $4d49: $04
	rlca                                             ; $4d4a: $07
	adc b                                            ; $4d4b: $88
	ld h, h                                          ; $4d4c: $64
	ld a, [bc]                                       ; $4d4d: $0a
	inc b                                            ; $4d4e: $04
	rlca                                             ; $4d4f: $07
	adc [hl]                                         ; $4d50: $8e
	ld h, h                                          ; $4d51: $64
	adc d                                            ; $4d52: $8a
	inc b                                            ; $4d53: $04
	rlca                                             ; $4d54: $07
	sub [hl]                                         ; $4d55: $96
	ld h, h                                          ; $4d56: $64
	adc d                                            ; $4d57: $8a
	inc b                                            ; $4d58: $04
	rlca                                             ; $4d59: $07
	sbc [hl]                                         ; $4d5a: $9e
	ld h, h                                          ; $4d5b: $64
	adc d                                            ; $4d5c: $8a
	inc b                                            ; $4d5d: $04
	rlca                                             ; $4d5e: $07
	and a                                            ; $4d5f: $a7
	ld h, h                                          ; $4d60: $64
	adc d                                            ; $4d61: $8a
	inc b                                            ; $4d62: $04
	rlca                                             ; $4d63: $07
	or b                                             ; $4d64: $b0
	ld h, h                                          ; $4d65: $64
	adc d                                            ; $4d66: $8a
	inc b                                            ; $4d67: $04
	rlca                                             ; $4d68: $07
	ret nz                                           ; $4d69: $c0

	ld h, h                                          ; $4d6a: $64
	adc d                                            ; $4d6b: $8a
	inc b                                            ; $4d6c: $04
	rlca                                             ; $4d6d: $07
	ret z                                            ; $4d6e: $c8

	ld h, h                                          ; $4d6f: $64
	adc d                                            ; $4d70: $8a
	inc b                                            ; $4d71: $04
	rlca                                             ; $4d72: $07
	ret nc                                           ; $4d73: $d0

	ld h, h                                          ; $4d74: $64
	adc d                                            ; $4d75: $8a
	inc b                                            ; $4d76: $04
	rlca                                             ; $4d77: $07
	db $e4                                           ; $4d78: $e4
	ld h, h                                          ; $4d79: $64
	adc d                                            ; $4d7a: $8a
	inc b                                            ; $4d7b: $04
	rlca                                             ; $4d7c: $07
	db $eb                                           ; $4d7d: $eb
	ld h, h                                          ; $4d7e: $64
	adc d                                            ; $4d7f: $8a
	inc b                                            ; $4d80: $04
	rlca                                             ; $4d81: $07
	ldh a, [c]                                       ; $4d82: $f2
	ld h, h                                          ; $4d83: $64
	adc d                                            ; $4d84: $8a
	inc b                                            ; $4d85: $04
	rlca                                             ; $4d86: $07
	ld sp, hl                                        ; $4d87: $f9
	ld h, h                                          ; $4d88: $64
	adc d                                            ; $4d89: $8a
	inc b                                            ; $4d8a: $04
	rlca                                             ; $4d8b: $07
	nop                                              ; $4d8c: $00
	ld h, l                                          ; $4d8d: $65
	ld a, [bc]                                       ; $4d8e: $0a
	inc b                                            ; $4d8f: $04
	rlca                                             ; $4d90: $07
	rlca                                             ; $4d91: $07
	ld h, l                                          ; $4d92: $65
	adc d                                            ; $4d93: $8a
	inc b                                            ; $4d94: $04
	rlca                                             ; $4d95: $07
	ld c, $65                                        ; $4d96: $0e $65
	adc d                                            ; $4d98: $8a
	inc b                                            ; $4d99: $04
	rlca                                             ; $4d9a: $07
	dec d                                            ; $4d9b: $15
	ld h, l                                          ; $4d9c: $65
	adc d                                            ; $4d9d: $8a
	inc b                                            ; $4d9e: $04
	rlca                                             ; $4d9f: $07
	ld e, $65                                        ; $4da0: $1e $65
	adc d                                            ; $4da2: $8a
	inc b                                            ; $4da3: $04
	rlca                                             ; $4da4: $07
	daa                                              ; $4da5: $27
	ld h, l                                          ; $4da6: $65
	adc d                                            ; $4da7: $8a
	inc b                                            ; $4da8: $04
	rlca                                             ; $4da9: $07
	ld sp, $8a65                                     ; $4daa: $31 $65 $8a
	inc b                                            ; $4dad: $04
	rlca                                             ; $4dae: $07
	dec sp                                           ; $4daf: $3b
	ld h, l                                          ; $4db0: $65
	adc d                                            ; $4db1: $8a
	inc b                                            ; $4db2: $04
	rlca                                             ; $4db3: $07
	ld b, l                                          ; $4db4: $45
	ld h, l                                          ; $4db5: $65
	adc d                                            ; $4db6: $8a
	inc b                                            ; $4db7: $04
	rlca                                             ; $4db8: $07
	ld c, a                                          ; $4db9: $4f
	ld h, l                                          ; $4dba: $65
	ld a, a                                          ; $4dbb: $7f
	inc b                                            ; $4dbc: $04
	rlca                                             ; $4dbd: $07
	ld e, c                                          ; $4dbe: $59
	ld h, l                                          ; $4dbf: $65
	adc e                                            ; $4dc0: $8b
	dec b                                            ; $4dc1: $05
	rlca                                             ; $4dc2: $07
	ld e, a                                          ; $4dc3: $5f
	ld h, l                                          ; $4dc4: $65
	ld [hl], e                                       ; $4dc5: $73
	ld h, l                                          ; $4dc6: $65
	adc e                                            ; $4dc7: $8b
	dec b                                            ; $4dc8: $05
	rlca                                             ; $4dc9: $07
	ld a, c                                          ; $4dca: $79
	ld h, l                                          ; $4dcb: $65
	adc l                                            ; $4dcc: $8d
	ld h, l                                          ; $4dcd: $65
	adc e                                            ; $4dce: $8b
	dec b                                            ; $4dcf: $05
	rlca                                             ; $4dd0: $07
	sub e                                            ; $4dd1: $93
	ld h, l                                          ; $4dd2: $65
	sbc [hl]                                         ; $4dd3: $9e
	ld h, l                                          ; $4dd4: $65
	adc e                                            ; $4dd5: $8b
	dec b                                            ; $4dd6: $05
	rlca                                             ; $4dd7: $07
	and a                                            ; $4dd8: $a7
	ld h, l                                          ; $4dd9: $65
	or h                                             ; $4dda: $b4
	ld h, l                                          ; $4ddb: $65
	adc e                                            ; $4ddc: $8b
	dec b                                            ; $4ddd: $05
	rlca                                             ; $4dde: $07
	cp l                                             ; $4ddf: $bd
	ld h, l                                          ; $4de0: $65
	jp z, $8b65                                      ; $4de1: $ca $65 $8b

	dec b                                            ; $4de4: $05
	rlca                                             ; $4de5: $07
	db $d3                                           ; $4de6: $d3
	ld h, l                                          ; $4de7: $65
	sbc $65                                          ; $4de8: $de $65
	adc e                                            ; $4dea: $8b
	dec b                                            ; $4deb: $05
	rlca                                             ; $4dec: $07
	and $65                                          ; $4ded: $e6 $65
	pop af                                           ; $4def: $f1
	ld h, l                                          ; $4df0: $65
	adc e                                            ; $4df1: $8b
	dec b                                            ; $4df2: $05
	rlca                                             ; $4df3: $07
	ld sp, hl                                        ; $4df4: $f9
	ld h, l                                          ; $4df5: $65
	inc b                                            ; $4df6: $04
	ld h, [hl]                                       ; $4df7: $66
	ld e, [hl]                                       ; $4df8: $5e
	ld c, [hl]                                       ; $4df9: $4e
	ld l, [hl]                                       ; $4dfa: $6e
	ld c, [hl]                                       ; $4dfb: $4e
	ld a, [hl]                                       ; $4dfc: $7e
	ld c, [hl]                                       ; $4dfd: $4e
	adc [hl]                                         ; $4dfe: $8e
	ld c, [hl]                                       ; $4dff: $4e
	sbc [hl]                                         ; $4e00: $9e
	ld c, [hl]                                       ; $4e01: $4e
	xor [hl]                                         ; $4e02: $ae
	ld c, [hl]                                       ; $4e03: $4e
	cp [hl]                                          ; $4e04: $be
	ld c, [hl]                                       ; $4e05: $4e
	adc $4e                                          ; $4e06: $ce $4e
	sbc $4e                                          ; $4e08: $de $4e
	xor $4e                                          ; $4e0a: $ee $4e
	cp $4e                                           ; $4e0c: $fe $4e
	ld c, $4f                                        ; $4e0e: $0e $4f
	ld e, $4f                                        ; $4e10: $1e $4f
	ld l, $4f                                        ; $4e12: $2e $4f
	ld a, $4f                                        ; $4e14: $3e $4f
	ld c, [hl]                                       ; $4e16: $4e
	ld c, a                                          ; $4e17: $4f
	ld e, [hl]                                       ; $4e18: $5e
	ld c, a                                          ; $4e19: $4f
	ld l, [hl]                                       ; $4e1a: $6e
	ld c, a                                          ; $4e1b: $4f
	ld a, [hl]                                       ; $4e1c: $7e
	ld c, a                                          ; $4e1d: $4f
	adc [hl]                                         ; $4e1e: $8e
	ld c, a                                          ; $4e1f: $4f
	sbc [hl]                                         ; $4e20: $9e
	ld c, a                                          ; $4e21: $4f
	xor [hl]                                         ; $4e22: $ae
	ld c, a                                          ; $4e23: $4f
	cp [hl]                                          ; $4e24: $be
	ld c, a                                          ; $4e25: $4f
	adc $4f                                          ; $4e26: $ce $4f
	sbc $4f                                          ; $4e28: $de $4f
	xor $4f                                          ; $4e2a: $ee $4f
	cp $4f                                           ; $4e2c: $fe $4f
	ld c, $50                                        ; $4e2e: $0e $50
	ld e, $50                                        ; $4e30: $1e $50
	ld l, $50                                        ; $4e32: $2e $50
	ld a, $50                                        ; $4e34: $3e $50
	ld c, [hl]                                       ; $4e36: $4e
	ld d, b                                          ; $4e37: $50
	ld e, [hl]                                       ; $4e38: $5e
	ld d, b                                          ; $4e39: $50
	ld l, [hl]                                       ; $4e3a: $6e
	ld d, b                                          ; $4e3b: $50
	ld a, [hl]                                       ; $4e3c: $7e
	ld d, b                                          ; $4e3d: $50
	adc [hl]                                         ; $4e3e: $8e
	ld d, b                                          ; $4e3f: $50
	sbc [hl]                                         ; $4e40: $9e
	ld d, b                                          ; $4e41: $50
	xor [hl]                                         ; $4e42: $ae
	ld d, b                                          ; $4e43: $50
	cp [hl]                                          ; $4e44: $be
	ld d, b                                          ; $4e45: $50
	adc $50                                          ; $4e46: $ce $50
	sbc $50                                          ; $4e48: $de $50
	xor $50                                          ; $4e4a: $ee $50

Jump_007_4e4c:
	cp $50                                           ; $4e4c: $fe $50
	ld c, $51                                        ; $4e4e: $0e $51
	ld e, $51                                        ; $4e50: $1e $51
	ld l, $51                                        ; $4e52: $2e $51
	ld a, $51                                        ; $4e54: $3e $51
	ld c, [hl]                                       ; $4e56: $4e
	ld d, c                                          ; $4e57: $51
	ld e, [hl]                                       ; $4e58: $5e
	ld d, c                                          ; $4e59: $51
	ld l, [hl]                                       ; $4e5a: $6e
	ld d, c                                          ; $4e5b: $51
	ld a, [hl]                                       ; $4e5c: $7e
	ld d, c                                          ; $4e5d: $51
	db $dd                                           ; $4e5e: $dd
	db $dd                                           ; $4e5f: $dd
	db $dd                                           ; $4e60: $dd
	db $dd                                           ; $4e61: $dd
	ld [hl+], a                                      ; $4e62: $22
	ld [hl+], a                                      ; $4e63: $22

Jump_007_4e64:
	ld [hl+], a                                      ; $4e64: $22
	ld [hl+], a                                      ; $4e65: $22
	db $dd                                           ; $4e66: $dd
	db $dd                                           ; $4e67: $dd
	db $dd                                           ; $4e68: $dd
	db $dd                                           ; $4e69: $dd
	ld [hl+], a                                      ; $4e6a: $22
	ld [hl+], a                                      ; $4e6b: $22
	ld [hl+], a                                      ; $4e6c: $22
	ld [hl+], a                                      ; $4e6d: $22
	db $dd                                           ; $4e6e: $dd
	db $dd                                           ; $4e6f: $dd
	db $dd                                           ; $4e70: $dd
	db $dd                                           ; $4e71: $dd
	db $dd                                           ; $4e72: $dd
	db $dd                                           ; $4e73: $dd
	db $dd                                           ; $4e74: $dd
	db $dd                                           ; $4e75: $dd
	ld [hl+], a                                      ; $4e76: $22
	ld [hl+], a                                      ; $4e77: $22
	ld [hl+], a                                      ; $4e78: $22
	ld [hl+], a                                      ; $4e79: $22
	ld [hl+], a                                      ; $4e7a: $22
	ld [hl+], a                                      ; $4e7b: $22
	ld [hl+], a                                      ; $4e7c: $22
	ld [hl+], a                                      ; $4e7d: $22
	ld sp, hl                                        ; $4e7e: $f9
	ld h, [hl]                                       ; $4e7f: $66
	ld h, l                                          ; $4e80: $65
	ld d, l                                          ; $4e81: $55
	ld b, h                                          ; $4e82: $44
	ld b, h                                          ; $4e83: $44
	inc sp                                           ; $4e84: $33
	ld [hl-], a                                      ; $4e85: $32
	ld [hl+], a                                      ; $4e86: $22
	ld de, $3212                                     ; $4e87: $11 $12 $32
	ld de, $1911                                     ; $4e8a: $11 $11 $19
	or $ff                                           ; $4e8d: $f6 $ff
	cp $ee                                           ; $4e8f: $fe $ee
	db $dd                                           ; $4e91: $dd
	call c, $bbcc                                    ; $4e92: $dc $cc $bb
	ldh a, [$33]                                     ; $4e95: $f0 $33
	inc sp                                           ; $4e97: $33
	ld b, h                                          ; $4e98: $44
	ld b, l                                          ; $4e99: $45
	ld d, l                                          ; $4e9a: $55
	ld h, [hl]                                       ; $4e9b: $66
	ld h, a                                          ; $4e9c: $67
	ld [hl], a                                       ; $4e9d: $77
	cp $bc                                           ; $4e9e: $fe $bc
	call c, $ba9a                                    ; $4ea0: $dc $9a $ba
	ld a, b                                          ; $4ea3: $78
	sbc b                                            ; $4ea4: $98
	ld d, [hl]                                       ; $4ea5: $56
	halt                                             ; $4ea6: $76
	inc sp                                           ; $4ea7: $33
	rst $38                                          ; $4ea8: $ff
	inc sp                                           ; $4ea9: $33
	ld b, l                                          ; $4eaa: $45
	ld h, a                                          ; $4eab: $67
	adc c                                            ; $4eac: $89
	xor e                                            ; $4ead: $ab
	db $fd                                           ; $4eae: $fd
	res 2, a                                         ; $4eaf: $cb $97
	ld d, d                                          ; $4eb1: $52
	rrca                                             ; $4eb2: $0f
	dec h                                            ; $4eb3: $25
	ld a, c                                          ; $4eb4: $79
	cp h                                             ; $4eb5: $bc
	rst SubAFromDE                                          ; $4eb6: $df
	call c, $75b9                                    ; $4eb7: $dc $b9 $75
	jr nz, jr_007_4ee1                               ; $4eba: $20 $25

	ld a, c                                          ; $4ebc: $79
	cp l                                             ; $4ebd: $bd
	ret z                                            ; $4ebe: $c8

	inc hl                                           ; $4ebf: $23
	ld b, l                                          ; $4ec0: $45
	ld h, a                                          ; $4ec1: $67
	adc c                                            ; $4ec2: $89
	xor e                                            ; $4ec3: $ab
	call $c8e0                                       ; $4ec4: $cd $e0 $c8
	inc hl                                           ; $4ec7: $23
	ld b, l                                          ; $4ec8: $45
	ld h, a                                          ; $4ec9: $67
	adc c                                            ; $4eca: $89
	xor e                                            ; $4ecb: $ab
	call $ffef                                       ; $4ecc: $cd $ef $ff
	cp $ee                                           ; $4ecf: $fe $ee
	db $dd                                           ; $4ed1: $dd
	call c, $bbcc                                    ; $4ed2: $dc $cc $bb
	or a                                             ; $4ed5: $b7
	inc sp                                           ; $4ed6: $33
	inc sp                                           ; $4ed7: $33
	ld b, h                                          ; $4ed8: $44
	ld b, l                                          ; $4ed9: $45
	ld d, l                                          ; $4eda: $55
	ld h, [hl]                                       ; $4edb: $66
	ld h, a                                          ; $4edc: $67
	ld [hl], a                                       ; $4edd: $77
	ld bc, $6735                                     ; $4ede: $01 $35 $67

jr_007_4ee1:
	sbc e                                            ; $4ee1: $9b
	call rIE                                       ; $4ee2: $cd $ff $ff
	call c, Call_007_74a8                            ; $4ee5: $dc $a8 $74
	ld [hl-], a                                      ; $4ee8: $32
	ld b, l                                          ; $4ee9: $45
	ld h, a                                          ; $4eea: $67
	halt                                             ; $4eeb: $76
	ld d, h                                          ; $4eec: $54
	ld hl, $97ba                                     ; $4eed: $21 $ba $97
	ld h, l                                          ; $4ef0: $65
	ld [hl-], a                                      ; $4ef1: $32
	inc de                                           ; $4ef2: $13
	ld h, a                                          ; $4ef3: $67
	ld [hl], l                                       ; $4ef4: $75
	ld sp, $2301                                     ; $4ef5: $31 $01 $23
	ld d, [hl]                                       ; $4ef8: $56
	ld a, c                                          ; $4ef9: $79
	xor e                                            ; $4efa: $ab
	sbc $ff                                          ; $4efb: $de $ff
	db $ed                                           ; $4efd: $ed
	ld bc, $6734                                     ; $4efe: $01 $34 $67
	sbc d                                            ; $4f01: $9a
	sla [hl]                                         ; $4f02: $cb $26
	xor c                                            ; $4f04: $a9
	sbc b                                            ; $4f05: $98
	adc c                                            ; $4f06: $89
	sbc d                                            ; $4f07: $9a
	xor e                                            ; $4f08: $ab
	cp h                                             ; $4f09: $bc
	res 3, b                                         ; $4f0a: $cb $98
	ld h, l                                          ; $4f0c: $65
	ld [hl-], a                                      ; $4f0d: $32
	inc b                                            ; $4f0e: $04
	ld h, a                                          ; $4f0f: $67
	add a                                            ; $4f10: $87
	ld l, e                                          ; $4f11: $6b
	db $fd                                           ; $4f12: $fd
	bit 0, b                                         ; $4f13: $cb $40
	ld [hl], $78                                     ; $4f15: $36 $78
	sbc d                                            ; $4f17: $9a
	cp h                                             ; $4f18: $bc
	ld hl, sp+$64                                    ; $4f19: $f8 $64
	ld [hl-], a                                      ; $4f1b: $32
	db $10                                           ; $4f1c: $10
	ld b, d                                          ; $4f1d: $42
	ld b, $9c                                        ; $4f1e: $06 $9c
	cp $b8                                           ; $4f20: $fe $b8
	ld d, [hl]                                       ; $4f22: $56
	ld a, c                                          ; $4f23: $79
	xor e                                            ; $4f24: $ab
	xor c                                            ; $4f25: $a9
	ld a, c                                          ; $4f26: $79
	xor e                                            ; $4f27: $ab
	jp z, Jump_007_6987                              ; $4f28: $ca $87 $69

	cp l                                             ; $4f2b: $bd
	db $eb                                           ; $4f2c: $eb
	add [hl]                                         ; $4f2d: $86
	cp l                                             ; $4f2e: $bd
	db $db                                           ; $4f2f: $db
	sbc b                                            ; $4f30: $98
	sbc h                                            ; $4f31: $9c
	rst AddAOntoHL                                          ; $4f32: $ef
	db $eb                                           ; $4f33: $eb
	halt                                             ; $4f34: $76
	ld l, b                                          ; $4f35: $68
	xor d                                            ; $4f36: $aa
	sub h                                            ; $4f37: $94
	ld hl, $8824                                     ; $4f38: $21 $24 $88
	ld d, e                                          ; $4f3b: $53
	dec [hl]                                         ; $4f3c: $35
	adc e                                            ; $4f3d: $8b
	inc d                                            ; $4f3e: $14
	ld a, d                                          ; $4f3f: $7a
	db $fd                                           ; $4f40: $fd
	jp z, Jump_007_6587                              ; $4f41: $ca $87 $65

	ld b, l                                          ; $4f44: $45
	ld a, c                                          ; $4f45: $79
	cp l                                             ; $4f46: $bd
	db $fd                                           ; $4f47: $fd
	cp c                                             ; $4f48: $b9
	ld [hl], l                                       ; $4f49: $75
	ld [hl-], a                                      ; $4f4a: $32

jr_007_4f4b:
	inc d                                            ; $4f4b: $14
	ld [hl], h                                       ; $4f4c: $74
	jr nz, jr_007_4f4b                               ; $4f4d: $20 $fc

	add e                                            ; $4f4f: $83
	dec b                                            ; $4f50: $05
	ld sp, $b90d                                     ; $4f51: $31 $0d $b9
	ld d, e                                          ; $4f54: $53
	db $10                                           ; $4f55: $10
	ld bc, $0121                                     ; $4f56: $01 $21 $01
	ld d, d                                          ; $4f59: $52
	rrca                                             ; $4f5a: $0f
	dec c                                            ; $4f5b: $0d
	ld h, h                                          ; $4f5c: $64
	jr nz, jr_007_4f63                               ; $4f5d: $20 $04

	adc a                                            ; $4f5f: $8f
	rst SubAFromHL                                          ; $4f60: $d7
	inc d                                            ; $4f61: $14
	sbc e                                            ; $4f62: $9b

jr_007_4f63:
	add e                                            ; $4f63: $83
	ld [bc], a                                       ; $4f64: $02
	ld l, c                                          ; $4f65: $69
	ld b, a                                          ; $4f66: $47
	adc d                                            ; $4f67: $8a
	ld h, e                                          ; $4f68: $63
	dec b                                            ; $4f69: $05
	ld a, c                                          ; $4f6a: $79
	ld d, e                                          ; $4f6b: $53
	ret                                              ; $4f6c: $c9


	ld h, d                                          ; $4f6d: $62
	cp l                                             ; $4f6e: $bd
	db $db                                           ; $4f6f: $db
	sbc b                                            ; $4f70: $98
	sbc h                                            ; $4f71: $9c
	rst AddAOntoHL                                          ; $4f72: $ef
	db $eb                                           ; $4f73: $eb
	halt                                             ; $4f74: $76
	ld l, b                                          ; $4f75: $68

Call_007_4f76:
	xor d                                            ; $4f76: $aa
	sub h                                            ; $4f77: $94
	ld hl, $fd49                                     ; $4f78: $21 $49 $fd
	cp c                                             ; $4f7b: $b9
	dec [hl]                                         ; $4f7c: $35
	adc e                                            ; $4f7d: $8b
	inc b                                            ; $4f7e: $04
	ld h, a                                          ; $4f7f: $67
	add a                                            ; $4f80: $87
	ld l, e                                          ; $4f81: $6b
	db $fd                                           ; $4f82: $fd
	bit 0, b                                         ; $4f83: $cb $40
	ld [hl], $78                                     ; $4f85: $36 $78
	sbc d                                            ; $4f87: $9a
	cp h                                             ; $4f88: $bc
	ld hl, sp+$64                                    ; $4f89: $f8 $64
	ld [hl-], a                                      ; $4f8b: $32
	db $10                                           ; $4f8c: $10
	ld b, d                                          ; $4f8d: $42
	xor c                                            ; $4f8e: $a9
	halt                                             ; $4f8f: $76
	ld d, e                                          ; $4f90: $53
	ld hl, $1200                                     ; $4f91: $21 $00 $12
	inc sp                                           ; $4f94: $33
	ld hl, $1200                                     ; $4f95: $21 $00 $12
	dec [hl]                                         ; $4f98: $35
	ld h, a                                          ; $4f99: $67
	sbc d                                            ; $4f9a: $9a
	xor d                                            ; $4f9b: $aa
	xor d                                            ; $4f9c: $aa
	xor d                                            ; $4f9d: $aa
	cp l                                             ; $4f9e: $bd
	db $db                                           ; $4f9f: $db
	sbc b                                            ; $4fa0: $98
	sbc h                                            ; $4fa1: $9c
	rst AddAOntoHL                                          ; $4fa2: $ef
	db $eb                                           ; $4fa3: $eb
	halt                                             ; $4fa4: $76
	ld l, b                                          ; $4fa5: $68
	xor d                                            ; $4fa6: $aa
	sub h                                            ; $4fa7: $94
	ld hl, $8824                                     ; $4fa8: $21 $24 $88
	ld d, e                                          ; $4fab: $53
	dec [hl]                                         ; $4fac: $35
	adc e                                            ; $4fad: $8b
	cp l                                             ; $4fae: $bd
	db $db                                           ; $4faf: $db
	sbc b                                            ; $4fb0: $98
	sbc h                                            ; $4fb1: $9c
	rst AddAOntoHL                                          ; $4fb2: $ef
	db $eb                                           ; $4fb3: $eb
	halt                                             ; $4fb4: $76
	ld l, b                                          ; $4fb5: $68
	xor d                                            ; $4fb6: $aa
	sub h                                            ; $4fb7: $94
	ld hl, $fd49                                     ; $4fb8: $21 $49 $fd
	cp c                                             ; $4fbb: $b9
	dec [hl]                                         ; $4fbc: $35
	adc e                                            ; $4fbd: $8b
	xor $ed                                          ; $4fbe: $ee $ed
	db $dd                                           ; $4fc0: $dd
	call z, $bbcb                                    ; $4fc1: $cc $cb $bb
	xor d                                            ; $4fc4: $aa
	and h                                            ; $4fc5: $a4
	ld b, h                                          ; $4fc6: $44
	ld b, h                                          ; $4fc7: $44
	ld d, l                                          ; $4fc8: $55
	ld d, [hl]                                       ; $4fc9: $56
	ld h, [hl]                                       ; $4fca: $66
	ld [hl], a                                       ; $4fcb: $77
	ld a, b                                          ; $4fcc: $78
	adc b                                            ; $4fcd: $88
	call z, $cccc                                    ; $4fce: $cc $cc $cc
	call z, $cccc                                    ; $4fd1: $cc $cc $cc
	call z, $33cc                                    ; $4fd4: $cc $cc $33
	inc sp                                           ; $4fd7: $33
	inc sp                                           ; $4fd8: $33
	inc sp                                           ; $4fd9: $33
	inc sp                                           ; $4fda: $33
	inc sp                                           ; $4fdb: $33
	inc sp                                           ; $4fdc: $33
	inc sp                                           ; $4fdd: $33
	rst $38                                          ; $4fde: $ff
	rst $38                                          ; $4fdf: $ff
	rst $38                                          ; $4fe0: $ff
	rst $38                                          ; $4fe1: $ff
	nop                                              ; $4fe2: $00
	nop                                              ; $4fe3: $00
	nop                                              ; $4fe4: $00
	nop                                              ; $4fe5: $00
	rst $38                                          ; $4fe6: $ff
	rst $38                                          ; $4fe7: $ff
	rst $38                                          ; $4fe8: $ff
	rst $38                                          ; $4fe9: $ff
	nop                                              ; $4fea: $00
	nop                                              ; $4feb: $00
	nop                                              ; $4fec: $00
	nop                                              ; $4fed: $00
	db $ed                                           ; $4fee: $ed
	cp c                                             ; $4fef: $b9
	ld h, h                                          ; $4ff0: $64
	ld [hl-], a                                      ; $4ff1: $32
	ld hl, $1111                                     ; $4ff2: $21 $11 $11
	ld [hl+], a                                      ; $4ff5: $22
	inc sp                                           ; $4ff6: $33
	ld b, h                                          ; $4ff7: $44
	ld d, [hl]                                       ; $4ff8: $56
	ld h, a                                          ; $4ff9: $67
	sbc d                                            ; $4ffa: $9a
	call $ffef                                       ; $4ffb: $cd $ef $ff
	cp $cc                                           ; $4ffe: $fe $cc
	cp c                                             ; $5000: $b9
	adc b                                            ; $5001: $88
	halt                                             ; $5002: $76
	ld d, h                                          ; $5003: $54
	ld [hl-], a                                      ; $5004: $32
	ld de, $ac17                                     ; $5005: $11 $17 $ac
	db $db                                           ; $5008: $db
	cp d                                             ; $5009: $ba
	sbc b                                            ; $500a: $98
	xor e                                            ; $500b: $ab
	call $88dd                                       ; $500c: $cd $dd $88
	adc $ec                                          ; $500f: $ce $ec
	adc b                                            ; $5011: $88
	inc sp                                           ; $5012: $33
	inc sp                                           ; $5013: $33
	inc sp                                           ; $5014: $33
	inc sp                                           ; $5015: $33
	adc b                                            ; $5016: $88
	adc $ec                                          ; $5017: $ce $ec
	adc b                                            ; $5019: $88
	inc sp                                           ; $501a: $33
	inc sp                                           ; $501b: $33
	inc sp                                           ; $501c: $33
	inc sp                                           ; $501d: $33
	db $dd                                           ; $501e: $dd
	db $dd                                           ; $501f: $dd
	db $dd                                           ; $5020: $dd
	db $dd                                           ; $5021: $dd
	ld [hl+], a                                      ; $5022: $22
	ld [hl+], a                                      ; $5023: $22
	ld [hl+], a                                      ; $5024: $22
	ld [hl+], a                                      ; $5025: $22
	db $dd                                           ; $5026: $dd
	db $dd                                           ; $5027: $dd
	db $dd                                           ; $5028: $dd
	db $dd                                           ; $5029: $dd
	ld [hl+], a                                      ; $502a: $22
	ld [hl+], a                                      ; $502b: $22
	ld [hl+], a                                      ; $502c: $22
	ld [hl+], a                                      ; $502d: $22
	nop                                              ; $502e: $00
	ld [de], a                                       ; $502f: $12
	inc [hl]                                         ; $5030: $34
	ld d, [hl]                                       ; $5031: $56
	ld a, b                                          ; $5032: $78
	sbc d                                            ; $5033: $9a
	cp h                                             ; $5034: $bc
	sbc $00                                          ; $5035: $de $00
	ld [de], a                                       ; $5037: $12
	inc [hl]                                         ; $5038: $34
	ld d, [hl]                                       ; $5039: $56
	ld a, b                                          ; $503a: $78
	sbc d                                            ; $503b: $9a
	cp h                                             ; $503c: $bc
	sbc $dd                                          ; $503d: $de $dd
	db $dd                                           ; $503f: $dd
	db $dd                                           ; $5040: $dd
	db $dd                                           ; $5041: $dd
	ld d, l                                          ; $5042: $55
	ld d, l                                          ; $5043: $55
	ld d, l                                          ; $5044: $55
	ld d, l                                          ; $5045: $55
	db $dd                                           ; $5046: $dd
	db $dd                                           ; $5047: $dd
	db $dd                                           ; $5048: $dd
	db $dd                                           ; $5049: $dd
	ld d, l                                          ; $504a: $55
	ld d, l                                          ; $504b: $55
	ld d, l                                          ; $504c: $55
	ld d, l                                          ; $504d: $55
	call z, $cccc                                    ; $504e: $cc $cc $cc
	call z, $0d00                                    ; $5051: $cc $00 $0d
	nop                                              ; $5054: $00
	nop                                              ; $5055: $00
	call z, $cccc                                    ; $5056: $cc $cc $cc
	call z, $0d00                                    ; $5059: $cc $00 $0d
	nop                                              ; $505c: $00
	nop                                              ; $505d: $00
	cp e                                             ; $505e: $bb
	cp e                                             ; $505f: $bb
	cp e                                             ; $5060: $bb
	cp e                                             ; $5061: $bb
	ld h, [hl]                                       ; $5062: $66
	ld h, [hl]                                       ; $5063: $66
	ld h, [hl]                                       ; $5064: $66
	ld h, [hl]                                       ; $5065: $66
	cp e                                             ; $5066: $bb
	cp e                                             ; $5067: $bb
	cp e                                             ; $5068: $bb
	cp e                                             ; $5069: $bb
	ld h, [hl]                                       ; $506a: $66
	ld h, [hl]                                       ; $506b: $66
	ld h, [hl]                                       ; $506c: $66
	ld h, [hl]                                       ; $506d: $66
	cp e                                             ; $506e: $bb
	cp e                                             ; $506f: $bb
	cp e                                             ; $5070: $bb
	cp e                                             ; $5071: $bb
	nop                                              ; $5072: $00
	rlca                                             ; $5073: $07
	nop                                              ; $5074: $00
	nop                                              ; $5075: $00
	cp e                                             ; $5076: $bb
	cp e                                             ; $5077: $bb
	cp e                                             ; $5078: $bb
	cp e                                             ; $5079: $bb
	nop                                              ; $507a: $00
	rlca                                             ; $507b: $07
	nop                                              ; $507c: $00
	nop                                              ; $507d: $00
	rst $38                                          ; $507e: $ff
	rst $38                                          ; $507f: $ff
	rst $38                                          ; $5080: $ff
	rst $38                                          ; $5081: $ff
	rst $38                                          ; $5082: $ff
	rst $38                                          ; $5083: $ff
	rst $38                                          ; $5084: $ff
	rst $38                                          ; $5085: $ff
	ldh a, [rP1]                                     ; $5086: $f0 $00
	nop                                              ; $5088: $00
	nop                                              ; $5089: $00
	nop                                              ; $508a: $00
	nop                                              ; $508b: $00
	nop                                              ; $508c: $00
	nop                                              ; $508d: $00
	rst $38                                          ; $508e: $ff
	rst $38                                          ; $508f: $ff
	rst $38                                          ; $5090: $ff
	rst $38                                          ; $5091: $ff
	nop                                              ; $5092: $00
	nop                                              ; $5093: $00
	nop                                              ; $5094: $00
	nop                                              ; $5095: $00
	nop                                              ; $5096: $00
	nop                                              ; $5097: $00
	nop                                              ; $5098: $00
	nop                                              ; $5099: $00
	nop                                              ; $509a: $00
	nop                                              ; $509b: $00
	nop                                              ; $509c: $00
	nop                                              ; $509d: $00
	adc $ef                                          ; $509e: $ce $ef
	rst $38                                          ; $50a0: $ff
	rst $38                                          ; $50a1: $ff
	rst $38                                          ; $50a2: $ff
	rst $38                                          ; $50a3: $ff
	xor $c4                                          ; $50a4: $ee $c4
	ld de, $0000                                     ; $50a6: $11 $00 $00
	nop                                              ; $50a9: $00
	nop                                              ; $50aa: $00
	nop                                              ; $50ab: $00
	ld bc, $ff13                                     ; $50ac: $01 $13 $ff
	rst $38                                          ; $50af: $ff
	nop                                              ; $50b0: $00
	nop                                              ; $50b1: $00
	nop                                              ; $50b2: $00
	nop                                              ; $50b3: $00
	nop                                              ; $50b4: $00
	nop                                              ; $50b5: $00
	nop                                              ; $50b6: $00
	nop                                              ; $50b7: $00
	nop                                              ; $50b8: $00
	nop                                              ; $50b9: $00
	nop                                              ; $50ba: $00
	nop                                              ; $50bb: $00
	nop                                              ; $50bc: $00
	nop                                              ; $50bd: $00
	adc e                                            ; $50be: $8b
	db $dd                                           ; $50bf: $dd
	xor $ff                                          ; $50c0: $ee $ff
	rst $38                                          ; $50c2: $ff
	xor $dd                                          ; $50c3: $ee $dd
	cp b                                             ; $50c5: $b8
	ld h, h                                          ; $50c6: $64
	ld [hl+], a                                      ; $50c7: $22
	ld de, $0000                                     ; $50c8: $11 $00 $00
	ld de, $4622                                     ; $50cb: $11 $22 $46
	ld hl, sp+$3f                                    ; $50ce: $f8 $3f
	inc c                                            ; $50d0: $0c
	cp c                                             ; $50d1: $b9
	rst FarCall                                          ; $50d2: $f7
	rla                                              ; $50d3: $17
	rst $38                                          ; $50d4: $ff
	push hl                                          ; $50d5: $e5
	inc c                                            ; $50d6: $0c
	ld sp, hl                                        ; $50d7: $f9
	add b                                            ; $50d8: $80
	ld a, c                                          ; $50d9: $79
	rst $38                                          ; $50da: $ff
	sub d                                            ; $50db: $92
	set 6, c                                         ; $50dc: $cb $f1
	adc d                                            ; $50de: $8a
	adc $ff                                          ; $50df: $ce $ff
	rst $38                                          ; $50e1: $ff
	rst $38                                          ; $50e2: $ff
	xor $ed                                          ; $50e3: $ee $ed
	db $dd                                           ; $50e5: $dd
	call z, $aabb                                    ; $50e6: $cc $bb $aa
	sbc c                                            ; $50e9: $99
	add a                                            ; $50ea: $87
	halt                                             ; $50eb: $76
	ld d, h                                          ; $50ec: $54
	ld [hl-], a                                      ; $50ed: $32
	ld de, $3322                                     ; $50ee: $11 $22 $33
	ld b, h                                          ; $50f1: $44
	ld d, l                                          ; $50f2: $55
	ld h, [hl]                                       ; $50f3: $66
	ld [hl], a                                       ; $50f4: $77
	adc b                                            ; $50f5: $88
	sbc c                                            ; $50f6: $99
	xor d                                            ; $50f7: $aa
	xor e                                            ; $50f8: $ab
	cp h                                             ; $50f9: $bc
	call z, $eedd                                    ; $50fa: $cc $dd $ee
	rst $38                                          ; $50fd: $ff
	rst $38                                          ; $50fe: $ff
	cp d                                             ; $50ff: $ba
	sbc d                                            ; $5100: $9a
	xor d                                            ; $5101: $aa
	rst GetHLinHL                                          ; $5102: $cf
	call c, $a0a0                                    ; $5103: $dc $a0 $a0
	ld a, [bc]                                       ; $5106: $0a
	ld a, [bc]                                       ; $5107: $0a
	db $dd                                           ; $5108: $dd
	xor $ff                                          ; $5109: $ee $ff
	xor $ff                                          ; $510b: $ee $ff
	ldh [rAUD1ENV], a                                ; $510d: $e0 $12
	inc [hl]                                         ; $510f: $34
	ld d, [hl]                                       ; $5110: $56
	ld a, b                                          ; $5111: $78
	sbc d                                            ; $5112: $9a
	cp h                                             ; $5113: $bc
	sbc $fe                                          ; $5114: $de $fe
	call c, $98ba                                    ; $5116: $dc $ba $98
	halt                                             ; $5119: $76
	ld d, h                                          ; $511a: $54
	ld [hl-], a                                      ; $511b: $32
	stop                                             ; $511c: $10 $00
	inc de                                           ; $511e: $13
	ld d, a                                          ; $511f: $57
	xor h                                            ; $5120: $ac
	rst AddAOntoHL                                          ; $5121: $ef
	db $ec                                           ; $5122: $ec
	and a                                            ; $5123: $a7
	ld d, d                                          ; $5124: $52
	db $10                                           ; $5125: $10
	ld [de], a                                       ; $5126: $12
	ld d, a                                          ; $5127: $57
	sbc h                                            ; $5128: $9c
	rst AddAOntoHL                                          ; $5129: $ef
	db $ec                                           ; $512a: $ec
	sub a                                            ; $512b: $97
	ld d, e                                          ; $512c: $53
	db $10                                           ; $512d: $10
	inc d                                            ; $512e: $14
	ld a, c                                          ; $512f: $79
	xor e                                            ; $5130: $ab
	call $eede                                       ; $5131: $cd $de $ee
	rst AddAOntoHL                                          ; $5134: $ef
	rst $38                                          ; $5135: $ff
	cp $ee                                           ; $5136: $fe $ee
	db $dd                                           ; $5138: $dd
	call z, $97ba                                    ; $5139: $cc $ba $97
	ld d, e                                          ; $513c: $53
	db $10                                           ; $513d: $10
	xor $ee                                          ; $513e: $ee $ee
	xor $ee                                          ; $5140: $ee $ee
	xor $ee                                          ; $5142: $ee $ee
	xor $e1                                          ; $5144: $ee $e1
	ld de, $1111                                     ; $5146: $11 $11 $11
	ld de, $1111                                     ; $5149: $11 $11 $11
	ld de, $aa11                                     ; $514c: $11 $11 $aa
	xor c                                            ; $514f: $a9
	sbc b                                            ; $5150: $98
	adc b                                            ; $5151: $88
	ld [hl], a                                       ; $5152: $77
	ld [hl], a                                       ; $5153: $77
	ld h, [hl]                                       ; $5154: $66
	ld d, l                                          ; $5155: $55
	xor d                                            ; $5156: $aa
	xor d                                            ; $5157: $aa
	cp e                                             ; $5158: $bb
	cp h                                             ; $5159: $bc
	call z, $cdcc                                    ; $515a: $cc $cc $cd
	db $dd                                           ; $515d: $dd
	xor d                                            ; $515e: $aa
	sbc c                                            ; $515f: $99
	adc b                                            ; $5160: $88
	ld [hl], a                                       ; $5161: $77
	ld h, [hl]                                       ; $5162: $66
	ld d, l                                          ; $5163: $55
	ld b, h                                          ; $5164: $44
	ld b, h                                          ; $5165: $44
	ld b, [hl]                                       ; $5166: $46
	ld h, a                                          ; $5167: $67
	ld a, b                                          ; $5168: $78
	adc c                                            ; $5169: $89
	sbc d                                            ; $516a: $9a
	xor e                                            ; $516b: $ab
	cp h                                             ; $516c: $bc
	call z, $cccc                                    ; $516d: $cc $cc $cc
	call z, $cccc                                    ; $5170: $cc $cc $cc
	call z, $cccc                                    ; $5173: $cc $cc $cc
	ld [hl], d                                       ; $5176: $72
	ld [hl+], a                                      ; $5177: $22
	ld [hl+], a                                      ; $5178: $22
	ld [hl+], a                                      ; $5179: $22
	ld [hl+], a                                      ; $517a: $22
	ld [hl+], a                                      ; $517b: $22
	ld [hl+], a                                      ; $517c: $22
	ld [hl+], a                                      ; $517d: $22
	ld l, b                                          ; $517e: $68
	add a                                            ; $517f: $87
	ld h, h                                          ; $5180: $64
	ld h, h                                          ; $5181: $64
	ld l, b                                          ; $5182: $68
	xor e                                            ; $5183: $ab
	sbc $ff                                          ; $5184: $de $ff
	db $ed                                           ; $5186: $ed
	res 5, c                                         ; $5187: $cb $a9
	add a                                            ; $5189: $87
	ld h, l                                          ; $518a: $65
	ld b, h                                          ; $518b: $44
	ld [hl-], a                                      ; $518c: $32
	ld hl, $0020                                     ; $518d: $21 $20 $00
	sub d                                            ; $5190: $92
	nop                                              ; $5191: $00
	cp $00                                           ; $5192: $fe $00
	ld h, h                                          ; $5194: $64
	ld bc, $01c4                                     ; $5195: $01 $c4 $01
	ld e, $02                                        ; $5198: $1e $02
	ld [hl], e                                       ; $519a: $73
	ld [bc], a                                       ; $519b: $02
	jp $0f02                                         ; $519c: $c3 $02 $0f


	inc bc                                           ; $519f: $03
	ld d, a                                          ; $51a0: $57
	inc bc                                           ; $51a1: $03
	sbc d                                            ; $51a2: $9a
	inc bc                                           ; $51a3: $03
	reti                                             ; $51a4: $d9


	inc bc                                           ; $51a5: $03
	dec d                                            ; $51a6: $15
	inc b                                            ; $51a7: $04
	ld c, l                                          ; $51a8: $4d
	inc b                                            ; $51a9: $04
	add e                                            ; $51aa: $83
	inc b                                            ; $51ab: $04
	or l                                             ; $51ac: $b5
	inc b                                            ; $51ad: $04
	db $e4                                           ; $51ae: $e4
	inc b                                            ; $51af: $04
	ld de, $3b05                                     ; $51b0: $11 $05 $3b
	dec b                                            ; $51b3: $05
	ld h, e                                          ; $51b4: $63
	dec b                                            ; $51b5: $05
	adc b                                            ; $51b6: $88
	dec b                                            ; $51b7: $05
	xor h                                            ; $51b8: $ac
	dec b                                            ; $51b9: $05
	call $ed05                                       ; $51ba: $cd $05 $ed
	dec b                                            ; $51bd: $05
	dec bc                                           ; $51be: $0b
	ld b, $27                                        ; $51bf: $06 $27
	ld b, $42                                        ; $51c1: $06 $42
	ld b, $5b                                        ; $51c3: $06 $5b
	ld b, $73                                        ; $51c5: $06 $73
	ld b, $8a                                        ; $51c7: $06 $8a
	ld b, $9f                                        ; $51c9: $06 $9f
	ld b, $b3                                        ; $51cb: $06 $b3
	ld b, $c6                                        ; $51cd: $06 $c6
	ld b, $d8                                        ; $51cf: $06 $d8
	ld b, $e9                                        ; $51d1: $06 $e9
	ld b, $f8                                        ; $51d3: $06 $f8
	ld b, $07                                        ; $51d5: $06 $07
	rlca                                             ; $51d7: $07
	dec d                                            ; $51d8: $15
	rlca                                             ; $51d9: $07
	ld [hl+], a                                      ; $51da: $22
	rlca                                             ; $51db: $07
	cpl                                              ; $51dc: $2f
	rlca                                             ; $51dd: $07
	ld a, [hl-]                                      ; $51de: $3a
	rlca                                             ; $51df: $07
	ld b, l                                          ; $51e0: $45
	rlca                                             ; $51e1: $07
	ld d, b                                          ; $51e2: $50
	rlca                                             ; $51e3: $07
	ld e, d                                          ; $51e4: $5a
	rlca                                             ; $51e5: $07
	ld h, e                                          ; $51e6: $63
	rlca                                             ; $51e7: $07
	ld l, h                                          ; $51e8: $6c
	rlca                                             ; $51e9: $07
	ld [hl], h                                       ; $51ea: $74
	rlca                                             ; $51eb: $07
	ld a, h                                          ; $51ec: $7c
	rlca                                             ; $51ed: $07
	add h                                            ; $51ee: $84
	rlca                                             ; $51ef: $07
	adc e                                            ; $51f0: $8b
	rlca                                             ; $51f1: $07
	sub c                                            ; $51f2: $91
	rlca                                             ; $51f3: $07
	sub a                                            ; $51f4: $97
	rlca                                             ; $51f5: $07
	sbc l                                            ; $51f6: $9d
	rlca                                             ; $51f7: $07
	and e                                            ; $51f8: $a3
	rlca                                             ; $51f9: $07
	xor c                                            ; $51fa: $a9
	rlca                                             ; $51fb: $07
	xor l                                            ; $51fc: $ad
	rlca                                             ; $51fd: $07
	or d                                             ; $51fe: $b2
	rlca                                             ; $51ff: $07
	or [hl]                                          ; $5200: $b6
	rlca                                             ; $5201: $07
	cp d                                             ; $5202: $ba
	rlca                                             ; $5203: $07
	cp [hl]                                          ; $5204: $be
	rlca                                             ; $5205: $07
	jp nz, $c407                                     ; $5206: $c2 $07 $c4

	rlca                                             ; $5209: $07
	ret z                                            ; $520a: $c8

	rlca                                             ; $520b: $07
	rlc a                                            ; $520c: $cb $07
	adc $07                                          ; $520e: $ce $07
	pop de                                           ; $5210: $d1
	rlca                                             ; $5211: $07
	db $d3                                           ; $5212: $d3
	rlca                                             ; $5213: $07
	sub $07                                          ; $5214: $d6 $07
	ret c                                            ; $5216: $d8

	rlca                                             ; $5217: $07
	jp c, $dc07                                      ; $5218: $da $07 $dc

	rlca                                             ; $521b: $07
	sbc $07                                          ; $521c: $de $07
	ldh [rTAC], a                                    ; $521e: $e0 $07
	ldh [c], a                                       ; $5220: $e2
	rlca                                             ; $5221: $07
	db $e4                                           ; $5222: $e4
	rlca                                             ; $5223: $07
	push hl                                          ; $5224: $e5
	rlca                                             ; $5225: $07
	rst SubAFromBC                                          ; $5226: $e7
	rlca                                             ; $5227: $07
	add sp, $07                                      ; $5228: $e8 $07
	jp hl                                            ; $522a: $e9


	rlca                                             ; $522b: $07
	db $eb                                           ; $522c: $eb
	rlca                                             ; $522d: $07
	db $ec                                           ; $522e: $ec
	rlca                                             ; $522f: $07
	db $ed                                           ; $5230: $ed
	rlca                                             ; $5231: $07
	xor $07                                          ; $5232: $ee $07
	rst AddAOntoHL                                          ; $5234: $ef
	rlca                                             ; $5235: $07
	ldh a, [rTAC]                                    ; $5236: $f0 $07
	pop af                                           ; $5238: $f1
	rlca                                             ; $5239: $07
	ldh a, [c]                                       ; $523a: $f2
	rlca                                             ; $523b: $07
	ldh a, [c]                                       ; $523c: $f2
	rlca                                             ; $523d: $07
	di                                               ; $523e: $f3
	rlca                                             ; $523f: $07
	db $f4                                           ; $5240: $f4
	rlca                                             ; $5241: $07
	db $f4                                           ; $5242: $f4
	rlca                                             ; $5243: $07
	push af                                          ; $5244: $f5
	rlca                                             ; $5245: $07
	or $07                                           ; $5246: $f6 $07
	or $07                                           ; $5248: $f6 $07
	rst FarCall                                          ; $524a: $f7
	rlca                                             ; $524b: $07
	rst FarCall                                          ; $524c: $f7
	rlca                                             ; $524d: $07
	call nz, $d752                                   ; $524e: $c4 $52 $d7
	ld d, d                                          ; $5251: $52
	ld [$0152], a                                    ; $5252: $ea $52 $01
	ld d, e                                          ; $5255: $53
	dec l                                            ; $5256: $2d
	ld d, e                                          ; $5257: $53
	scf                                              ; $5258: $37
	ld d, e                                          ; $5259: $53
	ld d, [hl]                                       ; $525a: $56
	ld d, e                                          ; $525b: $53
	ld [hl], c                                       ; $525c: $71
	ld d, e                                          ; $525d: $53
	and c                                            ; $525e: $a1
	ld d, e                                          ; $525f: $53
	xor e                                            ; $5260: $ab
	ld d, e                                          ; $5261: $53
	jp z, $e253                                      ; $5262: $ca $53 $e2

	ld d, e                                          ; $5265: $53
	push af                                          ; $5266: $f5
	ld d, e                                          ; $5267: $53
	inc b                                            ; $5268: $04
	ld d, h                                          ; $5269: $54
	cpl                                              ; $526a: $2f
	ld d, h                                          ; $526b: $54
	add hl, sp                                       ; $526c: $39
	ld d, h                                          ; $526d: $54
	ld c, h                                          ; $526e: $4c
	ld d, h                                          ; $526f: $54
	ld e, a                                          ; $5270: $5f
	ld d, h                                          ; $5271: $54
	ld l, d                                          ; $5272: $6a
	ld d, h                                          ; $5273: $54
	adc h                                            ; $5274: $8c
	ld d, h                                          ; $5275: $54
	jp $f954                                         ; $5276: $c3 $54 $f9


	ld d, h                                          ; $5279: $54
	rst $38                                          ; $527a: $ff
	ld d, h                                          ; $527b: $54
	ld c, [hl]                                       ; $527c: $4e
	ld d, l                                          ; $527d: $55
	ld l, b                                          ; $527e: $68
	ld d, l                                          ; $527f: $55
	ld [hl], h                                       ; $5280: $74
	ld d, l                                          ; $5281: $55
	sbc d                                            ; $5282: $9a
	ld d, l                                          ; $5283: $55
	ret z                                            ; $5284: $c8

	ld d, l                                          ; $5285: $55
	rst AddAOntoHL                                          ; $5286: $ef
	ld d, l                                          ; $5287: $55
	inc bc                                           ; $5288: $03
	ld d, [hl]                                       ; $5289: $56
	rrca                                             ; $528a: $0f
	ld d, [hl]                                       ; $528b: $56
	jr nz, jr_007_52e4                               ; $528c: $20 $56

	add hl, sp                                       ; $528e: $39
	ld d, [hl]                                       ; $528f: $56
	ld a, [bc]                                       ; $5290: $0a
	ld d, a                                          ; $5291: $57
	inc d                                            ; $5292: $14
	ld d, a                                          ; $5293: $57
	ld d, c                                          ; $5294: $51
	ld d, a                                          ; $5295: $57
	ld l, [hl]                                       ; $5296: $6e
	ld d, a                                          ; $5297: $57
	sub e                                            ; $5298: $93
	ld d, a                                          ; $5299: $57
	xor e                                            ; $529a: $ab
	ld d, a                                          ; $529b: $57
	rst AddAOntoHL                                          ; $529c: $ef
	ld d, a                                          ; $529d: $57
	cp a                                             ; $529e: $bf
	ld e, b                                          ; $529f: $58
	dec b                                            ; $52a0: $05
	ld e, c                                          ; $52a1: $59
	ld [hl+], a                                      ; $52a2: $22
	ld e, c                                          ; $52a3: $59
	ld c, [hl]                                       ; $52a4: $4e
	ld e, c                                          ; $52a5: $59
	ld h, h                                          ; $52a6: $64
	ld e, c                                          ; $52a7: $59
	ld [hl], d                                       ; $52a8: $72
	ld e, c                                          ; $52a9: $59
	call $1259                                       ; $52aa: $cd $59 $12
	ld e, d                                          ; $52ad: $5a
	ld b, e                                          ; $52ae: $43
	ld e, d                                          ; $52af: $5a
	ld d, c                                          ; $52b0: $51
	ld e, d                                          ; $52b1: $5a
	sub b                                            ; $52b2: $90
	ld e, d                                          ; $52b3: $5a
	ld a, [de]                                       ; $52b4: $1a
	ld e, e                                          ; $52b5: $5b
	adc c                                            ; $52b6: $89
	ld e, e                                          ; $52b7: $5b
	xor b                                            ; $52b8: $a8
	ld e, e                                          ; $52b9: $5b
	db $fc                                           ; $52ba: $fc
	ld e, e                                          ; $52bb: $5b
	daa                                              ; $52bc: $27
	ld e, h                                          ; $52bd: $5c
	ld sp, $555c                                     ; $52be: $31 $5c $55
	ld e, h                                          ; $52c1: $5c
	ld a, c                                          ; $52c2: $79
	ld e, h                                          ; $52c3: $5c
	cp $10                                           ; $52c4: $fe $10
	ld de, $1322                                     ; $52c6: $11 $22 $13
	inc [hl]                                         ; $52c9: $34
	inc de                                           ; $52ca: $13
	ld [hl+], a                                      ; $52cb: $22
	ld de, $1910                                     ; $52cc: $11 $10 $19
	ld a, [hl+]                                      ; $52cf: $2a
	dec de                                           ; $52d0: $1b
	inc a                                            ; $52d1: $3c
	dec de                                           ; $52d2: $1b
	ld a, [hl+]                                      ; $52d3: $2a
	add hl, de                                       ; $52d4: $19
	db $10                                           ; $52d5: $10
	cp $fe                                           ; $52d6: $fe $fe
	db $10                                           ; $52d8: $10
	ld de, $1312                                     ; $52d9: $11 $12 $13
	inc d                                            ; $52dc: $14
	inc de                                           ; $52dd: $13
	ld [de], a                                       ; $52de: $12
	ld de, $1910                                     ; $52df: $11 $10 $19
	ld a, [de]                                       ; $52e2: $1a
	dec de                                           ; $52e3: $1b

jr_007_52e4:
	inc e                                            ; $52e4: $1c
	dec de                                           ; $52e5: $1b
	ld a, [de]                                       ; $52e6: $1a
	add hl, de                                       ; $52e7: $19
	db $10                                           ; $52e8: $10
	cp $02                                           ; $52e9: $fe $02
	adc a                                            ; $52eb: $8f
	ld [bc], a                                       ; $52ec: $02
	adc [hl]                                         ; $52ed: $8e
	ld bc, $018d                                     ; $52ee: $01 $8d $01
	adc h                                            ; $52f1: $8c
	ld bc, $018b                                     ; $52f2: $01 $8b $01
	adc d                                            ; $52f5: $8a
	ld bc, $0189                                     ; $52f6: $01 $89 $01
	adc b                                            ; $52f9: $88
	rra                                              ; $52fa: $1f
	dec e                                            ; $52fb: $1d
	dec de                                           ; $52fc: $1b
	ld a, [de]                                       ; $52fd: $1a
	add hl, de                                       ; $52fe: $19
	jr nz, @+$01                                     ; $52ff: $20 $ff

	ld [bc], a                                       ; $5301: $02
	adc a                                            ; $5302: $8f
	ld [bc], a                                       ; $5303: $02
	adc [hl]                                         ; $5304: $8e
	ld bc, $018d                                     ; $5305: $01 $8d $01
	adc h                                            ; $5308: $8c
	ld bc, $018b                                     ; $5309: $01 $8b $01
	adc d                                            ; $530c: $8a
	ld bc, $0189                                     ; $530d: $01 $89 $01
	adc b                                            ; $5310: $88
	rra                                              ; $5311: $1f
	dec e                                            ; $5312: $1d
	dec de                                           ; $5313: $1b
	ld a, [de]                                       ; $5314: $1a
	add hl, de                                       ; $5315: $19
	ldh [$e0], a                                     ; $5316: $e0 $e0
	ldh [$e0], a                                     ; $5318: $e0 $e0
	ld [hl], b                                       ; $531a: $70
	cp $11                                           ; $531b: $fe $11
	ld [hl+], a                                      ; $531d: $22
	inc de                                           ; $531e: $13
	inc [hl]                                         ; $531f: $34
	inc de                                           ; $5320: $13
	ld [hl+], a                                      ; $5321: $22
	ld de, $1910                                     ; $5322: $11 $10 $19
	ld a, [hl+]                                      ; $5325: $2a
	dec de                                           ; $5326: $1b
	inc a                                            ; $5327: $3c
	dec de                                           ; $5328: $1b
	ld a, [hl+]                                      ; $5329: $2a
	add hl, de                                       ; $532a: $19
	db $10                                           ; $532b: $10
	cp $01                                           ; $532c: $fe $01
	adc b                                            ; $532e: $88
	ld e, $1d                                        ; $532f: $1e $1d
	inc e                                            ; $5331: $1c
	dec de                                           ; $5332: $1b
	ld a, [de]                                       ; $5333: $1a
	add hl, de                                       ; $5334: $19
	jr nz, @+$01                                     ; $5335: $20 $ff

	ld bc, $1e88                                     ; $5337: $01 $88 $1e
	dec e                                            ; $533a: $1d
	inc e                                            ; $533b: $1c
	dec de                                           ; $533c: $1b
	ld a, [de]                                       ; $533d: $1a
	add hl, de                                       ; $533e: $19
	ldh [$e0], a                                     ; $533f: $e0 $e0
	ldh [$e0], a                                     ; $5341: $e0 $e0
	ld d, b                                          ; $5343: $50
	cp $11                                           ; $5344: $fe $11
	ld [hl+], a                                      ; $5346: $22
	inc de                                           ; $5347: $13
	inc [hl]                                         ; $5348: $34
	inc de                                           ; $5349: $13
	ld [hl+], a                                      ; $534a: $22
	ld de, $1910                                     ; $534b: $11 $10 $19
	ld a, [hl+]                                      ; $534e: $2a
	dec de                                           ; $534f: $1b
	inc a                                            ; $5350: $3c
	dec de                                           ; $5351: $1b
	ld a, [hl+]                                      ; $5352: $2a
	add hl, de                                       ; $5353: $19
	db $10                                           ; $5354: $10
	cp $06                                           ; $5355: $fe $06
	jr jr_007_535a                                   ; $5357: $18 $01

	rla                                              ; $5359: $17

jr_007_535a:
	ld bc, $0116                                     ; $535a: $01 $16 $01
	dec d                                            ; $535d: $15
	ld bc, $0114                                     ; $535e: $01 $14 $01
	ld [de], a                                       ; $5361: $12
	ld bc, $0110                                     ; $5362: $01 $10 $01
	ld c, $01                                        ; $5365: $0e $01
	inc c                                            ; $5367: $0c
	ld bc, $010a                                     ; $5368: $01 $0a $01
	ld [$1416], sp                                   ; $536b: $08 $16 $14
	ld [de], a                                       ; $536e: $12
	jr nz, @+$01                                     ; $536f: $20 $ff

	ld b, $18                                        ; $5371: $06 $18
	ld bc, $0117                                     ; $5373: $01 $17 $01
	ld d, $01                                        ; $5376: $16 $01
	dec d                                            ; $5378: $15
	ld bc, $0114                                     ; $5379: $01 $14 $01
	ld [de], a                                       ; $537c: $12
	ld bc, $0110                                     ; $537d: $01 $10 $01
	ld c, $01                                        ; $5380: $0e $01
	inc c                                            ; $5382: $0c
	ld bc, $010a                                     ; $5383: $01 $0a $01
	ld [$1416], sp                                   ; $5386: $08 $16 $14
	ld [de], a                                       ; $5389: $12
	ldh [$e0], a                                     ; $538a: $e0 $e0
	ldh [$e0], a                                     ; $538c: $e0 $e0
	ld [hl], b                                       ; $538e: $70
	cp $11                                           ; $538f: $fe $11
	ld [hl+], a                                      ; $5391: $22
	inc de                                           ; $5392: $13
	inc [hl]                                         ; $5393: $34
	inc de                                           ; $5394: $13
	ld [hl+], a                                      ; $5395: $22
	ld de, $1910                                     ; $5396: $11 $10 $19
	ld a, [hl+]                                      ; $5399: $2a
	dec de                                           ; $539a: $1b
	inc a                                            ; $539b: $3c
	dec de                                           ; $539c: $1b
	ld a, [hl+]                                      ; $539d: $2a
	add hl, de                                       ; $539e: $19
	db $10                                           ; $539f: $10
	cp $01                                           ; $53a0: $fe $01
	ld [$1516], sp                                   ; $53a2: $08 $16 $15
	inc d                                            ; $53a5: $14
	inc de                                           ; $53a6: $13
	ld [de], a                                       ; $53a7: $12
	ld de, $ff20                                     ; $53a8: $11 $20 $ff
	ld bc, $1608                                     ; $53ab: $01 $08 $16
	dec d                                            ; $53ae: $15
	inc d                                            ; $53af: $14
	inc de                                           ; $53b0: $13
	ld [de], a                                       ; $53b1: $12
	ld de, $e0e0                                     ; $53b2: $11 $e0 $e0
	ldh [$e0], a                                     ; $53b5: $e0 $e0
	ld d, b                                          ; $53b7: $50
	cp $11                                           ; $53b8: $fe $11
	ld [hl+], a                                      ; $53ba: $22
	inc de                                           ; $53bb: $13
	inc [hl]                                         ; $53bc: $34
	inc de                                           ; $53bd: $13
	ld [hl+], a                                      ; $53be: $22
	ld de, $1910                                     ; $53bf: $11 $10 $19
	ld a, [hl+]                                      ; $53c2: $2a
	dec de                                           ; $53c3: $1b
	inc a                                            ; $53c4: $3c
	dec de                                           ; $53c5: $1b
	ld a, [hl+]                                      ; $53c6: $2a
	add hl, de                                       ; $53c7: $19
	db $10                                           ; $53c8: $10
	cp $29                                           ; $53c9: $fe $29
	ld a, [hl+]                                      ; $53cb: $2a
	dec hl                                           ; $53cc: $2b
	ld a, [hl+]                                      ; $53cd: $2a
	add hl, hl                                       ; $53ce: $29

jr_007_53cf:
	jr nz, jr_007_53cf                               ; $53cf: $20 $fe

	ld de, $1322                                     ; $53d1: $11 $22 $13
	inc h                                            ; $53d4: $24
	inc de                                           ; $53d5: $13
	ld [hl+], a                                      ; $53d6: $22
	ld de, $1910                                     ; $53d7: $11 $10 $19
	ld a, [hl+]                                      ; $53da: $2a
	dec de                                           ; $53db: $1b
	inc a                                            ; $53dc: $3c
	dec de                                           ; $53dd: $1b
	ld a, [hl+]                                      ; $53de: $2a
	add hl, de                                       ; $53df: $19
	db $10                                           ; $53e0: $10
	cp $d0                                           ; $53e1: $fe $d0
	ld [de], a                                       ; $53e3: $12
	inc d                                            ; $53e4: $14
	ld d, $01                                        ; $53e5: $16 $01
	ld [$0a01], sp                                   ; $53e7: $08 $01 $0a
	ld b, $0c                                        ; $53ea: $06 $0c
	ld bc, $010a                                     ; $53ec: $01 $0a $01
	ld [$1416], sp                                   ; $53ef: $08 $16 $14
	ld [de], a                                       ; $53f2: $12
	jr nz, @+$01                                     ; $53f3: $20 $ff

	inc bc                                           ; $53f5: $03
	adc d                                            ; $53f6: $8a
	dec b                                            ; $53f7: $05
	adc c                                            ; $53f8: $89
	inc bc                                           ; $53f9: $03
	adc b                                            ; $53fa: $88
	rra                                              ; $53fb: $1f
	ld e, $1d                                        ; $53fc: $1e $1d
	inc e                                            ; $53fe: $1c
	dec de                                           ; $53ff: $1b
	ld a, [de]                                       ; $5400: $1a
	add hl, hl                                       ; $5401: $29
	jr nz, @+$01                                     ; $5402: $20 $ff

	ld bc, $011d                                     ; $5404: $01 $1d $01
	jr jr_007_540a                                   ; $5407: $18 $01

	inc de                                           ; $5409: $13

jr_007_540a:
	ld bc, $010f                                     ; $540a: $01 $0f $01
	ld a, [bc]                                       ; $540d: $0a
	ld d, $11                                        ; $540e: $16 $11
	ld a, [de]                                       ; $5410: $1a
	rra                                              ; $5411: $1f
	ld bc, $018b                                     ; $5412: $01 $8b $01
	sub b                                            ; $5415: $90
	ld bc, $0194                                     ; $5416: $01 $94 $01
	sbc c                                            ; $5419: $99
	ld bc, $019d                                     ; $541a: $01 $9d $01
	and d                                            ; $541d: $a2
	ld bc, $01a7                                     ; $541e: $01 $a7 $01
	or e                                             ; $5421: $b3
	ld bc, $01bf                                     ; $5422: $01 $bf $01
	call z, $d801                                    ; $5425: $cc $01 $d8
	ld bc, $01e5                                     ; $5428: $01 $e5 $01
	pop af                                           ; $542b: $f1
	ld bc, $fffe                                     ; $542c: $01 $fe $ff
	add hl, hl                                       ; $542f: $29
	ld c, d                                          ; $5430: $4a
	ld c, e                                          ; $5431: $4b
	db $ec                                           ; $5432: $ec
	call c, $2a1b                                    ; $5433: $dc $1b $2a
	add hl, hl                                       ; $5436: $29
	add b                                            ; $5437: $80
	rst $38                                          ; $5438: $ff
	db $10                                           ; $5439: $10
	add hl, sp                                       ; $543a: $39
	ld a, [hl+]                                      ; $543b: $2a
	dec sp                                           ; $543c: $3b
	inc l                                            ; $543d: $2c
	dec l                                            ; $543e: $2d
	ld a, $2f                                        ; $543f: $3e $2f
	ld [bc], a                                       ; $5441: $02
	adc b                                            ; $5442: $88
	inc bc                                           ; $5443: $03
	adc c                                            ; $5444: $89
	ld [bc], a                                       ; $5445: $02
	adc d                                            ; $5446: $8a
	ld [bc], a                                       ; $5447: $02
	adc e                                            ; $5448: $8b
	ld bc, $ff8c                                     ; $5449: $01 $8c $ff
	db $10                                           ; $544c: $10
	ld [de], a                                       ; $544d: $12
	inc d                                            ; $544e: $14
	ld d, $01                                        ; $544f: $16 $01
	ld [$0a01], sp                                   ; $5451: $08 $01 $0a
	ld b, $0c                                        ; $5454: $06 $0c
	ld bc, $010a                                     ; $5456: $01 $0a $01
	ld [$1416], sp                                   ; $5459: $08 $16 $14
	ld [de], a                                       ; $545c: $12
	jr nz, @+$01                                     ; $545d: $20 $ff

	db $10                                           ; $545f: $10
	add hl, de                                       ; $5460: $19
	ld a, [de]                                       ; $5461: $1a
	dec de                                           ; $5462: $1b
	inc e                                            ; $5463: $1c
	dec e                                            ; $5464: $1d
	ld e, $1f                                        ; $5465: $1e $1f
	ld bc, $ff88                                     ; $5467: $01 $88 $ff
	db $10                                           ; $546a: $10
	ld sp, $2322                                     ; $546b: $31 $22 $23
	inc [hl]                                         ; $546e: $34
	dec h                                            ; $546f: $25
	ld h, $27                                        ; $5470: $26 $27
	rrca                                             ; $5472: $0f
	ld [$080e], sp                                   ; $5473: $08 $0e $08
	daa                                              ; $5476: $27
	ld h, $25                                        ; $5477: $26 $25
	inc h                                            ; $5479: $24
	inc hl                                           ; $547a: $23
	ld [hl+], a                                      ; $547b: $22
	ld hl, $e0e0                                     ; $547c: $21 $e0 $e0
	ldh [$e0], a                                     ; $547f: $e0 $e0
	ldh [$e0], a                                     ; $5481: $e0 $e0
	ldh [$e0], a                                     ; $5483: $e0 $e0
	ldh [$e0], a                                     ; $5485: $e0 $e0
	ldh [$e0], a                                     ; $5487: $e0 $e0
	ldh [$e0], a                                     ; $5489: $e0 $e0
	rst $38                                          ; $548b: $ff
	ld bc, $017f                                     ; $548c: $01 $7f $01
	rst $38                                          ; $548f: $ff
	ld bc, $0175                                     ; $5490: $01 $75 $01
	rst $38                                          ; $5493: $ff
	ld bc, $016b                                     ; $5494: $01 $6b $01
	rst $38                                          ; $5497: $ff
	ld bc, $0161                                     ; $5498: $01 $61 $01
	rst $38                                          ; $549b: $ff
	ld bc, $0157                                     ; $549c: $01 $57 $01
	rst $38                                          ; $549f: $ff
	ld bc, $014d                     ; $54a0: $01 $4d $01
	rst $38                                          ; $54a3: $ff
	ld bc, $0143                             ; $54a4: $01 $43 $01
	rst $38                                          ; $54a7: $ff
	ld bc, $0139                                     ; $54a8: $01 $39 $01
	rst $38                                          ; $54ab: $ff
	ld bc, $012f                                     ; $54ac: $01 $2f $01
	rst $38                                          ; $54af: $ff
	ld bc, $0126                                     ; $54b0: $01 $26 $01
	rst $38                                          ; $54b3: $ff
	ld bc, $011b                                     ; $54b4: $01 $1b $01
	rst $38                                          ; $54b7: $ff
	ld bc, $0111                                     ; $54b8: $01 $11 $01
	rst $38                                          ; $54bb: $ff
	ld bc, $0108                                     ; $54bc: $01 $08 $01
	rst $38                                          ; $54bf: $ff
	inc de                                           ; $54c0: $13
	jr nz, @+$01                                     ; $54c1: $20 $ff

	ld [de], a                                       ; $54c3: $12
	ld bc, $17ff                                     ; $54c4: $01 $ff $17
	ld bc, $01ff                                     ; $54c7: $01 $ff $01
	ld de, $ff01                                     ; $54ca: $11 $01 $ff
	ld bc, $011b                                     ; $54cd: $01 $1b $01
	rst $38                                          ; $54d0: $ff
	ld bc, $0125                                     ; $54d1: $01 $25 $01
	rst $38                                          ; $54d4: $ff
	ld bc, $012f                                     ; $54d5: $01 $2f $01
	rst $38                                          ; $54d8: $ff
	ld bc, $0139                                     ; $54d9: $01 $39 $01
	rst $38                                          ; $54dc: $ff
	ld bc, $0143                             ; $54dd: $01 $43 $01
	rst $38                                          ; $54e0: $ff
	ld bc, $014d                     ; $54e1: $01 $4d $01
	rst $38                                          ; $54e4: $ff
	ld bc, $0157                                     ; $54e5: $01 $57 $01
	rst $38                                          ; $54e8: $ff
	ld bc, $0161                                     ; $54e9: $01 $61 $01
	rst $38                                          ; $54ec: $ff
	ld bc, $016b                                     ; $54ed: $01 $6b $01
	rst $38                                          ; $54f0: $ff
	ld bc, $0175                                     ; $54f1: $01 $75 $01
	rst $38                                          ; $54f4: $ff
	ld bc, $207f                                     ; $54f5: $01 $7f $20
	rst $38                                          ; $54f8: $ff
	cp $01                                           ; $54f9: $fe $01
	ld a, a                                          ; $54fb: $7f
	ld bc, $feff                                     ; $54fc: $01 $ff $fe
	ld bc, $01ec                                     ; $54ff: $01 $ec $01
	pop hl                                           ; $5502: $e1
	ld bc, $01d3                                     ; $5503: $01 $d3 $01
	ret                                              ; $5506: $c9


	ld bc, $01c1                                     ; $5507: $01 $c1 $01
	cp d                                             ; $550a: $ba
	ld bc, $01b5                                     ; $550b: $01 $b5 $01
	xor a                                            ; $550e: $af
	ld bc, $01ac                                     ; $550f: $01 $ac $01
	xor c                                            ; $5512: $a9
	ld bc, $01a7                                     ; $5513: $01 $a7 $01
	and h                                            ; $5516: $a4
	ld bc, $01a2                                     ; $5517: $01 $a2 $01
	and b                                            ; $551a: $a0
	ld bc, $019e                                     ; $551b: $01 $9e $01
	sbc e                                            ; $551e: $9b
	ld bc, $0199                                     ; $551f: $01 $99 $01
	sbc b                                            ; $5522: $98
	ld bc, $0196                                     ; $5523: $01 $96 $01
	sub h                                            ; $5526: $94
	ld bc, $0192                                     ; $5527: $01 $92 $01
	sub b                                            ; $552a: $90
	ld bc, $018e                                     ; $552b: $01 $8e $01
	adc l                                            ; $552e: $8d
	ld bc, $018c                                     ; $552f: $01 $8c $01
	adc e                                            ; $5532: $8b
	ld bc, $018a                                     ; $5533: $01 $8a $01
	adc c                                            ; $5536: $89
	ld bc, $1e88                                     ; $5537: $01 $88 $1e
	inc e                                            ; $553a: $1c
	dec de                                           ; $553b: $1b
	ld a, [de]                                       ; $553c: $1a
	ldh [$e0], a                                     ; $553d: $e0 $e0
	ldh [$e0], a                                     ; $553f: $e0 $e0
	ldh [$e0], a                                     ; $5541: $e0 $e0
	ldh [$e0], a                                     ; $5543: $e0 $e0
	ldh [$e0], a                                     ; $5545: $e0 $e0
	ldh [$e0], a                                     ; $5547: $e0 $e0
	ldh [$e0], a                                     ; $5549: $e0 $e0
	ldh [$d0], a                                     ; $554b: $e0 $d0
	rst $38                                          ; $554d: $ff
	ld b, b                                          ; $554e: $40
	ld bc, $0a1a                                     ; $554f: $01 $1a $0a
	dec de                                           ; $5552: $1b
	ld bc, $e01a                                     ; $5553: $01 $1a $e0
	ldh [$e0], a                                     ; $5556: $e0 $e0

Call_007_5558:
	ldh [$e0], a                                     ; $5558: $e0 $e0
	ldh [$e0], a                                     ; $555a: $e0 $e0
	ldh [$e0], a                                     ; $555c: $e0 $e0
	ldh [$e0], a                                     ; $555e: $e0 $e0
	ldh [$e0], a                                     ; $5560: $e0 $e0
	ldh [$e0], a                                     ; $5562: $e0 $e0
	ldh [$e0], a                                     ; $5564: $e0 $e0
	jr nz, @+$01                                     ; $5566: $20 $ff

	cp $13                                           ; $5568: $fe $13
	dec d                                            ; $556a: $15
	ld [hl], a                                       ; $556b: $77
	dec d                                            ; $556c: $15
	inc de                                           ; $556d: $13
	dec de                                           ; $556e: $1b
	dec e                                            ; $556f: $1d
	ld a, a                                          ; $5570: $7f
	dec e                                            ; $5571: $1d
	dec de                                           ; $5572: $1b
	cp $fe                                           ; $5573: $fe $fe
	ld de, $1312                                     ; $5575: $11 $12 $13
	inc d                                            ; $5578: $14
	dec d                                            ; $5579: $15
	ld d, $17                                        ; $557a: $16 $17
	ld bc, $0408                                     ; $557c: $01 $08 $04
	add hl, bc                                       ; $557f: $09
	ld bc, $1708                                     ; $5580: $01 $08 $17
	ld d, $15                                        ; $5583: $16 $15
	inc d                                            ; $5585: $14
	inc de                                           ; $5586: $13
	ld [de], a                                       ; $5587: $12
	ld de, $1a19                                     ; $5588: $11 $19 $1a
	dec de                                           ; $558b: $1b
	inc e                                            ; $558c: $1c
	dec e                                            ; $558d: $1d
	ld e, $1f                                        ; $558e: $1e $1f
	inc b                                            ; $5590: $04
	adc b                                            ; $5591: $88
	rra                                              ; $5592: $1f
	ld e, $1d                                        ; $5593: $1e $1d
	inc e                                            ; $5595: $1c
	dec de                                           ; $5596: $1b
	ld a, [de]                                       ; $5597: $1a
	add hl, de                                       ; $5598: $19
	cp $01                                           ; $5599: $fe $01
	rst $38                                          ; $559b: $ff
	ld bc, $01f8                                     ; $559c: $01 $f8 $01
	xor $01                                          ; $559f: $ee $01
	and $01                                          ; $55a1: $e6 $01
	jp c, $cf01                                      ; $55a3: $da $01 $cf

	ld bc, $01c4                                     ; $55a6: $01 $c4 $01
	or c                                             ; $55a9: $b1
	ld bc, $01a8                                     ; $55aa: $01 $a8 $01
	sbc l                                            ; $55ad: $9d
	ld bc, $0194                                     ; $55ae: $01 $94 $01
	adc [hl]                                         ; $55b1: $8e
	rra                                              ; $55b2: $1f
	dec e                                            ; $55b3: $1d
	ld a, [de]                                       ; $55b4: $1a
	ldh [$e0], a                                     ; $55b5: $e0 $e0
	ldh [$e0], a                                     ; $55b7: $e0 $e0
	ldh [$e0], a                                     ; $55b9: $e0 $e0
	ldh [$e0], a                                     ; $55bb: $e0 $e0
	ldh [$e0], a                                     ; $55bd: $e0 $e0
	ldh [$e0], a                                     ; $55bf: $e0 $e0
	ldh [$e0], a                                     ; $55c1: $e0 $e0
	ldh [$e0], a                                     ; $55c3: $e0 $e0
	ldh [$30], a                                     ; $55c5: $e0 $30
	rst $38                                          ; $55c7: $ff
	jr nc, jr_007_55e3                               ; $55c8: $30 $19

	ld a, [hl+]                                      ; $55ca: $2a
	dec hl                                           ; $55cb: $2b
	inc e                                            ; $55cc: $1c
	dec l                                            ; $55cd: $2d
	ld e, $2f                                        ; $55ce: $1e $2f
	ld [bc], a                                       ; $55d0: $02
	adc b                                            ; $55d1: $88
	rrca                                             ; $55d2: $0f
	adc c                                            ; $55d3: $89
	ld c, $89                                        ; $55d4: $0e $89
	ld bc, $1f88                                     ; $55d6: $01 $88 $1f
	ld e, $1d                                        ; $55d9: $1e $1d
	inc e                                            ; $55db: $1c
	dec de                                           ; $55dc: $1b
	ld c, d                                          ; $55dd: $4a
	add hl, hl                                       ; $55de: $29
	ldh [$e0], a                                     ; $55df: $e0 $e0
	ldh [$e0], a                                     ; $55e1: $e0 $e0

jr_007_55e3:
	ldh [$e0], a                                     ; $55e3: $e0 $e0
	ldh [$e0], a                                     ; $55e5: $e0 $e0
	ldh [$e0], a                                     ; $55e7: $e0 $e0
	ldh [$e0], a                                     ; $55e9: $e0 $e0
	ldh [$e0], a                                     ; $55eb: $e0 $e0
	jr nc, @+$01                                     ; $55ed: $30 $ff

	cp $11                                           ; $55ef: $fe $11
	ld [de], a                                       ; $55f1: $12
	inc de                                           ; $55f2: $13
	inc d                                            ; $55f3: $14
	dec d                                            ; $55f4: $15
	inc d                                            ; $55f5: $14
	inc de                                           ; $55f6: $13
	ld [de], a                                       ; $55f7: $12
	ld de, $1a19                                     ; $55f8: $11 $19 $1a
	dec de                                           ; $55fb: $1b
	inc e                                            ; $55fc: $1c
	dec e                                            ; $55fd: $1d
	inc e                                            ; $55fe: $1c
	dec de                                           ; $55ff: $1b
	ld a, [de]                                       ; $5600: $1a
	add hl, de                                       ; $5601: $19
	cp $fe                                           ; $5602: $fe $fe
	ld de, $2422                                     ; $5604: $11 $22 $24
	ld [hl+], a                                      ; $5607: $22
	ld de, $2a19                                     ; $5608: $11 $19 $2a
	inc l                                            ; $560b: $2c
	ld a, [hl+]                                      ; $560c: $2a
	add hl, de                                       ; $560d: $19
	cp $e0                                           ; $560e: $fe $e0
	ldh [$e0], a                                     ; $5610: $e0 $e0
	ldh [$e0], a                                     ; $5612: $e0 $e0
	ldh [$e0], a                                     ; $5614: $e0 $e0
	ldh [$e0], a                                     ; $5616: $e0 $e0
	ldh [$e0], a                                     ; $5618: $e0 $e0
	ldh [$e0], a                                     ; $561a: $e0 $e0
	jr nz, jr_007_564f                               ; $561c: $20 $31

	ld [de], a                                       ; $561e: $12
	rst $38                                          ; $561f: $ff
	db $10                                           ; $5620: $10
	ld de, $1312                                     ; $5621: $11 $12 $13
	inc d                                            ; $5624: $14
	dec d                                            ; $5625: $15
	ldh [$e0], a                                     ; $5626: $e0 $e0
	ldh [$e0], a                                     ; $5628: $e0 $e0
	ldh [$e0], a                                     ; $562a: $e0 $e0
	ldh [$e0], a                                     ; $562c: $e0 $e0
	ldh [$e0], a                                     ; $562e: $e0 $e0
	ldh [$e0], a                                     ; $5630: $e0 $e0
	ldh [$e0], a                                     ; $5632: $e0 $e0
	ldh [$e0], a                                     ; $5634: $e0 $e0
	ldh [$c0], a                                     ; $5636: $e0 $c0
	rst $38                                          ; $5638: $ff
	ld [bc], a                                       ; $5639: $02
	sbc l                                            ; $563a: $9d
	ld bc, $019e                                     ; $563b: $01 $9e $01
	sbc a                                            ; $563e: $9f
	ld bc, $01a1                                     ; $563f: $01 $a1 $01
	and d                                            ; $5642: $a2
	ld bc, $01a4                                     ; $5643: $01 $a4 $01
	and [hl]                                         ; $5646: $a6
	ld bc, $01a8                                     ; $5647: $01 $a8 $01
	xor c                                            ; $564a: $a9
	ld bc, $01ab                                     ; $564b: $01 $ab $01
	xor h                                            ; $564e: $ac

jr_007_564f:
	ld bc, $01ae                                     ; $564f: $01 $ae $01
	xor a                                            ; $5652: $af
	ld bc, $02b1                                     ; $5653: $01 $b1 $02
	or e                                             ; $5656: $b3
	ld bc, $01b4                                     ; $5657: $01 $b4 $01
	or [hl]                                          ; $565a: $b6
	ld [bc], a                                       ; $565b: $02
	or a                                             ; $565c: $b7
	inc bc                                           ; $565d: $03
	cp b                                             ; $565e: $b8
	ld bc, $02b9                                     ; $565f: $01 $b9 $02
	cp d                                             ; $5662: $ba
	ld bc, $01bb                                     ; $5663: $01 $bb $01
	cp h                                             ; $5666: $bc
	ld [bc], a                                       ; $5667: $02
	cp l                                             ; $5668: $bd
	ld bc, $02be                                     ; $5669: $01 $be $02
	cp a                                             ; $566c: $bf
	inc b                                            ; $566d: $04
	ret nz                                           ; $566e: $c0

	ld [bc], a                                       ; $566f: $02
	pop bc                                           ; $5670: $c1
	inc b                                            ; $5671: $04
	jp nz, $c304                                     ; $5672: $c2 $04 $c3

	inc bc                                           ; $5675: $03
	call nz, $c501                                   ; $5676: $c4 $01 $c5
	ld [bc], a                                       ; $5679: $02
	add $01                                          ; $567a: $c6 $01
	rst JumpTable                                          ; $567c: $c7
	ld [bc], a                                       ; $567d: $02
	ret z                                            ; $567e: $c8

	rrca                                             ; $567f: $0f
	jp z, $ca04                                      ; $5680: $ca $04 $ca

	dec b                                            ; $5683: $05
	ret                                              ; $5684: $c9


	ld b, $c8                                        ; $5685: $06 $c8
	inc b                                            ; $5687: $04
	rst JumpTable                                          ; $5688: $c7
	inc bc                                           ; $5689: $03
	add $01                                          ; $568a: $c6 $01
	push bc                                          ; $568c: $c5
	ld bc, $02c6                                     ; $568d: $01 $c6 $02
	push bc                                          ; $5690: $c5
	ld bc, $01c4                                     ; $5691: $01 $c4 $01
	jp $c401                                         ; $5694: $c3 $01 $c4


	ld [bc], a                                       ; $5697: $02
	jp $c201                                         ; $5698: $c3 $01 $c2


	inc b                                            ; $569b: $04
	pop bc                                           ; $569c: $c1
	ld bc, $03c0                                     ; $569d: $01 $c0 $03
	cp a                                             ; $56a0: $bf
	ld [bc], a                                       ; $56a1: $02
	cp [hl]                                          ; $56a2: $be
	ld [bc], a                                       ; $56a3: $02
	cp l                                             ; $56a4: $bd
	ld bc, $02bc                                     ; $56a5: $01 $bc $02
	cp e                                             ; $56a8: $bb
	ld bc, $04ba                                     ; $56a9: $01 $ba $04
	cp c                                             ; $56ac: $b9
	inc b                                            ; $56ad: $04
	cp b                                             ; $56ae: $b8
	ld [bc], a                                       ; $56af: $02
	or a                                             ; $56b0: $b7
	inc b                                            ; $56b1: $04
	or [hl]                                          ; $56b2: $b6
	ld [bc], a                                       ; $56b3: $02
	or l                                             ; $56b4: $b5
	ld bc, $01b4                                     ; $56b5: $01 $b4 $01
	or e                                             ; $56b8: $b3
	ld bc, $02b2                                     ; $56b9: $01 $b2 $02
	or c                                             ; $56bc: $b1
	ld bc, $02b0                                     ; $56bd: $01 $b0 $02
	xor a                                            ; $56c0: $af
	inc bc                                           ; $56c1: $03
	xor [hl]                                         ; $56c2: $ae
	inc bc                                           ; $56c3: $03
	xor l                                            ; $56c4: $ad
	ld bc, $03ac                                     ; $56c5: $01 $ac $03
	xor e                                            ; $56c8: $ab
	ld [bc], a                                       ; $56c9: $02
	xor d                                            ; $56ca: $aa
	ld bc, $01a9                                     ; $56cb: $01 $a9 $01
	xor b                                            ; $56ce: $a8
	ld bc, $01a7                                     ; $56cf: $01 $a7 $01
	and [hl]                                         ; $56d2: $a6
	ld [bc], a                                       ; $56d3: $02
	and l                                            ; $56d4: $a5
	ld bc, $01a4                                     ; $56d5: $01 $a4 $01
	and e                                            ; $56d8: $a3
	ld bc, $01a2                                     ; $56d9: $01 $a2 $01
	and c                                            ; $56dc: $a1
	ld bc, $02a0                                     ; $56dd: $01 $a0 $02
	sbc a                                            ; $56e0: $9f
	ld [bc], a                                       ; $56e1: $02
	sbc l                                            ; $56e2: $9d
	ld [bc], a                                       ; $56e3: $02
	sbc e                                            ; $56e4: $9b
	ld bc, $019a                                     ; $56e5: $01 $9a $01
	sbc b                                            ; $56e8: $98
	ld bc, $0397                                     ; $56e9: $01 $97 $03
	sub [hl]                                         ; $56ec: $96
	ld bc, $0195                                     ; $56ed: $01 $95 $01
	sub h                                            ; $56f0: $94
	ld bc, $0193                                     ; $56f1: $01 $93 $01
	sub d                                            ; $56f4: $92
	ld [bc], a                                       ; $56f5: $02
	sub c                                            ; $56f6: $91
	ld bc, $018f                                     ; $56f7: $01 $8f $01
	adc [hl]                                         ; $56fa: $8e
	ld bc, $018d                                     ; $56fb: $01 $8d $01
	adc h                                            ; $56fe: $8c
	ld bc, $1e8a                                     ; $56ff: $01 $8a $1e
	inc e                                            ; $5702: $1c
	add hl, de                                       ; $5703: $19
	ldh [$e0], a                                     ; $5704: $e0 $e0
	ldh [$e0], a                                     ; $5706: $e0 $e0
	ld [hl], b                                       ; $5708: $70
	rst $38                                          ; $5709: $ff
	cp $17                                           ; $570a: $fe $17
	ld bc, $1716                                     ; $570c: $01 $16 $17
	rra                                              ; $570f: $1f
	ld bc, $1f95                                     ; $5710: $01 $95 $1f
	cp $01                                           ; $5713: $fe $01
	ld hl, sp+$01                                    ; $5715: $f8 $01
	rst FarCall                                          ; $5717: $f7
	ld bc, $01c8                                     ; $5718: $01 $c8 $01
	cp b                                             ; $571b: $b8
	ld bc, $01b0                                     ; $571c: $01 $b0 $01
	xor b                                            ; $571f: $a8
	ld bc, $01a0                                     ; $5720: $01 $a0 $01
	sbc h                                            ; $5723: $9c
	ld bc, $019b                                     ; $5724: $01 $9b $01
	sbc b                                            ; $5727: $98
	ld bc, $0193                                     ; $5728: $01 $93 $01
	adc [hl]                                         ; $572b: $8e
	ld bc, $018c                                     ; $572c: $01 $8c $01
	adc d                                            ; $572f: $8a
	ld bc, $0189                                     ; $5730: $01 $89 $01
	adc b                                            ; $5733: $88
	ld e, $1d                                        ; $5734: $1e $1d
	inc e                                            ; $5736: $1c
	dec de                                           ; $5737: $1b
	inc e                                            ; $5738: $1c
	ld a, [de]                                       ; $5739: $1a
	add hl, de                                       ; $573a: $19
	db $10                                           ; $573b: $10
	ld a, [de]                                       ; $573c: $1a
	ld de, $e012                                     ; $573d: $11 $12 $e0
	ldh [$e0], a                                     ; $5740: $e0 $e0
	ldh [$e0], a                                     ; $5742: $e0 $e0
	ldh [$e0], a                                     ; $5744: $e0 $e0
	ldh [$e0], a                                     ; $5746: $e0 $e0
	ldh [$e0], a                                     ; $5748: $e0 $e0
	ldh [$e0], a                                     ; $574a: $e0 $e0
	ldh [$e0], a                                     ; $574c: $e0 $e0
	ldh [$50], a                                     ; $574e: $e0 $50
	rst $38                                          ; $5750: $ff
	ld bc, $01be                                     ; $5751: $01 $be $01
	sbc [hl]                                         ; $5754: $9e
	ld bc, $0190                                     ; $5755: $01 $90 $01
	adc c                                            ; $5758: $89
	inc e                                            ; $5759: $1c
	add hl, de                                       ; $575a: $19
	ldh [$e0], a                                     ; $575b: $e0 $e0
	ldh [$e0], a                                     ; $575d: $e0 $e0
	ldh [$e0], a                                     ; $575f: $e0 $e0
	ldh [$e0], a                                     ; $5761: $e0 $e0
	ldh [$e0], a                                     ; $5763: $e0 $e0
	ldh [$e0], a                                     ; $5765: $e0 $e0
	ldh [$e0], a                                     ; $5767: $e0 $e0
	ldh [$e0], a                                     ; $5769: $e0 $e0
	ldh [$c0], a                                     ; $576b: $e0 $c0
	rst $38                                          ; $576d: $ff
	ld [bc], a                                       ; $576e: $02
	sub d                                            ; $576f: $92
	ld bc, $0193                                     ; $5770: $01 $93 $01
	sub l                                            ; $5773: $95
	ld bc, $0199                                     ; $5774: $01 $99 $01
	sbc l                                            ; $5777: $9d
	ld bc, $01a2                                     ; $5778: $01 $a2 $01
	and a                                            ; $577b: $a7
	ld bc, $01ac                                     ; $577c: $01 $ac $01
	or c                                             ; $577f: $b1
	ld bc, $01b6                                     ; $5780: $01 $b6 $01
	cp [hl]                                          ; $5783: $be
	ld bc, $01c4                                     ; $5784: $01 $c4 $01
	rlc c                                            ; $5787: $cb $01
	jp nc, $de01                                     ; $5789: $d2 $01 $de

	ld bc, $01ee                                     ; $578c: $01 $ee $01
	db $fd                                           ; $578f: $fd
	ld bc, rIE                                     ; $5790: $01 $ff $ff
	ld e, $1d                                        ; $5793: $1e $1d
	dec de                                           ; $5795: $1b
	ld a, [de]                                       ; $5796: $1a
	add hl, de                                       ; $5797: $19
	ldh [$e0], a                                     ; $5798: $e0 $e0
	ldh [$e0], a                                     ; $579a: $e0 $e0
	ldh [$e0], a                                     ; $579c: $e0 $e0
	ldh [$e0], a                                     ; $579e: $e0 $e0
	ldh [$e0], a                                     ; $57a0: $e0 $e0
	ldh [$e0], a                                     ; $57a2: $e0 $e0
	ldh [$e0], a                                     ; $57a4: $e0 $e0
	ldh [$e0], a                                     ; $57a6: $e0 $e0
	ldh [$d0], a                                     ; $57a8: $e0 $d0
	rst $38                                          ; $57aa: $ff
	inc h                                            ; $57ab: $24
	dec d                                            ; $57ac: $15
	ld d, $01                                        ; $57ad: $16 $01
	ld [$0a01], sp                                   ; $57af: $08 $01 $0a
	ld [bc], a                                       ; $57b2: $02
	dec bc                                           ; $57b3: $0b
	ld bc, $010d                                     ; $57b4: $01 $0d $01
	rrca                                             ; $57b7: $0f
	ld bc, $0111                                     ; $57b8: $01 $11 $01
	inc de                                           ; $57bb: $13
	ld bc, $0114                                     ; $57bc: $01 $14 $01
	ld d, $01                                        ; $57bf: $16 $01
	jr jr_007_57c4                                   ; $57c1: $18 $01

	ld a, [de]                                       ; $57c3: $1a

jr_007_57c4:
	ld b, $1b                                        ; $57c4: $06 $1b
	ld [bc], a                                       ; $57c6: $02
	ld a, [de]                                       ; $57c7: $1a
	ld bc, $0118                                     ; $57c8: $01 $18 $01
	rla                                              ; $57cb: $17
	ld bc, $0115                                     ; $57cc: $01 $15 $01
	inc de                                           ; $57cf: $13
	ld bc, $0111                                     ; $57d0: $01 $11 $01
	db $10                                           ; $57d3: $10
	ld bc, $010f                                     ; $57d4: $01 $0f $01
	dec c                                            ; $57d7: $0d
	ld bc, $010c                                     ; $57d8: $01 $0c $01
	ld [$1114], sp                                   ; $57db: $08 $14 $11
	ldh [$e0], a                                     ; $57de: $e0 $e0
	ldh [$e0], a                                     ; $57e0: $e0 $e0
	ldh [$e0], a                                     ; $57e2: $e0 $e0
	ldh [$e0], a                                     ; $57e4: $e0 $e0
	ldh [$e0], a                                     ; $57e6: $e0 $e0
	ldh [$e0], a                                     ; $57e8: $e0 $e0
	ldh [$e0], a                                     ; $57ea: $e0 $e0
	ldh [$a0], a                                     ; $57ec: $e0 $a0
	rst $38                                          ; $57ee: $ff
	db $10                                           ; $57ef: $10
	ld bc, $010a                                     ; $57f0: $01 $0a $01
	ld c, $01                                        ; $57f3: $0e $01
	ld a, [hl+]                                      ; $57f5: $2a
	ld bc, $0139                                     ; $57f6: $01 $39 $01
	ld c, e                                          ; $57f9: $4b
	ld bc, $0155                                     ; $57fa: $01 $55 $01
	ld e, l                                          ; $57fd: $5d
	ld bc, $0160                                     ; $57fe: $01 $60 $01
	ld e, [hl]                                       ; $5801: $5e
	ld bc, $0160                                     ; $5802: $01 $60 $01
	ld h, c                                          ; $5805: $61
	ld bc, $0163                                     ; $5806: $01 $63 $01
	ld h, l                                          ; $5809: $65
	ld bc, $0166                                     ; $580a: $01 $66 $01
	ld h, a                                          ; $580d: $67
	ld [bc], a                                       ; $580e: $02
	ld l, b                                          ; $580f: $68
	ld bc, $0167                                     ; $5810: $01 $67 $01
	ld h, l                                          ; $5813: $65
	ld bc, $0163                                     ; $5814: $01 $63 $01
	ld h, d                                          ; $5817: $62
	ld bc, $0160                                     ; $5818: $01 $60 $01
	ld e, [hl]                                       ; $581b: $5e
	ld [bc], a                                       ; $581c: $02
	ld e, l                                          ; $581d: $5d
	ld bc, $015a                                     ; $581e: $01 $5a $01
	ld e, l                                          ; $5821: $5d
	ld bc, $015c                                     ; $5822: $01 $5c $01
	ld e, e                                          ; $5825: $5b
	ld bc, $0157                                     ; $5826: $01 $57 $01
	ld d, e                                          ; $5829: $53
	ld bc, $014b                     ; $582a: $01 $4b $01
	dec a                                            ; $582d: $3d
	ld bc, $191d                                     ; $582e: $01 $1d $19
	ld bc, $0197                                     ; $5831: $01 $97 $01
	and a                                            ; $5834: $a7
	ld bc, $01c1                                     ; $5835: $01 $c1 $01
	ret                                              ; $5838: $c9


	ld bc, $01df                                     ; $5839: $01 $df $01
	push hl                                          ; $583c: $e5
	ld bc, $01ea                                     ; $583d: $01 $ea $01
	db $ec                                           ; $5840: $ec
	ld bc, $01ed                                     ; $5841: $01 $ed $01
	xor $01                                          ; $5844: $ee $01
	rst AddAOntoHL                                          ; $5846: $ef
	ld bc, $03f0                                     ; $5847: $01 $f0 $03
	ldh a, [c]                                       ; $584a: $f2
	ld [bc], a                                       ; $584b: $02
	di                                               ; $584c: $f3
	ld [bc], a                                       ; $584d: $02
	ldh a, [c]                                       ; $584e: $f2
	ld bc, $01f1                                     ; $584f: $01 $f1 $01
	jp nc, $b801                                     ; $5852: $d2 $01 $b8

	ld bc, $01a2                                     ; $5855: $01 $a2 $01
	ld h, $01                                        ; $5858: $26 $01
	ld c, c                                          ; $585a: $49
	ld bc, $014a                     ; $585b: $01 $4a $01
	ld c, e                                          ; $585e: $4b
	ld bc, $014d                     ; $585f: $01 $4d $01
	ld c, [hl]                                       ; $5862: $4e
	ld bc, $044f                                     ; $5863: $01 $4f $04
	ld d, c                                          ; $5866: $51
	ld [bc], a                                       ; $5867: $02
	ld d, d                                          ; $5868: $52
	ld bc, $0150                                     ; $5869: $01 $50 $01
	ld c, a                                          ; $586c: $4f
	ld bc, $014e                      ; $586d: $01 $4e $01
	ld c, l                                          ; $5870: $4d
	ld [bc], a                                       ; $5871: $02
	ld c, h                                          ; $5872: $4c
	ld bc, $0149                             ; $5873: $01 $49 $01
	ccf                                              ; $5876: $3f
	ld bc, $012d                                     ; $5877: $01 $2d $01
	dec d                                            ; $587a: $15
	dec de                                           ; $587b: $1b
	ld bc, $0193                                     ; $587c: $01 $93 $01
	xor e                                            ; $587f: $ab
	ld bc, $01bf                                     ; $5880: $01 $bf $01
	rlc c                                            ; $5883: $cb $01
	push hl                                          ; $5885: $e5
	ld bc, $01ef                                     ; $5886: $01 $ef $01
	ld hl, sp+$01                                    ; $5889: $f8 $01
	ld a, [$fb01]                                    ; $588b: $fa $01 $fb
	inc b                                            ; $588e: $04
	db $fc                                           ; $588f: $fc
	inc b                                            ; $5890: $04
	db $fd                                           ; $5891: $fd
	inc bc                                           ; $5892: $03
	cp $02                                           ; $5893: $fe $02
	db $fd                                           ; $5895: $fd
	ld [bc], a                                       ; $5896: $02
	db $fc                                           ; $5897: $fc
	ld bc, $01fb                                     ; $5898: $01 $fb $01
	ld a, [$f901]                                    ; $589b: $fa $01 $f9
	ld bc, $0159                                     ; $589e: $01 $59 $01
	ld e, l                                          ; $58a1: $5d
	ld bc, $015e                                     ; $58a2: $01 $5e $01
	ld e, h                                          ; $58a5: $5c
	ld bc, $015b                                     ; $58a6: $01 $5b $01
	ld e, c                                          ; $58a9: $59
	ld bc, $0158                                     ; $58aa: $01 $58 $01
	ld d, b                                          ; $58ad: $50
	ld bc, $0148                             ; $58ae: $01 $48 $01
	ld a, $01                                        ; $58b1: $3e $01
	inc [hl]                                         ; $58b3: $34
	ld bc, $012a                                     ; $58b4: $01 $2a $01
	rra                                              ; $58b7: $1f
	ld bc, $0116                                     ; $58b8: $01 $16 $01
	dec bc                                           ; $58bb: $0b
	inc hl                                           ; $58bc: $23
	db $10                                           ; $58bd: $10
	rst $38                                          ; $58be: $ff
	cp $01                                           ; $58bf: $fe $01
	ld a, a                                          ; $58c1: $7f
	ld bc, $01ad                                     ; $58c2: $01 $ad $01
	halt                                             ; $58c5: $76
	ld bc, $01be                                     ; $58c6: $01 $be $01
	ld l, d                                          ; $58c9: $6a
	ld bc, $01cb                                     ; $58ca: $01 $cb $01
	ld e, a                                          ; $58cd: $5f
	ld bc, $01d5                                     ; $58ce: $01 $d5 $01
	ld d, d                                          ; $58d1: $52
	ld bc, $01e0                                     ; $58d2: $01 $e0 $01
	ld b, [hl]                                       ; $58d5: $46
	ld bc, $01eb                                     ; $58d6: $01 $eb $01
	dec a                                            ; $58d9: $3d
	ld bc, $01f4                                     ; $58da: $01 $f4 $01
	inc sp                                           ; $58dd: $33
	ld bc, $01fe                                     ; $58de: $01 $fe $01
	dec [hl]                                         ; $58e1: $35
	ld bc, $01fa                                     ; $58e2: $01 $fa $01
	inc a                                            ; $58e5: $3c
	ld bc, $01f2                                     ; $58e6: $01 $f2 $01
	ld b, l                                          ; $58e9: $45
	ld bc, $01e7                                     ; $58ea: $01 $e7 $01
	ld c, e                                          ; $58ed: $4b
	ld bc, $01dc                                     ; $58ee: $01 $dc $01
	ld d, h                                          ; $58f1: $54
	ld bc, $01ce                                     ; $58f2: $01 $ce $01
	ld e, l                                          ; $58f5: $5d
	ld bc, $01c5                                     ; $58f6: $01 $c5 $01
	ld h, [hl]                                       ; $58f9: $66
	ld bc, $01bc                                     ; $58fa: $01 $bc $01
	ld [hl], c                                       ; $58fd: $71
	ld bc, $01b0                                     ; $58fe: $01 $b0 $01
	ld a, d                                          ; $5901: $7a
	ld bc, $fea7                                     ; $5902: $01 $a7 $fe
	ld a, [hl+]                                      ; $5905: $2a
	add hl, de                                       ; $5906: $19
	db $10                                           ; $5907: $10
	ld hl, $1312                                     ; $5908: $21 $12 $13
	inc h                                            ; $590b: $24
	inc de                                           ; $590c: $13
	ld [de], a                                       ; $590d: $12
	ld hl, $e0e0                                     ; $590e: $21 $e0 $e0
	ldh [$e0], a                                     ; $5911: $e0 $e0
	ldh [$e0], a                                     ; $5913: $e0 $e0
	ldh [$e0], a                                     ; $5915: $e0 $e0
	ldh [$e0], a                                     ; $5917: $e0 $e0
	ldh [$e0], a                                     ; $5919: $e0 $e0
	ldh [$e0], a                                     ; $591b: $e0 $e0
	ldh [$e0], a                                     ; $591d: $e0 $e0
	ldh [rLCDC], a                                   ; $591f: $e0 $40
	rst $38                                          ; $5921: $ff
	db $10                                           ; $5922: $10
	ld bc, $0193                                     ; $5923: $01 $93 $01
	and c                                            ; $5926: $a1
	ld bc, $01b9                                     ; $5927: $01 $b9 $01
	db $e3                                           ; $592a: $e3
	rrca                                             ; $592b: $0f
	rst $38                                          ; $592c: $ff
	rrca                                             ; $592d: $0f
	rst $38                                          ; $592e: $ff
	rrca                                             ; $592f: $0f
	rst $38                                          ; $5930: $ff
	rrca                                             ; $5931: $0f
	rst $38                                          ; $5932: $ff
	rrca                                             ; $5933: $0f
	rst $38                                          ; $5934: $ff
	rrca                                             ; $5935: $0f
	rst $38                                          ; $5936: $ff
	rrca                                             ; $5937: $0f
	rst $38                                          ; $5938: $ff
	rrca                                             ; $5939: $0f
	rst $38                                          ; $593a: $ff
	rrca                                             ; $593b: $0f
	rst $38                                          ; $593c: $ff
	rrca                                             ; $593d: $0f
	rst $38                                          ; $593e: $ff
	rrca                                             ; $593f: $0f
	rst $38                                          ; $5940: $ff
	rrca                                             ; $5941: $0f
	rst $38                                          ; $5942: $ff
	rrca                                             ; $5943: $0f
	rst $38                                          ; $5944: $ff
	rrca                                             ; $5945: $0f
	rst $38                                          ; $5946: $ff
	rrca                                             ; $5947: $0f
	rst $38                                          ; $5948: $ff
	rrca                                             ; $5949: $0f
	rst $38                                          ; $594a: $ff
	dec bc                                           ; $594b: $0b
	rst $38                                          ; $594c: $ff
	rst $38                                          ; $594d: $ff
	cp $11                                           ; $594e: $fe $11
	ld [de], a                                       ; $5950: $12
	inc de                                           ; $5951: $13
	inc d                                            ; $5952: $14
	dec d                                            ; $5953: $15
	inc d                                            ; $5954: $14
	inc de                                           ; $5955: $13
	ld [de], a                                       ; $5956: $12
	ld de, $1910                                     ; $5957: $11 $10 $19
	ld a, [de]                                       ; $595a: $1a
	dec de                                           ; $595b: $1b
	inc e                                            ; $595c: $1c
	dec e                                            ; $595d: $1d
	inc e                                            ; $595e: $1c
	dec de                                           ; $595f: $1b
	ld a, [de]                                       ; $5960: $1a
	add hl, de                                       ; $5961: $19
	db $10                                           ; $5962: $10
	cp $fe                                           ; $5963: $fe $fe
	db $10                                           ; $5965: $10
	ld hl, $2322                                     ; $5966: $21 $22 $23
	ld [hl+], a                                      ; $5969: $22
	ld hl, $2910                                     ; $596a: $21 $10 $29
	ld a, [hl+]                                      ; $596d: $2a
	dec hl                                           ; $596e: $2b
	ld a, [hl+]                                      ; $596f: $2a
	add hl, de                                       ; $5970: $19
	cp $11                                           ; $5971: $fe $11
	db $10                                           ; $5973: $10
	add hl, de                                       ; $5974: $19
	or b                                             ; $5975: $b0
	add hl, de                                       ; $5976: $19
	ld a, [de]                                       ; $5977: $1a
	dec de                                           ; $5978: $1b
	dec e                                            ; $5979: $1d
	ld e, $1f                                        ; $597a: $1e $1f
	ld bc, $0189                                     ; $597c: $01 $89 $01
	adc e                                            ; $597f: $8b
	ld bc, $018c                                     ; $5980: $01 $8c $01
	adc l                                            ; $5983: $8d
	ld bc, $018f                                     ; $5984: $01 $8f $01
	sub d                                            ; $5987: $92
	ld bc, $0193                                     ; $5988: $01 $93 $01
	sub [hl]                                         ; $598b: $96
	ld bc, $019a                                     ; $598c: $01 $9a $01
	sbc l                                            ; $598f: $9d
	ld bc, $01a0                                     ; $5990: $01 $a0 $01
	and h                                            ; $5993: $a4
	ld bc, $01a9                                     ; $5994: $01 $a9 $01
	xor l                                            ; $5997: $ad
	ld bc, $01b2                                     ; $5998: $01 $b2 $01
	cp c                                             ; $599b: $b9
	ld bc, $01bf                                     ; $599c: $01 $bf $01
	add $01                                          ; $599f: $c6 $01
	adc $01                                          ; $59a1: $ce $01
	db $d3                                           ; $59a3: $d3
	ld bc, $01dd                                     ; $59a4: $01 $dd $01
	jp hl                                            ; $59a7: $e9


	ld bc, $01ee                                     ; $59a8: $01 $ee $01
	push af                                          ; $59ab: $f5
	ld bc, $0ffd                                     ; $59ac: $01 $fd $0f
	rst $38                                          ; $59af: $ff
	rrca                                             ; $59b0: $0f
	rst $38                                          ; $59b1: $ff
	rrca                                             ; $59b2: $0f
	rst $38                                          ; $59b3: $ff
	rrca                                             ; $59b4: $0f
	rst $38                                          ; $59b5: $ff
	rrca                                             ; $59b6: $0f
	rst $38                                          ; $59b7: $ff
	rrca                                             ; $59b8: $0f
	rst $38                                          ; $59b9: $ff
	rrca                                             ; $59ba: $0f
	rst $38                                          ; $59bb: $ff
	rrca                                             ; $59bc: $0f
	rst $38                                          ; $59bd: $ff
	rrca                                             ; $59be: $0f
	rst $38                                          ; $59bf: $ff
	rrca                                             ; $59c0: $0f
	rst $38                                          ; $59c1: $ff
	rrca                                             ; $59c2: $0f
	rst $38                                          ; $59c3: $ff
	rrca                                             ; $59c4: $0f
	rst $38                                          ; $59c5: $ff
	rrca                                             ; $59c6: $0f
	rst $38                                          ; $59c7: $ff
	rrca                                             ; $59c8: $0f
	rst $38                                          ; $59c9: $ff
	ld bc, rIE                                     ; $59ca: $01 $ff $ff
	db $10                                           ; $59cd: $10
	ld a, [de]                                       ; $59ce: $1a
	dec hl                                           ; $59cf: $2b
	ld e, $01                                        ; $59d0: $1e $01
	adc b                                            ; $59d2: $88
	ld bc, $018b                                     ; $59d3: $01 $8b $01
	sub d                                            ; $59d6: $92
	ld bc, $0196                                     ; $59d7: $01 $96 $01
	sbc h                                            ; $59da: $9c
	ld bc, $01a1                                     ; $59db: $01 $a1 $01
	xor b                                            ; $59de: $a8
	ld bc, $01b1                                     ; $59df: $01 $b1 $01
	cp c                                             ; $59e2: $b9
	ld bc, $01c0                                     ; $59e3: $01 $c0 $01
	ret                                              ; $59e6: $c9


	ld bc, $01d1                                     ; $59e7: $01 $d1 $01
	reti                                             ; $59ea: $d9


	ld bc, $01df                                     ; $59eb: $01 $df $01
	jp hl                                            ; $59ee: $e9


	ld bc, $0ff4                                     ; $59ef: $01 $f4 $0f
	rst $38                                          ; $59f2: $ff
	rrca                                             ; $59f3: $0f
	rst $38                                          ; $59f4: $ff
	rrca                                             ; $59f5: $0f
	rst $38                                          ; $59f6: $ff
	rrca                                             ; $59f7: $0f
	rst $38                                          ; $59f8: $ff
	rrca                                             ; $59f9: $0f
	rst $38                                          ; $59fa: $ff
	rrca                                             ; $59fb: $0f
	rst $38                                          ; $59fc: $ff
	rrca                                             ; $59fd: $0f
	rst $38                                          ; $59fe: $ff
	rrca                                             ; $59ff: $0f
	rst $38                                          ; $5a00: $ff
	rrca                                             ; $5a01: $0f
	rst $38                                          ; $5a02: $ff
	rrca                                             ; $5a03: $0f
	rst $38                                          ; $5a04: $ff
	rrca                                             ; $5a05: $0f
	rst $38                                          ; $5a06: $ff
	rrca                                             ; $5a07: $0f
	rst $38                                          ; $5a08: $ff
	rrca                                             ; $5a09: $0f
	rst $38                                          ; $5a0a: $ff
	rrca                                             ; $5a0b: $0f
	rst $38                                          ; $5a0c: $ff
	rrca                                             ; $5a0d: $0f
	rst $38                                          ; $5a0e: $ff
	ld a, [bc]                                       ; $5a0f: $0a
	rst $38                                          ; $5a10: $ff
	rst $38                                          ; $5a11: $ff
	add hl, de                                       ; $5a12: $19
	inc e                                            ; $5a13: $1c
	ld bc, $0188                                     ; $5a14: $01 $88 $01
	sub c                                            ; $5a17: $91
	ld bc, $01a1                                     ; $5a18: $01 $a1 $01
	or h                                             ; $5a1b: $b4
	ld bc, $01c3                                     ; $5a1c: $01 $c3 $01
	rst SubAFromDE                                          ; $5a1f: $df
	rrca                                             ; $5a20: $0f
	rst $38                                          ; $5a21: $ff
	rrca                                             ; $5a22: $0f
	rst $38                                          ; $5a23: $ff
	rrca                                             ; $5a24: $0f
	rst $38                                          ; $5a25: $ff
	rrca                                             ; $5a26: $0f
	rst $38                                          ; $5a27: $ff
	rrca                                             ; $5a28: $0f
	rst $38                                          ; $5a29: $ff
	rrca                                             ; $5a2a: $0f
	rst $38                                          ; $5a2b: $ff
	rrca                                             ; $5a2c: $0f
	rst $38                                          ; $5a2d: $ff
	rrca                                             ; $5a2e: $0f
	rst $38                                          ; $5a2f: $ff
	rrca                                             ; $5a30: $0f
	rst $38                                          ; $5a31: $ff
	rrca                                             ; $5a32: $0f
	rst $38                                          ; $5a33: $ff
	rrca                                             ; $5a34: $0f
	rst $38                                          ; $5a35: $ff
	rrca                                             ; $5a36: $0f
	rst $38                                          ; $5a37: $ff
	rrca                                             ; $5a38: $0f
	rst $38                                          ; $5a39: $ff
	rrca                                             ; $5a3a: $0f
	rst $38                                          ; $5a3b: $ff
	rrca                                             ; $5a3c: $0f
	rst $38                                          ; $5a3d: $ff
	rrca                                             ; $5a3e: $0f
	rst $38                                          ; $5a3f: $ff
	ld [rIE], sp                                   ; $5a40: $08 $ff $ff
	cp $20                                           ; $5a43: $fe $20
	ld hl, $4332                                     ; $5a45: $21 $32 $43
	ld [hl-], a                                      ; $5a48: $32
	ld hl, $2910                                     ; $5a49: $21 $10 $29
	ld a, [hl-]                                      ; $5a4c: $3a
	ld c, e                                          ; $5a4d: $4b
	ld a, [hl-]                                      ; $5a4e: $3a
	add hl, hl                                       ; $5a4f: $29
	cp $0c                                           ; $5a50: $fe $0c
	pop de                                           ; $5a52: $d1
	ld bc, $02d0                                     ; $5a53: $01 $d0 $02
	rst GetHLinHL                                          ; $5a56: $cf
	ld bc, $03ce                                     ; $5a57: $01 $ce $03
	call $cc02                                       ; $5a5a: $cd $02 $cc
	ld bc, $01cb                                     ; $5a5d: $01 $cb $01
	jp z, $c901                                      ; $5a60: $ca $01 $c9

	ld bc, $01c8                                     ; $5a63: $01 $c8 $01
	rst JumpTable                                          ; $5a66: $c7
	ld bc, $01c4                                     ; $5a67: $01 $c4 $01
	jp nz, $bd01                                     ; $5a6a: $c2 $01 $bd

	ld bc, $01ba                                     ; $5a6d: $01 $ba $01
	or l                                             ; $5a70: $b5
	ld bc, $01b1                                     ; $5a71: $01 $b1 $01
	xor h                                            ; $5a74: $ac
	ld bc, $01a8                                     ; $5a75: $01 $a8 $01
	and c                                            ; $5a78: $a1
	ld bc, $019b                                     ; $5a79: $01 $9b $01
	sub d                                            ; $5a7c: $92
	rra                                              ; $5a7d: $1f
	add hl, de                                       ; $5a7e: $19
	ldh [$e0], a                                     ; $5a7f: $e0 $e0
	ldh [$e0], a                                     ; $5a81: $e0 $e0
	ldh [$e0], a                                     ; $5a83: $e0 $e0
	ldh [$e0], a                                     ; $5a85: $e0 $e0
	ldh [$e0], a                                     ; $5a87: $e0 $e0
	ldh [$e0], a                                     ; $5a89: $e0 $e0
	ldh [$e0], a                                     ; $5a8b: $e0 $e0
	ldh [rSVBK], a                                   ; $5a8d: $e0 $70
	rst $38                                          ; $5a8f: $ff
	rrca                                             ; $5a90: $0f
	rst $38                                          ; $5a91: $ff
	rrca                                             ; $5a92: $0f
	rst $38                                          ; $5a93: $ff
	ld bc, $03fe                                     ; $5a94: $01 $fe $03
	db $fd                                           ; $5a97: $fd
	inc bc                                           ; $5a98: $03
	db $fc                                           ; $5a99: $fc
	ld bc, $01fb                                     ; $5a9a: $01 $fb $01
	ld a, [$f901]                                    ; $5a9d: $fa $01 $f9
	ld bc, $01f8                                     ; $5aa0: $01 $f8 $01
	rst FarCall                                          ; $5aa3: $f7
	ld bc, $01f6                                     ; $5aa4: $01 $f6 $01
	push af                                          ; $5aa7: $f5
	ld bc, $01f4                                     ; $5aa8: $01 $f4 $01
	di                                               ; $5aab: $f3
	ld bc, $01f2                                     ; $5aac: $01 $f2 $01
	pop af                                           ; $5aaf: $f1
	ld bc, $01f0                                     ; $5ab0: $01 $f0 $01
	rst AddAOntoHL                                          ; $5ab3: $ef
	ld bc, $01ee                                     ; $5ab4: $01 $ee $01
	db $ed                                           ; $5ab7: $ed
	ld bc, $01ec                                     ; $5ab8: $01 $ec $01
	db $eb                                           ; $5abb: $eb
	ld bc, $01ea                                     ; $5abc: $01 $ea $01
	jp hl                                            ; $5abf: $e9


	ld bc, $01e8                                     ; $5ac0: $01 $e8 $01
	and $01                                          ; $5ac3: $e6 $01
	push hl                                          ; $5ac5: $e5
	ld bc, $01e4                                     ; $5ac6: $01 $e4 $01
	db $e3                                           ; $5ac9: $e3
	ld [bc], a                                       ; $5aca: $02
	ldh [c], a                                       ; $5acb: $e2
	ld bc, $01e0                                     ; $5acc: $01 $e0 $01
	sbc $01                                          ; $5acf: $de $01
	db $dd                                           ; $5ad1: $dd
	ld bc, $01da                                     ; $5ad2: $01 $da $01
	ret c                                            ; $5ad5: $d8

	ld bc, $01d7                                     ; $5ad6: $01 $d7 $01
	push de                                          ; $5ad9: $d5
	ld bc, $01d3                                     ; $5ada: $01 $d3 $01
	ret nc                                           ; $5add: $d0

	ld bc, $01cf                                     ; $5ade: $01 $cf $01
	call z, $ca01                                    ; $5ae1: $cc $01 $ca
	ld bc, $01c9                                     ; $5ae4: $01 $c9 $01
	push bc                                          ; $5ae7: $c5
	ld bc, $01c3                                     ; $5ae8: $01 $c3 $01
	ret nz                                           ; $5aeb: $c0

	ld bc, $01be                                     ; $5aec: $01 $be $01
	cp d                                             ; $5aef: $ba
	ld bc, $01b7                                     ; $5af0: $01 $b7 $01
	or h                                             ; $5af3: $b4
	ld bc, $01b1                                     ; $5af4: $01 $b1 $01
	xor [hl]                                         ; $5af7: $ae
	ld bc, $01aa                                     ; $5af8: $01 $aa $01
	and a                                            ; $5afb: $a7
	ld bc, $01a2                                     ; $5afc: $01 $a2 $01
	sbc [hl]                                         ; $5aff: $9e
	ld bc, $019a                                     ; $5b00: $01 $9a $01
	sub a                                            ; $5b03: $97
	ld bc, $0191                                     ; $5b04: $01 $91 $01
	adc e                                            ; $5b07: $8b
	ld bc, $1f88                                     ; $5b08: $01 $88 $1f
	inc e                                            ; $5b0b: $1c
	ld a, [de]                                       ; $5b0c: $1a
	ldh [$e0], a                                     ; $5b0d: $e0 $e0
	ldh [$e0], a                                     ; $5b0f: $e0 $e0
	ldh [$e0], a                                     ; $5b11: $e0 $e0
	ldh [$e0], a                                     ; $5b13: $e0 $e0
	ldh [$e0], a                                     ; $5b15: $e0 $e0
	ldh [$50], a                                     ; $5b17: $e0 $50
	rst $38                                          ; $5b19: $ff
	rrca                                             ; $5b1a: $0f
	push de                                          ; $5b1b: $d5
	rrca                                             ; $5b1c: $0f
	push de                                          ; $5b1d: $d5
	ld bc, $02d5                                     ; $5b1e: $01 $d5 $02
	call nc, $d20b                                   ; $5b21: $d4 $0b $d2
	ld bc, $01d1                                     ; $5b24: $01 $d1 $01
	ret nc                                           ; $5b27: $d0

	inc bc                                           ; $5b28: $03
	rst GetHLinHL                                          ; $5b29: $cf
	ld bc, $02ce                                     ; $5b2a: $01 $ce $02
	call $cc01                                       ; $5b2d: $cd $01 $cc
	ld [bc], a                                       ; $5b30: $02
	rlc d                                            ; $5b31: $cb $02
	jp z, $c901                                      ; $5b33: $ca $01 $c9

	ld bc, $02c8                                     ; $5b36: $01 $c8 $02
	rst JumpTable                                          ; $5b39: $c7
	ld [bc], a                                       ; $5b3a: $02
	add $01                                          ; $5b3b: $c6 $01
	push bc                                          ; $5b3d: $c5
	ld [bc], a                                       ; $5b3e: $02
	call nz, $c301                                   ; $5b3f: $c4 $01 $c3
	ld bc, $01c2                                     ; $5b42: $01 $c2 $01
	ret nz                                           ; $5b45: $c0

	ld bc, $01bf                                     ; $5b46: $01 $bf $01
	cp [hl]                                          ; $5b49: $be
	ld bc, $01bd                                     ; $5b4a: $01 $bd $01
	cp h                                             ; $5b4d: $bc
	ld [bc], a                                       ; $5b4e: $02
	cp e                                             ; $5b4f: $bb
	ld bc, $01b8                                     ; $5b50: $01 $b8 $01
	or [hl]                                          ; $5b53: $b6
	ld bc, $01b5                                     ; $5b54: $01 $b5 $01
	or h                                             ; $5b57: $b4
	ld bc, $01b2                                     ; $5b58: $01 $b2 $01
	or b                                             ; $5b5b: $b0
	ld bc, $01ae                                     ; $5b5c: $01 $ae $01
	xor l                                            ; $5b5f: $ad
	ld bc, $01ab                                     ; $5b60: $01 $ab $01
	xor d                                            ; $5b63: $aa
	ld bc, $01a7                                     ; $5b64: $01 $a7 $01
	and l                                            ; $5b67: $a5
	ld bc, $01a2                                     ; $5b68: $01 $a2 $01
	and b                                            ; $5b6b: $a0
	ld bc, $019e                                     ; $5b6c: $01 $9e $01
	sbc c                                            ; $5b6f: $99
	ld bc, $0197                                     ; $5b70: $01 $97 $01
	sub h                                            ; $5b73: $94
	ld bc, $0190                                     ; $5b74: $01 $90 $01
	adc l                                            ; $5b77: $8d
	ld bc, $1d88                                     ; $5b78: $01 $88 $1d
	ld a, [de]                                       ; $5b7b: $1a
	ldh [$e0], a                                     ; $5b7c: $e0 $e0
	ldh [$e0], a                                     ; $5b7e: $e0 $e0
	ldh [$e0], a                                     ; $5b80: $e0 $e0
	ldh [$e0], a                                     ; $5b82: $e0 $e0
	ldh [$e0], a                                     ; $5b84: $e0 $e0
	ldh [rLCDC], a                                   ; $5b86: $e0 $40
	rst $38                                          ; $5b88: $ff
	ld bc, $01aa                                     ; $5b89: $01 $aa $01
	sbc h                                            ; $5b8c: $9c
	ld bc, $0191                                     ; $5b8d: $01 $91 $01
	adc d                                            ; $5b90: $8a
	ld e, $1b                                        ; $5b91: $1e $1b
	ld a, [de]                                       ; $5b93: $1a
	add hl, de                                       ; $5b94: $19
	ldh [$e0], a                                     ; $5b95: $e0 $e0
	ldh [$e0], a                                     ; $5b97: $e0 $e0
	ldh [$e0], a                                     ; $5b99: $e0 $e0
	ldh [$e0], a                                     ; $5b9b: $e0 $e0
	ldh [$e0], a                                     ; $5b9d: $e0 $e0
	ldh [$e0], a                                     ; $5b9f: $e0 $e0
	ldh [$e0], a                                     ; $5ba1: $e0 $e0
	ldh [$e0], a                                     ; $5ba3: $e0 $e0
	ldh [$a0], a                                     ; $5ba5: $e0 $a0
	rst $38                                          ; $5ba7: $ff
	db $10                                           ; $5ba8: $10
	add hl, de                                       ; $5ba9: $19
	ld a, [de]                                       ; $5baa: $1a
	dec de                                           ; $5bab: $1b
	inc e                                            ; $5bac: $1c
	ld e, $01                                        ; $5bad: $1e $01
	adc c                                            ; $5baf: $89
	ld bc, $018b                                     ; $5bb0: $01 $8b $01
	adc [hl]                                         ; $5bb3: $8e
	ld bc, $0190                                     ; $5bb4: $01 $90 $01
	sub d                                            ; $5bb7: $92
	ld bc, $0194                                     ; $5bb8: $01 $94 $01
	sub [hl]                                         ; $5bbb: $96
	ld bc, $0198                                     ; $5bbc: $01 $98 $01
	sbc c                                            ; $5bbf: $99
	inc bc                                           ; $5bc0: $03
	sbc d                                            ; $5bc1: $9a
	inc bc                                           ; $5bc2: $03
	sbc e                                            ; $5bc3: $9b
	rlca                                             ; $5bc4: $07
	sbc h                                            ; $5bc5: $9c
	ld bc, $039b                                     ; $5bc6: $01 $9b $03
	sbc d                                            ; $5bc9: $9a
	ld bc, $0199                                     ; $5bca: $01 $99 $01
	sbc b                                            ; $5bcd: $98
	ld bc, $0197                                     ; $5bce: $01 $97 $01
	sub [hl]                                         ; $5bd1: $96
	ld bc, $0195                                     ; $5bd2: $01 $95 $01
	sub h                                            ; $5bd5: $94
	ld bc, $0193                                     ; $5bd6: $01 $93 $01
	sub d                                            ; $5bd9: $92
	ld bc, $0190                                     ; $5bda: $01 $90 $01
	adc [hl]                                         ; $5bdd: $8e
	ld bc, $018d                                     ; $5bde: $01 $8d $01
	adc d                                            ; $5be1: $8a
	ld bc, $0189                                     ; $5be2: $01 $89 $01
	adc b                                            ; $5be5: $88
	rra                                              ; $5be6: $1f
	ld l, $2d                                        ; $5be7: $2e $2d
	inc e                                            ; $5be9: $1c
	dec sp                                           ; $5bea: $3b
	ld a, [hl-]                                      ; $5beb: $3a
	ldh [$e0], a                                     ; $5bec: $e0 $e0
	ldh [$e0], a                                     ; $5bee: $e0 $e0
	ldh [$e0], a                                     ; $5bf0: $e0 $e0
	ldh [$e0], a                                     ; $5bf2: $e0 $e0
	ldh [$e0], a                                     ; $5bf4: $e0 $e0
	ldh [$e0], a                                     ; $5bf6: $e0 $e0
	ldh [$e0], a                                     ; $5bf8: $e0 $e0
	jr nz, @+$01                                     ; $5bfa: $20 $ff

	inc bc                                           ; $5bfc: $03
	rst $38                                          ; $5bfd: $ff
	ld bc, $01fe                                     ; $5bfe: $01 $fe $01
	ld sp, hl                                        ; $5c01: $f9
	ld bc, $01f3                                     ; $5c02: $01 $f3 $01
	add sp, $01                                      ; $5c05: $e8 $01
	db $db                                           ; $5c07: $db
	ld bc, $01cf                                     ; $5c08: $01 $cf $01
	cp a                                             ; $5c0b: $bf
	ld bc, $01b3                                     ; $5c0c: $01 $b3 $01
	xor c                                            ; $5c0f: $a9
	ld bc, $01a0                                     ; $5c10: $01 $a0 $01
	sub l                                            ; $5c13: $95
	ldh [$e0], a                                     ; $5c14: $e0 $e0
	ldh [$e0], a                                     ; $5c16: $e0 $e0
	ldh [$e0], a                                     ; $5c18: $e0 $e0
	ldh [$e0], a                                     ; $5c1a: $e0 $e0
	ldh [$e0], a                                     ; $5c1c: $e0 $e0
	ldh [$e0], a                                     ; $5c1e: $e0 $e0
	ldh [$e0], a                                     ; $5c20: $e0 $e0
	ldh [$e0], a                                     ; $5c22: $e0 $e0
	ldh [rLCDC], a                                   ; $5c24: $e0 $40
	rst $38                                          ; $5c26: $ff
	cp $22                                           ; $5c27: $fe $22
	inc h                                            ; $5c29: $24
	ld [hl+], a                                      ; $5c2a: $22
	jr nz, jr_007_5c57                               ; $5c2b: $20 $2a

	inc l                                            ; $5c2d: $2c
	ld a, [hl+]                                      ; $5c2e: $2a

jr_007_5c2f:
	jr nz, jr_007_5c2f                               ; $5c2f: $20 $fe

	ld bc, $0195                                     ; $5c31: $01 $95 $01
	sub h                                            ; $5c34: $94
	ld bc, $0193                                     ; $5c35: $01 $93 $01
	sub d                                            ; $5c38: $92
	ld bc, $0191                                     ; $5c39: $01 $91 $01
	sub b                                            ; $5c3c: $90
	ld bc, $018f                                     ; $5c3d: $01 $8f $01
	adc [hl]                                         ; $5c40: $8e
	ld bc, $018d                                     ; $5c41: $01 $8d $01
	adc h                                            ; $5c44: $8c
	ld bc, $018b                                     ; $5c45: $01 $8b $01
	adc d                                            ; $5c48: $8a
	ld bc, $0189                                     ; $5c49: $01 $89 $01
	adc b                                            ; $5c4c: $88
	rra                                              ; $5c4d: $1f
	dec e                                            ; $5c4e: $1d
	inc e                                            ; $5c4f: $1c
	dec de                                           ; $5c50: $1b
	ld a, [de]                                       ; $5c51: $1a
	add hl, de                                       ; $5c52: $19
	db $10                                           ; $5c53: $10
	rst $38                                          ; $5c54: $ff
	add hl, de                                       ; $5c55: $19
	ld a, [de]                                       ; $5c56: $1a

jr_007_5c57:
	dec de                                           ; $5c57: $1b
	inc e                                            ; $5c58: $1c
	dec e                                            ; $5c59: $1d
	ld e, $1f                                        ; $5c5a: $1e $1f
	ld bc, $0188                                     ; $5c5c: $01 $88 $01
	adc c                                            ; $5c5f: $89
	ld bc, $018a                                     ; $5c60: $01 $8a $01
	adc e                                            ; $5c63: $8b
	ld bc, $018c                                     ; $5c64: $01 $8c $01
	adc l                                            ; $5c67: $8d
	ld bc, $018e                                     ; $5c68: $01 $8e $01
	adc a                                            ; $5c6b: $8f
	ld bc, $0190                                     ; $5c6c: $01 $90 $01
	sub c                                            ; $5c6f: $91
	ld bc, $0192                                     ; $5c70: $01 $92 $01
	sub e                                            ; $5c73: $93
	ld bc, $0194                                     ; $5c74: $01 $94 $01
	sub l                                            ; $5c77: $95
	rst $38                                          ; $5c78: $ff
	or a                                             ; $5c79: $b7
	and [hl]                                         ; $5c7a: $a6
	and l                                            ; $5c7b: $a5
	ld [hl], h                                       ; $5c7c: $74
	ld [hl], e                                       ; $5c7d: $73
	ld h, d                                          ; $5c7e: $62
	and c                                            ; $5c7f: $a1
	sub b                                            ; $5c80: $90
	xor c                                            ; $5c81: $a9
	xor d                                            ; $5c82: $aa
	xor e                                            ; $5c83: $ab
	cp h                                             ; $5c84: $bc
	xor l                                            ; $5c85: $ad
	ld l, $ff                                        ; $5c86: $2e $ff
	sub h                                            ; $5c88: $94
	sub h                                            ; $5c89: $94
	sub h                                            ; $5c8a: $94
	sub h                                            ; $5c8b: $94
	sub h                                            ; $5c8c: $94
	sub h                                            ; $5c8d: $94
	sub h                                            ; $5c8e: $94
	sub h                                            ; $5c8f: $94
	cp e                                             ; $5c90: $bb
	db $dd                                           ; $5c91: $dd
	sub l                                            ; $5c92: $95
	pop af                                           ; $5c93: $f1
	ldh a, [$ef]                                     ; $5c94: $f0 $ef
	call nz, $bec0                                   ; $5c96: $c4 $c0 $be
	jp nz, $c5f2                                     ; $5c99: $c2 $f2 $c5

	di                                               ; $5c9c: $f3
	db $f4                                           ; $5c9d: $f4
	push af                                          ; $5c9e: $f5
	sbc $96                                          ; $5c9f: $de $96
	ld sp, hl                                        ; $5ca1: $f9
	ld a, [$bdfb]                                    ; $5ca2: $fa $fb $bd
	rst SubAFromDE                                          ; $5ca5: $df
	or [hl]                                          ; $5ca6: $b6
	add sp, -$16                                     ; $5ca7: $e8 $ea
	db $ec                                           ; $5ca9: $ec
	db $ed                                           ; $5caa: $ed
	rst FarCall                                          ; $5cab: $f7
	ld hl, sp-$49                                    ; $5cac: $f8 $b7
	cp b                                             ; $5cae: $b8
	cp c                                             ; $5caf: $b9
	cp d                                             ; $5cb0: $ba
	xor $c1                                          ; $5cb1: $ee $c1
	db $eb                                           ; $5cb3: $eb
	jp hl                                            ; $5cb4: $e9


	cp a                                             ; $5cb5: $bf
	cp h                                             ; $5cb6: $bc
	jp $c9c6                                         ; $5cb7: $c3 $c6 $c9


	ret z                                            ; $5cba: $c8

	set 1, h                                         ; $5cbb: $cb $cc
	sbc b                                            ; $5cbd: $98
	sub a                                            ; $5cbe: $97
	db $fc                                           ; $5cbf: $fc
	db $fd                                           ; $5cc0: $fd
	cp $c7                                           ; $5cc1: $fe $c7
	jp z, $e5e4                                      ; $5cc3: $ca $e4 $e5

	rst SubAFromBC                                          ; $5cc6: $e7
	and $d6                                          ; $5cc7: $e6 $d6
	pop hl                                           ; $5cc9: $e1
	ldh [c], a                                       ; $5cca: $e2
	db $e3                                           ; $5ccb: $e3
	rst SubAFromHL                                          ; $5ccc: $d7
	ret c                                            ; $5ccd: $d8

	reti                                             ; $5cce: $d9


	jp c, $a3db                                      ; $5ccf: $da $db $a3

	and [hl]                                         ; $5cd2: $a6
	and a                                            ; $5cd3: $a7
	sbc a                                            ; $5cd4: $9f
	sbc c                                            ; $5cd5: $99
	and c                                            ; $5cd6: $a1
	and d                                            ; $5cd7: $a2
	and b                                            ; $5cd8: $a0
	call c, $cfce                                    ; $5cd9: $dc $ce $cf
	call $d3d4                                       ; $5cdc: $cd $d4 $d3
	ret nc                                           ; $5cdf: $d0

	pop de                                           ; $5ce0: $d1
	push de                                          ; $5ce1: $d5
	db $d2


SampleSources::
	BankAddr SampleData00
	BankAddr SampleData01
	BankAddr SampleData02
	BankAddr SampleData03
	BankAddr SampleData04
	BankAddr SampleData05
	BankAddr SampleData06
	BankAddr SampleData07
	BankAddr SampleData08
	BankAddr SampleData09
	BankAddr SampleData0a
	BankAddr SampleData0b
	BankAddr SampleData0c
	BankAddr SampleData0d
	BankAddr SampleData0e
	BankAddr SampleData0f
	BankAddr SampleData10
	BankAddr SampleData11
	BankAddr SampleData12
	BankAddr SampleData13
	BankAddr SampleData14
	BankAddr SampleData15
	BankAddr SampleData16
	BankAddr SampleData17
	BankAddr SampleData18
	BankAddr SampleData19
	BankAddr SampleData1a
	BankAddr SampleData1b
	BankAddr SampleData1c
	BankAddr SampleData1d
	BankAddr SampleData1e
	BankAddr SampleData1f
	BankAddr SampleData20
	BankAddr SampleData21
	BankAddr SampleData22
	BankAddr SampleData23
	BankAddr SampleData24
	BankAddr SampleData25
	BankAddr SampleData26
	BankAddr SampleData27
	BankAddr SampleData28
	BankAddr SampleData29
	BankAddr SampleData2a
	BankAddr SampleData2b
	BankAddr SampleData2c
	BankAddr SampleData2d
	BankAddr SampleData2e
	BankAddr SampleData2f
	BankAddr SampleData30
	BankAddr SampleData31
	BankAddr SampleData32
	BankAddr SampleData33
	BankAddr SampleData34
	BankAddr SampleData35
	BankAddr SampleData36
	BankAddr SampleData37
	BankAddr SampleData38
	BankAddr SampleData39
	BankAddr SampleData3a
	BankAddr SampleData3b
	BankAddr SampleData3c
	BankAddr SampleData3d
	BankAddr SampleData3e
	BankAddr SampleData3f
	BankAddr SampleData40
	BankAddr SampleData41
	BankAddr SampleData42
	BankAddr SampleData43
	BankAddr SampleData44
	BankAddr SampleData45
	BankAddr SampleData46
	BankAddr SampleData47
	BankAddr SampleData48
	BankAddr SampleData49
	BankAddr SampleData4a
	BankAddr SampleData4b
	BankAddr SampleData4c
	BankAddr SampleData4d
	BankAddr SampleData4e
	BankAddr SampleData4f
	BankAddr SampleData50
	BankAddr SampleData51
	BankAddr SampleData52
	BankAddr SampleData53
	BankAddr SampleData54
	BankAddr SampleData55
	BankAddr SampleData56
	BankAddr SampleData57
	BankAddr SampleData58
	BankAddr SampleData59
	BankAddr SampleData5a
	BankAddr SampleData5b
	BankAddr SampleData5c
	BankAddr SampleData5d
	BankAddr SampleData5e
	BankAddr SampleData5f
	BankAddr SampleData60
	BankAddr SampleData61
	BankAddr SampleData62
	BankAddr SampleData63
	BankAddr SampleData64
	BankAddr SampleData65
	BankAddr SampleData66
	BankAddr SampleData67
	BankAddr SampleData68
	BankAddr SampleData69
	BankAddr SampleData6a
	BankAddr SampleData6b
	BankAddr SampleData6c
	BankAddr SampleData6d
	BankAddr SampleData6e
	BankAddr SampleData6f
	BankAddr SampleData70
	BankAddr SampleData71
	BankAddr SampleData72
	BankAddr SampleData73
	BankAddr SampleData74
	BankAddr SampleData75
	BankAddr SampleData76
	BankAddr SampleData77
	BankAddr SampleData78
	BankAddr SampleData79
	BankAddr SampleData7a
	BankAddr SampleData7b
	BankAddr SampleData7c
	BankAddr SampleData7d
	BankAddr SampleData7e
	BankAddr SampleData7f
	BankAddr SampleData80
	BankAddr SampleData81
	BankAddr SampleData82
	BankAddr SampleData83
	BankAddr SampleData84
	BankAddr SampleData85
	BankAddr SampleData86
	BankAddr SampleData87
	BankAddr SampleData88
	BankAddr SampleData89
	BankAddr SampleData8a
	BankAddr SampleData8b
	BankAddr SampleData8c
	BankAddr SampleData8d
	BankAddr SampleData8e
	BankAddr SampleData8f
	BankAddr SampleData90
	BankAddr SampleData91
	BankAddr SampleData92
	BankAddr SampleData93
	BankAddr SampleData94
	BankAddr SampleData95
	BankAddr SampleData96
	BankAddr SampleData97


;
	ld a, [$c2c1]                                    ; $5eab: $fa $c1 $c2
	or a                                             ; $5eae: $b7
	jp z, Jump_007_5ff0                              ; $5eaf: $ca $f0 $5f

	ld a, [$c2ca]                                    ; $5eb2: $fa $ca $c2
	ld hl, $4000                                     ; $5eb5: $21 $00 $40
	call $1fa1                                       ; $5eb8: $cd $a1 $1f
	ld a, [$c2c1]                                    ; $5ebb: $fa $c1 $c2
	call $1fa1                                       ; $5ebe: $cd $a1 $1f
	ld a, [hl]                                       ; $5ec1: $7e
	and $7f                                          ; $5ec2: $e6 $7f
	ld [$c2c0], a                                    ; $5ec4: $ea $c0 $c2
	ld a, [hl+]                                      ; $5ec7: $2a
	and $80                                          ; $5ec8: $e6 $80
	ld [$c2c3], a                                    ; $5eca: $ea $c3 $c2
	ld a, [hl+]                                      ; $5ecd: $2a
	ld b, a                                          ; $5ece: $47
	ld a, [hl+]                                      ; $5ecf: $2a
	ld [$c2c2], a                                    ; $5ed0: $ea $c2 $c2
	ld a, b                                          ; $5ed3: $78
	ld e, l                                          ; $5ed4: $5d
	ld d, h                                          ; $5ed5: $54
	ld hl, $c280                                     ; $5ed6: $21 $80 $c2

jr_007_5ed9:
	or a                                             ; $5ed9: $b7
	jr z, jr_007_5ef2                                ; $5eda: $28 $16

	srl b                                            ; $5edc: $cb $38
	jr nc, jr_007_5eee                               ; $5ede: $30 $0e

	ld a, [$c2c0]                                    ; $5ee0: $fa $c0 $c2
	cp [hl]                                          ; $5ee3: $be
	jr c, jr_007_5eec                                ; $5ee4: $38 $06

	ld [hl+], a                                      ; $5ee6: $22
	call Call_007_5f2a                               ; $5ee7: $cd $2a $5f
	ld l, $80                                        ; $5eea: $2e $80

jr_007_5eec:
	inc de                                           ; $5eec: $13
	inc de                                           ; $5eed: $13

jr_007_5eee:
	inc h                                            ; $5eee: $24
	ld a, b                                          ; $5eef: $78
	jr jr_007_5ed9                                   ; $5ef0: $18 $e7

jr_007_5ef2:
	ld hl, $c28a                                     ; $5ef2: $21 $8a $c2
	bit 0, [hl]                                      ; $5ef5: $cb $46
	jr z, jr_007_5f00                                ; $5ef7: $28 $07

	ld h, $c5                                        ; $5ef9: $26 $c5
	bit 0, [hl]                                      ; $5efb: $cb $46
	call nz, Call_007_5f1c                           ; $5efd: $c4 $1c $5f

jr_007_5f00:
	ld hl, $c38a                                     ; $5f00: $21 $8a $c3
	bit 0, [hl]                                      ; $5f03: $cb $46
	ret z                                            ; $5f05: $c8

	ld h, $c7                                        ; $5f06: $26 $c7
	bit 0, [hl]                                      ; $5f08: $cb $46
	ret z                                            ; $5f0a: $c8

	ld l, $80                                        ; $5f0b: $2e $80
	ld a, [hl]                                       ; $5f0d: $7e
	ld h, $c3                                        ; $5f0e: $26 $c3
	cp [hl]                                          ; $5f10: $be
	ld l, $89                                        ; $5f11: $2e $89
	jr nc, jr_007_5f17                               ; $5f13: $30 $02

	ld h, $c7                                        ; $5f15: $26 $c7

jr_007_5f17:
	res 1, [hl]                                      ; $5f17: $cb $8e
	set 2, [hl]                                      ; $5f19: $cb $d6
	ret                                              ; $5f1b: $c9


Call_007_5f1c:
	ld l, $80                                        ; $5f1c: $2e $80
	ld a, [hl]                                       ; $5f1e: $7e
	ld h, $c2                                        ; $5f1f: $26 $c2
	cp [hl]                                          ; $5f21: $be
	ld l, $89                                        ; $5f22: $2e $89
	jr nc, jr_007_5f17                               ; $5f24: $30 $f1

	ld h, $c5                                        ; $5f26: $26 $c5
	jr jr_007_5f17                                   ; $5f28: $18 $ed

Call_007_5f2a:
	ld a, [$c2c2]                                    ; $5f2a: $fa $c2 $c2
	ld [hl+], a                                      ; $5f2d: $22
	ld a, [$c2c1]                                    ; $5f2e: $fa $c1 $c2
	ld [hl+], a                                      ; $5f31: $22
	ld a, [de]                                       ; $5f32: $1a
	ld [hl+], a                                      ; $5f33: $22
	inc de                                           ; $5f34: $13
	ld a, [de]                                       ; $5f35: $1a
	ld [hl+], a                                      ; $5f36: $22
	dec de                                           ; $5f37: $1b
	ld a, $30                                        ; $5f38: $3e $30
	ld [hl+], a                                      ; $5f3a: $22
	ld [hl+], a                                      ; $5f3b: $22
	ld a, $01                                        ; $5f3c: $3e $01
	ld [hl+], a                                      ; $5f3e: $22
	xor a                                            ; $5f3f: $af
	ld [hl+], a                                      ; $5f40: $22
	ld a, [$c2c3]                                    ; $5f41: $fa $c3 $c2
	set 1, a                                         ; $5f44: $cb $cf
	ld [hl+], a                                      ; $5f46: $22
	ld a, $01                                        ; $5f47: $3e $01
	ld [hl+], a                                      ; $5f49: $22
	xor a                                            ; $5f4a: $af
	call $cbea                                       ; $5f4b: $cd $ea $cb
	ld a, $08                                        ; $5f4e: $3e $08
	ld [hl+], a                                      ; $5f50: $22
	ld a, $ff                                        ; $5f51: $3e $ff
	ld [hl+], a                                      ; $5f53: $22
	ld a, $01                                        ; $5f54: $3e $01
	ld [hl+], a                                      ; $5f56: $22
	xor a                                            ; $5f57: $af
	call $cbe4                                       ; $5f58: $cd $e4 $cb
	ld a, $11                                        ; $5f5b: $3e $11
	ld [hl+], a                                      ; $5f5d: $22
	xor a                                            ; $5f5e: $af
	ld [hl+], a                                      ; $5f5f: $22
	ld [hl], a                                       ; $5f60: $77
	ld l, $a8                                        ; $5f61: $2e $a8
	ld [hl+], a                                      ; $5f63: $22
	ld [hl], a                                       ; $5f64: $77
	ld l, $b0                                        ; $5f65: $2e $b0
	ld [hl+], a                                      ; $5f67: $22
	ld [hl], a                                       ; $5f68: $77
	ld l, $b4                                        ; $5f69: $2e $b4
	ld [hl], a                                       ; $5f6b: $77
	ld a, h                                          ; $5f6c: $7c
	cp $c8                                           ; $5f6d: $fe $c8
	ret z                                            ; $5f6f: $c8

	push bc                                          ; $5f70: $c5
	push de                                          ; $5f71: $d5
	cp $c5                                           ; $5f72: $fe $c5
	jr z, jr_007_5f7c                                ; $5f74: $28 $06

	cp $c2                                           ; $5f76: $fe $c2
	jr z, jr_007_5f7c                                ; $5f78: $28 $02

	jr jr_007_5f80                                   ; $5f7a: $18 $04

jr_007_5f7c:
	ld a, $08                                        ; $5f7c: $3e $08
	ldh [rAUD1SWEEP], a                              ; $5f7e: $e0 $10

jr_007_5f80:
	ld de, $5ecf                                     ; $5f80: $11 $cf $5e
	ld a, h                                          ; $5f83: $7c
	call $1327                                       ; $5f84: $cd $27 $13
	ld a, [de]                                       ; $5f87: $1a
	ld b, a                                          ; $5f88: $47
	ld c, $25                                        ; $5f89: $0e $25
	ldh a, [c]                                       ; $5f8b: $f2
	or b                                             ; $5f8c: $b0
	ldh [c], a                                       ; $5f8d: $e2
	pop de                                           ; $5f8e: $d1
	pop bc                                           ; $5f8f: $c1
	ret                                              ; $5f90: $c9


	ld de, $8844                                     ; $5f91: $11 $44 $88
	ld de, $4422                                     ; $5f94: $11 $22 $44
	ld bc, $f8de                                     ; $5f97: $01 $de $f8
	ld a, [wInitialA]                                    ; $5f9a: $fa $00 $c1
	cp $11                                           ; $5f9d: $fe $11
	jr nz, jr_007_5fa5                               ; $5f9f: $20 $04

	sla b                                            ; $5fa1: $cb $20
	sla c                                            ; $5fa3: $cb $21

jr_007_5fa5:
	ld a, b                                          ; $5fa5: $78
	ld [$c2cb], a                                    ; $5fa6: $ea $cb $c2
	ld a, c                                          ; $5fa9: $79
	ld [$c2cc], a                                    ; $5faa: $ea $cc $c2
	ld c, $25                                        ; $5fad: $0e $25
	ld a, $ff                                        ; $5faf: $3e $ff
	ldh [c], a                                       ; $5fb1: $e2
	inc c                                            ; $5fb2: $0c
	ld a, $80                                        ; $5fb3: $3e $80
	ldh [c], a                                       ; $5fb5: $e2
	ld a, $80                                        ; $5fb6: $3e $80
	ldh [rAUD3ENA], a                                ; $5fb8: $e0 $1a
	ldh [rAUD3HIGH], a                               ; $5fba: $e0 $1e
	ld hl, $c2c4                                     ; $5fbc: $21 $c4 $c2
	xor a                                            ; $5fbf: $af
	call $cbec                                       ; $5fc0: $cd $ec $cb
	ld hl, $c2ca                                     ; $5fc3: $21 $ca $c2
	ld [hl], a                                       ; $5fc6: $77
	ld a, $12                                        ; $5fc7: $3e $12
	ld d, $c2                                        ; $5fc9: $16 $c2
	ld h, $c5                                        ; $5fcb: $26 $c5
	ld l, $bc                                        ; $5fcd: $2e $bc
	ld e, l                                          ; $5fcf: $5d
	ld [de], a                                       ; $5fd0: $12
	ld [hl+], a                                      ; $5fd1: $22
	inc a                                            ; $5fd2: $3c
	ld e, l                                          ; $5fd3: $5d
	ld [de], a                                       ; $5fd4: $12
	ld [hl-], a                                      ; $5fd5: $32
	inc h                                            ; $5fd6: $24
	ld a, $17                                        ; $5fd7: $3e $17
	ld [hl+], a                                      ; $5fd9: $22
	inc a                                            ; $5fda: $3c
	ld [hl-], a                                      ; $5fdb: $32
	ld d, $c7                                        ; $5fdc: $16 $c7
	ld h, $c3                                        ; $5fde: $26 $c3
	ld a, $1c                                        ; $5fe0: $3e $1c
	ld e, l                                          ; $5fe2: $5d
	ld [de], a                                       ; $5fe3: $12
	ld [hl+], a                                      ; $5fe4: $22
	inc a                                            ; $5fe5: $3c
	ld e, l                                          ; $5fe6: $5d
	ld [de], a                                       ; $5fe7: $12
	ld [hl-], a                                      ; $5fe8: $32
	inc h                                            ; $5fe9: $24
	ld a, $21                                        ; $5fea: $3e $21
	ld [hl+], a                                      ; $5fec: $22
	inc a                                            ; $5fed: $3c
	ld [hl], a                                       ; $5fee: $77
	ret                                              ; $5fef: $c9


Jump_007_5ff0:
	ld hl, $c280                                     ; $5ff0: $21 $80 $c2
	xor a                                            ; $5ff3: $af
	ld [hl+], a                                      ; $5ff4: $22
	ld [hl+], a                                      ; $5ff5: $22
	ld [hl-], a                                      ; $5ff6: $32
	dec l                                            ; $5ff7: $2d
	inc h                                            ; $5ff8: $24
	ld [hl+], a                                      ; $5ff9: $22
	ld [hl+], a                                      ; $5ffa: $22
	ld [hl-], a                                      ; $5ffb: $32
	dec l                                            ; $5ffc: $2d
	inc h                                            ; $5ffd: $24
	ld [hl+], a                                      ; $5ffe: $22
	ld [hl+], a                                      ; $5fff: $22
	ld [hl-], a                                      ; $6000: $32
	dec l                                            ; $6001: $2d
	inc h                                            ; $6002: $24
	ld [hl+], a                                      ; $6003: $22
	ld [hl+], a                                      ; $6004: $22
	ld [hl-], a                                      ; $6005: $32
	dec l                                            ; $6006: $2d
	inc h                                            ; $6007: $24
	ld [hl+], a                                      ; $6008: $22
	ld [hl+], a                                      ; $6009: $22
	ld [hl-], a                                      ; $600a: $32
	dec l                                            ; $600b: $2d
	inc h                                            ; $600c: $24
	ld [hl+], a                                      ; $600d: $22
	ld [hl+], a                                      ; $600e: $22
	ld [hl-], a                                      ; $600f: $32
	dec l                                            ; $6010: $2d
	inc h                                            ; $6011: $24
	ld [hl+], a                                      ; $6012: $22
	ld [hl+], a                                      ; $6013: $22
	ld [hl], a                                       ; $6014: $77
	ld l, $8a                                        ; $6015: $2e $8a
	ld [hl], a                                       ; $6017: $77
	dec h                                            ; $6018: $25
	ld [hl], a                                       ; $6019: $77
	dec h                                            ; $601a: $25
	ld [hl], a                                       ; $601b: $77
	dec h                                            ; $601c: $25
	ld [hl], a                                       ; $601d: $77
	dec h                                            ; $601e: $25
	ld [hl], a                                       ; $601f: $77
	dec h                                            ; $6020: $25
	ld [hl], a                                       ; $6021: $77
	dec h                                            ; $6022: $25
	ld [hl], a                                       ; $6023: $77
	ld hl, $c2c5                                     ; $6024: $21 $c5 $c2
	xor a                                            ; $6027: $af
	call $cbee                                       ; $6028: $cd $ee $cb
	ld c, $10                                        ; $602b: $0e $10
	xor a                                            ; $602d: $af
	ldh [c], a                                       ; $602e: $e2
	ld c, $12                                        ; $602f: $0e $12
	ldh [c], a                                       ; $6031: $e2
	ld c, $17                                        ; $6032: $0e $17
	ldh [c], a                                       ; $6034: $e2
	ld c, $1a                                        ; $6035: $0e $1a
	ldh [c], a                                       ; $6037: $e2
	ld c, $1c                                        ; $6038: $0e $1c
	ldh [c], a                                       ; $603a: $e2
	ld c, $21                                        ; $603b: $0e $21
	ldh [c], a                                       ; $603d: $e2
	ld a, $77                                        ; $603e: $3e $77
	ld c, $24                                        ; $6040: $0e $24
	ldh [c], a                                       ; $6042: $e2
	inc c                                            ; $6043: $0c
	ld a, $ff                                        ; $6044: $3e $ff
	ldh [c], a                                       ; $6046: $e2
	ret                                              ; $6047: $c9


Func_07_6048::
	ld h, $c2                                        ; $6048: $26 $c2
	call Call_007_605b                               ; $604a: $cd $5b $60
	inc h                                            ; $604d: $24
	call Call_007_605b                               ; $604e: $cd $5b $60
	ld h, $c5                                        ; $6051: $26 $c5
	call Call_007_605b                               ; $6053: $cd $5b $60
	inc h                                            ; $6056: $24
	call Call_007_605b                               ; $6057: $cd $5b $60
	inc h                                            ; $605a: $24

Call_007_605b:
	ld l, $8a                                        ; $605b: $2e $8a
	bit 0, [hl]                                      ; $605d: $cb $46
	ret z                                            ; $605f: $c8

	dec l                                            ; $6060: $2d
	bit 4, [hl]                                      ; $6061: $cb $66
	ret nz                                           ; $6063: $c0

	ld l, $89                                        ; $6064: $2e $89
	bit 1, [hl]                                      ; $6066: $cb $4e
	ret z                                            ; $6068: $c8

	set 0, [hl]                                      ; $6069: $cb $c6
	ld l, $9c                                        ; $606b: $2e $9c
	ld [hl], $ff                                     ; $606d: $36 $ff
	ld a, h                                          ; $606f: $7c
	cp $c3                                           ; $6070: $fe $c3
	jr z, jr_007_6083                                ; $6072: $28 $0f

	ld a, h                                          ; $6074: $7c
	cp $c6                                           ; $6075: $fe $c6
	jp z, $24c7                                      ; $6077: $ca $c7 $24

	cp $c2                                           ; $607a: $fe $c2
	ret nz                                           ; $607c: $c0

	call $24c7                                       ; $607d: $cd $c7 $24
	jp $24fc                                         ; $6080: $c3 $fc $24


jr_007_6083:
	rst FarCall                                          ; $6083: $f7
	ld h, c                                          ; $6084: $61
	inc h                                            ; $6085: $24
	nop                                              ; $6086: $00
	ret                                              ; $6087: $c9


	ldh [c], a                                       ; $6088: $e2
	ld bc, $000a                                     ; $6089: $01 $0a $00
	rst $38                                          ; $608c: $ff
	pop de                                           ; $608d: $d1
	db $e3                                           ; $608e: $e3
	jr z, @-$2d                                      ; $608f: $28 $d1

	ld bc, $c24f                                     ; $6091: $01 $4f $c2
	jr nz, @+$01                                     ; $6094: $20 $ff

	pop de                                           ; $6096: $d1
	db $e3                                           ; $6097: $e3
	jr z, @-$4d                                      ; $6098: $28 $b1

	ld bc, $c14f                                     ; $609a: $01 $4f $c1
	jr nz, @+$01                                     ; $609d: $20 $ff

	db $e3                                           ; $609f: $e3
	ld a, b                                          ; $60a0: $78
	pop af                                           ; $60a1: $f1
	ld [$994a], sp                                   ; $60a2: $08 $4a $99
	and [hl]                                         ; $60a5: $a6
	ld a, a                                          ; $60a6: $7f
	rst $38                                          ; $60a7: $ff
	db $e3                                           ; $60a8: $e3
	or h                                             ; $60a9: $b4
	pop af                                           ; $60aa: $f1
	ld [$8879], sp                                   ; $60ab: $08 $79 $88
	sbc c                                            ; $60ae: $99
	ld h, l                                          ; $60af: $65
	rst $38                                          ; $60b0: $ff
	db $e3                                           ; $60b1: $e3
	ld l, a                                          ; $60b2: $6f
	pop hl                                           ; $60b3: $e1
	rrca                                             ; $60b4: $0f
	ld a, c                                          ; $60b5: $79
	adc b                                            ; $60b6: $88
	sbc c                                            ; $60b7: $99
	ld [hl], a                                       ; $60b8: $77
	rst $38                                          ; $60b9: $ff
	ret nc                                           ; $60ba: $d0

	ld d, c                                          ; $60bb: $51
	ld a, l                                          ; $60bc: $7d
	nop                                              ; $60bd: $00
	or c                                             ; $60be: $b1
	pop bc                                           ; $60bf: $c1
	nop                                              ; $60c0: $00
	nop                                              ; $60c1: $00
	sub h                                            ; $60c2: $94
	rra                                              ; $60c3: $1f
	ld l, $06                                        ; $60c4: $2e $06
	sub [hl]                                         ; $60c6: $96
	ld b, $01                                        ; $60c7: $06 $01
	sub h                                            ; $60c9: $94
	inc a                                            ; $60ca: $3c
	dec de                                           ; $60cb: $1b
	ld b, $ff                                        ; $60cc: $06 $ff
	or [hl]                                          ; $60ce: $b6
	ld d, c                                          ; $60cf: $51
	pop bc                                           ; $60d0: $c1
	inc bc                                           ; $60d1: $03
	nop                                              ; $60d2: $00
	nop                                              ; $60d3: $00
	sub h                                            ; $60d4: $94
	rra                                              ; $60d5: $1f
	ld l, $06                                        ; $60d6: $2e $06
	sub [hl]                                         ; $60d8: $96
	ld b, $01                                        ; $60d9: $06 $01
	sub h                                            ; $60db: $94
	inc a                                            ; $60dc: $3c
	dec de                                           ; $60dd: $1b
	ld b, $ff                                        ; $60de: $06 $ff
	or [hl]                                          ; $60e0: $b6
	ld d, c                                          ; $60e1: $51
	pop bc                                           ; $60e2: $c1
	inc bc                                           ; $60e3: $03
	nop                                              ; $60e4: $00
	nop                                              ; $60e5: $00
	sub h                                            ; $60e6: $94
	ld [hl], $17                                     ; $60e7: $36 $17
	ld b, $96                                        ; $60e9: $06 $96
	ld b, $03                                        ; $60eb: $06 $03
	dec e                                            ; $60ed: $1d
	dec b                                            ; $60ee: $05
	rst $38                                          ; $60ef: $ff
	or h                                             ; $60f0: $b4
	ld d, c                                          ; $60f1: $51
	pop bc                                           ; $60f2: $c1
	inc bc                                           ; $60f3: $03
	sub h                                            ; $60f4: $94
	ld h, $19                                        ; $60f5: $26 $19
	ld b, $94                                        ; $60f7: $06 $94
	ld [$b4ff], sp                                   ; $60f9: $08 $ff $b4
	ld d, c                                          ; $60fc: $51
	or c                                             ; $60fd: $b1
	ld [bc], a                                       ; $60fe: $02
	sub h                                            ; $60ff: $94
	ld h, $19                                        ; $6100: $26 $19
	ld b, $94                                        ; $6102: $06 $94
	ld [$e3ff], sp                                   ; $6104: $08 $ff $e3
	halt                                             ; $6107: $76
	pop af                                           ; $6108: $f1
	rrca                                             ; $6109: $0f
	ld a, $22                                        ; $610a: $3e $22
	rst JumpTable                                          ; $610c: $c7
	dec a                                            ; $610d: $3d
	ld [hl+], a                                      ; $610e: $22
	rst $38                                          ; $610f: $ff
	db $e3                                           ; $6110: $e3
	inc e                                            ; $6111: $1c
	pop af                                           ; $6112: $f1
	ld [$225b], sp                                   ; $6113: $08 $5b $22
	db $e3                                           ; $6116: $e3
	ld [bc], a                                       ; $6117: $02
	pop bc                                           ; $6118: $c1
	ld [bc], a                                       ; $6119: $02

jr_007_611a:
	ld [hl+], a                                      ; $611a: $22
	rst $38                                          ; $611b: $ff
	db $e3                                           ; $611c: $e3
	ld l, [hl]                                       ; $611d: $6e
	pop hl                                           ; $611e: $e1
	ld [$4068], sp                                   ; $611f: $08 $68 $40
	nop                                              ; $6122: $00
	rst $38                                          ; $6123: $ff
	pop hl                                           ; $6124: $e1
	ld d, e                                          ; $6125: $53
	pop af                                           ; $6126: $f1
	ld hl, $cd07                                     ; $6127: $21 $07 $cd
	ld hl, $e107                                     ; $612a: $21 $07 $e1
	ld e, d                                          ; $612d: $5a
	ld h, c                                          ; $612e: $61
	ld [hl+], a                                      ; $612f: $22
	ld b, $c4                                        ; $6130: $06 $c4
	ld [hl+], a                                      ; $6132: $22
	inc b                                            ; $6133: $04
	rst $38                                          ; $6134: $ff
	or h                                             ; $6135: $b4
	ld h, h                                          ; $6136: $64
	pop af                                           ; $6137: $f1
	ld [bc], a                                       ; $6138: $02
	ld [hl], l                                       ; $6139: $75
	sub h                                            ; $613a: $94
	add hl, sp                                       ; $613b: $39
	rla                                              ; $613c: $17
	inc bc                                           ; $613d: $03
	nop                                              ; $613e: $00
	ld [bc], a                                       ; $613f: $02
	rst $38                                          ; $6140: $ff
	ret nc                                           ; $6141: $d0

	halt                                             ; $6142: $76
	sub e                                            ; $6143: $93
	ld a, [hl]                                       ; $6144: $7e
	nop                                              ; $6145: $00
	or c                                             ; $6146: $b1
	or c                                             ; $6147: $b1
	nop                                              ; $6148: $00
	nop                                              ; $6149: $00
	sub h                                            ; $614a: $94
	rla                                              ; $614b: $17
	ld h, e                                          ; $614c: $63
	cp [hl]                                          ; $614d: $be
	ld [bc], a                                       ; $614e: $02
	inc sp                                           ; $614f: $33
	ld [hl-], a                                      ; $6150: $32
	ld sp, $2f30                                     ; $6151: $31 $30 $2f
	ld l, $2d                                        ; $6154: $2e $2d
	inc l                                            ; $6156: $2c
	dec hl                                           ; $6157: $2b
	ld a, [hl+]                                      ; $6158: $2a
	add hl, hl                                       ; $6159: $29
	jr z, jr_007_611a                                ; $615a: $28 $be

	sub h                                            ; $615c: $94
	ld [$ff70], sp                                   ; $615d: $08 $70 $ff
	or [hl]                                          ; $6160: $b6
	halt                                             ; $6161: $76
	jp nc, $0000                                    ; $6162: $d2 $00 $00

	nop                                              ; $6165: $00
	ld a, [hl]                                       ; $6166: $7e
	add hl, bc                                       ; $6167: $09
	nop                                              ; $6168: $00
	and b                                            ; $6169: $a0
	jr c, jr_007_6171                                ; $616a: $38 $05

	nop                                              ; $616c: $00
	ld bc, $053b                                     ; $616d: $01 $3b $05
	nop                                              ; $6170: $00

jr_007_6171:
	ld bc, $107e                                     ; $6171: $01 $7e $10
	nop                                              ; $6174: $00
	and b                                            ; $6175: $a0
	add hl, sp                                       ; $6176: $39
	inc c                                            ; $6177: $0c
	or l                                             ; $6178: $b5
	or e                                             ; $6179: $b3
	nop                                              ; $617a: $00
	nop                                              ; $617b: $00
	nop                                              ; $617c: $00
	ld a, [hl]                                       ; $617d: $7e
	add hl, bc                                       ; $617e: $09
	nop                                              ; $617f: $00
	and b                                            ; $6180: $a0
	jr c, jr_007_6188                                ; $6181: $38 $05

	nop                                              ; $6183: $00
	ld bc, $053b                                     ; $6184: $01 $3b $05
	nop                                              ; $6187: $00

jr_007_6188:
	ld bc, $107e                                     ; $6188: $01 $7e $10
	nop                                              ; $618b: $00
	and b                                            ; $618c: $a0
	add hl, sp                                       ; $618d: $39
	inc c                                            ; $618e: $0c
	or l                                             ; $618f: $b5
	add d                                            ; $6190: $82
	nop                                              ; $6191: $00
	nop                                              ; $6192: $00
	nop                                              ; $6193: $00
	ld a, [hl]                                       ; $6194: $7e
	add hl, bc                                       ; $6195: $09
	nop                                              ; $6196: $00
	and b                                            ; $6197: $a0
	jr c, jr_007_619f                                ; $6198: $38 $05

	nop                                              ; $619a: $00
	ld bc, $053b                                     ; $619b: $01 $3b $05
	nop                                              ; $619e: $00

jr_007_619f:
	ld bc, $107e                                     ; $619f: $01 $7e $10
	nop                                              ; $61a2: $00
	and b                                            ; $61a3: $a0
	add hl, sp                                       ; $61a4: $39
	inc c                                            ; $61a5: $0c
	or l                                             ; $61a6: $b5
	ld h, d                                          ; $61a7: $62
	nop                                              ; $61a8: $00
	nop                                              ; $61a9: $00
	nop                                              ; $61aa: $00
	ld a, [hl]                                       ; $61ab: $7e
	add hl, bc                                       ; $61ac: $09
	nop                                              ; $61ad: $00
	and b                                            ; $61ae: $a0
	jr c, jr_007_61b6                                ; $61af: $38 $05

	nop                                              ; $61b1: $00
	ld bc, $053b                                     ; $61b2: $01 $3b $05
	nop                                              ; $61b5: $00

jr_007_61b6:
	ld bc, $107e                                     ; $61b6: $01 $7e $10
	nop                                              ; $61b9: $00
	and b                                            ; $61ba: $a0
	sub [hl]                                         ; $61bb: $96
	rst $38                                          ; $61bc: $ff
	rlca                                             ; $61bd: $07
	add hl, sp                                       ; $61be: $39
	dec bc                                           ; $61bf: $0b
	nop                                              ; $61c0: $00
	ld bc, $b4ff                                     ; $61c1: $01 $ff $b4
	ld h, h                                          ; $61c4: $64
	pop af                                           ; $61c5: $f1
	ld [bc], a                                       ; $61c6: $02
	ld [hl], l                                       ; $61c7: $75
	sub h                                            ; $61c8: $94
	add hl, sp                                       ; $61c9: $39
	rla                                              ; $61ca: $17
	inc bc                                           ; $61cb: $03
	nop                                              ; $61cc: $00
	ld [bc], a                                       ; $61cd: $02
	rst $38                                          ; $61ce: $ff
	db $e3                                           ; $61cf: $e3
	ld a, h                                          ; $61d0: $7c
	pop af                                           ; $61d1: $f1
	rrca                                             ; $61d2: $0f
	ccf                                              ; $61d3: $3f
	ld a, b                                          ; $61d4: $78
	ld b, c                                          ; $61d5: $41
	rst $38                                          ; $61d6: $ff
	db $e3                                           ; $61d7: $e3
	ld a, h                                          ; $61d8: $7c
	pop af                                           ; $61d9: $f1
	rrca                                             ; $61da: $0f
	ccf                                              ; $61db: $3f
	ld a, b                                          ; $61dc: $78
	ld b, c                                          ; $61dd: $41
	rst $38                                          ; $61de: $ff
	pop hl                                           ; $61df: $e1
	ld d, d                                          ; $61e0: $52
	pop hl                                           ; $61e1: $e1
	ld [hl+], a                                      ; $61e2: $22
	ld b, $c7                                        ; $61e3: $06 $c7
	ld [hl+], a                                      ; $61e5: $22
	ld b, $c5                                        ; $61e6: $06 $c5
	ld [hl+], a                                      ; $61e8: $22
	ld b, $c3                                        ; $61e9: $06 $c3
	ld [hl+], a                                      ; $61eb: $22
	ld b, $ff                                        ; $61ec: $06 $ff
	or [hl]                                          ; $61ee: $b6
	halt                                             ; $61ef: $76
	ld d, c                                          ; $61f0: $51
	inc bc                                           ; $61f1: $03
	nop                                              ; $61f2: $00
	nop                                              ; $61f3: $00
	sub h                                            ; $61f4: $94
	ccf                                              ; $61f5: $3f
	cp [hl]                                          ; $61f6: $be
	ld b, $3d                                        ; $61f7: $06 $3d
	ld a, $3f                                        ; $61f9: $3e $3f
	ld b, b                                          ; $61fb: $40
	cp [hl]                                          ; $61fc: $be
	add $41                                          ; $61fd: $c6 $41
	ld b, $42                                        ; $61ff: $06 $42
	ld b, $c7                                        ; $6201: $06 $c7
	ld b, e                                          ; $6203: $43
	ld b, $44                                        ; $6204: $06 $44

jr_007_6206:
	ld b, $ff                                        ; $6206: $06 $ff
	or h                                             ; $6208: $b4
	halt                                             ; $6209: $76
	pop hl                                           ; $620a: $e1
	inc bc                                           ; $620b: $03
	ld a, [hl]                                       ; $620c: $7e
	dec b                                            ; $620d: $05
	nop                                              ; $620e: $00
	and d                                            ; $620f: $a2
	or c                                             ; $6210: $b1
	and c                                            ; $6211: $a1
	nop                                              ; $6212: $00
	nop                                              ; $6213: $00
	ld [de], a                                       ; $6214: $12
	ld b, $97                                        ; $6215: $06 $97
	nop                                              ; $6217: $00
	call nz, $1293                                   ; $6218: $c4 $93 $12
	ld a, [bc]                                       ; $621b: $0a
	sub a                                            ; $621c: $97
	ld l, h                                          ; $621d: $6c
	sub d                                            ; $621e: $92
	ld [de], a                                       ; $621f: $12

Call_007_6220:
	ld [de], a                                       ; $6220: $12
	sub a                                            ; $6221: $97
	ld a, l                                          ; $6222: $7d
	sub c                                            ; $6223: $91
	ld [de], a                                       ; $6224: $12
	ld c, $97                                        ; $6225: $0e $97
	nop                                              ; $6227: $00
	rst $38                                          ; $6228: $ff
	db $e3                                           ; $6229: $e3
	ld a, h                                          ; $622a: $7c
	pop af                                           ; $622b: $f1
	rrca                                             ; $622c: $0f
	ccf                                              ; $622d: $3f
	ld a, b                                          ; $622e: $78

jr_007_622f:
	ld b, c                                          ; $622f: $41
	rst $38                                          ; $6230: $ff
	pop de                                           ; $6231: $d1
	db $e3                                           ; $6232: $e3
	jr z, jr_007_6206                                ; $6233: $28 $d1

	ld bc, $c24f                                     ; $6235: $01 $4f $c2
	jr nz, @+$01                                     ; $6238: $20 $ff

	pop de                                           ; $623a: $d1
	db $e3                                           ; $623b: $e3
	jr c, jr_007_622f                                ; $623c: $38 $f1

	ld bc, $ff00                                     ; $623e: $01 $00 $ff
	db $e3                                           ; $6241: $e3
	dec b                                            ; $6242: $05
	pop hl                                           ; $6243: $e1
	inc bc                                           ; $6244: $03
	ld [bc], a                                       ; $6245: $02
	rst $38                                          ; $6246: $ff
	or h                                             ; $6247: $b4
	ld h, h                                          ; $6248: $64
	pop af                                           ; $6249: $f1
	ld [bc], a                                       ; $624a: $02
	ld [hl], l                                       ; $624b: $75
	sub h                                            ; $624c: $94
	add hl, sp                                       ; $624d: $39
	rla                                              ; $624e: $17
	inc bc                                           ; $624f: $03
	nop                                              ; $6250: $00
	ld [bc], a                                       ; $6251: $02
	rst $38                                          ; $6252: $ff
	or h                                             ; $6253: $b4
	ld h, h                                          ; $6254: $64
	pop af                                           ; $6255: $f1
	ld [bc], a                                       ; $6256: $02
	ld [hl], l                                       ; $6257: $75
	sub h                                            ; $6258: $94
	add hl, sp                                       ; $6259: $39
	rla                                              ; $625a: $17
	inc bc                                           ; $625b: $03
	nop                                              ; $625c: $00
	ld [bc], a                                       ; $625d: $02
	rst $38                                          ; $625e: $ff
	db $e3                                           ; $625f: $e3
	ld a, h                                          ; $6260: $7c
	pop af                                           ; $6261: $f1
	rrca                                             ; $6262: $0f
	ccf                                              ; $6263: $3f
	ld a, b                                          ; $6264: $78
	ld b, c                                          ; $6265: $41
	rst $38                                          ; $6266: $ff
	db $e3                                           ; $6267: $e3
	ld a, h                                          ; $6268: $7c
	pop af                                           ; $6269: $f1
	rrca                                             ; $626a: $0f
	ccf                                              ; $626b: $3f
	ld a, b                                          ; $626c: $78
	ld b, c                                          ; $626d: $41
	rst $38                                          ; $626e: $ff
	pop hl                                           ; $626f: $e1
	ld d, e                                          ; $6270: $53
	pop af                                           ; $6271: $f1
	ld hl, $cd07                                     ; $6272: $21 $07 $cd
	ld hl, $e107                                     ; $6275: $21 $07 $e1
	ld e, d                                          ; $6278: $5a
	ld h, c                                          ; $6279: $61
	ld [hl+], a                                      ; $627a: $22
	ld b, $c4                                        ; $627b: $06 $c4
	ld [hl+], a                                      ; $627d: $22
	inc b                                            ; $627e: $04
	rst $38                                          ; $627f: $ff
	pop de                                           ; $6280: $d1
	db $e3                                           ; $6281: $e3
	ld c, a                                          ; $6282: $4f
	ld [hl], c                                       ; $6283: $71
	ld bc, $c304                                     ; $6284: $01 $04 $c3
	inc bc                                           ; $6287: $03
	rst $38                                          ; $6288: $ff
	pop de                                           ; $6289: $d1
	db $e3                                           ; $628a: $e3
	ld a, b                                          ; $628b: $78
	and c                                            ; $628c: $a1
	ld bc, $c504                                     ; $628d: $01 $04 $c5
	inc bc                                           ; $6290: $03
	rst $38                                          ; $6291: $ff
	pop de                                           ; $6292: $d1
	db $e3                                           ; $6293: $e3
	ld hl, $01f1                                     ; $6294: $21 $f1 $01
	inc b                                            ; $6297: $04
	ret z                                            ; $6298: $c8

	inc bc                                           ; $6299: $03
	ld bc, $e3ff                                     ; $629a: $01 $ff $e3
	rst $38                                          ; $629d: $ff
	pop af                                           ; $629e: $f1
	ld bc, $7942                                     ; $629f: $01 $42 $79
	or d                                             ; $62a2: $b2
	or a                                             ; $62a3: $b7
	rst $38                                          ; $62a4: $ff
	db $e3                                           ; $62a5: $e3
	rst $38                                          ; $62a6: $ff
	pop bc                                           ; $62a7: $c1
	ld bc, $7942                                     ; $62a8: $01 $42 $79
	or d                                             ; $62ab: $b2
	or a                                             ; $62ac: $b7
	rst $38                                          ; $62ad: $ff
	db $e3                                           ; $62ae: $e3
	rst $38                                          ; $62af: $ff
	add c                                            ; $62b0: $81
	ld bc, $7942                                     ; $62b1: $01 $42 $79
	or d                                             ; $62b4: $b2
	or a                                             ; $62b5: $b7
	rst $38                                          ; $62b6: $ff
	db $e3                                           ; $62b7: $e3
	rst $38                                          ; $62b8: $ff
	ld h, c                                          ; $62b9: $61
	ld bc, $7942                                     ; $62ba: $01 $42 $79
	or d                                             ; $62bd: $b2

jr_007_62be:
	or a                                             ; $62be: $b7
	rst $38                                          ; $62bf: $ff
	db $e3                                           ; $62c0: $e3
	rst $38                                          ; $62c1: $ff
	ld h, e                                          ; $62c2: $63
	ld bc, $7942                                     ; $62c3: $01 $42 $79
	or d                                             ; $62c6: $b2
	or a                                             ; $62c7: $b7
	rst $38                                          ; $62c8: $ff
	pop de                                           ; $62c9: $d1
	db $e3                                           ; $62ca: $e3
	jr c, jr_007_62be                                ; $62cb: $38 $f1

	ld bc, $ff00                                     ; $62cd: $01 $00 $ff
	db $e3                                           ; $62d0: $e3

jr_007_62d1:
	sub [hl]                                         ; $62d1: $96
	pop de                                           ; $62d2: $d1
	ld bc, $ff02                                     ; $62d3: $01 $02 $ff
	db $e3                                           ; $62d6: $e3
	sub [hl]                                         ; $62d7: $96
	pop hl                                           ; $62d8: $e1
	ld bc, $ff02                                     ; $62d9: $01 $02 $ff
	db $e3                                           ; $62dc: $e3
	jr c, jr_007_62d1                                ; $62dd: $38 $f2

	ld bc, $ff00                                     ; $62df: $01 $00 $ff
	db $e3                                           ; $62e2: $e3
	sub [hl]                                         ; $62e3: $96
	di                                               ; $62e4: $f3
	ld bc, $ff02                                     ; $62e5: $01 $02 $ff
	db $e3                                           ; $62e8: $e3
	jr c, @-$0b                                      ; $62e9: $38 $f3

	ld bc, $ff00                                     ; $62eb: $01 $00 $ff
	db $e3                                           ; $62ee: $e3
	sub [hl]                                         ; $62ef: $96
	ldh a, [c]                                       ; $62f0: $f2

jr_007_62f1:
	ld bc, $ff02                                     ; $62f1: $01 $02 $ff
	pop de                                           ; $62f4: $d1
	db $e3                                           ; $62f5: $e3
	jr c, jr_007_6359                                ; $62f6: $38 $61

	ld bc, $ff00                                     ; $62f8: $01 $00 $ff
	db $e3                                           ; $62fb: $e3
	sub [hl]                                         ; $62fc: $96
	add c                                            ; $62fd: $81
	ld bc, $ff02                                     ; $62fe: $01 $02 $ff
	ldh [c], a                                       ; $6301: $e2
	or c                                             ; $6302: $b1
	dec b                                            ; $6303: $05
	ld b, b                                          ; $6304: $40
	rst $38                                          ; $6305: $ff
	ldh [c], a                                       ; $6306: $e2
	add c                                            ; $6307: $81
	dec b                                            ; $6308: $05
	ld b, b                                          ; $6309: $40
	rst $38                                          ; $630a: $ff
	db $e3                                           ; $630b: $e3
	call c, $01f1                                    ; $630c: $dc $f1 $01
	ld sp, $ff04                                     ; $630f: $31 $04 $ff
	db $e3                                           ; $6312: $e3
	call c, $01f3                                    ; $6313: $dc $f3 $01
	ld [hl-], a                                      ; $6316: $32
	inc b                                            ; $6317: $04
	rst $38                                          ; $6318: $ff
	db $e3                                           ; $6319: $e3
	ld a, [$0841]                                    ; $631a: $fa $41 $08
	ld sp, $0014                                     ; $631d: $31 $14 $00
	nop                                              ; $6320: $00
	rst $38                                          ; $6321: $ff
	db $e3                                           ; $6322: $e3
	call c, $0881                                    ; $6323: $dc $81 $08
	ld sp, $0004                                     ; $6326: $31 $04 $00
	rst $38                                          ; $6329: $ff
	db $e3                                           ; $632a: $e3
	call c, $0893                                    ; $632b: $dc $93 $08
	ld [hl-], a                                      ; $632e: $32
	inc b                                            ; $632f: $04
	rst $38                                          ; $6330: $ff
	db $e3                                           ; $6331: $e3
	jr z, @-$6d                                      ; $6332: $28 $91

	rlca                                             ; $6334: $07
	ld b, b                                          ; $6335: $40
	ld hl, $ff11                                     ; $6336: $21 $11 $ff
	ldh [c], a                                       ; $6339: $e2
	pop de                                           ; $633a: $d1
	inc bc                                           ; $633b: $03
	inc bc                                           ; $633c: $03
	rst $38                                          ; $633d: $ff
	db $e3                                           ; $633e: $e3
	dec hl                                           ; $633f: $2b
	pop hl                                           ; $6340: $e1
	ld bc, $c24f                                     ; $6341: $01 $4f $c2
	jr nz, @+$01                                     ; $6344: $20 $ff

	or h                                             ; $6346: $b4
	ld h, h                                          ; $6347: $64
	pop af                                           ; $6348: $f1
	ld [bc], a                                       ; $6349: $02
	ld [hl], a                                       ; $634a: $77
	sub h                                            ; $634b: $94
	add hl, sp                                       ; $634c: $39
	rla                                              ; $634d: $17
	inc b                                            ; $634e: $04
	nop                                              ; $634f: $00
	ld bc, $b4ff                                     ; $6350: $01 $ff $b4
	ld h, h                                          ; $6353: $64
	pop af                                           ; $6354: $f1
	ld [bc], a                                       ; $6355: $02
	ld [hl], a                                       ; $6356: $77
	sub h                                            ; $6357: $94
	add hl, sp                                       ; $6358: $39

jr_007_6359:
	rla                                              ; $6359: $17

jr_007_635a:
	inc b                                            ; $635a: $04
	nop                                              ; $635b: $00
	ld bc, $e3ff                                     ; $635c: $01 $ff $e3
	ld l, [hl]                                       ; $635f: $6e
	pop hl                                           ; $6360: $e1
	ld [$4068], sp                                   ; $6361: $08 $68 $40
	nop                                              ; $6364: $00
	rst $38                                          ; $6365: $ff
	db $e3                                           ; $6366: $e3
	jr c, jr_007_635a                                ; $6367: $38 $f1

	ld bc, $ff00                                     ; $6369: $01 $00 $ff
	pop de                                           ; $636c: $d1
	db $e3                                           ; $636d: $e3
	jr c, jr_007_62f1                                ; $636e: $38 $81

	ld bc, $ff00                                     ; $6370: $01 $00 $ff
	or h                                             ; $6373: $b4
	ld h, h                                          ; $6374: $64
	pop af                                           ; $6375: $f1
	ld [bc], a                                       ; $6376: $02
	ld [hl], a                                       ; $6377: $77
	sub h                                            ; $6378: $94
	add hl, sp                                       ; $6379: $39
	rla                                              ; $637a: $17
	inc b                                            ; $637b: $04
	nop                                              ; $637c: $00
	ld bc, $e3ff                                     ; $637d: $01 $ff $e3
	db $ec                                           ; $6380: $ec
	or c                                             ; $6381: $b1
	inc b                                            ; $6382: $04
	ld b, b                                          ; $6383: $40
	rst $38                                          ; $6384: $ff
	db $e3                                           ; $6385: $e3
	db $ec                                           ; $6386: $ec
	or c                                             ; $6387: $b1
	inc b                                            ; $6388: $04
	ld b, b                                          ; $6389: $40
	rst $38                                          ; $638a: $ff
	pop hl                                           ; $638b: $e1
	ld [hl], d                                       ; $638c: $72
	pop af                                           ; $638d: $f1
	ld hl, $cd07                                     ; $638e: $21 $07 $cd
	ld hl, $e107                                     ; $6391: $21 $07 $e1
	ld e, [hl]                                       ; $6394: $5e
	ld h, c                                          ; $6395: $61
	ld [hl+], a                                      ; $6396: $22
	ld b, $c4                                        ; $6397: $06 $c4
	ld [hl+], a                                      ; $6399: $22
	inc b                                            ; $639a: $04
	rst $38                                          ; $639b: $ff
	db $e3                                           ; $639c: $e3
	dec b                                            ; $639d: $05
	pop bc                                           ; $639e: $c1
	inc bc                                           ; $639f: $03
	ld [bc], a                                       ; $63a0: $02
	rst $38                                          ; $63a1: $ff
	pop hl                                           ; $63a2: $e1
	ld e, $31                                        ; $63a3: $1e $31
	nop                                              ; $63a5: $00
	nop                                              ; $63a6: $00
	call nz, $c501                                   ; $63a7: $c4 $01 $c5
	ld bc, $c601                                     ; $63aa: $01 $01 $c6
	ld bc, $01c7                                     ; $63ad: $01 $c7 $01
	ret z                                            ; $63b0: $c8

	ld bc, $c901                                     ; $63b1: $01 $01 $c9
	ld bc, $ca01                                     ; $63b4: $01 $01 $ca
	db $10                                           ; $63b7: $10
	db $10                                           ; $63b8: $10
	db $10                                           ; $63b9: $10
	rl b                                             ; $63ba: $cb $10
	db $10                                           ; $63bc: $10
	db $10                                           ; $63bd: $10
	db $10                                           ; $63be: $10
	db $10                                           ; $63bf: $10
	db $10                                           ; $63c0: $10
	ld bc, $0101                                     ; $63c1: $01 $01 $01
	ld bc, $01ca                                     ; $63c4: $01 $ca $01
	ld bc, $c801                                     ; $63c7: $01 $01 $c8
	ld bc, $0101                                     ; $63ca: $01 $01 $01
	add $01                                          ; $63cd: $c6 $01
	ld bc, $c401                                     ; $63cf: $01 $01 $c4
	ld bc, $0101                                     ; $63d2: $01 $01 $01
	ld bc, $e1ff                                     ; $63d5: $01 $ff $e1
	rrca                                             ; $63d8: $0f
	ld sp, $c400                                     ; $63d9: $31 $00 $c4
	nop                                              ; $63dc: $00
	push bc                                          ; $63dd: $c5
	ld bc, $01c6                                     ; $63de: $01 $c6 $01
	ld bc, $01c7                                     ; $63e1: $01 $c7 $01
	ld bc, $01c8                                     ; $63e4: $01 $c8 $01
	ld bc, $01ca                                     ; $63e7: $01 $ca $01
	ld bc, $1010                                     ; $63ea: $01 $10 $10
	db $10                                           ; $63ed: $10
	rl b                                             ; $63ee: $cb $10
	db $10                                           ; $63f0: $10
	db $10                                           ; $63f1: $10
	db $10                                           ; $63f2: $10
	db $10                                           ; $63f3: $10
	db $10                                           ; $63f4: $10
	ld bc, $0101                                     ; $63f5: $01 $01 $01
	ld bc, $01ca                                     ; $63f8: $01 $ca $01
	ld bc, $0101                                     ; $63fb: $01 $01 $01
	ld bc, $0101                                     ; $63fe: $01 $01 $01
	ret z                                            ; $6401: $c8

	ld bc, $0101                                     ; $6402: $01 $01 $01
	ld bc, $c601                                     ; $6405: $01 $01 $c6
	ld bc, $0101                                     ; $6408: $01 $01 $01
	ld bc, $01c4                                     ; $640b: $01 $c4 $01
	ld bc, $0101                                     ; $640e: $01 $01 $01
	rst $38                                          ; $6411: $ff
	pop hl                                           ; $6412: $e1
	add hl, de                                       ; $6413: $19
	pop af                                           ; $6414: $f1
	sbc b                                            ; $6415: $98
	sbc c                                            ; $6416: $99
	ret nc                                           ; $6417: $d0

	jr z, jr_007_6492                                ; $6418: $28 $78

	jp z, $c978                                      ; $641a: $ca $78 $c9

	ld a, b                                          ; $641d: $78
	ret z                                            ; $641e: $c8

	ld a, b                                          ; $641f: $78
	rst JumpTable                                          ; $6420: $c7
	ld a, b                                          ; $6421: $78
	push bc                                          ; $6422: $c5
	ld a, b                                          ; $6423: $78
	jp $c278                                         ; $6424: $c3 $78 $c2


	ld a, b                                          ; $6427: $78
	jp nz, $ff78                                     ; $6428: $c2 $78 $ff

	pop hl                                           ; $642b: $e1
	add hl, de                                       ; $642c: $19
	pop de                                           ; $642d: $d1
	sbc b                                            ; $642e: $98
	sbc c                                            ; $642f: $99
	ret nc                                           ; $6430: $d0

	jr z, @+$7a                                      ; $6431: $28 $78

	ret z                                            ; $6433: $c8

	ld a, b                                          ; $6434: $78
	rst JumpTable                                          ; $6435: $c7
	ld a, b                                          ; $6436: $78
	add $78                                          ; $6437: $c6 $78
	push bc                                          ; $6439: $c5
	ld a, b                                          ; $643a: $78
	call nz, $c378                                   ; $643b: $c4 $78 $c3
	ld a, b                                          ; $643e: $78
	jp nz, $c278                                     ; $643f: $c2 $78 $c2

	ld a, b                                          ; $6442: $78
	rst $38                                          ; $6443: $ff
	pop hl                                           ; $6444: $e1
	add hl, de                                       ; $6445: $19
	and c                                            ; $6446: $a1
	sbc b                                            ; $6447: $98
	sbc c                                            ; $6448: $99
	ret nc                                           ; $6449: $d0

	jr z, @+$7a                                      ; $644a: $28 $78

	rst JumpTable                                          ; $644c: $c7
	ld a, b                                          ; $644d: $78
	add $78                                          ; $644e: $c6 $78
	push bc                                          ; $6450: $c5
	ld a, b                                          ; $6451: $78
	call nz, $c378                                   ; $6452: $c4 $78 $c3
	ld a, b                                          ; $6455: $78
	jp nz, $c278                                     ; $6456: $c2 $78 $c2

	ld a, b                                          ; $6459: $78
	rst $38                                          ; $645a: $ff
	pop hl                                           ; $645b: $e1
	add hl, de                                       ; $645c: $19
	ld [hl], c                                       ; $645d: $71
	sbc b                                            ; $645e: $98
	sbc c                                            ; $645f: $99
	ret nc                                           ; $6460: $d0

	jr z, @+$7a                                      ; $6461: $28 $78

	add $78                                          ; $6463: $c6 $78
	push bc                                          ; $6465: $c5
	ld a, b                                          ; $6466: $78
	call nz, $c378                                   ; $6467: $c4 $78 $c3
	ld a, b                                          ; $646a: $78
	jp nz, $c278                                     ; $646b: $c2 $78 $c2

	ld a, b                                          ; $646e: $78
	jp nz, $ff78                                     ; $646f: $c2 $78 $ff

	db $e3                                           ; $6472: $e3
	ld a, b                                          ; $6473: $78
	pop bc                                           ; $6474: $c1
	ld bc, $c14b                                     ; $6475: $01 $4b $c1
	ld c, h                                          ; $6478: $4c
	rst $38                                          ; $6479: $ff
	ldh [c], a                                       ; $647a: $e2
	and c                                            ; $647b: $a1
	rlca                                             ; $647c: $07
	inc bc                                           ; $647d: $03
	rst $38                                          ; $647e: $ff
	ldh [c], a                                       ; $647f: $e2
	add c                                            ; $6480: $81
	inc b                                            ; $6481: $04
	inc bc                                           ; $6482: $03
	ldh [c], a                                       ; $6483: $e2
	ld sp, $0307                                     ; $6484: $31 $07 $03
	rst $38                                          ; $6487: $ff
	db $e3                                           ; $6488: $e3
	inc b                                            ; $6489: $04
	pop hl                                           ; $648a: $e1
	ld [bc], a                                       ; $648b: $02
	ld [bc], a                                       ; $648c: $02
	rst $38                                          ; $648d: $ff
	ldh [c], a                                       ; $648e: $e2
	pop af                                           ; $648f: $f1
	ld a, [bc]                                       ; $6490: $0a
	rlca                                             ; $6491: $07

jr_007_6492:
	ld e, b                                          ; $6492: $58
	sbc l                                            ; $6493: $9d
	or a                                             ; $6494: $b7
	rst $38                                          ; $6495: $ff
	db $e3                                           ; $6496: $e3
	ld e, [hl]                                       ; $6497: $5e
	pop bc                                           ; $6498: $c1
	ld [$4075], sp                                   ; $6499: $08 $75 $40
	nop                                              ; $649c: $00
	rst $38                                          ; $649d: $ff
	db $e3                                           ; $649e: $e3
	ld e, [hl]                                       ; $649f: $5e
	add c                                            ; $64a0: $81
	ld [$4072], sp                                   ; $64a1: $08 $72 $40
	nop                                              ; $64a4: $00
	nop                                              ; $64a5: $00
	rst $38                                          ; $64a6: $ff
	db $e3                                           ; $64a7: $e3
	ld e, [hl]                                       ; $64a8: $5e
	ld b, c                                          ; $64a9: $41
	ld [$4065], sp                                   ; $64aa: $08 $65 $40
	nop                                              ; $64ad: $00
	nop                                              ; $64ae: $00
	rst $38                                          ; $64af: $ff
	db $e3                                           ; $64b0: $e3
	ld l, [hl]                                       ; $64b1: $6e
	pop af                                           ; $64b2: $f1
	ld bc, $1552                                     ; $64b3: $01 $52 $15
	adc $21                                          ; $64b6: $ce $21
	ld bc, $00cd                                     ; $64b8: $01 $cd $00
	rlc b                                            ; $64bb: $cb $00
	rst JumpTable                                          ; $64bd: $c7
	nop                                              ; $64be: $00
	rst $38                                          ; $64bf: $ff
	db $e3                                           ; $64c0: $e3
	ld e, d                                          ; $64c1: $5a
	pop af                                           ; $64c2: $f1
	ld bc, $7840                                     ; $64c3: $01 $40 $78
	sub [hl]                                         ; $64c6: $96
	rst $38                                          ; $64c7: $ff
	db $e3                                           ; $64c8: $e3
	ld e, d                                          ; $64c9: $5a
	ldh a, [c]                                       ; $64ca: $f2
	ld [bc], a                                       ; $64cb: $02
	ld b, c                                          ; $64cc: $41
	ld l, b                                          ; $64cd: $68
	sub l                                            ; $64ce: $95
	rst $38                                          ; $64cf: $ff
	db $e3                                           ; $64d0: $e3
	ld a, b                                          ; $64d1: $78
	pop af                                           ; $64d2: $f1
	ld [$3120], sp                                   ; $64d3: $08 $20 $31
	ld b, $c6                                        ; $64d6: $06 $c6
	jr nz, @+$33                                     ; $64d8: $20 $31

	ld b, $c4                                        ; $64da: $06 $c4
	jr nz, jr_007_650f                               ; $64dc: $20 $31

	ld b, $c2                                        ; $64de: $06 $c2
	jr nz, @+$33                                     ; $64e0: $20 $31

	ld b, $ff                                        ; $64e2: $06 $ff
	db $e3                                           ; $64e4: $e3
	add d                                            ; $64e5: $82
	pop af                                           ; $64e6: $f1
	ld bc, $6903                                     ; $64e7: $01 $03 $69
	rst $38                                          ; $64ea: $ff
	db $e3                                           ; $64eb: $e3
	add d                                            ; $64ec: $82
	ldh a, [c]                                       ; $64ed: $f2
	ld bc, $6903                                     ; $64ee: $01 $03 $69
	rst $38                                          ; $64f1: $ff
	db $e3                                           ; $64f2: $e3
	add d                                            ; $64f3: $82
	and c                                            ; $64f4: $a1
	ld bc, $6903                                     ; $64f5: $01 $03 $69
	rst $38                                          ; $64f8: $ff
	db $e3                                           ; $64f9: $e3
	add d                                            ; $64fa: $82
	di                                               ; $64fb: $f3
	ld bc, $6903                                     ; $64fc: $01 $03 $69
	rst $38                                          ; $64ff: $ff
	db $e3                                           ; $6500: $e3
	add d                                            ; $6501: $82
	add c                                            ; $6502: $81
	ld bc, $6903                                     ; $6503: $01 $03 $69
	rst $38                                          ; $6506: $ff
	db $e3                                           ; $6507: $e3
	add d                                            ; $6508: $82
	ld h, c                                          ; $6509: $61
	ld bc, $6903                                     ; $650a: $01 $03 $69
	rst $38                                          ; $650d: $ff
	db $e3                                           ; $650e: $e3

jr_007_650f:
	add d                                            ; $650f: $82
	ld b, e                                          ; $6510: $43
	ld bc, $6903                                     ; $6511: $01 $03 $69
	rst $38                                          ; $6514: $ff
	pop de                                           ; $6515: $d1
	db $e3                                           ; $6516: $e3
	ld c, a                                          ; $6517: $4f
	ld [hl], c                                       ; $6518: $71
	ld bc, $c304                                     ; $6519: $01 $04 $c3
	inc bc                                           ; $651c: $03
	rst $38                                          ; $651d: $ff
	pop de                                           ; $651e: $d1
	db $e3                                           ; $651f: $e3
	ld a, b                                          ; $6520: $78
	and c                                            ; $6521: $a1
	ld bc, $c504                                     ; $6522: $01 $04 $c5
	inc bc                                           ; $6525: $03
	rst $38                                          ; $6526: $ff
	pop de                                           ; $6527: $d1
	db $e3                                           ; $6528: $e3
	ld hl, $01f1                                     ; $6529: $21 $f1 $01
	inc b                                            ; $652c: $04
	ret z                                            ; $652d: $c8

	inc bc                                           ; $652e: $03
	ld bc, wPtrToScriptStack+1                                     ; $652f: $01 $ff $d1
	db $e3                                           ; $6532: $e3
	ld hl, $01a1                                     ; $6533: $21 $a1 $01
	inc b                                            ; $6536: $04
	rst JumpTable                                          ; $6537: $c7
	inc bc                                           ; $6538: $03
	ld bc, wPtrToScriptStack+1                                     ; $6539: $01 $ff $d1
	db $e3                                           ; $653c: $e3
	ld hl, $0281                                     ; $653d: $21 $81 $02
	inc b                                            ; $6540: $04
	call nz, $0103                                   ; $6541: $c4 $03 $01
	rst $38                                          ; $6544: $ff
	pop de                                           ; $6545: $d1
	db $e3                                           ; $6546: $e3
	ld hl, $0361                                     ; $6547: $21 $61 $03
	inc b                                            ; $654a: $04
	jp nz, $0103                                     ; $654b: $c2 $03 $01

	rst $38                                          ; $654e: $ff
	pop de                                           ; $654f: $d1
	db $e3                                           ; $6550: $e3
	ld hl, $0621                                     ; $6551: $21 $21 $06
	inc b                                            ; $6554: $04
	pop bc                                           ; $6555: $c1
	inc bc                                           ; $6556: $03
	ld bc, $e3ff                                     ; $6557: $01 $ff $e3
	jr z, @-$5d                                      ; $655a: $28 $a1

	ld bc, $ff60                                     ; $655c: $01 $60 $ff
	or h                                             ; $655f: $b4
	pop hl                                           ; $6560: $e1
	add c                                            ; $6561: $81
	inc bc                                           ; $6562: $03
	ld a, [hl]                                       ; $6563: $7e
	dec h                                            ; $6564: $25
	nop                                              ; $6565: $00
	xor c                                            ; $6566: $a9
	sub [hl]                                         ; $6567: $96
	db $10                                           ; $6568: $10
	ld [bc], a                                       ; $6569: $02
	ld [hl+], a                                      ; $656a: $22
	db $10                                           ; $656b: $10
	or c                                             ; $656c: $b1
	ld de, $0000                                     ; $656d: $11 $00 $00
	ld [hl+], a                                      ; $6570: $22
	db $10                                           ; $6571: $10
	rst $38                                          ; $6572: $ff
	db $e3                                           ; $6573: $e3
	ld e, $51                                        ; $6574: $1e $51
	inc bc                                           ; $6576: $03
	ld l, c                                          ; $6577: $69
	rst $38                                          ; $6578: $ff
	or h                                             ; $6579: $b4
	pop hl                                           ; $657a: $e1
	add c                                            ; $657b: $81
	inc bc                                           ; $657c: $03
	ld a, [hl]                                       ; $657d: $7e
	dec h                                            ; $657e: $25
	nop                                              ; $657f: $00
	xor c                                            ; $6580: $a9
	sub [hl]                                         ; $6581: $96
	db $10                                           ; $6582: $10
	ld [bc], a                                       ; $6583: $02
	add hl, de                                       ; $6584: $19
	db $10                                           ; $6585: $10
	or c                                             ; $6586: $b1

Jump_007_6587:
	ld de, $0000                                     ; $6587: $11 $00 $00
	add hl, de                                       ; $658a: $19
	db $10                                           ; $658b: $10
	rst $38                                          ; $658c: $ff
	db $e3                                           ; $658d: $e3
	ld e, $51                                        ; $658e: $1e $51
	inc bc                                           ; $6590: $03
	ld l, c                                          ; $6591: $69
	rst $38                                          ; $6592: $ff
	or h                                             ; $6593: $b4
	pop bc                                           ; $6594: $c1
	or c                                             ; $6595: $b1
	ld [bc], a                                       ; $6596: $02
	ld a, [hl]                                       ; $6597: $7e
	ld c, $00                                        ; $6598: $0e $00
	and e                                            ; $659a: $a3
	inc e                                            ; $659b: $1c
	ld b, $ff                                        ; $659c: $06 $ff
	db $e3                                           ; $659e: $e3
	jp z, $0291                                      ; $659f: $ca $91 $02

	jr c, jr_007_65e7                                ; $65a2: $38 $43

	ld b, d                                          ; $65a4: $42
	ld b, c                                          ; $65a5: $41
	rst $38                                          ; $65a6: $ff
	or h                                             ; $65a7: $b4
	res 2, c                                         ; $65a8: $cb $91
	ld [bc], a                                       ; $65aa: $02
	ld a, [hl]                                       ; $65ab: $7e
	ld c, $00                                        ; $65ac: $0e $00
	and c                                            ; $65ae: $a1
	ld a, l                                          ; $65af: $7d
	ld d, $1a                                        ; $65b0: $16 $1a
	rlca                                             ; $65b2: $07
	rst $38                                          ; $65b3: $ff
	db $e3                                           ; $65b4: $e3
	jp z, $0291                                      ; $65b5: $ca $91 $02

	jr c, jr_007_65fd                                ; $65b8: $38 $43

	ld b, d                                          ; $65ba: $42
	ld b, c                                          ; $65bb: $41
	rst $38                                          ; $65bc: $ff
	or h                                             ; $65bd: $b4
	res 2, c                                         ; $65be: $cb $91
	ld [bc], a                                       ; $65c0: $02
	ld a, [hl]                                       ; $65c1: $7e
	ld c, $00                                        ; $65c2: $0e $00
	and d                                            ; $65c4: $a2
	ld a, l                                          ; $65c5: $7d
	dec b                                            ; $65c6: $05
	ld [de], a                                       ; $65c7: $12
	rlca                                             ; $65c8: $07
	rst $38                                          ; $65c9: $ff
	db $e3                                           ; $65ca: $e3
	jp z, $0291                                      ; $65cb: $ca $91 $02

	jr c, @+$45                                      ; $65ce: $38 $43

	ld b, d                                          ; $65d0: $42
	ld b, c                                          ; $65d1: $41
	rst $38                                          ; $65d2: $ff
	or h                                             ; $65d3: $b4
	ld a, [$02f3]                                    ; $65d4: $fa $f3 $02
	ld a, [hl]                                       ; $65d7: $7e
	dec hl                                           ; $65d8: $2b
	nop                                              ; $65d9: $00
	and a                                            ; $65da: $a7
	jr nz, @+$08                                     ; $65db: $20 $06

	rst $38                                          ; $65dd: $ff
	db $e3                                           ; $65de: $e3
	sub [hl]                                         ; $65df: $96
	db $d3                                           ; $65e0: $d3
	ld bc, $4221                                     ; $65e1: $01 $21 $42
	ld d, c                                          ; $65e4: $51
	rst $38                                          ; $65e5: $ff
	or h                                             ; $65e6: $b4

jr_007_65e7:
	ld a, [$0291]                                    ; $65e7: $fa $91 $02
	ld a, [hl]                                       ; $65ea: $7e
	dec hl                                           ; $65eb: $2b
	nop                                              ; $65ec: $00
	and a                                            ; $65ed: $a7
	dec de                                           ; $65ee: $1b
	ld b, $ff                                        ; $65ef: $06 $ff
	db $e3                                           ; $65f1: $e3
	sub [hl]                                         ; $65f2: $96
	pop bc                                           ; $65f3: $c1
	ld bc, $4222                                     ; $65f4: $01 $22 $42
	ld d, d                                          ; $65f7: $52
	rst $38                                          ; $65f8: $ff
	or h                                             ; $65f9: $b4
	ld a, [$02f2]                                    ; $65fa: $fa $f2 $02

jr_007_65fd:
	ld a, [hl]                                       ; $65fd: $7e
	dec hl                                           ; $65fe: $2b
	nop                                              ; $65ff: $00
	and a                                            ; $6600: $a7
	dec d                                            ; $6601: $15
	ld b, $ff                                        ; $6602: $06 $ff
	db $e3                                           ; $6604: $e3
	sub [hl]                                         ; $6605: $96
	ldh a, [c]                                       ; $6606: $f2
	ld bc, $4120                                     ; $6607: $01 $20 $41
	ld d, d                                          ; $660a: $52
	rst $38                                          ; $660b: $ff
	pop hl                                           ; $660c: $e1
	ld b, $71                                        ; $660d: $06 $71
	cp $21                                           ; $660f: $fe $21
	ld hl, $2121                                     ; $6611: $21 $21 $21
	cp $ff                                           ; $6614: $fe $ff
	or h                                             ; $6616: $b4
	sub [hl]                                         ; $6617: $96
	pop af                                           ; $6618: $f1
	ld [bc], a                                       ; $6619: $02
	sub h                                            ; $661a: $94
	ld a, [hl+]                                      ; $661b: $2a
	ld a, [hl+]                                      ; $661c: $2a
	rlca                                             ; $661d: $07
	sub h                                            ; $661e: $94
	dec [hl]                                         ; $661f: $35
	dec h                                            ; $6620: $25
	ld [$25c8], sp                                   ; $6621: $08 $c8 $25
	ld [$25c5], sp                                   ; $6624: $08 $c5 $25
	ld [$e1ff], sp                                   ; $6627: $08 $ff $e1
	dec e                                            ; $662a: $1d
	pop hl                                           ; $662b: $e1
	ld e, e                                          ; $662c: $5b
	ld h, c                                          ; $662d: $61
	ld [hl+], a                                      ; $662e: $22
	ldh [rSB], a                                     ; $662f: $e0 $01
	inc bc                                           ; $6631: $03
	ld [de], a                                       ; $6632: $12
	rst $38                                          ; $6633: $ff
	pop hl                                           ; $6634: $e1
	inc bc                                           ; $6635: $03
	pop bc                                           ; $6636: $c1
	ld c, d                                          ; $6637: $4a
	push de                                          ; $6638: $d5
	rlca                                             ; $6639: $07
	ld c, d                                          ; $663a: $4a
	ldh [c], a                                       ; $663b: $e2
	ld d, c                                          ; $663c: $51
	rlca                                             ; $663d: $07
	ld c, d                                          ; $663e: $4a
	rst $38                                          ; $663f: $ff
	or h                                             ; $6640: $b4
	ld h, h                                          ; $6641: $64
	ld sp, $7e02                                     ; $6642: $31 $02 $7e
	ld a, [hl-]                                      ; $6645: $3a
	nop                                              ; $6646: $00
	and b                                            ; $6647: $a0
	ei                                               ; $6648: $fb
	ld b, a                                          ; $6649: $47
	inc bc                                           ; $664a: $03
	ei                                               ; $664b: $fb
	rlca                                             ; $664c: $07
	jp $0947                                         ; $664d: $c3 $47 $09


	rst $38                                          ; $6650: $ff
	or h                                             ; $6651: $b4
	ld h, h                                          ; $6652: $64
	add c                                            ; $6653: $81
	ld [bc], a                                       ; $6654: $02
	dec h                                            ; $6655: $25
	ld [bc], a                                       ; $6656: $02
	add hl, hl                                       ; $6657: $29
	inc b                                            ; $6658: $04
	jp nz, $0429                                     ; $6659: $c2 $29 $04

	rst $38                                          ; $665c: $ff
	or h                                             ; $665d: $b4
	ld d, c                                          ; $665e: $51
	pop de                                           ; $665f: $d1
	nop                                              ; $6660: $00
	ld a, l                                          ; $6661: $7d
	dec b                                            ; $6662: $05
	ld sp, $c306                                     ; $6663: $31 $06 $c3
	ld sp, $ff07                                     ; $6666: $31 $07 $ff
	or h                                             ; $6669: $b4
	ld d, c                                          ; $666a: $51
	ld hl, $7e05                                     ; $666b: $21 $05 $7e
	dec b                                            ; $666e: $05
	nop                                              ; $666f: $00
	xor d                                            ; $6670: $aa
	ld [hl], $01                                     ; $6671: $36 $01
	call nz, $052f                                   ; $6673: $c4 $2f $05
	add $2f                                          ; $6676: $c6 $2f
	rlca                                             ; $6678: $07
	rst $38                                          ; $6679: $ff
	ret nc                                           ; $667a: $d0

	ld h, d                                          ; $667b: $62
	ld h, l                                          ; $667c: $65
	or l                                             ; $667d: $b5
	pop af                                           ; $667e: $f1
	ld bc, $02ff                                     ; $667f: $01 $ff $02
	ld a, [hl]                                       ; $6682: $7e
	add hl, bc                                       ; $6683: $09
	nop                                              ; $6684: $00
	and e                                            ; $6685: $a3
	ld a, l                                          ; $6686: $7d
	dec b                                            ; $6687: $05
	nop                                              ; $6688: $00
	inc c                                            ; $6689: $0c
	inc h                                            ; $668a: $24
	ld [$107e], sp                                   ; $668b: $08 $7e $10
	nop                                              ; $668e: $00
	and l                                            ; $668f: $a5
	sub e                                            ; $6690: $93
	sub [hl]                                         ; $6691: $96
	rst $38                                          ; $6692: $ff
	inc bc                                           ; $6693: $03
	ld [hl+], a                                      ; $6694: $22
	inc b                                            ; $6695: $04
	ld a, [hl]                                       ; $6696: $7e
	dec b                                            ; $6697: $05
	nop                                              ; $6698: $00
	and h                                            ; $6699: $a4
	sub b                                            ; $669a: $90
	add hl, hl                                       ; $669b: $29
	inc b                                            ; $669c: $04
	ld a, [hl]                                       ; $669d: $7e
	nop                                              ; $669e: $00
	jp $0829                                         ; $669f: $c3 $29 $08


	or c                                             ; $66a2: $b1
	pop af                                           ; $66a3: $f1
	rst $38                                          ; $66a4: $ff
	ld [bc], a                                       ; $66a5: $02
	ld a, [hl]                                       ; $66a6: $7e
	stop                                             ; $66a7: $10 $00
	and [hl]                                         ; $66a9: $a6
	inc h                                            ; $66aa: $24
	inc c                                            ; $66ab: $0c
	rst $38                                          ; $66ac: $ff
	or h                                             ; $66ad: $b4
	ld h, d                                          ; $66ae: $62
	ld b, c                                          ; $66af: $41
	dec b                                            ; $66b0: $05
	ld a, [hl]                                       ; $66b1: $7e
	dec b                                            ; $66b2: $05
	nop                                              ; $66b3: $00
	and h                                            ; $66b4: $a4
	ld a, l                                          ; $66b5: $7d
	dec b                                            ; $66b6: $05
	nop                                              ; $66b7: $00
	inc c                                            ; $66b8: $0c
	dec l                                            ; $66b9: $2d
	dec b                                            ; $66ba: $05
	add h                                            ; $66bb: $84
	add $2d                                          ; $66bc: $c6 $2d
	inc bc                                           ; $66be: $03
	ld a, [hl]                                       ; $66bf: $7e
	stop                                             ; $66c0: $10 $00
	and l                                            ; $66c2: $a5
	call nz, $2885                                   ; $66c3: $c4 $85 $28
	inc b                                            ; $66c6: $04
	ld a, [hl]                                       ; $66c7: $7e
	dec b                                            ; $66c8: $05
	nop                                              ; $66c9: $00
	and h                                            ; $66ca: $a4
	add l                                            ; $66cb: $85
	ld l, $04                                        ; $66cc: $2e $04
	ld a, [hl]                                       ; $66ce: $7e
	nop                                              ; $66cf: $00
	add $2e                                          ; $66d0: $c6 $2e
	ld [$7ec4], sp                                   ; $66d2: $08 $c4 $7e
	stop                                             ; $66d5: $10 $00
	and l                                            ; $66d7: $a5
	ld a, [hl+]                                      ; $66d8: $2a
	add hl, bc                                       ; $66d9: $09
	add $25                                          ; $66da: $c6 $25
	inc bc                                           ; $66dc: $03
	rst $38                                          ; $66dd: $ff
	db $e3                                           ; $66de: $e3
	rrca                                             ; $66df: $0f
	pop af                                           ; $66e0: $f1
	rlca                                             ; $66e1: $07
	ld e, a                                          ; $66e2: $5f
	inc hl                                           ; $66e3: $23
	ld e, a                                          ; $66e4: $5f
	inc hl                                           ; $66e5: $23
	rst $38                                          ; $66e6: $ff
	or h                                             ; $66e7: $b4
	ld c, e                                          ; $66e8: $4b
	pop af                                           ; $66e9: $f1
	ld [bc], a                                       ; $66ea: $02
	sub h                                            ; $66eb: $94
	inc e                                            ; $66ec: $1c
	add hl, hl                                       ; $66ed: $29
	ld bc, $0100                                     ; $66ee: $01 $00 $01
	sub c                                            ; $66f1: $91
	sub h                                            ; $66f2: $94
	inc a                                            ; $66f3: $3c
	add hl, hl                                       ; $66f4: $29
	ld [$e1ff], sp                                   ; $66f5: $08 $ff $e1
	ld c, e                                          ; $66f8: $4b
	pop af                                           ; $66f9: $f1
	ld h, $d0                                        ; $66fa: $26 $d0
	ret z                                            ; $66fc: $c8

	ld l, e                                          ; $66fd: $6b
	ld e, h                                          ; $66fe: $5c
	db $e3                                           ; $66ff: $e3
	inc bc                                           ; $6700: $03
	pop bc                                           ; $6701: $c1
	ld [bc], a                                       ; $6702: $02
	scf                                              ; $6703: $37
	rst $38                                          ; $6704: $ff
	or h                                             ; $6705: $b4
	ld h, b                                          ; $6706: $60
	pop de                                           ; $6707: $d1
	ld [bc], a                                       ; $6708: $02
	sub h                                            ; $6709: $94
	inc e                                            ; $670a: $1c
	add hl, hl                                       ; $670b: $29
	ld bc, $0100                                     ; $670c: $01 $00 $01
	call $9490                                       ; $670f: $cd $90 $94
	inc l                                            ; $6712: $2c
	inc l                                            ; $6713: $2c
	ld [$2cc4], sp                                   ; $6714: $08 $c4 $2c
	ld [$e1ff], sp                                   ; $6717: $08 $ff $e1
	ld h, b                                          ; $671a: $60
	pop hl                                           ; $671b: $e1
	ld b, d                                          ; $671c: $42
	ld [hl], h                                       ; $671d: $74
	db $e3                                           ; $671e: $e3
	rlca                                             ; $671f: $07
	sub c                                            ; $6720: $91
	ld [bc], a                                       ; $6721: $02
	ld c, a                                          ; $6722: $4f
	rst $38                                          ; $6723: $ff
	pop hl                                           ; $6724: $e1
	dec e                                            ; $6725: $1d
	pop bc                                           ; $6726: $c1
	ld l, d                                          ; $6727: $6a
	ld h, b                                          ; $6728: $60
	ld hl, $0ce0                                     ; $6729: $21 $e0 $0c
	ld b, $10                                        ; $672c: $06 $10
	rst $38                                          ; $672e: $ff
	or h                                             ; $672f: $b4
	and b                                            ; $6730: $a0
	pop hl                                           ; $6731: $e1
	ld [bc], a                                       ; $6732: $02
	sub h                                            ; $6733: $94
	dec [hl]                                         ; $6734: $35
	ei                                               ; $6735: $fb
	sub d                                            ; $6736: $92
	ld d, $08                                        ; $6737: $16 $08
	sub c                                            ; $6739: $91
	ld d, $08                                        ; $673a: $16 $08
	ei                                               ; $673c: $fb
	rlca                                             ; $673d: $07
	ei                                               ; $673e: $fb
	sub d                                            ; $673f: $92
	rla                                              ; $6740: $17
	ld [$1791], sp                                   ; $6741: $08 $91 $17
	ld [$05fb], sp                                   ; $6744: $08 $fb $05
	rst JumpTable                                          ; $6747: $c7
	sub d                                            ; $6748: $92
	jr @+$0a                                         ; $6749: $18 $08

	sub c                                            ; $674b: $91
	jr @+$0a                                         ; $674c: $18 $08

	call nz, $1992                                   ; $674e: $c4 $92 $19
	ld [$1991], sp                                   ; $6751: $08 $91 $19
	ld [$e1ff], sp                                   ; $6754: $08 $ff $e1
	inc b                                            ; $6757: $04
	pop bc                                           ; $6758: $c1
	ld c, e                                          ; $6759: $4b
	ld c, e                                          ; $675a: $4b
	ld c, e                                          ; $675b: $4b
	ld c, e                                          ; $675c: $4b
	ld c, e                                          ; $675d: $4b
	db $e3                                           ; $675e: $e3
	ld [bc], a                                       ; $675f: $02
	add c                                            ; $6760: $81
	rlca                                             ; $6761: $07
	ld c, e                                          ; $6762: $4b
	rst $38                                          ; $6763: $ff
	or h                                             ; $6764: $b4
	ret z                                            ; $6765: $c8

	ld d, c                                          ; $6766: $51
	ld [bc], a                                       ; $6767: $02
	cp $70                                           ; $6768: $fe $70
	db $fd                                           ; $676a: $fd
	ld a, l                                          ; $676b: $7d
	ld h, a                                          ; $676c: $67
	db $fd                                           ; $676d: $fd
	ld a, l                                          ; $676e: $7d
	ld h, a                                          ; $676f: $67
	ld h, c                                          ; $6770: $61
	db $fd                                           ; $6771: $fd
	ld a, l                                          ; $6772: $7d
	ld h, a                                          ; $6773: $67
	db $fd                                           ; $6774: $fd
	ld a, l                                          ; $6775: $7d
	ld h, a                                          ; $6776: $67
	ld h, d                                          ; $6777: $62
	db $fd                                           ; $6778: $fd
	ld a, l                                          ; $6779: $7d
	ld h, a                                          ; $677a: $67
	cp $ff                                           ; $677b: $fe $ff
	cp [hl]                                          ; $677d: $be
	inc b                                            ; $677e: $04
	ld [hl], $2b                                     ; $677f: $36 $2b
	dec l                                            ; $6781: $2d
	inc sp                                           ; $6782: $33
	rra                                              ; $6783: $1f
	dec hl                                           ; $6784: $2b
	ld a, [hl+]                                      ; $6785: $2a
	inc h                                            ; $6786: $24
	ld e, $20                                        ; $6787: $1e $20
	daa                                              ; $6789: $27
	cp [hl]                                          ; $678a: $be
	db $fd                                           ; $678b: $fd
	cp $e3                                           ; $678c: $fe $e3
	inc b                                            ; $678e: $04
	ld d, c                                          ; $678f: $51
	ld [$e259], sp                                   ; $6790: $08 $59 $e2
	ld d, c                                          ; $6793: $51
	inc b                                            ; $6794: $04
	ld e, c                                          ; $6795: $59
	rst SubAFromDE                                          ; $6796: $df
	cp $ff                                           ; $6797: $fe $ff
	pop hl                                           ; $6799: $e1
	ld [bc], a                                       ; $679a: $02
	ld [hl], c                                       ; $679b: $71
	ld b, a                                          ; $679c: $47
	bit 6, c                                         ; $679d: $cb $71
	push de                                          ; $679f: $d5
	rlca                                             ; $67a0: $07
	ld [hl], c                                       ; $67a1: $71
	rst $38                                          ; $67a2: $ff
	or h                                             ; $67a3: $b4
	ld h, h                                          ; $67a4: $64
	pop af                                           ; $67a5: $f1
	ld [bc], a                                       ; $67a6: $02
	sub h                                            ; $67a7: $94
	ld a, [hl+]                                      ; $67a8: $2a
	inc d                                            ; $67a9: $14
	inc bc                                           ; $67aa: $03
	nop                                              ; $67ab: $00
	ld [bc], a                                       ; $67ac: $02
	inc d                                            ; $67ad: $14
	rlca                                             ; $67ae: $07
	jp $0314                                         ; $67af: $c3 $14 $03


	nop                                              ; $67b2: $00
	ld [bc], a                                       ; $67b3: $02
	inc d                                            ; $67b4: $14
	rlca                                             ; $67b5: $07
	rst $38                                          ; $67b6: $ff
	pop hl                                           ; $67b7: $e1
	ld h, h                                          ; $67b8: $64
	pop de                                           ; $67b9: $d1
	ld c, e                                          ; $67ba: $4b
	dec [hl]                                         ; $67bb: $35
	ld [hl], $df                                     ; $67bc: $36 $df
	rst SubAFromDE                                          ; $67be: $df
	pop hl                                           ; $67bf: $e1
	ld a, [bc]                                       ; $67c0: $0a
	ld [hl], c                                       ; $67c1: $71
	scf                                              ; $67c2: $37
	push bc                                          ; $67c3: $c5
	scf                                              ; $67c4: $37
	jp nz, $ff37                                     ; $67c5: $c2 $37 $ff

	or h                                             ; $67c8: $b4
	ld a, [$02f1]                                    ; $67c9: $fa $f1 $02
	sub h                                            ; $67cc: $94
	dec sp                                           ; $67cd: $3b
	jr z, jr_007_67d9                                ; $67ce: $28 $09

	rst $38                                          ; $67d0: $ff
	pop hl                                           ; $67d1: $e1
	dec hl                                           ; $67d2: $2b
	pop af                                           ; $67d3: $f1
	ld e, l                                          ; $67d4: $5d
	rst SubAFromDE                                          ; $67d5: $df
	ld e, l                                          ; $67d6: $5d
	rst JumpTable                                          ; $67d7: $c7
	rst SubAFromDE                                          ; $67d8: $df

jr_007_67d9:
	ld e, l                                          ; $67d9: $5d
	rst $38                                          ; $67da: $ff
	or h                                             ; $67db: $b4
	ret z                                            ; $67dc: $c8

jr_007_67dd:
	pop de                                           ; $67dd: $d1
	nop                                              ; $67de: $00
	add hl, de                                       ; $67df: $19
	ld h, h                                          ; $67e0: $64
	rst JumpTable                                          ; $67e1: $c7
	add hl, de                                       ; $67e2: $19
	inc bc                                           ; $67e3: $03
	rst $38                                          ; $67e4: $ff
	or [hl]                                          ; $67e5: $b6
	ld l, [hl]                                       ; $67e6: $6e
	ld h, c                                          ; $67e7: $61
	ld bc, $03fa                                     ; $67e8: $01 $fa $03
	ld a, [hl+]                                      ; $67eb: $2a
	ld bc, $92cd                                     ; $67ec: $01 $cd $92
	ld a, [hl+]                                      ; $67ef: $2a
	inc d                                            ; $67f0: $14
	add $91                                          ; $67f1: $c6 $91
	ld h, $01                                        ; $67f3: $26 $01
	call $2692                                       ; $67f5: $cd $92 $26
	jr z, @+$01                                      ; $67f8: $28 $ff

	or [hl]                                          ; $67fa: $b6
	sub [hl]                                         ; $67fb: $96
	pop de                                           ; $67fc: $d1
	ld [bc], a                                       ; $67fd: $02
	ld a, [$3903]                                    ; $67fe: $fa $03 $39
	ld bc, $032d                                     ; $6801: $01 $2d $03
	add hl, sp                                       ; $6804: $39
	ld bc, $0332                                     ; $6805: $01 $32 $03
	jp $0139                                         ; $6808: $c3 $39 $01


	dec l                                            ; $680b: $2d
	inc bc                                           ; $680c: $03
	add hl, sp                                       ; $680d: $39
	ld bc, $0332                                     ; $680e: $01 $32 $03
	rst $38                                          ; $6811: $ff
	or [hl]                                          ; $6812: $b6
	push af                                          ; $6813: $f5
	pop hl                                           ; $6814: $e1
	ld [bc], a                                       ; $6815: $02
	sub [hl]                                         ; $6816: $96
	ld [bc], a                                       ; $6817: $02
	cp [hl]                                          ; $6818: $be
	add hl, bc                                       ; $6819: $09
	dec h                                            ; $681a: $25
	add hl, hl                                       ; $681b: $29
	inc l                                            ; $681c: $2c
	jr nc, jr_007_67dd                               ; $681d: $30 $be

	add $25                                          ; $681f: $c6 $25
	dec b                                            ; $6821: $05
	add hl, hl                                       ; $6822: $29
	add hl, bc                                       ; $6823: $09
	inc l                                            ; $6824: $2c
	add hl, bc                                       ; $6825: $09
	jr nc, jr_007_6831                               ; $6826: $30 $09

	call nz, $0525                                   ; $6828: $c4 $25 $05
	add hl, hl                                       ; $682b: $29
	add hl, bc                                       ; $682c: $09
	inc l                                            ; $682d: $2c
	add hl, bc                                       ; $682e: $09
	jr nc, jr_007_683a                               ; $682f: $30 $09

jr_007_6831:
	or c                                             ; $6831: $b1
	ld hl, $000a                                     ; $6832: $21 $0a $00
	dec h                                            ; $6835: $25
	dec b                                            ; $6836: $05
	add hl, hl                                       ; $6837: $29
	rlca                                             ; $6838: $07
	pop bc                                           ; $6839: $c1

jr_007_683a:
	nop                                              ; $683a: $00
	ld [bc], a                                       ; $683b: $02
	inc l                                            ; $683c: $2c
	rlca                                             ; $683d: $07
	nop                                              ; $683e: $00
	ld [bc], a                                       ; $683f: $02
	jr nc, jr_007_6849                               ; $6840: $30 $07

	rst $38                                          ; $6842: $ff
	or h                                             ; $6843: $b4
	push af                                          ; $6844: $f5
	ld hl, $be0d                                     ; $6845: $21 $0d $be
	add hl, bc                                       ; $6848: $09

jr_007_6849:
	nop                                              ; $6849: $00
	ld sp, $3835                                     ; $684a: $31 $35 $38
	inc a                                            ; $684d: $3c
	cp [hl]                                          ; $684e: $be
	ld sp, $3505                                     ; $684f: $31 $05 $35
	add hl, bc                                       ; $6852: $09
	jr c, jr_007_685e                                ; $6853: $38 $09

	inc a                                            ; $6855: $3c
	add hl, bc                                       ; $6856: $09
	ld sp, $3505                                     ; $6857: $31 $05 $35
	add hl, bc                                       ; $685a: $09
	jr c, jr_007_6866                                ; $685b: $38 $09

	inc a                                            ; $685d: $3c

jr_007_685e:
	add hl, bc                                       ; $685e: $09
	ld sp, $3505                                     ; $685f: $31 $05 $35
	rlca                                             ; $6862: $07
	call nz, $0200                                   ; $6863: $c4 $00 $02

jr_007_6866:
	jr c, jr_007_686f                                ; $6866: $38 $07

	add $00                                          ; $6868: $c6 $00
	ld [bc], a                                       ; $686a: $02
	inc a                                            ; $686b: $3c
	rlca                                             ; $686c: $07
	rst $38                                          ; $686d: $ff
	or h                                             ; $686e: $b4

jr_007_686f:
	ld h, h                                          ; $686f: $64
	pop af                                           ; $6870: $f1
	ld [bc], a                                       ; $6871: $02
	ld h, e                                          ; $6872: $63
	sub h                                            ; $6873: $94
	dec sp                                           ; $6874: $3b
	db $10                                           ; $6875: $10
	inc bc                                           ; $6876: $03
	nop                                              ; $6877: $00
	ld [bc], a                                       ; $6878: $02
	sub b                                            ; $6879: $90
	dec de                                           ; $687a: $1b
	rlca                                             ; $687b: $07
	push bc                                          ; $687c: $c5
	sub d                                            ; $687d: $92
	db $10                                           ; $687e: $10
	inc bc                                           ; $687f: $03
	sub b                                            ; $6880: $90
	nop                                              ; $6881: $00
	ld [bc], a                                       ; $6882: $02
	dec de                                           ; $6883: $1b
	rlca                                             ; $6884: $07
	call nz, $1092                                   ; $6885: $c4 $92 $10
	inc bc                                           ; $6888: $03
	sub b                                            ; $6889: $90
	nop                                              ; $688a: $00
	ld [bc], a                                       ; $688b: $02
	dec de                                           ; $688c: $1b
	rlca                                             ; $688d: $07
	jp $1092                                         ; $688e: $c3 $92 $10


	inc bc                                           ; $6891: $03
	sub b                                            ; $6892: $90
	nop                                              ; $6893: $00
	ld [bc], a                                       ; $6894: $02
	dec de                                           ; $6895: $1b
	rlca                                             ; $6896: $07
	pop bc                                           ; $6897: $c1
	sub d                                            ; $6898: $92
	db $10                                           ; $6899: $10
	inc bc                                           ; $689a: $03
	sub b                                            ; $689b: $90
	nop                                              ; $689c: $00
	ld [bc], a                                       ; $689d: $02
	dec de                                           ; $689e: $1b
	rlca                                             ; $689f: $07
	rst $38                                          ; $68a0: $ff
	db $e3                                           ; $68a1: $e3
	dec sp                                           ; $68a2: $3b
	pop af                                           ; $68a3: $f1
	ld [$62fb], sp                                   ; $68a4: $08 $fb $62
	rst SubAFromDE                                          ; $68a7: $df
	ei                                               ; $68a8: $fb
	dec b                                            ; $68a9: $05
	pop hl                                           ; $68aa: $e1
	daa                                              ; $68ab: $27
	and c                                            ; $68ac: $a1
	ei                                               ; $68ad: $fb
	ld h, d                                          ; $68ae: $62
	rst SubAFromDE                                          ; $68af: $df
	ei                                               ; $68b0: $fb
	dec b                                            ; $68b1: $05
	db $e3                                           ; $68b2: $e3
	dec b                                            ; $68b3: $05
	ld d, c                                          ; $68b4: $51
	ld b, $61                                        ; $68b5: $06 $61
	rst $38                                          ; $68b7: $ff
	or h                                             ; $68b8: $b4
	ld a, [$01f1]                                    ; $68b9: $fa $f1 $01
	cp [hl]                                          ; $68bc: $be
	ld bc, $0025                                     ; $68bd: $01 $25 $00
	add hl, de                                       ; $68c0: $19
	nop                                              ; $68c1: $00
	cp [hl]                                          ; $68c2: $be
	ret z                                            ; $68c3: $c8

	add hl, de                                       ; $68c4: $19
	ld [bc], a                                       ; $68c5: $02
	nop                                              ; $68c6: $00
	ld hl, $aab4                                     ; $68c7: $21 $b4 $aa
	pop hl                                           ; $68ca: $e1
	ld [bc], a                                       ; $68cb: $02
	inc e                                            ; $68cc: $1c
	add hl, bc                                       ; $68cd: $09
	nop                                              ; $68ce: $00
	inc bc                                           ; $68cf: $03
	rra                                              ; $68d0: $1f
	add hl, bc                                       ; $68d1: $09
	nop                                              ; $68d2: $00
	inc bc                                           ; $68d3: $03
	inc e                                            ; $68d4: $1c
	add hl, bc                                       ; $68d5: $09
	nop                                              ; $68d6: $00
	inc bc                                           ; $68d7: $03
	ld a, [de]                                       ; $68d8: $1a
	add hl, bc                                       ; $68d9: $09
	nop                                              ; $68da: $00
	inc bc                                           ; $68db: $03
	inc e                                            ; $68dc: $1c
	add hl, bc                                       ; $68dd: $09
	nop                                              ; $68de: $00
	inc bc                                           ; $68df: $03
	rra                                              ; $68e0: $1f
	add hl, bc                                       ; $68e1: $09
	nop                                              ; $68e2: $00
	inc bc                                           ; $68e3: $03
	ld a, [de]                                       ; $68e4: $1a
	add hl, bc                                       ; $68e5: $09
	nop                                              ; $68e6: $00
	inc bc                                           ; $68e7: $03
	inc e                                            ; $68e8: $1c
	add hl, bc                                       ; $68e9: $09
	rst $38                                          ; $68ea: $ff
	ret nc                                           ; $68eb: $d0

	ld a, [$2700]                                    ; $68ec: $fa $00 $27
	or h                                             ; $68ef: $b4
	xor d                                            ; $68f0: $aa
	ld hl, $3d2b                                     ; $68f1: $21 $2b $3d
	add hl, bc                                       ; $68f4: $09
	nop                                              ; $68f5: $00
	inc bc                                           ; $68f6: $03
	ccf                                              ; $68f7: $3f
	add hl, bc                                       ; $68f8: $09
	nop                                              ; $68f9: $00
	inc bc                                           ; $68fa: $03
	dec sp                                           ; $68fb: $3b
	add hl, bc                                       ; $68fc: $09
	nop                                              ; $68fd: $00
	inc bc                                           ; $68fe: $03
	add hl, sp                                       ; $68ff: $39
	add hl, bc                                       ; $6900: $09
	nop                                              ; $6901: $00
	inc bc                                           ; $6902: $03
	dec a                                            ; $6903: $3d
	add hl, bc                                       ; $6904: $09
	nop                                              ; $6905: $00
	inc bc                                           ; $6906: $03
	ccf                                              ; $6907: $3f
	add hl, bc                                       ; $6908: $09
	nop                                              ; $6909: $00
	inc bc                                           ; $690a: $03
	add hl, sp                                       ; $690b: $39
	add hl, bc                                       ; $690c: $09
	nop                                              ; $690d: $00
	inc bc                                           ; $690e: $03
	dec sp                                           ; $690f: $3b
	add hl, bc                                       ; $6910: $09
	rst $38                                          ; $6911: $ff
	pop hl                                           ; $6912: $e1
	ret z                                            ; $6913: $c8

	pop bc                                           ; $6914: $c1
	ccf                                              ; $6915: $3f
	dec a                                            ; $6916: $3d
	ret                                              ; $6917: $c9


	ld a, $4c                                        ; $6918: $3e $4c
	ld c, [hl]                                       ; $691a: $4e
	rst SubAFromDE                                          ; $691b: $df
	ld a, [hl-]                                      ; $691c: $3a
	ld c, l                                          ; $691d: $4d
	rst SubAFromDE                                          ; $691e: $df
	jp $ff3e                                         ; $691f: $c3 $3e $ff


	or h                                             ; $6922: $b4
	sub [hl]                                         ; $6923: $96
	pop af                                           ; $6924: $f1
	ld bc, $3b94                                     ; $6925: $01 $94 $3b
	add hl, hl                                       ; $6928: $29
	rlca                                             ; $6929: $07
	sub h                                            ; $692a: $94
	dec d                                            ; $692b: $15
	sub d                                            ; $692c: $92
	ld h, $08                                        ; $692d: $26 $08
	rst JumpTable                                          ; $692f: $c7
	ld h, $08                                        ; $6930: $26 $08
	call nz, $0826                                   ; $6932: $c4 $26 $08
	rst $38                                          ; $6935: $ff
	or h                                             ; $6936: $b4
	sub [hl]                                         ; $6937: $96
	pop af                                           ; $6938: $f1
	nop                                              ; $6939: $00
	sub h                                            ; $693a: $94
	ld b, [hl]                                       ; $693b: $46
	ei                                               ; $693c: $fb
	cp [hl]                                          ; $693d: $be
	inc b                                            ; $693e: $04
	dec hl                                           ; $693f: $2b
	inc l                                            ; $6940: $2c
	dec l                                            ; $6941: $2d
	ld l, $2f                                        ; $6942: $2e $2f
	cp [hl]                                          ; $6944: $be
	ei                                               ; $6945: $fb
	add hl, bc                                       ; $6946: $09
	call nz, $04be                                   ; $6947: $c4 $be $04
	dec hl                                           ; $694a: $2b
	inc l                                            ; $694b: $2c
	dec l                                            ; $694c: $2d
	ld l, $2f                                        ; $694d: $2e $2f
	cp [hl]                                          ; $694f: $be
	rst $38                                          ; $6950: $ff
	cp [hl]                                          ; $6951: $be
	inc b                                            ; $6952: $04
	ld [hl], $2b                                     ; $6953: $36 $2b
	dec l                                            ; $6955: $2d
	inc sp                                           ; $6956: $33
	rra                                              ; $6957: $1f
	dec hl                                           ; $6958: $2b
	ld a, [hl+]                                      ; $6959: $2a
	inc h                                            ; $695a: $24
	ld e, $20                                        ; $695b: $1e $20
	daa                                              ; $695d: $27
	cp [hl]                                          ; $695e: $be
	rst $38                                          ; $695f: $ff
	ei                                               ; $6960: $fb
	db $e3                                           ; $6961: $e3
	inc b                                            ; $6962: $04
	or c                                             ; $6963: $b1
	ld [$e259], sp                                   ; $6964: $08 $59 $e2
	sub c                                            ; $6967: $91
	inc b                                            ; $6968: $04
	ld e, c                                          ; $6969: $59
	rst SubAFromDE                                          ; $696a: $df
	ei                                               ; $696b: $fb
	dec b                                            ; $696c: $05
	rst $38                                          ; $696d: $ff
	or h                                             ; $696e: $b4
	sub [hl]                                         ; $696f: $96
	pop af                                           ; $6970: $f1
	nop                                              ; $6971: $00
	ld a, [hl]                                       ; $6972: $7e
	add hl, hl                                       ; $6973: $29
	nop                                              ; $6974: $00
	and b                                            ; $6975: $a0
	daa                                              ; $6976: $27
	inc d                                            ; $6977: $14
	ld l, $0a                                        ; $6978: $2e $0a
	daa                                              ; $697a: $27
	inc d                                            ; $697b: $14
	ld l, $15                                        ; $697c: $2e $15
	jr c, jr_007_698e                                ; $697e: $38 $0e

	rst $38                                          ; $6980: $ff
	or [hl]                                          ; $6981: $b6
	ld b, [hl]                                       ; $6982: $46
	pop af                                           ; $6983: $f1
	ld bc, $0264                                     ; $6984: $01 $64 $02

Jump_007_6987:
	ld a, [hl]                                       ; $6987: $7e
	jr c, jr_007_6991                                ; $6988: $38 $07

	and b                                            ; $698a: $a0
	ld a, h                                          ; $698b: $7c
	rst GetHLinHL                                          ; $698c: $cf
	inc l                                            ; $698d: $2c

jr_007_698e:
	inc c                                            ; $698e: $0c
	add $2c                                          ; $698f: $c6 $2c

jr_007_6991:
	inc c                                            ; $6991: $0c
	rst GetHLinHL                                          ; $6992: $cf
	jr nc, jr_007_69a1                               ; $6993: $30 $0c

	add $30                                          ; $6995: $c6 $30
	inc c                                            ; $6997: $0c
	rst GetHLinHL                                          ; $6998: $cf
	ld l, $0c                                        ; $6999: $2e $0c
	add $2e                                          ; $699b: $c6 $2e
	inc c                                            ; $699d: $0c
	rst GetHLinHL                                          ; $699e: $cf
	daa                                              ; $699f: $27
	inc c                                            ; $69a0: $0c

jr_007_69a1:
	add $27                                          ; $69a1: $c6 $27
	ld c, $c3                                        ; $69a3: $0e $c3
	daa                                              ; $69a5: $27
	ld c, $ff                                        ; $69a6: $0e $ff
	or h                                             ; $69a8: $b4
	ld b, [hl]                                       ; $69a9: $46
	ld b, c                                          ; $69aa: $41
	inc l                                            ; $69ab: $2c
	nop                                              ; $69ac: $00
	dec b                                            ; $69ad: $05
	call nz, $0c2c                                   ; $69ae: $c4 $2c $0c
	add $2c                                          ; $69b1: $c6 $2c
	inc c                                            ; $69b3: $0c
	call nz, $0c30                                   ; $69b4: $c4 $30 $0c
	add $30                                          ; $69b7: $c6 $30
	inc c                                            ; $69b9: $0c
	call nz, $0c2e                                   ; $69ba: $c4 $2e $0c
	add $2e                                          ; $69bd: $c6 $2e
	inc c                                            ; $69bf: $0c
	call nz, $0c27                                   ; $69c0: $c4 $27 $0c
	add $27                                          ; $69c3: $c6 $27
	dec b                                            ; $69c5: $05
	rst $38                                          ; $69c6: $ff
	or h                                             ; $69c7: $b4
	ld a, [$02b1]                                    ; $69c8: $fa $b1 $02
	ei                                               ; $69cb: $fb
	push bc                                          ; $69cc: $c5
	ld sp, $ca01                                     ; $69cd: $31 $01 $ca
	dec h                                            ; $69d0: $25
	ld [bc], a                                       ; $69d1: $02
	ei                                               ; $69d2: $fb
	inc bc                                           ; $69d3: $03
	nop                                              ; $69d4: $00
	inc bc                                           ; $69d5: $03
	ei                                               ; $69d6: $fb
	push bc                                          ; $69d7: $c5
	ld sp, $ca01                                     ; $69d8: $31 $01 $ca
	dec h                                            ; $69db: $25
	ld [bc], a                                       ; $69dc: $02
	ei                                               ; $69dd: $fb
	add hl, bc                                       ; $69de: $09
	push bc                                          ; $69df: $c5
	ei                                               ; $69e0: $fb
	jp $0131                                         ; $69e1: $c3 $31 $01


	ret z                                            ; $69e4: $c8

	dec h                                            ; $69e5: $25
	ld [bc], a                                       ; $69e6: $02
	ei                                               ; $69e7: $fb
	ld [bc], a                                       ; $69e8: $02
	rst $38                                          ; $69e9: $ff
	or h                                             ; $69ea: $b4
	ld d, b                                          ; $69eb: $50
	or c                                             ; $69ec: $b1
	ld [bc], a                                       ; $69ed: $02
	ld h, e                                          ; $69ee: $63
	sub h                                            ; $69ef: $94
	dec hl                                           ; $69f0: $2b
	ei                                               ; $69f1: $fb
	ld [de], a                                       ; $69f2: $12
	inc bc                                           ; $69f3: $03
	nop                                              ; $69f4: $00
	ld [bc], a                                       ; $69f5: $02
	add hl, de                                       ; $69f6: $19
	inc bc                                           ; $69f7: $03
	nop                                              ; $69f8: $00
	ld [bc], a                                       ; $69f9: $02
	ei                                               ; $69fa: $fb
	add hl, bc                                       ; $69fb: $09
	rst $38                                          ; $69fc: $ff
	db $e3                                           ; $69fd: $e3
	ld d, b                                          ; $69fe: $50
	pop af                                           ; $69ff: $f1
	ld [$5afb], sp                                   ; $6a00: $08 $fb $5a
	ld c, c                                          ; $6a03: $49
	ld b, h                                          ; $6a04: $44
	rst SubAFromDE                                          ; $6a05: $df
	rst SubAFromDE                                          ; $6a06: $df
	ei                                               ; $6a07: $fb
	ld [de], a                                       ; $6a08: $12
	rst $38                                          ; $6a09: $ff
	pop hl                                           ; $6a0a: $e1
	ld e, $f1                                        ; $6a0b: $1e $f1
	ld e, b                                          ; $6a0d: $58
	ldh [c], a                                       ; $6a0e: $e2
	pop af                                           ; $6a0f: $f1
	ld [$e041], sp                                   ; $6a10: $08 $41 $e0
	ld [bc], a                                       ; $6a13: $02
	inc bc                                           ; $6a14: $03
	ld b, b                                          ; $6a15: $40
	rst $38                                          ; $6a16: $ff
	pop hl                                           ; $6a17: $e1
	ld d, h                                          ; $6a18: $54
	sub c                                            ; $6a19: $91
	ei                                               ; $6a1a: $fb
	ret                                              ; $6a1b: $c9


	inc hl                                           ; $6a1c: $23
	ld [de], a                                       ; $6a1d: $12
	jp z, $0000                                     ; $6a1e: $ca $00 $00

	ei                                               ; $6a21: $fb
	inc b                                            ; $6a22: $04
	rst $38                                          ; $6a23: $ff
	or [hl]                                          ; $6a24: $b6
	sub [hl]                                         ; $6a25: $96
	pop af                                           ; $6a26: $f1
	ld [bc], a                                       ; $6a27: $02
	ld a, [$4102]                                    ; $6a28: $fa $02 $41
	inc c                                            ; $6a2b: $0c
	dec a                                            ; $6a2c: $3d
	inc c                                            ; $6a2d: $0c
	ld a, [hl-]                                      ; $6a2e: $3a
	inc c                                            ; $6a2f: $0c
	ld [hl], $0c                                     ; $6a30: $36 $0c
	dec [hl]                                         ; $6a32: $35
	inc c                                            ; $6a33: $0c
	ld sp, $2e0c                                     ; $6a34: $31 $0c $2e
	inc c                                            ; $6a37: $0c
	ld a, [hl+]                                      ; $6a38: $2a
	inc c                                            ; $6a39: $0c
	or c                                             ; $6a3a: $b1
	or c                                             ; $6a3b: $b1
	ld h, h                                          ; $6a3c: $64
	dec b                                            ; $6a3d: $05
	add hl, hl                                       ; $6a3e: $29
	jr nc, @+$01                                     ; $6a3f: $30 $ff

	or h                                             ; $6a41: $b4
	sub [hl]                                         ; $6a42: $96
	ld b, c                                          ; $6a43: $41
	inc l                                            ; $6a44: $2c
	nop                                              ; $6a45: $00
	inc c                                            ; $6a46: $0c
	ld b, c                                          ; $6a47: $41
	inc c                                            ; $6a48: $0c
	dec a                                            ; $6a49: $3d
	inc c                                            ; $6a4a: $0c
	ld a, [hl-]                                      ; $6a4b: $3a
	inc c                                            ; $6a4c: $0c
	ld [hl], $0c                                     ; $6a4d: $36 $0c
	dec [hl]                                         ; $6a4f: $35
	inc c                                            ; $6a50: $0c
	ld sp, $2e0c                                     ; $6a51: $31 $0c $2e
	inc c                                            ; $6a54: $0c
	ld a, [hl+]                                      ; $6a55: $2a
	inc c                                            ; $6a56: $0c
	add $29                                          ; $6a57: $c6 $29
	ld l, $ff                                        ; $6a59: $2e $ff
	ret nc                                           ; $6a5b: $d0

	add d                                            ; $6a5c: $82
	sub h                                            ; $6a5d: $94
	rra                                              ; $6a5e: $1f
	sub b                                            ; $6a5f: $90
	rst GetHLinHL                                          ; $6a60: $cf
	dec h                                            ; $6a61: $25
	ld c, $cd                                        ; $6a62: $0e $cd
	dec h                                            ; $6a64: $25
	ld c, $cc                                        ; $6a65: $0e $cc
	dec h                                            ; $6a67: $25
	ld c, $c9                                        ; $6a68: $0e $c9
	dec h                                            ; $6a6a: $25
	ld c, $c4                                        ; $6a6b: $0e $c4
	dec h                                            ; $6a6d: $25
	ld c, $ff                                        ; $6a6e: $0e $ff
	db $e3                                           ; $6a70: $e3
	ld [bc], a                                       ; $6a71: $02
	pop hl                                           ; $6a72: $e1
	ld b, $36                                        ; $6a73: $06 $36
	rst $38                                          ; $6a75: $ff
	ret nc                                           ; $6a76: $d0

	ld a, [$9492]                                    ; $6a77: $fa $92 $94
	ld d, l                                          ; $6a7a: $55
	ei                                               ; $6a7b: $fb
	rst JumpTable                                          ; $6a7c: $c7
	dec h                                            ; $6a7d: $25
	ld [$25c5], sp                                   ; $6a7e: $08 $c5 $25
	ld [bc], a                                       ; $6a81: $02
	ei                                               ; $6a82: $fb
	inc de                                           ; $6a83: $13
	jp $0825                                         ; $6a84: $c3 $25 $08


	jp nz, $0225                                     ; $6a87: $c2 $25 $02

	jp nz, $0825                                     ; $6a8a: $c2 $25 $08

	pop bc                                           ; $6a8d: $c1
	dec h                                            ; $6a8e: $25
	ld [bc], a                                       ; $6a8f: $02
	rst $38                                          ; $6a90: $ff
	or h                                             ; $6a91: $b4
	ld a, [$01f1]                                    ; $6a92: $fa $f1 $01
	cp [hl]                                          ; $6a95: $be
	ld b, $2d                                        ; $6a96: $06 $2d
	jr nc, jr_007_6ace                               ; $6a98: $30 $34

	jr nc, @-$40                                     ; $6a9a: $30 $be

	add $2d                                          ; $6a9c: $c6 $2d
	ld b, $30                                        ; $6a9e: $06 $30
	ld b, $c3                                        ; $6aa0: $06 $c3
	inc [hl]                                         ; $6aa2: $34
	ld b, $30                                        ; $6aa3: $06 $30
	ld b, $ff                                        ; $6aa5: $06 $ff
	or [hl]                                          ; $6aa7: $b6
	ld h, h                                          ; $6aa8: $64
	pop af                                           ; $6aa9: $f1
	ld [bc], a                                       ; $6aaa: $02
	ld a, [$7e04]                                    ; $6aab: $fa $04 $7e
	add hl, sp                                       ; $6aae: $39
	nop                                              ; $6aaf: $00
	and b                                            ; $6ab0: $a0
	ld [hl+], a                                      ; $6ab1: $22
	ld b, $24                                        ; $6ab2: $06 $24
	inc c                                            ; $6ab4: $0c
	inc h                                            ; $6ab5: $24
	ld b, $cd                                        ; $6ab6: $06 $cd
	daa                                              ; $6ab8: $27
	inc c                                            ; $6ab9: $0c
	daa                                              ; $6aba: $27
	ld b, $ce                                        ; $6abb: $06 $ce
	add hl, hl                                       ; $6abd: $29
	inc c                                            ; $6abe: $0c
	dec hl                                           ; $6abf: $2b
	inc c                                            ; $6ac0: $0c
	rst GetHLinHL                                          ; $6ac1: $cf
	dec hl                                           ; $6ac2: $2b
	ld b, $2e                                        ; $6ac3: $06 $2e
	inc c                                            ; $6ac5: $0c
	jp $052b                                         ; $6ac6: $c3 $2b $05


	ld l, $0c                                        ; $6ac9: $2e $0c
	rst $38                                          ; $6acb: $ff
	or h                                             ; $6acc: $b4
	dec l                                            ; $6acd: $2d

jr_007_6ace:
	ld de, $fc01                                     ; $6ace: $11 $01 $fc
	ld b, e                                          ; $6ad1: $43
	ld [bc], a                                       ; $6ad2: $02
	db $fc                                           ; $6ad3: $fc
	dec b                                            ; $6ad4: $05
	jp nz, Jump_007_43fc                             ; $6ad5: $c2 $fc $43

	ld [bc], a                                       ; $6ad8: $02
	db $fc                                           ; $6ad9: $fc
	dec b                                            ; $6ada: $05
	jp Jump_007_43fc                                 ; $6adb: $c3 $fc $43


	ld [bc], a                                       ; $6ade: $02
	db $fc                                           ; $6adf: $fc
	dec b                                            ; $6ae0: $05
	call nz, Call_007_43fc                           ; $6ae1: $c4 $fc $43
	ld [bc], a                                       ; $6ae4: $02
	db $fc                                           ; $6ae5: $fc
	dec b                                            ; $6ae6: $05
	push bc                                          ; $6ae7: $c5
	db $fc                                           ; $6ae8: $fc
	ld b, e                                          ; $6ae9: $43
	ld [bc], a                                       ; $6aea: $02
	db $fc                                           ; $6aeb: $fc
	dec b                                            ; $6aec: $05
	add $fe                                          ; $6aed: $c6 $fe
	ld b, e                                          ; $6aef: $43
	ld [bc], a                                       ; $6af0: $02
	cp $ff                                           ; $6af1: $fe $ff
	or h                                             ; $6af3: $b4
	dec l                                            ; $6af4: $2d
	ld hl, $fe1a                                     ; $6af5: $21 $1a $fe
	ld a, l                                          ; $6af8: $7d
	ld [bc], a                                       ; $6af9: $02
	jp nz, $0118                                     ; $6afa: $c2 $18 $01

	call nz, $014e                    ; $6afd: $c4 $4e $01
	jp nz, $017d                                     ; $6b00: $c2 $7d $01

	jr @+$03                                         ; $6b03: $18 $01

	call nz, $014e                    ; $6b05: $c4 $4e $01
	cp $ff                                           ; $6b08: $fe $ff
	pop hl                                           ; $6b0a: $e1
	dec l                                            ; $6b0b: $2d
	and c                                            ; $6b0c: $a1
	cp $45                                           ; $6b0d: $fe $45
	inc bc                                           ; $6b0f: $03
	ld b, a                                          ; $6b10: $47
	ld bc, $fffe                                     ; $6b11: $01 $fe $ff
	or h                                             ; $6b14: $b4
	ld a, [$00f1]                                    ; $6b15: $fa $f1 $00
	sub h                                            ; $6b18: $94
	ld h, $be                                        ; $6b19: $26 $be
	inc c                                            ; $6b1b: $0c
	dec de                                           ; $6b1c: $1b
	dec e                                            ; $6b1d: $1d
	ld e, $20                                        ; $6b1e: $1e $20
	ld hl, $be22                                     ; $6b20: $21 $22 $be
	call nz, $0620                                   ; $6b23: $c4 $20 $06
	ld hl, $220c                                     ; $6b26: $21 $0c $22
	inc c                                            ; $6b29: $0c
	jp $0620                                         ; $6b2a: $c3 $20 $06


	ld hl, $220c                                     ; $6b2d: $21 $0c $22
	inc c                                            ; $6b30: $0c
	rst $38                                          ; $6b31: $ff
	pop hl                                           ; $6b32: $e1
	ld e, d                                          ; $6b33: $5a
	pop af                                           ; $6b34: $f1
	ei                                               ; $6b35: $fb
	ccf                                              ; $6b36: $3f
	rst SubAFromDE                                          ; $6b37: $df
	rst SubAFromDE                                          ; $6b38: $df
	rst SubAFromDE                                          ; $6b39: $df
	rst SubAFromDE                                          ; $6b3a: $df
	rst SubAFromDE                                          ; $6b3b: $df
	ei                                               ; $6b3c: $fb
	inc bc                                           ; $6b3d: $03
	jp z, $3ffb                                      ; $6b3e: $ca $fb $3f

	rst SubAFromDE                                          ; $6b41: $df
	rst SubAFromDE                                          ; $6b42: $df
	rst SubAFromDE                                          ; $6b43: $df
	rst SubAFromDE                                          ; $6b44: $df

jr_007_6b45:
	rst SubAFromDE                                          ; $6b45: $df
	ei                                               ; $6b46: $fb
	inc bc                                           ; $6b47: $03
	push bc                                          ; $6b48: $c5
	ccf                                              ; $6b49: $3f
	rst $38                                          ; $6b4a: $ff
	or h                                             ; $6b4b: $b4
	ld d, b                                          ; $6b4c: $50
	pop af                                           ; $6b4d: $f1
	ld bc, $01be                                     ; $6b4e: $01 $be $01
	ld l, $00                                        ; $6b51: $2e $00
	ld a, [hl+]                                      ; $6b53: $2a
	nop                                              ; $6b54: $00
	cp [hl]                                          ; $6b55: $be
	res 7, [hl]                                      ; $6b56: $cb $be
	ld bc, $0031                                     ; $6b58: $01 $31 $00
	dec l                                            ; $6b5b: $2d
	nop                                              ; $6b5c: $00
	cp [hl]                                          ; $6b5d: $be
	rst $38                                          ; $6b5e: $ff
	pop hl                                           ; $6b5f: $e1
	ld d, b                                          ; $6b60: $50
	pop af                                           ; $6b61: $f1
	add hl, sp                                       ; $6b62: $39
	rst SubAFromDE                                          ; $6b63: $df
	jr c, jr_007_6b45                                ; $6b64: $38 $df

	add $58                                          ; $6b66: $c6 $58
	rst SubAFromDE                                          ; $6b68: $df
	ld e, b                                          ; $6b69: $58
	rst SubAFromDE                                          ; $6b6a: $df
	rst $38                                          ; $6b6b: $ff
	or h                                             ; $6b6c: $b4
	sub [hl]                                         ; $6b6d: $96
	ld h, c                                          ; $6b6e: $61
	nop                                              ; $6b6f: $00
	sub h                                            ; $6b70: $94
	dec d                                            ; $6b71: $15
	ld e, $0a                                        ; $6b72: $1e $0a
	ld e, $0a                                        ; $6b74: $1e $0a
	rst JumpTable                                          ; $6b76: $c7
	ld e, $0a                                        ; $6b77: $1e $0a
	ret z                                            ; $6b79: $c8

	ld e, $0a                                        ; $6b7a: $1e $0a
	ld e, $0a                                        ; $6b7c: $1e $0a
	rst JumpTable                                          ; $6b7e: $c7
	cp [hl]                                          ; $6b7f: $be
	ld a, [bc]                                       ; $6b80: $0a
	ld e, $1e                                        ; $6b81: $1e $1e
	ld e, $1e                                        ; $6b83: $1e $1e
	ld e, $be                                        ; $6b85: $1e $be
	add $1e                                          ; $6b87: $c6 $1e
	ld a, [bc]                                       ; $6b89: $0a
	push bc                                          ; $6b8a: $c5
	ld e, $0a                                        ; $6b8b: $1e $0a
	rst $38                                          ; $6b8d: $ff
	db $e3                                           ; $6b8e: $e3
	ld [bc], a                                       ; $6b8f: $02
	pop af                                           ; $6b90: $f1
	inc c                                            ; $6b91: $0c
	ld d, e                                          ; $6b92: $53
	db $e3                                           ; $6b93: $e3
	dec b                                            ; $6b94: $05
	pop af                                           ; $6b95: $f1
	ld [$e062], sp                                   ; $6b96: $08 $62 $e0
	ld bc, $6207                                     ; $6b99: $01 $07 $62
	rst $38                                          ; $6b9c: $ff
	or [hl]                                          ; $6b9d: $b6
	add hl, de                                       ; $6b9e: $19
	pop af                                           ; $6b9f: $f1
	nop                                              ; $6ba0: $00
	ret z                                            ; $6ba1: $c8

	ld bc, $1b94                                     ; $6ba2: $01 $94 $1b
	ei                                               ; $6ba5: $fb
	add hl, de                                       ; $6ba6: $19
	ld [bc], a                                       ; $6ba7: $02
	ret nc                                           ; $6ba8: $d0

	dec bc                                           ; $6ba9: $0b
	add hl, de                                       ; $6baa: $19
	ld bc, $19d0                                     ; $6bab: $01 $d0 $19
	ei                                               ; $6bae: $fb
	ld a, [bc]                                       ; $6baf: $0a
	rst $38                                          ; $6bb0: $ff
	pop hl                                           ; $6bb1: $e1
	add hl, de                                       ; $6bb2: $19
	ld [hl], c                                       ; $6bb3: $71
	ei                                               ; $6bb4: $fb
	dec a                                            ; $6bb5: $3d
	ldh [c], a                                       ; $6bb6: $e2
	ld [hl], c                                       ; $6bb7: $71
	ld b, $3d                                        ; $6bb8: $06 $3d
	db $e3                                           ; $6bba: $e3
	dec bc                                           ; $6bbb: $0b
	and c                                            ; $6bbc: $a1
	ld bc, $d03f                                     ; $6bbd: $01 $3f $d0
	add hl, de                                       ; $6bc0: $19
	ei                                               ; $6bc1: $fb
	ld a, [bc]                                       ; $6bc2: $0a
	rst $38                                          ; $6bc3: $ff
	or h                                             ; $6bc4: $b4
	ld a, [$02c1]                                    ; $6bc5: $fa $c1 $02
	cp [hl]                                          ; $6bc8: $be
	inc bc                                           ; $6bc9: $03
	ld [hl+], a                                      ; $6bca: $22
	dec h                                            ; $6bcb: $25
	ld a, [hl+]                                      ; $6bcc: $2a
	ld l, $be                                        ; $6bcd: $2e $be
	call nz, $032a                                   ; $6bcf: $c4 $2a $03
	ld l, $03                                        ; $6bd2: $2e $03
	rst $38                                          ; $6bd4: $ff
	or [hl]                                          ; $6bd5: $b6
	ld a, [$02e1]                                    ; $6bd6: $fa $e1 $02
	ld a, [$3505]                                    ; $6bd9: $fa $05 $35
	inc bc                                           ; $6bdc: $03
	add $35                                          ; $6bdd: $c6 $35
	inc bc                                           ; $6bdf: $03
	call $0331                                       ; $6be0: $cd $31 $03
	add $35                                          ; $6be3: $c6 $35
	inc bc                                           ; $6be5: $03
	call $032e                                       ; $6be6: $cd $2e $03
	add $31                                          ; $6be9: $c6 $31
	inc bc                                           ; $6beb: $03
	call $032a                                       ; $6bec: $cd $2a $03
	add $2e                                          ; $6bef: $c6 $2e
	inc bc                                           ; $6bf1: $03
	call $0329                                       ; $6bf2: $cd $29 $03
	add $2a                                          ; $6bf5: $c6 $2a
	inc bc                                           ; $6bf7: $03
	call $0325                                       ; $6bf8: $cd $25 $03
	add $29                                          ; $6bfb: $c6 $29
	inc bc                                           ; $6bfd: $03
	call $0322                                       ; $6bfe: $cd $22 $03
	add $25                                          ; $6c01: $c6 $25
	inc bc                                           ; $6c03: $03
	call $031e                                       ; $6c04: $cd $1e $03
	add $22                                          ; $6c07: $c6 $22
	inc bc                                           ; $6c09: $03
	jp z, $031d                                      ; $6c0a: $ca $1d $03

	add $1d                                          ; $6c0d: $c6 $1d
	inc bc                                           ; $6c0f: $03
	jp $031d                                         ; $6c10: $c3 $1d $03


	rst $38                                          ; $6c13: $ff
	or [hl]                                          ; $6c14: $b6
	add d                                            ; $6c15: $82
	add c                                            ; $6c16: $81
	nop                                              ; $6c17: $00
	sub [hl]                                         ; $6c18: $96
	inc bc                                           ; $6c19: $03
	ei                                               ; $6c1a: $fb
	call $02be                                       ; $6c1b: $cd $be $02
	ld a, [hl+]                                      ; $6c1e: $2a
	cpl                                              ; $6c1f: $2f
	ld sp, $3836                                     ; $6c20: $31 $36 $38
	cp [hl]                                          ; $6c23: $be
	ret z                                            ; $6c24: $c8

	ld [hl], $02                                     ; $6c25: $36 $02
	jr c, jr_007_6c2b                                ; $6c27: $38 $02

	ei                                               ; $6c29: $fb
	ld a, [bc]                                       ; $6c2a: $0a

jr_007_6c2b:
	res 7, [hl]                                      ; $6c2b: $cb $be
	ld [bc], a                                       ; $6c2d: $02
	ld a, [hl+]                                      ; $6c2e: $2a
	cpl                                              ; $6c2f: $2f
	ld sp, $3836                                     ; $6c30: $31 $36 $38
	cp [hl]                                          ; $6c33: $be
	add $36                                          ; $6c34: $c6 $36
	ld [bc], a                                       ; $6c36: $02
	jr c, jr_007_6c3b                                ; $6c37: $38 $02

	rst $38                                          ; $6c39: $ff
	or h                                             ; $6c3a: $b4

jr_007_6c3b:
	ld a, [$01e1]                                    ; $6c3b: $fa $e1 $01
	cp [hl]                                          ; $6c3e: $be
	inc b                                            ; $6c3f: $04
	add hl, de                                       ; $6c40: $19
	ld e, $24                                        ; $6c41: $1e $24
	ld e, $24                                        ; $6c43: $1e $24
	jr z, @+$2e                                      ; $6c45: $28 $2c

	jr z, jr_007_6c75                                ; $6c47: $28 $2c

	jr nc, jr_007_6c7f                               ; $6c49: $30 $34

	cp [hl]                                          ; $6c4b: $be
	push bc                                          ; $6c4c: $c5
	inc l                                            ; $6c4d: $2c
	inc b                                            ; $6c4e: $04
	jr nc, @+$06                                     ; $6c4f: $30 $04

	inc [hl]                                         ; $6c51: $34
	inc b                                            ; $6c52: $04
	jp nz, $042c                                     ; $6c53: $c2 $2c $04

	jr nc, jr_007_6c5c                               ; $6c56: $30 $04

	inc [hl]                                         ; $6c58: $34
	inc b                                            ; $6c59: $04
	rst $38                                          ; $6c5a: $ff
	or h                                             ; $6c5b: $b4

jr_007_6c5c:
	add d                                            ; $6c5c: $82
	pop af                                           ; $6c5d: $f1
	ld [bc], a                                       ; $6c5e: $02
	nop                                              ; $6c5f: $00
	ld bc, $befb                                     ; $6c60: $01 $fb $be
	ld bc, $0002                                     ; $6c63: $01 $02 $00
	ld a, [bc]                                       ; $6c66: $0a
	nop                                              ; $6c67: $00
	ld bc, $be00                                     ; $6c68: $01 $00 $be
	ei                                               ; $6c6b: $fb
	ld [bc], a                                       ; $6c6c: $02
	sub b                                            ; $6c6d: $90
	dec c                                            ; $6c6e: $0d
	ld [bc], a                                       ; $6c6f: $02
	nop                                              ; $6c70: $00
	ld bc, $020d                                     ; $6c71: $01 $0d $02
	nop                                              ; $6c74: $00

jr_007_6c75:
	ld [bc], a                                       ; $6c75: $02
	sub h                                            ; $6c76: $94
	ld a, $c6                                        ; $6c77: $3e $c6
	dec c                                            ; $6c79: $0d
	ld [hl-], a                                      ; $6c7a: $32
	rst $38                                          ; $6c7b: $ff
	pop hl                                           ; $6c7c: $e1
	add d                                            ; $6c7d: $82
	pop af                                           ; $6c7e: $f1

jr_007_6c7f:
	ei                                               ; $6c7f: $fb
	ld e, a                                          ; $6c80: $5f
	rst SubAFromDE                                          ; $6c81: $df
	ld d, h                                          ; $6c82: $54
	rst SubAFromDE                                          ; $6c83: $df
	ld e, a                                          ; $6c84: $5f
	ei                                               ; $6c85: $fb
	ld [bc], a                                       ; $6c86: $02
	ei                                               ; $6c87: $fb
	ld c, b                                          ; $6c88: $48
	rst SubAFromDE                                          ; $6c89: $df
	ei                                               ; $6c8a: $fb
	ld [bc], a                                       ; $6c8b: $02
	ret z                                            ; $6c8c: $c8

	ld c, b                                          ; $6c8d: $48
	rst SubAFromDE                                          ; $6c8e: $df
	db $e3                                           ; $6c8f: $e3
	ld [bc], a                                       ; $6c90: $02
	pop af                                           ; $6c91: $f1
	ld b, $5f                                        ; $6c92: $06 $5f
	rst $38                                          ; $6c94: $ff
	pop hl                                           ; $6c95: $e1
	ld l, c                                          ; $6c96: $69
	pop hl                                           ; $6c97: $e1
	ld b, b                                          ; $6c98: $40
	ld b, e                                          ; $6c99: $43
	ld a, $41                                        ; $6c9a: $3e $41
	jp z, Jump_007_413e                              ; $6c9c: $ca $3e $41

	rst $38                                          ; $6c9f: $ff
	or h                                             ; $6ca0: $b4
	ld e, d                                          ; $6ca1: $5a
	ld [hl], c                                       ; $6ca2: $71
	ld [bc], a                                       ; $6ca3: $02
	nop                                              ; $6ca4: $00
	ld a, [hl+]                                      ; $6ca5: $2a
	ld a, [hl]                                       ; $6ca6: $7e
	add hl, sp                                       ; $6ca7: $39
	nop                                              ; $6ca8: $00
	and b                                            ; $6ca9: $a0
	sub a                                            ; $6caa: $97
	add hl, de                                       ; $6cab: $19
	ld b, a                                          ; $6cac: $47
	rlca                                             ; $6cad: $07
	sub a                                            ; $6cae: $97
	nop                                              ; $6caf: $00
	ld a, [hl]                                       ; $6cb0: $7e
	ld a, [hl-]                                      ; $6cb1: $3a
	nop                                              ; $6cb2: $00
	and b                                            ; $6cb3: $a0
	ld b, a                                          ; $6cb4: $47
	ld [$397e], sp                                   ; $6cb5: $08 $7e $39
	nop                                              ; $6cb8: $00
	and b                                            ; $6cb9: $a0
	ld b, a                                          ; $6cba: $47
	add hl, bc                                       ; $6cbb: $09
	rst $38                                          ; $6cbc: $ff
	db $e3                                           ; $6cbd: $e3
	ld bc, $0f11                                     ; $6cbe: $01 $11 $0f
	ld b, e                                          ; $6cc1: $43
	ldh [c], a                                       ; $6cc2: $e2
	pop af                                           ; $6cc3: $f1
	rlca                                             ; $6cc4: $07
	ld b, e                                          ; $6cc5: $43
	rst $38                                          ; $6cc6: $ff
	or h                                             ; $6cc7: $b4
	ld hl, sp-$1f                                    ; $6cc8: $f8 $e1
	ld bc, $06be                                     ; $6cca: $01 $be $06
	ld hl, $2825                                     ; $6ccd: $21 $25 $28
	dec l                                            ; $6cd0: $2d
	cp [hl]                                          ; $6cd1: $be
	ret z                                            ; $6cd2: $c8

	jr z, jr_007_6cdb                                ; $6cd3: $28 $06

	dec l                                            ; $6cd5: $2d
	ld b, $c4                                        ; $6cd6: $06 $c4
	cp [hl]                                          ; $6cd8: $be
	ld b, $21                                        ; $6cd9: $06 $21

jr_007_6cdb:
	dec h                                            ; $6cdb: $25
	jr z, @+$2f                                      ; $6cdc: $28 $2d

	cp [hl]                                          ; $6cde: $be
	jp $0628                                         ; $6cdf: $c3 $28 $06


	dec l                                            ; $6ce2: $2d
	ld b, $c2                                        ; $6ce3: $06 $c2
	cp [hl]                                          ; $6ce5: $be
	ld b, $21                                        ; $6ce6: $06 $21
	dec h                                            ; $6ce8: $25
	jr z, jr_007_6d18                                ; $6ce9: $28 $2d

	jr z, jr_007_6d1a                                ; $6ceb: $28 $2d

	cp [hl]                                          ; $6ced: $be
	pop bc                                           ; $6cee: $c1
	cp [hl]                                          ; $6cef: $be
	ld b, $21                                        ; $6cf0: $06 $21
	dec h                                            ; $6cf2: $25
	jr z, jr_007_6d22                                ; $6cf3: $28 $2d

	jr z, @+$2f                                      ; $6cf5: $28 $2d

	cp [hl]                                          ; $6cf7: $be
	rst $38                                          ; $6cf8: $ff
	or h                                             ; $6cf9: $b4
	ld hl, sp-$1f                                    ; $6cfa: $f8 $e1
	ld bc, $05be                                     ; $6cfc: $01 $be $05
	ld hl, $2825                                     ; $6cff: $21 $25 $28
	dec l                                            ; $6d02: $2d
	cp [hl]                                          ; $6d03: $be
	ret z                                            ; $6d04: $c8

	jr z, jr_007_6d0c                                ; $6d05: $28 $05

	dec l                                            ; $6d07: $2d
	dec b                                            ; $6d08: $05
	jp $0528                                         ; $6d09: $c3 $28 $05


jr_007_6d0c:
	dec l                                            ; $6d0c: $2d
	dec b                                            ; $6d0d: $05
	jp nz, $0528                                     ; $6d0e: $c2 $28 $05

	dec l                                            ; $6d11: $2d
	dec b                                            ; $6d12: $05
	pop bc                                           ; $6d13: $c1
	jr z, jr_007_6d1b                                ; $6d14: $28 $05

	dec l                                            ; $6d16: $2d
	dec b                                            ; $6d17: $05

jr_007_6d18:
	rst $38                                          ; $6d18: $ff
	or h                                             ; $6d19: $b4

jr_007_6d1a:
	xor d                                            ; $6d1a: $aa

jr_007_6d1b:
	pop hl                                           ; $6d1b: $e1
	ld [bc], a                                       ; $6d1c: $02
	sub h                                            ; $6d1d: $94

Jump_007_6d1e:
	dec [hl]                                         ; $6d1e: $35
	ei                                               ; $6d1f: $fb
	sub d                                            ; $6d20: $92
	inc d                                            ; $6d21: $14

jr_007_6d22:
	ld [$1491], sp                                   ; $6d22: $08 $91 $14
	ld [$03fb], sp                                   ; $6d25: $08 $fb $03
	ei                                               ; $6d28: $fb
	sub d                                            ; $6d29: $92
	inc de                                           ; $6d2a: $13
	ld [$1391], sp                                   ; $6d2b: $08 $91 $13
	ld [$02fb], sp                                   ; $6d2e: $08 $fb $02
	rst JumpTable                                          ; $6d31: $c7
	sub d                                            ; $6d32: $92
	ld [de], a                                       ; $6d33: $12
	ld [$1291], sp                                   ; $6d34: $08 $91 $12
	ld [$92c4], sp                                   ; $6d37: $08 $c4 $92
	ld de, $9108                                     ; $6d3a: $11 $08 $91
	ld de, $ff08                                     ; $6d3d: $11 $08 $ff
	or h                                             ; $6d40: $b4
	ld h, h                                          ; $6d41: $64
	pop af                                           ; $6d42: $f1
	ld bc, $0234                                     ; $6d43: $01 $34 $02
	jr c, jr_007_6d4a                                ; $6d46: $38 $02

	dec sp                                           ; $6d48: $3b
	ld [bc], a                                       ; $6d49: $02

jr_007_6d4a:
	sub [hl]                                         ; $6d4a: $96
	ld a, [$4002]                                    ; $6d4b: $fa $02 $40
	jr z, @+$01                                      ; $6d4e: $28 $ff

	or h                                             ; $6d50: $b4
	ld h, h                                          ; $6d51: $64
	pop af                                           ; $6d52: $f1
	nop                                              ; $6d53: $00

jr_007_6d54:
	sub h                                            ; $6d54: $94
	dec h                                            ; $6d55: $25
	dec e                                            ; $6d56: $1d
	ld e, $ff                                        ; $6d57: $1e $ff
	pop hl                                           ; $6d59: $e1
	inc d                                            ; $6d5a: $14
	pop af                                           ; $6d5b: $f1
	ld h, $cd                                        ; $6d5c: $26 $cd
	inc h                                            ; $6d5e: $24
	call nz, $ff24                                   ; $6d5f: $c4 $24 $ff
	or h                                             ; $6d62: $b4
	sub [hl]                                         ; $6d63: $96
	pop af                                           ; $6d64: $f1
	nop                                              ; $6d65: $00
	sub a                                            ; $6d66: $97
	adc c                                            ; $6d67: $89
	cp [hl]                                          ; $6d68: $be
	inc c                                            ; $6d69: $0c
	ld e, $21                                        ; $6d6a: $1e $21
	inc h                                            ; $6d6c: $24
	daa                                              ; $6d6d: $27
	ld a, [hl+]                                      ; $6d6e: $2a
	cp [hl]                                          ; $6d6f: $be
	ld a, [hl]                                       ; $6d70: $7e
	jr c, @+$11                                      ; $6d71: $38 $0f

	and b                                            ; $6d73: $a0
	sub a                                            ; $6d74: $97
	sbc c                                            ; $6d75: $99
	sub [hl]                                         ; $6d76: $96
	ld h, h                                          ; $6d77: $64
	rlca                                             ; $6d78: $07
	dec l                                            ; $6d79: $2d
	ld c, [hl]                                       ; $6d7a: $4e
	rst $38                                          ; $6d7b: $ff
	or h                                             ; $6d7c: $b4
	sub [hl]                                         ; $6d7d: $96
	add c                                            ; $6d7e: $81
	ld [bc], a                                       ; $6d7f: $02
	sub h                                            ; $6d80: $94
	ld h, $25                                        ; $6d81: $26 $25
	dec b                                            ; $6d83: $05
	nop                                              ; $6d84: $00
	ld [bc], a                                       ; $6d85: $02
	add hl, hl                                       ; $6d86: $29
	dec b                                            ; $6d87: $05
	sub h                                            ; $6d88: $94
	ld [$41c4], sp                                   ; $6d89: $08 $c4 $41
	ld [bc], a                                       ; $6d8c: $02
	rst $38                                          ; $6d8d: $ff
	or h                                             ; $6d8e: $b4
	ld a, [$02c1]                                    ; $6d8f: $fa $c1 $02
	sub h                                            ; $6d92: $94
	dec h                                            ; $6d93: $25
	ei                                               ; $6d94: $fb
	cp [hl]                                          ; $6d95: $be
	inc b                                            ; $6d96: $04
	rra                                              ; $6d97: $1f
	jr nz, @+$23                                     ; $6d98: $20 $21

	ld [hl+], a                                      ; $6d9a: $22
	inc hl                                           ; $6d9b: $23
	inc h                                            ; $6d9c: $24
	dec h                                            ; $6d9d: $25
	ld h, $27                                        ; $6d9e: $26 $27
	cp [hl]                                          ; $6da0: $be
	ei                                               ; $6da1: $fb
	ld b, $c7                                        ; $6da2: $06 $c7
	ld h, $04                                        ; $6da4: $26 $04
	daa                                              ; $6da6: $27
	inc b                                            ; $6da7: $04
	push bc                                          ; $6da8: $c5
	ld h, $04                                        ; $6da9: $26 $04
	daa                                              ; $6dab: $27
	inc b                                            ; $6dac: $04
	jp $0426                                         ; $6dad: $c3 $26 $04


	daa                                              ; $6db0: $27
	inc b                                            ; $6db1: $04
	rst $38                                          ; $6db2: $ff
	or h                                             ; $6db3: $b4
	ld d, b                                          ; $6db4: $50
	pop de                                           ; $6db5: $d1
	nop                                              ; $6db6: $00
	sub h                                            ; $6db7: $94
	add hl, hl                                       ; $6db8: $29
	ld de, $940a                                     ; $6db9: $11 $0a $94
	ld e, e                                          ; $6dbc: $5b
	dec b                                            ; $6dbd: $05
	jr z, jr_007_6d54                                ; $6dbe: $28 $94

jr_007_6dc0:
	ld a, [hl+]                                      ; $6dc0: $2a
	rst GetHLinHL                                          ; $6dc1: $cf
	sub d                                            ; $6dc2: $92
	rrca                                             ; $6dc3: $0f
	inc b                                            ; $6dc4: $04
	nop                                              ; $6dc5: $00
	ld bc, $040f                                     ; $6dc6: $01 $0f $04
	add $0f                                          ; $6dc9: $c6 $0f
	inc b                                            ; $6dcb: $04
	jp $040f                                         ; $6dcc: $c3 $0f $04


	rst $38                                          ; $6dcf: $ff
	pop hl                                           ; $6dd0: $e1
	ld d, b                                          ; $6dd1: $50
	pop af                                           ; $6dd2: $f1
	ei                                               ; $6dd3: $fb
	ld d, l                                          ; $6dd4: $55
	rst SubAFromDE                                          ; $6dd5: $df
	ei                                               ; $6dd6: $fb
	dec b                                            ; $6dd7: $05
	pop hl                                           ; $6dd8: $e1
	db $10                                           ; $6dd9: $10
	ld d, c                                          ; $6dda: $51
	inc sp                                           ; $6ddb: $33
	rst SubAFromDE                                          ; $6ddc: $df
	inc [hl]                                         ; $6ddd: $34
	rst SubAFromDE                                          ; $6dde: $df
	dec [hl]                                         ; $6ddf: $35
	rst SubAFromDE                                          ; $6de0: $df
	ld [hl], $df                                     ; $6de1: $36 $df
	scf                                              ; $6de3: $37
	ret nc                                           ; $6de4: $d0

	sub [hl]                                         ; $6de5: $96
	rst SubAFromDE                                          ; $6de6: $df
	ldh [rSC], a                                     ; $6de7: $e0 $02
	dec b                                            ; $6de9: $05
	scf                                              ; $6dea: $37
	rst $38                                          ; $6deb: $ff
	or h                                             ; $6dec: $b4
	jr nc, jr_007_6dc0                               ; $6ded: $30 $d1

	ld [bc], a                                       ; $6def: $02
	sub h                                            ; $6df0: $94
	inc a                                            ; $6df1: $3c
	ld a, [hl]                                       ; $6df2: $7e
	ld a, [hl-]                                      ; $6df3: $3a
	nop                                              ; $6df4: $00
	and e                                            ; $6df5: $a3
	ld sp, $3009                                     ; $6df6: $31 $09 $30
	ld a, [bc]                                       ; $6df9: $0a
	cpl                                              ; $6dfa: $2f
	inc c                                            ; $6dfb: $0c
	ld l, $0d                                        ; $6dfc: $2e $0d
	dec l                                            ; $6dfe: $2d
	db $10                                           ; $6dff: $10
	ld a, [hl]                                       ; $6e00: $7e
	jr c, jr_007_6e03                                ; $6e01: $38 $00

jr_007_6e03:
	and b                                            ; $6e03: $a0
	sub [hl]                                         ; $6e04: $96
	ld a, [$2805]                                    ; $6e05: $fa $05 $28
	ld h, $ff                                        ; $6e08: $26 $ff
	or h                                             ; $6e0a: $b4
	ld d, b                                          ; $6e0b: $50
	pop af                                           ; $6e0c: $f1
	ld [bc], a                                       ; $6e0d: $02
	sub h                                            ; $6e0e: $94
	ld a, [hl-]                                      ; $6e0f: $3a
	add hl, de                                       ; $6e10: $19
	ld [bc], a                                       ; $6e11: $02
	ret nc                                           ; $6e12: $d0

	ld c, d                                          ; $6e13: $4a
	sub b                                            ; $6e14: $90
	sub h                                            ; $6e15: $94
	ld e, $25                                        ; $6e16: $1e $25
	dec bc                                           ; $6e18: $0b
	rst $38                                          ; $6e19: $ff
	pop hl                                           ; $6e1a: $e1
	ld d, b                                          ; $6e1b: $50
	add c                                            ; $6e1c: $81
	ld l, b                                          ; $6e1d: $68
	db $e3                                           ; $6e1e: $e3
	ld bc, $0581                                     ; $6e1f: $01 $81 $05
	ld [hl], $ff                                     ; $6e22: $36 $ff
	or h                                             ; $6e24: $b4
	ld a, b                                          ; $6e25: $78
	ld sp, $9702                                     ; $6e26: $31 $02 $97
	sbc e                                            ; $6e29: $9b
	ld a, [hl]                                       ; $6e2a: $7e
	ld hl, $a000                                     ; $6e2b: $21 $00 $a0
	ld c, b                                          ; $6e2e: $48
	ld [bc], a                                       ; $6e2f: $02
	or [hl]                                          ; $6e30: $b6
	ld c, e                                          ; $6e31: $4b
	pop hl                                           ; $6e32: $e1
	ld bc, $0464                                     ; $6e33: $01 $64 $04
	ld c, b                                          ; $6e36: $48
	dec c                                            ; $6e37: $0d
	rst $38                                          ; $6e38: $ff
	pop hl                                           ; $6e39: $e1
	ret nz                                           ; $6e3a: $c0

	or c                                             ; $6e3b: $b1
	ei                                               ; $6e3c: $fb
	ccf                                              ; $6e3d: $3f
	ld c, a                                          ; $6e3e: $4f
	rst SubAFromDE                                          ; $6e3f: $df
	ld a, $4e                                        ; $6e40: $3e $4e
	rst SubAFromDE                                          ; $6e42: $df
	dec a                                            ; $6e43: $3d
	ld c, l                                          ; $6e44: $4d
	rst $38                                          ; $6e45: $ff
	ret nc                                           ; $6e46: $d0

	add d                                            ; $6e47: $82
	db $fc                                           ; $6e48: $fc
	ei                                               ; $6e49: $fb
	rst JumpTable                                          ; $6e4a: $c7
	sub d                                            ; $6e4b: $92
	dec e                                            ; $6e4c: $1d
	inc bc                                           ; $6e4d: $03
	jp nz, $011d                                     ; $6e4e: $c2 $1d $01

	sub c                                            ; $6e51: $91
	rst JumpTable                                          ; $6e52: $c7
	add hl, hl                                       ; $6e53: $29
	inc bc                                           ; $6e54: $03

jr_007_6e55:
	ei                                               ; $6e55: $fb
	inc b                                            ; $6e56: $04
	nop                                              ; $6e57: $00
	jr jr_007_6e55                                   ; $6e58: $18 $fb

	rst JumpTable                                          ; $6e5a: $c7
	sub d                                            ; $6e5b: $92
	dec e                                            ; $6e5c: $1d
	inc bc                                           ; $6e5d: $03
	jp nz, $011d                                     ; $6e5e: $c2 $1d $01

	sub c                                            ; $6e61: $91
	rst JumpTable                                          ; $6e62: $c7
	add hl, hl                                       ; $6e63: $29
	inc bc                                           ; $6e64: $03
	ei                                               ; $6e65: $fb
	inc b                                            ; $6e66: $04
	nop                                              ; $6e67: $00
	ld c, b                                          ; $6e68: $48
	db $fc                                           ; $6e69: $fc
	ld [bc], a                                       ; $6e6a: $02
	rst $38                                          ; $6e6b: $ff
	or h                                             ; $6e6c: $b4
	ld h, h                                          ; $6e6d: $64
	pop af                                           ; $6e6e: $f1
	ld [bc], a                                       ; $6e6f: $02
	sub h                                            ; $6e70: $94
	ld a, [hl-]                                      ; $6e71: $3a
	inc hl                                           ; $6e72: $23
	ld [bc], a                                       ; $6e73: $02
	or h                                             ; $6e74: $b4
	ld c, d                                          ; $6e75: $4a
	pop af                                           ; $6e76: $f1
	nop                                              ; $6e77: $00
	sub h                                            ; $6e78: $94
	ld l, $2e                                        ; $6e79: $2e $2e
	ld bc, $0922                                     ; $6e7b: $01 $22 $09
	push bc                                          ; $6e7e: $c5
	ld [hl+], a                                      ; $6e7f: $22
	ld [$e1ff], sp                                   ; $6e80: $08 $ff $e1
	ld h, h                                          ; $6e83: $64
	pop bc                                           ; $6e84: $c1
	ld l, b                                          ; $6e85: $68
	rst SubAFromDE                                          ; $6e86: $df
	db $e3                                           ; $6e87: $e3
	ld [bc], a                                       ; $6e88: $02
	and c                                            ; $6e89: $a1
	ld b, $36                                        ; $6e8a: $06 $36
	rst $38                                          ; $6e8c: $ff
	or [hl]                                          ; $6e8d: $b6
	or h                                             ; $6e8e: $b4
	pop af                                           ; $6e8f: $f1
	ld [bc], a                                       ; $6e90: $02
	ld h, h                                          ; $6e91: $64
	inc b                                            ; $6e92: $04
	sub h                                            ; $6e93: $94
	inc h                                            ; $6e94: $24
	db $fc                                           ; $6e95: $fc
	add hl, hl                                       ; $6e96: $29
	ld [$0825], sp                                   ; $6e97: $08 $25 $08
	nop                                              ; $6e9a: $00
	ld bc, $03fc                                     ; $6e9b: $01 $fc $03
	rst $38                                          ; $6e9e: $ff
	or h                                             ; $6e9f: $b4
	ld a, [$02c1]                                    ; $6ea0: $fa $c1 $02
	sub h                                            ; $6ea3: $94
	ld [hl], $be                                     ; $6ea4: $36 $be
	ld b, $22                                        ; $6ea6: $06 $22
	inc h                                            ; $6ea8: $24
	ld h, $27                                        ; $6ea9: $26 $27
	add hl, hl                                       ; $6eab: $29
	dec hl                                           ; $6eac: $2b
	inc l                                            ; $6ead: $2c
	ld l, $be                                        ; $6eae: $2e $be
	rst $38                                          ; $6eb0: $ff
	db $e3                                           ; $6eb1: $e3
	ld a, [bc]                                       ; $6eb2: $0a
	pop hl                                           ; $6eb3: $e1
	inc b                                            ; $6eb4: $04
	ei                                               ; $6eb5: $fb
	ld h, e                                          ; $6eb6: $63
	ei                                               ; $6eb7: $fb
	dec bc                                           ; $6eb8: $0b

jr_007_6eb9:
	rst $38                                          ; $6eb9: $ff
	pop hl                                           ; $6eba: $e1
	ld d, b                                          ; $6ebb: $50
	pop af                                           ; $6ebc: $f1
	ei                                               ; $6ebd: $fb
	ld c, c                                          ; $6ebe: $49
	rst SubAFromDE                                          ; $6ebf: $df
	ld c, c                                          ; $6ec0: $49
	rst SubAFromDE                                          ; $6ec1: $df
	ei                                               ; $6ec2: $fb
	rlca                                             ; $6ec3: $07
	adc $49                                          ; $6ec4: $ce $49
	rst SubAFromDE                                          ; $6ec6: $df
	ld c, c                                          ; $6ec7: $49
	ret                                              ; $6ec8: $c9


	ld c, c                                          ; $6ec9: $49
	rst SubAFromDE                                          ; $6eca: $df
	ld c, c                                          ; $6ecb: $49
	rst $38                                          ; $6ecc: $ff
	or h                                             ; $6ecd: $b4
	ld sp, $00c1                                     ; $6ece: $31 $c1 $00
	sub h                                            ; $6ed1: $94
	dec [hl]                                         ; $6ed2: $35
	ld e, $05                                        ; $6ed3: $1e $05
	rst $38                                          ; $6ed5: $ff
	pop hl                                           ; $6ed6: $e1
	ld sp, $6bf1                                     ; $6ed7: $31 $f1 $6b
	ld b, b                                          ; $6eda: $40
	dec h                                            ; $6edb: $25
	ldh [$0b], a                                     ; $6edc: $e0 $0b
	ld bc, $ff24                                     ; $6ede: $01 $24 $ff
	or h                                             ; $6ee1: $b4
	ld c, a                                          ; $6ee2: $4f
	pop af                                           ; $6ee3: $f1
	ld [bc], a                                       ; $6ee4: $02
	dec c                                            ; $6ee5: $0d
	ld bc, $0100                                     ; $6ee6: $01 $00 $01
	dec c                                            ; $6ee9: $0d
	ld bc, $2f94                                     ; $6eea: $01 $94 $2f
	ld [de], a                                       ; $6eed: $12
	ld bc, $1290                                     ; $6eee: $01 $90 $12
	ld [bc], a                                       ; $6ef1: $02
	adc $12                                          ; $6ef2: $ce $12
	ld [bc], a                                       ; $6ef4: $02
	ret                                              ; $6ef5: $c9


	ld [de], a                                       ; $6ef6: $12
	ld [bc], a                                       ; $6ef7: $02
	rst JumpTable                                          ; $6ef8: $c7
	ld [de], a                                       ; $6ef9: $12
	ld [bc], a                                       ; $6efa: $02
	push bc                                          ; $6efb: $c5
	ld [de], a                                       ; $6efc: $12
	ld [bc], a                                       ; $6efd: $02
	rst $38                                          ; $6efe: $ff
	pop hl                                           ; $6eff: $e1
	ld d, $f1                                        ; $6f00: $16 $f1
	ld c, l                                          ; $6f02: $4d
	pop hl                                           ; $6f03: $e1
	inc d                                            ; $6f04: $14
	pop bc                                           ; $6f05: $c1
	ld c, h                                          ; $6f06: $4c
	jp $ff3c                                         ; $6f07: $c3 $3c $ff


	or h                                             ; $6f0a: $b4
	ld a, b                                          ; $6f0b: $78
	pop de                                           ; $6f0c: $d1
	ld [bc], a                                       ; $6f0d: $02
	sub h                                            ; $6f0e: $94
	ld a, d                                          ; $6f0f: $7a
	dec d                                            ; $6f10: $15
	inc bc                                           ; $6f11: $03
	push bc                                          ; $6f12: $c5
	dec d                                            ; $6f13: $15
	inc bc                                           ; $6f14: $03
	pop bc                                           ; $6f15: $c1
	dec d                                            ; $6f16: $15
	ld [$e1ff], sp                                   ; $6f17: $08 $ff $e1
	and b                                            ; $6f1a: $a0
	pop bc                                           ; $6f1b: $c1
	ld c, h                                          ; $6f1c: $4c
	rst $38                                          ; $6f1d: $ff
	or h                                             ; $6f1e: $b4
	ld a, b                                          ; $6f1f: $78
	pop af                                           ; $6f20: $f1
	inc bc                                           ; $6f21: $03
	nop                                              ; $6f22: $00
	jr c, jr_007_6eb9                                ; $6f23: $38 $94

	ld b, e                                          ; $6f25: $43
	add hl, de                                       ; $6f26: $19
	inc b                                            ; $6f27: $04
	nop                                              ; $6f28: $00
	inc b                                            ; $6f29: $04
	sub h                                            ; $6f2a: $94
	inc l                                            ; $6f2b: $2c
	add hl, de                                       ; $6f2c: $19
	add hl, bc                                       ; $6f2d: $09
	rst $38                                          ; $6f2e: $ff
	pop hl                                           ; $6f2f: $e1
	dec e                                            ; $6f30: $1d
	pop hl                                           ; $6f31: $e1
	ld d, [hl]                                       ; $6f32: $56
	ld e, d                                          ; $6f33: $5a
	ld [hl+], a                                      ; $6f34: $22
	ldh [$03], a                                     ; $6f35: $e0 $03
	inc bc                                           ; $6f37: $03
	ld [de], a                                       ; $6f38: $12
	pop hl                                           ; $6f39: $e1
	rrca                                             ; $6f3a: $0f
	pop af                                           ; $6f3b: $f1
	ld c, h                                          ; $6f3c: $4c
	ld c, [hl]                                       ; $6f3d: $4e
	jp Jump_007_4e4c                                 ; $6f3e: $c3 $4c $4e


	rst $38                                          ; $6f41: $ff
	or h                                             ; $6f42: $b4
	ret z                                            ; $6f43: $c8

	or c                                             ; $6f44: $b1
	inc bc                                           ; $6f45: $03
	sub h                                            ; $6f46: $94
	daa                                              ; $6f47: $27
	ei                                               ; $6f48: $fb
	ld [hl+], a                                      ; $6f49: $22
	inc d                                            ; $6f4a: $14
	ei                                               ; $6f4b: $fb
	inc b                                            ; $6f4c: $04
	sub b                                            ; $6f4d: $90
	sub h                                            ; $6f4e: $94
	inc d                                            ; $6f4f: $14
	ld bc, $0104                                ; $6f50: $01 $04 $01
	inc b                                            ; $6f53: $04
	sub h                                            ; $6f54: $94
	ld e, $ce                                        ; $6f55: $1e $ce
	ld [hl+], a                                      ; $6f57: $22
	inc d                                            ; $6f58: $14
	ret z                                            ; $6f59: $c8

	ld [hl+], a                                      ; $6f5a: $22
	inc d                                            ; $6f5b: $14
	call nz, $1422                                   ; $6f5c: $c4 $22 $14
	rst $38                                          ; $6f5f: $ff
	db $e3                                           ; $6f60: $e3
	ld a, [bc]                                       ; $6f61: $0a
	and c                                            ; $6f62: $a1
	inc bc                                           ; $6f63: $03
	jr nc, jr_007_6f96                               ; $6f64: $30 $30

	jr nc, jr_007_6f98                               ; $6f66: $30 $30

	db $e3                                           ; $6f68: $e3
	inc bc                                           ; $6f69: $03
	pop bc                                           ; $6f6a: $c1
	dec b                                            ; $6f6b: $05
	ld d, h                                          ; $6f6c: $54
	rst $38                                          ; $6f6d: $ff
	or h                                             ; $6f6e: $b4
	sub [hl]                                         ; $6f6f: $96
	pop af                                           ; $6f70: $f1
	ld [bc], a                                       ; $6f71: $02
	ld bc, $0001                                     ; $6f72: $01 $01 $00
	ld bc, $0101                                     ; $6f75: $01 $01 $01
	call z, $167e                                    ; $6f78: $cc $7e $16
	nop                                              ; $6f7b: $00
	and [hl]                                         ; $6f7c: $a6
	sub [hl]                                         ; $6f7d: $96
	ld h, h                                          ; $6f7e: $64
	inc bc                                           ; $6f7f: $03
	inc hl                                           ; $6f80: $23
	ld a, [de]                                       ; $6f81: $1a
	rst $38                                          ; $6f82: $ff
	pop hl                                           ; $6f83: $e1
	jr z, @-$1d                                      ; $6f84: $28 $e1

	ld c, [hl]                                       ; $6f86: $4e
	ld h, b                                          ; $6f87: $60
	ld [hl+], a                                      ; $6f88: $22
	ldh [rSB], a                                     ; $6f89: $e0 $01
	ld [bc], a                                       ; $6f8b: $02
	ld de, $d0ff                                     ; $6f8c: $11 $ff $d0
	add d                                            ; $6f8f: $82
	ld a, [hl]                                       ; $6f90: $7e
	inc h                                            ; $6f91: $24
	nop                                              ; $6f92: $00
	and h                                            ; $6f93: $a4
	sub d                                            ; $6f94: $92
	rst JumpTable                                          ; $6f95: $c7

jr_007_6f96:
	ld l, d                                          ; $6f96: $6a
	dec h                                            ; $6f97: $25

jr_007_6f98:
	ld c, $c6                                        ; $6f98: $0e $c6
	dec h                                            ; $6f9a: $25
	ld c, $c5                                        ; $6f9b: $0e $c5
	dec h                                            ; $6f9d: $25
	ld c, $c4                                        ; $6f9e: $0e $c4
	dec h                                            ; $6fa0: $25
	ld c, $c3                                        ; $6fa1: $0e $c3
	dec h                                            ; $6fa3: $25
	ld c, $c1                                        ; $6fa4: $0e $c1
	dec h                                            ; $6fa6: $25
	ld c, $ff                                        ; $6fa7: $0e $ff
	pop hl                                           ; $6fa9: $e1
	inc d                                            ; $6faa: $14
	add c                                            ; $6fab: $81
	ei                                               ; $6fac: $fb
	ld c, a                                          ; $6fad: $4f
	ld b, $fb                                        ; $6fae: $06 $fb
	ld b, $c4                                        ; $6fb0: $06 $c4
	ld c, a                                          ; $6fb2: $4f
	ld b, $c2                                        ; $6fb3: $06 $c2
	ld c, a                                          ; $6fb5: $4f
	ld b, $c1                                        ; $6fb6: $06 $c1
	ld c, a                                          ; $6fb8: $4f
	ld b, $ff                                        ; $6fb9: $06 $ff
	or h                                             ; $6fbb: $b4
	sub [hl]                                         ; $6fbc: $96
	pop de                                           ; $6fbd: $d1
	ld [bc], a                                       ; $6fbe: $02
	sub a                                            ; $6fbf: $97
	ld l, c                                          ; $6fc0: $69
	inc e                                            ; $6fc1: $1c
	ld a, [bc]                                       ; $6fc2: $0a
	nop                                              ; $6fc3: $00
	ld [bc], a                                       ; $6fc4: $02
	res 2, a                                         ; $6fc5: $cb $97
	nop                                              ; $6fc7: $00
	ld a, [hl]                                       ; $6fc8: $7e
	dec l                                            ; $6fc9: $2d
	nop                                              ; $6fca: $00
	and [hl]                                         ; $6fcb: $a6
	or c                                             ; $6fcc: $b1
	pop af                                           ; $6fcd: $f1
	ld h, h                                          ; $6fce: $64
	rlca                                             ; $6fcf: $07
	inc e                                            ; $6fd0: $1c
	ret z                                            ; $6fd1: $c8

	rst $38                                          ; $6fd2: $ff
	or h                                             ; $6fd3: $b4
	ld a, d                                          ; $6fd4: $7a
	pop af                                           ; $6fd5: $f1
	ld [bc], a                                       ; $6fd6: $02
	ld h, e                                          ; $6fd7: $63
	sub h                                            ; $6fd8: $94
	dec hl                                           ; $6fd9: $2b
	ei                                               ; $6fda: $fb
	ld [de], a                                       ; $6fdb: $12
	inc bc                                           ; $6fdc: $03
	nop                                              ; $6fdd: $00
	rlca                                             ; $6fde: $07
	ld [de], a                                       ; $6fdf: $12
	inc bc                                           ; $6fe0: $03
	nop                                              ; $6fe1: $00

Call_007_6fe2:
	ld [bc], a                                       ; $6fe2: $02
	ld [de], a                                       ; $6fe3: $12
	inc bc                                           ; $6fe4: $03
	nop                                              ; $6fe5: $00
	ld [bc], a                                       ; $6fe6: $02
	ei                                               ; $6fe7: $fb
	add hl, bc                                       ; $6fe8: $09
	add $12                                          ; $6fe9: $c6 $12
	inc bc                                           ; $6feb: $03
	nop                                              ; $6fec: $00
	rlca                                             ; $6fed: $07
	ld [de], a                                       ; $6fee: $12
	inc bc                                           ; $6fef: $03
	nop                                              ; $6ff0: $00
	ld [bc], a                                       ; $6ff1: $02
	ld [de], a                                       ; $6ff2: $12
	inc bc                                           ; $6ff3: $03
	rst $38                                          ; $6ff4: $ff
	pop hl                                           ; $6ff5: $e1
	ld a, d                                          ; $6ff6: $7a
	pop de                                           ; $6ff7: $d1
	db $fc                                           ; $6ff8: $fc
	ld b, a                                          ; $6ff9: $47
	ld b, a                                          ; $6ffa: $47
	ld b, a                                          ; $6ffb: $47
	ei                                               ; $6ffc: $fb
	rst SubAFromDE                                          ; $6ffd: $df
	ei                                               ; $6ffe: $fb
	rlca                                             ; $6fff: $07
	ld b, a                                          ; $7000: $47
	ld b, a                                          ; $7001: $47
	ld b, a                                          ; $7002: $47
	rst SubAFromDE                                          ; $7003: $df
	nop                                              ; $7004: $00
	ld b, a                                          ; $7005: $47
	ld b, a                                          ; $7006: $47
	ld b, a                                          ; $7007: $47
	rst SubAFromDE                                          ; $7008: $df
	nop                                              ; $7009: $00
	db $fc                                           ; $700a: $fc
	add hl, bc                                       ; $700b: $09
	ret                                              ; $700c: $c9


	ld b, a                                          ; $700d: $47
	ld b, a                                          ; $700e: $47
	ld b, a                                          ; $700f: $47
	ei                                               ; $7010: $fb
	rst SubAFromDE                                          ; $7011: $df
	ei                                               ; $7012: $fb
	rlca                                             ; $7013: $07
	ld b, a                                          ; $7014: $47
	ld b, a                                          ; $7015: $47
	ld b, a                                          ; $7016: $47
	rst SubAFromDE                                          ; $7017: $df
	nop                                              ; $7018: $00
	ld b, a                                          ; $7019: $47
	ld b, a                                          ; $701a: $47
	ld b, a                                          ; $701b: $47
	rst SubAFromDE                                          ; $701c: $df
	nop                                              ; $701d: $00
	rst $38                                          ; $701e: $ff
	or h                                             ; $701f: $b4
	sub [hl]                                         ; $7020: $96
	ld [hl], c                                       ; $7021: $71
	ld [bc], a                                       ; $7022: $02
	sub h                                            ; $7023: $94
	daa                                              ; $7024: $27
	ei                                               ; $7025: $fb
	add hl, de                                       ; $7026: $19
	dec b                                            ; $7027: $05
	dec h                                            ; $7028: $25
	dec b                                            ; $7029: $05

jr_007_702a:
	ei                                               ; $702a: $fb
	dec b                                            ; $702b: $05
	ei                                               ; $702c: $fb
	ld a, [de]                                       ; $702d: $1a
	dec b                                            ; $702e: $05
	ld h, $05                                        ; $702f: $26 $05
	ei                                               ; $7031: $fb
	dec b                                            ; $7032: $05
	ei                                               ; $7033: $fb
	dec de                                           ; $7034: $1b
	dec b                                            ; $7035: $05
	daa                                              ; $7036: $27
	dec b                                            ; $7037: $05

jr_007_7038:
	ei                                               ; $7038: $fb
	dec c                                            ; $7039: $0d
	rst $38                                          ; $703a: $ff
	or h                                             ; $703b: $b4
	sub [hl]                                         ; $703c: $96
	pop hl                                           ; $703d: $e1
	ld bc, $2f94                                     ; $703e: $01 $94 $2f
	jr nz, jr_007_7076                               ; $7041: $20 $33

	rst $38                                          ; $7043: $ff
	or h                                             ; $7044: $b4
	jr nz, jr_007_7038                               ; $7045: $20 $f1

	ld [bc], a                                       ; $7047: $02
	sub h                                            ; $7048: $94
	ld c, d                                          ; $7049: $4a
	jr @+$04                                         ; $704a: $18 $02

	sub h                                            ; $704c: $94
	ld h, $91                                        ; $704d: $26 $91
	ret z                                            ; $704f: $c8

	ld a, [de]                                       ; $7050: $1a
	inc bc                                           ; $7051: $03
	jp $031a                                         ; $7052: $c3 $1a $03


	rst $38                                          ; $7055: $ff
	pop hl                                           ; $7056: $e1
	jr nz, jr_007_702a                               ; $7057: $20 $d1

	ld c, a                                          ; $7059: $4f
	ret z                                            ; $705a: $c8

	dec h                                            ; $705b: $25
	inc h                                            ; $705c: $24
	inc hl                                           ; $705d: $23
	dec h                                            ; $705e: $25
	jp nz, $ff25                                     ; $705f: $c2 $25 $ff

	or h                                             ; $7062: $b4
	or h                                             ; $7063: $b4
	and c                                            ; $7064: $a1
	nop                                              ; $7065: $00

Jump_007_7066:
	sub h                                            ; $7066: $94
	ld l, a                                          ; $7067: $6f
	dec h                                            ; $7068: $25
	adc h                                            ; $7069: $8c
	rst $38                                          ; $706a: $ff
	pop hl                                           ; $706b: $e1
	dec b                                            ; $706c: $05
	ld d, c                                          ; $706d: $51
	ld b, e                                          ; $706e: $43
	ld b, e                                          ; $706f: $43
	ld b, e                                          ; $7070: $43
	ld b, e                                          ; $7071: $43
	rst $38                                          ; $7072: $ff
	or h                                             ; $7073: $b4
	or h                                             ; $7074: $b4
	pop af                                           ; $7075: $f1

jr_007_7076:
	ld [bc], a                                       ; $7076: $02
	sub h                                            ; $7077: $94
	inc l                                            ; $7078: $2c
	nop                                              ; $7079: $00
	rlca                                             ; $707a: $07
	daa                                              ; $707b: $27
	ld [bc], a                                       ; $707c: $02
	daa                                              ; $707d: $27
	dec b                                            ; $707e: $05
	nop                                              ; $707f: $00
	ld [bc], a                                       ; $7080: $02
	daa                                              ; $7081: $27
	ld [bc], a                                       ; $7082: $02
	daa                                              ; $7083: $27
	dec b                                            ; $7084: $05
	nop                                              ; $7085: $00
	ld [bc], a                                       ; $7086: $02
	daa                                              ; $7087: $27
	dec b                                            ; $7088: $05
	daa                                              ; $7089: $27
	db $10                                           ; $708a: $10
	call nz, $1027                                   ; $708b: $c4 $27 $10
	rst $38                                          ; $708e: $ff
	pop hl                                           ; $708f: $e1
	inc hl                                           ; $7090: $23
	pop af                                           ; $7091: $f1
	ei                                               ; $7092: $fb
	nop                                              ; $7093: $00
	adc b                                            ; $7094: $88
	ei                                               ; $7095: $fb
	inc bc                                           ; $7096: $03
	push bc                                          ; $7097: $c5
	nop                                              ; $7098: $00
	adc b                                            ; $7099: $88
	rst $38                                          ; $709a: $ff
	or h                                             ; $709b: $b4
	ld a, b                                          ; $709c: $78
	pop de                                           ; $709d: $d1
	ld [bc], a                                       ; $709e: $02
	ld a, [hl]                                       ; $709f: $7e
	dec l                                            ; $70a0: $2d
	inc d                                            ; $70a1: $14
	and b                                            ; $70a2: $a0
	cp [hl]                                          ; $70a3: $be
	ld [$1b16], sp                                   ; $70a4: $08 $16 $1b
	dec e                                            ; $70a7: $1d
	dec de                                           ; $70a8: $1b
	dec e                                            ; $70a9: $1d
	cp [hl]                                          ; $70aa: $be
	ld [hl+], a                                      ; $70ab: $22
	jr z, @+$1f                                      ; $70ac: $28 $1d

	ld [$081b], sp                                   ; $70ae: $08 $1b $08
	dec e                                            ; $70b1: $1d
	ld [$3216], sp                                   ; $70b2: $08 $16 $32
	rst $38                                          ; $70b5: $ff
	or h                                             ; $70b6: $b4
	ld a, b                                          ; $70b7: $78
	ld hl, $7e1e                                     ; $70b8: $21 $1e $7e
	dec l                                            ; $70bb: $2d
	nop                                              ; $70bc: $00
	and c                                            ; $70bd: $a1
	cp [hl]                                          ; $70be: $be
	ld [$1600], sp                                   ; $70bf: $08 $00 $16
	dec de                                           ; $70c2: $1b
	dec e                                            ; $70c3: $1d
	dec de                                           ; $70c4: $1b
	dec e                                            ; $70c5: $1d
	cp [hl]                                          ; $70c6: $be
	ld [hl+], a                                      ; $70c7: $22
	jr z, jr_007_70e7                                ; $70c8: $28 $1d

	ld [$081b], sp                                   ; $70ca: $08 $1b $08
	dec e                                            ; $70cd: $1d
	ld [$3016], sp                                   ; $70ce: $08 $16 $30
	rst $38                                          ; $70d1: $ff
	or h                                             ; $70d2: $b4
	ld h, h                                          ; $70d3: $64
	or c                                             ; $70d4: $b1
	ld [bc], a                                       ; $70d5: $02
	ld h, e                                          ; $70d6: $63
	sub h                                            ; $70d7: $94
	dec hl                                           ; $70d8: $2b
	ei                                               ; $70d9: $fb
	ld [de], a                                       ; $70da: $12
	inc bc                                           ; $70db: $03
	nop                                              ; $70dc: $00

jr_007_70dd:
	ld [bc], a                                       ; $70dd: $02
	add hl, de                                       ; $70de: $19
	inc bc                                           ; $70df: $03
	nop                                              ; $70e0: $00
	ld [bc], a                                       ; $70e1: $02
	ei                                               ; $70e2: $fb
	dec b                                            ; $70e3: $05
	sub h                                            ; $70e4: $94
	dec l                                            ; $70e5: $2d
	sub d                                            ; $70e6: $92

jr_007_70e7:
	rst GetHLinHL                                          ; $70e7: $cf
	dec h                                            ; $70e8: $25
	ld c, $cb                                        ; $70e9: $0e $cb
	dec h                                            ; $70eb: $25
	ld c, $ca                                        ; $70ec: $0e $ca
	dec h                                            ; $70ee: $25
	ld c, $c7                                        ; $70ef: $0e $c7
	dec h                                            ; $70f1: $25
	ld c, $c3                                        ; $70f2: $0e $c3
	dec h                                            ; $70f4: $25
	ld c, $ff                                        ; $70f5: $0e $ff
	db $e3                                           ; $70f7: $e3
	ld h, h                                          ; $70f8: $64
	pop af                                           ; $70f9: $f1
	ld [$5afb], sp                                   ; $70fa: $08 $fb $5a
	ld c, c                                          ; $70fd: $49
	ld b, h                                          ; $70fe: $44
	rst SubAFromDE                                          ; $70ff: $df
	rst SubAFromDE                                          ; $7100: $df
	ei                                               ; $7101: $fb
	ld b, $fb                                        ; $7102: $06 $fb
	ld c, d                                          ; $7104: $4a
	ld c, c                                          ; $7105: $49
	ld b, h                                          ; $7106: $44
	rst SubAFromDE                                          ; $7107: $df
	rst SubAFromDE                                          ; $7108: $df
	ei                                               ; $7109: $fb
	inc b                                            ; $710a: $04
	pop hl                                           ; $710b: $e1
	ld [bc], a                                       ; $710c: $02
	and c                                            ; $710d: $a1
	ld d, [hl]                                       ; $710e: $56
	pop hl                                           ; $710f: $e1
	ld a, [bc]                                       ; $7110: $0a
	ld h, c                                          ; $7111: $61
	ld d, [hl]                                       ; $7112: $56
	rst $38                                          ; $7113: $ff
	pop hl                                           ; $7114: $e1
	inc a                                            ; $7115: $3c
	pop hl                                           ; $7116: $e1
	nop                                              ; $7117: $00
	inc sp                                           ; $7118: $33
	or h                                             ; $7119: $b4
	jr jr_007_70dd                                   ; $711a: $18 $c1

	ld [bc], a                                       ; $711c: $02
	sub h                                            ; $711d: $94
	ld c, d                                          ; $711e: $4a
	dec de                                           ; $711f: $1b
	ld [bc], a                                       ; $7120: $02
	sub h                                            ; $7121: $94
	ld [hl], $90                                     ; $7122: $36 $90
	ret                                              ; $7124: $c9


	ld e, $03                                        ; $7125: $1e $03
	rst $38                                          ; $7127: $ff
	db $e3                                           ; $7128: $e3
	inc a                                            ; $7129: $3c
	pop hl                                           ; $712a: $e1
	rlca                                             ; $712b: $07
	ei                                               ; $712c: $fb
	ld d, l                                          ; $712d: $55
	ld d, h                                          ; $712e: $54
	ld d, h                                          ; $712f: $54
	ei                                               ; $7130: $fb
	ld de, $28e1                                     ; $7131: $11 $e1 $28
	pop bc                                           ; $7134: $c1
	ld b, a                                          ; $7135: $47
	jp z, $2627                                      ; $7136: $ca $27 $26

	dec h                                            ; $7139: $25
	rst GetHLinHL                                          ; $713a: $cf
	inc h                                            ; $713b: $24
	inc hl                                           ; $713c: $23
	ld [hl+], a                                      ; $713d: $22
	ld hl, $d0ff                                     ; $713e: $21 $ff $d0
	add d                                            ; $7141: $82
	sub h                                            ; $7142: $94
	ld e, $93                                        ; $7143: $1e $93
	rst GetHLinHL                                          ; $7145: $cf
	dec h                                            ; $7146: $25
	ld c, $cd                                        ; $7147: $0e $cd
	dec h                                            ; $7149: $25
	ld c, $cc                                        ; $714a: $0e $cc
	dec h                                            ; $714c: $25
	ld c, $cb                                        ; $714d: $0e $cb
	dec h                                            ; $714f: $25
	ld c, $ca                                        ; $7150: $0e $ca
	dec h                                            ; $7152: $25
	ld c, $c9                                        ; $7153: $0e $c9
	dec h                                            ; $7155: $25
	ld c, $c8                                        ; $7156: $0e $c8
	dec h                                            ; $7158: $25
	ld c, $c5                                        ; $7159: $0e $c5
	dec h                                            ; $715b: $25
	ld c, $c4                                        ; $715c: $0e $c4
	dec h                                            ; $715e: $25
	ld c, $ff                                        ; $715f: $0e $ff
	db $e3                                           ; $7161: $e3
	inc d                                            ; $7162: $14
	pop de                                           ; $7163: $d1
	rlca                                             ; $7164: $07
	ei                                               ; $7165: $fb
	ld d, l                                          ; $7166: $55
	ld d, h                                          ; $7167: $54
	ld d, l                                          ; $7168: $55
	ld d, h                                          ; $7169: $54
	ei                                               ; $716a: $fb
	inc b                                            ; $716b: $04
	push bc                                          ; $716c: $c5
	ld d, l                                          ; $716d: $55
	jp nz, $c154                                     ; $716e: $c2 $54 $c1

	ld d, h                                          ; $7171: $54
	rst $38                                          ; $7172: $ff
	or h                                             ; $7173: $b4
	ld h, h                                          ; $7174: $64
	sub c                                            ; $7175: $91
	ld [bc], a                                       ; $7176: $02
	ld b, [hl]                                       ; $7177: $46
	inc bc                                           ; $7178: $03
	nop                                              ; $7179: $00
	ld bc, $3b7e                                     ; $717a: $01 $7e $3b
	nop                                              ; $717d: $00
	and b                                            ; $717e: $a0
	ld b, [hl]                                       ; $717f: $46
	dec d                                            ; $7180: $15
	rst $38                                          ; $7181: $ff
	db $e3                                           ; $7182: $e3
	ld e, $d1                                        ; $7183: $1e $d1
	inc b                                            ; $7185: $04
	ei                                               ; $7186: $fb
	ld e, a                                          ; $7187: $5f
	ei                                               ; $7188: $fb
	ld b, $d0                                        ; $7189: $06 $d0
	ld b, [hl]                                       ; $718b: $46
	ei                                               ; $718c: $fb
	ld e, a                                          ; $718d: $5f
	ei                                               ; $718e: $fb
	dec l                                            ; $718f: $2d
	rst $38                                          ; $7190: $ff
	or h                                             ; $7191: $b4
	ld [hl-], a                                      ; $7192: $32
	pop hl                                           ; $7193: $e1
	ld [bc], a                                       ; $7194: $02
	sub h                                            ; $7195: $94
	ld a, [hl-]                                      ; $7196: $3a
	daa                                              ; $7197: $27
	ld [bc], a                                       ; $7198: $02
	or h                                             ; $7199: $b4
	ld c, d                                          ; $719a: $4a
	pop bc                                           ; $719b: $c1
	ld bc, $1e94                                     ; $719c: $01 $94 $1e
	ld b, h                                          ; $719f: $44
	ld a, [bc]                                       ; $71a0: $0a
	rst $38                                          ; $71a1: $ff
	pop hl                                           ; $71a2: $e1
	ld [hl-], a                                      ; $71a3: $32
	or c                                             ; $71a4: $b1
	dec sp                                           ; $71a5: $3b
	rst SubAFromDE                                          ; $71a6: $df
	db $e3                                           ; $71a7: $e3
	inc b                                            ; $71a8: $04
	add c                                            ; $71a9: $81
	inc b                                            ; $71aa: $04
	ld [hl], $ff                                     ; $71ab: $36 $ff
	or h                                             ; $71ad: $b4
	ld h, h                                          ; $71ae: $64
	pop de                                           ; $71af: $d1
	ld bc, $2f94                                     ; $71b0: $01 $94 $2f
	dec h                                            ; $71b3: $25
	inc b                                            ; $71b4: $04
	dec h                                            ; $71b5: $25
	inc b                                            ; $71b6: $04
	sub b                                            ; $71b7: $90
	add hl, hl                                       ; $71b8: $29
	inc b                                            ; $71b9: $04
	add hl, hl                                       ; $71ba: $29
	inc b                                            ; $71bb: $04
	call nz, $0429                                   ; $71bc: $c4 $29 $04
	add hl, hl                                       ; $71bf: $29
	inc b                                            ; $71c0: $04
	rst $38                                          ; $71c1: $ff
	db $e3                                           ; $71c2: $e3
	ld a, [bc]                                       ; $71c3: $0a
	pop hl                                           ; $71c4: $e1
	inc b                                            ; $71c5: $04
	ei                                               ; $71c6: $fb
	ld e, a                                          ; $71c7: $5f
	ei                                               ; $71c8: $fb
	ld b, $d0                                        ; $71c9: $06 $d0
	inc d                                            ; $71cb: $14
	ei                                               ; $71cc: $fb
	ld e, a                                          ; $71cd: $5f
	ei                                               ; $71ce: $fb
	dec b                                            ; $71cf: $05
	rst $38                                          ; $71d0: $ff
	or h                                             ; $71d1: $b4
	ld a, [$00d1]                                    ; $71d2: $fa $d1 $00
	sub h                                            ; $71d5: $94
	scf                                              ; $71d6: $37
	cp [hl]                                          ; $71d7: $be
	ld a, [bc]                                       ; $71d8: $0a
	inc h                                            ; $71d9: $24
	dec h                                            ; $71da: $25
	ld h, $27                                        ; $71db: $26 $27
	jr z, jr_007_7208                                ; $71dd: $28 $29

	ld a, [hl+]                                      ; $71df: $2a
	cp [hl]                                          ; $71e0: $be
	rst $38                                          ; $71e1: $ff
	or h                                             ; $71e2: $b4
	ld [hl-], a                                      ; $71e3: $32
	and c                                            ; $71e4: $a1
	nop                                              ; $71e5: $00
	sub h                                            ; $71e6: $94
	ld e, l                                          ; $71e7: $5d
	ei                                               ; $71e8: $fb
	dec h                                            ; $71e9: $25
	ld b, $25                                        ; $71ea: $06 $25
	ld b, $fb                                        ; $71ec: $06 $fb
	ld [bc], a                                       ; $71ee: $02
	ei                                               ; $71ef: $fb
	dec h                                            ; $71f0: $25
	dec b                                            ; $71f1: $05
	dec h                                            ; $71f2: $25
	inc b                                            ; $71f3: $04
	ei                                               ; $71f4: $fb
	ld [bc], a                                       ; $71f5: $02
	ei                                               ; $71f6: $fb
	dec h                                            ; $71f7: $25
	inc b                                            ; $71f8: $04
	dec h                                            ; $71f9: $25
	inc b                                            ; $71fa: $04
	ei                                               ; $71fb: $fb
	ld [bc], a                                       ; $71fc: $02
	ei                                               ; $71fd: $fb
	dec h                                            ; $71fe: $25
	inc bc                                           ; $71ff: $03
	dec h                                            ; $7200: $25
	inc bc                                           ; $7201: $03
	ei                                               ; $7202: $fb
	inc b                                            ; $7203: $04
	rst GetHLinHL                                          ; $7204: $cf
	sub d                                            ; $7205: $92
	sub h                                            ; $7206: $94
	ld l, [hl]                                       ; $7207: $6e

jr_007_7208:
	add hl, de                                       ; $7208: $19
	dec bc                                           ; $7209: $0b
	add $19                                          ; $720a: $c6 $19
	dec bc                                           ; $720c: $0b
	push bc                                          ; $720d: $c5
	add hl, de                                       ; $720e: $19
	dec bc                                           ; $720f: $0b
	or h                                             ; $7210: $b4
	ld d, b                                          ; $7211: $50
	pop af                                           ; $7212: $f1
	ld bc, $2c94                                     ; $7213: $01 $94 $2c
	nop                                              ; $7216: $00
	ld bc, $020a                                     ; $7217: $01 $0a $02
	nop                                              ; $721a: $00
	ld [bc], a                                       ; $721b: $02
	dec c                                            ; $721c: $0d
	add hl, bc                                       ; $721d: $09
	rst $38                                          ; $721e: $ff
	pop hl                                           ; $721f: $e1
	ld [hl-], a                                      ; $7220: $32
	sub c                                            ; $7221: $91
	ei                                               ; $7222: $fb
	dec d                                            ; $7223: $15
	dec d                                            ; $7224: $15
	dec d                                            ; $7225: $15
	ld [de], a                                       ; $7226: $12
	ld [de], a                                       ; $7227: $12
	ld [de], a                                       ; $7228: $12
	ei                                               ; $7229: $fb
	inc b                                            ; $722a: $04
	ei                                               ; $722b: $fb
	dec d                                            ; $722c: $15
	dec d                                            ; $722d: $15
	dec d                                            ; $722e: $15
	ld [de], a                                       ; $722f: $12
	ld [de], a                                       ; $7230: $12
	dec d                                            ; $7231: $15
	dec d                                            ; $7232: $15
	ld [de], a                                       ; $7233: $12
	ld [de], a                                       ; $7234: $12
	ei                                               ; $7235: $fb
	ld [bc], a                                       ; $7236: $02
	ei                                               ; $7237: $fb
	dec d                                            ; $7238: $15
	dec d                                            ; $7239: $15
	ld [de], a                                       ; $723a: $12
	ld de, $04fb                                     ; $723b: $11 $fb $04
	ei                                               ; $723e: $fb
	dec d                                            ; $723f: $15
	dec d                                            ; $7240: $15
	ld de, $08fb                                     ; $7241: $11 $fb $08
	add $fb                                          ; $7244: $c6 $fb
	inc [hl]                                         ; $7246: $34
	ld [hl+], a                                      ; $7247: $22
	rla                                              ; $7248: $17
	ei                                               ; $7249: $fb
	dec bc                                           ; $724a: $0b
	db $e3                                           ; $724b: $e3
	ld d, b                                          ; $724c: $50
	pop af                                           ; $724d: $f1
	ld [$474f], sp                                   ; $724e: $08 $4f $47
	ld b, [hl]                                       ; $7251: $46
	ld c, a                                          ; $7252: $4f
	db $e3                                           ; $7253: $e3
	ld [bc], a                                       ; $7254: $02
	pop de                                           ; $7255: $d1
	dec b                                            ; $7256: $05
	ld e, [hl]                                       ; $7257: $5e
	rst $38                                          ; $7258: $ff
	or h                                             ; $7259: $b4
	ld [hl-], a                                      ; $725a: $32
	and c                                            ; $725b: $a1
	nop                                              ; $725c: $00
	sub h                                            ; $725d: $94

Call_007_725e:
	ld e, l                                          ; $725e: $5d
	ei                                               ; $725f: $fb
	dec h                                            ; $7260: $25
	inc b                                            ; $7261: $04
	dec h                                            ; $7262: $25
	inc b                                            ; $7263: $04
	ei                                               ; $7264: $fb
	inc bc                                           ; $7265: $03
	dec h                                            ; $7266: $25
	inc b                                            ; $7267: $04
	call nz, $0425                                   ; $7268: $c4 $25 $04
	rst $38                                          ; $726b: $ff
	pop hl                                           ; $726c: $e1
	ld [hl-], a                                      ; $726d: $32
	sub c                                            ; $726e: $91
	ei                                               ; $726f: $fb
	dec d                                            ; $7270: $15
	dec d                                            ; $7271: $15
	ld [de], a                                       ; $7272: $12
	ld [de], a                                       ; $7273: $12
	ei                                               ; $7274: $fb
	rlca                                             ; $7275: $07
	call nz, $1515                                   ; $7276: $c4 $15 $15
	ld [de], a                                       ; $7279: $12
	ld [de], a                                       ; $727a: $12
	rst $38                                          ; $727b: $ff
	or h                                             ; $727c: $b4
	inc d                                            ; $727d: $14
	pop af                                           ; $727e: $f1
	ld [bc], a                                       ; $727f: $02
	sub h                                            ; $7280: $94
	ld c, d                                          ; $7281: $4a
	jr @+$04                                         ; $7282: $18 $02

	sub h                                            ; $7284: $94
	ld [hl], $90                                     ; $7285: $36 $90
	ret                                              ; $7287: $c9


	ld a, [de]                                       ; $7288: $1a
	inc bc                                           ; $7289: $03
	rst $38                                          ; $728a: $ff
	pop hl                                           ; $728b: $e1
	ld e, $f1                                        ; $728c: $1e $f1
	ld b, a                                          ; $728e: $47
	jp z, $2627                                      ; $728f: $ca $27 $26

	dec h                                            ; $7292: $25
	rst GetHLinHL                                          ; $7293: $cf
	inc h                                            ; $7294: $24
	inc hl                                           ; $7295: $23
	ld [hl+], a                                      ; $7296: $22
	ld hl, $b4ff                                     ; $7297: $21 $ff $b4
	ld e, d                                          ; $729a: $5a
	pop de                                           ; $729b: $d1
	nop                                              ; $729c: $00
	sub h                                            ; $729d: $94
	dec h                                            ; $729e: $25
	dec e                                            ; $729f: $1d
	inc bc                                           ; $72a0: $03
	dec e                                            ; $72a1: $1d
	inc b                                            ; $72a2: $04
	add $1d                                          ; $72a3: $c6 $1d
	dec b                                            ; $72a5: $05
	rst $38                                          ; $72a6: $ff
	pop hl                                           ; $72a7: $e1
	ld e, $c1                                        ; $72a8: $1e $c1
	ld c, [hl]                                       ; $72aa: $4e
	inc hl                                           ; $72ab: $23
	rst $38                                          ; $72ac: $ff
	or h                                             ; $72ad: $b4
	ld a, [$02f1]                                    ; $72ae: $fa $f1 $02
	sub h                                            ; $72b1: $94
	dec l                                            ; $72b2: $2d
	ld [hl], $0a                                     ; $72b3: $36 $0a
	sub [hl]                                         ; $72b5: $96
	ret z                                            ; $72b6: $c8

	inc bc                                           ; $72b7: $03
	sub h                                            ; $72b8: $94
	ld [$d390], sp                                   ; $72b9: $08 $90 $d3
	ld c, c                                          ; $72bc: $49
	inc d                                            ; $72bd: $14
	add $49                                          ; $72be: $c6 $49
	inc c                                            ; $72c0: $0c
	rst $38                                          ; $72c1: $ff
	pop hl                                           ; $72c2: $e1
	inc d                                            ; $72c3: $14
	pop bc                                           ; $72c4: $c1
	ld b, c                                          ; $72c5: $41
	ret nc                                           ; $72c6: $d0

	dec de                                           ; $72c7: $1b
	scf                                              ; $72c8: $37
	ldh [$03], a                                     ; $72c9: $e0 $03
	ld bc, $ff31                                     ; $72cb: $01 $31 $ff
	or h                                             ; $72ce: $b4
	ld a, [$02a1]                                    ; $72cf: $fa $a1 $02
	ld a, [hl]                                       ; $72d2: $7e
	jr c, jr_007_7324                                ; $72d3: $38 $4f

	and b                                            ; $72d5: $a0
	ld sp, $b155                                     ; $72d6: $31 $55 $b1
	ld sp, $05fa                                     ; $72d9: $31 $fa $05
	ld sp, $ff58                                     ; $72dc: $31 $58 $ff
	or h                                             ; $72df: $b4
	sub [hl]                                         ; $72e0: $96
	pop af                                           ; $72e1: $f1
	nop                                              ; $72e2: $00
	sub h                                            ; $72e3: $94
	ld b, a                                          ; $72e4: $47
	ld e, $14                                        ; $72e5: $1e $14
	ld a, [de]                                       ; $72e7: $1a
	ld [hl-], a                                      ; $72e8: $32
	jp z, $141e                                      ; $72e9: $ca $1e $14

	ld a, [de]                                       ; $72ec: $1a
	ld [hl-], a                                      ; $72ed: $32
	rst JumpTable                                          ; $72ee: $c7
	ld e, $14                                        ; $72ef: $1e $14
	ld a, [de]                                       ; $72f1: $1a
	ld [hl-], a                                      ; $72f2: $32
	push bc                                          ; $72f3: $c5
	ld e, $14                                        ; $72f4: $1e $14
	ld a, [de]                                       ; $72f6: $1a
	ld [hl-], a                                      ; $72f7: $32
	rst $38                                          ; $72f8: $ff
	pop hl                                           ; $72f9: $e1
	inc d                                            ; $72fa: $14
	pop af                                           ; $72fb: $f1
	ld [hl+], a                                      ; $72fc: $22
	ld b, d                                          ; $72fd: $42
	ld d, d                                          ; $72fe: $52
	ld b, a                                          ; $72ff: $47
	ld b, [hl]                                       ; $7300: $46
	ld b, l                                          ; $7301: $45
	ld b, h                                          ; $7302: $44
	ld b, e                                          ; $7303: $43
	ld b, d                                          ; $7304: $42
	ld b, c                                          ; $7305: $41
	sla d                                            ; $7306: $cb $22
	ld b, d                                          ; $7308: $42
	ld b, a                                          ; $7309: $47
	ld b, [hl]                                       ; $730a: $46
	ld b, l                                          ; $730b: $45
	ld b, h                                          ; $730c: $44
	ld b, e                                          ; $730d: $43
	ld b, d                                          ; $730e: $42
	ld b, c                                          ; $730f: $41
	rst JumpTable                                          ; $7310: $c7
	ld [hl+], a                                      ; $7311: $22
	ld b, d                                          ; $7312: $42
	ld b, a                                          ; $7313: $47
	ld b, [hl]                                       ; $7314: $46
	ld b, l                                          ; $7315: $45
	ld b, h                                          ; $7316: $44
	ld b, e                                          ; $7317: $43
	ld b, d                                          ; $7318: $42
	ld b, c                                          ; $7319: $41
	add $22                                          ; $731a: $c6 $22
	ld b, d                                          ; $731c: $42
	ld b, a                                          ; $731d: $47
	ld b, [hl]                                       ; $731e: $46
	ld b, l                                          ; $731f: $45
	ld b, h                                          ; $7320: $44
	ld b, e                                          ; $7321: $43
	ld b, d                                          ; $7322: $42
	ld b, c                                          ; $7323: $41

jr_007_7324:
	rst $38                                          ; $7324: $ff
	or h                                             ; $7325: $b4
	sub [hl]                                         ; $7326: $96
	sub c                                            ; $7327: $91
	ld [bc], a                                       ; $7328: $02
	sub h                                            ; $7329: $94
	daa                                              ; $732a: $27
	cp [hl]                                          ; $732b: $be
	dec b                                            ; $732c: $05
	add hl, de                                       ; $732d: $19
	dec h                                            ; $732e: $25
	dec e                                            ; $732f: $1d
	add hl, hl                                       ; $7330: $29
	jr nz, jr_007_735f                               ; $7331: $20 $2c

	dec h                                            ; $7333: $25
	ld sp, $c3be                                     ; $7334: $31 $be $c3
	dec h                                            ; $7337: $25
	dec b                                            ; $7338: $05
	ld sp, $ff05                                     ; $7339: $31 $05 $ff
	or h                                             ; $733c: $b4
	ld a, [$02f1]                                    ; $733d: $fa $f1 $02
	ld a, l                                          ; $7340: $7d

Call_007_7341:
	ld bc, $fa96                                     ; $7341: $01 $96 $fa
	ld bc, $0abe                                     ; $7344: $01 $be $0a
	dec hl                                           ; $7347: $2b
	ld [hl-], a                                      ; $7348: $32
	cpl                                              ; $7349: $2f
	scf                                              ; $734a: $37
	cp [hl]                                          ; $734b: $be
	or c                                             ; $734c: $b1
	ld hl, $0000                                     ; $734d: $21 $00 $00
	cpl                                              ; $7350: $2f
	dec b                                            ; $7351: $05
	scf                                              ; $7352: $37
	add hl, bc                                       ; $7353: $09
	pop bc                                           ; $7354: $c1
	cpl                                              ; $7355: $2f
	dec b                                            ; $7356: $05
	scf                                              ; $7357: $37
	add hl, bc                                       ; $7358: $09
	rst $38                                          ; $7359: $ff
	or h                                             ; $735a: $b4
	ld a, [$2e21]                                    ; $735b: $fa $21 $2e
	cp [hl]                                          ; $735e: $be

jr_007_735f:
	ld a, [bc]                                       ; $735f: $0a
	dec hl                                           ; $7360: $2b
	ld [hl-], a                                      ; $7361: $32
	cpl                                              ; $7362: $2f
	scf                                              ; $7363: $37
	cp [hl]                                          ; $7364: $be
	add $2f                                          ; $7365: $c6 $2f
	dec b                                            ; $7367: $05
	scf                                              ; $7368: $37
	add hl, bc                                       ; $7369: $09
	rst $38                                          ; $736a: $ff
	or h                                             ; $736b: $b4
	inc a                                            ; $736c: $3c
	pop hl                                           ; $736d: $e1
	nop                                              ; $736e: $00
	sub h                                            ; $736f: $94
	dec h                                            ; $7370: $25
	ld hl, $ca03                                     ; $7371: $21 $03 $ca
	ld hl, $c603                                     ; $7374: $21 $03 $c6
	ld hl, $ff03                                     ; $7377: $21 $03 $ff
	or h                                             ; $737a: $b4
	ret z                                            ; $737b: $c8

	add c                                            ; $737c: $81
	ld [bc], a                                       ; $737d: $02
	ld e, $02                                        ; $737e: $1e $02
	ld a, [hl+]                                      ; $7380: $2a
	ld bc, $0225                                     ; $7381: $01 $25 $02
	ld sp, $2a01                                     ; $7384: $31 $01 $2a
	ld [bc], a                                       ; $7387: $02
	ld [hl], $01                                     ; $7388: $36 $01
	ld b, [hl]                                       ; $738a: $46
	ld [bc], a                                       ; $738b: $02
	ld b, [hl]                                       ; $738c: $46
	ld bc, $1ec2                                     ; $738d: $01 $c2 $1e
	ld [bc], a                                       ; $7390: $02
	ld a, [hl+]                                      ; $7391: $2a
	ld bc, $0225                                     ; $7392: $01 $25 $02
	ld sp, $2a01                                     ; $7395: $31 $01 $2a
	ld [bc], a                                       ; $7398: $02
	ld [hl], $01                                     ; $7399: $36 $01
	ld b, [hl]                                       ; $739b: $46
	ld [bc], a                                       ; $739c: $02
	ld b, [hl]                                       ; $739d: $46
	ld bc, $b4ff                                     ; $739e: $01 $ff $b4
	or h                                             ; $73a1: $b4
	ld h, c                                          ; $73a2: $61
	ld [bc], a                                       ; $73a3: $02
	dec l                                            ; $73a4: $2d
	inc bc                                           ; $73a5: $03
	ld [hl-], a                                      ; $73a6: $32

jr_007_73a7:
	inc bc                                           ; $73a7: $03
	jp nz, $032d                                     ; $73a8: $c2 $2d $03

	ld [hl-], a                                      ; $73ab: $32
	inc bc                                           ; $73ac: $03
	rst $38                                          ; $73ad: $ff
	db $e3                                           ; $73ae: $e3
	ld [de], a                                       ; $73af: $12
	pop bc                                           ; $73b0: $c1
	ld bc, $e141                                     ; $73b1: $01 $41 $e1
	jr z, jr_007_73a7                                ; $73b4: $28 $f1

	ld sp, $df30                                     ; $73b6: $31 $30 $df
	ldh [rSC], a                                     ; $73b9: $e0 $02
	inc bc                                           ; $73bb: $03
	ld hl, $e1ff                                     ; $73bc: $21 $ff $e1
	ld a, [bc]                                       ; $73bf: $0a
	and c                                            ; $73c0: $a1
	cp $02                                           ; $73c1: $fe $02
	cp $ff                                           ; $73c3: $fe $ff
	or h                                             ; $73c5: $b4
	ld h, h                                          ; $73c6: $64
	pop af                                           ; $73c7: $f1
	ld bc, $387e                                     ; $73c8: $01 $7e $38
	nop                                              ; $73cb: $00
	and [hl]                                         ; $73cc: $a6
	sub [hl]                                         ; $73cd: $96
	sub [hl]                                         ; $73ce: $96
	dec b                                            ; $73cf: $05
	rra                                              ; $73d0: $1f
	ld [hl-], a                                      ; $73d1: $32
	rst $38                                          ; $73d2: $ff
	or h                                             ; $73d3: $b4
	ld h, h                                          ; $73d4: $64
	ld hl, $7e2e                                     ; $73d5: $21 $2e $7e
	jr c, jr_007_73da                                ; $73d8: $38 $00

jr_007_73da:
	and [hl]                                         ; $73da: $a6
	rra                                              ; $73db: $1f
	ld [hl-], a                                      ; $73dc: $32
	rst $38                                          ; $73dd: $ff
	or [hl]                                          ; $73de: $b6
	ld a, [$01f1]                                    ; $73df: $fa $f1 $01
	ld a, [$be06]                                    ; $73e2: $fa $06 $be
	add hl, bc                                       ; $73e5: $09
	ld a, [de]                                       ; $73e6: $1a
	rra                                              ; $73e7: $1f
	inc hl                                           ; $73e8: $23
	ld h, $2b                                        ; $73e9: $26 $2b
	cp [hl]                                          ; $73eb: $be
	jp nz, $0923                                     ; $73ec: $c2 $23 $09

	ld h, $09                                        ; $73ef: $26 $09
	dec hl                                           ; $73f1: $2b
	add hl, bc                                       ; $73f2: $09
	pop bc                                           ; $73f3: $c1
	inc hl                                           ; $73f4: $23
	add hl, bc                                       ; $73f5: $09
	ld h, $09                                        ; $73f6: $26 $09
	dec hl                                           ; $73f8: $2b
	add hl, bc                                       ; $73f9: $09
	rst $38                                          ; $73fa: $ff
	pop hl                                           ; $73fb: $e1
	ld a, [$0041]                                    ; $73fc: $fa $41 $00
	rlca                                             ; $73ff: $07
	cp [hl]                                          ; $7400: $be
	add hl, bc                                       ; $7401: $09
	ld h, $2b                                        ; $7402: $26 $2b
	cpl                                              ; $7404: $2f
	ld [hl-], a                                      ; $7405: $32
	scf                                              ; $7406: $37
	cpl                                              ; $7407: $2f
	ld [hl-], a                                      ; $7408: $32
	scf                                              ; $7409: $37
	cp [hl]                                          ; $740a: $be
	add $2f                                          ; $740b: $c6 $2f
	add hl, bc                                       ; $740d: $09
	ld [hl-], a                                      ; $740e: $32
	add hl, bc                                       ; $740f: $09
	scf                                              ; $7410: $37
	add hl, bc                                       ; $7411: $09
	rst $38                                          ; $7412: $ff
	or h                                             ; $7413: $b4
	dec hl                                           ; $7414: $2b
	pop af                                           ; $7415: $f1
	nop                                              ; $7416: $00
	sub h                                            ; $7417: $94
	ld c, e                                          ; $7418: $4b
	ei                                               ; $7419: $fb
	rrca                                             ; $741a: $0f
	ld bc, $0100                                     ; $741b: $01 $00 $01
	ei                                               ; $741e: $fb
	inc bc                                           ; $741f: $03
	rrca                                             ; $7420: $0f
	dec b                                            ; $7421: $05
	rst $38                                          ; $7422: $ff
	pop hl                                           ; $7423: $e1

Jump_007_7424:
	dec hl                                           ; $7424: $2b
	pop af                                           ; $7425: $f1
	ei                                               ; $7426: $fb
	ld c, h                                          ; $7427: $4c
	rst SubAFromDE                                          ; $7428: $df
	ei                                               ; $7429: $fb
	inc bc                                           ; $742a: $03
	ldh [rTIMA], a                                   ; $742b: $e0 $05
	ld [bc], a                                       ; $742d: $02
	ld c, h                                          ; $742e: $4c
	rst $38                                          ; $742f: $ff
	or h                                             ; $7430: $b4
	ldh a, [hDisp1_SCX]                                     ; $7431: $f0 $91
	ld bc, $387e                                     ; $7433: $01 $7e $38
	inc bc                                           ; $7436: $03
	and e                                            ; $7437: $a3
	rra                                              ; $7438: $1f
	dec b                                            ; $7439: $05
	nop                                              ; $743a: $00
	inc b                                            ; $743b: $04
	rra                                              ; $743c: $1f
	ld h, h                                          ; $743d: $64
	call nz, $121f                                   ; $743e: $c4 $1f $12
	rst $38                                          ; $7441: $ff
	or h                                             ; $7442: $b4
	ldh a, [rAUD4ENV]                                ; $7443: $f0 $21
	ld l, $7e                                        ; $7445: $2e $7e
	jr c, jr_007_744c                                ; $7447: $38 $03

	and [hl]                                         ; $7449: $a6
	add hl, de                                       ; $744a: $19
	dec b                                            ; $744b: $05

jr_007_744c:
	nop                                              ; $744c: $00
	inc b                                            ; $744d: $04
	add hl, de                                       ; $744e: $19
	ld h, h                                          ; $744f: $64
	call nz, $1219                                   ; $7450: $c4 $19 $12
	rst $38                                          ; $7453: $ff
	or h                                             ; $7454: $b4
	sub [hl]                                         ; $7455: $96
	sub c                                            ; $7456: $91
	ld [bc], a                                       ; $7457: $02
	ld a, [hl]                                       ; $7458: $7e
	jr c, jr_007_745b                                ; $7459: $38 $00

jr_007_745b:
	and b                                            ; $745b: $a0
	dec l                                            ; $745c: $2d
	inc b                                            ; $745d: $04
	ret z                                            ; $745e: $c8

	inc l                                            ; $745f: $2c
	ld bc, $012d                                     ; $7460: $01 $2d $01
	ld l, $01                                        ; $7463: $2e $01
	cpl                                              ; $7465: $2f
	rlca                                             ; $7466: $07
	jr nc, jr_007_7471                               ; $7467: $30 $08

	ld a, [hl]                                       ; $7469: $7e
	jr c, jr_007_7480                                ; $746a: $38 $14

	and b                                            ; $746c: $a0
	sub [hl]                                         ; $746d: $96
	ld h, h                                          ; $746e: $64
	inc bc                                           ; $746f: $03
	cpl                                              ; $7470: $2f

jr_007_7471:
	or b                                             ; $7471: $b0
	rst $38                                          ; $7472: $ff
	or h                                             ; $7473: $b4
	ld a, [$02c1]                                    ; $7474: $fa $c1 $02
	ld a, l                                          ; $7477: $7d
	inc b                                            ; $7478: $04
	sub h                                            ; $7479: $94
	ld d, l                                          ; $747a: $55
	ei                                               ; $747b: $fb
	call z, $0823                                    ; $747c: $cc $23 $08
	rst JumpTable                                          ; $747f: $c7

jr_007_7480:
	inc hl                                           ; $7480: $23
	ld [bc], a                                       ; $7481: $02
	ei                                               ; $7482: $fb
	dec bc                                           ; $7483: $0b
	call nz, $0823                                   ; $7484: $c4 $23 $08
	jp nz, $0223                                     ; $7487: $c2 $23 $02

	jp nz, $0823                                     ; $748a: $c2 $23 $08

	pop bc                                           ; $748d: $c1
	inc hl                                           ; $748e: $23
	ld [bc], a                                       ; $748f: $02
	rst $38                                          ; $7490: $ff
	or h                                             ; $7491: $b4
	ld a, [$0261]                                    ; $7492: $fa $61 $02
	nop                                              ; $7495: $00
	ld [bc], a                                       ; $7496: $02
	ei                                               ; $7497: $fb
	ld a, l                                          ; $7498: $7d
	dec b                                            ; $7499: $05
	cpl                                              ; $749a: $2f
	ld [$017d], sp                                   ; $749b: $08 $7d $01
	ld l, $02                                        ; $749e: $2e $02
	ei                                               ; $74a0: $fb
	dec bc                                           ; $74a1: $0b
	rst $38                                          ; $74a2: $ff
	pop hl                                           ; $74a3: $e1
	ld a, [$7d21]                                    ; $74a4: $fa $21 $7d
	inc b                                            ; $74a7: $04

Call_007_74a8:
	ld a, a                                          ; $74a8: $7f
	dec l                                            ; $74a9: $2d
	ei                                               ; $74aa: $fb
	jp nz, $047d                                     ; $74ab: $c2 $7d $04

	cpl                                              ; $74ae: $2f
	ld [$007d], sp                                   ; $74af: $08 $7d $00
	ld l, $02                                        ; $74b2: $2e $02
	ei                                               ; $74b4: $fb
	dec bc                                           ; $74b5: $0b
	rst $38                                          ; $74b6: $ff
	or h                                             ; $74b7: $b4
	ld l, [hl]                                       ; $74b8: $6e
	pop af                                           ; $74b9: $f1
	ld [bc], a                                       ; $74ba: $02
	nop                                              ; $74bb: $00
	ld [$1b94], sp                                   ; $74bc: $08 $94 $1b
	rlca                                             ; $74bf: $07
	ld a, [bc]                                       ; $74c0: $0a
	call nz, $1b94                                   ; $74c1: $c4 $94 $1b
	ld b, $07                                        ; $74c4: $06 $07
	rst $38                                          ; $74c6: $ff
	pop hl                                           ; $74c7: $e1
	ld l, [hl]                                       ; $74c8: $6e
	and c                                            ; $74c9: $a1
	daa                                              ; $74ca: $27
	ld h, $25                                        ; $74cb: $26 $25
	inc h                                            ; $74cd: $24
	pop hl                                           ; $74ce: $e1
	ld d, b                                          ; $74cf: $50
	pop af                                           ; $74d0: $f1
	ei                                               ; $74d1: $fb
	ld l, b                                          ; $74d2: $68
	rst SubAFromDE                                          ; $74d3: $df
	ld a, d                                          ; $74d4: $7a
	rst SubAFromDE                                          ; $74d5: $df
	ei                                               ; $74d6: $fb
	ld [bc], a                                       ; $74d7: $02
	rst $38                                          ; $74d8: $ff
	or h                                             ; $74d9: $b4
	ld a, [$02f1]                                    ; $74da: $fa $f1 $02
	sub h                                            ; $74dd: $94
	inc sp                                           ; $74de: $33
	rrca                                             ; $74df: $0f
	ld a, [bc]                                       ; $74e0: $0a
	sub h                                            ; $74e1: $94
	inc h                                            ; $74e2: $24
	ld l, c                                          ; $74e3: $69
	sub c                                            ; $74e4: $91

jr_007_74e5:
	dec d                                            ; $74e5: $15

jr_007_74e6:
	ld [de], a                                       ; $74e6: $12

jr_007_74e7:
	ret                                              ; $74e7: $c9


	dec d                                            ; $74e8: $15
	ld [de], a                                       ; $74e9: $12
	add $15                                          ; $74ea: $c6 $15
	ld [de], a                                       ; $74ec: $12
	jp nz, $1215                                     ; $74ed: $c2 $15 $12

	rst $38                                          ; $74f0: $ff
	pop hl                                           ; $74f1: $e1
	ld a, [$fbf1]                                    ; $74f2: $fa $f1 $fb
	ld b, l                                          ; $74f5: $45
	ei                                               ; $74f6: $fb
	rlca                                             ; $74f7: $07
	pop hl                                           ; $74f8: $e1
	inc d                                            ; $74f9: $14
	ld b, c                                          ; $74fa: $41
	jr nc, @+$12                                     ; $74fb: $30 $10

	rst $38                                          ; $74fd: $ff
	or h                                             ; $74fe: $b4
	sub [hl]                                         ; $74ff: $96
	pop af                                           ; $7500: $f1
	ld [bc], a                                       ; $7501: $02
	sub h                                            ; $7502: $94
	inc [hl]                                         ; $7503: $34
	dec h                                            ; $7504: $25
	ld [bc], a                                       ; $7505: $02
	ld sp, $ca08                                     ; $7506: $31 $08 $ca
	dec h                                            ; $7509: $25
	ld [bc], a                                       ; $750a: $02
	ld sp, $c608                                     ; $750b: $31 $08 $c6
	ld sp, $ff0a                                     ; $750e: $31 $0a $ff
	or h                                             ; $7511: $b4
	ld a, [$00e1]                                    ; $7512: $fa $e1 $00
	sub h                                            ; $7515: $94
	dec [hl]                                         ; $7516: $35
	add hl, de                                       ; $7517: $19
	jr jr_007_74e5                                   ; $7518: $18 $cb

	add hl, de                                       ; $751a: $19
	jr jr_007_74e5                                   ; $751b: $18 $c8

	add hl, de                                       ; $751d: $19
	jr jr_007_74e5                                   ; $751e: $18 $c5

	add hl, de                                       ; $7520: $19
	jr jr_007_74e6                                   ; $7521: $18 $c3

	add hl, de                                       ; $7523: $19
	jr jr_007_74e7                                   ; $7524: $18 $c1

	add hl, de                                       ; $7526: $19
	jr @+$01                                         ; $7527: $18 $ff

	or h                                             ; $7529: $b4
	ld d, b                                          ; $752a: $50
	add c                                            ; $752b: $81
	ld [bc], a                                       ; $752c: $02
	ld a, [hl]                                       ; $752d: $7e
	jr c, jr_007_7530                                ; $752e: $38 $00

jr_007_7530:
	and b                                            ; $7530: $a0
	sub a                                            ; $7531: $97
	add hl, de                                       ; $7532: $19
	ld b, l                                          ; $7533: $45
	add hl, bc                                       ; $7534: $09
	sub a                                            ; $7535: $97
	nop                                              ; $7536: $00
	ld b, h                                          ; $7537: $44
	add hl, bc                                       ; $7538: $09
	add $43                                          ; $7539: $c6 $43
	add hl, bc                                       ; $753b: $09
	push bc                                          ; $753c: $c5
	ld b, d                                          ; $753d: $42
	add hl, bc                                       ; $753e: $09
	rst $38                                          ; $753f: $ff
	or h                                             ; $7540: $b4
	ld d, b                                          ; $7541: $50
	pop af                                           ; $7542: $f1
	ld bc, $2c94                                     ; $7543: $01 $94 $2c
	nop                                              ; $7546: $00
	ld bc, $020a                                     ; $7547: $01 $0a $02
	nop                                              ; $754a: $00
	ld [bc], a                                       ; $754b: $02
	dec c                                            ; $754c: $0d
	add hl, bc                                       ; $754d: $09
	rst $38                                          ; $754e: $ff
	db $e3                                           ; $754f: $e3
	ld d, b                                          ; $7550: $50
	pop af                                           ; $7551: $f1
	ld [$474f], sp                                   ; $7552: $08 $4f $47
	ld b, [hl]                                       ; $7555: $46
	ld c, a                                          ; $7556: $4f
	db $e3                                           ; $7557: $e3
	ld [bc], a                                       ; $7558: $02
	pop de                                           ; $7559: $d1
	dec b                                            ; $755a: $05
	ld e, [hl]                                       ; $755b: $5e
	rst $38                                          ; $755c: $ff
	pop hl                                           ; $755d: $e1
	and $f1                                          ; $755e: $e6 $f1
	inc sp                                           ; $7560: $33
	ld e, b                                          ; $7561: $58
	rst $38                                          ; $7562: $ff
	or h                                             ; $7563: $b4
	ld h, h                                          ; $7564: $64
	pop af                                           ; $7565: $f1
	ld [bc], a                                       ; $7566: $02
	sub h                                            ; $7567: $94
	ld e, d                                          ; $7568: $5a
	ld de, $9003                                     ; $7569: $11 $03 $90
	nop                                              ; $756c: $00
	ld [bc], a                                       ; $756d: $02
	ld [hl+], a                                      ; $756e: $22
	ld [bc], a                                       ; $756f: $02
	push bc                                          ; $7570: $c5
	ld [hl+], a                                      ; $7571: $22
	ld [bc], a                                       ; $7572: $02
	jp $0222                                         ; $7573: $c3 $22 $02


	rst $38                                          ; $7576: $ff
	pop hl                                           ; $7577: $e1
	ld h, h                                          ; $7578: $64
	or c                                             ; $7579: $b1
	ld e, d                                          ; $757a: $5a
	rst SubAFromDE                                          ; $757b: $df
	rst SubAFromDE                                          ; $757c: $df
	rst SubAFromDE                                          ; $757d: $df
	rst SubAFromDE                                          ; $757e: $df
	ret nc                                           ; $757f: $d0

	inc d                                            ; $7580: $14
	inc [hl]                                         ; $7581: $34
	push bc                                          ; $7582: $c5
	inc [hl]                                         ; $7583: $34
	rst $38                                          ; $7584: $ff
	pop hl                                           ; $7585: $e1
	ld h, h                                          ; $7586: $64
	pop hl                                           ; $7587: $e1
	ld d, b                                          ; $7588: $50
	ld [hl-], a                                      ; $7589: $32
	ret nc                                           ; $758a: $d0

	ld d, b                                          ; $758b: $50
	rst SubAFromDE                                          ; $758c: $df
	ldh [rTMA], a                                    ; $758d: $e0 $06
	ld b, $44                                        ; $758f: $06 $44
	rst $38                                          ; $7591: $ff
	or h                                             ; $7592: $b4
	ld a, [$02e1]                                    ; $7593: $fa $e1 $02
	inc sp                                           ; $7596: $33
	ld [bc], a                                       ; $7597: $02
	add $3f                                          ; $7598: $c6 $3f
	ld [bc], a                                       ; $759a: $02
	adc $33                                          ; $759b: $ce $33
	ld [bc], a                                       ; $759d: $02
	nop                                              ; $759e: $00
	rlca                                             ; $759f: $07
	ei                                               ; $75a0: $fb
	adc $33                                          ; $75a1: $ce $33
	ld [bc], a                                       ; $75a3: $02
	add $3f                                          ; $75a4: $c6 $3f
	ld [bc], a                                       ; $75a6: $02
	adc $33                                          ; $75a7: $ce $33
	ld [bc], a                                       ; $75a9: $02
	add $3f                                          ; $75aa: $c6 $3f
	ld [bc], a                                       ; $75ac: $02
	adc $33                                          ; $75ad: $ce $33
	ld [bc], a                                       ; $75af: $02
	add $3f                                          ; $75b0: $c6 $3f
	ld [bc], a                                       ; $75b2: $02
	ei                                               ; $75b3: $fb
	inc bc                                           ; $75b4: $03
	swap e                                           ; $75b5: $cb $33
	ld [bc], a                                       ; $75b7: $02
	jp $023f                                         ; $75b8: $c3 $3f $02


	swap e                                           ; $75bb: $cb $33
	ld [bc], a                                       ; $75bd: $02
	jp $023f                                         ; $75be: $c3 $3f $02


	swap e                                           ; $75c1: $cb $33
	ld [bc], a                                       ; $75c3: $02
	jp $023f                                         ; $75c4: $c3 $3f $02


	rst $38                                          ; $75c7: $ff
	or h                                             ; $75c8: $b4
	ld a, [$02e1]                                    ; $75c9: $fa $e1 $02
	inc sp                                           ; $75cc: $33
	ld [bc], a                                       ; $75cd: $02
	add $3f                                          ; $75ce: $c6 $3f
	inc bc                                           ; $75d0: $03
	add $33                                          ; $75d1: $c6 $33
	ld [bc], a                                       ; $75d3: $02
	jp $023f                                         ; $75d4: $c3 $3f $02


	add $33                                          ; $75d7: $c6 $33
	ld [bc], a                                       ; $75d9: $02
	jp nz, $023f                                     ; $75da: $c2 $3f $02

	call nz, $0233                                   ; $75dd: $c4 $33 $02
	pop bc                                           ; $75e0: $c1
	ccf                                              ; $75e1: $3f
	ld [bc], a                                       ; $75e2: $02
	rst $38                                          ; $75e3: $ff
	or h                                             ; $75e4: $b4
	ld a, [$02f1]                                    ; $75e5: $fa $f1 $02
	ld sp, $0001                                     ; $75e8: $31 $01 $00
	ld bc, $0131                                     ; $75eb: $01 $31 $01
	sub c                                            ; $75ee: $91
	sub h                                            ; $75ef: $94
	daa                                              ; $75f0: $27
	dec h                                            ; $75f1: $25
	rrca                                             ; $75f2: $0f
	rst $38                                          ; $75f3: $ff
	or h                                             ; $75f4: $b4
	ld a, [$02e1]                                    ; $75f5: $fa $e1 $02
	sub h                                            ; $75f8: $94
	ld a, $2e                                        ; $75f9: $3e $2e
	ld a, [bc]                                       ; $75fb: $0a
	call nz, $072e                                   ; $75fc: $c4 $2e $07
	rst $38                                          ; $75ff: $ff
	or h                                             ; $7600: $b4
	ld a, [$01f1]                                    ; $7601: $fa $f1 $01
	cp [hl]                                          ; $7604: $be
	ld bc, $0025                                     ; $7605: $01 $25 $00
	add hl, de                                       ; $7608: $19
	nop                                              ; $7609: $00
	cp [hl]                                          ; $760a: $be
	ret z                                            ; $760b: $c8

	add hl, de                                       ; $760c: $19
	ld [bc], a                                       ; $760d: $02
	rst $38                                          ; $760e: $ff
	or h                                             ; $760f: $b4
	rst $38                                          ; $7610: $ff
	ld bc, $0d01                                     ; $7611: $01 $01 $0d
	ld bc, $e1ff                                     ; $7614: $01 $ff $e1
	ret z                                            ; $7617: $c8

	pop bc                                           ; $7618: $c1
	ccf                                              ; $7619: $3f
	dec a                                            ; $761a: $3d
	ret                                              ; $761b: $c9


	ld a, $4c                                        ; $761c: $3e $4c
	ld c, [hl]                                       ; $761e: $4e
	rst SubAFromDE                                          ; $761f: $df
	ld a, [hl-]                                      ; $7620: $3a
	ld c, l                                          ; $7621: $4d
	rst SubAFromDE                                          ; $7622: $df
	jp $ff3e                                         ; $7623: $c3 $3e $ff


	db $e3                                           ; $7626: $e3
	ld [bc], a                                       ; $7627: $02
	ld [de], a                                       ; $7628: $12
	rrca                                             ; $7629: $0f
	inc sp                                           ; $762a: $33
	db $e3                                           ; $762b: $e3
	dec e                                            ; $762c: $1d
	pop af                                           ; $762d: $f1
	ld [$615f], sp                                   ; $762e: $08 $5f $61
	ld [hl+], a                                      ; $7631: $22
	ldh [rSB], a                                     ; $7632: $e0 $01
	rlca                                             ; $7634: $07
	dec d                                            ; $7635: $15
	rst $38                                          ; $7636: $ff
	or h                                             ; $7637: $b4
	ld b, [hl]                                       ; $7638: $46
	pop af                                           ; $7639: $f1
	inc bc                                           ; $763a: $03
	dec a                                            ; $763b: $3d
	ld bc, $0231                                     ; $763c: $01 $31 $02
	jr c, jr_007_7642                                ; $763f: $38 $01

	inc l                                            ; $7641: $2c

jr_007_7642:
	ld [bc], a                                       ; $7642: $02
	jp z, $013d                                      ; $7643: $ca $3d $01

	ld sp, $3802                                     ; $7646: $31 $02 $38
	ld bc, $022c                                     ; $7649: $01 $2c $02
	rst JumpTable                                          ; $764c: $c7
	dec a                                            ; $764d: $3d
	ld bc, $0231                                     ; $764e: $01 $31 $02
	jr c, jr_007_7654                                ; $7651: $38 $01

	inc l                                            ; $7653: $2c

jr_007_7654:
	ld [bc], a                                       ; $7654: $02
	call nz, $013d                                   ; $7655: $c4 $3d $01
	ld sp, $3802                                     ; $7658: $31 $02 $38
	ld bc, $022c                                     ; $765b: $01 $2c $02
	rst $38                                          ; $765e: $ff
	or h                                             ; $765f: $b4
	ret z                                            ; $7660: $c8

	and c                                            ; $7661: $a1
	ld [bc], a                                       ; $7662: $02
	dec l                                            ; $7663: $2d
	inc bc                                           ; $7664: $03
	ld [hl-], a                                      ; $7665: $32
	inc bc                                           ; $7666: $03
	push bc                                          ; $7667: $c5
	dec l                                            ; $7668: $2d
	inc bc                                           ; $7669: $03
	ld [hl-], a                                      ; $766a: $32
	inc bc                                           ; $766b: $03
	jp $032d                                         ; $766c: $c3 $2d $03


	ld [hl-], a                                      ; $766f: $32
	inc bc                                           ; $7670: $03
	rst $38                                          ; $7671: $ff
	or h                                             ; $7672: $b4
	ret z                                            ; $7673: $c8

	pop bc                                           ; $7674: $c1
	inc bc                                           ; $7675: $03
	ld hl, $2301                                     ; $7676: $21 $01 $23
	inc b                                            ; $7679: $04
	or c                                             ; $767a: $b1
	or c                                             ; $767b: $b1
	ld h, h                                          ; $767c: $64
	ld bc, $0e23                                     ; $767d: $01 $23 $0e
	rst $38                                          ; $7680: $ff
	or h                                             ; $7681: $b4
	ld a, [$02e1]                                    ; $7682: $fa $e1 $02
	ei                                               ; $7685: $fb
	inc e                                            ; $7686: $1c

jr_007_7687:
	ld bc, $0228                                     ; $7687: $01 $28 $02
	ei                                               ; $768a: $fb

jr_007_768b:
	inc bc                                           ; $768b: $03
	nop                                              ; $768c: $00
	dec b                                            ; $768d: $05
	ei                                               ; $768e: $fb

jr_007_768f:
	inc e                                            ; $768f: $1c
	ld bc, $0228                                     ; $7690: $01 $28 $02
	ei                                               ; $7693: $fb
	ld [$b4ff], sp                                   ; $7694: $08 $ff $b4
	inc sp                                           ; $7697: $33
	pop af                                           ; $7698: $f1
	nop                                              ; $7699: $00
	sub h                                            ; $769a: $94
	dec h                                            ; $769b: $25
	add hl, de                                       ; $769c: $19
	ld [bc], a                                       ; $769d: $02
	ret                                              ; $769e: $c9


	add hl, de                                       ; $769f: $19
	ld [bc], a                                       ; $76a0: $02
	rst $38                                          ; $76a1: $ff
	pop hl                                           ; $76a2: $e1
	inc sp                                           ; $76a3: $33
	and c                                            ; $76a4: $a1
	dec d                                            ; $76a5: $15
	ldh [rTIMA], a                                   ; $76a6: $e0 $05
	inc bc                                           ; $76a8: $03
	inc d                                            ; $76a9: $14
	rst $38                                          ; $76aa: $ff
	or [hl]                                          ; $76ab: $b6
	ld [$0241], sp                                   ; $76ac: $08 $41 $02
	ld h, h                                          ; $76af: $64
	rlca                                             ; $76b0: $07
	ld a, l                                          ; $76b1: $7d
	ld b, $fe                                        ; $76b2: $06 $fe
	push bc                                          ; $76b4: $c5
	jr nc, @+$06                                     ; $76b5: $30 $04

	jp nz, $0430                                     ; $76b7: $c2 $30 $04

	cp $ff                                           ; $76ba: $fe $ff
	db $e3                                           ; $76bc: $e3
	ld [$01f1], sp                                   ; $76bd: $08 $f1 $01
	cp $cd                                           ; $76c0: $fe $cd
	jr z, jr_007_7687                                ; $76c2: $28 $c3

	jr z, jr_007_768f                                ; $76c4: $28 $c9

	jr c, jr_007_768b                                ; $76c6: $38 $c3

jr_007_76c8:
	jr c, jr_007_76c8                                ; $76c8: $38 $fe

	rst $38                                          ; $76ca: $ff
	or h                                             ; $76cb: $b4
	ld a, [$02a1]                                    ; $76cc: $fa $a1 $02
	jr c, jr_007_76d2                                ; $76cf: $38 $01

	sub c                                            ; $76d1: $91

jr_007_76d2:
	jr c, jr_007_76dd                                ; $76d2: $38 $09

	sub [hl]                                         ; $76d4: $96
	and $03                                          ; $76d5: $e6 $03
	ld a, [hl]                                       ; $76d7: $7e
	dec l                                            ; $76d8: $2d
	inc d                                            ; $76d9: $14
	and b                                            ; $76da: $a0
	sub d                                            ; $76db: $92
	inc sp                                           ; $76dc: $33

jr_007_76dd:
	ld bc, $3391                                     ; $76dd: $01 $91 $33
	ld l, $ff                                        ; $76e0: $2e $ff
	pop hl                                           ; $76e2: $e1
	ret nz                                           ; $76e3: $c0

	sub c                                            ; $76e4: $91
	ei                                               ; $76e5: $fb
	ccf                                              ; $76e6: $3f
	ld c, a                                          ; $76e7: $4f
	rst SubAFromDE                                          ; $76e8: $df
	ld a, $4e                                        ; $76e9: $3e $4e
	rst SubAFromDE                                          ; $76eb: $df
	dec a                                            ; $76ec: $3d
	ld c, l                                          ; $76ed: $4d
	rst SubAFromDE                                          ; $76ee: $df
	inc a                                            ; $76ef: $3c
	ld c, h                                          ; $76f0: $4c
	add $3f                                          ; $76f1: $c6 $3f
	ld c, a                                          ; $76f3: $4f
	rst SubAFromDE                                          ; $76f4: $df
	dec sp                                           ; $76f5: $3b
	ld c, e                                          ; $76f6: $4b
	rst SubAFromDE                                          ; $76f7: $df
	ld a, [hl-]                                      ; $76f8: $3a
	ld c, d                                          ; $76f9: $4a
	rst SubAFromDE                                          ; $76fa: $df
	rst SubAFromDE                                          ; $76fb: $df
	ei                                               ; $76fc: $fb
	ld [bc], a                                       ; $76fd: $02
	rst $38                                          ; $76fe: $ff
	or h                                             ; $76ff: $b4
	ret z                                            ; $7700: $c8

	pop af                                           ; $7701: $f1
	ld [bc], a                                       ; $7702: $02
	dec a                                            ; $7703: $3d
	ld [$4696], sp                                   ; $7704: $08 $96 $46
	inc b                                            ; $7707: $04
	ccf                                              ; $7708: $3f
	jr nc, @+$01                                     ; $7709: $30 $ff

	or h                                             ; $770b: $b4
	ld h, h                                          ; $770c: $64
	sub c                                            ; $770d: $91
	nop                                              ; $770e: $00
	sub h                                            ; $770f: $94
	ld e, a                                          ; $7710: $5f
	ei                                               ; $7711: $fb
	ccf                                              ; $7712: $3f
	inc d                                            ; $7713: $14
	ei                                               ; $7714: $fb
	rlca                                             ; $7715: $07
	rst $38                                          ; $7716: $ff
	pop hl                                           ; $7717: $e1
	ld a, [bc]                                       ; $7718: $0a
	ld [hl], c                                       ; $7719: $71
	ei                                               ; $771a: $fb
	ld [hl], $13                                     ; $771b: $36 $13
	ei                                               ; $771d: $fb
	rlca                                             ; $771e: $07
	rst $38                                          ; $771f: $ff
	or h                                             ; $7720: $b4
	ld h, h                                          ; $7721: $64
	pop af                                           ; $7722: $f1
	ld [bc], a                                       ; $7723: $02
	ld [hl], a                                       ; $7724: $77
	sub h                                            ; $7725: $94
	add hl, sp                                       ; $7726: $39
	rla                                              ; $7727: $17
	inc b                                            ; $7728: $04
	nop                                              ; $7729: $00
	ld bc, $e3ff                                     ; $772a: $01 $ff $e3
	sbc b                                            ; $772d: $98
	pop af                                           ; $772e: $f1
	rrca                                             ; $772f: $0f
	ccf                                              ; $7730: $3f
	ld e, b                                          ; $7731: $58
	ld b, c                                          ; $7732: $41
	db $e3                                           ; $7733: $e3
	ld h, b                                          ; $7734: $60
	pop de                                           ; $7735: $d1
	ld bc, $ff10                                     ; $7736: $01 $10 $ff
	ldh [c], a                                       ; $7739: $e2
	pop bc                                           ; $773a: $c1
	inc b                                            ; $773b: $04
	ld b, b                                          ; $773c: $40
	rst $38                                          ; $773d: $ff
	ret nc                                           ; $773e: $d0

	ld [hl], b                                       ; $773f: $70
	add h                                            ; $7740: $84
	ld h, l                                          ; $7741: $65
	jp nz, $0c16                                     ; $7742: $c2 $16 $0c

	call nz, $0c16                                   ; $7745: $c4 $16 $0c
	rst $38                                          ; $7748: $ff
	ret nc                                           ; $7749: $d0

	ld [hl], b                                       ; $774a: $70
	add h                                            ; $774b: $84
	ld h, l                                          ; $774c: $65
	jp nz, $0c14                                     ; $774d: $c2 $14 $0c

	call nz, $0614                                   ; $7750: $c4 $14 $06
	add $14                                          ; $7753: $c6 $14
	inc c                                            ; $7755: $0c
	rst $38                                          ; $7756: $ff
	ret nc                                           ; $7757: $d0

	ld [hl], b                                       ; $7758: $70
	add h                                            ; $7759: $84
	ld h, l                                          ; $775a: $65
	jp nz, $0c12                                     ; $775b: $c2 $12 $0c

	call nz, $0c12                                   ; $775e: $c4 $12 $0c
	add $12                                          ; $7761: $c6 $12
	inc c                                            ; $7763: $0c
	rst $38                                          ; $7764: $ff
	ret nc                                           ; $7765: $d0

	ld [hl], b                                       ; $7766: $70
	add h                                            ; $7767: $84
	ld h, l                                          ; $7768: $65
	jp nz, $0c11                                     ; $7769: $c2 $11 $0c

	call nz, $0611                                   ; $776c: $c4 $11 $06
	add $11                                          ; $776f: $c6 $11
	inc c                                            ; $7771: $0c
	rst $38                                          ; $7772: $ff
	ret nc                                           ; $7773: $d0

	ld [hl], b                                       ; $7774: $70
	add h                                            ; $7775: $84
	ld h, l                                          ; $7776: $65
	jp nz, $0c0d                                     ; $7777: $c2 $0d $0c

	call nz, $0c0d                                   ; $777a: $c4 $0d $0c
	add $0d                                          ; $777d: $c6 $0d
	inc c                                            ; $777f: $0c
	rst $38                                          ; $7780: $ff
	db $e3                                           ; $7781: $e3
	halt                                             ; $7782: $76
	pop af                                           ; $7783: $f1
	rrca                                             ; $7784: $0f
	dec a                                            ; $7785: $3d
	ld [hl+], a                                      ; $7786: $22
	ret                                              ; $7787: $c9


	inc a                                            ; $7788: $3c
	ret z                                            ; $7789: $c8

	ld [hl+], a                                      ; $778a: $22
