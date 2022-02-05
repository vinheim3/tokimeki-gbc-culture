; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

	inc de                                           ; $4000: $13
	inc b                                            ; $4001: $04
	pop af                                           ; $4002: $f1
	sbc [hl]                                         ; $4003: $9e
	rst $38                                          ; $4004: $ff
	ld c, e                                          ; $4005: $4b
	cp $9d                                           ; $4006: $fe $9d
	rlca                                             ; $4008: $07
	rrca                                             ; $4009: $0f
	db $e3                                           ; $400a: $e3
	sbc l                                            ; $400b: $9d
	ldh [$f0], a                                     ; $400c: $e0 $f0
	ld c, e                                          ; $400e: $4b
	ret nz                                           ; $400f: $c0

	ld a, a                                          ; $4010: $7f
	call $f04f                                       ; $4011: $cd $4f $f0
	sbc h                                            ; $4014: $9c
	rlca                                             ; $4015: $07
	rst $38                                          ; $4016: $ff
	rlca                                             ; $4017: $07
	ld [hl], a                                       ; $4018: $77
	db $fd                                           ; $4019: $fd
	sbc $07                                          ; $401a: $de $07
	sbc d                                            ; $401c: $9a
	rst $38                                          ; $401d: $ff
	ld a, a                                          ; $401e: $7f
	add a                                            ; $401f: $87
	rrca                                             ; $4020: $0f
	ld [hl], a                                       ; $4021: $77
	ld [hl], a                                       ; $4022: $77
	xor h                                            ; $4023: $ac
	ld [hl], a                                       ; $4024: $77
	db $fd                                           ; $4025: $fd
	cp $9c                                           ; $4026: $fe $9c
	ld a, a                                          ; $4028: $7f
	nop                                              ; $4029: $00
	rlca                                             ; $402a: $07
	ld [hl], a                                       ; $402b: $77
	ret nc                                           ; $402c: $d0

	sbc e                                            ; $402d: $9b
	ld bc, $0006                                     ; $402e: $01 $06 $00
	ld bc, $9bf7                                     ; $4031: $01 $f7 $9b
	ld d, e                                          ; $4034: $53
	call $df21                                       ; $4035: $cd $21 $df
	ld a, e                                          ; $4038: $7b
	db $ec                                           ; $4039: $ec
	sbc $01                                          ; $403a: $de $01
	rst SubAFromDE                                          ; $403c: $df
	cp $fd                                           ; $403d: $fe $fd
	sbc c                                            ; $403f: $99
	ret nz                                           ; $4040: $c0

	cp a                                             ; $4041: $bf
	ret nz                                           ; $4042: $c0

	cp a                                             ; $4043: $bf
	rst $38                                          ; $4044: $ff
	rst $38                                          ; $4045: $ff
	db $dd                                           ; $4046: $dd
	add b                                            ; $4047: $80
	rst SubAFromDE                                          ; $4048: $df
	ld a, a                                          ; $4049: $7f
	ld l, a                                          ; $404a: $6f
	and b                                            ; $404b: $a0
	sbc e                                            ; $404c: $9b
	add b                                            ; $404d: $80
	ld h, b                                          ; $404e: $60
	nop                                              ; $404f: $00
	add b                                            ; $4050: $80
	ld c, a                                          ; $4051: $4f
	ld d, b                                          ; $4052: $50
	ld l, e                                          ; $4053: $6b
	or b                                             ; $4054: $b0
	ld b, a                                          ; $4055: $47
	ldh a, [$7f]                                     ; $4056: $f0 $7f
	ret nz                                           ; $4058: $c0

	sbc [hl]                                         ; $4059: $9e
	ldh [$7b], a                                     ; $405a: $e0 $7b
	push af                                          ; $405c: $f5
	sbc h                                            ; $405d: $9c
	ldh [rIE], a                                     ; $405e: $e0 $ff
	ldh [rPCM34], a                                  ; $4060: $e0 $77
	db $fd                                           ; $4062: $fd
	sbc $e0                                          ; $4063: $de $e0
	sbc d                                            ; $4065: $9a
	rst $38                                          ; $4066: $ff
	cp $e1                                           ; $4067: $fe $e1
	ldh a, [$ee]                                     ; $4069: $f0 $ee
	ld l, a                                          ; $406b: $6f
	ldh [$de], a                                     ; $406c: $e0 $de
	rst $38                                          ; $406e: $ff
	ld h, a                                          ; $406f: $67
	sub $de                                          ; $4070: $d6 $de
	rra                                              ; $4072: $1f
	ld a, a                                          ; $4073: $7f
	pop hl                                           ; $4074: $e1
	sbc l                                            ; $4075: $9d
	rra                                              ; $4076: $1f
	ldh [$67], a                                     ; $4077: $e0 $67
	ld [$3c6b], a                                    ; $4079: $ea $6b $3c
	ld [hl], a                                       ; $407c: $77
	or $73                                           ; $407d: $f6 $73
	ldh a, [$9e]                                     ; $407f: $f0 $9e
	jr nz, @-$20                                     ; $4081: $20 $de

	ldh [$9b], a                                     ; $4083: $e0 $9b
	cp a                                             ; $4085: $bf
	ld a, a                                          ; $4086: $7f
	add b                                            ; $4087: $80
	ld a, a                                          ; $4088: $7f
	ld h, a                                          ; $4089: $67
	ldh a, [hDisp0_OBP1]                                     ; $408a: $f0 $87
	add a                                            ; $408c: $87
	rst $38                                          ; $408d: $ff
	adc a                                            ; $408e: $8f
	rst FarCall                                          ; $408f: $f7
	sub a                                            ; $4090: $97
	rst AddAOntoHL                                          ; $4091: $ef
	and a                                            ; $4092: $a7
	rst SubAFromDE                                          ; $4093: $df
	and a                                            ; $4094: $a7
	rst SubAFromDE                                          ; $4095: $df
	add a                                            ; $4096: $87
	rst $38                                          ; $4097: $ff
	ld b, a                                          ; $4098: $47
	ld a, a                                          ; $4099: $7f
	daa                                              ; $409a: $27
	rst $38                                          ; $409b: $ff
	ld [hl], b                                       ; $409c: $70
	sbc [hl]                                         ; $409d: $9e
	sub b                                            ; $409e: $90
	ld a, [hl]                                       ; $409f: $7e
	db $10                                           ; $40a0: $10
	cp $10                                           ; $40a1: $fe $10
	ldh a, [rPCM34]                                  ; $40a3: $f0 $77
	cp $7f                                           ; $40a5: $fe $7f
	call nc, $208d                                   ; $40a7: $d4 $8d $20
	rst $38                                          ; $40aa: $ff
	inc h                                            ; $40ab: $24
	dec sp                                           ; $40ac: $3b
	ld b, b                                          ; $40ad: $40
	ld e, a                                          ; $40ae: $5f
	ld h, c                                          ; $40af: $61
	ld e, [hl]                                       ; $40b0: $5e
	ld e, b                                          ; $40b1: $58
	ld h, a                                          ; $40b2: $67
	ld b, h                                          ; $40b3: $44
	ld a, e                                          ; $40b4: $7b
	ld b, d                                          ; $40b5: $42
	ld a, l                                          ; $40b6: $7d
	ld b, d                                          ; $40b7: $42
	ld a, l                                          ; $40b8: $7d
	jr nz, @+$01                                     ; $40b9: $20 $ff

	rst SubAFromHL                                          ; $40bb: $d7
	ld b, c                                          ; $40bc: $41
	sbc $f9                                          ; $40bd: $de $f9
	sbc $09                                          ; $40bf: $de $09
	add b                                            ; $40c1: $80
	ld c, c                                          ; $40c2: $49
	ld b, a                                          ; $40c3: $47
	ld b, l                                          ; $40c4: $45
	ld b, e                                          ; $40c5: $43
	db $e3                                           ; $40c6: $e3
	pop hl                                           ; $40c7: $e1
	ld de, $e911                                     ; $40c8: $11 $11 $e9
	add hl, bc                                       ; $40cb: $09
	sbc l                                            ; $40cc: $9d
	ld l, l                                          ; $40cd: $6d
	inc de                                           ; $40ce: $13
	di                                               ; $40cf: $f3
	dec l                                            ; $40d0: $2d
	pop hl                                           ; $40d1: $e1
	and d                                            ; $40d2: $a2
	sbc [hl]                                         ; $40d3: $9e
	sub d                                            ; $40d4: $92
	adc [hl]                                         ; $40d5: $8e
	adc a                                            ; $40d6: $8f
	add a                                            ; $40d7: $87
	sbc b                                            ; $40d8: $98
	sbc b                                            ; $40d9: $98
	and a                                            ; $40da: $a7
	and b                                            ; $40db: $a0
	xor b                                            ; $40dc: $a8
	and a                                            ; $40dd: $a7
	pop de                                           ; $40de: $d1
	adc $a2                                          ; $40df: $ce $a2
	sbc [hl]                                         ; $40e1: $9e
	sbc l                                            ; $40e2: $9d
	rst SubAFromHL                                          ; $40e3: $d7
	add d                                            ; $40e4: $82
	sbc $9f                                          ; $40e5: $de $9f
	sbc $90                                          ; $40e7: $de $90
	sub c                                            ; $40e9: $91

jr_01c_40ea:
	nop                                              ; $40ea: $00
	db $fc                                           ; $40eb: $fc

jr_01c_40ec:
	jr c, jr_01c_40ea                                ; $40ec: $38 $fc

	call nz, $3ac4                                   ; $40ee: $c4 $c4 $3a
	ld [bc], a                                       ; $40f1: $02
	push bc                                          ; $40f2: $c5
	add hl, sp                                       ; $40f3: $39
	add a                                            ; $40f4: $87
	ld a, c                                          ; $40f5: $79
	ld bc, $7bfe                                     ; $40f6: $01 $fe $7b
	ld sp, $947f                                     ; $40f9: $31 $7f $94
	sub h                                            ; $40fc: $94
	ld e, $ea                                        ; $40fd: $1e $ea
	ld a, [bc]                                       ; $40ff: $0a
	dec d                                            ; $4100: $15
	push hl                                          ; $4101: $e5
	adc e                                            ; $4102: $8b
	ld a, c                                          ; $4103: $79
	ld b, c                                          ; $4104: $41
	cp [hl]                                          ; $4105: $be
	ld h, $d9                                        ; $4106: $26 $d9
	ld [hl], a                                       ; $4108: $77
	ld hl, $f193                                     ; $4109: $21 $93 $f1
	rst $38                                          ; $410c: $ff
	ld [$f5ea], a                                    ; $410d: $ea $ea $f5
	db $e4                                           ; $4110: $e4
	ld [$f8f1], a                                    ; $4111: $ea $f1 $f8
	rst SubAFromBC                                          ; $4114: $e7
	db $e4                                           ; $4115: $e4
	ei                                               ; $4116: $fb
	ld a, e                                          ; $4117: $7b
	add hl, sp                                       ; $4118: $39
	ld e, e                                          ; $4119: $5b
	inc h                                            ; $411a: $24
	ld h, a                                          ; $411b: $67
	or $9d                                           ; $411c: $f6 $9d
	rra                                              ; $411e: $1f
	nop                                              ; $411f: $00
	ld [hl], a                                       ; $4120: $77
	ld a, [de]                                       ; $4121: $1a
	ld a, a                                          ; $4122: $7f
	ld a, [$fe77]                                    ; $4123: $fa $77 $fe
	ld [hl], e                                       ; $4126: $73
	and $4a                                          ; $4127: $e6 $4a
	db $10                                           ; $4129: $10
	sbc l                                            ; $412a: $9d
	and b                                            ; $412b: $a0
	ld h, b                                          ; $412c: $60
	ld [hl], a                                       ; $412d: $77
	ld a, [de]                                       ; $412e: $1a
	ld a, a                                          ; $412f: $7f
	ld a, [$fe77]                                    ; $4130: $fa $77 $fe
	add b                                            ; $4133: $80
	inc sp                                           ; $4134: $33
	cpl                                              ; $4135: $2f
	rst FarCall                                          ; $4136: $f7
	rst AddAOntoHL                                          ; $4137: $ef
	rst SubAFromBC                                          ; $4138: $e7
	ccf                                              ; $4139: $3f
	ld b, a                                          ; $413a: $47
	ld e, a                                          ; $413b: $5f
	ld h, a                                          ; $413c: $67
	rst SubAFromDE                                          ; $413d: $df
	ld e, a                                          ; $413e: $5f
	rst SubAFromBC                                          ; $413f: $e7
	and a                                            ; $4140: $a7
	sbc a                                            ; $4141: $9f
	rst JumpTable                                          ; $4142: $c7
	cp a                                             ; $4143: $bf
	ld b, b                                          ; $4144: $40
	ret nz                                           ; $4145: $c0

	ld a, a                                          ; $4146: $7f
	rst $38                                          ; $4147: $ff
	ld a, a                                          ; $4148: $7f
	ret nz                                           ; $4149: $c0

	jr nz, jr_01c_40ec                               ; $414a: $20 $a0

	ld h, b                                          ; $414c: $60
	cp [hl]                                          ; $414d: $be
	and b                                            ; $414e: $a0
	ld a, [hl]                                       ; $414f: $7e
	ld h, b                                          ; $4150: $60
	and b                                            ; $4151: $a0
	db $10                                           ; $4152: $10
	adc h                                            ; $4153: $8c
	sbc $1a                                          ; $4154: $de $1a
	dec d                                            ; $4156: $15
	db $f4                                           ; $4157: $f4
	ei                                               ; $4158: $fb
	db $f4                                           ; $4159: $f4
	dec de                                           ; $415a: $1b
	jr nz, jr_01c_418c                               ; $415b: $20 $2f

	jr nc, jr_01c_418e                               ; $415d: $30 $2f

	ld hl, $223e                                     ; $415f: $21 $3e $22
	dec a                                            ; $4162: $3d
	inc h                                            ; $4163: $24
	dec sp                                           ; $4164: $3b
	add c                                            ; $4165: $81
	ld [hl], c                                       ; $4166: $71
	db $dd                                           ; $4167: $dd
	ld bc, $f1df                                     ; $4168: $01 $df $f1
	rst SubAFromDE                                          ; $416b: $df
	ld de, $fd7f                                     ; $416c: $11 $7f $fd
	rst SubAFromDE                                          ; $416f: $df
	pop af                                           ; $4170: $f1
	sbc e                                            ; $4171: $9b
	pop bc                                           ; $4172: $c1
	ld b, c                                          ; $4173: $41
	db $10                                           ; $4174: $10
	adc $65                                          ; $4175: $ce $65
	ld a, [$7577]                                    ; $4177: $fa $77 $75
	sbc e                                            ; $417a: $9b
	reti                                             ; $417b: $d9


	ld b, a                                          ; $417c: $47
	ld b, d                                          ; $417d: $42
	add hl, sp                                       ; $417e: $39
	ld d, a                                          ; $417f: $57

jr_01c_4180:
	ldh a, [$9b]                                     ; $4180: $f0 $9b
	jp $88be                                         ; $4182: $c3 $be $88


	add a                                            ; $4185: $87
	db $dd                                           ; $4186: $dd
	add b                                            ; $4187: $80
	rst SubAFromDE                                          ; $4188: $df
	adc a                                            ; $4189: $8f
	rst SubAFromDE                                          ; $418a: $df
	adc b                                            ; $418b: $88

jr_01c_418c:
	ld a, a                                          ; $418c: $7f
	db $fd                                           ; $418d: $fd

jr_01c_418e:
	rst SubAFromDE                                          ; $418e: $df
	adc a                                            ; $418f: $8f
	sbc l                                            ; $4190: $9d
	add e                                            ; $4191: $83
	add d                                            ; $4192: $82
	ld [hl], e                                       ; $4193: $73
	ld e, c                                          ; $4194: $59
	db $fd                                           ; $4195: $fd
	sbc [hl]                                         ; $4196: $9e
	db $fc                                           ; $4197: $fc
	ld a, e                                          ; $4198: $7b
	cp $77                                           ; $4199: $fe $77
	ld a, [$f067]                                    ; $419b: $fa $67 $f0
	sbc [hl]                                         ; $419e: $9e
	ld a, [hl]                                       ; $419f: $7e
	ld a, e                                          ; $41a0: $7b
	cp $7b                                           ; $41a1: $fe $7b
	ld a, [$c0df]                                    ; $41a3: $fa $df $c0
	sbc $ff                                          ; $41a6: $de $ff
	ld [hl], d                                       ; $41a8: $72
	ld b, d                                          ; $41a9: $42
	ld [hl], d                                       ; $41aa: $72
	ld a, [hl-]                                      ; $41ab: $3a
	ld b, e                                          ; $41ac: $43
	inc h                                            ; $41ad: $24
	add b                                            ; $41ae: $80
	ld b, b                                          ; $41af: $40
	ld a, a                                          ; $41b0: $7f
	add [hl]                                         ; $41b1: $86
	add hl, sp                                       ; $41b2: $39
	ld c, c                                          ; $41b3: $49
	or [hl]                                          ; $41b4: $b6
	db $10                                           ; $41b5: $10
	rst AddAOntoHL                                          ; $41b6: $ef
	jr c, jr_01c_4180                                ; $41b7: $38 $c7

	call nz, $023b                                   ; $41b9: $c4 $3b $02
	db $fd                                           ; $41bc: $fd
	rst $38                                          ; $41bd: $ff
	rst $38                                          ; $41be: $ff
	adc b                                            ; $41bf: $88
	ld a, e                                          ; $41c0: $7b
	call z, $283b                                    ; $41c1: $cc $3b $28
	rst SubAFromDE                                          ; $41c4: $df
	db $10                                           ; $41c5: $10
	rst FarCall                                          ; $41c6: $f7
	dec de                                           ; $41c7: $1b
	db $f4                                           ; $41c8: $f4
	inc d                                            ; $41c9: $14
	ei                                               ; $41ca: $fb
	add hl, bc                                       ; $41cb: $09
	or $ff                                           ; $41cc: $f6 $ff
	adc c                                            ; $41ce: $89
	rst $38                                          ; $41cf: $ff
	ld d, b                                          ; $41d0: $50
	ld d, a                                          ; $41d1: $57
	ret c                                            ; $41d2: $d8

	ld d, a                                          ; $41d3: $57
	ld hl, $faae                                     ; $41d4: $21 $ae $fa
	db $fd                                           ; $41d7: $fd
	ld a, [bc]                                       ; $41d8: $0a
	dec c                                            ; $41d9: $0d
	ld [$080f], sp                                   ; $41da: $08 $0f $08
	rrca                                             ; $41dd: $0f
	rst $38                                          ; $41de: $ff
	rst $38                                          ; $41df: $ff
	ld c, [hl]                                       ; $41e0: $4e
	ret nz                                           ; $41e1: $c0

	ld [hl], c                                       ; $41e2: $71
	adc $80                                          ; $41e3: $ce $80
	ld a, c                                          ; $41e5: $79
	xor [hl]                                         ; $41e6: $ae
	ld h, c                                          ; $41e7: $61
	ld d, d                                          ; $41e8: $52
	sbc [hl]                                         ; $41e9: $9e
	ei                                               ; $41ea: $fb
	ld [hl], a                                       ; $41eb: $77
	cp $6d                                           ; $41ec: $fe $6d
	sbc [hl]                                         ; $41ee: $9e
	rst SubAFromDE                                          ; $41ef: $df
	add b                                            ; $41f0: $80
	ld a, e                                          ; $41f1: $7b
	ldh a, [$8c]                                     ; $41f2: $f0 $8c
	db $fd                                           ; $41f4: $fd
	inc c                                            ; $41f5: $0c
	db $fd                                           ; $41f6: $fd
	ld [de], a                                       ; $41f7: $12
	di                                               ; $41f8: $f3
	rra                                              ; $41f9: $1f
	di                                               ; $41fa: $f3
	ld hl, $332d                                     ; $41fb: $21 $2d $33
	db $ed                                           ; $41fe: $ed
	ld hl, $2d3f                                     ; $41ff: $21 $3f $2d
	inc sp                                           ; $4202: $33
	nop                                              ; $4203: $00
	ld a, [hl]                                       ; $4204: $7e
	add b                                            ; $4205: $80
	cp $73                                           ; $4206: $fe $73
	cp $90                                           ; $4208: $fe $90
	add b                                            ; $420a: $80
	ld b, b                                          ; $420b: $40
	ld a, a                                          ; $420c: $7f
	ld b, b                                          ; $420d: $40
	ld b, b                                          ; $420e: $40
	ret nz                                           ; $420f: $c0

	ld b, b                                          ; $4210: $40
	add hl, bc                                       ; $4211: $09
	add hl, sp                                       ; $4212: $39
	ld c, $38                                        ; $4213: $0e $38
	dec bc                                           ; $4215: $0b
	inc a                                            ; $4216: $3c
	ld [$7b3f], sp                                   ; $4217: $08 $3f $7b
	or d                                             ; $421a: $b2
	sbc d                                            ; $421b: $9a
	rst $38                                          ; $421c: $ff
	add hl, bc                                       ; $421d: $09
	ld c, $12                                        ; $421e: $0e $12
	dec d                                            ; $4220: $15
	ld [hl], e                                       ; $4221: $73
	ld c, b                                          ; $4222: $48
	ld l, a                                          ; $4223: $6f
	ld b, h                                          ; $4224: $44
	ld l, a                                          ; $4225: $6f
	xor h                                            ; $4226: $ac
	ld [hl], a                                       ; $4227: $77
	ld c, b                                          ; $4228: $48
	ld l, a                                          ; $4229: $6f
	ld b, h                                          ; $422a: $44
	ld l, a                                          ; $422b: $6f
	ldh a, [$9e]                                     ; $422c: $f0 $9e
	cp a                                             ; $422e: $bf
	ld l, a                                          ; $422f: $6f
	cp $77                                           ; $4230: $fe $77
	and e                                            ; $4232: $a3
	db $dd                                           ; $4233: $dd
	add b                                            ; $4234: $80
	sbc d                                            ; $4235: $9a
	nop                                              ; $4236: $00
	rst SubAFromDE                                          ; $4237: $df
	nop                                              ; $4238: $00
	rst SubAFromDE                                          ; $4239: $df
	add b                                            ; $423a: $80
	ld l, c                                          ; $423b: $69
	ld e, $df                                        ; $423c: $1e $df
	ld bc, $ffdf                                     ; $423e: $01 $df $ff
	sbc c                                            ; $4241: $99
	ld [hl], d                                       ; $4242: $72
	inc bc                                           ; $4243: $03
	adc l                                            ; $4244: $8d
	ld [hl], c                                       ; $4245: $71
	ld [hl-], a                                      ; $4246: $32
	call z, Call_01c_705f                            ; $4247: $cc $5f $70
	add d                                            ; $424a: $82
	ld a, [hl+]                                      ; $424b: $2a
	adc $9b                                          ; $424c: $ce $9b
	ld l, [hl]                                       ; $424e: $6e
	ld b, h                                          ; $424f: $44
	or l                                             ; $4250: $b5
	ccf                                              ; $4251: $3f
	rst SubAFromDE                                          ; $4252: $df
	ret nc                                           ; $4253: $d0

	jr nc, @+$32                                     ; $4254: $30 $30

	ret nc                                           ; $4256: $d0

	db $10                                           ; $4257: $10
	ldh a, [rIE]                                     ; $4258: $f0 $ff
	rst $38                                          ; $425a: $ff
	db $10                                           ; $425b: $10
	rst SubAFromDE                                          ; $425c: $df
	ld sp, $12de                                     ; $425d: $31 $de $12
	db $fd                                           ; $4260: $fd
	adc h                                            ; $4261: $8c
	ld l, e                                          ; $4262: $6b
	ld e, b                                          ; $4263: $58
	xor a                                            ; $4264: $af
	dec bc                                           ; $4265: $0b
	db $fc                                           ; $4266: $fc
	inc b                                            ; $4267: $04
	ld a, e                                          ; $4268: $7b
	ld e, b                                          ; $4269: $58
	sub c                                            ; $426a: $91
	and $1a                                          ; $426b: $e6 $1a
	ld hl, $12dc                                     ; $426d: $21 $dc $12
	db $ed                                           ; $4270: $ed
	ld bc, $1efe                                     ; $4271: $01 $fe $1e
	pop hl                                           ; $4274: $e1
	ld [hl+], a                                      ; $4275: $22
	db $dd                                           ; $4276: $dd
	ld b, c                                          ; $4277: $41
	cp [hl]                                          ; $4278: $be
	ld [hl], a                                       ; $4279: $77

Jump_01c_427a:
	ld c, b                                          ; $427a: $48
	rst SubAFromDE                                          ; $427b: $df
	sbc h                                            ; $427c: $9c
	rst SubAFromDE                                          ; $427d: $df
	db $e3                                           ; $427e: $e3
	sub l                                            ; $427f: $95
	db $dd                                           ; $4280: $dd
	pop bc                                           ; $4281: $c1
	and d                                            ; $4282: $a2
	sbc h                                            ; $4283: $9c
	ld b, c                                          ; $4284: $41
	ld a, $98                                        ; $4285: $3e $98
	rst SubAFromBC                                          ; $4287: $e7
	and h                                            ; $4288: $a4
	db $db                                           ; $4289: $db
	db $fd                                           ; $428a: $fd
	rst SubAFromDE                                          ; $428b: $df
	ldh a, [$df]                                     ; $428c: $f0 $df
	ld [$f497], sp                                   ; $428e: $08 $97 $f4
	inc b                                            ; $4291: $04
	dec bc                                           ; $4292: $0b
	di                                               ; $4293: $f3
	inc [hl]                                         ; $4294: $34
	call z, $b44f                                    ; $4295: $cc $4f $b4
	ei                                               ; $4298: $fb
	rst SubAFromDE                                          ; $4299: $df
	ld bc, $02df                                     ; $429a: $01 $df $02
	sbc c                                            ; $429d: $99
	dec b                                            ; $429e: $05
	inc b                                            ; $429f: $04
	ld a, [bc]                                       ; $42a0: $0a
	add hl, bc                                       ; $42a1: $09
	adc h                                            ; $42a2: $8c
	adc e                                            ; $42a3: $8b
	db $dd                                           ; $42a4: $dd
	ld [bc], a                                       ; $42a5: $02
	sbc $fe                                          ; $42a6: $de $fe
	db $dd                                           ; $42a8: $dd
	ld [bc], a                                       ; $42a9: $02
	sbc d                                            ; $42aa: $9a
	ldh a, [c]                                       ; $42ab: $f2
	ld c, $fe                                        ; $42ac: $0e $fe
	ld sp, $6f31                                     ; $42ae: $31 $31 $6f
	adc d                                            ; $42b1: $8a
	ld [hl], e                                       ; $42b2: $73
	add c                                            ; $42b3: $81
	halt                                             ; $42b4: $76
	or $6b                                           ; $42b5: $f6 $6b
	ld a, d                                          ; $42b7: $7a
	ld [hl], e                                       ; $42b8: $73
	ldh a, [$9e]                                     ; $42b9: $f0 $9e
	db $fd                                           ; $42bb: $fd
	ld a, e                                          ; $42bc: $7b
	cp $57                                           ; $42bd: $fe $57
	ldh a, [$9a]                                     ; $42bf: $f0 $9a
	ccf                                              ; $42c1: $3f
	nop                                              ; $42c2: $00
	ccf                                              ; $42c3: $3f

jr_01c_42c4:
	ld b, $06                                        ; $42c4: $06 $06
	ld e, e                                          ; $42c6: $5b
	ldh a, [$6f]                                     ; $42c7: $f0 $6f
	ld a, [bc]                                       ; $42c9: $0a
	ld e, a                                          ; $42ca: $5f
	ldh a, [$6f]                                     ; $42cb: $f0 $6f
	ld a, [bc]                                       ; $42cd: $0a
	ld e, a                                          ; $42ce: $5f
	ldh a, [rPCM34]                                  ; $42cf: $f0 $77
	ld [$f057], sp                                   ; $42d1: $08 $57 $f0
	ld a, e                                          ; $42d4: $7b
	ld b, $53                                        ; $42d5: $06 $53
	ldh a, [$9a]                                     ; $42d7: $f0 $9a
	rst AddAOntoHL                                          ; $42d9: $ef
	ld [hl], b                                       ; $42da: $70
	rst $38                                          ; $42db: $ff
	adc h                                            ; $42dc: $8c
	adc h                                            ; $42dd: $8c
	ld h, a                                          ; $42de: $67
	ldh a, [$7a]                                     ; $42df: $f0 $7a
	and b                                            ; $42e1: $a0
	add b                                            ; $42e2: $80
	ld [hl], a                                       ; $42e3: $77
	and b                                            ; $42e4: $a0
	scf                                              ; $42e5: $37
	ld de, $08d1                                     ; $42e6: $11 $d1 $08
	adc b                                            ; $42e9: $88
	ld [$0fa8], sp                                   ; $42ea: $08 $a8 $0f
	xor a                                            ; $42ed: $af
	ld de, $2e31                                     ; $42ee: $11 $31 $2e
	jr nz, jr_01c_42c4                               ; $42f1: $20 $d1

	adc $2c                                          ; $42f3: $ce $2c
	inc sp                                           ; $42f5: $33
	ldh a, [c]                                       ; $42f6: $f2
	dec l                                            ; $42f7: $2d
	ld [bc], a                                       ; $42f8: $02
	ld [bc], a                                       ; $42f9: $02
	ld a, [de]                                       ; $42fa: $1a
	ld a, [de]                                       ; $42fb: $1a
	ld h, [hl]                                       ; $42fc: $66
	and $9a                                          ; $42fd: $e6 $9a
	add d                                            ; $42ff: $82
	ld h, l                                          ; $4300: $65
	add hl, de                                       ; $4301: $19
	sbc c                                            ; $4302: $99
	add h                                            ; $4303: $84
	ld a, d                                          ; $4304: $7a
	ld bc, $19ff                                     ; $4305: $01 $ff $19
	rst SubAFromBC                                          ; $4308: $e7
	sbc $80                                          ; $4309: $de $80
	sbc [hl]                                         ; $430b: $9e
	sbc a                                            ; $430c: $9f
	ld l, e                                          ; $430d: $6b
	cp $72                                           ; $430e: $fe $72
	xor [hl]                                         ; $4310: $ae
	sbc l                                            ; $4311: $9d
	nop                                              ; $4312: $00
	ld hl, sp-$0e                                    ; $4313: $f8 $f2
	sbc [hl]                                         ; $4315: $9e
	ld a, $f3                                        ; $4316: $3e $f3
	ld [hl], a                                       ; $4318: $77
	jr jr_01c_4386                                   ; $4319: $18 $6b

	cp $7b                                           ; $431b: $fe $7b
	rlca                                             ; $431d: $07
	rst SubAFromDE                                          ; $431e: $df
	ld [bc], a                                       ; $431f: $02
	ld l, e                                          ; $4320: $6b
	jr jr_01c_4392                                   ; $4321: $18 $6f

	inc d                                            ; $4323: $14
	ld l, [hl]                                       ; $4324: $6e
	adc d                                            ; $4325: $8a
	ld [hl], a                                       ; $4326: $77
	jr jr_01c_4398                                   ; $4327: $18 $6f

	inc d                                            ; $4329: $14
	ld l, a                                          ; $432a: $6f
	ldh a, [$7b]                                     ; $432b: $f0 $7b
	jr @+$75                                         ; $432d: $18 $73

	cp $67                                           ; $432f: $fe $67
	ldh a, [rSC]                                     ; $4331: $f0 $02
	ld e, $6b                                        ; $4333: $1e $6b
	cp $67                                           ; $4335: $fe $67
	ldh a, [rPCM34]                                  ; $4337: $f0 $77
	jr jr_01c_43aa                                   ; $4339: $18 $6f

	inc d                                            ; $433b: $14
	ld l, a                                          ; $433c: $6f
	ldh a, [$9e]                                     ; $433d: $f0 $9e
	rst AddAOntoHL                                          ; $433f: $ef
	ld l, e                                          ; $4340: $6b
	cp $67                                           ; $4341: $fe $67
	ldh a, [$9e]                                     ; $4343: $f0 $9e
	rst FarCall                                          ; $4345: $f7
	ld l, e                                          ; $4346: $6b
	cp $67                                           ; $4347: $fe $67
	ldh a, [$73]                                     ; $4349: $f0 $73
	ld [hl], d                                       ; $434b: $72
	sub a                                            ; $434c: $97
	add b                                            ; $434d: $80
	ei                                               ; $434e: $fb
	ld b, b                                          ; $434f: $40
	ld b, b                                          ; $4350: $40
	jr nz, jr_01c_4392                               ; $4351: $20 $3f

	db $10                                           ; $4353: $10
	sub b                                            ; $4354: $90
	ld [hl], a                                       ; $4355: $77
	ld [hl], b                                       ; $4356: $70
	sbc e                                            ; $4357: $9b
	cp $ff                                           ; $4358: $fe $ff
	rst $38                                          ; $435a: $ff
	inc bc                                           ; $435b: $03
	sbc $02                                          ; $435c: $de $02
	sbc [hl]                                         ; $435e: $9e
	ld a, [$fe77]                                    ; $435f: $fa $77 $fe
	ld h, l                                          ; $4362: $65
	ld l, b                                          ; $4363: $68
	ld [hl], c                                       ; $4364: $71
	jp $0a7b                                         ; $4365: $c3 $7b $0a


	ld a, e                                          ; $4368: $7b
	db $10                                           ; $4369: $10
	ld c, a                                          ; $436a: $4f
	cp $7f                                           ; $436b: $fe $7f
	db $10                                           ; $436d: $10
	ld d, e                                          ; $436e: $53
	cp $db                                           ; $436f: $fe $db
	ld [bc], a                                       ; $4371: $02
	ld h, [hl]                                       ; $4372: $66
	ld e, $7f                                        ; $4373: $1e $7f
	cp $46                                           ; $4375: $fe $46
	ld a, $7c                                        ; $4377: $3e $7c
	ld d, b                                          ; $4379: $50
	ld c, a                                          ; $437a: $4f
	cp $7c                                           ; $437b: $fe $7c
	ld d, b                                          ; $437d: $50
	ld c, a                                          ; $437e: $4f
	cp $7c                                           ; $437f: $fe $7c
	ld d, b                                          ; $4381: $50
	ld c, a                                          ; $4382: $4f
	cp $7c                                           ; $4383: $fe $7c
	ld d, b                                          ; $4385: $50

jr_01c_4386:
	ld c, a                                          ; $4386: $4f
	cp $53                                           ; $4387: $fe $53
	or b                                             ; $4389: $b0
	add hl, sp                                       ; $438a: $39
	cp $6c                                           ; $438b: $fe $6c
	ld l, d                                          ; $438d: $6a
	sbc h                                            ; $438e: $9c
	xor d                                            ; $438f: $aa
	nop                                              ; $4390: $00
	ld d, l                                          ; $4391: $55

jr_01c_4392:
	ld a, e                                          ; $4392: $7b
	db $fc                                           ; $4393: $fc
	sbc [hl]                                         ; $4394: $9e
	ld d, b                                          ; $4395: $50
	ld [hl], e                                       ; $4396: $73
	dec e                                            ; $4397: $1d

jr_01c_4398:
	ld [hl], a                                       ; $4398: $77
	cp $7e                                           ; $4399: $fe $7e
	db $e3                                           ; $439b: $e3
	ld [hl], a                                       ; $439c: $77
	ldh a, [$7c]                                     ; $439d: $f0 $7c
	db $d3                                           ; $439f: $d3
	ld h, a                                          ; $43a0: $67
	ldh a, [$7f]                                     ; $43a1: $f0 $7f
	cp $77                                           ; $43a3: $fe $77
	ldh a, [$7f]                                     ; $43a5: $f0 $7f
	db $fc                                           ; $43a7: $fc
	ld a, [hl]                                       ; $43a8: $7e
	ld [hl], c                                       ; $43a9: $71

jr_01c_43aa:
	ld c, a                                          ; $43aa: $4f
	ldh a, [$7f]                                     ; $43ab: $f0 $7f
	db $fc                                           ; $43ad: $fc
	ld d, a                                          ; $43ae: $57
	ret nz                                           ; $43af: $c0

	ld e, a                                          ; $43b0: $5f
	ldh a, [$9e]                                     ; $43b1: $f0 $9e
	xor a                                            ; $43b3: $af
	ld h, e                                          ; $43b4: $63
	ldh a, [rTIMA]                                   ; $43b5: $f0 $05
	sbc [hl]                                         ; $43b7: $9e
	ld l, a                                          ; $43b8: $6f
	ret nc                                           ; $43b9: $d0

	sbc [hl]                                         ; $43ba: $9e
	cp $6b                                           ; $43bb: $fe $6b
	ret nc                                           ; $43bd: $d0

	sbc [hl]                                         ; $43be: $9e
	xor b                                            ; $43bf: $a8
	ld d, e                                          ; $43c0: $53
	or b                                             ; $43c1: $b0
	ld [hl], e                                       ; $43c2: $73
	sub $5b                                          ; $43c3: $d6 $5b
	sub b                                            ; $43c5: $90
	ld b, a                                          ; $43c6: $47
	ldh a, [$5f]                                     ; $43c7: $f0 $5f
	ld h, b                                          ; $43c9: $60
	sbc [hl]                                         ; $43ca: $9e
	ld a, [$c06b]                                    ; $43cb: $fa $6b $c0
	ld h, a                                          ; $43ce: $67
	ldh a, [$9e]                                     ; $43cf: $f0 $9e
	xor e                                            ; $43d1: $ab
	ld l, e                                          ; $43d2: $6b
	ldh a, [$9e]                                     ; $43d3: $f0 $9e
	ld a, [hl+]                                      ; $43d5: $2a
	ld c, e                                          ; $43d6: $4b
	ld d, b                                          ; $43d7: $50
	ld a, l                                          ; $43d8: $7d
	add c                                            ; $43d9: $81
	ld c, l                                          ; $43da: $4d
	ld l, $72                                        ; $43db: $2e $72
	ld a, [de]                                       ; $43dd: $1a
	ld e, a                                          ; $43de: $5f
	ldh a, [$6e]                                     ; $43df: $f0 $6e
	ld a, [de]                                       ; $43e1: $1a
	ld d, b                                          ; $43e2: $50
	sbc [hl]                                         ; $43e3: $9e
	ld c, a                                          ; $43e4: $4f
	or b                                             ; $43e5: $b0
	ld c, e                                          ; $43e6: $4b
	jr nc, jr_01c_445a                               ; $43e7: $30 $71

	ld a, d                                          ; $43e9: $7a
	ld a, [hl]                                       ; $43ea: $7e
	db $ec                                           ; $43eb: $ec
	ld h, a                                          ; $43ec: $67
	db $e4                                           ; $43ed: $e4
	ld [hl], a                                       ; $43ee: $77
	add b                                            ; $43ef: $80
	rst $38                                          ; $43f0: $ff
	ld l, a                                          ; $43f1: $6f
	db $f4                                           ; $43f2: $f4
	sbc [hl]                                         ; $43f3: $9e
	ld b, b                                          ; $43f4: $40
	ld l, e                                          ; $43f5: $6b
	add b                                            ; $43f6: $80
	ld h, [hl]                                       ; $43f7: $66
	xor b                                            ; $43f8: $a8
	ld l, a                                          ; $43f9: $6f
	add sp, -$62                                     ; $43fa: $e8 $9e
	and b                                            ; $43fc: $a0
	ld h, e                                          ; $43fd: $63
	cp h                                             ; $43fe: $bc
	ld [hl], a                                       ; $43ff: $77
	ldh [$7f], a                                     ; $4400: $e0 $7f
	db $fc                                           ; $4402: $fc
	rst $38                                          ; $4403: $ff
	ld l, a                                          ; $4404: $6f
	call z, $5ff7                                    ; $4405: $cc $f7 $5f
	sbc h                                            ; $4408: $9c
	db $fd                                           ; $4409: $fd
	ld l, a                                          ; $440a: $6f
	ret nz                                           ; $440b: $c0

	ld [hl], a                                       ; $440c: $77
	cp b                                             ; $440d: $b8
	db $fd                                           ; $440e: $fd
	ld a, a                                          ; $440f: $7f
	db $10                                           ; $4410: $10
	ld a, a                                          ; $4411: $7f
	db $f4                                           ; $4412: $f4
	and $00                                          ; $4413: $e6 $00
	sbc e                                            ; $4415: $9b
	ld d, l                                          ; $4416: $55
	nop                                              ; $4417: $00
	xor d                                            ; $4418: $aa
	nop                                              ; $4419: $00
	ld [hl], a                                       ; $441a: $77
	db $fc                                           ; $441b: $fc
	sbc h                                            ; $441c: $9c
	dec b                                            ; $441d: $05
	nop                                              ; $441e: $00
	ld [bc], a                                       ; $441f: $02
	ld [hl], e                                       ; $4420: $73
	ld hl, sp-$01                                    ; $4421: $f8 $ff
	sbc [hl]                                         ; $4423: $9e
	and b                                            ; $4424: $a0
	ld a, e                                          ; $4425: $7b
	ld hl, sp-$6f                                    ; $4426: $f8 $91
	xor a                                            ; $4428: $af
	rrca                                             ; $4429: $0f
	ld e, c                                          ; $442a: $59
	ld [$08a9], sp                                   ; $442b: $08 $a9 $08
	ld e, c                                          ; $442e: $59
	ld [$0809], sp                                   ; $442f: $08 $09 $08
	nop                                              ; $4432: $00
	nop                                              ; $4433: $00
	rst $38                                          ; $4434: $ff
	rst $38                                          ; $4435: $ff
	push de                                          ; $4436: $d5
	add b                                            ; $4437: $80
	ld [hl], a                                       ; $4438: $77
	ldh a, [$d5]                                     ; $4439: $f0 $d5
	ld bc, $9eff                                     ; $443b: $01 $ff $9e
	xor b                                            ; $443e: $a8
	ld a, e                                          ; $443f: $7b
	ret nc                                           ; $4440: $d0

	sbc b                                            ; $4441: $98
	ld a, [$95f0]                                    ; $4442: $fa $f0 $95
	db $10                                           ; $4445: $10
	sbc d                                            ; $4446: $9a
	db $10                                           ; $4447: $10
	sub b                                            ; $4448: $90
	ld a, e                                          ; $4449: $7b
	cp $fd                                           ; $444a: $fe $fd
	sbc [hl]                                         ; $444c: $9e
	ld d, b                                          ; $444d: $50
	ld [hl], e                                       ; $444e: $73
	xor h                                            ; $444f: $ac
	ld a, a                                          ; $4450: $7f
	or b                                             ; $4451: $b0
	rst FarCall                                          ; $4452: $f7
	ld h, a                                          ; $4453: $67
	sbc h                                            ; $4454: $9c
	ld c, a                                          ; $4455: $4f
	ldh a, [$7f]                                     ; $4456: $f0 $7f
	db $fc                                           ; $4458: $fc
	sbc [hl]                                         ; $4459: $9e

jr_01c_445a:
	ld a, [hl+]                                      ; $445a: $2a
	db $fc                                           ; $445b: $fc
	sbc [hl]                                         ; $445c: $9e
	dec d                                            ; $445d: $15
	ld l, e                                          ; $445e: $6b
	ldh a, [rPCM34]                                  ; $445f: $f0 $77
	or h                                             ; $4461: $b4
	ld h, a                                          ; $4462: $67
	db $e4                                           ; $4463: $e4
	sbc l                                            ; $4464: $9d
	ld b, b                                          ; $4465: $40
	nop                                              ; $4466: $00
	ld a, e                                          ; $4467: $7b
	sub l                                            ; $4468: $95
	cp $6f                                           ; $4469: $fe $6f
	ret c                                            ; $446b: $d8

	rst FarCall                                          ; $446c: $f7
	ld d, a                                          ; $446d: $57
	ldh a, [rPCM34]                                  ; $446e: $f0 $77
	or b                                             ; $4470: $b0
	ld h, a                                          ; $4471: $67
	ld b, b                                          ; $4472: $40
	ld a, a                                          ; $4473: $7f
	ld [hl], a                                       ; $4474: $77
	sbc [hl]                                         ; $4475: $9e
	ld a, [bc]                                       ; $4476: $0a
	ld a, e                                          ; $4477: $7b
	ld hl, sp+$7f                                    ; $4478: $f8 $7f
	db $fc                                           ; $447a: $fc
	rst $38                                          ; $447b: $ff
	rst SubAFromDE                                          ; $447c: $df
	ld a, a                                          ; $447d: $7f
	rst SubAFromDE                                          ; $447e: $df
	ld b, b                                          ; $447f: $40
	sbc e                                            ; $4480: $9b
	ccf                                              ; $4481: $3f
	jr nz, @+$01                                     ; $4482: $20 $ff

	rst $38                                          ; $4484: $ff
	db $dd                                           ; $4485: $dd
	xor b                                            ; $4486: $a8
	rst SubAFromDE                                          ; $4487: $df
	rst $38                                          ; $4488: $ff
	ld [hl], a                                       ; $4489: $77
	ld d, b                                          ; $448a: $50
	ld a, e                                          ; $448b: $7b
	db $fc                                           ; $448c: $fc
	ld a, e                                          ; $448d: $7b
	ld a, [$88dd]                                    ; $448e: $fa $dd $88
	ld [hl], a                                       ; $4491: $77
	db $f4                                           ; $4492: $f4
	rst SubAFromDE                                          ; $4493: $df
	ldh a, [$df]                                     ; $4494: $f0 $df
	db $10                                           ; $4496: $10
	sbc [hl]                                         ; $4497: $9e
	ldh [$5b], a                                     ; $4498: $e0 $5b
	ldh [$fb], a                                     ; $449a: $e0 $fb
	ld h, a                                          ; $449c: $67
	ldh [rPCM12], a                                  ; $449d: $e0 $76
	ld hl, sp+$57                                    ; $449f: $f8 $57
	ldh a, [$6f]                                     ; $44a1: $f0 $6f
	ld l, b                                          ; $44a3: $68
	ld d, a                                          ; $44a4: $57
	ldh a, [$7e]                                     ; $44a5: $f0 $7e
	ldh [$57], a                                     ; $44a7: $e0 $57
	ldh a, [$7f]                                     ; $44a9: $f0 $7f
	ld e, b                                          ; $44ab: $58
	ld c, a                                          ; $44ac: $4f
	ret nz                                           ; $44ad: $c0

	ld h, [hl]                                       ; $44ae: $66
	jp nc, $8f9b                                     ; $44af: $d2 $9b $8f

	add b                                            ; $44b2: $80
	adc b                                            ; $44b3: $88
	add a                                            ; $44b4: $87
	ld [hl], a                                       ; $44b5: $77
	cp $67                                           ; $44b6: $fe $67
	sbc [hl]                                         ; $44b8: $9e
	sbc e                                            ; $44b9: $9b
	ld a, e                                          ; $44ba: $7b
	nop                                              ; $44bb: $00
	ld b, d                                          ; $44bc: $42
	add hl, sp                                       ; $44bd: $39
	ld [hl], a                                       ; $44be: $77
	cp $67                                           ; $44bf: $fe $67
	ldh a, [$9b]                                     ; $44c1: $f0 $9b
	sbc $00                                          ; $44c3: $de $00
	db $10                                           ; $44c5: $10
	adc $77                                          ; $44c6: $ce $77
	cp $66                                           ; $44c8: $fe $66
	or d                                             ; $44ca: $b2
	sbc e                                            ; $44cb: $9b
	pop af                                           ; $44cc: $f1
	ld bc, $7181                                     ; $44cd: $01 $81 $71
	ld [hl], a                                       ; $44d0: $77
	cp $5f                                           ; $44d1: $fe $5f
	ld [hl], b                                       ; $44d3: $70
	db $dd                                           ; $44d4: $dd
	ld de, $7077                                     ; $44d5: $11 $77 $70
	ld a, a                                          ; $44d8: $7f
	inc l                                            ; $44d9: $2c
	sbc [hl]                                         ; $44da: $9e
	inc d                                            ; $44db: $14
	ld e, e                                          ; $44dc: $5b

jr_01c_44dd:
	ldh a, [$5f]                                     ; $44dd: $f0 $5f
	ld [hl], b                                       ; $44df: $70
	ld h, a                                          ; $44e0: $67
	ldh a, [rVBK]                                    ; $44e1: $f0 $4f
	ret nc                                           ; $44e3: $d0

	rst SubAFromDE                                          ; $44e4: $df
	inc bc                                           ; $44e5: $03
	db $db                                           ; $44e6: $db
	ld [bc], a                                       ; $44e7: $02
	rst SubAFromDE                                          ; $44e8: $df
	cp $dd                                           ; $44e9: $fe $dd
	ld [de], a                                       ; $44eb: $12
	rst SubAFromDE                                          ; $44ec: $df
	cp $5f                                           ; $44ed: $fe $5f
	ld e, $fb                                        ; $44ef: $1e $fb
	sbc [hl]                                         ; $44f1: $9e
	add c                                            ; $44f2: $81
	sbc $80                                          ; $44f3: $de $80
	ld l, a                                          ; $44f5: $6f
	ld d, h                                          ; $44f6: $54
	ld l, a                                          ; $44f7: $6f
	ld d, b                                          ; $44f8: $50
	add hl, bc                                       ; $44f9: $09

jr_01c_44fa:
	add b                                            ; $44fa: $80
	pop af                                           ; $44fb: $f1

Call_01c_44fc:
	db $dd                                           ; $44fc: $dd
	rrca                                             ; $44fd: $0f
	db $dd                                           ; $44fe: $dd
	ldh a, [$67]                                     ; $44ff: $f0 $67
	db $f4                                           ; $4501: $f4
	ld l, e                                          ; $4502: $6b
	nop                                              ; $4503: $00
	ldh a, [hDisp1_WX]                                     ; $4504: $f0 $96
	rst $38                                          ; $4506: $ff
	nop                                              ; $4507: $00
	rst $38                                          ; $4508: $ff
	inc e                                            ; $4509: $1c
	db $e3                                           ; $450a: $e3
	ld a, $c1                                        ; $450b: $3e $c1
	ld a, a                                          ; $450d: $7f
	add b                                            ; $450e: $80
	ld l, a                                          ; $450f: $6f
	cp $77                                           ; $4510: $fe $77
	ldh a, [$99]                                     ; $4512: $f0 $99
	jr c, jr_01c_44dd                                ; $4514: $38 $c7

	ld a, h                                          ; $4516: $7c
	add e                                            ; $4517: $83
	cp $01                                           ; $4518: $fe $01
	ld l, a                                          ; $451a: $6f
	cp $77                                           ; $451b: $fe $77
	ldh a, [$57]                                     ; $451d: $f0 $57
	cp $77                                           ; $451f: $fe $77
	ei                                               ; $4521: $fb
	ld a, a                                          ; $4522: $7f
	ld [$789d], a                                    ; $4523: $ea $9d $78
	add a                                            ; $4526: $87
	ld [hl], a                                       ; $4527: $77
	cp $9d                                           ; $4528: $fe $9d
	ldh a, [rIF]                                     ; $452a: $f0 $0f
	ld l, a                                          ; $452c: $6f
	ldh a, [$7f]                                     ; $452d: $f0 $7f
	jp z, $1e9d                                      ; $452f: $ca $9d $1e

	pop hl                                           ; $4532: $e1
	ld [hl], a                                       ; $4533: $77
	cp $80                                           ; $4534: $fe $80
	rrca                                             ; $4536: $0f
	ldh a, [rP1]                                     ; $4537: $f0 $00
	rst $38                                          ; $4539: $ff
	cp $01                                           ; $453a: $fe $01
	db $fc                                           ; $453c: $fc
	inc bc                                           ; $453d: $03
	ld hl, sp+$07                                    ; $453e: $f8 $07
	ldh a, [rIF]                                     ; $4540: $f0 $0f
	ldh [$1f], a                                     ; $4542: $e0 $1f
	ret nz                                           ; $4544: $c0

	ccf                                              ; $4545: $3f
	add b                                            ; $4546: $80
	ld a, a                                          ; $4547: $7f
	nop                                              ; $4548: $00
	rst $38                                          ; $4549: $ff
	ld a, a                                          ; $454a: $7f
	add b                                            ; $454b: $80
	ccf                                              ; $454c: $3f
	ret nz                                           ; $454d: $c0

	rra                                              ; $454e: $1f
	ldh [rIF], a                                     ; $454f: $e0 $0f
	ldh a, [rTAC]                                    ; $4551: $f0 $07
	ld hl, sp+$03                                    ; $4553: $f8 $03
	sbc h                                            ; $4555: $9c
	db $fc                                           ; $4556: $fc
	ld bc, $5ffe                                     ; $4557: $01 $fe $5f
	cp b                                             ; $455a: $b8
	ld a, a                                          ; $455b: $7f
	jp nc, $e87f                                     ; $455c: $d2 $7f $e8

	ld a, a                                          ; $455f: $7f
	cp $7f                                           ; $4560: $fe $7f
	rst FarCall                                          ; $4562: $f7
	ld h, a                                          ; $4563: $67
	ldh a, [$7f]                                     ; $4564: $f0 $7f
	or d                                             ; $4566: $b2
	ld a, a                                          ; $4567: $7f
	ret z                                            ; $4568: $c8

	ld a, a                                          ; $4569: $7f
	cp $7f                                           ; $456a: $fe $7f
	rst FarCall                                          ; $456c: $f7
	ld c, [hl]                                       ; $456d: $4e
	add b                                            ; $456e: $80
	pop af                                           ; $456f: $f1
	sub e                                            ; $4570: $93
	ld a, [hl]                                       ; $4571: $7e
	ccf                                              ; $4572: $3f
	ld e, a                                          ; $4573: $5f
	ccf                                              ; $4574: $3f
	ld [hl], c                                       ; $4575: $71
	jr nz, @+$42                                     ; $4576: $20 $40

	jr nz, jr_01c_44fa                               ; $4578: $20 $80

	ret nz                                           ; $457a: $c0

	and b                                            ; $457b: $a0
	ret nz                                           ; $457c: $c0

	ld [hl], a                                       ; $457d: $77
	db $fc                                           ; $457e: $fc
	sub a                                            ; $457f: $97
	ld d, b                                          ; $4580: $50
	jr nc, jr_01c_45fb                               ; $4581: $30 $78

	inc a                                            ; $4583: $3c
	ld e, [hl]                                       ; $4584: $5e
	ccf                                              ; $4585: $3f
	ld a, a                                          ; $4586: $7f
	ld a, $6f                                        ; $4587: $3e $6f
	ldh a, [c]                                       ; $4589: $f2
	ld a, a                                          ; $458a: $7f
	db $fc                                           ; $458b: $fc
	sbc e                                            ; $458c: $9b
	ld [hl], b                                       ; $458d: $70
	jr nc, jr_01c_45e8                               ; $458e: $30 $58

	inc a                                            ; $4590: $3c
	ld a, e                                          ; $4591: $7b
	call c, $3e9e                                    ; $4592: $dc $9e $3e
	ld h, a                                          ; $4595: $67
	ldh [hDisp1_OBP0], a                                     ; $4596: $e0 $93
	ld a, h                                          ; $4598: $7c
	ld a, [$fefc]                                    ; $4599: $fa $fc $fe
	adc h                                            ; $459c: $8c
	ld [bc], a                                       ; $459d: $02
	inc b                                            ; $459e: $04
	ld b, $03                                        ; $459f: $06 $03
	dec b                                            ; $45a1: $05
	inc bc                                           ; $45a2: $03
	ld bc, $fc77                                     ; $45a3: $01 $77 $fc
	ld a, e                                          ; $45a6: $7b
	call nc, $3f9a                                   ; $45a7: $d4 $9a $3f
	ld d, c                                          ; $45aa: $51
	jr nz, jr_01c_460d                               ; $45ab: $20 $60

	jr nz, jr_01c_4616                               ; $45ad: $20 $67

	ret nc                                           ; $45af: $d0

	sbc e                                            ; $45b0: $9b
	inc c                                            ; $45b1: $0c
	ld a, [bc]                                       ; $45b2: $0a
	inc e                                            ; $45b3: $1c
	ld a, $7b                                        ; $45b4: $3e $7b
	call c, Call_01c_7e9e                            ; $45b6: $dc $9e $7e
	ld h, a                                          ; $45b9: $67
	ldh [rAUD1ENV], a                                ; $45ba: $e0 $12
	nop                                              ; $45bc: $00
	pop af                                           ; $45bd: $f1
	sbc [hl]                                         ; $45be: $9e
	rst $38                                          ; $45bf: $ff
	ld c, e                                          ; $45c0: $4b
	cp $9d                                           ; $45c1: $fe $9d
	cp $01                                           ; $45c3: $fe $01
	rla                                              ; $45c5: $17
	cp $7f                                           ; $45c6: $fe $7f
	rst SubAFromDE                                          ; $45c8: $df
	ld c, a                                          ; $45c9: $4f
	jp nc, $fd7f                                     ; $45ca: $d2 $7f $fd

	di                                               ; $45cd: $f3
	nop                                              ; $45ce: $00
	pop bc                                           ; $45cf: $c1
	ld bc, $ff03                                     ; $45d0: $01 $03 $ff
	inc bc                                           ; $45d3: $03
	rst $38                                          ; $45d4: $ff
	inc bc                                           ; $45d5: $03
	rst $38                                          ; $45d6: $ff
	call nz, $9001                                   ; $45d7: $c4 $01 $90
	ld h, l                                          ; $45da: $65
	ld h, [hl]                                       ; $45db: $66
	ld h, a                                          ; $45dc: $67
	ld l, b                                          ; $45dd: $68
	ld l, c                                          ; $45de: $69
	ld l, d                                          ; $45df: $6a
	ld l, b                                          ; $45e0: $68
	ld l, b                                          ; $45e1: $68
	ld l, l                                          ; $45e2: $6d
	ld l, [hl]                                       ; $45e3: $6e
	ld l, a                                          ; $45e4: $6f
	ld [hl], b                                       ; $45e5: $70
	ld [hl], c                                       ; $45e6: $71
	ld [hl], d                                       ; $45e7: $72

jr_01c_45e8:
	ld [hl], e                                       ; $45e8: $73
	ld a, e                                          ; $45e9: $7b
	di                                               ; $45ea: $f3
	sbc l                                            ; $45eb: $9d
	ld [hl], a                                       ; $45ec: $77
	ld l, b                                          ; $45ed: $68
	push de                                          ; $45ee: $d5
	ld bc, $798b                                     ; $45ef: $01 $8b $79
	ld a, d                                          ; $45f2: $7a
	ld a, e                                          ; $45f3: $7b
	ld a, h                                          ; $45f4: $7c
	ld a, l                                          ; $45f5: $7d
	ld a, [hl]                                       ; $45f6: $7e
	ld a, a                                          ; $45f7: $7f
	add b                                            ; $45f8: $80
	add c                                            ; $45f9: $81
	add d                                            ; $45fa: $82

jr_01c_45fb:
	add e                                            ; $45fb: $83
	add h                                            ; $45fc: $84
	add l                                            ; $45fd: $85
	add [hl]                                         ; $45fe: $86
	add a                                            ; $45ff: $87
	adc b                                            ; $4600: $88
	adc c                                            ; $4601: $89
	adc d                                            ; $4602: $8a
	adc e                                            ; $4603: $8b
	adc h                                            ; $4604: $8c
	push de                                          ; $4605: $d5
	ld bc, $8d8b                                     ; $4606: $01 $8b $8d
	adc [hl]                                         ; $4609: $8e
	adc a                                            ; $460a: $8f
	sub b                                            ; $460b: $90
	sub c                                            ; $460c: $91

jr_01c_460d:
	sub d                                            ; $460d: $92
	sub e                                            ; $460e: $93
	sub h                                            ; $460f: $94
	sub l                                            ; $4610: $95
	sub [hl]                                         ; $4611: $96
	sub a                                            ; $4612: $97
	sbc b                                            ; $4613: $98
	sbc c                                            ; $4614: $99
	sbc d                                            ; $4615: $9a

jr_01c_4616:
	sbc e                                            ; $4616: $9b
	sbc h                                            ; $4617: $9c
	sbc l                                            ; $4618: $9d
	sbc [hl]                                         ; $4619: $9e
	sbc [hl]                                         ; $461a: $9e
	sbc a                                            ; $461b: $9f
	push de                                          ; $461c: $d5
	ld bc, $788b                                     ; $461d: $01 $8b $78
	halt                                             ; $4620: $76
	ld [hl], l                                       ; $4621: $75
	ld [hl], h                                       ; $4622: $74
	ld l, h                                          ; $4623: $6c
	ld l, e                                          ; $4624: $6b
	ld h, h                                          ; $4625: $64
	ld h, e                                          ; $4626: $63
	ld h, d                                          ; $4627: $62
	ld h, c                                          ; $4628: $61
	ld h, b                                          ; $4629: $60
	ld e, a                                          ; $462a: $5f
	ld e, [hl]                                       ; $462b: $5e
	ld h, h                                          ; $462c: $64
	ld a, b                                          ; $462d: $78
	halt                                             ; $462e: $76
	ld e, l                                          ; $462f: $5d
	ld e, h                                          ; $4630: $5c
	ld e, e                                          ; $4631: $5b
	ld e, d                                          ; $4632: $5a
	push de                                          ; $4633: $d5
	ld bc, $5997                                     ; $4634: $01 $97 $59
	ld e, b                                          ; $4637: $58
	ld d, a                                          ; $4638: $57
	ld d, [hl]                                       ; $4639: $56
	ld d, l                                          ; $463a: $55
	ld d, h                                          ; $463b: $54
	ld d, e                                          ; $463c: $53
	ld d, d                                          ; $463d: $52
	ld [hl], a                                       ; $463e: $77
	ldh [$97], a                                     ; $463f: $e0 $97
	ld d, c                                          ; $4641: $51

Jump_01c_4642:
	ld d, e                                          ; $4642: $53
	ld d, b                                          ; $4643: $50
	ld c, a                                          ; $4644: $4f
	ld c, [hl]                                       ; $4645: $4e
	ld c, l                                          ; $4646: $4d
	ld c, h                                          ; $4647: $4c
	ld c, e                                          ; $4648: $4b
	push de                                          ; $4649: $d5
	ld bc, $4a97                                     ; $464a: $01 $97 $4a
	ld c, c                                          ; $464d: $49
	ld c, b                                          ; $464e: $48
	ld b, a                                          ; $464f: $47
	ld b, [hl]                                       ; $4650: $46
	ld b, l                                          ; $4651: $45
	ld b, h                                          ; $4652: $44
	ld b, e                                          ; $4653: $43
	ld [hl], a                                       ; $4654: $77
	ldh [$97], a                                     ; $4655: $e0 $97
	ld b, d                                          ; $4657: $42
	ld b, h                                          ; $4658: $44
	ld b, c                                          ; $4659: $41
	ld b, b                                          ; $465a: $40
	ccf                                              ; $465b: $3f
	ld a, $3d                                        ; $465c: $3e $3d
	inc a                                            ; $465e: $3c
	push de                                          ; $465f: $d5
	ld bc, $3b97                                     ; $4660: $01 $97 $3b
	ld a, [hl-]                                      ; $4663: $3a
	add hl, sp                                       ; $4664: $39
	jr c, jr_01c_469e                                ; $4665: $38 $37

	ld [hl], $35                                     ; $4667: $36 $35
	inc [hl]                                         ; $4669: $34
	ld [hl], a                                       ; $466a: $77
	ldh [$97], a                                     ; $466b: $e0 $97
	inc sp                                           ; $466d: $33
	ld [hl-], a                                      ; $466e: $32
	ld sp, $2f30                                     ; $466f: $31 $30 $2f
	ld l, $2d                                        ; $4672: $2e $2d
	inc l                                            ; $4674: $2c
	push de                                          ; $4675: $d5
	ld bc, $2bdc                                     ; $4676: $01 $dc $2b
	sub b                                            ; $4679: $90
	ld a, [hl+]                                      ; $467a: $2a
	add hl, hl                                       ; $467b: $29
	jr z, jr_01c_46a5                                ; $467c: $28 $27

	ld h, $25                                        ; $467e: $26 $25
	inc h                                            ; $4680: $24
	inc hl                                           ; $4681: $23
	ld [hl+], a                                      ; $4682: $22
	ld hl, $1f20                                     ; $4683: $21 $20 $1f
	ld e, $2b                                        ; $4686: $1e $2b
	dec hl                                           ; $4688: $2b
	push de                                          ; $4689: $d5
	ld bc, $1ddc                                     ; $468a: $01 $dc $1d
	sub b                                            ; $468d: $90
	inc e                                            ; $468e: $1c
	dec de                                           ; $468f: $1b
	ld a, [de]                                       ; $4690: $1a
	add hl, de                                       ; $4691: $19
	jr jr_01c_46ab                                   ; $4692: $18 $17

	ld d, $15                                        ; $4694: $16 $15
	inc d                                            ; $4696: $14
	inc de                                           ; $4697: $13
	ld [de], a                                       ; $4698: $12
	ld de, $1d10                                     ; $4699: $11 $10 $1d
	dec e                                            ; $469c: $1d
	push de                                          ; $469d: $d5

jr_01c_469e:
	ld bc, $0fdc                                     ; $469e: $01 $dc $0f
	sub l                                            ; $46a1: $95
	ld c, $0d                                        ; $46a2: $0e $0d
	inc c                                            ; $46a4: $0c

jr_01c_46a5:
	dec bc                                           ; $46a5: $0b
	ld a, [bc]                                       ; $46a6: $0a
	add hl, bc                                       ; $46a7: $09
	ld [$070c], sp                                   ; $46a8: $08 $0c $07

jr_01c_46ab:
	ld b, $dc                                        ; $46ab: $06 $dc
	rrca                                             ; $46ad: $0f
	push de                                          ; $46ae: $d5
	ld bc, $05dc                                     ; $46af: $01 $dc $05
	sbc [hl]                                         ; $46b2: $9e
	inc b                                            ; $46b3: $04
	reti                                             ; $46b4: $d9


	inc bc                                           ; $46b5: $03
	sbc [hl]                                         ; $46b6: $9e
	ld [bc], a                                       ; $46b7: $02
	call c, $d505                                    ; $46b8: $dc $05 $d5
	ld bc, $03cd                                     ; $46bb: $01 $cd $03
	rlca                                             ; $46be: $07
	ldh [$37], a                                     ; $46bf: $e0 $37
	nop                                              ; $46c1: $00
	rst SubAFromHL                                          ; $46c2: $d7
	ld [hl+], a                                      ; $46c3: $22
	db $db                                           ; $46c4: $db
	ld de, $f003                                     ; $46c5: $11 $03 $f0
	inc bc                                           ; $46c8: $03
	ldh a, [$03]                                     ; $46c9: $f0 $03
	ldh a, [$03]                                     ; $46cb: $f0 $03
	ldh a, [$57]                                     ; $46cd: $f0 $57
	ldh a, [$67]                                     ; $46cf: $f0 $67
	rst AddAOntoHL                                          ; $46d1: $ef
	sbc [hl]                                         ; $46d2: $9e
	ld hl, $11d8                                     ; $46d3: $21 $d8 $11
	db $dd                                           ; $46d6: $dd
	ld [hl+], a                                      ; $46d7: $22
	rst SubAFromDE                                          ; $46d8: $df
	ld [de], a                                       ; $46d9: $12
	reti                                             ; $46da: $d9


	ld de, $33df                                     ; $46db: $11 $df $33
	sbc [hl]                                         ; $46de: $9e
	ld [hl-], a                                      ; $46df: $32
	ld [hl], a                                       ; $46e0: $77
	call nc, $139c                                   ; $46e1: $d4 $9c $13
	inc sp                                           ; $46e4: $33
	inc sp                                           ; $46e5: $33
	ld h, a                                          ; $46e6: $67
	ldh a, [$9b]                                     ; $46e7: $f0 $9b
	ld sp, $2111                                     ; $46e9: $31 $11 $21
	ld [de], a                                       ; $46ec: $12
	ld c, a                                          ; $46ed: $4f
	ldh a, [$de]                                     ; $46ee: $f0 $de
	ld de, $f063                                     ; $46f0: $11 $63 $f0
	inc bc                                           ; $46f3: $03
	rst $38                                          ; $46f4: $ff
	ret c                                            ; $46f5: $d8

	ld de, $0027                                     ; $46f6: $11 $27 $00
	call $f501                                       ; $46f9: $cd $01 $f5
	inc bc                                           ; $46fc: $03
	ldh [$03], a                                     ; $46fd: $e0 $03
	ldh [$03], a                                     ; $46ff: $e0 $03
	ldh [$03], a                                     ; $4701: $e0 $03
	ldh [$03], a                                     ; $4703: $e0 $03
	ldh [$03], a                                     ; $4705: $e0 $03
	ldh [$03], a                                     ; $4707: $e0 $03
	ldh [$03], a                                     ; $4709: $e0 $03
	ldh [$03], a                                     ; $470b: $e0 $03
	ldh [$03], a                                     ; $470d: $e0 $03
	ldh [$03], a                                     ; $470f: $e0 $03
	ldh [$03], a                                     ; $4711: $e0 $03
	ldh [$03], a                                     ; $4713: $e0 $03
	ldh [$03], a                                     ; $4715: $e0 $03
	ldh [$03], a                                     ; $4717: $e0 $03
	ldh [$03], a                                     ; $4719: $e0 $03
	ldh [$dd], a                                     ; $471b: $e0 $dd
	ld bc, $0017                                     ; $471d: $01 $17 $00
	rst SubAFromHL                                          ; $4720: $d7
	ld de, $03fb                                     ; $4721: $11 $fb $03
	ldh a, [$03]                                     ; $4724: $f0 $03
	ldh a, [$03]                                     ; $4726: $f0 $03
	ldh a, [$03]                                     ; $4728: $f0 $03
	ldh a, [$03]                                     ; $472a: $f0 $03
	ldh a, [$03]                                     ; $472c: $f0 $03
	ldh a, [$03]                                     ; $472e: $f0 $03
	ldh a, [$03]                                     ; $4730: $f0 $03
	ldh a, [$df]                                     ; $4732: $f0 $df
	ld de, $005a                                     ; $4734: $11 $5a $00
	sbc e                                            ; $4737: $9b
	ld bc, $0302                                     ; $4738: $01 $02 $03
	inc bc                                           ; $473b: $03
	ld d, a                                          ; $473c: $57
	db $fc                                           ; $473d: $fc
	sbc e                                            ; $473e: $9b
	add hl, bc                                       ; $473f: $09
	ld [$0303], sp                                   ; $4740: $08 $03 $03
	push af                                          ; $4743: $f5
	sbc e                                            ; $4744: $9b
	rlca                                             ; $4745: $07
	ld b, $03                                        ; $4746: $06 $03
	inc bc                                           ; $4748: $03
	ld d, a                                          ; $4749: $57
	db $fc                                           ; $474a: $fc
	sbc l                                            ; $474b: $9d
	dec b                                            ; $474c: $05
	inc b                                            ; $474d: $04
	ld c, a                                          ; $474e: $4f
	ldh [rVBK], a                                    ; $474f: $e0 $4f
	jp nz, $fc6f                                     ; $4751: $c2 $6f $fc

	ld c, a                                          ; $4754: $4f
	ldh [rBGP], a                                    ; $4755: $e0 $47
	cp [hl]                                          ; $4757: $be
	ld a, a                                          ; $4758: $7f
	db $fc                                           ; $4759: $fc
	push af                                          ; $475a: $f5
	ld [hl], a                                       ; $475b: $77
	sub b                                            ; $475c: $90
	ld h, a                                          ; $475d: $67
	adc b                                            ; $475e: $88
	ld h, a                                          ; $475f: $67
	cp [hl]                                          ; $4760: $be
	push af                                          ; $4761: $f5
	ld [hl], a                                       ; $4762: $77
	sub b                                            ; $4763: $90
	ld h, a                                          ; $4764: $67
	adc b                                            ; $4765: $88
	ld h, a                                          ; $4766: $67
	cp [hl]                                          ; $4767: $be
	inc bc                                           ; $4768: $03
	add b                                            ; $4769: $80
	inc bc                                           ; $476a: $03
	add b                                            ; $476b: $80
	rst FarCall                                          ; $476c: $f7
	inc bc                                           ; $476d: $03
	nop                                              ; $476e: $00
	inc bc                                           ; $476f: $03
	nop                                              ; $4770: $00
	ld b, a                                          ; $4771: $47
	ld b, d                                          ; $4772: $42
	scf                                              ; $4773: $37
	add b                                            ; $4774: $80
	ld d, a                                          ; $4775: $57
	ld b, d                                          ; $4776: $42
	rrca                                             ; $4777: $0f
	add b                                            ; $4778: $80
	ld b, a                                          ; $4779: $47
	nop                                              ; $477a: $00
	ccf                                              ; $477b: $3f
	ld b, d                                          ; $477c: $42
	rla                                              ; $477d: $17
	nop                                              ; $477e: $00
	ld l, a                                          ; $477f: $6f
	ld a, b                                          ; $4780: $78
	rra                                              ; $4781: $1f
	nop                                              ; $4782: $00
	ld l, a                                          ; $4783: $6f
	ld a, b                                          ; $4784: $78
	ld b, a                                          ; $4785: $47
	add b                                            ; $4786: $80
	ld c, a                                          ; $4787: $4f
	ld b, d                                          ; $4788: $42
	ccf                                              ; $4789: $3f
	add b                                            ; $478a: $80
	ld c, a                                          ; $478b: $4f
	ld b, d                                          ; $478c: $42
	rst SubAFromDE                                          ; $478d: $df
	inc bc                                           ; $478e: $03
	rla                                              ; $478f: $17
	nop                                              ; $4790: $00
	rst SubAFromHL                                          ; $4791: $d7
	ld de, $03fb                                     ; $4792: $11 $fb $03
	ldh a, [$03]                                     ; $4795: $f0 $03
	ldh a, [$03]                                     ; $4797: $f0 $03
	ldh a, [$03]                                     ; $4799: $f0 $03
	ldh a, [$03]                                     ; $479b: $f0 $03
	ldh a, [$03]                                     ; $479d: $f0 $03
	ldh a, [$03]                                     ; $479f: $f0 $03
	ldh a, [$03]                                     ; $47a1: $f0 $03
	ldh a, [$df]                                     ; $47a3: $f0 $df
	ld de, $0032                                     ; $47a5: $11 $32 $00
	sbc e                                            ; $47a8: $9b
	ld b, $05                                        ; $47a9: $06 $05
	inc b                                            ; $47ab: $04
	inc bc                                           ; $47ac: $03
	ld b, a                                          ; $47ad: $47
	db $fc                                           ; $47ae: $fc
	push af                                          ; $47af: $f5
	sbc e                                            ; $47b0: $9b
	inc b                                            ; $47b1: $04
	ld [bc], a                                       ; $47b2: $02
	ld b, $01                                        ; $47b3: $06 $01
	ld b, a                                          ; $47b5: $47
	db $fc                                           ; $47b6: $fc
	push af                                          ; $47b7: $f5
	inc bc                                           ; $47b8: $03
	ret nz                                           ; $47b9: $c0

	inc bc                                           ; $47ba: $03
	ret nz                                           ; $47bb: $c0

	inc bc                                           ; $47bc: $03
	ret nz                                           ; $47bd: $c0

	inc bc                                           ; $47be: $03
	ret nz                                           ; $47bf: $c0

	inc bc                                           ; $47c0: $03
	ret nz                                           ; $47c1: $c0

	inc bc                                           ; $47c2: $03
	ret nz                                           ; $47c3: $c0

	inc bc                                           ; $47c4: $03
	ret nz                                           ; $47c5: $c0

	inc bc                                           ; $47c6: $03
	ret nz                                           ; $47c7: $c0

	inc bc                                           ; $47c8: $03
	ret nz                                           ; $47c9: $c0

	inc bc                                           ; $47ca: $03
	ret nz                                           ; $47cb: $c0

	inc bc                                           ; $47cc: $03
	ret nz                                           ; $47cd: $c0

	inc bc                                           ; $47ce: $03
	ret nz                                           ; $47cf: $c0

	inc bc                                           ; $47d0: $03
	ret nz                                           ; $47d1: $c0

	inc bc                                           ; $47d2: $03
	ret nz                                           ; $47d3: $c0

	inc bc                                           ; $47d4: $03
	ret nz                                           ; $47d5: $c0

	ld [hl], e                                       ; $47d6: $73
	db $fc                                           ; $47d7: $fc
	rla                                              ; $47d8: $17
	nop                                              ; $47d9: $00
	rst SubAFromHL                                          ; $47da: $d7
	ld de, $03fb                                     ; $47db: $11 $fb $03
	ldh a, [$03]                                     ; $47de: $f0 $03
	ldh a, [$03]                                     ; $47e0: $f0 $03
	ldh a, [$03]                                     ; $47e2: $f0 $03
	ldh a, [$03]                                     ; $47e4: $f0 $03
	ldh a, [$03]                                     ; $47e6: $f0 $03
	ldh a, [$03]                                     ; $47e8: $f0 $03
	ldh a, [$03]                                     ; $47ea: $f0 $03
	ldh a, [$df]                                     ; $47ec: $f0 $df
	ld de, $0030                                     ; $47ee: $11 $30 $00
	sbc e                                            ; $47f1: $9b
	ld bc, $0002                                     ; $47f2: $01 $02 $00
	nop                                              ; $47f5: $00
	ld b, a                                          ; $47f6: $47
	db $fc                                           ; $47f7: $fc
	push af                                          ; $47f8: $f5
	sbc l                                            ; $47f9: $9d
	inc b                                            ; $47fa: $04
	inc bc                                           ; $47fb: $03
	ccf                                              ; $47fc: $3f
	db $fc                                           ; $47fd: $fc
	di                                               ; $47fe: $f3

Jump_01c_47ff:
	inc bc                                           ; $47ff: $03
	cp [hl]                                          ; $4800: $be
	inc de                                           ; $4801: $13
	cp [hl]                                          ; $4802: $be
	inc bc                                           ; $4803: $03
	jp nz, $8003                                     ; $4804: $c2 $03 $80

	inc bc                                           ; $4807: $03
	cp [hl]                                          ; $4808: $be
	inc bc                                           ; $4809: $03
	add b                                            ; $480a: $80
	inc bc                                           ; $480b: $03
	jp nz, $8003                                     ; $480c: $c2 $03 $80

	inc bc                                           ; $480f: $03
	cp [hl]                                          ; $4810: $be
	inc bc                                           ; $4811: $03
	add b                                            ; $4812: $80
	inc bc                                           ; $4813: $03
	jp nz, $8003                                     ; $4814: $c2 $03 $80

	inc bc                                           ; $4817: $03
	cp [hl]                                          ; $4818: $be
	inc bc                                           ; $4819: $03
	add b                                            ; $481a: $80
	inc bc                                           ; $481b: $03
	jp nz, $fc6b                                     ; $481c: $c2 $6b $fc

	rla                                              ; $481f: $17
	nop                                              ; $4820: $00
	rst SubAFromHL                                          ; $4821: $d7
	ld [hl+], a                                      ; $4822: $22
	ei                                               ; $4823: $fb
	inc bc                                           ; $4824: $03
	ldh a, [$03]                                     ; $4825: $f0 $03
	ldh a, [$03]                                     ; $4827: $f0 $03
	ldh a, [$03]                                     ; $4829: $f0 $03
	ldh a, [$03]                                     ; $482b: $f0 $03
	ldh a, [$03]                                     ; $482d: $f0 $03
	ldh a, [$03]                                     ; $482f: $f0 $03
	ldh a, [$03]                                     ; $4831: $f0 $03
	ldh a, [$df]                                     ; $4833: $f0 $df
	ld [hl+], a                                      ; $4835: $22
	add [hl]                                         ; $4836: $86
	inc b                                            ; $4837: $04
	ld sp, hl                                        ; $4838: $f9
	sbc c                                            ; $4839: $99
	jr c, jr_01c_4875                                ; $483a: $38 $39

	ld b, a                                          ; $483c: $47
	ld a, [hl]                                       ; $483d: $7e
	add b                                            ; $483e: $80
	rst $38                                          ; $483f: $ff
	ld [hl], a                                       ; $4840: $77
	cp $91                                           ; $4841: $fe $91
	ld b, b                                          ; $4843: $40
	ld a, a                                          ; $4844: $7f
	ldh [rIE], a                                     ; $4845: $e0 $ff
	and b                                            ; $4847: $a0
	rst $38                                          ; $4848: $ff
	ldh [rIE], a                                     ; $4849: $e0 $ff
	ld d, b                                          ; $484b: $50
	ld a, a                                          ; $484c: $7f
	inc l                                            ; $484d: $2c
	ccf                                              ; $484e: $3f
	daa                                              ; $484f: $27
	ccf                                              ; $4850: $3f
	ld sp, hl                                        ; $4851: $f9
	rst SubAFromDE                                          ; $4852: $df
	sbc h                                            ; $4853: $9c
	sbc e                                            ; $4854: $9b
	ld h, d                                          ; $4855: $62
	cp $01                                           ; $4856: $fe $01
	rst $38                                          ; $4858: $ff
	ld [hl], a                                       ; $4859: $77
	cp $9a                                           ; $485a: $fe $9a
	ld [bc], a                                       ; $485c: $02
	cp $03                                           ; $485d: $fe $03
	rst $38                                          ; $485f: $ff
	dec b                                            ; $4860: $05
	ld [hl], e                                       ; $4861: $73
	cp $93                                           ; $4862: $fe $93
	ld a, [de]                                       ; $4864: $1a
	cp $e2                                           ; $4865: $fe $e2
	cp $20                                           ; $4867: $fe $20
	ccf                                              ; $4869: $3f
	db $10                                           ; $486a: $10
	rra                                              ; $486b: $1f
	db $10                                           ; $486c: $10
	rra                                              ; $486d: $1f
	ld [$770f], sp                                   ; $486e: $08 $0f $77
	cp $9c                                           ; $4871: $fe $9c
	inc c                                            ; $4873: $0c
	rrca                                             ; $4874: $0f

jr_01c_4875:
	dec bc                                           ; $4875: $0b
	ld a, e                                          ; $4876: $7b
	db $fc                                           ; $4877: $fc
	sub a                                            ; $4878: $97
	inc b                                            ; $4879: $04
	rlca                                             ; $487a: $07
	inc b                                            ; $487b: $04
	rlca                                             ; $487c: $07
	ld b, $07                                        ; $487d: $06 $07
	inc bc                                           ; $487f: $03
	inc bc                                           ; $4880: $03
	ei                                               ; $4881: $fb
	sbc c                                            ; $4882: $99
	inc b                                            ; $4883: $04
	db $fc                                           ; $4884: $fc
	inc b                                            ; $4885: $04
	db $fc                                           ; $4886: $fc
	ld [$77f8], sp                                   ; $4887: $08 $f8 $77
	cp $97                                           ; $488a: $fe $97
	adc b                                            ; $488c: $88
	ld hl, sp-$68                                    ; $488d: $f8 $98
	ld hl, sp-$18                                    ; $488f: $f8 $e8
	ld hl, sp-$70                                    ; $4891: $f8 $90
	ldh a, [rPCM34]                                  ; $4893: $f0 $77
	cp $9b                                           ; $4895: $fe $9b
	or b                                             ; $4897: $b0
	ldh a, [$c0]                                     ; $4898: $f0 $c0
	ret nz                                           ; $489a: $c0

	rst FarCall                                          ; $489b: $f7
	rst SubAFromDE                                          ; $489c: $df
	inc c                                            ; $489d: $0c
	adc h                                            ; $489e: $8c
	ld d, $1e                                        ; $489f: $16 $1e
	inc hl                                           ; $48a1: $23
	ccf                                              ; $48a2: $3f
	inc h                                            ; $48a3: $24
	ccf                                              ; $48a4: $3f
	ld l, $3f                                        ; $48a5: $2e $3f
	ld c, h                                          ; $48a7: $4c
	ld a, a                                          ; $48a8: $7f
	ld c, b                                          ; $48a9: $48
	ld a, a                                          ; $48aa: $7f
	ld c, c                                          ; $48ab: $49
	ld a, a                                          ; $48ac: $7f
	ld c, h                                          ; $48ad: $4c
	ld a, a                                          ; $48ae: $7f
	ld d, d                                          ; $48af: $52
	ld a, a                                          ; $48b0: $7f
	add hl, sp                                       ; $48b1: $39
	ld a, e                                          ; $48b2: $7b
	ldh a, [$9b]                                     ; $48b3: $f0 $9b
	inc d                                            ; $48b5: $14
	rra                                              ; $48b6: $1f
	inc c                                            ; $48b7: $0c
	rrca                                             ; $48b8: $0f
	ld sp, hl                                        ; $48b9: $f9
	sbc c                                            ; $48ba: $99
	ld b, b                                          ; $48bb: $40
	add b                                            ; $48bc: $80
	ld h, b                                          ; $48bd: $60
	ldh [rAUD1SWEEP], a                              ; $48be: $e0 $10
	ldh a, [rPCM34]                                  ; $48c0: $f0 $77
	cp b                                             ; $48c2: $b8
	ld a, a                                          ; $48c3: $7f
	cp h                                             ; $48c4: $bc
	sub d                                            ; $48c5: $92
	db $fc                                           ; $48c6: $fc
	ld e, h                                          ; $48c7: $5c
	ld e, h                                          ; $48c8: $5c
	cp h                                             ; $48c9: $bc
	inc c                                            ; $48ca: $0c
	db $fc                                           ; $48cb: $fc
	ld hl, sp-$08                                    ; $48cc: $f8 $f8
	ret nc                                           ; $48ce: $d0

	ldh a, [$60]                                     ; $48cf: $f0 $60
	ldh [$0c], a                                     ; $48d1: $e0 $0c
	ld [hl], e                                       ; $48d3: $73
	add [hl]                                         ; $48d4: $86
	ld h, a                                          ; $48d5: $67
	cp $7f                                           ; $48d6: $fe $7f
	add [hl]                                         ; $48d8: $86
	sbc h                                            ; $48d9: $9c
	ld [bc], a                                       ; $48da: $02
	inc bc                                           ; $48db: $03
	ld [bc], a                                       ; $48dc: $02
	sbc $03                                          ; $48dd: $de $03
	ld [hl], a                                       ; $48df: $77

jr_01c_48e0:
	db $fc                                           ; $48e0: $fc
	ei                                               ; $48e1: $fb
	sbc e                                            ; $48e2: $9b
	ld [hl], b                                       ; $48e3: $70
	or b                                             ; $48e4: $b0
	ldh a, [rAUD1SWEEP]                              ; $48e5: $f0 $10
	ld [hl], e                                       ; $48e7: $73
	add c                                            ; $48e8: $81
	ld a, e                                          ; $48e9: $7b
	cp $95                                           ; $48ea: $fe $95
	ld [hl], b                                       ; $48ec: $70
	sub b                                            ; $48ed: $90
	jr nz, @-$1e                                     ; $48ee: $20 $e0

	jr nz, @-$1e                                     ; $48f0: $20 $e0

	ld b, b                                          ; $48f2: $40
	ret nz                                           ; $48f3: $c0

	ld b, b                                          ; $48f4: $40
	ret nz                                           ; $48f5: $c0

	db $dd                                           ; $48f6: $dd
	add b                                            ; $48f7: $80
	di                                               ; $48f8: $f3
	rst SubAFromDE                                          ; $48f9: $df
	add hl, sp                                       ; $48fa: $39
	sbc d                                            ; $48fb: $9a
	ld b, [hl]                                       ; $48fc: $46
	ld a, a                                          ; $48fd: $7f
	sub b                                            ; $48fe: $90
	rst $38                                          ; $48ff: $ff
	or b                                             ; $4900: $b0
	ld a, e                                          ; $4901: $7b
	ld b, $96                                        ; $4902: $06 $96
	adc [hl]                                         ; $4904: $8e
	rst $38                                          ; $4905: $ff
	rst AddAOntoHL                                          ; $4906: $ef
	push af                                          ; $4907: $f5
	sub l                                            ; $4908: $95
	ei                                               ; $4909: $fb
	pop de                                           ; $490a: $d1
	rst $38                                          ; $490b: $ff
	ld c, d                                          ; $490c: $4a
	ld a, e                                          ; $490d: $7b
	halt                                             ; $490e: $76
	sbc l                                            ; $490f: $9d
	ld b, a                                          ; $4910: $47
	ld a, a                                          ; $4911: $7f

jr_01c_4912:
	ld sp, hl                                        ; $4912: $f9
	sbc b                                            ; $4913: $98
	inc e                                            ; $4914: $1c
	sbc h                                            ; $4915: $9c
	ldh [c], a                                       ; $4916: $e2
	ld a, [hl]                                       ; $4917: $7e
	add hl, bc                                       ; $4918: $09
	rst $38                                          ; $4919: $ff
	dec c                                            ; $491a: $0d
	ld a, e                                          ; $491b: $7b

jr_01c_491c:
	ld a, [bc]                                       ; $491c: $0a
	adc e                                            ; $491d: $8b

jr_01c_491e:
	ld [hl], d                                       ; $491e: $72
	cp $f7                                           ; $491f: $fe $f7
	xor a                                            ; $4921: $af
	xor c                                            ; $4922: $a9
	rst SubAFromDE                                          ; $4923: $df
	adc e                                            ; $4924: $8b
	rst $38                                          ; $4925: $ff
	ld d, d                                          ; $4926: $52
	cp $a4                                           ; $4927: $fe $a4
	db $fc                                           ; $4929: $fc
	call nz, $22fc                                   ; $492a: $c4 $fc $22
	dec a                                            ; $492d: $3d
	daa                                              ; $492e: $27
	jr c, jr_01c_4948                                ; $492f: $38 $17

	jr jr_01c_49aa                                   ; $4931: $18 $77

	cp $97                                           ; $4933: $fe $97
	inc de                                           ; $4935: $13
	inc e                                            ; $4936: $1c
	db $10                                           ; $4937: $10
	rra                                              ; $4938: $1f
	ld de, $091f                                     ; $4939: $11 $1f $09
	rrca                                             ; $493c: $0f
	ld [hl], a                                       ; $493d: $77
	cp $9d                                           ; $493e: $fe $9d
	dec c                                            ; $4940: $0d
	rrca                                             ; $4941: $0f
	ld h, a                                          ; $4942: $67
	add b                                            ; $4943: $80
	adc l                                            ; $4944: $8d
	add h                                            ; $4945: $84
	ld a, h                                          ; $4946: $7c
	ret z                                            ; $4947: $c8

jr_01c_4948:
	jr c, jr_01c_4912                                ; $4948: $38 $c8

	jr c, jr_01c_491c                                ; $494a: $38 $d0

	jr nc, jr_01c_491e                               ; $494c: $30 $d0

	jr nc, jr_01c_48e0                               ; $494e: $30 $90

	ld [hl], b                                       ; $4950: $70
	db $10                                           ; $4951: $10
	ldh a, [rAUD1SWEEP]                              ; $4952: $f0 $10
	ldh a, [$30]                                     ; $4954: $f0 $30
	ldh a, [rPCM34]                                  ; $4956: $f0 $77
	ld a, h                                          ; $4958: $7c
	ld a, a                                          ; $4959: $7f
	ld c, b                                          ; $495a: $48
	ld d, a                                          ; $495b: $57
	nop                                              ; $495c: $00
	db $fd                                           ; $495d: $fd
	sbc d                                            ; $495e: $9a
	jr nc, jr_01c_4992                               ; $495f: $30 $31

	ld c, a                                          ; $4961: $4f
	ld a, [hl]                                       ; $4962: $7e
	cp b                                             ; $4963: $b8
	ld [hl], e                                       ; $4964: $73
	add b                                            ; $4965: $80
	sub [hl]                                         ; $4966: $96
	sbc [hl]                                         ; $4967: $9e
	rst $38                                          ; $4968: $ff
	ld e, a                                          ; $4969: $5f
	ld [hl], l                                       ; $496a: $75
	dec h                                            ; $496b: $25
	dec sp                                           ; $496c: $3b
	ld hl, $123f                                     ; $496d: $21 $3f $12
	ld a, e                                          ; $4970: $7b
	or h                                             ; $4971: $b4
	rst SubAFromDE                                          ; $4972: $df
	rlca                                             ; $4973: $07
	ld d, [hl]                                       ; $4974: $56
	add b                                            ; $4975: $80
	sbc [hl]                                         ; $4976: $9e
	dec e                                            ; $4977: $1d
	ld [hl], e                                       ; $4978: $73
	add b                                            ; $4979: $80
	sub [hl]                                         ; $497a: $96
	ld a, l                                          ; $497b: $7d
	rst $38                                          ; $497c: $ff
	ei                                               ; $497d: $fb
	xor a                                            ; $497e: $af
	and [hl]                                         ; $497f: $a6
	sbc $84                                          ; $4980: $de $84
	db $fc                                           ; $4982: $fc
	ld c, b                                          ; $4983: $48
	ld a, d                                          ; $4984: $7a
	or h                                             ; $4985: $b4
	rst SubAFromDE                                          ; $4986: $df
	ldh [rVBK], a                                    ; $4987: $e0 $4f

jr_01c_4989:
	ld a, $6f                                        ; $4989: $3e $6f
	cp [hl]                                          ; $498b: $be
	sbc c                                            ; $498c: $99
	cp [hl]                                          ; $498d: $be
	rst $38                                          ; $498e: $ff
	rst SubAFromDE                                          ; $498f: $df
	push af                                          ; $4990: $f5
	ld h, l                                          ; $4991: $65

jr_01c_4992:
	ld a, e                                          ; $4992: $7b
	ld l, a                                          ; $4993: $6f
	cp [hl]                                          ; $4994: $be
	ld e, d                                          ; $4995: $5a
	sbc d                                            ; $4996: $9a
	sbc h                                            ; $4997: $9c
	adc h                                            ; $4998: $8c
	ldh a, [c]                                       ; $4999: $f2
	ld a, [hl]                                       ; $499a: $7e
	ld [hl], a                                       ; $499b: $77
	cp [hl]                                          ; $499c: $be
	sbc l                                            ; $499d: $9d
	inc bc                                           ; $499e: $03
	di                                               ; $499f: $f3
	ld a, e                                          ; $49a0: $7b
	add d                                            ; $49a1: $82
	rst SubAFromDE                                          ; $49a2: $df
	add b                                            ; $49a3: $80
	ld a, a                                          ; $49a4: $7f
	db $fd                                           ; $49a5: $fd
	ld a, d                                          ; $49a6: $7a
	ld hl, sp-$6e                                    ; $49a7: $f8 $92
	and b                                            ; $49a9: $a0

jr_01c_49aa:
	ldh [$0e], a                                     ; $49aa: $e0 $0e
	rrca                                             ; $49ac: $0f
	jr jr_01c_49ce                                   ; $49ad: $18 $1f

	ld [de], a                                       ; $49af: $12
	rra                                              ; $49b0: $1f
	ld d, $1f                                        ; $49b1: $16 $1f
	inc d                                            ; $49b3: $14
	rra                                              ; $49b4: $1f
	jr jr_01c_4a29                                   ; $49b5: $18 $72

	ld a, [hl-]                                      ; $49b7: $3a
	ld a, [hl]                                       ; $49b8: $7e
	ld a, $6f                                        ; $49b9: $3e $6f
	ld a, $9e                                        ; $49bb: $3e $9e
	ld [de], a                                       ; $49bd: $12
	sbc $1e                                          ; $49be: $de $1e
	ld [hl], e                                       ; $49c0: $73
	ld [$1f9d], sp                                   ; $49c1: $08 $9d $1f
	jr nc, jr_01c_4a40                               ; $49c4: $30 $7a

	halt                                             ; $49c6: $76
	ld a, l                                          ; $49c7: $7d
	or $96                                           ; $49c8: $f6 $96
	jr c, @+$41                                      ; $49ca: $38 $3f

	ld d, b                                          ; $49cc: $50
	ld a, a                                          ; $49cd: $7f

jr_01c_49ce:
	ld [hl], b                                       ; $49ce: $70
	ld a, a                                          ; $49cf: $7f
	ld [de], a                                       ; $49d0: $12
	rra                                              ; $49d1: $1f
	dec bc                                           ; $49d2: $0b
	sbc $0f                                          ; $49d3: $de $0f
	ld l, a                                          ; $49d5: $6f
	ldh [$df], a                                     ; $49d6: $e0 $df
	inc e                                            ; $49d8: $1c
	ld [hl], e                                       ; $49d9: $73
	ldh [$7a], a                                     ; $49da: $e0 $7a
	jr nz, jr_01c_4a5b                               ; $49dc: $20 $7d

	xor $9c                                          ; $49de: $ee $9c
	ld [de], a                                       ; $49e0: $12
	cp $16                                           ; $49e1: $fe $16
	ld a, e                                          ; $49e3: $7b
	db $fc                                           ; $49e4: $fc
	ld a, a                                          ; $49e5: $7f
	db $f4                                           ; $49e6: $f4
	ld a, a                                          ; $49e7: $7f
	jr nz, jr_01c_4a69                               ; $49e8: $20 $7f

	ld l, d                                          ; $49ea: $6a
	ld a, [hl]                                       ; $49eb: $7e
	jr jr_01c_4989                                   ; $49ec: $18 $9b

	ld b, h                                          ; $49ee: $44
	ld a, h                                          ; $49ef: $7c
	inc h                                            ; $49f0: $24
	inc a                                            ; $49f1: $3c
	ld h, a                                          ; $49f2: $67
	ret nz                                           ; $49f3: $c0

	ld c, a                                          ; $49f4: $4f
	ld e, $6d                                        ; $49f5: $1e $6d
	sbc [hl]                                         ; $49f7: $9e
	ld a, a                                          ; $49f8: $7f
	or [hl]                                          ; $49f9: $b6
	ld a, a                                          ; $49fa: $7f
	xor h                                            ; $49fb: $ac
	ld [hl], l                                       ; $49fc: $75
	jp z, $fe7f                                      ; $49fd: $ca $7f $fe

	ld a, a                                          ; $4a00: $7f
	or d                                             ; $4a01: $b2
	rst FarCall                                          ; $4a02: $f7
	ld e, l                                          ; $4a03: $5d
	sbc [hl]                                         ; $4a04: $9e
	ld a, a                                          ; $4a05: $7f
	inc e                                            ; $4a06: $1c
	sbc e                                            ; $4a07: $9b
	rlca                                             ; $4a08: $07
	rst $38                                          ; $4a09: $ff
	ld b, $fe                                        ; $4a0a: $06 $fe
	ld [hl], l                                       ; $4a0c: $75
	add $7e                                          ; $4a0d: $c6 $7e
	inc d                                            ; $4a0f: $14
	ld e, e                                          ; $4a10: $5b

jr_01c_4a11:
	ret nz                                           ; $4a11: $c0

	sbc l                                            ; $4a12: $9d
	jr nc, jr_01c_4a3c                               ; $4a13: $30 $27

	ld a, e                                          ; $4a15: $7b
	halt                                             ; $4a16: $76
	sub a                                            ; $4a17: $97
	ld a, [hl-]                                      ; $4a18: $3a
	ccf                                              ; $4a19: $3f
	ld h, $3f                                        ; $4a1a: $26 $3f
	ld de, $221f                                     ; $4a1c: $11 $1f $22
	ld a, $6f                                        ; $4a1f: $3e $6f
	add d                                            ; $4a21: $82
	push af                                          ; $4a22: $f5
	rst SubAFromDE                                          ; $4a23: $df
	inc c                                            ; $4a24: $0c
	ld a, l                                          ; $4a25: $7d
	ld [hl], d                                       ; $4a26: $72
	ld a, a                                          ; $4a27: $7f
	ld a, h                                          ; $4a28: $7c

jr_01c_4a29:
	sbc e                                            ; $4a29: $9b
	ld h, $fe                                        ; $4a2a: $26 $fe
	ld a, [hl-]                                      ; $4a2c: $3a
	cp $7a                                           ; $4a2d: $fe $7a
	ld l, d                                          ; $4a2f: $6a
	sbc [hl]                                         ; $4a30: $9e
	ld a, $67                                        ; $4a31: $3e $67
	add d                                            ; $4a33: $82
	sub c                                            ; $4a34: $91
	jr nc, jr_01c_4a73                               ; $4a35: $30 $3c

	jr @+$20                                         ; $4a37: $18 $1e

	ld c, $0e                                        ; $4a39: $0e $0e
	db $10                                           ; $4a3b: $10

jr_01c_4a3c:
	rra                                              ; $4a3c: $1f
	inc de                                           ; $4a3d: $13
	rra                                              ; $4a3e: $1f
	add hl, de                                       ; $4a3f: $19

jr_01c_4a40:
	rra                                              ; $4a40: $1f
	ld c, $0e                                        ; $4a41: $0e $0e
	rst SubAFromBC                                          ; $4a43: $e7
	rst SubAFromDE                                          ; $4a44: $df
	inc b                                            ; $4a45: $04
	ld a, e                                          ; $4a46: $7b
	inc l                                            ; $4a47: $2c
	ld a, d                                          ; $4a48: $7a
	or $7f                                           ; $4a49: $f6 $7f
	jp c, $f47e                                      ; $4a4b: $da $7e $f4

	sbc h                                            ; $4a4e: $9c
	ld sp, $223f                                     ; $4a4f: $31 $3f $22
	sbc $3e                                          ; $4a52: $de $3e
	pop af                                           ; $4a54: $f1
	sub e                                            ; $4a55: $93
	ld a, [$09fe]                                    ; $4a56: $fa $fe $09
	rst $38                                          ; $4a59: $ff
	add hl, bc                                       ; $4a5a: $09

jr_01c_4a5b:
	rst $38                                          ; $4a5b: $ff
	inc de                                           ; $4a5c: $13
	rst $38                                          ; $4a5d: $ff
	rst SubAFromDE                                          ; $4a5e: $df
	rst $38                                          ; $4a5f: $ff
	pop hl                                           ; $4a60: $e1
	rst $38                                          ; $4a61: $ff
	scf                                              ; $4a62: $37
	add b                                            ; $4a63: $80
	ld e, d                                          ; $4a64: $5a
	ld a, h                                          ; $4a65: $7c
	sub h                                            ; $4a66: $94

jr_01c_4a67:
	cp $a0                                           ; $4a67: $fe $a0

jr_01c_4a69:
	db $fc                                           ; $4a69: $fc
	xor b                                            ; $4a6a: $a8
	ld hl, sp-$38                                    ; $4a6b: $f8 $c8
	ldh a, [$60]                                     ; $4a6d: $f0 $60
	ld a, b                                          ; $4a6f: $78
	jr nz, jr_01c_4aaa                               ; $4a70: $20 $38

	push af                                          ; $4a72: $f5

jr_01c_4a73:
	rst SubAFromDE                                          ; $4a73: $df
	jr jr_01c_4a11                                   ; $4a74: $18 $9b

	ld h, $be                                        ; $4a76: $26 $be

jr_01c_4a78:
	ei                                               ; $4a78: $fb
	ld a, a                                          ; $4a79: $7f
	ld a, d                                          ; $4a7a: $7a
	ld a, [hl]                                       ; $4a7b: $7e
	sbc [hl]                                         ; $4a7c: $9e
	ld [hl], e                                       ; $4a7d: $73
	rst FarCall                                          ; $4a7e: $f7
	rst SubAFromDE                                          ; $4a7f: $df
	cp $8f                                           ; $4a80: $fe $8f
	adc b                                            ; $4a82: $88
	cp $c6                                           ; $4a83: $fe $c6
	cp $a1                                           ; $4a85: $fe $a1
	rst $38                                          ; $4a87: $ff
	cp c                                             ; $4a88: $b9
	rst SubAFromDE                                          ; $4a89: $df
	cp a                                             ; $4a8a: $bf
	rst JumpTable                                          ; $4a8b: $c7
	ld e, [hl]                                       ; $4a8c: $5e
	ld h, b                                          ; $4a8d: $60
	ld c, h                                          ; $4a8e: $4c
	ld [hl], b                                       ; $4a8f: $70
	jr nz, @+$3a                                     ; $4a90: $20 $38

	ld a, e                                          ; $4a92: $7b
	cp $9e                                           ; $4a93: $fe $9e
	jr nc, jr_01c_4a78                               ; $4a95: $30 $e1

	ld a, l                                          ; $4a97: $7d
	cp [hl]                                          ; $4a98: $be
	ld d, [hl]                                       ; $4a99: $56
	ld b, $fd                                        ; $4a9a: $06 $fd
	rst SubAFromDE                                          ; $4a9c: $df
	rlca                                             ; $4a9d: $07
	ld a, l                                          ; $4a9e: $7d
	inc b                                            ; $4a9f: $04
	ld a, [hl]                                       ; $4aa0: $7e
	or d                                             ; $4aa1: $b2
	ld a, [hl]                                       ; $4aa2: $7e
	and $7c                                          ; $4aa3: $e6 $7c
	ld [hl], b                                       ; $4aa5: $70
	ld a, [hl]                                       ; $4aa6: $7e
	ld [$4a7d], sp                                   ; $4aa7: $08 $7d $4a

jr_01c_4aaa:
	ld a, [hl]                                       ; $4aaa: $7e
	ld a, h                                          ; $4aab: $7c
	rst SubAFromDE                                          ; $4aac: $df
	ldh a, [$f5]                                     ; $4aad: $f0 $f5
	rst SubAFromDE                                          ; $4aaf: $df
	inc bc                                           ; $4ab0: $03
	sbc h                                            ; $4ab1: $9c
	ld sp, hl                                        ; $4ab2: $f9
	rst $38                                          ; $4ab3: $ff
	add hl, hl                                       ; $4ab4: $29
	ld a, b                                          ; $4ab5: $78
	ld d, b                                          ; $4ab6: $50
	rst SubAFromDE                                          ; $4ab7: $df
	cp $9e                                           ; $4ab8: $fe $9e
	ld [hl+], a                                      ; $4aba: $22
	ld a, d                                          ; $4abb: $7a
	ldh [c], a                                       ; $4abc: $e2
	sbc c                                            ; $4abd: $99
	ld e, h                                          ; $4abe: $5c
	ld a, h                                          ; $4abf: $7c
	adc b                                            ; $4ac0: $88
	ld hl, sp+$78                                    ; $4ac1: $f8 $78
	ld a, b                                          ; $4ac3: $78
	ld l, d                                          ; $4ac4: $6a
	jp z, Jump_01c_427a                              ; $4ac5: $ca $7a $42

	ld [hl], a                                       ; $4ac8: $77
	jr z, @+$76                                      ; $4ac9: $28 $74

	jr nc, jr_01c_4a67                               ; $4acb: $30 $9a

	add a                                            ; $4acd: $87
	rst $38                                          ; $4ace: $ff
	add h                                            ; $4acf: $84
	db $fc                                           ; $4ad0: $fc
	db $f4                                           ; $4ad1: $f4
	ld a, c                                          ; $4ad2: $79
	inc l                                            ; $4ad3: $2c
	sbc [hl]                                         ; $4ad4: $9e
	ld h, h                                          ; $4ad5: $64
	ld [hl], d                                       ; $4ad6: $72
	ld b, b                                          ; $4ad7: $40
	ld c, [hl]                                       ; $4ad8: $4e
	jp nc, Jump_01c_603d                             ; $4ad9: $d2 $3d $60

	ld a, [hl]                                       ; $4adc: $7e
	halt                                             ; $4add: $76
	ld a, [hl]                                       ; $4ade: $7e
	ld [hl], b                                       ; $4adf: $70
	ld a, [hl]                                       ; $4ae0: $7e
	jr c, jr_01c_4af0                                ; $4ae1: $38 $0d

	ld h, b                                          ; $4ae3: $60
	rst SubAFromDE                                          ; $4ae4: $df
	di                                               ; $4ae5: $f3
	ld a, l                                          ; $4ae6: $7d
	xor d                                            ; $4ae7: $aa
	ld a, h                                          ; $4ae8: $7c
	ld e, [hl]                                       ; $4ae9: $5e
	rst SubAFromDE                                          ; $4aea: $df
	rrca                                             ; $4aeb: $0f
	sub [hl]                                         ; $4aec: $96
	dec bc                                           ; $4aed: $0b
	inc c                                            ; $4aee: $0c
	inc de                                           ; $4aef: $13

jr_01c_4af0:
	inc e                                            ; $4af0: $1c
	inc de                                           ; $4af1: $13
	inc e                                            ; $4af2: $1c
	ld de, $131e                                     ; $4af3: $11 $1e $13
	ld a, c                                          ; $4af6: $79
	ld l, [hl]                                       ; $4af7: $6e
	ld [hl], h                                       ; $4af8: $74
	ld e, h                                          ; $4af9: $5c
	rst SubAFromDE                                          ; $4afa: $df
	ld bc, $7ff9                                     ; $4afb: $01 $f9 $7f
	call z, $3199                                    ; $4afe: $cc $99 $31
	rst $38                                          ; $4b01: $ff
	jp nc, $dcfe                                     ; $4b02: $d2 $fe $dc

	inc a                                            ; $4b05: $3c
	ld [hl], h                                       ; $4b06: $74
	jp c, $fe7f                                      ; $4b07: $da $7f $fe

	ld a, h                                          ; $4b0a: $7c
	ld e, e                                          ; $4b0b: $5b
	ld a, a                                          ; $4b0c: $7f
	add d                                            ; $4b0d: $82
	sub a                                            ; $4b0e: $97
	and [hl]                                         ; $4b0f: $a6
	cp [hl]                                          ; $4b10: $be
	sub d                                            ; $4b11: $92
	sbc [hl]                                         ; $4b12: $9e
	adc d                                            ; $4b13: $8a
	adc [hl]                                         ; $4b14: $8e
	ld b, $06                                        ; $4b15: $06 $06
	ei                                               ; $4b17: $fb
	sbc h                                            ; $4b18: $9c
	ld b, $07                                        ; $4b19: $06 $07
	rra                                              ; $4b1b: $1f
	ld a, e                                          ; $4b1c: $7b
	inc l                                            ; $4b1d: $2c
	ld a, a                                          ; $4b1e: $7f
	sbc b                                            ; $4b1f: $98
	rst SubAFromDE                                          ; $4b20: $df
	rra                                              ; $4b21: $1f
	ld a, l                                          ; $4b22: $7d
	ld h, e                                          ; $4b23: $63
	ld [hl], h                                       ; $4b24: $74
	sbc h                                            ; $4b25: $9c
	ld [hl], a                                       ; $4b26: $77
	cp [hl]                                          ; $4b27: $be
	sbc e                                            ; $4b28: $9b
	dec b                                            ; $4b29: $05
	rlca                                             ; $4b2a: $07
	dec b                                            ; $4b2b: $05
	rlca                                             ; $4b2c: $07
	ld h, a                                          ; $4b2d: $67

jr_01c_4b2e:
	ldh [$df], a                                     ; $4b2e: $e0 $df
	ldh a, [$7d]                                     ; $4b30: $f0 $7d
	adc h                                            ; $4b32: $8c
	sub d                                            ; $4b33: $92
	jr c, jr_01c_4b2e                                ; $4b34: $38 $f8

	ld [hl], h                                       ; $4b36: $74
	db $fc                                           ; $4b37: $fc
	jp nc, $ccbe                                     ; $4b38: $d2 $be $cc

	inc a                                            ; $4b3b: $3c
	adc b                                            ; $4b3c: $88
	ld a, b                                          ; $4b3d: $78
	ld [$08f8], sp                                   ; $4b3e: $08 $f8 $08
	ld a, c                                          ; $4b41: $79
	add b                                            ; $4b42: $80
	sbc c                                            ; $4b43: $99
	ld c, b                                          ; $4b44: $48
	ld a, b                                          ; $4b45: $78
	inc h                                            ; $4b46: $24
	inc a                                            ; $4b47: $3c
	ld b, h                                          ; $4b48: $44
	ld a, h                                          ; $4b49: $7c
	ld l, a                                          ; $4b4a: $6f
	ld e, $7f                                        ; $4b4b: $1e $7f
	ret nz                                           ; $4b4d: $c0

	sbc e                                            ; $4b4e: $9b
	dec b                                            ; $4b4f: $05
	ld b, $07                                        ; $4b50: $06 $07
	inc b                                            ; $4b52: $04
	ld a, c                                          ; $4b53: $79
	daa                                              ; $4b54: $27
	ld a, a                                          ; $4b55: $7f
	cp $79                                           ; $4b56: $fe $79
	ld c, c                                          ; $4b58: $49
	ld a, a                                          ; $4b59: $7f
	di                                               ; $4b5a: $f3
	ld a, e                                          ; $4b5b: $7b
	add $9b                                          ; $4b5c: $c6 $9b
	rlca                                             ; $4b5e: $07
	inc bc                                           ; $4b5f: $03
	inc bc                                           ; $4b60: $03
	ld [bc], a                                       ; $4b61: $02
	sbc $03                                          ; $4b62: $de $03
	ld h, [hl]                                       ; $4b64: $66
	or [hl]                                          ; $4b65: $b6
	ld a, a                                          ; $4b66: $7f
	ret nz                                           ; $4b67: $c0

	ld a, e                                          ; $4b68: $7b
	adc $7b                                          ; $4b69: $ce $7b
	jp z, Jump_01c_6474                              ; $4b6b: $ca $74 $64

	sbc h                                            ; $4b6e: $9c
	ret nc                                           ; $4b6f: $d0

	ldh a, [rAUD2LOW]                                ; $4b70: $f0 $18
	ld [hl], a                                       ; $4b72: $77
	ret nz                                           ; $4b73: $c0

	ld a, e                                          ; $4b74: $7b
	ld b, [hl]                                       ; $4b75: $46
	ld h, [hl]                                       ; $4b76: $66
	ret nz                                           ; $4b77: $c0

	ld a, a                                          ; $4b78: $7f
	sub $73                                          ; $4b79: $d6 $73
	ret nz                                           ; $4b7b: $c0

	sbc b                                            ; $4b7c: $98
	inc c                                            ; $4b7d: $0c
	rla                                              ; $4b7e: $17
	inc e                                            ; $4b7f: $1c
	rra                                              ; $4b80: $1f
	inc e                                            ; $4b81: $1c
	dec b                                            ; $4b82: $05
	ld b, $77                                        ; $4b83: $06 $77
	add [hl]                                         ; $4b85: $86
	ld [hl], a                                       ; $4b86: $77
	ld b, d                                          ; $4b87: $42
	db $db                                           ; $4b88: $db
	ld bc, $2c72                                     ; $4b89: $01 $72 $2c
	ld a, l                                          ; $4b8c: $7d
	ld [de], a                                       ; $4b8d: $12
	sbc e                                            ; $4b8e: $9b
	cp h                                             ; $4b8f: $bc
	ldh [c], a                                       ; $4b90: $e2
	ld a, $d2                                        ; $4b91: $3e $d2
	ld a, e                                          ; $4b93: $7b
	cp $8d                                           ; $4b94: $fe $8d
	ldh [c], a                                       ; $4b96: $e2
	ld a, [hl]                                       ; $4b97: $7e
	sub d                                            ; $4b98: $92
	cp $0c                                           ; $4b99: $fe $0c
	db $fc                                           ; $4b9b: $fc
	inc e                                            ; $4b9c: $1c
	db $fc                                           ; $4b9d: $fc
	add h                                            ; $4b9e: $84
	db $fc                                           ; $4b9f: $fc
	ld l, b                                          ; $4ba0: $68
	ld hl, sp-$48                                    ; $4ba1: $f8 $b8
	ld hl, sp+$20                                    ; $4ba3: $f8 $20
	ldh [$c0], a                                     ; $4ba5: $e0 $c0
	ret nz                                           ; $4ba7: $c0

	ei                                               ; $4ba8: $fb
	rst SubAFromDE                                          ; $4ba9: $df
	ld h, b                                          ; $4baa: $60
	sub d                                            ; $4bab: $92
	adc h                                            ; $4bac: $8c
	rst $38                                          ; $4bad: $ff
	add $fd                                          ; $4bae: $c6 $fd
	ld h, a                                          ; $4bb0: $67
	ld a, b                                          ; $4bb1: $78
	scf                                              ; $4bb2: $37
	jr c, jr_01c_4bd4                                ; $4bb3: $38 $1f

	add hl, de                                       ; $4bb5: $19
	ld a, [bc]                                       ; $4bb6: $0a
	rrca                                             ; $4bb7: $0f
	ld b, $de                                        ; $4bb8: $06 $de
	rlca                                             ; $4bba: $07
	rst SubAFromDE                                          ; $4bbb: $df
	inc bc                                           ; $4bbc: $03
	ld e, a                                          ; $4bbd: $5f
	nop                                              ; $4bbe: $00
	rst SubAFromDE                                          ; $4bbf: $df
	ld c, $7e                                        ; $4bc0: $0e $7e
	ld c, h                                          ; $4bc2: $4c
	sbc d                                            ; $4bc3: $9a
	inc bc                                           ; $4bc4: $03
	rst $38                                          ; $4bc5: $ff
	add [hl]                                         ; $4bc6: $86
	ld a, [hl]                                       ; $4bc7: $7e
	call z, $fe76                                    ; $4bc8: $cc $76 $fe
	ld a, e                                          ; $4bcb: $7b
	ld b, d                                          ; $4bcc: $42
	ld [hl], a                                       ; $4bcd: $77
	ld a, d                                          ; $4bce: $7a
	ld a, a                                          ; $4bcf: $7f
	add d                                            ; $4bd0: $82
	ld a, a                                          ; $4bd1: $7f
	ld a, b                                          ; $4bd2: $78
	rst SubAFromDE                                          ; $4bd3: $df

jr_01c_4bd4:
	ldh a, [$7f]                                     ; $4bd4: $f0 $7f
	db $fc                                           ; $4bd6: $fc
	rst SubAFromDE                                          ; $4bd7: $df
	ld [hl], b                                       ; $4bd8: $70
	ld c, h                                          ; $4bd9: $4c
	ldh [c], a                                       ; $4bda: $e2
	ld e, d                                          ; $4bdb: $5a
	and b                                            ; $4bdc: $a0
	sub [hl]                                         ; $4bdd: $96
	rst SubAFromDE                                          ; $4bde: $df
	add h                                            ; $4bdf: $84
	rst $38                                          ; $4be0: $ff
	ld b, h                                          ; $4be1: $44
	rst $38                                          ; $4be2: $ff
	adc b                                            ; $4be3: $88
	rst $38                                          ; $4be4: $ff
	ldh a, [rIE]                                     ; $4be5: $f0 $ff
	rst AddAOntoHL                                          ; $4be7: $ef
	rst SubAFromDE                                          ; $4be8: $df
	ret nz                                           ; $4be9: $c0

	ld a, [hl]                                       ; $4bea: $7e
	ldh a, [$7f]                                     ; $4beb: $f0 $7f
	ld a, b                                          ; $4bed: $78
	ld [hl], h                                       ; $4bee: $74
	ld l, d                                          ; $4bef: $6a
	ld [hl], a                                       ; $4bf0: $77
	cp $9a                                           ; $4bf1: $fe $9a
	add e                                            ; $4bf3: $83
	rst $38                                          ; $4bf4: $ff
	ld h, d                                          ; $4bf5: $62
	ld a, [hl]                                       ; $4bf6: $7e
	daa                                              ; $4bf7: $27
	ld a, c                                          ; $4bf8: $79
	xor $df                                          ; $4bf9: $ee $df
	ld a, e                                          ; $4bfb: $7b
	db $eb                                           ; $4bfc: $eb
	ld a, h                                          ; $4bfd: $7c
	call z, $347d                                    ; $4bfe: $cc $7d $34
	ld a, a                                          ; $4c01: $7f
	sbc $66                                          ; $4c02: $de $66
	jp nc, $dfeb                                     ; $4c04: $d2 $eb $df

	ld bc, $d05e                                     ; $4c07: $01 $5e $d0
	pop af                                           ; $4c0a: $f1
	sub l                                            ; $4c0b: $95
	add c                                            ; $4c0c: $81
	rst $38                                          ; $4c0d: $ff
	sbc b                                            ; $4c0e: $98
	rst $38                                          ; $4c0f: $ff
	ld h, $e7                                        ; $4c10: $26 $e7
	inc h                                            ; $4c12: $24
	rst SubAFromBC                                          ; $4c13: $e7
	rst JumpTable                                          ; $4c14: $c7
	rst JumpTable                                          ; $4c15: $c7
	db $eb                                           ; $4c16: $eb
	ld a, h                                          ; $4c17: $7c
	call nc, $9197                                   ; $4c18: $d4 $97 $91
	sbc a                                            ; $4c1b: $9f
	ld c, c                                          ; $4c1c: $49
	rst GetHLinHL                                          ; $4c1d: $cf
	ld d, d                                          ; $4c1e: $52
	sbc $9c                                          ; $4c1f: $de $9c
	sbc h                                            ; $4c21: $9c
	db $eb                                           ; $4c22: $eb
	ld a, [hl]                                       ; $4c23: $7e
	ld l, c                                          ; $4c24: $69
	ld a, l                                          ; $4c25: $7d
	ld [$a47e], a                                    ; $4c26: $ea $7e $a4
	sub a                                            ; $4c29: $97
	dec hl                                           ; $4c2a: $2b
	inc a                                            ; $4c2b: $3c
	ld c, e                                          ; $4c2c: $4b
	ld a, h                                          ; $4c2d: $7c
	ld c, e                                          ; $4c2e: $4b
	ld a, h                                          ; $4c2f: $7c
	add hl, sp                                       ; $4c30: $39
	ld a, $6a                                        ; $4c31: $3e $6a
	ld e, c                                          ; $4c33: $59
	ld a, h                                          ; $4c34: $7c
	halt                                             ; $4c35: $76
	sbc [hl]                                         ; $4c36: $9e
	ld e, $64                                        ; $4c37: $1e $64
	and b                                            ; $4c39: $a0
	ld a, [hl]                                       ; $4c3a: $7e
	xor $7e                                          ; $4c3b: $ee $7e
	and b                                            ; $4c3d: $a0
	sub l                                            ; $4c3e: $95
	ldh a, [c]                                       ; $4c3f: $f2
	ld e, $ea                                        ; $4c40: $1e $ea
	ld e, $e9                                        ; $4c42: $1e $e9
	rra                                              ; $4c44: $1f
	jp hl                                            ; $4c45: $e9


	rra                                              ; $4c46: $1f
	adc $3e                                          ; $4c47: $ce $3e
	ld l, [hl]                                       ; $4c49: $6e
	ld [hl+], a                                      ; $4c4a: $22
	ld a, a                                          ; $4c4b: $7f
	ld d, d                                          ; $4c4c: $52
	ld a, a                                          ; $4c4d: $7f
	ld c, h                                          ; $4c4e: $4c
	rst SubAFromDE                                          ; $4c4f: $df
	ld e, $f1                                        ; $4c50: $1e $f1
	ld [hl], l                                       ; $4c52: $75
	ld e, [hl]                                       ; $4c53: $5e
	sbc l                                            ; $4c54: $9d
	add b                                            ; $4c55: $80
	rst $38                                          ; $4c56: $ff
	ld [hl], a                                       ; $4c57: $77
	cp $99                                           ; $4c58: $fe $99
	ld d, b                                          ; $4c5a: $50
	ld a, a                                          ; $4c5b: $7f
	jr nc, @+$41                                     ; $4c5c: $30 $3f

	db $10                                           ; $4c5e: $10
	rra                                              ; $4c5f: $1f
	ld [hl], a                                       ; $4c60: $77
	cp $7c                                           ; $4c61: $fe $7c
	xor $4e                                          ; $4c63: $ee $4e
	cp [hl]                                          ; $4c65: $be
	sbc l                                            ; $4c66: $9d
	ld bc, $77ff                                     ; $4c67: $01 $ff $77
	cp $7e                                           ; $4c6a: $fe $7e
	cp h                                             ; $4c6c: $bc
	sbc d                                            ; $4c6d: $9a
	rlca                                             ; $4c6e: $07
	rst $38                                          ; $4c6f: $ff
	ld b, $fe                                        ; $4c70: $06 $fe
	inc b                                            ; $4c72: $04
	ld a, d                                          ; $4c73: $7a
	call c, $e88e                                    ; $4c74: $dc $8e $e8
	ld hl, sp+$1c                                    ; $4c77: $f8 $1c
	rra                                              ; $4c79: $1f
	jr nc, jr_01c_4cbb                               ; $4c7a: $30 $3f

	inc h                                            ; $4c7c: $24
	ccf                                              ; $4c7d: $3f
	inc l                                            ; $4c7e: $2c
	ccf                                              ; $4c7f: $3f
	jr c, @+$41                                      ; $4c80: $38 $3f

	ld d, b                                          ; $4c82: $50
	ld a, a                                          ; $4c83: $7f
	ld [hl], b                                       ; $4c84: $70
	ld a, a                                          ; $4c85: $7f
	ld [de], a                                       ; $4c86: $12
	ld a, e                                          ; $4c87: $7b
	adc $df                                          ; $4c88: $ce $df
	rrca                                             ; $4c8a: $0f
	ld d, a                                          ; $4c8b: $57
	ld a, [hl]                                       ; $4c8c: $7e
	ld a, [hl]                                       ; $4c8d: $7e
	jr nc, jr_01c_4d06                               ; $4c8e: $30 $76

	or [hl]                                          ; $4c90: $b6
	sbc h                                            ; $4c91: $9c
	ld [de], a                                       ; $4c92: $12
	cp $16                                           ; $4c93: $fe $16
	ld a, e                                          ; $4c95: $7b
	db $fc                                           ; $4c96: $fc
	ld a, a                                          ; $4c97: $7f
	db $f4                                           ; $4c98: $f4
	ld a, [hl]                                       ; $4c99: $7e
	ld h, d                                          ; $4c9a: $62
	ld [hl], l                                       ; $4c9b: $75
	sub $7f                                          ; $4c9c: $d6 $7f
	add b                                            ; $4c9e: $80
	ld [hl], h                                       ; $4c9f: $74
	ldh [$6f], a                                     ; $4ca0: $e0 $6f
	ld a, [hl]                                       ; $4ca2: $7e
	sub e                                            ; $4ca3: $93
	ld c, $0f                                        ; $4ca4: $0e $0f
	jr jr_01c_4cc7                                   ; $4ca6: $18 $1f

	ld [de], a                                       ; $4ca8: $12
	rra                                              ; $4ca9: $1f
	ld d, $1f                                        ; $4caa: $16 $1f
	inc d                                            ; $4cac: $14
	rra                                              ; $4cad: $1f
	jr jr_01c_4ccf                                   ; $4cae: $18 $1f

	ld [hl], a                                       ; $4cb0: $77
	ld b, d                                          ; $4cb1: $42
	ld a, a                                          ; $4cb2: $7f
	ret nz                                           ; $4cb3: $c0

	ld [hl], a                                       ; $4cb4: $77
	jp nz, $c077                                     ; $4cb5: $c2 $77 $c0

	ld l, a                                          ; $4cb8: $6f
	ldh [rDIV], a                                    ; $4cb9: $e0 $04

jr_01c_4cbb:
	and b                                            ; $4cbb: $a0
	ld e, d                                          ; $4cbc: $5a
	inc bc                                           ; $4cbd: $03
	db $fd                                           ; $4cbe: $fd
	db $dd                                           ; $4cbf: $dd
	ld bc, $dfff                                     ; $4cc0: $01 $ff $df
	dec e                                            ; $4cc3: $1d
	adc l                                            ; $4cc4: $8d
	ccf                                              ; $4cc5: $3f
	inc sp                                           ; $4cc6: $33

jr_01c_4cc7:
	ccf                                              ; $4cc7: $3f
	inc hl                                           ; $4cc8: $23
	ccf                                              ; $4cc9: $3f
	dec h                                            ; $4cca: $25
	ccf                                              ; $4ccb: $3f
	ld hl, $333e                                     ; $4ccc: $21 $3e $33

jr_01c_4ccf:
	inc e                                            ; $4ccf: $1c
	rra                                              ; $4cd0: $1f
	inc b                                            ; $4cd1: $04
	rlca                                             ; $4cd2: $07
	ld b, $07                                        ; $4cd3: $06 $07
	inc bc                                           ; $4cd5: $03
	inc bc                                           ; $4cd6: $03
	ld [hl], a                                       ; $4cd7: $77
	add sp, -$13                                     ; $4cd8: $e8 $ed
	sub l                                            ; $4cda: $95
	rlca                                             ; $4cdb: $07
	add a                                            ; $4cdc: $87
	cp b                                             ; $4cdd: $b8
	rst $38                                          ; $4cde: $ff
	ld b, e                                          ; $4cdf: $43
	ld a, a                                          ; $4ce0: $7f
	ld a, b                                          ; $4ce1: $78
	ld a, a                                          ; $4ce2: $7f

jr_01c_4ce3:
	ld b, e                                          ; $4ce3: $43
	ld a, a                                          ; $4ce4: $7f
	ldh a, [$df]                                     ; $4ce5: $f0 $df
	db $10                                           ; $4ce7: $10
	sub d                                            ; $4ce8: $92
	jr jr_01c_4ce3                                   ; $4ce9: $18 $f8

	ld hl, sp-$39                                    ; $4ceb: $f8 $c7
	rst $38                                          ; $4ced: $ff
	inc l                                            ; $4cee: $2c
	rst $38                                          ; $4cef: $ff
	sbc b                                            ; $4cf0: $98
	rst $38                                          ; $4cf1: $ff
	ld h, [hl]                                       ; $4cf2: $66
	rst $38                                          ; $4cf3: $ff
	ld [hl], c                                       ; $4cf4: $71
	rst $38                                          ; $4cf5: $ff
	jp hl                                            ; $4cf6: $e9


	rst SubAFromDE                                          ; $4cf7: $df
	ret nz                                           ; $4cf8: $c0

	sbc c                                            ; $4cf9: $99
	ld h, b                                          ; $4cfa: $60
	ldh [rAUD4LEN], a                                ; $4cfb: $e0 $20
	ldh [rAUD1SWEEP], a                              ; $4cfd: $e0 $10
	ldh a, [$5f]                                     ; $4cff: $f0 $5f
	add b                                            ; $4d01: $80
	rst SubAFromDE                                          ; $4d02: $df
	ld bc, $029e                                     ; $4d03: $01 $9e $02

jr_01c_4d06:
	sbc $03                                          ; $4d06: $de $03
	rst SubAFromDE                                          ; $4d08: $df
	rrca                                             ; $4d09: $0f
	add b                                            ; $4d0a: $80
	rra                                              ; $4d0b: $1f
	add hl, de                                       ; $4d0c: $19
	rra                                              ; $4d0d: $1f
	db $10                                           ; $4d0e: $10
	rra                                              ; $4d0f: $1f
	ld de, $121f                                     ; $4d10: $11 $1f $12
	rrca                                             ; $4d13: $0f
	rrca                                             ; $4d14: $0f
	add hl, bc                                       ; $4d15: $09
	add hl, bc                                       ; $4d16: $09
	ld [$8c08], sp                                   ; $4d17: $08 $08 $8c
	rst $38                                          ; $4d1a: $ff
	sub d                                            ; $4d1b: $92
	rst $38                                          ; $4d1c: $ff
	inc h                                            ; $4d1d: $24
	rst $38                                          ; $4d1e: $ff
	ld b, h                                          ; $4d1f: $44
	rst $38                                          ; $4d20: $ff
	jp z, $8aff                                      ; $4d21: $ca $ff $8a

	rst $38                                          ; $4d24: $ff
	ld a, [de]                                       ; $4d25: $1a
	db $fd                                           ; $4d26: $fd
	sbc a                                            ; $4d27: $9f
	ldh a, [$b7]                                     ; $4d28: $f0 $b7
	add b                                            ; $4d2a: $80
	xor $bf                                          ; $4d2b: $ee $bf
	cp $bf                                           ; $4d2d: $fe $bf
	ld [$f0df], a                                    ; $4d2f: $ea $df $f0
	rst SubAFromDE                                          ; $4d32: $df
	pop af                                           ; $4d33: $f1
	rst SubAFromDE                                          ; $4d34: $df
	ld hl, sp-$2b                                    ; $4d35: $f8 $d5
	cp $7e                                           ; $4d37: $fe $7e
	rst $38                                          ; $4d39: $ff
	adc c                                            ; $4d3a: $89
	rst $38                                          ; $4d3b: $ff
	inc b                                            ; $4d3c: $04
	rst $38                                          ; $4d3d: $ff
	ld d, d                                          ; $4d3e: $52
	rst $38                                          ; $4d3f: $ff
	ld a, [hl+]                                      ; $4d40: $2a
	rst $38                                          ; $4d41: $ff
	xor c                                            ; $4d42: $a9
	rst $38                                          ; $4d43: $ff
	sub h                                            ; $4d44: $94
	rst $38                                          ; $4d45: $ff
	jp c, $fd6f                                      ; $4d46: $da $6f $fd

	rlca                                             ; $4d49: $07
	adc h                                            ; $4d4a: $8c
	rst SubAFromDE                                          ; $4d4b: $df
	ccf                                              ; $4d4c: $3f
	cp $3f                                           ; $4d4d: $fe $3f
	cp $17                                           ; $4d4f: $fe $17
	cp $03                                           ; $4d51: $fe $03
	ld a, $e3                                        ; $4d53: $3e $e3
	db $fd                                           ; $4d55: $fd
	rst JumpTable                                          ; $4d56: $c7
	push af                                          ; $4d57: $f5
	rrca                                             ; $4d58: $0f
	db $eb                                           ; $4d59: $eb
	rra                                              ; $4d5a: $1f
	db $10                                           ; $4d5b: $10
	ldh a, [hDisp1_SCY]                                     ; $4d5c: $f0 $90
	ld a, e                                          ; $4d5e: $7b
	cp $96                                           ; $4d5f: $fe $96
	ld c, b                                          ; $4d61: $48
	ld hl, sp+$48                                    ; $4d62: $f8 $48
	ld hl, sp-$58                                    ; $4d64: $f8 $a8
	ld hl, sp+$44                                    ; $4d66: $f8 $44
	db $fc                                           ; $4d68: $fc
	and h                                            ; $4d69: $a4
	sbc $fc                                          ; $4d6a: $de $fc
	sub c                                            ; $4d6c: $91
	cp h                                             ; $4d6d: $bc
	db $fc                                           ; $4d6e: $fc
	db $fc                                           ; $4d6f: $fc
	db $e4                                           ; $4d70: $e4
	cp $e2                                           ; $4d71: $fe $e2
	cp $d2                                           ; $4d73: $fe $d2
	cp $c6                                           ; $4d75: $fe $c6
	ld a, h                                          ; $4d77: $7c
	ld a, h                                          ; $4d78: $7c
	inc c                                            ; $4d79: $0c
	inc c                                            ; $4d7a: $0c
	ld sp, hl                                        ; $4d7b: $f9
	db $db                                           ; $4d7c: $db
	ld bc, $dffd                                     ; $4d7d: $01 $fd $df
	inc bc                                           ; $4d80: $03
	push af                                          ; $4d81: $f5
	ld a, e                                          ; $4d82: $7b
	ld a, d                                          ; $4d83: $7a
	ld a, e                                          ; $4d84: $7b
	db $fd                                           ; $4d85: $fd
	sub d                                            ; $4d86: $92
	ld e, $12                                        ; $4d87: $1e $12
	sbc $da                                          ; $4d89: $de $da
	cp [hl]                                          ; $4d8b: $be
	ld h, [hl]                                       ; $4d8c: $66
	cp $fa                                           ; $4d8d: $fe $fa
	db $fc                                           ; $4d8f: $fc
	db $fc                                           ; $4d90: $fc
	ld a, h                                          ; $4d91: $7c
	ld a, h                                          ; $4d92: $7c
	rst $38                                          ; $4d93: $ff
	ld d, e                                          ; $4d94: $53
	inc l                                            ; $4d95: $2c
	sub l                                            ; $4d96: $95
	db $f4                                           ; $4d97: $f4
	db $fc                                           ; $4d98: $fc
	ld a, [hl]                                       ; $4d99: $7e
	ld h, d                                          ; $4d9a: $62
	ccf                                              ; $4d9b: $3f
	ld sp, $181f                                     ; $4d9c: $31 $1f $18
	rrca                                             ; $4d9f: $0f
	inc c                                            ; $4da0: $0c
	sbc $07                                          ; $4da1: $de $07
	ld a, [hl]                                       ; $4da3: $7e
	res 3, b                                         ; $4da4: $cb $98
	rlca                                             ; $4da6: $07
	dec c                                            ; $4da7: $0d
	dec bc                                           ; $4da8: $0b
	rst $38                                          ; $4da9: $ff
	rst $38                                          ; $4daa: $ff
	rra                                              ; $4dab: $1f
	rra                                              ; $4dac: $1f
	pop af                                           ; $4dad: $f1
	rst SubAFromDE                                          ; $4dae: $df
	add b                                            ; $4daf: $80
	sbc $c0                                          ; $4db0: $de $c0
	sbc [hl]                                         ; $4db2: $9e
	ld b, b                                          ; $4db3: $40
	db $db                                           ; $4db4: $db
	ldh [$df], a                                     ; $4db5: $e0 $df
	ret nz                                           ; $4db7: $c0

	rst SubAFromDE                                          ; $4db8: $df
	ldh a, [$57]                                     ; $4db9: $f0 $57
	push hl                                          ; $4dbb: $e5
	sbc e                                            ; $4dbc: $9b
	nop                                              ; $4dbd: $00
	ldh a, [rP1]                                     ; $4dbe: $f0 $00
	ld hl, sp+$7b                                    ; $4dc0: $f8 $7b
	db $fc                                           ; $4dc2: $fc
	sbc [hl]                                         ; $4dc3: $9e
	ldh [$e8], a                                     ; $4dc4: $e0 $e8
	sbc h                                            ; $4dc6: $9c
	jr nz, jr_01c_4dc9                               ; $4dc7: $20 $00

jr_01c_4dc9:
	ld [hl], b                                       ; $4dc9: $70
	ld a, e                                          ; $4dca: $7b
	sbc $96                                          ; $4dcb: $de $96
	db $fc                                           ; $4dcd: $fc
	nop                                              ; $4dce: $00
	cp h                                             ; $4dcf: $bc
	nop                                              ; $4dd0: $00
	ld a, $00                                        ; $4dd1: $3e $00
	ld e, $00                                        ; $4dd3: $1e $00
	sbc b                                            ; $4dd5: $98
	ld a, e                                          ; $4dd6: $7b
	adc $9e                                          ; $4dd7: $ce $9e
	ret nz                                           ; $4dd9: $c0

	ld a, e                                          ; $4dda: $7b
	cp $9c                                           ; $4ddb: $fe $9c
	ld b, b                                          ; $4ddd: $40
	nop                                              ; $4dde: $00
	ld h, b                                          ; $4ddf: $60
	ld a, e                                          ; $4de0: $7b
	cp $e3                                           ; $4de1: $fe $e3
	sbc h                                            ; $4de3: $9c
	ld b, $00                                        ; $4de4: $06 $00
	rlca                                             ; $4de6: $07
	db $e4                                           ; $4de7: $e4
	ld a, e                                          ; $4de8: $7b
	add h                                            ; $4de9: $84
	ld h, [hl]                                       ; $4dea: $66
	ldh [hDisp0_OBP1], a                                     ; $4deb: $e0 $87
	ld c, [hl]                                       ; $4ded: $4e
	cp $bf                                           ; $4dee: $fe $bf
	di                                               ; $4df0: $f3
	ld e, a                                          ; $4df1: $5f
	pop af                                           ; $4df2: $f1
	cp a                                             ; $4df3: $bf
	jp hl                                            ; $4df4: $e9


	rst $38                                          ; $4df5: $ff
	pop hl                                           ; $4df6: $e1
	cp a                                             ; $4df7: $bf
	pop af                                           ; $4df8: $f1
	sbc $de                                          ; $4df9: $de $de
	add d                                            ; $4dfb: $82
	add d                                            ; $4dfc: $82
	adc h                                            ; $4dfd: $8c
	adc h                                            ; $4dfe: $8c
	sbc b                                            ; $4dff: $98
	sbc b                                            ; $4e00: $98
	ld [hl], b                                       ; $4e01: $70
	ld [hl], b                                       ; $4e02: $70
	ret nz                                           ; $4e03: $c0

	ret nz                                           ; $4e04: $c0

	ld [hl], $80                                     ; $4e05: $36 $80
	sub h                                            ; $4e07: $94
	ccf                                              ; $4e08: $3f
	ld [$f15f], a                                    ; $4e09: $ea $5f $f1
	ld e, a                                          ; $4e0c: $5f
	pop af                                           ; $4e0d: $f1
	ld c, a                                          ; $4e0e: $4f
	ld sp, hl                                        ; $4e0f: $f9
	ld d, l                                          ; $4e10: $55
	cp $9b                                           ; $4e11: $fe $9b
	ld h, $80                                        ; $4e13: $26 $80
	sub a                                            ; $4e15: $97
	db $e3                                           ; $4e16: $e3
	ld a, $e3                                        ; $4e17: $3e $e3
	dec a                                            ; $4e19: $3d
	rst SubAFromBC                                          ; $4e1a: $e7
	push af                                          ; $4e1b: $f5
	rst GetHLinHL                                          ; $4e1c: $cf
	dec sp                                           ; $4e1d: $3b
	ld b, d                                          ; $4e1e: $42
	nop                                              ; $4e1f: $00
	rst SubAFromDE                                          ; $4e20: $df
	rrca                                             ; $4e21: $0f
	di                                               ; $4e22: $f3
	ld l, l                                          ; $4e23: $6d
	sbc b                                            ; $4e24: $98
	rst SubAFromBC                                          ; $4e25: $e7
	sub l                                            ; $4e26: $95
	inc bc                                           ; $4e27: $03
	rst $38                                          ; $4e28: $ff
	ld bc, $0dff                                     ; $4e29: $01 $ff $0d
	cp $f5                                           ; $4e2c: $fe $f5
	or $04                                           ; $4e2e: $f6 $04
	rlca                                             ; $4e30: $07
	ld [hl], l                                       ; $4e31: $75
	ldh [c], a                                       ; $4e32: $e2
	sbc c                                            ; $4e33: $99
	dec b                                            ; $4e34: $05
	rlca                                             ; $4e35: $07
	dec b                                            ; $4e36: $05
	rlca                                             ; $4e37: $07
	ld a, [bc]                                       ; $4e38: $0a
	rrca                                             ; $4e39: $0f
	ld l, a                                          ; $4e3a: $6f
	cp $8e                                           ; $4e3b: $fe $8e
	ld c, $0f                                        ; $4e3d: $0e $0f
	inc bc                                           ; $4e3f: $03
	inc bc                                           ; $4e40: $03
	rlca                                             ; $4e41: $07
	ld b, $1c                                        ; $4e42: $06 $1c
	rst $38                                          ; $4e44: $ff
	ldh a, [$ef]                                     ; $4e45: $f0 $ef
	or $0f                                           ; $4e47: $f6 $0f
	or l                                             ; $4e49: $b5
	ld c, l                                          ; $4e4a: $4d
	and h                                            ; $4e4b: $a4
	ld e, h                                          ; $4e4c: $5c
	ld [$f8de], sp                                   ; $4e4d: $08 $de $f8
	add a                                            ; $4e50: $87
	ld d, h                                          ; $4e51: $54
	db $fc                                           ; $4e52: $fc
	ld d, h                                          ; $4e53: $54
	db $fc                                           ; $4e54: $fc
	ld d, d                                          ; $4e55: $52
	cp $4a                                           ; $4e56: $fe $4a
	cp $49                                           ; $4e58: $fe $49
	rst $38                                          ; $4e5a: $ff
	ld c, c                                          ; $4e5b: $49
	rst $38                                          ; $4e5c: $ff
	ld c, [hl]                                       ; $4e5d: $4e
	cp $f8                                           ; $4e5e: $fe $f8
	ld hl, sp-$04                                    ; $4e60: $f8 $fc
	ld c, h                                          ; $4e62: $4c
	inc b                                            ; $4e63: $04
	db $fc                                           ; $4e64: $fc
	inc c                                            ; $4e65: $0c
	db $fc                                           ; $4e66: $fc
	jr @-$06                                         ; $4e67: $18 $f8

	ld d, d                                          ; $4e69: $52
	adc [hl]                                         ; $4e6a: $8e
	db $f4                                           ; $4e6b: $f4
	ld a, a                                          ; $4e6c: $7f
	xor d                                            ; $4e6d: $aa
	ld a, a                                          ; $4e6e: $7f
	sbc l                                            ; $4e6f: $9d
	ld a, a                                          ; $4e70: $7f
	ld a, [hl]                                       ; $4e71: $7e
	ld a, e                                          ; $4e72: $7b
	xor c                                            ; $4e73: $a9
	sbc e                                            ; $4e74: $9b
	inc b                                            ; $4e75: $04
	dec b                                            ; $4e76: $05
	ld b, $04                                        ; $4e77: $06 $04
	ld a, e                                          ; $4e79: $7b
	halt                                             ; $4e7a: $76
	ld a, a                                          ; $4e7b: $7f
	db $fc                                           ; $4e7c: $fc
	ld a, e                                          ; $4e7d: $7b
	sub [hl]                                         ; $4e7e: $96
	ld h, e                                          ; $4e7f: $63
	sbc h                                            ; $4e80: $9c
	ld a, a                                          ; $4e81: $7f
	cp $84                                           ; $4e82: $fe $84
	call nz, $0a3c                                   ; $4e84: $c4 $3c $0a
	cp $79                                           ; $4e87: $fe $79
	rst $38                                          ; $4e89: $ff
	jp hl                                            ; $4e8a: $e9


	sbc a                                            ; $4e8b: $9f
	add sp, $1f                                      ; $4e8c: $e8 $1f
	ld d, b                                          ; $4e8e: $50
	cp a                                             ; $4e8f: $bf
	db $10                                           ; $4e90: $10
	rst $38                                          ; $4e91: $ff
	ldh a, [rIE]                                     ; $4e92: $f0 $ff
	or c                                             ; $4e94: $b1
	rst $38                                          ; $4e95: $ff
	xor a                                            ; $4e96: $af
	rst $38                                          ; $4e97: $ff
	cp a                                             ; $4e98: $bf
	pop af                                           ; $4e99: $f1
	cp a                                             ; $4e9a: $bf

Call_01c_4e9b:
	pop af                                           ; $4e9b: $f1
	ld e, a                                          ; $4e9c: $5f
	di                                               ; $4e9d: $f3
	ld e, l                                          ; $4e9e: $5d
	ld [hl], e                                       ; $4e9f: $73
	sbc h                                            ; $4ea0: $9c
	ld e, [hl]                                       ; $4ea1: $5e
	ld e, $db                                        ; $4ea2: $1e $db
	add b                                            ; $4ea4: $80
	db $ec                                           ; $4ea5: $ec
	ld a, l                                          ; $4ea6: $7d
	xor b                                            ; $4ea7: $a8
	ld a, e                                          ; $4ea8: $7b
	sbc d                                            ; $4ea9: $9a
	ld a, e                                          ; $4eaa: $7b
	ld a, [$d9e0]                                    ; $4eab: $fa $e0 $d9
	ld a, [hl]                                       ; $4eae: $7e
	ld c, $9e                                        ; $4eaf: $0e $9e
	ld a, b                                          ; $4eb1: $78
	ld a, d                                          ; $4eb2: $7a
	inc c                                            ; $4eb3: $0c
	ld a, [hl]                                       ; $4eb4: $7e
	ld [hl+], a                                      ; $4eb5: $22
	ld a, [hl]                                       ; $4eb6: $7e
	ld a, [de]                                       ; $4eb7: $1a
	add b                                            ; $4eb8: $80
	add b                                            ; $4eb9: $80
	ld b, [hl]                                       ; $4eba: $46
	ld a, a                                          ; $4ebb: $7f
	ld c, c                                          ; $4ebc: $49
	ld a, a                                          ; $4ebd: $7f
	sub d                                            ; $4ebe: $92
	rst $38                                          ; $4ebf: $ff
	and d                                            ; $4ec0: $a2
	rst $38                                          ; $4ec1: $ff
	ld h, l                                          ; $4ec2: $65
	ld a, a                                          ; $4ec3: $7f
	push bc                                          ; $4ec4: $c5
	rst $38                                          ; $4ec5: $ff
	rrca                                             ; $4ec6: $0f
	cp $cf                                           ; $4ec7: $fe $cf
	rst $38                                          ; $4ec9: $ff
	ld e, a                                          ; $4eca: $5f
	ld a, l                                          ; $4ecb: $7d
	ld e, a                                          ; $4ecc: $5f
	ld a, a                                          ; $4ecd: $7f
	sbc l                                            ; $4ece: $9d
	rst FarCall                                          ; $4ecf: $f7
	xor a                                            ; $4ed0: $af
	ld a, [$f8af]                                    ; $4ed1: $fa $af $f8
	daa                                              ; $4ed4: $27
	ld a, h                                          ; $4ed5: $7c
	ld [hl+], a                                      ; $4ed6: $22
	dec sp                                           ; $4ed7: $3b
	add b                                            ; $4ed8: $80
	jr nz, jr_01c_4f03                               ; $4ed9: $20 $28

	ld b, h                                          ; $4edb: $44
	rst $38                                          ; $4edc: $ff
	ld [bc], a                                       ; $4edd: $02
	rst $38                                          ; $4ede: $ff
	add hl, hl                                       ; $4edf: $29
	rst $38                                          ; $4ee0: $ff
	dec d                                            ; $4ee1: $15
	rst $38                                          ; $4ee2: $ff
	ld d, h                                          ; $4ee3: $54
	rst $38                                          ; $4ee4: $ff
	ld c, d                                          ; $4ee5: $4a
	rst $38                                          ; $4ee6: $ff
	ld l, l                                          ; $4ee7: $6d
	or a                                             ; $4ee8: $b7
	xor $1f                                          ; $4ee9: $ee $1f
	rst $38                                          ; $4eeb: $ff
	dec de                                           ; $4eec: $1b
	rst $38                                          ; $4eed: $ff
	rrca                                             ; $4eee: $0f
	ei                                               ; $4eef: $fb
	rrca                                             ; $4ef0: $0f
	rst $38                                          ; $4ef1: $ff
	dec b                                            ; $4ef2: $05
	rst $38                                          ; $4ef3: $ff
	sub c                                            ; $4ef4: $91
	cp $63                                           ; $4ef5: $fe $63
	ld a, [$079b]                                    ; $4ef7: $fa $9b $07
	sbc l                                            ; $4efa: $9d
	rst $38                                          ; $4efb: $ff
	adc b                                            ; $4efc: $88
	ld a, c                                          ; $4efd: $79
	ld b, $7f                                        ; $4efe: $06 $7f
	cp $9e                                           ; $4f00: $fe $9e
	inc h                                            ; $4f02: $24

jr_01c_4f03:
	ld a, c                                          ; $4f03: $79
	ld b, $7e                                        ; $4f04: $06 $7e
	and $9e                                          ; $4f06: $e6 $9e
	ld [hl+], a                                      ; $4f08: $22
	ld a, c                                          ; $4f09: $79
	dec bc                                           ; $4f0a: $0b
	rst SubAFromDE                                          ; $4f0b: $df
	cp $9d                                           ; $4f0c: $fe $9d
	ld d, [hl]                                       ; $4f0e: $56
	cp $76                                           ; $4f0f: $fe $76
	jp c, $ec7f                                      ; $4f11: $da $7f $ec

	sub e                                            ; $4f14: $93
	ret z                                            ; $4f15: $c8

	ld hl, sp-$70                                    ; $4f16: $f8 $90
	or b                                             ; $4f18: $b0
	and b                                            ; $4f19: $a0
	and b                                            ; $4f1a: $a0
	ld h, c                                          ; $4f1b: $61
	ld a, a                                          ; $4f1c: $7f
	add hl, sp                                       ; $4f1d: $39
	ld a, $0d                                        ; $4f1e: $3e $0d
	ld c, $77                                        ; $4f20: $0e $77
	ld a, [bc]                                       ; $4f22: $0a
	ld [hl], a                                       ; $4f23: $77
	inc b                                            ; $4f24: $04
	ld d, [hl]                                       ; $4f25: $56
	and b                                            ; $4f26: $a0
	rst SubAFromDE                                          ; $4f27: $df
	rrca                                             ; $4f28: $0f
	ld a, e                                          ; $4f29: $7b
	db $eb                                           ; $4f2a: $eb
	sub c                                            ; $4f2b: $91
	inc b                                            ; $4f2c: $04
	ld d, c                                          ; $4f2d: $51
	cp a                                             ; $4f2e: $bf
	di                                               ; $4f2f: $f3
	rst AddAOntoHL                                          ; $4f30: $ef
	or $0e                                           ; $4f31: $f6 $0e
	and h                                            ; $4f33: $a4
	ld e, h                                          ; $4f34: $5c
	inc b                                            ; $4f35: $04
	db $fc                                           ; $4f36: $fc
	ld hl, sp-$08                                    ; $4f37: $f8 $f8
	inc b                                            ; $4f39: $04
	ld a, e                                          ; $4f3a: $7b
	ret z                                            ; $4f3b: $c8

	ld e, [hl]                                       ; $4f3c: $5e
	and b                                            ; $4f3d: $a0
	sbc c                                            ; $4f3e: $99
	xor $fe                                          ; $4f3f: $ee $fe
	cp h                                             ; $4f41: $bc
	and h                                            ; $4f42: $a4
	cp h                                             ; $4f43: $bc
	and h                                            ; $4f44: $a4
	pop hl                                           ; $4f45: $e1
	ld a, a                                          ; $4f46: $7f
	cp [hl]                                          ; $4f47: $be
	sub c                                            ; $4f48: $91
	ld c, $0d                                        ; $4f49: $0e $0d
	rrca                                             ; $4f4b: $0f
	add hl, bc                                       ; $4f4c: $09
	rra                                              ; $4f4d: $1f
	rra                                              ; $4f4e: $1f
	ccf                                              ; $4f4f: $3f
	ld sp, $3f3f                                     ; $4f50: $31 $3f $3f
	ld [hl], a                                       ; $4f53: $77
	ld l, a                                          ; $4f54: $6f
	ld a, a                                          ; $4f55: $7f
	ld a, a                                          ; $4f56: $7f
	ld c, h                                          ; $4f57: $4c
	jp nz, $93ff                                     ; $4f58: $c2 $ff $93

	cp $46                                           ; $4f5b: $fe $46
	xor $f2                                          ; $4f5d: $ee $f2
	cp a                                             ; $4f5f: $bf
	or e                                             ; $4f60: $b3
	rra                                              ; $4f61: $1f
	rra                                              ; $4f62: $1f
	rrca                                             ; $4f63: $0f
	ld [$0f0f], sp                                   ; $4f64: $08 $0f $0f
	ld a, e                                          ; $4f67: $7b
	sub $7f                                          ; $4f68: $d6 $7f
	ld b, [hl]                                       ; $4f6a: $46
	ld b, c                                          ; $4f6b: $41
	adc $5c                                          ; $4f6c: $ce $5c
	cp [hl]                                          ; $4f6e: $be
	db $dd                                           ; $4f6f: $dd
	ldh [$df], a                                     ; $4f70: $e0 $df
	cp $42                                           ; $4f72: $fe $42
	and e                                            ; $4f74: $a3
	sbc h                                            ; $4f75: $9c
	ld bc, $0302                                     ; $4f76: $01 $02 $03
	ld [hl], a                                       ; $4f79: $77
	cp $77                                           ; $4f7a: $fe $77
	inc a                                            ; $4f7c: $3c
	ld a, a                                          ; $4f7d: $7f
	cp $97                                           ; $4f7e: $fe $97
	inc c                                            ; $4f80: $0c
	rrca                                             ; $4f81: $0f
	rrca                                             ; $4f82: $0f
	dec bc                                           ; $4f83: $0b
	rrca                                             ; $4f84: $0f
	add hl, bc                                       ; $4f85: $09
	rlca                                             ; $4f86: $07
	rlca                                             ; $4f87: $07
	reti                                             ; $4f88: $d9


	ld bc, $9892                                     ; $4f89: $01 $92 $98
	rst SubAFromBC                                          ; $4f8c: $e7
	add c                                            ; $4f8d: $81
	rst $38                                          ; $4f8e: $ff
	rst SubAFromBC                                          ; $4f8f: $e7
	rst $38                                          ; $4f90: $ff
	cp [hl]                                          ; $4f91: $be
	reti                                             ; $4f92: $d9


	cp [hl]                                          ; $4f93: $be
	pop bc                                           ; $4f94: $c1
	sub h                                            ; $4f95: $94
	db $eb                                           ; $4f96: $eb
	add c                                            ; $4f97: $81
	sbc $ff                                          ; $4f98: $de $ff
	sbc [hl]                                         ; $4f9a: $9e
	xor d                                            ; $4f9b: $aa
	ld [hl], e                                       ; $4f9c: $73
	cp $77                                           ; $4f9d: $fe $77
	ld b, b                                          ; $4f9f: $40
	sbc [hl]                                         ; $4fa0: $9e

jr_01c_4fa1:
	ret                                              ; $4fa1: $c9


	ld [hl], e                                       ; $4fa2: $73
	cp $98                                           ; $4fa3: $fe $98
	ld b, b                                          ; $4fa5: $40
	ret nz                                           ; $4fa6: $c0

	and b                                            ; $4fa7: $a0
	ldh [rAUD1SWEEP], a                              ; $4fa8: $e0 $10
	ldh a, [$08]                                     ; $4faa: $f0 $08
	ld a, e                                          ; $4fac: $7b
	inc h                                            ; $4fad: $24
	adc h                                            ; $4fae: $8c
	add [hl]                                         ; $4faf: $86
	cp $82                                           ; $4fb0: $fe $82
	cp $c2                                           ; $4fb2: $fe $c2
	cp $cc                                           ; $4fb4: $fe $cc
	db $fc                                           ; $4fb6: $fc
	cp $f2                                           ; $4fb7: $fe $f2
	ld a, [hl]                                       ; $4fb9: $7e
	ldh [c], a                                       ; $4fba: $e2
	ld e, [hl]                                       ; $4fbb: $5e
	jp nc, $cc4c                                     ; $4fbc: $d2 $4c $cc

	jr nz, jr_01c_4fa1                               ; $4fbf: $20 $e0

	jr nz, jr_01c_503b                               ; $4fc1: $20 $78

	ld d, h                                          ; $4fc3: $54
	add hl, sp                                       ; $4fc4: $39
	ld l, [hl]                                       ; $4fc5: $6e
	ld d, c                                          ; $4fc6: $51
	ld d, d                                          ; $4fc7: $52
	rst SubAFromDE                                          ; $4fc8: $df
	rst $38                                          ; $4fc9: $ff
	adc a                                            ; $4fca: $8f
	ld a, h                                          ; $4fcb: $7c
	ld c, h                                          ; $4fcc: $4c
	ld a, [hl]                                       ; $4fcd: $7e
	ld b, [hl]                                       ; $4fce: $46
	ld l, $36                                        ; $4fcf: $2e $36
	ccf                                              ; $4fd1: $3f
	cpl                                              ; $4fd2: $2f
	ccf                                              ; $4fd3: $3f
	inc sp                                           ; $4fd4: $33
	ccf                                              ; $4fd5: $3f
	daa                                              ; $4fd6: $27
	ld a, a                                          ; $4fd7: $7f
	ld a, a                                          ; $4fd8: $7f
	rst SubAFromDE                                          ; $4fd9: $df
	cp a                                             ; $4fda: $bf
	db $dd                                           ; $4fdb: $dd
	rst $38                                          ; $4fdc: $ff
	rra                                              ; $4fdd: $1f
	inc a                                            ; $4fde: $3c
	rst SubAFromDE                                          ; $4fdf: $df
	ret nz                                           ; $4fe0: $c0

	rst SubAFromDE                                          ; $4fe1: $df
	add b                                            ; $4fe2: $80
	dec e                                            ; $4fe3: $1d
	ld [hl], d                                       ; $4fe4: $72
	ldh [$7d], a                                     ; $4fe5: $e0 $7d
	rst SubAFromDE                                          ; $4fe7: $df
	rlca                                             ; $4fe8: $07
	ld c, [hl]                                       ; $4fe9: $4e
	ld b, b                                          ; $4fea: $40
	sbc [hl]                                         ; $4feb: $9e
	dec c                                            ; $4fec: $0d
	ld a, d                                          ; $4fed: $7a
	or b                                             ; $4fee: $b0
	sbc e                                            ; $4fef: $9b
	rra                                              ; $4ff0: $1f
	rla                                              ; $4ff1: $17
	rra                                              ; $4ff2: $1f
	ld de, $3c7a                                     ; $4ff3: $11 $7a $3c
	sbc d                                            ; $4ff6: $9a
	ccf                                              ; $4ff7: $3f
	ld l, a                                          ; $4ff8: $6f
	ld e, a                                          ; $4ff9: $5f
	ld a, [hl]                                       ; $4ffa: $7e
	ld a, [hl]                                       ; $4ffb: $7e
	ld c, a                                          ; $4ffc: $4f
	ld [hl+], a                                      ; $4ffd: $22
	sub a                                            ; $4ffe: $97
	cp [hl]                                          ; $4fff: $be
	and d                                            ; $5000: $a2
	ld d, $1a                                        ; $5001: $16 $1a
	rra                                              ; $5003: $1f
	inc de                                           ; $5004: $13
	rrca                                             ; $5005: $0f
	dec c                                            ; $5006: $0d
	halt                                             ; $5007: $76
	ld b, b                                          ; $5008: $40
	halt                                             ; $5009: $76
	ld a, $df                                        ; $500a: $3e $df
	rlca                                             ; $500c: $07
	cpl                                              ; $500d: $2f
	ld [bc], a                                       ; $500e: $02
	db $dd                                           ; $500f: $dd
	add b                                            ; $5010: $80
	ld l, [hl]                                       ; $5011: $6e
	ld a, $df                                        ; $5012: $3e $df
	ld hl, sp-$0b                                    ; $5014: $f8 $f5
	ldh a, [c]                                       ; $5016: $f2
	ld [bc], a                                       ; $5017: $02
	db $ed                                           ; $5018: $ed
	rst SubAFromDE                                          ; $5019: $df

jr_01c_501a:
	ld bc, $0695                                     ; $501a: $01 $95 $06
	rlca                                             ; $501d: $07
	add hl, bc                                       ; $501e: $09
	rrca                                             ; $501f: $0f
	ld d, $1f                                        ; $5020: $16 $1f
	dec sp                                           ; $5022: $3b
	ccf                                              ; $5023: $3f
	inc [hl]                                         ; $5024: $34
	ccf                                              ; $5025: $3f
	db $ed                                           ; $5026: $ed
	rst SubAFromDE                                          ; $5027: $df
	rst AddAOntoHL                                          ; $5028: $ef
	sub l                                            ; $5029: $95
	jr nc, @+$01                                     ; $502a: $30 $ff

	sbc $ff                                          ; $502c: $de $ff
	ld hl, $bcff                                     ; $502e: $21 $ff $bc
	rst $38                                          ; $5031: $ff
	ld b, d                                          ; $5032: $42
	rst $38                                          ; $5033: $ff
	db $eb                                           ; $5034: $eb
	rst SubAFromDE                                          ; $5035: $df
	ret nz                                           ; $5036: $c0

	sub a                                            ; $5037: $97
	jr nz, jr_01c_501a                               ; $5038: $20 $e0

	sub b                                            ; $503a: $90

jr_01c_503b:
	ldh a, [$50]                                     ; $503b: $f0 $50
	ldh a, [$28]                                     ; $503d: $f0 $28
	ld hl, sp+$03                                    ; $503f: $f8 $03
	and b                                            ; $5041: $a0
	inc bc                                           ; $5042: $03
	and b                                            ; $5043: $a0
	inc bc                                           ; $5044: $03
	and b                                            ; $5045: $a0
	inc hl                                           ; $5046: $23
	sbc [hl]                                         ; $5047: $9e
	sbc [hl]                                         ; $5048: $9e
	inc d                                            ; $5049: $14
	ld a, e                                          ; $504a: $7b
	sbc [hl]                                         ; $504b: $9e
	db $eb                                           ; $504c: $eb
	rst SubAFromDE                                          ; $504d: $df
	rst AddAOntoHL                                          ; $504e: $ef
	sbc [hl]                                         ; $504f: $9e
	db $10                                           ; $5050: $10
	ld l, e                                          ; $5051: $6b
	sbc [hl]                                         ; $5052: $9e
	jp hl                                            ; $5053: $e9


	ld h, a                                          ; $5054: $67
	sbc [hl]                                         ; $5055: $9e
	add b                                            ; $5056: $80
	ld l, b                                          ; $5057: $68
	ld a, a                                          ; $5058: $7f
	ld d, b                                          ; $5059: $50
	ld a, a                                          ; $505a: $7f
	ld h, b                                          ; $505b: $60
	ld a, a                                          ; $505c: $7f
	ld b, d                                          ; $505d: $42
	ld a, a                                          ; $505e: $7f
	ld d, d                                          ; $505f: $52
	ld a, a                                          ; $5060: $7f
	and h                                            ; $5061: $a4
	rst $38                                          ; $5062: $ff
	ld c, l                                          ; $5063: $4d
	ld a, a                                          ; $5064: $7f
	sbc a                                            ; $5065: $9f
	cp $ff                                           ; $5066: $fe $ff
	rst FarCall                                          ; $5068: $f7
	rra                                              ; $5069: $1f
	dec e                                            ; $506a: $1d
	rra                                              ; $506b: $1f
	rla                                              ; $506c: $17
	inc e                                            ; $506d: $1c
	rra                                              ; $506e: $1f
	cpl                                              ; $506f: $2f
	jr c, jr_01c_50a9                                ; $5070: $38 $37

	inc a                                            ; $5072: $3c
	ld a, [hl+]                                      ; $5073: $2a
	dec sp                                           ; $5074: $3b
	ld a, c                                          ; $5075: $79
	sbc e                                            ; $5076: $9b
	ld a, c                                          ; $5077: $79
	ld bc, $00ff                                     ; $5078: $01 $ff $00
	ld a, e                                          ; $507b: $7b
	cp $9e                                           ; $507c: $fe $9e
	ld b, b                                          ; $507e: $40
	ld a, e                                          ; $507f: $7b
	ld d, [hl]                                       ; $5080: $56
	add b                                            ; $5081: $80
	jp hl                                            ; $5082: $e9


	cp a                                             ; $5083: $bf
	db $e4                                           ; $5084: $e4
	ccf                                              ; $5085: $3f
	or $1b                                           ; $5086: $f6 $1b
	rst $38                                          ; $5088: $ff
	rrca                                             ; $5089: $0f
	rst $38                                          ; $508a: $ff
	dec de                                           ; $508b: $1b
	rst $38                                          ; $508c: $ff
	ld c, $f3                                        ; $508d: $0e $f3
	ld c, $7f                                        ; $508f: $0e $7f
	and b                                            ; $5091: $a0

jr_01c_5092:
	ld e, [hl]                                       ; $5092: $5e
	pop hl                                           ; $5093: $e1
	ei                                               ; $5094: $fb
	rlca                                             ; $5095: $07
	sbc h                                            ; $5096: $9c
	db $fc                                           ; $5097: $fc
	jr jr_01c_5092                                   ; $5098: $18 $f8

	adc h                                            ; $509a: $8c
	db $fc                                           ; $509b: $fc
	ld b, h                                          ; $509c: $44
	db $fc                                           ; $509d: $fc
	ld a, h                                          ; $509e: $7c
	db $fc                                           ; $509f: $fc
	inc h                                            ; $50a0: $24
	ld a, e                                          ; $50a1: $7b
	cp $9e                                           ; $50a2: $fe $9e
	sub h                                            ; $50a4: $94
	ld a, e                                          ; $50a5: $7b
	ld hl, sp-$71                                    ; $50a6: $f8 $8f
	ld l, h                                          ; $50a8: $6c

jr_01c_50a9:
	db $fc                                           ; $50a9: $fc
	db $ec                                           ; $50aa: $ec
	cp h                                             ; $50ab: $bc
	db $f4                                           ; $50ac: $f4
	inc a                                            ; $50ad: $3c
	db $ec                                           ; $50ae: $ec
	ld a, h                                          ; $50af: $7c
	db $f4                                           ; $50b0: $f4
	db $fc                                           ; $50b1: $fc
	xor d                                            ; $50b2: $aa
	cp [hl]                                          ; $50b3: $be
	ld e, $1e                                        ; $50b4: $1e $1e
	add hl, bc                                       ; $50b6: $09
	rrca                                             ; $50b7: $0f
	rst FarCall                                          ; $50b8: $f7
	sbc h                                            ; $50b9: $9c
	inc c                                            ; $50ba: $0c
	nop                                              ; $50bb: $00
	ld e, $7b                                        ; $50bc: $1e $7b
	cp $7f                                           ; $50be: $fe $7f
	ld a, [$9eff]                                    ; $50c0: $fa $ff $9e
	ld b, $7b                                        ; $50c3: $06 $7b
	cp $f9                                           ; $50c5: $fe $f9
	ld b, e                                          ; $50c7: $43
	add b                                            ; $50c8: $80
	sub b                                            ; $50c9: $90
	ldh a, [$1f]                                     ; $50ca: $f0 $1f
	add hl, de                                       ; $50cc: $19
	ld d, $1f                                        ; $50cd: $16 $1f
	ccf                                              ; $50cf: $3f
	jr c, jr_01c_5101                                ; $50d0: $38 $2f

	jr c, jr_01c_5133                                ; $50d2: $38 $5f

	ld a, h                                          ; $50d4: $7c
	ld l, d                                          ; $50d5: $6a
	ld a, e                                          ; $50d6: $7b
	sub c                                            ; $50d7: $91
	pop af                                           ; $50d8: $f1
	ld b, e                                          ; $50d9: $43
	add b                                            ; $50da: $80
	ld a, a                                          ; $50db: $7f
	rst AddAOntoHL                                          ; $50dc: $ef
	sbc h                                            ; $50dd: $9c
	add hl, bc                                       ; $50de: $09
	or $0f                                           ; $50df: $f6 $0f
	ld [hl], a                                       ; $50e1: $77
	db $eb                                           ; $50e2: $eb
	sbc l                                            ; $50e3: $9d
	ld a, [hl]                                       ; $50e4: $7e
	pop bc                                           ; $50e5: $c1
	inc bc                                           ; $50e6: $03
	add b                                            ; $50e7: $80
	ld [hl], e                                       ; $50e8: $73
	add b                                            ; $50e9: $80
	sbc h                                            ; $50ea: $9c
	jr jr_01c_50ed                                   ; $50eb: $18 $00

jr_01c_50ed:
	inc h                                            ; $50ed: $24
	ld a, e                                          ; $50ee: $7b
	cp $7f                                           ; $50ef: $fe $7f
	ld a, [$7c6f]                                    ; $50f1: $fa $6f $7c
	ld [hl], a                                       ; $50f4: $77
	add b                                            ; $50f5: $80
	push af                                          ; $50f6: $f5
	sbc e                                            ; $50f7: $9b
	ld a, [hl+]                                      ; $50f8: $2a
	ccf                                              ; $50f9: $3f
	ld [hl], h                                       ; $50fa: $74
	ld a, a                                          ; $50fb: $7f
	ld l, a                                          ; $50fc: $6f
	ld a, h                                          ; $50fd: $7c
	adc b                                            ; $50fe: $88
	ld b, b                                          ; $50ff: $40
	ld a, a                                          ; $5100: $7f

jr_01c_5101:
	sub d                                            ; $5101: $92
	rst $38                                          ; $5102: $ff
	inc h                                            ; $5103: $24
	rst $38                                          ; $5104: $ff
	rst GetHLinHL                                          ; $5105: $cf
	rst $38                                          ; $5106: $ff
	sbc a                                            ; $5107: $9f
	db $fc                                           ; $5108: $fc
	ld [hl], a                                       ; $5109: $77
	ld a, c                                          ; $510a: $79
	ld e, [hl]                                       ; $510b: $5e
	ld a, a                                          ; $510c: $7f
	cpl                                              ; $510d: $2f
	jr c, jr_01c_516b                                ; $510e: $38 $5b

	ld a, h                                          ; $5110: $7c
	or l                                             ; $5111: $b5
	or $93                                           ; $5112: $f6 $93
	di                                               ; $5114: $f3
	ld b, d                                          ; $5115: $42
	ld a, e                                          ; $5116: $7b
	adc a                                            ; $5117: $8f
	ld [hl], a                                       ; $5118: $77
	ld a, [hl]                                       ; $5119: $7e
	ld [hl], a                                       ; $511a: $77
	ld a, h                                          ; $511b: $7c
	sub a                                            ; $511c: $97
	ld b, c                                          ; $511d: $41
	rst $38                                          ; $511e: $ff
	db $e4                                           ; $511f: $e4
	cp a                                             ; $5120: $bf
	ldh a, [c]                                       ; $5121: $f2
	rra                                              ; $5122: $1f
	rst $38                                          ; $5123: $ff
	dec b                                            ; $5124: $05
	ld l, a                                          ; $5125: $6f
	ld a, [hl]                                       ; $5126: $7e
	sub a                                            ; $5127: $97

jr_01c_5128:
	cp $01                                           ; $5128: $fe $01
	ld a, l                                          ; $512a: $7d
	jp $9e66                                         ; $512b: $c3 $66 $9e


	jr c, jr_01c_5128                                ; $512e: $38 $f8

	ld c, a                                          ; $5130: $4f
	ld a, [hl]                                       ; $5131: $7e
	sbc h                                            ; $5132: $9c

jr_01c_5133:
	ld c, h                                          ; $5133: $4c
	db $fc                                           ; $5134: $fc
	ld [hl], h                                       ; $5135: $74
	ld [hl], e                                       ; $5136: $73
	ld a, [hl]                                       ; $5137: $7e
	sub b                                            ; $5138: $90
	ld a, d                                          ; $5139: $7a
	cp $95                                           ; $513a: $fe $95
	sbc a                                            ; $513c: $9f
	rrca                                             ; $513d: $0f
	rrca                                             ; $513e: $0f
	add hl, bc                                       ; $513f: $09
	rrca                                             ; $5140: $0f
	ld c, [hl]                                       ; $5141: $4e
	ld a, [hl]                                       ; $5142: $7e
	inc sp                                           ; $5143: $33
	inc sp                                           ; $5144: $33
	ld b, $06                                        ; $5145: $06 $06
	rlca                                             ; $5147: $07
	ld a, e                                          ; $5148: $7b
	cp $dd                                           ; $5149: $fe $dd
	ld b, $df                                        ; $514b: $06 $df
	inc bc                                           ; $514d: $03
	db $dd                                           ; $514e: $dd
	ld [bc], a                                       ; $514f: $02
	rst SubAFromDE                                          ; $5150: $df
	ld bc, $05d7                                     ; $5151: $01 $d7 $05
	add h                                            ; $5154: $84
	ld h, e                                          ; $5155: $63
	sbc a                                            ; $5156: $9f
	ld b, $ff                                        ; $5157: $06 $ff
	cp b                                             ; $5159: $b8
	rst $38                                          ; $515a: $ff
	ldh a, [rVBK]                                    ; $515b: $f0 $4f
	db $f4                                           ; $515d: $f4
	rrca                                             ; $515e: $0f
	and h                                            ; $515f: $a4
	ld e, a                                          ; $5160: $5f

jr_01c_5161:
	inc b                                            ; $5161: $04
	rst $38                                          ; $5162: $ff
	db $fc                                           ; $5163: $fc
	rst $38                                          ; $5164: $ff
	ld d, [hl]                                       ; $5165: $56
	rst $38                                          ; $5166: $ff
	ld d, a                                          ; $5167: $57
	rst $38                                          ; $5168: $ff
	ld d, a                                          ; $5169: $57
	db $fc                                           ; $516a: $fc

jr_01c_516b:
	ld c, a                                          ; $516b: $4f
	db $fc                                           ; $516c: $fc
	dec hl                                           ; $516d: $2b
	cp $29                                           ; $516e: $fe $29
	ld a, e                                          ; $5170: $7b
	ld [hl], d                                       ; $5171: $72
	sub e                                            ; $5172: $93
	daa                                              ; $5173: $27
	rst $38                                          ; $5174: $ff
	add hl, bc                                       ; $5175: $09
	rrca                                             ; $5176: $0f
	add [hl]                                         ; $5177: $86
	add [hl]                                         ; $5178: $86
	ret nz                                           ; $5179: $c0

	ret nz                                           ; $517a: $c0

	ld b, b                                          ; $517b: $40
	ld b, b                                          ; $517c: $40
	ld h, b                                          ; $517d: $60
	ld h, b                                          ; $517e: $60
	db $db                                           ; $517f: $db
	jr nz, jr_01c_5161                               ; $5180: $20 $df

	ld b, b                                          ; $5182: $40
	sbc $c0                                          ; $5183: $de $c0
	ld a, a                                          ; $5185: $7f
	db $fc                                           ; $5186: $fc
	ld [hl], a                                       ; $5187: $77
	ld a, [$c094]                                    ; $5188: $fa $94 $c0
	add b                                            ; $518b: $80
	add b                                            ; $518c: $80
	nop                                              ; $518d: $00
	nop                                              ; $518e: $00
	ld [hl], d                                       ; $518f: $72
	ld [hl], d                                       ; $5190: $72
	dec b                                            ; $5191: $05
	dec b                                            ; $5192: $05
	inc b                                            ; $5193: $04
	inc b                                            ; $5194: $04
	reti                                             ; $5195: $d9


	ld [$0cdf], sp                                   ; $5196: $08 $df $0c
	rst SubAFromDE                                          ; $5199: $df
	rlca                                             ; $519a: $07
	ld l, a                                          ; $519b: $6f
	sbc h                                            ; $519c: $9c
	rst SubAFromDE                                          ; $519d: $df
	ld [bc], a                                       ; $519e: $02
	db $db                                           ; $519f: $db
	dec b                                            ; $51a0: $05
	adc b                                            ; $51a1: $88
	ld h, d                                          ; $51a2: $62
	sbc [hl]                                         ; $51a3: $9e
	dec b                                            ; $51a4: $05
	rst $38                                          ; $51a5: $ff
	sbc b                                            ; $51a6: $98
	rst $38                                          ; $51a7: $ff
	ld hl, sp-$11                                    ; $51a8: $f8 $ef
	ld hl, sp-$71                                    ; $51aa: $f8 $8f
	xor b                                            ; $51ac: $a8
	rst SubAFromDE                                          ; $51ad: $df
	ld d, b                                          ; $51ae: $50
	rst $38                                          ; $51af: $ff
	ld hl, sp-$01                                    ; $51b0: $f8 $ff
	db $fd                                           ; $51b2: $fd
	daa                                              ; $51b3: $27
	rst $38                                          ; $51b4: $ff
	daa                                              ; $51b5: $27
	ld a, [$aafe]                                    ; $51b6: $fa $fe $aa
	ld a, e                                          ; $51b9: $7b
	cp $9d                                           ; $51ba: $fe $9d
	dec h                                            ; $51bc: $25
	rst $38                                          ; $51bd: $ff
	ld [hl], a                                       ; $51be: $77
	cp $df                                           ; $51bf: $fe $df
	ld b, $ff                                        ; $51c1: $06 $ff
	db $d3                                           ; $51c3: $d3
	add b                                            ; $51c4: $80
	di                                               ; $51c5: $f3
	sbc c                                            ; $51c6: $99
	sub [hl]                                         ; $51c7: $96
	or $65                                           ; $51c8: $f6 $65
	ld h, l                                          ; $51ca: $65
	inc c                                            ; $51cb: $0c
	inc c                                            ; $51cc: $0c
	reti                                             ; $51cd: $d9


	ld [$04df], sp                                   ; $51ce: $08 $df $04
	db $dd                                           ; $51d1: $dd
	inc bc                                           ; $51d2: $03
	ld d, a                                          ; $51d3: $57
	and b                                            ; $51d4: $a0
	ld a, a                                          ; $51d5: $7f
	ld b, b                                          ; $51d6: $40
	ld b, a                                          ; $51d7: $47
	and b                                            ; $51d8: $a0
	sbc l                                            ; $51d9: $9d
	cp $26                                           ; $51da: $fe $26
	ld d, a                                          ; $51dc: $57
	and b                                            ; $51dd: $a0
	ld [hl], a                                       ; $51de: $77
	ld b, b                                          ; $51df: $40
	rra                                              ; $51e0: $1f
	and d                                            ; $51e1: $a2
	ld [hl], l                                       ; $51e2: $75
	dec [hl]                                         ; $51e3: $35
	sbc c                                            ; $51e4: $99
	nop                                              ; $51e5: $00
	ld [bc], a                                       ; $51e6: $02
	nop                                              ; $51e7: $00
	inc bc                                           ; $51e8: $03
	nop                                              ; $51e9: $00
	rlca                                             ; $51ea: $07
	ld l, e                                          ; $51eb: $6b
	cp $7f                                           ; $51ec: $fe $7f
	or $6f                                           ; $51ee: $f6 $6f
	db $ec                                           ; $51f0: $ec
	ld [hl], a                                       ; $51f1: $77
	cp $7f                                           ; $51f2: $fe $7f
	add sp, $77                                      ; $51f4: $e8 $77
	cp $39                                           ; $51f6: $fe $39
	inc b                                            ; $51f8: $04
	push af                                          ; $51f9: $f5
	rst SubAFromDE                                          ; $51fa: $df
	rlca                                             ; $51fb: $07
	sbc [hl]                                         ; $51fc: $9e
	inc b                                            ; $51fd: $04
	ld a, e                                          ; $51fe: $7b
	db $fd                                           ; $51ff: $fd
	ld a, [hl]                                       ; $5200: $7e
	sub a                                            ; $5201: $97
	sub h                                            ; $5202: $94
	rst AddAOntoHL                                          ; $5203: $ef
	db $ed                                           ; $5204: $ed
	rst SubAFromDE                                          ; $5205: $df
	or e                                             ; $5206: $b3
	rst $38                                          ; $5207: $ff
	db $fd                                           ; $5208: $fd
	ld a, [hl]                                       ; $5209: $7e
	ld a, [hl]                                       ; $520a: $7e
	ld a, $3e                                        ; $520b: $3e $3e
	rst $38                                          ; $520d: $ff
	ld d, c                                          ; $520e: $51
	inc c                                            ; $520f: $0c
	ld a, a                                          ; $5210: $7f
	ld [hl], h                                       ; $5211: $74
	sbc b                                            ; $5212: $98
	cp a                                             ; $5213: $bf
	or c                                             ; $5214: $b1
	sbc a                                            ; $5215: $9f
	sbc b                                            ; $5216: $98
	rrca                                             ; $5217: $0f
	inc c                                            ; $5218: $0c
	rlca                                             ; $5219: $07
	ld a, d                                          ; $521a: $7a
	add h                                            ; $521b: $84
	ld a, a                                          ; $521c: $7f
	ld b, a                                          ; $521d: $47
	rst SubAFromDE                                          ; $521e: $df
	inc bc                                           ; $521f: $03
	sbc d                                            ; $5220: $9a
	ld b, $05                                        ; $5221: $06 $05
	rst $38                                          ; $5223: $ff
	rst $38                                          ; $5224: $ff
	rrca                                             ; $5225: $0f
	ld e, c                                          ; $5226: $59
	ld l, d                                          ; $5227: $6a
	db $fd                                           ; $5228: $fd
	rst SubAFromDE                                          ; $5229: $df
	add b                                            ; $522a: $80
	ld a, [hl]                                       ; $522b: $7e
	or b                                             ; $522c: $b0
	sbc c                                            ; $522d: $99
	ldh [$60], a                                     ; $522e: $e0 $60
	ldh [$a0], a                                     ; $5230: $e0 $a0
	ldh a, [rSVBK]                                   ; $5232: $f0 $70
	db $dd                                           ; $5234: $dd
	ldh a, [$df]                                     ; $5235: $f0 $df
	ldh [$df], a                                     ; $5237: $e0 $df
	ld hl, sp-$09                                    ; $5239: $f8 $f7
	rst SubAFromDE                                          ; $523b: $df
	inc bc                                           ; $523c: $03
	db $dd                                           ; $523d: $dd
	ld bc, $f25f                                     ; $523e: $01 $5f $f2
	ld [hl], a                                       ; $5241: $77
	sub c                                            ; $5242: $91
	rst SubAFromDE                                          ; $5243: $df
	ccf                                              ; $5244: $3f
	rst FarCall                                          ; $5245: $f7
	rst SubAFromDE                                          ; $5246: $df
	cp $76                                           ; $5247: $fe $76
	rlca                                             ; $5249: $07
	sbc e                                            ; $524a: $9b
	or [hl]                                          ; $524b: $b6
	jp c, $92fe                                      ; $524c: $da $fe $92

	sbc $fe                                          ; $524f: $de $fe
	ld a, e                                          ; $5251: $7b
	db $fc                                           ; $5252: $fc
	ld a, c                                          ; $5253: $79
	cp a                                             ; $5254: $bf
	sbc $ff                                          ; $5255: $de $ff
	db $e3                                           ; $5257: $e3
	rst SubAFromDE                                          ; $5258: $df
	ldh [$f7], a                                     ; $5259: $e0 $f7
	ld a, [hl]                                       ; $525b: $7e
	ldh [$df], a                                     ; $525c: $e0 $df
	ld b, $db                                        ; $525e: $06 $db
	ld bc, $02db                                     ; $5260: $01 $db $02
	ld a, c                                          ; $5263: $79
	call nc, $059d                                   ; $5264: $d4 $9d $05
	rlca                                             ; $5267: $07
	ld a, d                                          ; $5268: $7a
	sbc d                                            ; $5269: $9a
	ld sp, hl                                        ; $526a: $f9
	adc h                                            ; $526b: $8c
	adc [hl]                                         ; $526c: $8e
	pop af                                           ; $526d: $f1
	ret nz                                           ; $526e: $c0

	rst $38                                          ; $526f: $ff
	inc sp                                           ; $5270: $33
	rst $38                                          ; $5271: $ff
	ld e, a                                          ; $5272: $5f
	db $ec                                           ; $5273: $ec
	ld e, a                                          ; $5274: $5f
	ldh [rWY], a                                     ; $5275: $e0 $4a
	push af                                          ; $5277: $f5
	ld b, b                                          ; $5278: $40
	rst $38                                          ; $5279: $ff
	ld a, a                                          ; $527a: $7f
	rst $38                                          ; $527b: $ff
	ld d, l                                          ; $527c: $55
	rst $38                                          ; $527d: $ff
	push de                                          ; $527e: $d5
	ld a, e                                          ; $527f: $7b
	cp $9c                                           ; $5280: $fe $9c
	and l                                            ; $5282: $a5
	rst $38                                          ; $5283: $ff
	and h                                            ; $5284: $a4
	ld l, e                                          ; $5285: $6b
	cp $df                                           ; $5286: $fe $df
	ld hl, $50df                                     ; $5288: $21 $df $50
	rst SubAFromDE                                          ; $528b: $df
	adc b                                            ; $528c: $88
	rst SubAFromDE                                          ; $528d: $df
	inc b                                            ; $528e: $04
	rst SubAFromDE                                          ; $528f: $df
	ld [bc], a                                       ; $5290: $02
	rst SubAFromDE                                          ; $5291: $df
	ld b, d                                          ; $5292: $42
	rst SubAFromDE                                          ; $5293: $df
	pop bc                                           ; $5294: $c1
	rst SubAFromDE                                          ; $5295: $df
	pop hl                                           ; $5296: $e1
	rst SubAFromDE                                          ; $5297: $df
	ld h, [hl]                                       ; $5298: $66
	sub a                                            ; $5299: $97
	ld a, a                                          ; $529a: $7f
	ld a, c                                          ; $529b: $79
	ccf                                              ; $529c: $3f
	ld sp, $292f                                     ; $529d: $31 $2f $29
	and [hl]                                         ; $52a0: $a6
	and [hl]                                         ; $52a1: $a6
	db $dd                                           ; $52a2: $dd
	sub b                                            ; $52a3: $90
	rst SubAFromDE                                          ; $52a4: $df
	ldh [$9b], a                                     ; $52a5: $e0 $9b
	jr nz, @-$1e                                     ; $52a7: $20 $e0

	ret nz                                           ; $52a9: $c0

	ret nz                                           ; $52aa: $c0

	push hl                                          ; $52ab: $e5
	rst SubAFromDE                                          ; $52ac: $df
	ld a, a                                          ; $52ad: $7f
	adc e                                            ; $52ae: $8b
	ld a, $26                                        ; $52af: $3e $26
	ccf                                              ; $52b1: $3f
	inc hl                                           ; $52b2: $23
	rla                                              ; $52b3: $17
	dec de                                           ; $52b4: $1b
	rra                                              ; $52b5: $1f
	rla                                              ; $52b6: $17
	rra                                              ; $52b7: $1f
	add hl, de                                       ; $52b8: $19
	rra                                              ; $52b9: $1f
	inc de                                           ; $52ba: $13
	ccf                                              ; $52bb: $3f
	ccf                                              ; $52bc: $3f
	ld l, a                                          ; $52bd: $6f
	ld e, a                                          ; $52be: $5f
	rst $38                                          ; $52bf: $ff
	rst $38                                          ; $52c0: $ff
	ld a, a                                          ; $52c1: $7f
	ld a, a                                          ; $52c2: $7f
	ld d, [hl]                                       ; $52c3: $56
	db $e4                                           ; $52c4: $e4
	ld h, a                                          ; $52c5: $67
	ld hl, sp+$7a                                    ; $52c6: $f8 $7a
	jp c, $c09e                                      ; $52c8: $da $9e $c0

	db $dd                                           ; $52cb: $dd
	ldh [$df], a                                     ; $52cc: $e0 $df
	ret nz                                           ; $52ce: $c0

	ld d, [hl]                                       ; $52cf: $56
	ldh [$e0], a                                     ; $52d0: $e0 $e0
	ldh [$7f], a                                     ; $52d2: $e0 $7f
	add d                                            ; $52d4: $82
	adc [hl]                                         ; $52d5: $8e
	and b                                            ; $52d6: $a0
	nop                                              ; $52d7: $00
	ld [hl], b                                       ; $52d8: $70
	nop                                              ; $52d9: $00
	ld hl, sp+$00                                    ; $52da: $f8 $00
	db $fc                                           ; $52dc: $fc
	nop                                              ; $52dd: $00
	cp h                                             ; $52de: $bc
	nop                                              ; $52df: $00
	ld a, $00                                        ; $52e0: $3e $00
	ld e, $00                                        ; $52e2: $1e $00
	sbc b                                            ; $52e4: $98
	nop                                              ; $52e5: $00
	add b                                            ; $52e6: $80
	ld a, e                                          ; $52e7: $7b
	db $ec                                           ; $52e8: $ec
	ld a, a                                          ; $52e9: $7f
	cp $9c                                           ; $52ea: $fe $9c
	ld b, b                                          ; $52ec: $40
	nop                                              ; $52ed: $00
	ld h, b                                          ; $52ee: $60
	ld a, e                                          ; $52ef: $7b
	cp $4d                                           ; $52f0: $fe $4d
	or $6f                                           ; $52f2: $f6 $6f
	cp $ed                                           ; $52f4: $fe $ed
	ld a, a                                          ; $52f6: $7f
	call z, $ca6f                                    ; $52f7: $cc $6f $ca
	ld a, a                                          ; $52fa: $7f
	cp $45                                           ; $52fb: $fe $45
	cp [hl]                                          ; $52fd: $be
	ld [hl], a                                       ; $52fe: $77
	ret nc                                           ; $52ff: $d0

	ld l, a                                          ; $5300: $6f
	call z, $c46f                                    ; $5301: $cc $6f $c4
	ld e, l                                          ; $5304: $5d
	add $73                                          ; $5305: $c6 $73
	cp $2d                                           ; $5307: $fe $2d
	inc bc                                           ; $5309: $03
	db $eb                                           ; $530a: $eb
	rst SubAFromDE                                          ; $530b: $df
	ld bc, $07df                                     ; $530c: $01 $df $07
	sbc c                                            ; $530f: $99
	inc c                                            ; $5310: $0c
	rrca                                             ; $5311: $0f
	add hl, de                                       ; $5312: $19
	ld e, $33                                        ; $5313: $1e $33
	dec a                                            ; $5315: $3d
	dec sp                                           ; $5316: $3b
	push hl                                          ; $5317: $e5
	sub d                                            ; $5318: $92
	ld bc, $7f7f                                     ; $5319: $01 $7f $7f
	ret nz                                           ; $531c: $c0

	rst $38                                          ; $531d: $ff
	ld a, $c1                                        ; $531e: $3e $c1
	rst $38                                          ; $5320: $ff
	nop                                              ; $5321: $00
	rst $38                                          ; $5322: $ff
	ld a, b                                          ; $5323: $78
	add a                                            ; $5324: $87
	rst $38                                          ; $5325: $ff
	ldh a, [$80]                                     ; $5326: $f0 $80
	add b                                            ; $5328: $80
	nop                                              ; $5329: $00
	ret nz                                           ; $532a: $c0

	and b                                            ; $532b: $a0
	ldh [$30], a                                     ; $532c: $e0 $30
	ldh a, [$08]                                     ; $532e: $f0 $08
	ld hl, sp-$7c                                    ; $5330: $f8 $84
	ld a, h                                          ; $5332: $7c

jr_01c_5333:
	add $3e                                          ; $5333: $c6 $3e
	ldh [c], a                                       ; $5335: $e2
	ld e, $42                                        ; $5336: $1e $42
	rst $38                                          ; $5338: $ff
	add b                                            ; $5339: $80
	rst $38                                          ; $533a: $ff
	ld [hl], b                                       ; $533b: $70
	ld a, a                                          ; $533c: $7f
	inc h                                            ; $533d: $24
	ccf                                              ; $533e: $3f
	inc h                                            ; $533f: $24
	ccf                                              ; $5340: $3f
	ld a, [hl+]                                      ; $5341: $2a
	ccf                                              ; $5342: $3f
	dec hl                                           ; $5343: $2b
	ccf                                              ; $5344: $3f
	ld [hl], $3f                                     ; $5345: $36 $3f
	adc [hl]                                         ; $5347: $8e
	rla                                              ; $5348: $17
	rra                                              ; $5349: $1f

jr_01c_534a:
	rra                                              ; $534a: $1f
	dec e                                            ; $534b: $1d
	dec bc                                           ; $534c: $0b
	dec c                                            ; $534d: $0d
	dec bc                                           ; $534e: $0b
	inc c                                            ; $534f: $0c
	add hl, bc                                       ; $5350: $09
	ld c, $05                                        ; $5351: $0e $05
	rlca                                             ; $5353: $07
	inc b                                            ; $5354: $04
	rlca                                             ; $5355: $07
	ld [bc], a                                       ; $5356: $02
	inc bc                                           ; $5357: $03
	nop                                              ; $5358: $00
	ld a, e                                          ; $5359: $7b
	cp c                                             ; $535a: $b9
	ld a, a                                          ; $535b: $7f
	cp $80                                           ; $535c: $fe $80
	ld bc, $94ff                                     ; $535e: $01 $ff $94
	rst $38                                          ; $5361: $ff
	jp nc, $cbff                                     ; $5362: $d2 $ff $cb

	rst $38                                          ; $5365: $ff
	rst $38                                          ; $5366: $ff
	rst AddAOntoHL                                          ; $5367: $ef
	rst SubAFromDE                                          ; $5368: $df
	ld h, [hl]                                       ; $5369: $66
	rst $38                                          ; $536a: $ff
	jp $c37e                                         ; $536b: $c3 $7e $c3


	rst $38                                          ; $536e: $ff
	add c                                            ; $536f: $81
	rst $38                                          ; $5370: $ff
	jr z, jr_01c_534a                                ; $5371: $28 $d7

	jr c, jr_01c_5333                                ; $5373: $38 $be

	pop bc                                           ; $5375: $c1
	rst SubAFromBC                                          ; $5376: $e7
	rst $38                                          ; $5377: $ff
	di                                               ; $5378: $f3
	sbc a                                            ; $5379: $9f
	ld [hl], c                                       ; $537a: $71

jr_01c_537b:
	rst GetHLinHL                                          ; $537b: $cf
	ld sp, $ef87                                     ; $537c: $31 $87 $ef
	ld de, $91ff                                     ; $537f: $11 $ff $91
	rst $38                                          ; $5382: $ff
	ret                                              ; $5383: $c9


	rst $38                                          ; $5384: $ff
	add hl, hl                                       ; $5385: $29
	rst $38                                          ; $5386: $ff
	jp hl                                            ; $5387: $e9


	rst $38                                          ; $5388: $ff
	reti                                             ; $5389: $d9


	rst $38                                          ; $538a: $ff
	ld sp, hl                                        ; $538b: $f9
	rst GetHLinHL                                          ; $538c: $cf
	ld sp, hl                                        ; $538d: $f9
	adc a                                            ; $538e: $8f
	pop af                                           ; $538f: $f1
	rra                                              ; $5390: $1f
	jp hl                                            ; $5391: $e9


	ccf                                              ; $5392: $3f
	ret                                              ; $5393: $c9


	ld a, a                                          ; $5394: $7f
	xor c                                            ; $5395: $a9
	ld a, e                                          ; $5396: $7b
	xor $dd                                          ; $5397: $ee $dd
	ld bc, $ba7f                                     ; $5399: $01 $7f $ba
	ld [hl], a                                       ; $539c: $77
	cp $7f                                           ; $539d: $fe $7f
	or d                                             ; $539f: $b2
	ld [hl], a                                       ; $53a0: $77
	cp $7f                                           ; $53a1: $fe $7f
	ld c, d                                          ; $53a3: $4a
	sbc c                                            ; $53a4: $99
	rrca                                             ; $53a5: $0f
	dec bc                                           ; $53a6: $0b
	rrca                                             ; $53a7: $0f
	add hl, bc                                       ; $53a8: $09
	rlca                                             ; $53a9: $07
	rlca                                             ; $53aa: $07
	reti                                             ; $53ab: $d9


	ld bc, $9892                                     ; $53ac: $01 $92 $98
	rst SubAFromBC                                          ; $53af: $e7
	add c                                            ; $53b0: $81
	rst $38                                          ; $53b1: $ff
	rst SubAFromBC                                          ; $53b2: $e7
	rst $38                                          ; $53b3: $ff
	cp [hl]                                          ; $53b4: $be
	reti                                             ; $53b5: $d9


	cp [hl]                                          ; $53b6: $be
	pop bc                                           ; $53b7: $c1
	sub h                                            ; $53b8: $94
	db $eb                                           ; $53b9: $eb
	add c                                            ; $53ba: $81
	sbc $ff                                          ; $53bb: $de $ff
	sbc [hl]                                         ; $53bd: $9e
	xor d                                            ; $53be: $aa
	ld [hl], e                                       ; $53bf: $73
	cp $9e                                           ; $53c0: $fe $9e
	ld c, c                                          ; $53c2: $49
	ld a, e                                          ; $53c3: $7b
	cp $7f                                           ; $53c4: $fe $7f

jr_01c_53c6:
	or b                                             ; $53c6: $b0
	ld [hl], a                                       ; $53c7: $77
	cp $85                                           ; $53c8: $fe $85
	ld a, c                                          ; $53ca: $79
	ld a, a                                          ; $53cb: $7f
	or e                                             ; $53cc: $b3
	cp a                                             ; $53cd: $bf
	ld d, $1e                                        ; $53ce: $16 $1e
	inc c                                            ; $53d0: $0c
	inc c                                            ; $53d1: $0c
	inc b                                            ; $53d2: $04
	inc b                                            ; $53d3: $04
	add h                                            ; $53d4: $84
	add h                                            ; $53d5: $84
	add d                                            ; $53d6: $82
	add d                                            ; $53d7: $82
	jp nz, $ccc2                                     ; $53d8: $c2 $c2 $cc

	call z, $f2fe                                    ; $53db: $cc $fe $f2
	ld a, [hl]                                       ; $53de: $7e
	ld h, d                                          ; $53df: $62
	ld e, [hl]                                       ; $53e0: $5e
	ld d, d                                          ; $53e1: $52
	ld c, h                                          ; $53e2: $4c
	ld c, h                                          ; $53e3: $4c
	db $dd                                           ; $53e4: $dd
	jr nz, jr_01c_53c6                               ; $53e5: $20 $df

	ret nz                                           ; $53e7: $c0

	ld a, e                                          ; $53e8: $7b
	jr nc, jr_01c_537b                               ; $53e9: $30 $90

	ld b, b                                          ; $53eb: $40
	nop                                              ; $53ec: $00
	ldh [rP1], a                                     ; $53ed: $e0 $00
	ldh a, [rP1]                                     ; $53ef: $f0 $00
	ld hl, sp+$00                                    ; $53f1: $f8 $00
	ld a, b                                          ; $53f3: $78
	nop                                              ; $53f4: $00
	ld a, h                                          ; $53f5: $7c
	nop                                              ; $53f6: $00
	inc a                                            ; $53f7: $3c
	nop                                              ; $53f8: $00
	jr nc, jr_01c_546e                               ; $53f9: $30 $73

	inc e                                            ; $53fb: $1c
	ld [hl], a                                       ; $53fc: $77
	cp $7f                                           ; $53fd: $fe $7f
	db $e4                                           ; $53ff: $e4
	ld a, a                                          ; $5400: $7f
	cp $ee                                           ; $5401: $fe $ee
	rst SubAFromDE                                          ; $5403: $df
	inc bc                                           ; $5404: $03
	push af                                          ; $5405: $f5
	rst SubAFromDE                                          ; $5406: $df
	rst $38                                          ; $5407: $ff
	adc a                                            ; $5408: $8f
	ld a, h                                          ; $5409: $7c
	ld c, h                                          ; $540a: $4c
	ld a, [hl]                                       ; $540b: $7e
	ld b, [hl]                                       ; $540c: $46
	ld l, $36                                        ; $540d: $2e $36
	ccf                                              ; $540f: $3f
	cpl                                              ; $5410: $2f
	ccf                                              ; $5411: $3f
	inc sp                                           ; $5412: $33
	ccf                                              ; $5413: $3f
	daa                                              ; $5414: $27
	ld a, a                                          ; $5415: $7f
	ld a, a                                          ; $5416: $7f
	rst SubAFromDE                                          ; $5417: $df
	cp a                                             ; $5418: $bf
	db $dd                                           ; $5419: $dd
	rst $38                                          ; $541a: $ff
	db $eb                                           ; $541b: $eb
	rst SubAFromDE                                          ; $541c: $df
	add b                                            ; $541d: $80
	db $dd                                           ; $541e: $dd
	ret nz                                           ; $541f: $c0

	rst SubAFromDE                                          ; $5420: $df
	add b                                            ; $5421: $80
	rst SubAFromDE                                          ; $5422: $df
	ldh a, [$f7]                                     ; $5423: $f0 $f7
	sbc e                                            ; $5425: $9b
	dec e                                            ; $5426: $1d
	ld e, $08                                        ; $5427: $1e $08
	rrca                                             ; $5429: $0f
	ld [hl], e                                       ; $542a: $73
	inc l                                            ; $542b: $2c
	adc a                                            ; $542c: $8f
	ld [$0d0a], sp                                   ; $542d: $08 $0a $0d
	ld [$070f], sp                                   ; $5430: $08 $0f $07
	rlca                                             ; $5433: $07
	add hl, bc                                       ; $5434: $09
	rrca                                             ; $5435: $0f
	add hl, bc                                       ; $5436: $09
	rrca                                             ; $5437: $0f
	dec b                                            ; $5438: $05
	rrca                                             ; $5439: $0f
	dec d                                            ; $543a: $15
	rra                                              ; $543b: $1f
	inc d                                            ; $543c: $14

jr_01c_543d:
	ld l, e                                          ; $543d: $6b
	cp $80                                           ; $543e: $fe $80
	adc a                                            ; $5440: $8f
	ld a, a                                          ; $5441: $7f
	inc de                                           ; $5442: $13
	rst $38                                          ; $5443: $ff
	di                                               ; $5444: $f3
	rst $38                                          ; $5445: $ff
	db $d3                                           ; $5446: $d3
	ccf                                              ; $5447: $3f
	pop de                                           ; $5448: $d1
	ccf                                              ; $5449: $3f
	and c                                            ; $544a: $a1
	ld a, a                                          ; $544b: $7f

jr_01c_544c:
	ld hl, $e1ff                                     ; $544c: $21 $ff $e1
	rst $38                                          ; $544f: $ff
	ld h, d                                          ; $5450: $62
	cp $5e                                           ; $5451: $fe $5e
	cp $7e                                           ; $5453: $fe $7e
	ldh [c], a                                       ; $5455: $e2
	ld a, [hl]                                       ; $5456: $7e
	ldh [c], a                                       ; $5457: $e2
	cp [hl]                                          ; $5458: $be
	and $ba                                          ; $5459: $e6 $ba
	cp $92                                           ; $545b: $fe $92
	cp $9c                                           ; $545d: $fe $9c
	sbc b                                            ; $545f: $98
	db $fc                                           ; $5460: $fc
	sub b                                            ; $5461: $90
	ldh a, [$b0]                                     ; $5462: $f0 $b0
	ldh a, [$60]                                     ; $5464: $f0 $60
	ldh [$7b], a                                     ; $5466: $e0 $7b
	jr c, jr_01c_544c                                ; $5468: $38 $e2

	db $db                                           ; $546a: $db
	ld bc, $403f                                     ; $546b: $01 $3f $40

jr_01c_546e:
	rst SubAFromDE                                          ; $546e: $df
	rrca                                             ; $546f: $0f
	ld a, a                                          ; $5470: $7f
	sub b                                            ; $5471: $90
	ld a, a                                          ; $5472: $7f
	db $fd                                           ; $5473: $fd
	sub e                                            ; $5474: $93
	ld e, $12                                        ; $5475: $1e $12
	sbc $da                                          ; $5477: $de $da
	cp [hl]                                          ; $5479: $be
	ld h, [hl]                                       ; $547a: $66
	cp $fa                                           ; $547b: $fe $fa
	db $fc                                           ; $547d: $fc
	db $fc                                           ; $547e: $fc
	ld a, h                                          ; $547f: $7c
	ld a, h                                          ; $5480: $7c
	ld c, a                                          ; $5481: $4f
	ld b, d                                          ; $5482: $42
	sub l                                            ; $5483: $95
	db $f4                                           ; $5484: $f4
	db $fc                                           ; $5485: $fc
	ld a, [hl]                                       ; $5486: $7e
	ld h, d                                          ; $5487: $62
	ccf                                              ; $5488: $3f
	ld sp, $181f                                     ; $5489: $31 $1f $18
	rrca                                             ; $548c: $0f
	inc c                                            ; $548d: $0c
	sbc $07                                          ; $548e: $de $07
	ld a, [hl]                                       ; $5490: $7e
	add c                                            ; $5491: $81
	sbc b                                            ; $5492: $98
	rlca                                             ; $5493: $07
	dec c                                            ; $5494: $0d
	dec bc                                           ; $5495: $0b
	rst $38                                          ; $5496: $ff

Call_01c_5497:
	rst $38                                          ; $5497: $ff
	rra                                              ; $5498: $1f
	rra                                              ; $5499: $1f
	inc sp                                           ; $549a: $33
	ld h, $9e                                        ; $549b: $26 $9e
	ld b, b                                          ; $549d: $40
	db $db                                           ; $549e: $db
	ldh [$df], a                                     ; $549f: $e0 $df
	ret nz                                           ; $54a1: $c0

	ld d, a                                          ; $54a2: $57
	jr nz, jr_01c_543d                               ; $54a3: $20 $98

	ld [hl+], a                                      ; $54a5: $22
	ccf                                              ; $54a6: $3f
	ld b, b                                          ; $54a7: $40
	ld a, a                                          ; $54a8: $7f
	ld d, b                                          ; $54a9: $50
	ld a, a                                          ; $54aa: $7f
	ld h, h                                          ; $54ab: $64
	ld a, c                                          ; $54ac: $79
	sbc $9e                                          ; $54ad: $de $9e
	add hl, hl                                       ; $54af: $29
	ld a, c                                          ; $54b0: $79
	ldh [$8d], a                                     ; $54b1: $e0 $8d
	daa                                              ; $54b3: $27
	ld a, $27                                        ; $54b4: $3e $27
	ccf                                              ; $54b6: $3f
	rra                                              ; $54b7: $1f
	rra                                              ; $54b8: $1f
	ld [de], a                                       ; $54b9: $12
	dec e                                            ; $54ba: $1d
	dec bc                                           ; $54bb: $0b
	inc c                                            ; $54bc: $0c
	ccf                                              ; $54bd: $3f
	ld a, $7f                                        ; $54be: $3e $7f
	ld h, e                                          ; $54c0: $63
	ld a, a                                          ; $54c1: $7f
	ld b, c                                          ; $54c2: $41
	rst $38                                          ; $54c3: $ff
	rst SubAFromBC                                          ; $54c4: $e7
	ld e, l                                          ; $54c5: $5d
	ldh [$7f], a                                     ; $54c6: $e0 $7f

jr_01c_54c8:
	cp $8f                                           ; $54c8: $fe $8f
	cp d                                             ; $54ca: $ba
	rst AddAOntoHL                                          ; $54cb: $ef
	cp a                                             ; $54cc: $bf
	rst GetHLinHL                                          ; $54cd: $cf
	rst $38                                          ; $54ce: $ff
	ld b, [hl]                                       ; $54cf: $46
	rst $38                                          ; $54d0: $ff
	jp $c37c                                         ; $54d1: $c3 $7c $c3


	ld a, [hl]                                       ; $54d4: $7e
	add c                                            ; $54d5: $81
	rst $38                                          ; $54d6: $ff
	jr c, jr_01c_54c8                                ; $54d7: $38 $ef

	db $10                                           ; $54d9: $10
	ld c, l                                          ; $54da: $4d
	ldh [$9e], a                                     ; $54db: $e0 $9e
	adc c                                            ; $54dd: $89
	ld [hl], d                                       ; $54de: $72
	inc l                                            ; $54df: $2c
	ld a, c                                          ; $54e0: $79
	ldh [$9e], a                                     ; $54e1: $e0 $9e
	rst AddAOntoHL                                          ; $54e3: $ef
	ld d, l                                          ; $54e4: $55
	ldh [$9c], a                                     ; $54e5: $e0 $9c
	sbc [hl]                                         ; $54e7: $9e
	rst $38                                          ; $54e8: $ff

jr_01c_54e9:
	add h                                            ; $54e9: $84
	ld a, e                                          ; $54ea: $7b
	cp $7f                                           ; $54eb: $fe $7f
	sbc h                                            ; $54ed: $9c
	sbc l                                            ; $54ee: $9d
	add hl, sp                                       ; $54ef: $39
	ccf                                              ; $54f0: $3f
	ld l, l                                          ; $54f1: $6d
	db $ec                                           ; $54f2: $ec
	ld e, a                                          ; $54f3: $5f
	inc d                                            ; $54f4: $14
	ld l, l                                          ; $54f5: $6d
	jp z, $9c9a                                      ; $54f6: $ca $9a $9c

	db $e3                                           ; $54f9: $e3
	add b                                            ; $54fa: $80

jr_01c_54fb:
	rst $38                                          ; $54fb: $ff
	ld h, a                                          ; $54fc: $67
	ld [hl], c                                       ; $54fd: $71
	ldh [$9c], a                                     ; $54fe: $e0 $9c
	xor h                                            ; $5500: $ac
	db $d3                                           ; $5501: $d3
	ld bc, $e069                                     ; $5502: $01 $69 $e0
	sbc h                                            ; $5505: $9c
	ld a, [hl+]                                      ; $5506: $2a
	rst $38                                          ; $5507: $ff
	ld c, d                                          ; $5508: $4a
	ld a, e                                          ; $5509: $7b
	cp $75                                           ; $550a: $fe $75
	call c, $fe7f                                    ; $550c: $dc $7f $fe
	ld a, a                                          ; $550f: $7f
	cp h                                             ; $5510: $bc
	ld a, a                                          ; $5511: $7f
	cp $99                                           ; $5512: $fe $99
	ld l, d                                          ; $5514: $6a
	ld a, [hl]                                       ; $5515: $7e
	inc l                                            ; $5516: $2c
	inc a                                            ; $5517: $3c
	jr nc, jr_01c_554a                               ; $5518: $30 $30

	db $dd                                           ; $551a: $dd
	and b                                            ; $551b: $a0
	rst SubAFromDE                                          ; $551c: $df
	ld b, b                                          ; $551d: $40
	db $dd                                           ; $551e: $dd
	ret nz                                           ; $551f: $c0

	db $dd                                           ; $5520: $dd
	ld b, b                                          ; $5521: $40
	rst SubAFromDE                                          ; $5522: $df
	ld h, b                                          ; $5523: $60
	ld l, c                                          ; $5524: $69
	ldh [rBCPD], a                                   ; $5525: $e0 $69
	inc c                                            ; $5527: $0c
	ld a, e                                          ; $5528: $7b
	cp $7d                                           ; $5529: $fe $7d
	ret c                                            ; $552b: $d8

	ld a, a                                          ; $552c: $7f
	cp $7f                                           ; $552d: $fe $7f
	or $6f                                           ; $552f: $f6 $6f
	ldh a, [$61]                                     ; $5531: $f0 $61
	ldh [$99], a                                     ; $5533: $e0 $99
	ld h, d                                          ; $5535: $62
	ld a, a                                          ; $5536: $7f
	ld b, b                                          ; $5537: $40
	ld a, a                                          ; $5538: $7f
	or b                                             ; $5539: $b0
	rst $38                                          ; $553a: $ff
	ld [hl], l                                       ; $553b: $75
	nop                                              ; $553c: $00
	sbc c                                            ; $553d: $99
	dec h                                            ; $553e: $25
	ccf                                              ; $553f: $3f
	daa                                              ; $5540: $27
	ccf                                              ; $5541: $3f
	scf                                              ; $5542: $37
	ld a, $79                                        ; $5543: $3e $79
	nop                                              ; $5545: $00
	sbc l                                            ; $5546: $9d
	rra                                              ; $5547: $1f

jr_01c_5548:
	inc de                                           ; $5548: $13
	dec hl                                           ; $5549: $2b

jr_01c_554a:
	jr nz, jr_01c_54e9                               ; $554a: $20 $9d

	jp c, $656f                                      ; $554c: $da $6f $65

	nop                                              ; $554f: $00
	scf                                              ; $5550: $37
	jr nz, jr_01c_55d2                               ; $5551: $20 $7f

	ld [hl], h                                       ; $5553: $74
	ld a, a                                          ; $5554: $7f
	ld [hl-], a                                      ; $5555: $32
	ld [hl], a                                       ; $5556: $77
	jr nz, @-$60                                     ; $5557: $20 $9e

	reti                                             ; $5559: $d9


	ld l, e                                          ; $555a: $6b
	jr nz, jr_01c_54fb                               ; $555b: $20 $9e

	jp hl                                            ; $555d: $e9


	ld a, e                                          ; $555e: $7b
	jr nz, @-$60                                     ; $555f: $20 $9e

	jr z, jr_01c_55ac                                ; $5561: $28 $49

	or [hl]                                          ; $5563: $b6
	db $db                                           ; $5564: $db
	add b                                            ; $5565: $80
	push af                                          ; $5566: $f5
	ld [hl], a                                       ; $5567: $77
	nop                                              ; $5568: $00
	sbc c                                            ; $5569: $99
	add [hl]                                         ; $556a: $86
	rst $38                                          ; $556b: $ff
	ld h, b                                          ; $556c: $60
	ld a, a                                          ; $556d: $7f
	rra                                              ; $556e: $1f
	rra                                              ; $556f: $1f
	ld e, [hl]                                       ; $5570: $5e
	jr z, jr_01c_5548                                ; $5571: $28 $d5

	ld bc, $007f                                     ; $5573: $01 $7f $00
	ld a, h                                          ; $5576: $7c
	inc [hl]                                         ; $5577: $34
	ld l, a                                          ; $5578: $6f

jr_01c_5579:
	nop                                              ; $5579: $00
	sbc h                                            ; $557a: $9c
	sbc d                                            ; $557b: $9a
	push hl                                          ; $557c: $e5
	add b                                            ; $557d: $80
	ld h, b                                          ; $557e: $60
	ldh [$7f], a                                     ; $557f: $e0 $7f
	sub [hl]                                         ; $5581: $96
	sbc h                                            ; $5582: $9c
	dec h                                            ; $5583: $25
	rst $38                                          ; $5584: $ff
	inc h                                            ; $5585: $24
	ld a, e                                          ; $5586: $7b
	cp $7f                                           ; $5587: $fe $7f
	ld a, [$a89e]                                    ; $5589: $fa $9e $a8
	ld a, e                                          ; $558c: $7b
	ld l, b                                          ; $558d: $68
	sbc c                                            ; $558e: $99
	ld d, a                                          ; $558f: $57
	ld a, a                                          ; $5590: $7f
	inc [hl]                                         ; $5591: $34
	inc a                                            ; $5592: $3c
	jr c, jr_01c_55cd                                ; $5593: $38 $38

	ld c, a                                          ; $5595: $4f
	nop                                              ; $5596: $00
	rst SubAFromDE                                          ; $5597: $df
	jr nz, jr_01c_5579                               ; $5598: $20 $df

	sub b                                            ; $559a: $90
	rst SubAFromDE                                          ; $559b: $df
	or b                                             ; $559c: $b0

jr_01c_559d:
	dec de                                           ; $559d: $1b
	nop                                              ; $559e: $00
	ld a, a                                          ; $559f: $7f
	ldh a, [$9e]                                     ; $55a0: $f0 $9e
	ld h, b                                          ; $55a2: $60
	ld a, e                                          ; $55a3: $7b
	ldh a, [$99]                                     ; $55a4: $f0 $99
	nop                                              ; $55a6: $00
	ld b, d                                          ; $55a7: $42
	rst $38                                          ; $55a8: $ff
	add b                                            ; $55a9: $80
	rst $38                                          ; $55aa: $ff
	ld [hl], b                                       ; $55ab: $70

jr_01c_55ac:
	ld a, d                                          ; $55ac: $7a
	ld [hl+], a                                      ; $55ad: $22
	ld a, a                                          ; $55ae: $7f
	cp $9e                                           ; $55af: $fe $9e
	ld h, $7b                                        ; $55b1: $26 $7b
	nop                                              ; $55b3: $00
	sbc l                                            ; $55b4: $9d
	rla                                              ; $55b5: $17
	ld e, $7b                                        ; $55b6: $1e $7b
	nop                                              ; $55b8: $00
	ld a, a                                          ; $55b9: $7f
	ld [bc], a                                       ; $55ba: $02
	sbc h                                            ; $55bb: $9c
	dec c                                            ; $55bc: $0d
	rlca                                             ; $55bd: $07
	inc b                                            ; $55be: $04
	ccf                                              ; $55bf: $3f
	nop                                              ; $55c0: $00
	sbc c                                            ; $55c1: $99
	set 7, a                                         ; $55c2: $cb $ff
	db $eb                                           ; $55c4: $eb
	cp $ff                                           ; $55c5: $fe $ff
	or a                                             ; $55c7: $b7
	halt                                             ; $55c8: $76
	jr nz, jr_01c_564a                               ; $55c9: $20 $7f

	nop                                              ; $55cb: $00
	sbc [hl]                                         ; $55cc: $9e

jr_01c_55cd:
	rst $38                                          ; $55cd: $ff
	ld b, e                                          ; $55ce: $43
	nop                                              ; $55cf: $00
	sbc [hl]                                         ; $55d0: $9e
	pop de                                           ; $55d1: $d1

jr_01c_55d2:
	ld a, e                                          ; $55d2: $7b
	ld l, h                                          ; $55d3: $6c
	ld a, d                                          ; $55d4: $7a
	inc h                                            ; $55d5: $24
	ld [hl], a                                       ; $55d6: $77
	db $fc                                           ; $55d7: $fc
	sub e                                            ; $55d8: $93
	rst GetHLinHL                                          ; $55d9: $cf
	ld hl, sp-$71                                    ; $55da: $f8 $8f
	ldh a, [$1f]                                     ; $55dc: $f0 $1f
	add sp, $3f                                      ; $55de: $e8 $3f
	add sp, $7f                                      ; $55e0: $e8 $7f
	sub h                                            ; $55e2: $94
	rst $38                                          ; $55e3: $ff
	ld d, d                                          ; $55e4: $52
	jr nc, jr_01c_559d                               ; $55e5: $30 $b6

	reti                                             ; $55e7: $d9


	add b                                            ; $55e8: $80
	ld a, a                                          ; $55e9: $7f
	ld d, e                                          ; $55ea: $53
	ld a, a                                          ; $55eb: $7f
	cp $77                                           ; $55ec: $fe $77
	nop                                              ; $55ee: $00
	sbc [hl]                                         ; $55ef: $9e
	jp nz, Jump_01c_7e7b                             ; $55f0: $c2 $7b $7e

	rst SubAFromDE                                          ; $55f3: $df
	rrca                                             ; $55f4: $0f
	dec a                                            ; $55f5: $3d
	ld [de], a                                       ; $55f6: $12
	ld l, a                                          ; $55f7: $6f
	nop                                              ; $55f8: $00
	sub c                                            ; $55f9: $91
	ld b, b                                          ; $55fa: $40
	rst $38                                          ; $55fb: $ff
	inc hl                                           ; $55fc: $23
	rst $38                                          ; $55fd: $ff
	cp [hl]                                          ; $55fe: $be
	db $dd                                           ; $55ff: $dd
	sbc a                                            ; $5600: $9f
	ldh [$8a], a                                     ; $5601: $e0 $8a
	push af                                          ; $5603: $f5
	add b                                            ; $5604: $80
	rst $38                                          ; $5605: $ff
	ld a, a                                          ; $5606: $7f
	ld a, a                                          ; $5607: $7f
	ld [hl], a                                       ; $5608: $77
	ld [bc], a                                       ; $5609: $02
	ld a, [hl]                                       ; $560a: $7e
	xor b                                            ; $560b: $a8
	ld a, a                                          ; $560c: $7f
	ld [$fe7f], sp                                   ; $560d: $08 $7f $fe
	sbc [hl]                                         ; $5610: $9e
	inc d                                            ; $5611: $14
	ld a, e                                          ; $5612: $7b
	cp $9e                                           ; $5613: $fe $9e
	dec d                                            ; $5615: $15
	ld a, d                                          ; $5616: $7a
	adc [hl]                                         ; $5617: $8e
	ld a, a                                          ; $5618: $7f
	ldh a, [c]                                       ; $5619: $f2
	sbc c                                            ; $561a: $99
	ld [hl], l                                       ; $561b: $75
	ld a, a                                          ; $561c: $7f
	ld [hl], $3e                                     ; $561d: $36 $3e
	inc l                                            ; $561f: $2c
	inc l                                            ; $5620: $2c
	ld d, a                                          ; $5621: $57
	nop                                              ; $5622: $00
	halt                                             ; $5623: $76
	ld [bc], a                                       ; $5624: $02
	db $dd                                           ; $5625: $dd
	and b                                            ; $5626: $a0
	ld a, e                                          ; $5627: $7b
	db $f4                                           ; $5628: $f4
	ld a, e                                          ; $5629: $7b
	cp $4e                                           ; $562a: $fe $4e
	adc [hl]                                         ; $562c: $8e
	scf                                              ; $562d: $37
	ld l, a                                          ; $562e: $6f
	ld [hl-], a                                      ; $562f: $32
	ldh [rPCM34], a                                  ; $5630: $e0 $77
	ldh a, [$9e]                                     ; $5632: $f0 $9e
	nop                                              ; $5634: $00
	inc [hl]                                         ; $5635: $34
	inc bc                                           ; $5636: $03
	ldh [$cd], a                                     ; $5637: $e0 $cd
	rst SubAFromDE                                          ; $5639: $df
	inc bc                                           ; $563a: $03
	sub l                                            ; $563b: $95
	ld c, $0f                                        ; $563c: $0e $0f
	rla                                              ; $563e: $17

jr_01c_563f:
	rra                                              ; $563f: $1f
	jr z, jr_01c_5681                                ; $5640: $28 $3f

	ld [hl], b                                       ; $5642: $70
	ld a, a                                          ; $5643: $7f
	call z, $efff                                    ; $5644: $cc $ff $ef
	rst SubAFromDE                                          ; $5647: $df
	ldh a, [hDisp1_OBP1]                                     ; $5648: $f0 $94

jr_01c_564a:
	adc e                                            ; $564a: $8b
	ei                                               ; $564b: $fb
	inc b                                            ; $564c: $04
	rst $38                                          ; $564d: $ff
	adc b                                            ; $564e: $88
	rst $38                                          ; $564f: $ff
	ld e, b                                          ; $5650: $58
	rst $38                                          ; $5651: $ff
	ld d, $ff                                        ; $5652: $16 $ff
	ld hl, $e03b                                     ; $5654: $21 $3b $e0
	rst $38                                          ; $5657: $ff
	rst SubAFromDE                                          ; $5658: $df
	add b                                            ; $5659: $80
	sub l                                            ; $565a: $95
	ld b, b                                          ; $565b: $40
	ret nz                                           ; $565c: $c0

	jr nz, jr_01c_563f                               ; $565d: $20 $e0

	db $10                                           ; $565f: $10
	ldh a, [rAUD1SWEEP]                              ; $5660: $f0 $10
	ldh a, [hDisp0_WY]                                     ; $5662: $f0 $88
	ld hl, sp+$2f                                    ; $5664: $f8 $2f
	and b                                            ; $5666: $a0
	sub [hl]                                         ; $5667: $96
	inc c                                            ; $5668: $0c
	rrca                                             ; $5669: $0f
	db $10                                           ; $566a: $10
	rra                                              ; $566b: $1f
	jr nz, jr_01c_56ad                               ; $566c: $20 $3f

	ld h, b                                          ; $566e: $60
	ld a, a                                          ; $566f: $7f
	call nz, $c033                                   ; $5670: $c4 $33 $c0
	rst SubAFromDE                                          ; $5673: $df
	adc $9a                                          ; $5674: $ce $9a
	add hl, sp                                       ; $5676: $39
	rst $38                                          ; $5677: $ff
	ret nc                                           ; $5678: $d0

	rst $38                                          ; $5679: $ff
	ld sp, $a07b                                     ; $567a: $31 $7b $a0
	sbc [hl]                                         ; $567d: $9e
	ld [$e033], sp                                   ; $567e: $08 $33 $e0

jr_01c_5681:
	ld h, a                                          ; $5681: $67
	sbc [hl]                                         ; $5682: $9e
	ld a, a                                          ; $5683: $7f
	cp $9d                                           ; $5684: $fe $9d
	sub b                                            ; $5686: $90
	ldh a, [rIF]                                     ; $5687: $f0 $0f
	and b                                            ; $5689: $a0
	sbc [hl]                                         ; $568a: $9e
	ret nz                                           ; $568b: $c0

	dec hl                                           ; $568c: $2b
	and b                                            ; $568d: $a0
	ld a, a                                          ; $568e: $7f
	and h                                            ; $568f: $a4
	sbc [hl]                                         ; $5690: $9e
	jr nz, @+$75                                     ; $5691: $20 $73

	sbc [hl]                                         ; $5693: $9e
	sbc [hl]                                         ; $5694: $9e
	ld e, $0b                                        ; $5695: $1e $0b
	and b                                            ; $5697: $a0
	ld a, a                                          ; $5698: $7f
	ld a, $dd                                        ; $5699: $3e $dd
	ld bc, $029d                                     ; $569b: $01 $9d $02
	inc bc                                           ; $569e: $03
	ld [hl], a                                       ; $569f: $77
	cp $df                                           ; $56a0: $fe $df
	inc bc                                           ; $56a2: $03
	rst SubAFromDE                                          ; $56a3: $df
	ld bc, $96ef                                     ; $56a4: $01 $ef $96
	ld [de], a                                       ; $56a7: $12
	rst $38                                          ; $56a8: $ff
	inc h                                            ; $56a9: $24
	rst $38                                          ; $56aa: $ff
	ld c, c                                          ; $56ab: $49
	rst $38                                          ; $56ac: $ff

jr_01c_56ad:
	ld c, d                                          ; $56ad: $4a
	rst $38                                          ; $56ae: $ff
	sub d                                            ; $56af: $92
	ld [hl], e                                       ; $56b0: $73
	cp $8b                                           ; $56b1: $fe $8b
	sub c                                            ; $56b3: $91
	rst $38                                          ; $56b4: $ff
	reti                                             ; $56b5: $d9


	rst $38                                          ; $56b6: $ff
	ld c, c                                          ; $56b7: $49
	ld a, a                                          ; $56b8: $7f
	dec h                                            ; $56b9: $25
	ccf                                              ; $56ba: $3f
	ld d, $1f                                        ; $56bb: $16 $1f
	rrca                                             ; $56bd: $0f
	ld [$0c0b], sp                                   ; $56be: $08 $0b $0c
	dec b                                            ; $56c1: $05
	ld b, $03                                        ; $56c2: $06 $03
	inc bc                                           ; $56c4: $03
	nop                                              ; $56c5: $00
	rst $38                                          ; $56c6: $ff
	ld a, e                                          ; $56c7: $7b
	ld a, h                                          ; $56c8: $7c
	add b                                            ; $56c9: $80
	rst $38                                          ; $56ca: $ff
	jr nc, @+$01                                     ; $56cb: $30 $ff

	ld a, [hl-]                                      ; $56cd: $3a
	rst $38                                          ; $56ce: $ff
	ld a, c                                          ; $56cf: $79
	rst GetHLinHL                                          ; $56d0: $cf
	ld a, h                                          ; $56d1: $7c
	rst JumpTable                                          ; $56d2: $c7
	cp [hl]                                          ; $56d3: $be
	rst GetHLinHL                                          ; $56d4: $cf
	rst $38                                          ; $56d5: $ff
	ld d, l                                          ; $56d6: $55
	rst $38                                          ; $56d7: $ff
	inc a                                            ; $56d8: $3c
	di                                               ; $56d9: $f3
	dec e                                            ; $56da: $1d
	rst $38                                          ; $56db: $ff
	add c                                            ; $56dc: $81
	db $fd                                           ; $56dd: $fd
	inc hl                                           ; $56de: $23
	sbc $e3                                          ; $56df: $de $e3
	db $f4                                           ; $56e1: $f4
	rrca                                             ; $56e2: $0f
	call c, $28bf                                    ; $56e3: $dc $bf $28
	ld hl, sp+$24                                    ; $56e6: $f8 $24
	db $fc                                           ; $56e8: $fc
	sbc b                                            ; $56e9: $98
	inc d                                            ; $56ea: $14
	db $fc                                           ; $56eb: $fc
	sub h                                            ; $56ec: $94
	db $fc                                           ; $56ed: $fc
	ld c, h                                          ; $56ee: $4c
	db $fc                                           ; $56ef: $fc
	inc l                                            ; $56f0: $2c
	ld a, e                                          ; $56f1: $7b
	ld a, [$689a]                                    ; $56f2: $fa $9a $68
	ld hl, sp-$18                                    ; $56f5: $f8 $e8
	ld hl, sp+$30                                    ; $56f7: $f8 $30
	ld a, d                                          ; $56f9: $7a
	ret z                                            ; $56fa: $c8

	ld [hl], a                                       ; $56fb: $77
	add h                                            ; $56fc: $84
	ld a, a                                          ; $56fd: $7f
	ld a, [hl]                                       ; $56fe: $7e
	ld a, a                                          ; $56ff: $7f
	cp $df                                           ; $5700: $fe $df
	add b                                            ; $5702: $80
	rst SubAFromDE                                          ; $5703: $df
	ld bc, $03df                                     ; $5704: $01 $df $03
	ld l, a                                          ; $5707: $6f
	add b                                            ; $5708: $80
	ld [hl], a                                       ; $5709: $77
	cp $3f                                           ; $570a: $fe $3f
	ld a, [hl]                                       ; $570c: $7e
	ld [hl], a                                       ; $570d: $77
	add b                                            ; $570e: $80
	sbc [hl]                                         ; $570f: $9e
	ld c, h                                          ; $5710: $4c
	ld a, e                                          ; $5711: $7b
	ld a, [hl]                                       ; $5712: $7e
	ld a, a                                          ; $5713: $7f
	add [hl]                                         ; $5714: $86
	ld l, a                                          ; $5715: $6f
	cp $7e                                           ; $5716: $fe $7e
	ld l, b                                          ; $5718: $68
	ld a, a                                          ; $5719: $7f
	cp $80                                           ; $571a: $fe $80
	ld b, h                                          ; $571c: $44
	ld a, a                                          ; $571d: $7f
	inc hl                                           ; $571e: $23
	inc a                                            ; $571f: $3c
	dec de                                           ; $5720: $1b
	inc e                                            ; $5721: $1c
	rla                                              ; $5722: $17
	inc e                                            ; $5723: $1c
	ld a, [bc]                                       ; $5724: $0a
	rrca                                             ; $5725: $0f
	rlca                                             ; $5726: $07
	rlca                                             ; $5727: $07
	nop                                              ; $5728: $00
	rst $38                                          ; $5729: $ff
	ld b, b                                          ; $572a: $40
	rst $38                                          ; $572b: $ff
	add b                                            ; $572c: $80
	rst $38                                          ; $572d: $ff
	db $10                                           ; $572e: $10
	rst $38                                          ; $572f: $ff
	inc a                                            ; $5730: $3c
	rst $38                                          ; $5731: $ff
	inc a                                            ; $5732: $3c
	db $e3                                           ; $5733: $e3
	ld a, $e7                                        ; $5734: $3e $e7
	sbc a                                            ; $5736: $9f
	rst AddAOntoHL                                          ; $5737: $ef
	rst $38                                          ; $5738: $ff
	ei                                               ; $5739: $fb
	rst $38                                          ; $573a: $ff
	add e                                            ; $573b: $83
	adc [hl]                                         ; $573c: $8e
	ei                                               ; $573d: $fb
	adc h                                            ; $573e: $8c
	rst $38                                          ; $573f: $ff
	ld h, b                                          ; $5740: $60
	cp $91                                           ; $5741: $fe $91
	db $fd                                           ; $5743: $fd
	inc bc                                           ; $5744: $03
	ei                                               ; $5745: $fb
	rlca                                             ; $5746: $07
	sbc l                                            ; $5747: $9d
	rst $38                                          ; $5748: $ff
	ld [$08f8], sp                                   ; $5749: $08 $f8 $08
	ld hl, sp-$78                                    ; $574c: $f8 $88
	ld hl, sp+$48                                    ; $574e: $f8 $48
	ld hl, sp+$28                                    ; $5750: $f8 $28
	ld hl, sp-$70                                    ; $5752: $f8 $90
	ld hl, sp+$44                                    ; $5754: $f8 $44
	db $fc                                           ; $5756: $fc
	jr c, jr_01c_57d4                                ; $5757: $38 $7b

	add b                                            ; $5759: $80
	sbc b                                            ; $575a: $98
	add sp, -$48                                     ; $575b: $e8 $b8
	ret nc                                           ; $575d: $d0

	or b                                             ; $575e: $b0
	and b                                            ; $575f: $a0
	ldh [$a0], a                                     ; $5760: $e0 $a0
	ld a, e                                          ; $5762: $7b
	add b                                            ; $5763: $80
	rst SubAFromDE                                          ; $5764: $df
	add b                                            ; $5765: $80
	db $fd                                           ; $5766: $fd
	ld e, [hl]                                       ; $5767: $5e
	cp $37                                           ; $5768: $fe $37
	ld a, [hl]                                       ; $576a: $7e
	ld [hl], a                                       ; $576b: $77
	and h                                            ; $576c: $a4
	ld a, [hl]                                       ; $576d: $7e
	or h                                             ; $576e: $b4
	sbc d                                            ; $576f: $9a
	ld b, h                                          ; $5770: $44
	rst $38                                          ; $5771: $ff
	ld c, b                                          ; $5772: $48
	rst $38                                          ; $5773: $ff
	adc c                                            ; $5774: $89
	ld h, e                                          ; $5775: $63
	ld a, [hl]                                       ; $5776: $7e
	ld a, a                                          ; $5777: $7f
	and c                                            ; $5778: $a1
	sbc d                                            ; $5779: $9a
	ld b, a                                          ; $577a: $47
	ld a, h                                          ; $577b: $7c
	inc hl                                           ; $577c: $23
	inc a                                            ; $577d: $3c
	rra                                              ; $577e: $1f
	ld [hl], e                                       ; $577f: $73
	add b                                            ; $5780: $80
	ld a, d                                          ; $5781: $7a
	ld a, $73                                        ; $5782: $3e $73
	ld a, [hl]                                       ; $5784: $7e
	add [hl]                                         ; $5785: $86
	sbc b                                            ; $5786: $98
	rst $38                                          ; $5787: $ff
	inc a                                            ; $5788: $3c
	rst FarCall                                          ; $5789: $f7
	inc a                                            ; $578a: $3c
	rst SubAFromBC                                          ; $578b: $e7
	ld a, $e3                                        ; $578c: $3e $e3
	sbc a                                            ; $578e: $9f
	pop hl                                           ; $578f: $e1
	ei                                               ; $5790: $fb
	rst SubAFromBC                                          ; $5791: $e7
	rst AddAOntoHL                                          ; $5792: $ef
	sbc [hl]                                         ; $5793: $9e
	rst $38                                          ; $5794: $ff
	nop                                              ; $5795: $00
	cp $61                                           ; $5796: $fe $61
	rst $38                                          ; $5798: $ff
	sub c                                            ; $5799: $91
	ld a, [$9f07]                                    ; $579a: $fa $07 $9f
	rst $38                                          ; $579d: $ff
	adc b                                            ; $579e: $88
	ld a, e                                          ; $579f: $7b
	add b                                            ; $57a0: $80
	ld a, a                                          ; $57a1: $7f
	cp $7f                                           ; $57a2: $fe $7f
	add b                                            ; $57a4: $80
	sbc h                                            ; $57a5: $9c
	xor b                                            ; $57a6: $a8
	ld hl, sp-$68                                    ; $57a7: $f8 $98
	ld a, e                                          ; $57a9: $7b
	ld a, [$7e7f]                                    ; $57aa: $fa $7f $7e
	rst SubAFromDE                                          ; $57ad: $df
	ld hl, sp+$4b                                    ; $57ae: $f8 $4b
	add b                                            ; $57b0: $80
	ccf                                              ; $57b1: $3f
	ld b, b                                          ; $57b2: $40
	sbc [hl]                                         ; $57b3: $9e
	adc a                                            ; $57b4: $8f
	ld a, e                                          ; $57b5: $7b
	ld b, b                                          ; $57b6: $40
	ld a, a                                          ; $57b7: $7f
	jp hl                                            ; $57b8: $e9


	ld a, a                                          ; $57b9: $7f
	ld a, $9e                                        ; $57ba: $3e $9e
	ld h, c                                          ; $57bc: $61
	ld [hl], a                                       ; $57bd: $77
	ld b, b                                          ; $57be: $40
	ld d, e                                          ; $57bf: $53
	ldh [$7f], a                                     ; $57c0: $e0 $7f
	and d                                            ; $57c2: $a2
	sub d                                            ; $57c3: $92
	db $e3                                           ; $57c4: $e3
	rst $38                                          ; $57c5: $ff
	rst AddAOntoHL                                          ; $57c6: $ef
	ld sp, hl                                        ; $57c7: $f9
	sbc a                                            ; $57c8: $9f
	rst $38                                          ; $57c9: $ff
	add b                                            ; $57ca: $80
	ld l, a                                          ; $57cb: $6f
	sbc b                                            ; $57cc: $98
	rst $38                                          ; $57cd: $ff
	ldh a, [$fe]                                     ; $57ce: $f0 $fe
	ld bc, $e03b                                     ; $57d0: $01 $3b $e0
	sbc c                                            ; $57d3: $99

jr_01c_57d4:
	rst SubAFromBC                                          ; $57d4: $e7
	rst $38                                          ; $57d5: $ff
	db $eb                                           ; $57d6: $eb
	db $fd                                           ; $57d7: $fd
	sbc a                                            ; $57d8: $9f
	di                                               ; $57d9: $f3
	ld a, e                                          ; $57da: $7b
	ret nz                                           ; $57db: $c0

	sbc l                                            ; $57dc: $9d
	ld l, a                                          ; $57dd: $6f
	ldh a, [rOCPD]                                   ; $57de: $f0 $6b
	ret nz                                           ; $57e0: $c0

	ld a, d                                          ; $57e1: $7a
	and b                                            ; $57e2: $a0
	sbc c                                            ; $57e3: $99
	ld b, $07                                        ; $57e4: $06 $07
	rlca                                             ; $57e6: $07
	ld b, $07                                        ; $57e7: $06 $07
	ld b, $7b                                        ; $57e9: $06 $7b
	db $fd                                           ; $57eb: $fd
	sbc d                                            ; $57ec: $9a
	rlca                                             ; $57ed: $07
	inc bc                                           ; $57ee: $03
	rlca                                             ; $57ef: $07
	ld [bc], a                                       ; $57f0: $02
	rlca                                             ; $57f1: $07
	ld a, e                                          ; $57f2: $7b
	inc e                                            ; $57f3: $1c
	sbc h                                            ; $57f4: $9c
	inc bc                                           ; $57f5: $03
	dec b                                            ; $57f6: $05
	rlca                                             ; $57f7: $07
	ld h, a                                          ; $57f8: $67
	cp $84                                           ; $57f9: $fe $84
	ld h, e                                          ; $57fb: $63
	sbc a                                            ; $57fc: $9f

Jump_01c_57fd:
	ld b, $ff                                        ; $57fd: $06 $ff
	cp b                                             ; $57ff: $b8
	rst $38                                          ; $5800: $ff
	ldh a, [rVBK]                                    ; $5801: $f0 $4f
	db $f4                                           ; $5803: $f4
	rrca                                             ; $5804: $0f
	and h                                            ; $5805: $a4
	ld e, a                                          ; $5806: $5f
	inc b                                            ; $5807: $04
	rst $38                                          ; $5808: $ff
	db $fc                                           ; $5809: $fc
	rst $38                                          ; $580a: $ff
	ld b, $ff                                        ; $580b: $06 $ff
	ld b, a                                          ; $580d: $47
	rst $38                                          ; $580e: $ff
	ld b, a                                          ; $580f: $47
	db $fc                                           ; $5810: $fc
	ld b, a                                          ; $5811: $47
	db $fc                                           ; $5812: $fc
	inc hl                                           ; $5813: $23
	cp $21                                           ; $5814: $fe $21
	ld a, d                                          ; $5816: $7a
	add [hl]                                         ; $5817: $86
	sbc [hl]                                         ; $5818: $9e
	daa                                              ; $5819: $27
	ld a, c                                          ; $581a: $79
	ret nz                                           ; $581b: $c0

	rst SubAFromDE                                          ; $581c: $df
	add b                                            ; $581d: $80
	rst SubAFromDE                                          ; $581e: $df
	ret nz                                           ; $581f: $c0

	ld a, a                                          ; $5820: $7f
	ld d, h                                          ; $5821: $54
	sbc [hl]                                         ; $5822: $9e
	ld h, b                                          ; $5823: $60
	ld a, d                                          ; $5824: $7a
	ld c, [hl]                                       ; $5825: $4e
	ld l, [hl]                                       ; $5826: $6e
	ld c, d                                          ; $5827: $4a
	sbc $c0                                          ; $5828: $de $c0
	halt                                             ; $582a: $76
	ld b, l                                          ; $582b: $45
	sbc $c0                                          ; $582c: $de $c0
	ld l, [hl]                                       ; $582e: $6e
	ret nz                                           ; $582f: $c0

	ld c, [hl]                                       ; $5830: $4e
	cp h                                             ; $5831: $bc
	ld a, e                                          ; $5832: $7b
	sub h                                            ; $5833: $94
	ld a, a                                          ; $5834: $7f
	xor e                                            ; $5835: $ab
	sbc [hl]                                         ; $5836: $9e
	inc b                                            ; $5837: $04
	ld a, c                                          ; $5838: $79
	add sp, -$06                                     ; $5839: $e8 $fa
	sub b                                            ; $583b: $90
	ld c, $31                                        ; $583c: $0e $31
	ld b, b                                          ; $583e: $40
	ld a, a                                          ; $583f: $7f
	or e                                             ; $5840: $b3
	rst $38                                          ; $5841: $ff
	ld e, a                                          ; $5842: $5f
	db $ec                                           ; $5843: $ec
	ld e, a                                          ; $5844: $5f
	ldh [rWY], a                                     ; $5845: $e0 $4a
	push af                                          ; $5847: $f5
	ld b, b                                          ; $5848: $40
	rst $38                                          ; $5849: $ff
	ld a, a                                          ; $584a: $7f
	ld a, e                                          ; $584b: $7b
	ld d, d                                          ; $584c: $52
	sbc [hl]                                         ; $584d: $9e
	push de                                          ; $584e: $d5
	ld a, e                                          ; $584f: $7b
	cp $9c                                           ; $5850: $fe $9c
	and l                                            ; $5852: $a5
	rst $38                                          ; $5853: $ff
	and h                                            ; $5854: $a4
	ld l, e                                          ; $5855: $6b
	cp $7f                                           ; $5856: $fe $7f
	xor [hl]                                         ; $5858: $ae
	sbc [hl]                                         ; $5859: $9e
	ld d, b                                          ; $585a: $50
	ld a, b                                          ; $585b: $78
	cp d                                             ; $585c: $ba
	add b                                            ; $585d: $80
	inc b                                            ; $585e: $04
	db $fc                                           ; $585f: $fc
	ld [bc], a                                       ; $5860: $02
	cp $42                                           ; $5861: $fe $42
	cp $c1                                           ; $5863: $fe $c1
	rst $38                                          ; $5865: $ff
	pop hl                                           ; $5866: $e1
	rst $38                                          ; $5867: $ff
	ld h, [hl]                                       ; $5868: $66
	cp $7f                                           ; $5869: $fe $7f
	ld sp, hl                                        ; $586b: $f9
	ccf                                              ; $586c: $3f
	pop af                                           ; $586d: $f1
	cpl                                              ; $586e: $2f
	jp hl                                            ; $586f: $e9


	and [hl]                                         ; $5870: $a6
	and $90                                          ; $5871: $e6 $90
	ldh a, [hDisp1_SCY]                                     ; $5873: $f0 $90
	ldh a, [$e0]                                     ; $5875: $f0 $e0
	ldh [$0c], a                                     ; $5877: $e0 $0c
	rrca                                             ; $5879: $0f
	inc de                                           ; $587a: $13
	rra                                              ; $587b: $1f
	daa                                              ; $587c: $27
	sub l                                            ; $587d: $95
	inc a                                            ; $587e: $3c
	jr nz, jr_01c_58c0                               ; $587f: $20 $3f

	jr nz, jr_01c_58c2                               ; $5881: $20 $3f

	db $10                                           ; $5883: $10
	rra                                              ; $5884: $1f
	rrca                                             ; $5885: $0f
	rrca                                             ; $5886: $0f
	inc bc                                           ; $5887: $03
	ld l, e                                          ; $5888: $6b
	ld b, [hl]                                       ; $5889: $46
	sbc h                                            ; $588a: $9c
	add hl, bc                                       ; $588b: $09
	rrca                                             ; $588c: $0f
	ld a, [bc]                                       ; $588d: $0a
	ld [hl], e                                       ; $588e: $73
	cp $df                                           ; $588f: $fe $df
	rlca                                             ; $5891: $07
	sub d                                            ; $5892: $92
	ld b, h                                          ; $5893: $44
	cp h                                             ; $5894: $bc
	ldh [c], a                                       ; $5895: $e2
	cp $b2                                           ; $5896: $fe $b2
	cp $12                                           ; $5898: $fe $12
	cp $22                                           ; $589a: $fe $22
	cp $44                                           ; $589c: $fe $44
	db $fc                                           ; $589e: $fc
	adc b                                            ; $589f: $88
	sbc $f8                                          ; $58a0: $de $f8
	sub [hl]                                         ; $58a2: $96
	ld d, h                                          ; $58a3: $54
	db $fc                                           ; $58a4: $fc
	ld d, h                                          ; $58a5: $54
	db $fc                                           ; $58a6: $fc
	ld d, d                                          ; $58a7: $52
	cp $52                                           ; $58a8: $fe $52
	cp $49                                           ; $58aa: $fe $49
	ld a, c                                          ; $58ac: $79
	call z, Call_01c_4e9b                            ; $58ad: $cc $9b $4e
	cp $fc                                           ; $58b0: $fe $fc
	db $fc                                           ; $58b2: $fc
	rst AddAOntoHL                                          ; $58b3: $ef
	ld c, [hl]                                       ; $58b4: $4e
	ld e, $de                                        ; $58b5: $1e $de
	rlca                                             ; $58b7: $07
	adc a                                            ; $58b8: $8f
	inc b                                            ; $58b9: $04
	dec b                                            ; $58ba: $05
	ld b, $0f                                        ; $58bb: $06 $0f
	add hl, bc                                       ; $58bd: $09
	rst AddAOntoHL                                          ; $58be: $ef
	db $ed                                           ; $58bf: $ed

jr_01c_58c0:
	rst SubAFromDE                                          ; $58c0: $df
	or e                                             ; $58c1: $b3

jr_01c_58c2:
	rst $38                                          ; $58c2: $ff
	db $fd                                           ; $58c3: $fd
	ld a, [hl]                                       ; $58c4: $7e
	ld a, [hl]                                       ; $58c5: $7e
	ld a, $3e                                        ; $58c6: $3e $3e
	rst $38                                          ; $58c8: $ff
	ld d, b                                          ; $58c9: $50
	call z, $fedf                                    ; $58ca: $cc $df $fe
	sbc b                                            ; $58cd: $98
	cp a                                             ; $58ce: $bf
	or c                                             ; $58cf: $b1
	sbc e                                            ; $58d0: $9b
	sbc h                                            ; $58d1: $9c
	rrca                                             ; $58d2: $0f
	inc c                                            ; $58d3: $0c
	rlca                                             ; $58d4: $07
	ld a, c                                          ; $58d5: $79
	inc d                                            ; $58d6: $14
	ld [hl], h                                       ; $58d7: $74
	db $db                                           ; $58d8: $db
	ld a, a                                          ; $58d9: $7f
	ld hl, sp-$21                                    ; $58da: $f8 $df
	rst $38                                          ; $58dc: $ff
	rst SubAFromDE                                          ; $58dd: $df
	rrca                                             ; $58de: $0f
	ld b, h                                          ; $58df: $44
	or d                                             ; $58e0: $b2
	ld a, [hl]                                       ; $58e1: $7e
	ldh a, [$98]                                     ; $58e2: $f0 $98
	ldh [$60], a                                     ; $58e4: $e0 $60
	ldh [$a0], a                                     ; $58e6: $e0 $a0
	ldh a, [rSVBK]                                   ; $58e8: $f0 $70
	ldh a, [$7b]                                     ; $58ea: $f0 $7b
	db $fd                                           ; $58ec: $fd
	rst SubAFromDE                                          ; $58ed: $df
	ldh [$df], a                                     ; $58ee: $e0 $df
	ld hl, sp-$09                                    ; $58f0: $f8 $f7
	rst SubAFromDE                                          ; $58f2: $df
	ld a, a                                          ; $58f3: $7f
	adc e                                            ; $58f4: $8b
	ld a, $26                                        ; $58f5: $3e $26
	ccf                                              ; $58f7: $3f
	inc hl                                           ; $58f8: $23
	rla                                              ; $58f9: $17
	dec de                                           ; $58fa: $1b
	rra                                              ; $58fb: $1f
	rla                                              ; $58fc: $17
	rra                                              ; $58fd: $1f
	add hl, de                                       ; $58fe: $19
	rra                                              ; $58ff: $1f
	inc de                                           ; $5900: $13
	ccf                                              ; $5901: $3f
	ccf                                              ; $5902: $3f
	ld [hl], a                                       ; $5903: $77
	ld l, a                                          ; $5904: $6f
	rst $38                                          ; $5905: $ff
	rst $38                                          ; $5906: $ff
	ld a, a                                          ; $5907: $7f
	ld a, a                                          ; $5908: $7f
	ld d, a                                          ; $5909: $57
	call nz, $fa6f                                   ; $590a: $c4 $6f $fa
	halt                                             ; $590d: $76
	sbc d                                            ; $590e: $9a
	rst SubAFromDE                                          ; $590f: $df
	ret nz                                           ; $5910: $c0

	db $dd                                           ; $5911: $dd
	ldh [$df], a                                     ; $5912: $e0 $df
	ret nz                                           ; $5914: $c0

	ld d, a                                          ; $5915: $57
	ret nz                                           ; $5916: $c0

	rst AddAOntoHL                                          ; $5917: $ef
	ld a, c                                          ; $5918: $79
	inc c                                            ; $5919: $0c
	ld d, a                                          ; $591a: $57
	ldh a, [c]                                       ; $591b: $f2
	sbc d                                            ; $591c: $9a
	inc b                                            ; $591d: $04
	dec c                                            ; $591e: $0d
	dec bc                                           ; $591f: $0b
	rrca                                             ; $5920: $0f
	add hl, bc                                       ; $5921: $09
	ld a, e                                          ; $5922: $7b
	and d                                            ; $5923: $a2
	sub [hl]                                         ; $5924: $96
	ld de, $1f1f                                     ; $5925: $11 $1f $1f
	ccf                                              ; $5928: $3f
	ccf                                              ; $5929: $3f
	ld l, a                                          ; $592a: $6f
	ld e, a                                          ; $592b: $5f
	ld a, a                                          ; $592c: $7f
	ld a, a                                          ; $592d: $7f
	ld c, a                                          ; $592e: $4f
	ld b, b                                          ; $592f: $40
	sub l                                            ; $5930: $95
	cp [hl]                                          ; $5931: $be
	and d                                            ; $5932: $a2
	ld d, $1a                                        ; $5933: $16 $1a
	rra                                              ; $5935: $1f
	inc de                                           ; $5936: $13
	rrca                                             ; $5937: $0f
	dec c                                            ; $5938: $0d
	rrca                                             ; $5939: $0f
	ld [$0fdd], sp                                   ; $593a: $08 $dd $0f
	sbc e                                            ; $593d: $9b
	ld c, $0d                                        ; $593e: $0e $0d
	rrca                                             ; $5940: $0f
	rrca                                             ; $5941: $0f
	ld c, a                                          ; $5942: $4f
	ldh [$5f], a                                     ; $5943: $e0 $5f
	ld a, b                                          ; $5945: $78
	ld [hl], a                                       ; $5946: $77
	ld a, [hl]                                       ; $5947: $7e
	db $dd                                           ; $5948: $dd
	ldh [rVBK], a                                    ; $5949: $e0 $4f
	add d                                            ; $594b: $82
	ld a, a                                          ; $594c: $7f
	ret nz                                           ; $594d: $c0

	adc a                                            ; $594e: $8f
	ld a, [de]                                       ; $594f: $1a
	ld d, $1f                                        ; $5950: $16 $1f
	inc de                                           ; $5952: $13
	rra                                              ; $5953: $1f
	dec d                                            ; $5954: $15
	rrca                                             ; $5955: $0f
	add hl, bc                                       ; $5956: $09
	rrca                                             ; $5957: $0f
	dec bc                                           ; $5958: $0b
	rrca                                             ; $5959: $0f
	ld c, $0f                                        ; $595a: $0e $0f
	inc c                                            ; $595c: $0c
	inc c                                            ; $595d: $0c
	dec bc                                           ; $595e: $0b
	daa                                              ; $595f: $27
	ret nz                                           ; $5960: $c0

	ld a, e                                          ; $5961: $7b
	jp nz, $209c                                     ; $5962: $c2 $9c $20

	and b                                            ; $5965: $a0
	ld h, b                                          ; $5966: $60
	ld b, a                                          ; $5967: $47
	ld b, d                                          ; $5968: $42
	inc c                                            ; $5969: $0c
	add h                                            ; $596a: $84
	pop af                                           ; $596b: $f1
	sub a                                            ; $596c: $97
	ld bc, $0000                                     ; $596d: $01 $00 $00

jr_01c_5970:
	rlca                                             ; $5970: $07
	inc e                                            ; $5971: $1c
	jr nc, jr_01c_59d4                               ; $5972: $30 $60

	ld c, a                                          ; $5974: $4f
	ld [hl], a                                       ; $5975: $77
	ld hl, sp-$65                                    ; $5976: $f8 $9b
	rra                                              ; $5978: $1f
	ccf                                              ; $5979: $3f
	ld a, a                                          ; $597a: $7f
	ld a, a                                          ; $597b: $7f
	pop af                                           ; $597c: $f1
	sub h                                            ; $597d: $94
	ld h, b                                          ; $597e: $60
	sbc b                                            ; $597f: $98
	ld b, a                                          ; $5980: $47
	and d                                            ; $5981: $a2
	inc de                                           ; $5982: $13
	ld a, [bc]                                       ; $5983: $0a
	inc c                                            ; $5984: $0c
	nop                                              ; $5985: $00
	ldh [$f8], a                                     ; $5986: $e0 $f8
	ld a, a                                          ; $5988: $7f
	call c, $f0ff                                    ; $5989: $dc $ff $f0
	sub b                                            ; $598c: $90
	ld b, b                                          ; $598d: $40
	jr nz, jr_01c_5970                               ; $598e: $20 $e0

	or b                                             ; $5990: $b0
	ld d, b                                          ; $5991: $50
	jr z, jr_01c_59ac                                ; $5992: $28 $18

	nop                                              ; $5994: $00
	ret nz                                           ; $5995: $c0

	ldh [$e0], a                                     ; $5996: $e0 $e0
	ldh a, [$f0]                                     ; $5998: $f0 $f0
	ld hl, sp-$08                                    ; $599a: $f8 $f8
	ldh [$d1], a                                     ; $599c: $e0 $d1
	sub h                                            ; $599e: $94
	dec b                                            ; $599f: $05
	ld b, $0f                                        ; $59a0: $06 $0f
	jr c, jr_01c_5a04                                ; $59a2: $38 $60

	ld b, b                                          ; $59a4: $40
	add a                                            ; $59a5: $87
	cp b                                             ; $59a6: $b8
	rlca                                             ; $59a7: $07
	rlca                                             ; $59a8: $07
	rrca                                             ; $59a9: $0f
	ld a, e                                          ; $59aa: $7b
	add d                                            ; $59ab: $82

jr_01c_59ac:
	ccf                                              ; $59ac: $3f
	and b                                            ; $59ad: $a0
	sub l                                            ; $59ae: $95
	adc b                                            ; $59af: $88
	ld h, [hl]                                       ; $59b0: $66
	rra                                              ; $59b1: $1f
	db $d3                                           ; $59b2: $d3
	inc l                                            ; $59b3: $2c
	inc d                                            ; $59b4: $14
	sub [hl]                                         ; $59b5: $96
	add hl, de                                       ; $59b6: $19
	adc a                                            ; $59b7: $8f
	rst SubAFromBC                                          ; $59b8: $e7
	db $db                                           ; $59b9: $db
	rst $38                                          ; $59ba: $ff
	pop af                                           ; $59bb: $f1
	adc a                                            ; $59bc: $8f
	add b                                            ; $59bd: $80
	ld b, b                                          ; $59be: $40
	ld [hl], b                                       ; $59bf: $70
	sbc b                                            ; $59c0: $98
	adc h                                            ; $59c1: $8c
	ld b, h                                          ; $59c2: $44
	ld h, $22                                        ; $59c3: $26 $22
	add b                                            ; $59c5: $80
	ret nz                                           ; $59c6: $c0

	ldh a, [$f8]                                     ; $59c7: $f0 $f8
	db $fc                                           ; $59c9: $fc
	db $fc                                           ; $59ca: $fc
	cp $fe                                           ; $59cb: $fe $fe
	ldh a, [$7f]                                     ; $59cd: $f0 $7f
	daa                                              ; $59cf: $27
	ld a, e                                          ; $59d0: $7b
	sbc a                                            ; $59d1: $9f
	sbc h                                            ; $59d2: $9c
	ret nz                                           ; $59d3: $c0

jr_01c_59d4:
	adc [hl]                                         ; $59d4: $8e
	ld bc, $f87b                                     ; $59d5: $01 $7b $f8
	ld a, a                                          ; $59d8: $7f
	sbc a                                            ; $59d9: $9f
	ccf                                              ; $59da: $3f
	ret nz                                           ; $59db: $c0

	sub l                                            ; $59dc: $95
	db $e4                                           ; $59dd: $e4
	ld [hl-], a                                      ; $59de: $32
	adc a                                            ; $59df: $8f
	ld b, h                                          ; $59e0: $44
	daa                                              ; $59e1: $27
	inc d                                            ; $59e2: $14
	jr jr_01c_59e5                                   ; $59e3: $18 $00

jr_01c_59e5:
	rst SubAFromBC                                          ; $59e5: $e7
	di                                               ; $59e6: $f3
	cpl                                              ; $59e7: $2f
	and b                                            ; $59e8: $a0
	ld [hl], a                                       ; $59e9: $77
	ld e, $98                                        ; $59ea: $1e $98
	ld h, b                                          ; $59ec: $60
	and b                                            ; $59ed: $a0
	ld d, b                                          ; $59ee: $50
	jr nc, jr_01c_59f1                               ; $59ef: $30 $00

jr_01c_59f1:
	add b                                            ; $59f1: $80
	add b                                            ; $59f2: $80
	ld [hl], e                                       ; $59f3: $73
	ld e, $e1                                        ; $59f4: $1e $e1
	sub a                                            ; $59f6: $97
	sbc b                                            ; $59f7: $98
	and c                                            ; $59f8: $a1
	jp Jump_01c_4642                                 ; $59f9: $c3 $42 $46


	add [hl]                                         ; $59fc: $86
	adc a                                            ; $59fd: $8f
	adc a                                            ; $59fe: $8f
	sbc $ff                                          ; $59ff: $de $ff
	rst SubAFromDE                                          ; $5a01: $df
	ld a, a                                          ; $5a02: $7f
	add h                                            ; $5a03: $84

jr_01c_5a04:
	db $fd                                           ; $5a04: $fd
	ld sp, hl                                        ; $5a05: $f9
	rst $38                                          ; $5a06: $ff
	rst SubAFromDE                                          ; $5a07: $df
	ld e, a                                          ; $5a08: $5f
	ld c, c                                          ; $5a09: $49
	ld l, a                                          ; $5a0a: $6f
	cpl                                              ; $5a0b: $2f
	daa                                              ; $5a0c: $27
	ld [de], a                                       ; $5a0d: $12
	add hl, bc                                       ; $5a0e: $09
	db $fd                                           ; $5a0f: $fd
	ld [hl], a                                       ; $5a10: $77
	ld [hl], a                                       ; $5a11: $77
	ld a, b                                          ; $5a12: $78
	jr c, jr_01c_5a51                                ; $5a13: $38 $3c

	rra                                              ; $5a15: $1f
	rrca                                             ; $5a16: $0f
	nop                                              ; $5a17: $00
	add b                                            ; $5a18: $80
	ld hl, $2424                                     ; $5a19: $21 $24 $24
	ld [hl-], a                                      ; $5a1c: $32
	dec sp                                           ; $5a1d: $3b
	rra                                              ; $5a1e: $1f
	db $db                                           ; $5a1f: $db
	rst $38                                          ; $5a20: $ff
	rst SubAFromDE                                          ; $5a21: $df
	rst AddAOntoHL                                          ; $5a22: $ef
	add a                                            ; $5a23: $87
	sbc a                                            ; $5a24: $9f
	rst SubAFromDE                                          ; $5a25: $df
	ld sp, hl                                        ; $5a26: $f9
	rst $38                                          ; $5a27: $ff
	rst $38                                          ; $5a28: $ff
	ld l, [hl]                                       ; $5a29: $6e
	ei                                               ; $5a2a: $fb
	sbc [hl]                                         ; $5a2b: $9e
	ld a, [$2e6e]                                    ; $5a2c: $fa $6e $2e
	nop                                              ; $5a2f: $00
	sub b                                            ; $5a30: $90
	pop af                                           ; $5a31: $f1
	rlca                                             ; $5a32: $07
	rst $38                                          ; $5a33: $ff
	inc d                                            ; $5a34: $14
	inc e                                            ; $5a35: $1c
	ld a, [bc]                                       ; $5a36: $0a
	adc [hl]                                         ; $5a37: $8e
	add $66                                          ; $5a38: $c6 $66
	ld [hl], d                                       ; $5a3a: $72
	xor d                                            ; $5a3b: $aa
	ld [hl], a                                       ; $5a3c: $77
	inc [hl]                                         ; $5a3d: $34
	db $dd                                           ; $5a3e: $dd
	cp $9e                                           ; $5a3f: $fe $9e
	ld [hl], h                                       ; $5a41: $74
	sbc $64                                          ; $5a42: $de $64
	rst SubAFromDE                                          ; $5a44: $df
	ld b, h                                          ; $5a45: $44
	sbc h                                            ; $5a46: $9c
	inc b                                            ; $5a47: $04
	sub h                                            ; $5a48: $94
	cp $de                                           ; $5a49: $fe $de
	call c, $fcdd                                    ; $5a4b: $dc $dd $fc
	ld [hl], a                                       ; $5a4e: $77
	ld l, $dd                                        ; $5a4f: $2e $dd

jr_01c_5a51:
	ld bc, $f85b                                     ; $5a51: $01 $5b $f8
	db $f4                                           ; $5a54: $f4
	sub a                                            ; $5a55: $97
	or b                                             ; $5a56: $b0
	ret nz                                           ; $5a57: $c0

	add d                                            ; $5a58: $82
	add h                                            ; $5a59: $84
	inc c                                            ; $5a5a: $0c
	inc e                                            ; $5a5b: $1c
	ld e, $37                                        ; $5a5c: $1e $37
	db $db                                           ; $5a5e: $db
	rst $38                                          ; $5a5f: $ff
	add l                                            ; $5a60: $85
	ei                                               ; $5a61: $fb
	rst $38                                          ; $5a62: $ff
	rst SubAFromHL                                          ; $5a63: $d7
	sbc a                                            ; $5a64: $9f
	sbc h                                            ; $5a65: $9c
	ld d, a                                          ; $5a66: $57
	ld a, a                                          ; $5a67: $7f
	ld a, a                                          ; $5a68: $7f
	ccf                                              ; $5a69: $3f
	ccf                                              ; $5a6a: $3f
	cp $f3                                           ; $5a6b: $fe $f3
	di                                               ; $5a6d: $f3
	ld a, b                                          ; $5a6e: $78
	ld a, b                                          ; $5a6f: $78
	ld c, h                                          ; $5a70: $4c
	ld h, $23                                        ; $5a71: $26 $23
	nop                                              ; $5a73: $00
	nop                                              ; $5a74: $00
	ld b, c                                          ; $5a75: $41
	ld c, b                                          ; $5a76: $48
	ld c, h                                          ; $5a77: $4c
	ld h, $33                                        ; $5a78: $26 $33
	ld e, $d9                                        ; $5a7a: $1e $d9
	rst $38                                          ; $5a7c: $ff
	add a                                            ; $5a7d: $87
	sbc a                                            ; $5a7e: $9f
	rst GetHLinHL                                          ; $5a7f: $cf
	ld sp, hl                                        ; $5a80: $f9
	rst $38                                          ; $5a81: $ff
	ld l, [hl]                                       ; $5a82: $6e
	ld l, l                                          ; $5a83: $6d
	di                                               ; $5a84: $f3
	sbc [hl]                                         ; $5a85: $9e
	db $ed                                           ; $5a86: $ed
	rst $38                                          ; $5a87: $ff
	ld b, $00                                        ; $5a88: $06 $00
	pop af                                           ; $5a8a: $f1
	di                                               ; $5a8b: $f3
	rrca                                             ; $5a8c: $0f
	rst $38                                          ; $5a8d: $ff
	jr jr_01c_5a98                                   ; $5a8e: $18 $08

	ld [$4484], sp                                   ; $5a90: $08 $84 $44
	ld h, d                                          ; $5a93: $62
	ld [hl-], a                                      ; $5a94: $32
	reti                                             ; $5a95: $d9


	sbc $f8                                          ; $5a96: $de $f8

jr_01c_5a98:
	ld [hl], a                                       ; $5a98: $77
	ld a, l                                          ; $5a99: $7d
	sub e                                            ; $5a9a: $93
	rst $38                                          ; $5a9b: $ff
	ld l, l                                          ; $5a9c: $6d
	ld l, d                                          ; $5a9d: $6a
	ld l, b                                          ; $5a9e: $68
	ld c, b                                          ; $5a9f: $48
	xor b                                            ; $5aa0: $a8
	xor b                                            ; $5aa1: $a8
	adc b                                            ; $5aa2: $88
	adc b                                            ; $5aa3: $88
	rst SubAFromDE                                          ; $5aa4: $df
	jp c, $dcd8                                      ; $5aa5: $da $d8 $dc

	ld hl, sp-$6a                                    ; $5aa8: $f8 $96
	ldh [rSCX], a                                    ; $5aaa: $e0 $43
	add $8c                                          ; $5aac: $c6 $8c
	adc c                                            ; $5aae: $89
	sub c                                            ; $5aaf: $91
	sub d                                            ; $5ab0: $92
	sub e                                            ; $5ab1: $93
	rst $38                                          ; $5ab2: $ff
	ld l, l                                          ; $5ab3: $6d
	pop af                                           ; $5ab4: $f1
	sbc c                                            ; $5ab5: $99
	rst $38                                          ; $5ab6: $ff
	sub a                                            ; $5ab7: $97
	rst SubAFromHL                                          ; $5ab8: $d7
	ld e, [hl]                                       ; $5ab9: $5e
	scf                                              ; $5aba: $37
	inc bc                                           ; $5abb: $03
	ld a, d                                          ; $5abc: $7a
	ld b, e                                          ; $5abd: $43
	rst SubAFromDE                                          ; $5abe: $df
	db $fd                                           ; $5abf: $fd
	sub c                                            ; $5ac0: $91
	ld a, l                                          ; $5ac1: $7d
	inc [hl]                                         ; $5ac2: $34
	ld [bc], a                                       ; $5ac3: $02
	dec b                                            ; $5ac4: $05
	dec b                                            ; $5ac5: $05
	ld [$0011], sp                                   ; $5ac6: $08 $11 $00
	ld b, b                                          ; $5ac9: $40
	ret nz                                           ; $5aca: $c0

	and b                                            ; $5acb: $a0
	ld [hl], b                                       ; $5acc: $70
	ld hl, sp-$44                                    ; $5acd: $f8 $bc
	call c, $8cff                                    ; $5acf: $dc $ff $8c
	cp a                                             ; $5ad2: $bf
	rra                                              ; $5ad3: $1f
	rst GetHLinHL                                          ; $5ad4: $cf
	rst $38                                          ; $5ad5: $ff
	ei                                               ; $5ad6: $fb
	ei                                               ; $5ad7: $fb
	adc e                                            ; $5ad8: $8b
	ei                                               ; $5ad9: $fb
	ld a, [$ffb8]                                    ; $5ada: $fa $b8 $ff
	ld h, a                                          ; $5add: $67
	rst JumpTable                                          ; $5ade: $c7
	add [hl]                                         ; $5adf: $86
	halt                                             ; $5ae0: $76
	ld b, $07                                        ; $5ae1: $06 $07
	rst JumpTable                                          ; $5ae3: $c7
	rst $38                                          ; $5ae4: $ff
	ld c, e                                          ; $5ae5: $4b
	ret nz                                           ; $5ae6: $c0

	sbc l                                            ; $5ae7: $9d
	cp $95                                           ; $5ae8: $fe $95
	ld l, e                                          ; $5aea: $6b
	ret nz                                           ; $5aeb: $c0

	sbc [hl]                                         ; $5aec: $9e
	rst $38                                          ; $5aed: $ff
	ld c, a                                          ; $5aee: $4f
	ret nz                                           ; $5aef: $c0

	sbc [hl]                                         ; $5af0: $9e
	db $fc                                           ; $5af1: $fc
	ld l, e                                          ; $5af2: $6b
	ret nz                                           ; $5af3: $c0

	ld a, a                                          ; $5af4: $7f
	add sp, $6b                                      ; $5af5: $e8 $6b
	ret nz                                           ; $5af7: $c0

	sbc h                                            ; $5af8: $9c
	rlca                                             ; $5af9: $07
	rst SubAFromBC                                          ; $5afa: $e7
	add $73                                          ; $5afb: $c6 $73
	ret nz                                           ; $5afd: $c0

	sub a                                            ; $5afe: $97
	inc hl                                           ; $5aff: $23
	sub c                                            ; $5b00: $91
	sub c                                            ; $5b01: $91
	ld c, c                                          ; $5b02: $49
	ld c, c                                          ; $5b03: $49
	add hl, hl                                       ; $5b04: $29
	add hl, de                                       ; $5b05: $19
	add hl, bc                                       ; $5b06: $09
	reti                                             ; $5b07: $d9


	rst $38                                          ; $5b08: $ff
	sub a                                            ; $5b09: $97
	dec b                                            ; $5b0a: $05
	ld sp, hl                                        ; $5b0b: $f9
	adc c                                            ; $5b0c: $89
	adc c                                            ; $5b0d: $89
	ld c, c                                          ; $5b0e: $49
	ld c, c                                          ; $5b0f: $49
	ld b, l                                          ; $5b10: $45
	dec h                                            ; $5b11: $25
	halt                                             ; $5b12: $76
	sub c                                            ; $5b13: $91
	ld [hl], e                                       ; $5b14: $73
	ldh a, [$9e]                                     ; $5b15: $f0 $9e
	ld [bc], a                                       ; $5b17: $02
	sbc $03                                          ; $5b18: $de $03
	rst SubAFromDE                                          ; $5b1a: $df
	ld [bc], a                                       ; $5b1b: $02
	sbc l                                            ; $5b1c: $9d
	ld bc, $7707                                     ; $5b1d: $01 $07 $77
	ld a, [$03df]                                    ; $5b20: $fa $df $03
	sbc [hl]                                         ; $5b23: $9e
	ld bc, $f57b                                     ; $5b24: $01 $7b $f5
	call c, $de05                                    ; $5b27: $dc $05 $de
	inc bc                                           ; $5b2a: $03
	call c, $8307                                    ; $5b2b: $dc $07 $83
	ld h, e                                          ; $5b2e: $63
	dec b                                            ; $5b2f: $05
	inc a                                            ; $5b30: $3c
	db $f4                                           ; $5b31: $f4
	db $f4                                           ; $5b32: $f4
	xor b                                            ; $5b33: $a8
	ld [$9ff8], sp                                   ; $5b34: $08 $f8 $9f
	rst $38                                          ; $5b37: $ff
	rst $38                                          ; $5b38: $ff
	rst GetHLinHL                                          ; $5b39: $cf
	rrca                                             ; $5b3a: $0f
	ld e, a                                          ; $5b3b: $5f
	rst $38                                          ; $5b3c: $ff
	rst $38                                          ; $5b3d: $ff
	ld e, b                                          ; $5b3e: $58
	ld d, a                                          ; $5b3f: $57
	ld e, a                                          ; $5b40: $5f
	ld e, a                                          ; $5b41: $5f
	cpl                                              ; $5b42: $2f
	ld l, $24                                        ; $5b43: $2e $24
	inc h                                            ; $5b45: $24
	rst $38                                          ; $5b46: $ff
	rst $38                                          ; $5b47: $ff
	ld hl, sp-$08                                    ; $5b48: $f8 $f8
	ld a, d                                          ; $5b4a: $7a
	halt                                             ; $5b4b: $76
	sub [hl]                                         ; $5b4c: $96
	rst $38                                          ; $5b4d: $ff
	sub h                                            ; $5b4e: $94
	sub d                                            ; $5b4f: $92
	sub d                                            ; $5b50: $92
	adc d                                            ; $5b51: $8a
	ld c, d                                          ; $5b52: $4a
	ld l, c                                          ; $5b53: $69
	ld l, c                                          ; $5b54: $69
	ld h, l                                          ; $5b55: $65
	halt                                             ; $5b56: $76
	add c                                            ; $5b57: $81
	sbc [hl]                                         ; $5b58: $9e
	ld a, [hl]                                       ; $5b59: $7e
	sbc $7f                                          ; $5b5a: $de $7f
	sbc l                                            ; $5b5c: $9d
	and l                                            ; $5b5d: $a5
	sub a                                            ; $5b5e: $97
	sbc $92                                          ; $5b5f: $de $92
	sbc h                                            ; $5b61: $9c
	jp z, $80f6                                      ; $5b62: $ca $f6 $80

	ld a, e                                          ; $5b65: $7b
	ld d, l                                          ; $5b66: $55
	sbc $fe                                          ; $5b67: $de $fe
	ld a, a                                          ; $5b69: $7f
	ld hl, sp+$7e                                    ; $5b6a: $f8 $7e
	adc a                                            ; $5b6c: $8f
	sbc $01                                          ; $5b6d: $de $01
	sbc $02                                          ; $5b6f: $de $02
	ld [hl], e                                       ; $5b71: $73
	ld hl, sp-$22                                    ; $5b72: $f8 $de
	inc bc                                           ; $5b74: $03
	ld a, a                                          ; $5b75: $7f
	ld l, h                                          ; $5b76: $6c
	ld a, a                                          ; $5b77: $7f
	sub [hl]                                         ; $5b78: $96
	db $fd                                           ; $5b79: $fd
	sbc h                                            ; $5b7a: $9c
	rlca                                             ; $5b7b: $07
	dec b                                            ; $5b7c: $05
	inc b                                            ; $5b7d: $04
	ld [hl], e                                       ; $5b7e: $73
	ld hl, sp-$69                                    ; $5b7f: $f8 $97
	call z, $73c0                                    ; $5b81: $cc $c0 $73
	ld e, a                                          ; $5b84: $5f
	ld e, a                                          ; $5b85: $5f
	ld c, d                                          ; $5b86: $4a
	ld b, b                                          ; $5b87: $40
	ld a, a                                          ; $5b88: $7f
	ld a, c                                          ; $5b89: $79
	or c                                             ; $5b8a: $b1
	sub l                                            ; $5b8b: $95
	db $ec                                           ; $5b8c: $ec
	ldh [$f5], a                                     ; $5b8d: $e0 $f5
	rst $38                                          ; $5b8f: $ff
	rst $38                                          ; $5b90: $ff
	ld d, l                                          ; $5b91: $55
	push de                                          ; $5b92: $d5
	push de                                          ; $5b93: $d5
	and h                                            ; $5b94: $a4
	and h                                            ; $5b95: $a4
	sbc $e4                                          ; $5b96: $de $e4
	reti                                             ; $5b98: $d9


	rst $38                                          ; $5b99: $ff
	add b                                            ; $5b9a: $80
	ld [hl-], a                                      ; $5b9b: $32
	jp nc, $068a                                     ; $5b9c: $d2 $8a $06

	ld [bc], a                                       ; $5b9f: $02
	ld b, d                                          ; $5ba0: $42
	pop bc                                           ; $5ba1: $c1
	pop hl                                           ; $5ba2: $e1
	ccf                                              ; $5ba3: $3f
	rst SubAFromDE                                          ; $5ba4: $df
	adc a                                            ; $5ba5: $8f
	rlca                                             ; $5ba6: $07
	inc bc                                           ; $5ba7: $03
	ld b, e                                          ; $5ba8: $43
	pop bc                                           ; $5ba9: $c1
	pop hl                                           ; $5baa: $e1
	ld h, a                                          ; $5bab: $67
	ld a, a                                          ; $5bac: $7f
	ccf                                              ; $5bad: $3f
	xor a                                            ; $5bae: $af
	or [hl]                                          ; $5baf: $b6
	sub h                                            ; $5bb0: $94
	sbc b                                            ; $5bb1: $98
	ldh [$67], a                                     ; $5bb2: $e0 $67
	ld a, c                                          ; $5bb4: $79
	ld sp, $beb9                                     ; $5bb5: $31 $b9 $be
	sbc h                                            ; $5bb8: $9c
	sbc b                                            ; $5bb9: $98
	sbc [hl]                                         ; $5bba: $9e
	ldh [$da], a                                     ; $5bbb: $e0 $da
	add b                                            ; $5bbd: $80
	ld a, c                                          ; $5bbe: $79
	sub c                                            ; $5bbf: $91
	ld l, a                                          ; $5bc0: $6f
	ld hl, sp-$20                                    ; $5bc1: $f8 $e0
	ldh [$65], a                                     ; $5bc3: $e0 $65
	cp $6b                                           ; $5bc5: $fe $6b
	ld hl, sp-$65                                    ; $5bc7: $f8 $9b
	ld a, a                                          ; $5bc9: $7f
	ld a, $3f                                        ; $5bca: $3e $3f
	rla                                              ; $5bcc: $17
	sbc $1f                                          ; $5bcd: $de $1f
	ld a, l                                          ; $5bcf: $7d
	dec d                                            ; $5bd0: $15
	ld a, [hl]                                       ; $5bd1: $7e
	dec d                                            ; $5bd2: $15
	sbc b                                            ; $5bd3: $98
	dec de                                           ; $5bd4: $1b
	rla                                              ; $5bd5: $17
	add hl, de                                       ; $5bd6: $19
	inc de                                           ; $5bd7: $13
	ccf                                              ; $5bd8: $3f
	ld l, a                                          ; $5bd9: $6f
	rst $38                                          ; $5bda: $ff
	ld l, h                                          ; $5bdb: $6c
	dec l                                            ; $5bdc: $2d
	ld a, a                                          ; $5bdd: $7f
	dec d                                            ; $5bde: $15
	ld l, a                                          ; $5bdf: $6f
	ld hl, sp+$77                                    ; $5be0: $f8 $77
	xor [hl]                                         ; $5be2: $ae
	ld [hl], l                                       ; $5be3: $75
	dec [hl]                                         ; $5be4: $35
	ld h, a                                          ; $5be5: $67
	ld hl, sp-$63                                    ; $5be6: $f8 $9d
	ldh [$c0], a                                     ; $5be8: $e0 $c0
	ld l, h                                          ; $5bea: $6c
	ld c, l                                          ; $5beb: $4d
	ld h, a                                          ; $5bec: $67
	ld hl, sp-$21                                    ; $5bed: $f8 $df
	rlca                                             ; $5bef: $07
	sub b                                            ; $5bf0: $90
	dec b                                            ; $5bf1: $05
	rrca                                             ; $5bf2: $0f
	rst AddAOntoHL                                          ; $5bf3: $ef
	rst SubAFromDE                                          ; $5bf4: $df
	rst $38                                          ; $5bf5: $ff
	ld a, [hl]                                       ; $5bf6: $7e
	rlca                                             ; $5bf7: $07
	inc b                                            ; $5bf8: $04
	ld b, $09                                        ; $5bf9: $06 $09
	db $ed                                           ; $5bfb: $ed
	or e                                             ; $5bfc: $b3
	db $fd                                           ; $5bfd: $fd
	ld a, [hl]                                       ; $5bfe: $7e
	ld a, $68                                        ; $5bff: $3e $68
	xor $67                                          ; $5c01: $ee $67
	ld hl, sp-$65                                    ; $5c03: $f8 $9b
	ld a, [$9bbf]                                    ; $5c05: $fa $bf $9b
	rrca                                             ; $5c08: $0f
	ld a, d                                          ; $5c09: $7a
	and h                                            ; $5c0a: $a4
	sub e                                            ; $5c0b: $93
	inc bc                                           ; $5c0c: $03
	cp $b1                                           ; $5c0d: $fe $b1
	sbc h                                            ; $5c0f: $9c
	inc c                                            ; $5c10: $0c
	ld b, $03                                        ; $5c11: $06 $03
	ld [bc], a                                       ; $5c13: $02
	inc bc                                           ; $5c14: $03
	ld b, $ff                                        ; $5c15: $06 $ff
	rrca                                             ; $5c17: $0f
	ld l, h                                          ; $5c18: $6c
	jr c, jr_01c_5c86                                ; $5c19: $38 $6b

	ld hl, sp+$7b                                    ; $5c1b: $f8 $7b
	xor d                                            ; $5c1d: $aa
	ld l, b                                          ; $5c1e: $68
	ret c                                            ; $5c1f: $d8

	ld a, h                                          ; $5c20: $7c
	ld h, [hl]                                       ; $5c21: $66
	ld a, h                                          ; $5c22: $7c
	ret z                                            ; $5c23: $c8

	sbc e                                            ; $5c24: $9b
	ld [hl], b                                       ; $5c25: $70
	ldh a, [$f0]                                     ; $5c26: $f0 $f0
	ldh [$6f], a                                     ; $5c28: $e0 $6f
	xor b                                            ; $5c2a: $a8
	ld h, a                                          ; $5c2b: $67
	ld hl, sp-$6b                                    ; $5c2c: $f8 $95
	ld e, [hl]                                       ; $5c2e: $5e
	ld c, h                                          ; $5c2f: $4c
	add a                                            ; $5c30: $87
	add l                                            ; $5c31: $85
	push bc                                          ; $5c32: $c5
	ld l, l                                          ; $5c33: $6d
	inc a                                            ; $5c34: $3c
	inc bc                                           ; $5c35: $03
	ld [hl], e                                       ; $5c36: $73
	ld a, a                                          ; $5c37: $7f
	ld a, d                                          ; $5c38: $7a
	xor a                                            ; $5c39: $af
	sbc d                                            ; $5c3a: $9a
	ld a, [hl]                                       ; $5c3b: $7e
	ccf                                              ; $5c3c: $3f
	inc bc                                           ; $5c3d: $03
	dec b                                            ; $5c3e: $05
	dec b                                            ; $5c3f: $05
	sbc $09                                          ; $5c40: $de $09
	rst SubAFromDE                                          ; $5c42: $df
	ld [de], a                                       ; $5c43: $12
	sbc [hl]                                         ; $5c44: $9e
	ld c, $79                                        ; $5c45: $0e $79
	db $fd                                           ; $5c47: $fd
	rst SubAFromDE                                          ; $5c48: $df
	rrca                                             ; $5c49: $0f
	rst SubAFromDE                                          ; $5c4a: $df
	rra                                              ; $5c4b: $1f
	sub [hl]                                         ; $5c4c: $96
	rrca                                             ; $5c4d: $0f
	db $e3                                           ; $5c4e: $e3
	rrca                                             ; $5c4f: $0f
	ld sp, $e9f1                                     ; $5c50: $31 $f1 $e9
	ld l, b                                          ; $5c53: $68
	ld [$78fc], sp                                   ; $5c54: $08 $fc $78
	rst SubAFromDE                                          ; $5c57: $df
	sbc l                                            ; $5c58: $9d
	rst GetHLinHL                                          ; $5c59: $cf
	rra                                              ; $5c5a: $1f
	ld a, d                                          ; $5c5b: $7a
	ld e, e                                          ; $5c5c: $5b
	sub a                                            ; $5c5d: $97
	ld d, l                                          ; $5c5e: $55
	ld d, a                                          ; $5c5f: $57
	ld d, l                                          ; $5c60: $55
	ld d, l                                          ; $5c61: $55
	ld d, d                                          ; $5c62: $52
	ld c, d                                          ; $5c63: $4a
	ld c, e                                          ; $5c64: $4b
	ld c, [hl]                                       ; $5c65: $4e
	jp c, $96ff                                      ; $5c66: $da $ff $96

	cp $48                                           ; $5c69: $fe $48
	ld c, b                                          ; $5c6b: $48
	ld l, b                                          ; $5c6c: $68
	jr z, jr_01c_5c93                                ; $5c6d: $28 $24

	and h                                            ; $5c6f: $a4
	sub h                                            ; $5c70: $94
	db $f4                                           ; $5c71: $f4
	db $dd                                           ; $5c72: $dd
	ld hl, sp-$23                                    ; $5c73: $f8 $dd
	db $fc                                           ; $5c75: $fc
	adc h                                            ; $5c76: $8c
	ldh a, [c]                                       ; $5c77: $f2
	ld a, [$7afa]                                    ; $5c78: $fa $fa $7a
	sub h                                            ; $5c7b: $94
	cp b                                             ; $5c7c: $b8
	ret nz                                           ; $5c7d: $c0

	nop                                              ; $5c7e: $00
	ld a, $1e                                        ; $5c7f: $3e $1e
	adc $fe                                          ; $5c81: $ce $fe
	db $fc                                           ; $5c83: $fc
	ld hl, sp-$40                                    ; $5c84: $f8 $c0

jr_01c_5c86:
	nop                                              ; $5c86: $00
	rrca                                             ; $5c87: $0f
	rlca                                             ; $5c88: $07
	dec bc                                           ; $5c89: $0b
	sbc $09                                          ; $5c8a: $de $09
	sbc e                                            ; $5c8c: $9b
	dec c                                            ; $5c8d: $0d
	rlca                                             ; $5c8e: $07
	ld [$dc04], sp                                   ; $5c8f: $08 $04 $dc
	rrca                                             ; $5c92: $0f

jr_01c_5c93:
	sbc [hl]                                         ; $5c93: $9e
	rlca                                             ; $5c94: $07
	ld h, h                                          ; $5c95: $64
	db $dd                                           ; $5c96: $dd
	reti                                             ; $5c97: $d9


	ld bc, $c996                                     ; $5c98: $01 $96 $c9
	jr jr_01c_5d05                                   ; $5c9b: $18 $68

	add h                                            ; $5c9d: $84
	call nz, $0242                                   ; $5c9e: $c4 $42 $02
	rst $38                                          ; $5ca1: $ff
	cp a                                             ; $5ca2: $bf
	sbc $ff                                          ; $5ca3: $de $ff
	sbc [hl]                                         ; $5ca5: $9e
	ccf                                              ; $5ca6: $3f
	ld a, e                                          ; $5ca7: $7b
	ei                                               ; $5ca8: $fb
	sub a                                            ; $5ca9: $97
	dec hl                                           ; $5caa: $2b
	xor e                                            ; $5cab: $ab
	xor e                                            ; $5cac: $ab
	xor d                                            ; $5cad: $aa

jr_01c_5cae:
	xor d                                            ; $5cae: $aa
	and l                                            ; $5caf: $a5
	sub l                                            ; $5cb0: $95
	sub a                                            ; $5cb1: $97
	reti                                             ; $5cb2: $d9


	rst $38                                          ; $5cb3: $ff
	sbc h                                            ; $5cb4: $9c
	and l                                            ; $5cb5: $a5
	ld h, l                                          ; $5cb6: $65
	ld h, l                                          ; $5cb7: $65
	db $dd                                           ; $5cb8: $dd
	dec h                                            ; $5cb9: $25
	sbc [hl]                                         ; $5cba: $9e
	ld h, l                                          ; $5cbb: $65
	ld a, c                                          ; $5cbc: $79
	or c                                             ; $5cbd: $b1
	db $dd                                           ; $5cbe: $dd
	ccf                                              ; $5cbf: $3f
	sub a                                            ; $5cc0: $97
	ld a, a                                          ; $5cc1: $7f
	db $ed                                           ; $5cc2: $ed
	ld c, c                                          ; $5cc3: $49
	ld d, e                                          ; $5cc4: $53
	sub $ac                                          ; $5cc5: $d6 $ac
	ld a, b                                          ; $5cc7: $78
	ld b, b                                          ; $5cc8: $40
	ld a, d                                          ; $5cc9: $7a
	nop                                              ; $5cca: $00
	ld a, a                                          ; $5ccb: $7f
	add h                                            ; $5ccc: $84
	sbc [hl]                                         ; $5ccd: $9e
	db $fc                                           ; $5cce: $fc
	ld a, e                                          ; $5ccf: $7b
	ld hl, sp+$03                                    ; $5cd0: $f8 $03
	and b                                            ; $5cd2: $a0
	inc bc                                           ; $5cd3: $03
	and b                                            ; $5cd4: $a0
	dec bc                                           ; $5cd5: $0b
	and b                                            ; $5cd6: $a0
	ld a, c                                          ; $5cd7: $79
	ld c, h                                          ; $5cd8: $4c
	ld [hl], l                                       ; $5cd9: $75
	and [hl]                                         ; $5cda: $a6
	sbc [hl]                                         ; $5cdb: $9e
	rrca                                             ; $5cdc: $0f
	ld a, c                                          ; $5cdd: $79
	sbc l                                            ; $5cde: $9d
	ld [hl], a                                       ; $5cdf: $77
	ld hl, sp-$64                                    ; $5ce0: $f8 $9c
	rlca                                             ; $5ce2: $07
	rra                                              ; $5ce3: $1f
	rlca                                             ; $5ce4: $07
	db $fc                                           ; $5ce5: $fc
	sbc [hl]                                         ; $5ce6: $9e
	ld b, $6b                                        ; $5ce7: $06 $6b
	ld hl, sp+$7c                                    ; $5ce9: $f8 $7c
	ld a, a                                          ; $5ceb: $7f
	sbc l                                            ; $5cec: $9d
	ldh a, [$78]                                     ; $5ced: $f0 $78
	ld [hl], h                                       ; $5cef: $74
	ld h, [hl]                                       ; $5cf0: $66
	sub l                                            ; $5cf1: $95
	ld hl, sp+$60                                    ; $5cf2: $f8 $60
	jr nc, jr_01c_5cae                               ; $5cf4: $30 $b8

	ld a, b                                          ; $5cf6: $78
	sbc h                                            ; $5cf7: $9c
	inc a                                            ; $5cf8: $3c
	cp $7e                                           ; $5cf9: $fe $7e
	db $fc                                           ; $5cfb: $fc
	ld l, [hl]                                       ; $5cfc: $6e
	ld h, a                                          ; $5cfd: $67
	ld a, a                                          ; $5cfe: $7f
	jp Jump_01c_5f6a                                 ; $5cff: $c3 $6a $5f


	ldh a, [$65]                                     ; $5d02: $f0 $65
	cp h                                             ; $5d04: $bc

jr_01c_5d05:
	ld l, a                                          ; $5d05: $6f
	ld hl, sp+$49                                    ; $5d06: $f8 $49
	pop de                                           ; $5d08: $d1
	ld a, a                                          ; $5d09: $7f
	ld hl, sp+$7f                                    ; $5d0a: $f8 $7f
	ld a, $53                                        ; $5d0c: $3e $53
	ld hl, sp+$7f                                    ; $5d0e: $f8 $7f
	xor a                                            ; $5d10: $af
	sbc l                                            ; $5d11: $9d
	ld a, [hl]                                       ; $5d12: $7e
	dec hl                                           ; $5d13: $2b
	sbc $3f                                          ; $5d14: $de $3f
	ld a, a                                          ; $5d16: $7f
	ld [hl], e                                       ; $5d17: $73
	rst SubAFromDE                                          ; $5d18: $df
	ld d, d                                          ; $5d19: $52
	sbc b                                            ; $5d1a: $98
	dec a                                            ; $5d1b: $3d
	add hl, hl                                       ; $5d1c: $29
	ccf                                              ; $5d1d: $3f
	add hl, hl                                       ; $5d1e: $29
	rst $38                                          ; $5d1f: $ff
	ld l, a                                          ; $5d20: $6f
	rst $38                                          ; $5d21: $ff
	ld l, a                                          ; $5d22: $6f
	xor b                                            ; $5d23: $a8
	ld a, l                                          ; $5d24: $7d
	db $ed                                           ; $5d25: $ed
	ld d, e                                          ; $5d26: $53
	and b                                            ; $5d27: $a0
	ld h, e                                          ; $5d28: $63
	xor e                                            ; $5d29: $ab
	rst SubAFromDE                                          ; $5d2a: $df
	add b                                            ; $5d2b: $80
	sbc [hl]                                         ; $5d2c: $9e
	ldh [rOCPD], a                                   ; $5d2d: $e0 $6b
	rst FarCall                                          ; $5d2f: $f7
	ld l, a                                          ; $5d30: $6f
	ld hl, sp+$41                                    ; $5d31: $f8 $41
	ld h, c                                          ; $5d33: $61
	ld b, e                                          ; $5d34: $43
	and b                                            ; $5d35: $a0
	sbc l                                            ; $5d36: $9d
	ld [hl], a                                       ; $5d37: $77
	cpl                                              ; $5d38: $2f
	ld [hl], e                                       ; $5d39: $73
	and b                                            ; $5d3a: $a0
	sub a                                            ; $5d3b: $97
	ld h, d                                          ; $5d3c: $62
	ld e, c                                          ; $5d3d: $59
	add hl, sp                                       ; $5d3e: $39
	ld h, $3c                                        ; $5d3f: $26 $3c
	daa                                              ; $5d41: $27
	rst $38                                          ; $5d42: $ff
	cp e                                             ; $5d43: $bb
	ld l, e                                          ; $5d44: $6b
	xor b                                            ; $5d45: $a8
	sbc [hl]                                         ; $5d46: $9e
	ld [hl], a                                       ; $5d47: $77
	ld e, a                                          ; $5d48: $5f
	and b                                            ; $5d49: $a0
	ld [hl], l                                       ; $5d4a: $75
	cp a                                             ; $5d4b: $bf
	ld [hl], a                                       ; $5d4c: $77
	or e                                             ; $5d4d: $b3
	ld [hl], e                                       ; $5d4e: $73
	ld hl, sp-$62                                    ; $5d4f: $f8 $9e
	ret nz                                           ; $5d51: $c0

	ld l, e                                          ; $5d52: $6b
	xor b                                            ; $5d53: $a8
	ld h, a                                          ; $5d54: $67
	ld hl, sp-$07                                    ; $5d55: $f8 $f9
	sub a                                            ; $5d57: $97
	ret nz                                           ; $5d58: $c0

	jr nz, jr_01c_5dcb                               ; $5d59: $20 $70

	ld hl, sp-$04                                    ; $5d5b: $f8 $fc
	cp h                                             ; $5d5d: $bc
	ld a, $1e                                        ; $5d5e: $3e $1e
	ld sp, hl                                        ; $5d60: $f9
	sbc b                                            ; $5d61: $98
	sbc b                                            ; $5d62: $98
	add b                                            ; $5d63: $80
	ret nz                                           ; $5d64: $c0

	ld b, b                                          ; $5d65: $40
	ld b, b                                          ; $5d66: $40
	ld h, b                                          ; $5d67: $60
	ld h, b                                          ; $5d68: $60
	ld c, a                                          ; $5d69: $4f
	ld b, $14                                        ; $5d6a: $06 $14
	cp a                                             ; $5d6c: $bf
	ld a, c                                          ; $5d6d: $79
	inc bc                                           ; $5d6e: $03
	db $dd                                           ; $5d6f: $dd
	ret nz                                           ; $5d70: $c0

	ld c, e                                          ; $5d71: $4b
	db $ec                                           ; $5d72: $ec
	ldh [$e0], a                                     ; $5d73: $e0 $e0
	ld [hl], e                                       ; $5d75: $73
	inc bc                                           ; $5d76: $03
	db $eb                                           ; $5d77: $eb
	rst SubAFromDE                                          ; $5d78: $df
	rlca                                             ; $5d79: $07
	sub a                                            ; $5d7a: $97
	add hl, bc                                       ; $5d7b: $09
	rrca                                             ; $5d7c: $0f
	inc de                                           ; $5d7d: $13
	rra                                              ; $5d7e: $1f
	ld l, $3f                                        ; $5d7f: $2e $3f
	ld d, h                                          ; $5d81: $54
	ld a, a                                          ; $5d82: $7f
	db $ed                                           ; $5d83: $ed
	rst SubAFromDE                                          ; $5d84: $df
	ld a, h                                          ; $5d85: $7c
	sbc d                                            ; $5d86: $9a
	add e                                            ; $5d87: $83
	rst $38                                          ; $5d88: $ff
	ldh a, [c]                                       ; $5d89: $f2
	rst $38                                          ; $5d8a: $ff
	dec c                                            ; $5d8b: $0d
	ld [hl], e                                       ; $5d8c: $73
	db $fc                                           ; $5d8d: $fc
	jp hl                                            ; $5d8e: $e9


	rst SubAFromDE                                          ; $5d8f: $df
	add b                                            ; $5d90: $80
	rst SubAFromDE                                          ; $5d91: $df
	ret nz                                           ; $5d92: $c0

	rst SubAFromDE                                          ; $5d93: $df
	ldh [$9d], a                                     ; $5d94: $e0 $9d
	ld h, b                                          ; $5d96: $60
	ldh [$fb], a                                     ; $5d97: $e0 $fb
	sbc $01                                          ; $5d99: $de $01
	sub h                                            ; $5d9b: $94
	rlca                                             ; $5d9c: $07
	inc c                                            ; $5d9d: $0c
	rrca                                             ; $5d9e: $0f
	inc bc                                           ; $5d9f: $03
	rlca                                             ; $5da0: $07
	inc b                                            ; $5da1: $04
	rlca                                             ; $5da2: $07
	inc bc                                           ; $5da3: $03
	inc bc                                           ; $5da4: $03
	nop                                              ; $5da5: $00
	inc bc                                           ; $5da6: $03
	push af                                          ; $5da7: $f5
	add b                                            ; $5da8: $80
	inc h                                            ; $5da9: $24
	ld a, a                                          ; $5daa: $7f
	db $e4                                           ; $5dab: $e4
	rst $38                                          ; $5dac: $ff
	jp z, $d2ff                                      ; $5dad: $ca $ff $d2

	rst $38                                          ; $5db0: $ff
	and l                                            ; $5db1: $a5
	rst $38                                          ; $5db2: $ff
	xor a                                            ; $5db3: $af
	db $fd                                           ; $5db4: $fd
	db $db                                           ; $5db5: $db
	db $fc                                           ; $5db6: $fc
	ld d, a                                          ; $5db7: $57
	ld hl, sp+$7d                                    ; $5db8: $f8 $7d
	cp $3f                                           ; $5dba: $fe $3f
	ccf                                              ; $5dbc: $3f
	inc sp                                           ; $5dbd: $33
	ld [hl-], a                                      ; $5dbe: $32
	ld h, a                                          ; $5dbf: $67
	ld h, h                                          ; $5dc0: $64
	ld b, a                                          ; $5dc1: $47
	ld b, h                                          ; $5dc2: $44
	ld b, e                                          ; $5dc3: $43
	ld b, d                                          ; $5dc4: $42
	ld h, a                                          ; $5dc5: $67
	ld h, a                                          ; $5dc6: $67
	ld sp, $3180                                     ; $5dc7: $31 $80 $31
	ld [bc], a                                       ; $5dca: $02

jr_01c_5dcb:
	rst $38                                          ; $5dcb: $ff
	ld bc, $90ff                                     ; $5dcc: $01 $ff $90
	rst $38                                          ; $5dcf: $ff
	ld c, h                                          ; $5dd0: $4c
	rst $38                                          ; $5dd1: $ff
	ld l, d                                          ; $5dd2: $6a
	rst $38                                          ; $5dd3: $ff
	dec a                                            ; $5dd4: $3d
	ei                                               ; $5dd5: $fb
	cp [hl]                                          ; $5dd6: $be
	rst $38                                          ; $5dd7: $ff
	rst $38                                          ; $5dd8: $ff
	ld h, b                                          ; $5dd9: $60
	ei                                               ; $5dda: $fb
	inc a                                            ; $5ddb: $3c
	db $fd                                           ; $5ddc: $fd
	xor $f7                                          ; $5ddd: $ee $f7
	ld a, h                                          ; $5ddf: $7c
	rst AddAOntoHL                                          ; $5de0: $ef
	jr c, @+$01                                      ; $5de1: $38 $ff

	ld hl, $43fd                                     ; $5de3: $21 $fd $43
	rst FarCall                                          ; $5de6: $f7
	adc a                                            ; $5de7: $8f
	add e                                            ; $5de8: $83
	ccf                                              ; $5de9: $3f
	rst $38                                          ; $5dea: $ff
	xor h                                            ; $5deb: $ac
	db $fc                                           ; $5dec: $fc
	ld e, d                                          ; $5ded: $5a
	cp $b8                                           ; $5dee: $fe $b8
	rst $38                                          ; $5df0: $ff
	ld a, a                                          ; $5df1: $7f
	rst $38                                          ; $5df2: $ff
	ld e, b                                          ; $5df3: $58
	cp $2c                                           ; $5df4: $fe $2c
	rst $38                                          ; $5df6: $ff
	xor d                                            ; $5df7: $aa
	rst $38                                          ; $5df8: $ff
	ld l, c                                          ; $5df9: $69
	rst SubAFromDE                                          ; $5dfa: $df
	call $d47f                                       ; $5dfb: $cd $7f $d4
	halt                                             ; $5dfe: $76
	ldh [c], a                                       ; $5dff: $e2
	ld h, d                                          ; $5e00: $62
	add b                                            ; $5e01: $80
	ret nz                                           ; $5e02: $c0

	add b                                            ; $5e03: $80
	add b                                            ; $5e04: $80
	ld l, a                                          ; $5e05: $6f
	ld a, d                                          ; $5e06: $7a
	ld b, a                                          ; $5e07: $47
	and b                                            ; $5e08: $a0
	adc a                                            ; $5e09: $8f
	ld a, a                                          ; $5e0a: $7f
	ldh a, [$37]                                     ; $5e0b: $f0 $37
	ccf                                              ; $5e0d: $3f
	inc e                                            ; $5e0e: $1c
	inc e                                            ; $5e0f: $1c
	jr jr_01c_5e2a                                   ; $5e10: $18 $18

	db $10                                           ; $5e12: $10
	db $10                                           ; $5e13: $10
	inc d                                            ; $5e14: $14
	inc d                                            ; $5e15: $14
	inc de                                           ; $5e16: $13
	inc de                                           ; $5e17: $13
	add hl, bc                                       ; $5e18: $09
	add hl, bc                                       ; $5e19: $09
	ld b, a                                          ; $5e1a: $47
	and b                                            ; $5e1b: $a0
	ld a, a                                          ; $5e1c: $7f
	cpl                                              ; $5e1d: $2f
	sub h                                            ; $5e1e: $94
	ei                                               ; $5e1f: $fb
	call c, $3e3f                                    ; $5e20: $dc $3f $3e
	ccf                                              ; $5e23: $3f
	inc h                                            ; $5e24: $24
	ld a, a                                          ; $5e25: $7f

jr_01c_5e26:
	ld b, e                                          ; $5e26: $43
	ld a, l                                          ; $5e27: $7d
	ld h, a                                          ; $5e28: $67
	rst FarCall                                          ; $5e29: $f7

jr_01c_5e2a:
	sbc $ff                                          ; $5e2a: $de $ff
	db $ec                                           ; $5e2c: $ec
	sub h                                            ; $5e2d: $94
	ld e, $00                                        ; $5e2e: $1e $00
	ld a, $00                                        ; $5e30: $3e $00
	ld a, h                                          ; $5e32: $7c
	nop                                              ; $5e33: $00
	ld e, h                                          ; $5e34: $5c
	nop                                              ; $5e35: $00
	ld h, b                                          ; $5e36: $60
	nop                                              ; $5e37: $00
	jr nc, jr_01c_5e26                               ; $5e38: $30 $ec

	sbc [hl]                                         ; $5e3a: $9e
	jr jr_01c_5eb8                                   ; $5e3b: $18 $7b

	add sp, -$64                                     ; $5e3d: $e8 $9c

Call_01c_5e3f:
	ld [hl], b                                       ; $5e3f: $70
	nop                                              ; $5e40: $00
	ld a, b                                          ; $5e41: $78
	ld a, e                                          ; $5e42: $7b
	ld a, [$1c9e]                                    ; $5e43: $fa $9e $1c
	rla                                              ; $5e46: $17
	ld h, b                                          ; $5e47: $60
	halt                                             ; $5e48: $76
	call c, $ddf9                                    ; $5e49: $dc $f9 $dd
	ld bc, $069e                                     ; $5e4c: $01 $9e $06
	ld a, d                                          ; $5e4f: $7a
	ldh [$7f], a                                     ; $5e50: $e0 $7f
	db $fc                                           ; $5e52: $fc
	ld a, [hl]                                       ; $5e53: $7e
	add e                                            ; $5e54: $83
	ld a, d                                          ; $5e55: $7a
	call c, $80f8                                    ; $5e56: $dc $f8 $80
	ld h, h                                          ; $5e59: $64
	ld a, a                                          ; $5e5a: $7f
	call z, $92ff                                    ; $5e5b: $cc $ff $92
	rst $38                                          ; $5e5e: $ff
	and a                                            ; $5e5f: $a7
	rst $38                                          ; $5e60: $ff
	cpl                                              ; $5e61: $2f
	db $fd                                           ; $5e62: $fd
	ld c, l                                          ; $5e63: $4d
	ld a, [$fc5f]                                    ; $5e64: $fa $5f $fc
	rst SubAFromDE                                          ; $5e67: $df
	ld a, [$fe3f]                                    ; $5e68: $fa $3f $fe
	ei                                               ; $5e6b: $fb
	xor $3f                                          ; $5e6c: $ee $3f
	ld h, h                                          ; $5e6e: $64
	cpl                                              ; $5e6f: $2f
	pop af                                           ; $5e70: $f1
	inc e                                            ; $5e71: $1c
	sub e                                            ; $5e72: $93
	rrca                                             ; $5e73: $0f
	ld [$0605], sp                                   ; $5e74: $08 $05 $06
	inc bc                                           ; $5e77: $03
	add b                                            ; $5e78: $80
	inc bc                                           ; $5e79: $03
	ld [bc], a                                       ; $5e7a: $02
	rst $38                                          ; $5e7b: $ff
	and c                                            ; $5e7c: $a1
	rst $38                                          ; $5e7d: $ff
	ld e, h                                          ; $5e7e: $5c
	rst $38                                          ; $5e7f: $ff
	ld a, [hl+]                                      ; $5e80: $2a
	rst $38                                          ; $5e81: $ff
	dec l                                            ; $5e82: $2d
	ei                                               ; $5e83: $fb
	or a                                             ; $5e84: $b7
	reti                                             ; $5e85: $d9


	cp a                                             ; $5e86: $bf
	ld e, [hl]                                       ; $5e87: $5e
	rst $38                                          ; $5e88: $ff
	ld [hl], a                                       ; $5e89: $77
	rst $38                                          ; $5e8a: $ff
	ld a, $f7                                        ; $5e8b: $3e $f7
	inc e                                            ; $5e8d: $1c
	rst $38                                          ; $5e8e: $ff
	ld [$c0ff], sp                                   ; $5e8f: $08 $ff $c0
	cp a                                             ; $5e92: $bf
	ld h, c                                          ; $5e93: $61
	db $fd                                           ; $5e94: $fd
	inc bc                                           ; $5e95: $03
	or $0e                                           ; $5e96: $f6 $0e
	sbc l                                            ; $5e98: $9d
	ld a, $fe                                        ; $5e99: $3e $fe
	ld c, $e0                                        ; $5e9b: $0e $e0
	jp hl                                            ; $5e9d: $e9


	rst SubAFromDE                                          ; $5e9e: $df
	inc bc                                           ; $5e9f: $03
	sbc [hl]                                         ; $5ea0: $9e
	dec c                                            ; $5ea1: $0d
	ld [hl], d                                       ; $5ea2: $72
	nop                                              ; $5ea3: $00
	sbc [hl]                                         ; $5ea4: $9e
	ld [hl], h                                       ; $5ea5: $74
	ld [hl-], a                                      ; $5ea6: $32
	nop                                              ; $5ea7: $00
	rst SubAFromDE                                          ; $5ea8: $df
	ld a, b                                          ; $5ea9: $78
	sub [hl]                                         ; $5eaa: $96
	add [hl]                                         ; $5eab: $86
	cp $fb                                           ; $5eac: $fe $fb
	rst $38                                          ; $5eae: $ff
	push bc                                          ; $5eaf: $c5
	rst $38                                          ; $5eb0: $ff
	ld a, [hl-]                                      ; $5eb1: $3a
	rst $38                                          ; $5eb2: $ff
	dec b                                            ; $5eb3: $05
	ld [hl+], a                                      ; $5eb4: $22
	nop                                              ; $5eb5: $00
	ld l, a                                          ; $5eb6: $6f
	ld [hl+], a                                      ; $5eb7: $22

jr_01c_5eb8:
	ld a, [hl]                                       ; $5eb8: $7e
	nop                                              ; $5eb9: $00
	ld a, a                                          ; $5eba: $7f
	cp b                                             ; $5ebb: $b8
	sbc [hl]                                         ; $5ebc: $9e
	ld [bc], a                                       ; $5ebd: $02
	ld a, e                                          ; $5ebe: $7b
	ld e, e                                          ; $5ebf: $5b
	ld a, a                                          ; $5ec0: $7f
	cp $7b                                           ; $5ec1: $fe $7b
	db $fd                                           ; $5ec3: $fd
	sbc h                                            ; $5ec4: $9c
	inc bc                                           ; $5ec5: $03
	ld bc, $7301                                     ; $5ec6: $01 $01 $73
	ld a, [$039c]                                    ; $5ec9: $fa $9c $03
	dec b                                            ; $5ecc: $05
	rlca                                             ; $5ecd: $07
	ld l, a                                          ; $5ece: $6f
	cp $df                                           ; $5ecf: $fe $df
	inc bc                                           ; $5ed1: $03
	rst SubAFromDE                                          ; $5ed2: $df
	ld bc, $6380                                     ; $5ed3: $01 $80 $63
	sbc a                                            ; $5ed6: $9f
	ld b, $ff                                        ; $5ed7: $06 $ff
	cp b                                             ; $5ed9: $b8
	rst $38                                          ; $5eda: $ff
	ldh a, [rVBK]                                    ; $5edb: $f0 $4f
	db $f4                                           ; $5edd: $f4
	rrca                                             ; $5ede: $0f

jr_01c_5edf:
	and h                                            ; $5edf: $a4
	ld e, a                                          ; $5ee0: $5f
	inc b                                            ; $5ee1: $04
	rst $38                                          ; $5ee2: $ff
	db $fc                                           ; $5ee3: $fc
	rst $38                                          ; $5ee4: $ff
	ld d, [hl]                                       ; $5ee5: $56
	rst $38                                          ; $5ee6: $ff
	ld d, a                                          ; $5ee7: $57
	rst $38                                          ; $5ee8: $ff
	ld c, a                                          ; $5ee9: $4f
	db $fc                                           ; $5eea: $fc
	ld c, a                                          ; $5eeb: $4f
	db $fc                                           ; $5eec: $fc
	dec hl                                           ; $5eed: $2b
	cp $29                                           ; $5eee: $fe $29
	rst $38                                          ; $5ef0: $ff
	inc h                                            ; $5ef1: $24
	rst $38                                          ; $5ef2: $ff
	daa                                              ; $5ef3: $27
	ld a, e                                          ; $5ef4: $7b
	and b                                            ; $5ef5: $a0
	db $dd                                           ; $5ef6: $dd
	add b                                            ; $5ef7: $80
	sbc c                                            ; $5ef8: $99
	ld b, b                                          ; $5ef9: $40
	ret nz                                           ; $5efa: $c0

	ld b, b                                          ; $5efb: $40
	ret nz                                           ; $5efc: $c0

	jr nz, jr_01c_5edf                               ; $5efd: $20 $e0

Call_01c_5eff:
	ld [hl], a                                       ; $5eff: $77
	cp $7f                                           ; $5f00: $fe $7f
	xor [hl]                                         ; $5f02: $ae
	sbc $c0                                          ; $5f03: $de $c0
	ld [hl], a                                       ; $5f05: $77
	pop af                                           ; $5f06: $f1
	sbc $c0                                          ; $5f07: $de $c0
	ld [hl], a                                       ; $5f09: $77
	inc a                                            ; $5f0a: $3c
	inc bc                                           ; $5f0b: $03
	ret nz                                           ; $5f0c: $c0

	dec bc                                           ; $5f0d: $0b
	ret nz                                           ; $5f0e: $c0

	ld a, a                                          ; $5f0f: $7f
	ld [hl], b                                       ; $5f10: $70
	rst SubAFromDE                                          ; $5f11: $df
	rlca                                             ; $5f12: $07
	ld a, [hl]                                       ; $5f13: $7e
	cp b                                             ; $5f14: $b8
	adc c                                            ; $5f15: $89
	dec bc                                           ; $5f16: $0b
	ld c, $0a                                        ; $5f17: $0e $0a
	rrca                                             ; $5f19: $0f
	ld a, [bc]                                       ; $5f1a: $0a
	rrca                                             ; $5f1b: $0f
	ld [de], a                                       ; $5f1c: $12
	rra                                              ; $5f1d: $1f
	inc de                                           ; $5f1e: $13
	rra                                              ; $5f1f: $1f
	ld d, $1f                                        ; $5f20: $16 $1f
	ld e, $1b                                        ; $5f22: $1e $1b
	rra                                              ; $5f24: $1f
	inc de                                           ; $5f25: $13
	inc e                                            ; $5f26: $1c
	rla                                              ; $5f27: $17
	ld c, $0b                                        ; $5f28: $0e $0b
	rlca                                             ; $5f2a: $07
	rlca                                             ; $5f2b: $07
	ld a, e                                          ; $5f2c: $7b
	ld b, [hl]                                       ; $5f2d: $46
	sbc [hl]                                         ; $5f2e: $9e
	inc bc                                           ; $5f2f: $03
	ld b, a                                          ; $5f30: $47
	and b                                            ; $5f31: $a0
	sbc [hl]                                         ; $5f32: $9e
	ld d, e                                          ; $5f33: $53
	ld a, e                                          ; $5f34: $7b
	and d                                            ; $5f35: $a2
	sbc b                                            ; $5f36: $98
	ld b, a                                          ; $5f37: $47
	db $fc                                           ; $5f38: $fc
	ld b, e                                          ; $5f39: $43
	cp $4f                                           ; $5f3a: $fe $4f
	db $fc                                           ; $5f3c: $fc
	daa                                              ; $5f3d: $27
	ld a, e                                          ; $5f3e: $7b
	and b                                            ; $5f3f: $a0
	sbc [hl]                                         ; $5f40: $9e
	cpl                                              ; $5f41: $2f
	ld [hl], e                                       ; $5f42: $73
	and b                                            ; $5f43: $a0
	ld [hl], a                                       ; $5f44: $77
	xor a                                            ; $5f45: $af
	ld l, a                                          ; $5f46: $6f
	and d                                            ; $5f47: $a2
	ld [hl], a                                       ; $5f48: $77
	cp $67                                           ; $5f49: $fe $67
	and b                                            ; $5f4b: $a0
	db $dd                                           ; $5f4c: $dd
	add b                                            ; $5f4d: $80
	db $ed                                           ; $5f4e: $ed
	rst SubAFromDE                                          ; $5f4f: $df
	ld bc, $964c                                     ; $5f50: $01 $4c $96
	ld a, [hl]                                       ; $5f53: $7e
	inc c                                            ; $5f54: $0c
	ld a, a                                          ; $5f55: $7f
	db $fd                                           ; $5f56: $fd
	sub e                                            ; $5f57: $93
	rrca                                             ; $5f58: $0f
	add hl, bc                                       ; $5f59: $09
	rst AddAOntoHL                                          ; $5f5a: $ef
	db $ed                                           ; $5f5b: $ed
	rst SubAFromDE                                          ; $5f5c: $df
	or e                                             ; $5f5d: $b3
	rst $38                                          ; $5f5e: $ff

jr_01c_5f5f:
	db $fd                                           ; $5f5f: $fd
	ld a, [hl]                                       ; $5f60: $7e
	ld a, [hl]                                       ; $5f61: $7e

jr_01c_5f62:
	ld a, $3e                                        ; $5f62: $3e $3e
	ld c, l                                          ; $5f64: $4d

jr_01c_5f65:
	adc h                                            ; $5f65: $8c
	sub [hl]                                         ; $5f66: $96
	ld a, [$bffe]                                    ; $5f67: $fa $fe $bf

Jump_01c_5f6a:
	or c                                             ; $5f6a: $b1
	sbc a                                            ; $5f6b: $9f
	sbc b                                            ; $5f6c: $98
	rrca                                             ; $5f6d: $0f
	inc c                                            ; $5f6e: $0c
	rlca                                             ; $5f6f: $07
	ld a, d                                          ; $5f70: $7a
	inc d                                            ; $5f71: $14
	ld a, d                                          ; $5f72: $7a
	jp $0398                                         ; $5f73: $c3 $98 $03


	ld b, $05                                        ; $5f76: $06 $05
	rst $38                                          ; $5f78: $ff
	rst $38                                          ; $5f79: $ff
	rrca                                             ; $5f7a: $0f
	rrca                                             ; $5f7b: $0f
	ld b, d                                          ; $5f7c: $42
	sub [hl]                                         ; $5f7d: $96
	sbc [hl]                                         ; $5f7e: $9e
	ld b, b                                          ; $5f7f: $40
	ld a, e                                          ; $5f80: $7b
	daa                                              ; $5f81: $27
	sbc h                                            ; $5f82: $9c
	and b                                            ; $5f83: $a0
	ldh a, [rSVBK]                                   ; $5f84: $f0 $70
	db $dd                                           ; $5f86: $dd
	ldh a, [$df]                                     ; $5f87: $f0 $df
	ldh [$df], a                                     ; $5f89: $e0 $df
	ld hl, sp-$20                                    ; $5f8b: $f8 $e0
	ret c                                            ; $5f8d: $d8

	sbc [hl]                                         ; $5f8e: $9e
	inc b                                            ; $5f8f: $04
	rst FarCall                                          ; $5f90: $f7
	sbc d                                            ; $5f91: $9a
	stop                                             ; $5f92: $10 $00
	db $10                                           ; $5f94: $10
	jr z, jr_01c_6013                                ; $5f95: $28 $7c

	ld a, e                                          ; $5f97: $7b
	db $fc                                           ; $5f98: $fc
	ld a, a                                          ; $5f99: $7f

jr_01c_5f9a:
	ld hl, sp-$15                                    ; $5f9a: $f8 $eb
	sbc [hl]                                         ; $5f9c: $9e
	ld b, h                                          ; $5f9d: $44
	ld a, e                                          ; $5f9e: $7b
	push hl                                          ; $5f9f: $e5
	sbc d                                            ; $5fa0: $9a
	db $10                                           ; $5fa1: $10
	ld l, h                                          ; $5fa2: $6c
	jr z, @+$12                                      ; $5fa3: $28 $10

	ld b, h                                          ; $5fa5: $44
	inc sp                                           ; $5fa6: $33
	rst SubAFromDE                                          ; $5fa7: $df
	ld a, e                                          ; $5fa8: $7b
	jp nz, $df7b                                     ; $5fa9: $c2 $7b $df

	sbc [hl]                                         ; $5fac: $9e
	cp $77                                           ; $5fad: $fe $77
	ret nz                                           ; $5faf: $c0

	dec sp                                           ; $5fb0: $3b
	rst SubAFromDE                                          ; $5fb1: $df
	rst SubAFromDE                                          ; $5fb2: $df
	ld bc, $03df                                     ; $5fb3: $01 $df $03
	ld a, d                                          ; $5fb6: $7a
	db $10                                           ; $5fb7: $10
	sbc b                                            ; $5fb8: $98
	rrca                                             ; $5fb9: $0f
	ld c, $0f                                        ; $5fba: $0e $0f
	ld bc, $0603                                     ; $5fbc: $01 $03 $06
	ld b, $f5                                        ; $5fbf: $06 $f5
	ld l, l                                          ; $5fc1: $6d
	jr nz, jr_01c_5f62                               ; $5fc2: $20 $9e

	and [hl]                                         ; $5fc4: $a6
	ld a, c                                          ; $5fc5: $79
	jr nz, jr_01c_5f65                               ; $5fc6: $20 $9d

	ld c, a                                          ; $5fc8: $4f
	ld hl, sp+$79                                    ; $5fc9: $f8 $79
	jr nz, jr_01c_5f5f                               ; $5fcb: $20 $92

	cp $ff                                           ; $5fcd: $fe $ff
	ld a, [$ee3f]                                    ; $5fcf: $fa $3f $ee
	ld a, e                                          ; $5fd2: $7b
	ld l, [hl]                                       ; $5fd3: $6e
	rra                                              ; $5fd4: $1f
	inc d                                            ; $5fd5: $14
	rra                                              ; $5fd6: $1f
	ld de, $090e                                     ; $5fd7: $11 $0e $09
	ld l, l                                          ; $5fda: $6d
	jr nz, @-$64                                     ; $5fdb: $20 $9a

	add c                                            ; $5fdd: $81
	rst $38                                          ; $5fde: $ff
	ld d, b                                          ; $5fdf: $50
	rst $38                                          ; $5fe0: $ff
	inc l                                            ; $5fe1: $2c
	ld a, c                                          ; $5fe2: $79
	ld e, $95                                        ; $5fe3: $1e $95
	or l                                             ; $5fe5: $b5
	res 7, a                                         ; $5fe6: $cb $bf
	db $dd                                           ; $5fe8: $dd
	rst $38                                          ; $5fe9: $ff
	ccf                                              ; $5fea: $3f
	rst $38                                          ; $5feb: $ff
	ld d, $ff                                        ; $5fec: $16 $ff
	ld e, $75                                        ; $5fee: $1e $75
	ld e, $96                                        ; $5ff0: $1e $96
	cp $81                                           ; $5ff2: $fe $81
	db $fd                                           ; $5ff4: $fd
	jp $0ef6                                         ; $5ff5: $c3 $f6 $0e


	inc a                                            ; $5ff8: $3c
	db $fc                                           ; $5ff9: $fc
	cp h                                             ; $5ffa: $bc
	ld a, c                                          ; $5ffb: $79
	jr nz, jr_01c_5f9a                               ; $5ffc: $20 $9c

	or b                                             ; $5ffe: $b0
	rst $38                                          ; $5fff: $ff
	ld l, a                                          ; $6000: $6f
	ld [hl], c                                       ; $6001: $71
	jr nz, jr_01c_6083                               ; $6002: $20 $7f

	call c, $e996                                    ; $6004: $dc $96 $e9
	sbc a                                            ; $6007: $9f
	db $ed                                           ; $6008: $ed

jr_01c_6009:
	sbc a                                            ; $6009: $9f
	db $f4                                           ; $600a: $f4
	ld d, $e2                                        ; $600b: $16 $e2
	ld h, d                                          ; $600d: $62
	ld b, b                                          ; $600e: $40
	add hl, bc                                       ; $600f: $09
	jr nz, jr_01c_6009                               ; $6010: $20 $f7

	add [hl]                                         ; $6012: $86

jr_01c_6013:
	ld d, $19                                        ; $6013: $16 $19
	jr nz, @+$41                                     ; $6015: $20 $3f

	inc sp                                           ; $6017: $33
	ccf                                              ; $6018: $3f
	ccf                                              ; $6019: $3f
	inc l                                            ; $601a: $2c
	ccf                                              ; $601b: $3f
	jr nz, @+$2c                                     ; $601c: $20 $2a

	dec [hl]                                         ; $601e: $35
	jr nz, jr_01c_6060                               ; $601f: $20 $3f

	rra                                              ; $6021: $1f
	rra                                              ; $6022: $1f
	dec h                                            ; $6023: $25
	ccf                                              ; $6024: $3f
	dec h                                            ; $6025: $25
	ccf                                              ; $6026: $3f
	dec d                                            ; $6027: $15
	ccf                                              ; $6028: $3f
	ld d, l                                          ; $6029: $55
	ld a, a                                          ; $602a: $7f
	ld d, d                                          ; $602b: $52
	ld l, e                                          ; $602c: $6b
	cp $7e                                           ; $602d: $fe $7e
	jr nc, @-$68                                     ; $602f: $30 $96

	ld d, b                                          ; $6031: $50
	ldh a, [$c8]                                     ; $6032: $f0 $c8
	ld hl, sp+$48                                    ; $6034: $f8 $48
	ld hl, sp+$44                                    ; $6036: $f8 $44
	db $fc                                           ; $6038: $fc
	add h                                            ; $6039: $84
	ld [hl], e                                       ; $603a: $73
	cp $99                                           ; $603b: $fe $99

Jump_01c_603d:
	adc b                                            ; $603d: $88
	ld hl, sp+$78                                    ; $603e: $f8 $78
	ld hl, sp-$08                                    ; $6040: $f8 $f8
	adc b                                            ; $6042: $88
	ld a, e                                          ; $6043: $7b
	cp $9d                                           ; $6044: $fe $9d
	sbc b                                            ; $6046: $98
	add sp, $7b                                      ; $6047: $e8 $7b
	ld [$8f7e], a                                    ; $6049: $ea $7e $8f
	ld [bc], a                                       ; $604c: $02
	sbc a                                            ; $604d: $9f
	add a                                            ; $604e: $87
	rlca                                             ; $604f: $07
	inc c                                            ; $6050: $0c
	rrca                                             ; $6051: $0f
	rla                                              ; $6052: $17
	rra                                              ; $6053: $1f
	dec d                                            ; $6054: $15
	ld e, $15                                        ; $6055: $1e $15
	ld e, $24                                        ; $6057: $1e $24
	ccf                                              ; $6059: $3f
	inc h                                            ; $605a: $24
	ccf                                              ; $605b: $3f
	daa                                              ; $605c: $27
	ccf                                              ; $605d: $3f
	ld h, l                                          ; $605e: $65
	ld a, a                                          ; $605f: $7f

jr_01c_6060:
	ld a, l                                          ; $6060: $7d
	ld e, a                                          ; $6061: $5f
	ld a, l                                          ; $6062: $7d
	ld c, a                                          ; $6063: $4f
	ld a, [hl-]                                      ; $6064: $3a
	ccf                                              ; $6065: $3f
	ld a, [bc]                                       ; $6066: $0a
	ld a, d                                          ; $6067: $7a
	db $f4                                           ; $6068: $f4
	ld [hl], a                                       ; $6069: $77
	cp $96                                           ; $606a: $fe $96
	jp nz, $0d3e                                     ; $606c: $c2 $3e $0d

	rst $38                                          ; $606f: $ff
	jr c, @+$01                                      ; $6070: $38 $ff

	ldh a, [$cf]                                     ; $6072: $f0 $cf
	ldh a, [$79]                                     ; $6074: $f0 $79
	and b                                            ; $6076: $a0
	sbc h                                            ; $6077: $9c
	inc c                                            ; $6078: $0c
	rst $38                                          ; $6079: $ff
	cp $71                                           ; $607a: $fe $71
	ld b, b                                          ; $607c: $40
	ld a, l                                          ; $607d: $7d
	sbc h                                            ; $607e: $9c
	sub l                                            ; $607f: $95
	ld c, d                                          ; $6080: $4a

jr_01c_6081:
	cp $4a                                           ; $6081: $fe $4a

jr_01c_6083:
	cp $49                                           ; $6083: $fe $49
	rst $38                                          ; $6085: $ff
	ld c, c                                          ; $6086: $49
	rst $38                                          ; $6087: $ff
	ld c, [hl]                                       ; $6088: $4e
	cp $6e                                           ; $6089: $fe $6e
	jr nz, jr_01c_6102                               ; $608b: $20 $75

	and b                                            ; $608d: $a0
	sbc h                                            ; $608e: $9c
	jr nc, jr_01c_6081                               ; $608f: $30 $f0

	db $10                                           ; $6091: $10
	ld a, e                                          ; $6092: $7b
	cp $7e                                           ; $6093: $fe $7e
	add hl, de                                       ; $6095: $19
	sbc l                                            ; $6096: $9d
	ldh a, [hDisp1_SCY]                                     ; $6097: $f0 $90
	ld a, e                                          ; $6099: $7b
	ld sp, hl                                        ; $609a: $f9
	sbc h                                            ; $609b: $9c
	sub b                                            ; $609c: $90
	ld h, b                                          ; $609d: $60
	ld h, b                                          ; $609e: $60
	ei                                               ; $609f: $fb
	rst SubAFromDE                                          ; $60a0: $df
	ld a, a                                          ; $60a1: $7f
	adc h                                            ; $60a2: $8c
	ld a, $26                                        ; $60a3: $3e $26
	ccf                                              ; $60a5: $3f
	inc hl                                           ; $60a6: $23
	rla                                              ; $60a7: $17
	dec de                                           ; $60a8: $1b
	rra                                              ; $60a9: $1f
	rla                                              ; $60aa: $17
	rra                                              ; $60ab: $1f
	add hl, de                                       ; $60ac: $19
	rra                                              ; $60ad: $1f
	inc de                                           ; $60ae: $13
	ccf                                              ; $60af: $3f
	ccf                                              ; $60b0: $3f
	ld l, a                                          ; $60b1: $6f
	ld e, a                                          ; $60b2: $5f
	rst $38                                          ; $60b3: $ff
	rst $38                                          ; $60b4: $ff
	ld a, a                                          ; $60b5: $7f
	ld e, b                                          ; $60b6: $58
	ld c, d                                          ; $60b7: $4a
	ld h, [hl]                                       ; $60b8: $66
	ld hl, sp-$23                                    ; $60b9: $f8 $dd
	add b                                            ; $60bb: $80
	rst SubAFromDE                                          ; $60bc: $df
	ret nz                                           ; $60bd: $c0

	db $dd                                           ; $60be: $dd
	ldh [$df], a                                     ; $60bf: $e0 $df
	ret nz                                           ; $60c1: $c0

	ld d, l                                          ; $60c2: $55
	ldh [$dd], a                                     ; $60c3: $e0 $dd
	ld bc, $5a56                                     ; $60c5: $01 $56 $5a
	ld a, l                                          ; $60c8: $7d
	and b                                            ; $60c9: $a0
	rst SubAFromDE                                          ; $60ca: $df
	rlca                                             ; $60cb: $07
	ld d, a                                          ; $60cc: $57
	ret nz                                           ; $60cd: $c0

	sbc $fe                                          ; $60ce: $de $fe
	sbc b                                            ; $60d0: $98
	ld [hl-], a                                      ; $60d1: $32
	cp [hl]                                          ; $60d2: $be
	jp nc, $9dfb                                     ; $60d3: $d2 $fb $9d

	rst $38                                          ; $60d6: $ff
	sbc c                                            ; $60d7: $99
	sbc $ff                                          ; $60d8: $de $ff
	sbc d                                            ; $60da: $9a
	jr nc, @+$01                                     ; $60db: $30 $ff

	rst $38                                          ; $60dd: $ff
	rst FarCall                                          ; $60de: $f7
	rst AddAOntoHL                                          ; $60df: $ef
	db $dd                                           ; $60e0: $dd
	rst $38                                          ; $60e1: $ff
	db $ed                                           ; $60e2: $ed
	rst SubAFromHL                                          ; $60e3: $d7
	add b                                            ; $60e4: $80
	rst SubAFromDE                                          ; $60e5: $df
	ret nz                                           ; $60e6: $c0

	rst FarCall                                          ; $60e7: $f7
	cp l                                             ; $60e8: $bd
	inc b                                            ; $60e9: $04
	db $eb                                           ; $60ea: $eb
	rst SubAFromDE                                          ; $60eb: $df
	ld bc, $0697                                     ; $60ec: $01 $97 $06
	rlca                                             ; $60ef: $07
	dec bc                                           ; $60f0: $0b
	rrca                                             ; $60f1: $0f
	inc d                                            ; $60f2: $14
	rra                                              ; $60f3: $1f
	dec bc                                           ; $60f4: $0b
	rra                                              ; $60f5: $1f
	rst AddAOntoHL                                          ; $60f6: $ef
	sub c                                            ; $60f7: $91
	db $10                                           ; $60f8: $10
	ld [hl], b                                       ; $60f9: $70
	jr z, @+$3e                                      ; $60fa: $28 $3c

	or e                                             ; $60fc: $b3
	rst $38                                          ; $60fd: $ff
	ld c, h                                          ; $60fe: $4c
	rst $38                                          ; $60ff: $ff
	or e                                             ; $6100: $b3
	rst $38                                          ; $6101: $ff

jr_01c_6102:
	ld e, h                                          ; $6102: $5c
	rst $38                                          ; $6103: $ff
	and d                                            ; $6104: $a2
	rst $38                                          ; $6105: $ff
	db $eb                                           ; $6106: $eb
	rst SubAFromDE                                          ; $6107: $df
	add b                                            ; $6108: $80
	sub a                                            ; $6109: $97
	ld h, b                                          ; $610a: $60
	ldh [rAUD1SWEEP], a                              ; $610b: $e0 $10
	ldh a, [hDisp0_WY]                                     ; $610d: $f0 $88

jr_01c_610f:
	ld hl, sp+$48                                    ; $610f: $f8 $48
	ld hl, sp-$17                                    ; $6111: $f8 $e9
	rst SubAFromDE                                          ; $6113: $df
	inc bc                                           ; $6114: $03
	sbc [hl]                                         ; $6115: $9e
	inc b                                            ; $6116: $04
	ld a, e                                          ; $6117: $7b
	sbc [hl]                                         ; $6118: $9e
	sbc l                                            ; $6119: $9d
	inc c                                            ; $611a: $0c
	rrca                                             ; $611b: $0f
	db $eb                                           ; $611c: $eb
	rst SubAFromDE                                          ; $611d: $df
	ld c, a                                          ; $611e: $4f
	sbc h                                            ; $611f: $9c
	jr nc, @+$01                                     ; $6120: $30 $ff

	dec e                                            ; $6122: $1d
	ld a, e                                          ; $6123: $7b
	and d                                            ; $6124: $a2
	sbc [hl]                                         ; $6125: $9e
	ld l, l                                          ; $6126: $6d
	dec hl                                           ; $6127: $2b
	and b                                            ; $6128: $a0
	rst $38                                          ; $6129: $ff
	rst SubAFromDE                                          ; $612a: $df
	ret nz                                           ; $612b: $c0

	sbc d                                            ; $612c: $9a
	jr nz, jr_01c_610f                               ; $612d: $20 $e0

	sub b                                            ; $612f: $90
	ldh a, [$58]                                     ; $6130: $f0 $58
	dec de                                           ; $6132: $1b
	and b                                            ; $6133: $a0
	sbc d                                            ; $6134: $9a
	dec c                                            ; $6135: $0d
	rrca                                             ; $6136: $0f
	ld c, $0f                                        ; $6137: $0e $0f
	jr jr_01c_6176                                   ; $6139: $18 $3b

	ld b, b                                          ; $613b: $40
	db $fd                                           ; $613c: $fd
	rst SubAFromDE                                          ; $613d: $df

jr_01c_613e:
	db $fd                                           ; $613e: $fd
	sbc b                                            ; $613f: $98
	jp $1bff                                         ; $6140: $c3 $ff $1b


	rst $38                                          ; $6143: $ff
	ld h, l                                          ; $6144: $65
	rst $38                                          ; $6145: $ff
	sbc h                                            ; $6146: $9c
	inc hl                                           ; $6147: $23
	ld b, b                                          ; $6148: $40
	rst SubAFromDE                                          ; $6149: $df
	ldh [$9c], a                                     ; $614a: $e0 $9c
	jr nc, jr_01c_613e                               ; $614c: $30 $f0

	ld d, b                                          ; $614e: $50
	ld a, e                                          ; $614f: $7b
	ld a, $9a                                        ; $6150: $3e $9a
	inc [hl]                                         ; $6152: $34
	ccf                                              ; $6153: $3f
	jr z, jr_01c_6195                                ; $6154: $28 $3f

	ld de, $fe7b                                     ; $6156: $11 $7b $fe
	add b                                            ; $6159: $80
	ld [hl+], a                                      ; $615a: $22
	ccf                                              ; $615b: $3f
	ld h, e                                          ; $615c: $63
	ld a, [hl]                                       ; $615d: $7e
	ld b, a                                          ; $615e: $47
	ld a, h                                          ; $615f: $7c
	dec [hl]                                         ; $6160: $35
	ld a, a                                          ; $6161: $7f
	ld l, a                                          ; $6162: $6f
	ld a, [hl]                                       ; $6163: $7e
	cpl                                              ; $6164: $2f
	dec sp                                           ; $6165: $3b
	ld c, [hl]                                       ; $6166: $4e
	ld a, e                                          ; $6167: $7b
	ld b, a                                          ; $6168: $47
	ld a, h                                          ; $6169: $7c
	ld d, a                                          ; $616a: $57
	ld a, h                                          ; $616b: $7c
	inc sp                                           ; $616c: $33
	ccf                                              ; $616d: $3f
	rra                                              ; $616e: $1f
	jr jr_01c_61b0                                   ; $616f: $18 $3f

	ld sp, $fff1                                     ; $6171: $31 $f1 $ff
	ld c, b                                          ; $6174: $48
	rst $38                                          ; $6175: $ff

jr_01c_6176:
	and h                                            ; $6176: $a4
	rst $38                                          ; $6177: $ff
	db $f4                                           ; $6178: $f4
	add b                                            ; $6179: $80
	rst $38                                          ; $617a: $ff
	ldh a, [c]                                       ; $617b: $f2
	sbc a                                            ; $617c: $9f
	ldh a, [c]                                       ; $617d: $f2
	sbc a                                            ; $617e: $9f
	halt                                             ; $617f: $76
	adc e                                            ; $6180: $8b
	rst $38                                          ; $6181: $ff
	add a                                            ; $6182: $87
	rst $38                                          ; $6183: $ff
	set 7, a                                         ; $6184: $cb $ff
	ld c, $fb                                        ; $6186: $0e $fb
	ld c, $ff                                        ; $6188: $0e $ff
	nop                                              ; $618a: $00
	rst FarCall                                          ; $618b: $f7
	ld a, b                                          ; $618c: $78
	adc $31                                          ; $618d: $ce $31
	rst $38                                          ; $618f: $ff
	add e                                            ; $6190: $83
	adc $ff                                          ; $6191: $ce $ff
	inc h                                            ; $6193: $24
	db $fc                                           ; $6194: $fc

jr_01c_6195:
	and h                                            ; $6195: $a4
	db $fc                                           ; $6196: $fc
	sub d                                            ; $6197: $92
	cp $9e                                           ; $6198: $fe $9e
	ld c, d                                          ; $619a: $4a
	ld a, e                                          ; $619b: $7b
	cp $83                                           ; $619c: $fe $83
	inc h                                            ; $619e: $24
	cp $32                                           ; $619f: $fe $32
	rst $38                                          ; $61a1: $ff
	inc e                                            ; $61a2: $1c
	cp $f4                                           ; $61a3: $fe $f4
	db $fc                                           ; $61a5: $fc
	or h                                             ; $61a6: $b4
	ld e, h                                          ; $61a7: $5c
	ldh a, [c]                                       ; $61a8: $f2
	ld e, $aa                                        ; $61a9: $1e $aa

jr_01c_61ab:
	ld a, [hl]                                       ; $61ab: $7e
	ld b, l                                          ; $61ac: $45
	rst $38                                          ; $61ad: $ff
	and l                                            ; $61ae: $a5
	rst $38                                          ; $61af: $ff

jr_01c_61b0:
	inc de                                           ; $61b0: $13
	rst $38                                          ; $61b1: $ff
	ld [de], a                                       ; $61b2: $12
	cp $00                                           ; $61b3: $fe $00
	ld l, h                                          ; $61b5: $6c
	nop                                              ; $61b6: $00
	jr z, jr_01c_61b9                                ; $61b7: $28 $00

jr_01c_61b9:
	db $10                                           ; $61b9: $10
	rst SubAFromBC                                          ; $61ba: $e7
	add b                                            ; $61bb: $80
	add hl, hl                                       ; $61bc: $29
	ccf                                              ; $61bd: $3f
	ld d, b                                          ; $61be: $50
	ld a, a                                          ; $61bf: $7f
	and e                                            ; $61c0: $a3
	rst $38                                          ; $61c1: $ff
	inc hl                                           ; $61c2: $23
	ccf                                              ; $61c3: $3f
	ld b, l                                          ; $61c4: $45
	ld a, a                                          ; $61c5: $7f
	ld b, a                                          ; $61c6: $47
	db $fd                                           ; $61c7: $fd
	adc [hl]                                         ; $61c8: $8e
	ld sp, hl                                        ; $61c9: $f9
	ld l, e                                          ; $61ca: $6b

jr_01c_61cb:
	rst $38                                          ; $61cb: $ff
	rst SubAFromDE                                          ; $61cc: $df
	db $fd                                           ; $61cd: $fd
	ld e, a                                          ; $61ce: $5f
	ld [hl], a                                       ; $61cf: $77
	sbc l                                            ; $61d0: $9d
	rst FarCall                                          ; $61d1: $f7
	adc a                                            ; $61d2: $8f
	ld hl, sp-$51                                    ; $61d3: $f8 $af
	ld hl, sp+$67                                    ; $61d5: $f8 $67
	ld a, h                                          ; $61d7: $7c
	inc hl                                           ; $61d8: $23
	ccf                                              ; $61d9: $3f
	ld de, $1f8c                                     ; $61da: $11 $8c $1f
	ldh [c], a                                       ; $61dd: $e2
	rst $38                                          ; $61de: $ff
	sub c                                            ; $61df: $91
	rst $38                                          ; $61e0: $ff
	ld c, c                                          ; $61e1: $49
	rst $38                                          ; $61e2: $ff
	add sp, -$01                                     ; $61e3: $e8 $ff
	db $e4                                           ; $61e5: $e4
	ccf                                              ; $61e6: $3f
	db $e4                                           ; $61e7: $e4
	ccf                                              ; $61e8: $3f
	db $ec                                           ; $61e9: $ec
	rla                                              ; $61ea: $17
	cp $1f                                           ; $61eb: $fe $1f
	rst $38                                          ; $61ed: $ff
	dec bc                                           ; $61ee: $0b
	ld [hl], a                                       ; $61ef: $77
	add b                                            ; $61f0: $80
	sub h                                            ; $61f1: $94
	rst SubAFromDE                                          ; $61f2: $df
	jr nz, jr_01c_6253                               ; $61f3: $20 $5e

	pop hl                                           ; $61f5: $e1
	db $fd                                           ; $61f6: $fd
	inc bc                                           ; $61f7: $03
	cp $07                                           ; $61f8: $fe $07
	sbc b                                            ; $61fa: $98
	rst $38                                          ; $61fb: $ff
	ld c, b                                          ; $61fc: $48
	ld a, d                                          ; $61fd: $7a
	ld a, h                                          ; $61fe: $7c
	ld a, a                                          ; $61ff: $7f
	ld a, h                                          ; $6200: $7c
	sbc [hl]                                         ; $6201: $9e
	sub h                                            ; $6202: $94
	ld a, e                                          ; $6203: $7b
	cp $90                                           ; $6204: $fe $90
	ld c, b                                          ; $6206: $48
	db $fc                                           ; $6207: $fc
	ld h, h                                          ; $6208: $64
	cp $38                                           ; $6209: $fe $38
	db $fc                                           ; $620b: $fc
	add sp, -$08                                     ; $620c: $e8 $f8
	ld l, b                                          ; $620e: $68
	cp b                                             ; $620f: $b8
	db $e4                                           ; $6210: $e4
	inc a                                            ; $6211: $3c
	ld d, h                                          ; $6212: $54
	db $fc                                           ; $6213: $fc
	adc d                                            ; $6214: $8a
	ld [hl], a                                       ; $6215: $77
	ld l, [hl]                                       ; $6216: $6e
	sbc h                                            ; $6217: $9c
	db $fc                                           ; $6218: $fc
	inc h                                            ; $6219: $24
	db $fc                                           ; $621a: $fc
	ld c, a                                          ; $621b: $4f
	jr nz, jr_01c_61ab                               ; $621c: $20 $8d

	scf                                              ; $621e: $37
	ld a, h                                          ; $621f: $7c
	rst AddAOntoHL                                          ; $6220: $ef
	db $fc                                           ; $6221: $fc
	cpl                                              ; $6222: $2f
	ccf                                              ; $6223: $3f
	ld c, l                                          ; $6224: $4d
	ld a, e                                          ; $6225: $7b
	ld c, a                                          ; $6226: $4f
	ld a, b                                          ; $6227: $78
	ld h, a                                          ; $6228: $67
	ld a, [hl]                                       ; $6229: $7e
	adc a                                            ; $622a: $8f
	ld a, [$e3bf]                                    ; $622b: $fa $bf $e3
	ccf                                              ; $622e: $3f
	ld h, a                                          ; $622f: $67
	ld c, e                                          ; $6230: $4b
	jr nz, jr_01c_61cb                               ; $6231: $20 $98

	add hl, bc                                       ; $6233: $09
	rst $38                                          ; $6234: $ff
	nop                                              ; $6235: $00
	rst $38                                          ; $6236: $ff
	inc e                                            ; $6237: $1c
	rst FarCall                                          ; $6238: $f7
	adc a                                            ; $6239: $8f
	ld a, e                                          ; $623a: $7b
	ld a, [$7898]                                    ; $623b: $fa $98 $78
	sbc $31                                          ; $623e: $de $31
	rst $38                                          ; $6240: $ff
	inc bc                                           ; $6241: $03
	adc $ff                                          ; $6242: $ce $ff
	ccf                                              ; $6244: $3f
	ret nz                                           ; $6245: $c0

	sub c                                            ; $6246: $91
	dec l                                            ; $6247: $2d
	ld a, $47                                        ; $6248: $3e $47
	ld a, a                                          ; $624a: $7f
	ld c, a                                          ; $624b: $4f
	ld a, h                                          ; $624c: $7c
	sbc a                                            ; $624d: $9f
	ldh a, [c]                                       ; $624e: $f2
	cp a                                             ; $624f: $bf
	and $7d                                          ; $6250: $e6 $7d
	rst GetHLinHL                                          ; $6252: $cf

jr_01c_6253:
	ld a, a                                          ; $6253: $7f
	rst $38                                          ; $6254: $ff
	ccf                                              ; $6255: $3f
	ret nz                                           ; $6256: $c0

	sbc h                                            ; $6257: $9c
	rst FarCall                                          ; $6258: $f7
	jr @+$01                                         ; $6259: $18 $ff

	ld [hl], e                                       ; $625b: $73
	ret nz                                           ; $625c: $c0

	sbc [hl]                                         ; $625d: $9e
	cp $73                                           ; $625e: $fe $73
	ret nz                                           ; $6260: $c0

	ld sp, hl                                        ; $6261: $f9
	add d                                            ; $6262: $82
	ld [bc], a                                       ; $6263: $02
	inc bc                                           ; $6264: $03
	ld bc, $0001                                     ; $6265: $01 $01 $00
	ld bc, $0704                                     ; $6268: $01 $04 $07
	add hl, bc                                       ; $626b: $09
	rrca                                             ; $626c: $0f
	ld b, $1f                                        ; $626d: $06 $1f
	ld [$130f], sp                                   ; $626f: $08 $0f $13
	rra                                              ; $6272: $1f
	rla                                              ; $6273: $17
	ld e, $07                                        ; $6274: $1e $07
	inc b                                            ; $6276: $04
	inc bc                                           ; $6277: $03
	ld [bc], a                                       ; $6278: $02
	ld bc, $1901                                     ; $6279: $01 $01 $19
	rra                                              ; $627c: $1f
	ld [de], a                                       ; $627d: $12
	rra                                              ; $627e: $1f
	inc h                                            ; $627f: $24
	ld a, e                                          ; $6280: $7b
	sbc h                                            ; $6281: $9c
	add [hl]                                         ; $6282: $86
	ld d, c                                          ; $6283: $51
	rst $38                                          ; $6284: $ff
	sub l                                            ; $6285: $95
	rst $38                                          ; $6286: $ff
	daa                                              ; $6287: $27
	db $fd                                           ; $6288: $fd
	ld d, a                                          ; $6289: $57
	db $fc                                           ; $628a: $fc
	xor l                                            ; $628b: $ad
	rst $38                                          ; $628c: $ff
	ld c, a                                          ; $628d: $4f
	cp $df                                           ; $628e: $fe $df
	ld hl, sp-$11                                    ; $6290: $f8 $ef
	ld hl, sp-$19                                    ; $6292: $f8 $e7
	ld a, h                                          ; $6294: $7c
	rst AddAOntoHL                                          ; $6295: $ef
	ld a, [hl]                                       ; $6296: $7e
	ld sp, hl                                        ; $6297: $f9
	ccf                                              ; $6298: $3f
	db $fd                                           ; $6299: $fd
	rst $38                                          ; $629a: $ff
	sub d                                            ; $629b: $92
	ld a, e                                          ; $629c: $7b
	ld [bc], a                                       ; $629d: $02
	adc a                                            ; $629e: $8f
	ld l, b                                          ; $629f: $68
	rst $38                                          ; $62a0: $ff
	db $e4                                           ; $62a1: $e4
	cp a                                             ; $62a2: $bf
	db $f4                                           ; $62a3: $f4
	ccf                                              ; $62a4: $3f
	db $f4                                           ; $62a5: $f4
	ccf                                              ; $62a6: $3f
	cp $23                                           ; $62a7: $fe $23
	rst $38                                          ; $62a9: $ff
	ld bc, $38f7                                     ; $62aa: $01 $f7 $38
	rst $38                                          ; $62ad: $ff
	ld e, $7b                                        ; $62ae: $1e $7b
	and d                                            ; $62b0: $a2
	sbc d                                            ; $62b1: $9a
	ldh [rIE], a                                     ; $62b2: $e0 $ff
	nop                                              ; $62b4: $00
	cp $01                                           ; $62b5: $fe $01
	ld [hl], a                                       ; $62b7: $77
	and b                                            ; $62b8: $a0
	sbc b                                            ; $62b9: $98
	ret z                                            ; $62ba: $c8

	ld hl, sp-$58                                    ; $62bb: $f8 $a8
	ld hl, sp-$5c                                    ; $62bd: $f8 $a4
	db $fc                                           ; $62bf: $fc
	ld d, h                                          ; $62c0: $54
	ld a, e                                          ; $62c1: $7b
	cp $8c                                           ; $62c2: $fe $8c
	ld a, [hl+]                                      ; $62c4: $2a
	cp $2a                                           ; $62c5: $fe $2a
	cp $16                                           ; $62c7: $fe $16
	cp $f2                                           ; $62c9: $fe $f2
	cp $b8                                           ; $62cb: $fe $b8
	cp $f6                                           ; $62cd: $fe $f6
	ld a, $e4                                        ; $62cf: $3e $e4
	inc a                                            ; $62d1: $3c
	ld [$aa7e], a                                    ; $62d2: $ea $7e $aa
	cp $aa                                           ; $62d5: $fe $aa
	ld a, d                                          ; $62d7: $7a
	db $fc                                           ; $62d8: $fc
	ld e, l                                          ; $62d9: $5d
	ld c, $73                                        ; $62da: $0e $73
	ld a, [hl]                                       ; $62dc: $7e
	ld a, e                                          ; $62dd: $7b
	ld hl, sp+$77                                    ; $62de: $f8 $77
	or $df                                           ; $62e0: $f6 $df
	inc bc                                           ; $62e2: $03
	sbc h                                            ; $62e3: $9c
	dec b                                            ; $62e4: $05
	rlca                                             ; $62e5: $07
	ld b, $de                                        ; $62e6: $06 $de
	rlca                                             ; $62e8: $07
	ld a, a                                          ; $62e9: $7f
	or $7f                                           ; $62ea: $f6 $7f
	halt                                             ; $62ec: $76
	ld a, a                                          ; $62ed: $7f
	add d                                            ; $62ee: $82
	ld a, [hl]                                       ; $62ef: $7e
	ld a, h                                          ; $62f0: $7c
	sbc d                                            ; $62f1: $9a
	halt                                             ; $62f2: $76
	ld a, a                                          ; $62f3: $7f
	adc h                                            ; $62f4: $8c
	rst $38                                          ; $62f5: $ff
	jr c, jr_01c_6373                                ; $62f6: $38 $7b

	xor e                                            ; $62f8: $ab
	sub d                                            ; $62f9: $92
	reti                                             ; $62fa: $d9


	rst $38                                          ; $62fb: $ff
	ccf                                              ; $62fc: $3f
	cp $53                                           ; $62fd: $fe $53
	cp $97                                           ; $62ff: $fe $97
	ld hl, sp+$2f                                    ; $6301: $f8 $2f
	ld hl, sp+$6f                                    ; $6303: $f8 $6f
	db $fc                                           ; $6305: $fc
	jp c, $fe78                                      ; $6306: $da $78 $fe

	adc c                                            ; $6309: $89
	call z, $22ff                                    ; $630a: $cc $ff $22
	rst $38                                          ; $630d: $ff
	add $ff                                          ; $630e: $c6 $ff
	rlca                                             ; $6310: $07
	rst $38                                          ; $6311: $ff
	dec d                                            ; $6312: $15
	rst $38                                          ; $6313: $ff
	ld a, $fb                                        ; $6314: $3e $fb
	ld l, $fb                                        ; $6316: $2e $fb
	ld e, [hl]                                       ; $6318: $5e
	di                                               ; $6319: $f3
	rst $38                                          ; $631a: $ff
	add b                                            ; $631b: $80
	rst SubAFromDE                                          ; $631c: $df
	add hl, sp                                       ; $631d: $39
	rst $38                                          ; $631e: $ff
	ldh a, [$7b]                                     ; $631f: $f0 $7b
	add b                                            ; $6321: $80
	ld a, c                                          ; $6322: $79
	cp $7b                                           ; $6323: $fe $7b
	cp $9b                                           ; $6325: $fe $9b
	add c                                            ; $6327: $81
	rst SubAFromBC                                          ; $6328: $e7
	rst $38                                          ; $6329: $ff
	ld [$8072], sp                                   ; $632a: $08 $72 $80
	ld [hl], l                                       ; $632d: $75
	db $fc                                           ; $632e: $fc
	adc c                                            ; $632f: $89
	adc b                                            ; $6330: $88
	cp $c4                                           ; $6331: $fe $c4
	ld a, h                                          ; $6333: $7c

jr_01c_6334:
	ldh [$3e], a                                     ; $6334: $e0 $3e
	cp $de                                           ; $6336: $fe $de
	db $e4                                           ; $6338: $e4
	db $fc                                           ; $6339: $fc
	db $e4                                           ; $633a: $e4
	inc e                                            ; $633b: $1c
	call nc, $d83c                                   ; $633c: $d4 $3c $d8
	ld a, b                                          ; $633f: $78
	xor b                                            ; $6340: $a8
	ld hl, sp+$50                                    ; $6341: $f8 $50
	ldh a, [hDisp1_SCY]                                     ; $6343: $f0 $90
	ldh a, [$7a]                                     ; $6345: $f0 $7a
	ld [bc], a                                       ; $6347: $02
	ld a, a                                          ; $6348: $7f
	cp $9e                                           ; $6349: $fe $9e
	jr jr_01c_6334                                   ; $634b: $18 $e7

	sbc d                                            ; $634d: $9a
	ld c, c                                          ; $634e: $49
	ld a, a                                          ; $634f: $7f
	ld c, d                                          ; $6350: $4a
	ld a, a                                          ; $6351: $7f
	sub d                                            ; $6352: $92
	ld a, d                                          ; $6353: $7a
	cp [hl]                                          ; $6354: $be
	ld a, a                                          ; $6355: $7f
	cp $7e                                           ; $6356: $fe $7e
	cp b                                             ; $6358: $b8
	ld a, [hl]                                       ; $6359: $7e
	ld [hl-], a                                      ; $635a: $32
	adc [hl]                                         ; $635b: $8e
	ld [hl], c                                       ; $635c: $71
	rst $38                                          ; $635d: $ff
	ld e, a                                          ; $635e: $5f
	ld a, a                                          ; $635f: $7f
	ld e, e                                          ; $6360: $5b
	ld [hl], l                                       ; $6361: $75
	ld e, a                                          ; $6362: $5f
	ld [hl], c                                       ; $6363: $71
	sbc e                                            ; $6364: $9b
	db $fc                                           ; $6365: $fc
	and l                                            ; $6366: $a5
	cp $aa                                           ; $6367: $fe $aa
	rst $38                                          ; $6369: $ff
	pop de                                           ; $636a: $d1
	rst $38                                          ; $636b: $ff
	db $d3                                           ; $636c: $d3
	ld a, e                                          ; $636d: $7b
	inc de                                           ; $636e: $13
	sub c                                            ; $636f: $91
	inc h                                            ; $6370: $24
	rst $38                                          ; $6371: $ff
	ld c, e                                          ; $6372: $4b

jr_01c_6373:
	rst $38                                          ; $6373: $ff
	ld e, a                                          ; $6374: $5f
	rst $38                                          ; $6375: $ff
	sbc [hl]                                         ; $6376: $9e
	di                                               ; $6377: $f3
	sbc a                                            ; $6378: $9f
	ldh a, [c]                                       ; $6379: $f2
	db $dd                                           ; $637a: $dd
	and d                                            ; $637b: $a2
	cp [hl]                                          ; $637c: $be
	jp $2b79                                         ; $637d: $c3 $79 $2b


	add b                                            ; $6380: $80
	jp $c37d                                         ; $6381: $c3 $7d $c3


	rst $38                                          ; $6384: $ff
	nop                                              ; $6385: $00
	rst SubAFromDE                                          ; $6386: $df
	inc a                                            ; $6387: $3c
	rst SubAFromBC                                          ; $6388: $e7
	jr @+$01                                         ; $6389: $18 $ff

	add c                                            ; $638b: $81
	and $ff                                          ; $638c: $e6 $ff
	ld d, b                                          ; $638e: $50
	ld hl, sp+$28                                    ; $638f: $f8 $28
	db $fc                                           ; $6391: $fc
	inc d                                            ; $6392: $14
	cp $08                                           ; $6393: $fe $08
	ld hl, sp-$78                                    ; $6395: $f8 $88
	db $fc                                           ; $6397: $fc
	add h                                            ; $6398: $84
	db $fc                                           ; $6399: $fc
	ret nz                                           ; $639a: $c0

	ld a, h                                          ; $639b: $7c
	ret c                                            ; $639c: $d8

	ld a, [hl]                                       ; $639d: $7e
	xor $fe                                          ; $639e: $ee $fe
	sub [hl]                                         ; $63a0: $96
	add sp, $38                                      ; $63a1: $e8 $38
	db $e4                                           ; $63a3: $e4
	inc a                                            ; $63a4: $3c
	call nz, $d47c                                   ; $63a5: $c4 $7c $d4
	ld a, h                                          ; $63a8: $7c
	ret c                                            ; $63a9: $d8

	ld a, e                                          ; $63aa: $7b
	add b                                            ; $63ab: $80
	sbc l                                            ; $63ac: $9d
	ld [hl], b                                       ; $63ad: $70
	ldh a, [rPCM34]                                  ; $63ae: $f0 $77
	inc e                                            ; $63b0: $1c
	sbc $03                                          ; $63b1: $de $03
	ld a, a                                          ; $63b3: $7f
	ei                                               ; $63b4: $fb
	rst SubAFromDE                                          ; $63b5: $df
	ld [bc], a                                       ; $63b6: $02
	ld a, e                                          ; $63b7: $7b
	ei                                               ; $63b8: $fb
	ld [hl], a                                       ; $63b9: $77
	inc b                                            ; $63ba: $04
	ld a, e                                          ; $63bb: $7b
	ld a, [$027b]                                    ; $63bc: $fa $7b $02
	ld h, a                                          ; $63bf: $67
	cp $84                                           ; $63c0: $fe $84
	ld h, e                                          ; $63c2: $63
	sbc a                                            ; $63c3: $9f
	dec b                                            ; $63c4: $05
	rst $38                                          ; $63c5: $ff
	inc a                                            ; $63c6: $3c
	rst $38                                          ; $63c7: $ff
	db $f4                                           ; $63c8: $f4
	rst GetHLinHL                                          ; $63c9: $cf
	db $f4                                           ; $63ca: $f4
	rrca                                             ; $63cb: $0f
	xor b                                            ; $63cc: $a8
	ld e, a                                          ; $63cd: $5f
	ld [$f8ff], sp                                   ; $63ce: $08 $ff $f8
	rst $38                                          ; $63d1: $ff
	ld e, b                                          ; $63d2: $58
	rst $38                                          ; $63d3: $ff
	ld d, a                                          ; $63d4: $57
	rst $38                                          ; $63d5: $ff
	ld e, a                                          ; $63d6: $5f
	ld hl, sp+$5f                                    ; $63d7: $f8 $5f
	ld hl, sp+$2f                                    ; $63d9: $f8 $2f
	ld sp, hl                                        ; $63db: $f9
	ld l, $7b                                        ; $63dc: $2e $7b
	add [hl]                                         ; $63de: $86
	ld a, a                                          ; $63df: $7f
	cp $7f                                           ; $63e0: $fe $7f
	ld h, $7e                                        ; $63e2: $26 $7e
	sbc [hl]                                         ; $63e4: $9e
	ld a, a                                          ; $63e5: $7f
	ld a, [hl-]                                      ; $63e6: $3a
	sbc l                                            ; $63e7: $9d
	and b                                            ; $63e8: $a0
	ldh [$d9], a                                     ; $63e9: $e0 $d9
	ret nz                                           ; $63eb: $c0

	pop de                                           ; $63ec: $d1
	add b                                            ; $63ed: $80
	ld h, [hl]                                       ; $63ee: $66
	xor h                                            ; $63ef: $ac
	ld l, a                                          ; $63f0: $6f
	and [hl]                                         ; $63f1: $a6
	ld a, a                                          ; $63f2: $7f
	cp $7a                                           ; $63f3: $fe $7a
	xor d                                            ; $63f5: $aa
	ld a, a                                          ; $63f6: $7f
	xor e                                            ; $63f7: $ab
	ld a, [hl]                                       ; $63f8: $7e
	ld h, $9e                                        ; $63f9: $26 $9e
	inc bc                                           ; $63fb: $03
	ld sp, hl                                        ; $63fc: $f9
	adc h                                            ; $63fd: $8c
	call z, $c0f3                                    ; $63fe: $cc $f3 $c0
	rst $38                                          ; $6401: $ff
	ld [hl], e                                       ; $6402: $73
	rst $38                                          ; $6403: $ff
	ld e, a                                          ; $6404: $5f
	db $ec                                           ; $6405: $ec
	ld e, a                                          ; $6406: $5f
	ldh [rWY], a                                     ; $6407: $e0 $4a
	push af                                          ; $6409: $f5
	ld h, b                                          ; $640a: $60
	rst $38                                          ; $640b: $ff
	ld a, a                                          ; $640c: $7f
	rst $38                                          ; $640d: $ff
	ld d, l                                          ; $640e: $55
	rst $38                                          ; $640f: $ff
	push de                                          ; $6410: $d5
	ld a, e                                          ; $6411: $7b
	cp $77                                           ; $6412: $fe $77
	db $10                                           ; $6414: $10
	sbc [hl]                                         ; $6415: $9e
	db $e4                                           ; $6416: $e4
	ld [hl], e                                       ; $6417: $73
	cp $85                                           ; $6418: $fe $85
	dec h                                            ; $641a: $25
	ccf                                              ; $641b: $3f
	reti                                             ; $641c: $d9


	rst SubAFromDE                                          ; $641d: $df
	adc d                                            ; $641e: $8a
	adc [hl]                                         ; $641f: $8e
	ld b, $06                                        ; $6420: $06 $06
	ld [bc], a                                       ; $6422: $02
	ld [bc], a                                       ; $6423: $02
	ld b, e                                          ; $6424: $43
	ld b, e                                          ; $6425: $43
	pop bc                                           ; $6426: $c1
	pop bc                                           ; $6427: $c1
	pop hl                                           ; $6428: $e1
	pop hl                                           ; $6429: $e1
	ld h, [hl]                                       ; $642a: $66
	ld h, [hl]                                       ; $642b: $66
	ld a, a                                          ; $642c: $7f
	ld a, c                                          ; $642d: $79
	ccf                                              ; $642e: $3f
	ld sp, $a9af                                     ; $642f: $31 $af $a9
	and [hl]                                         ; $6432: $a6
	and [hl]                                         ; $6433: $a6
	db $dd                                           ; $6434: $dd
	sub b                                            ; $6435: $90
	rst SubAFromDE                                          ; $6436: $df
	ldh [hDisp1_WY], a                                     ; $6437: $e0 $95
	ld l, a                                          ; $6439: $6f
	ld a, e                                          ; $643a: $7b
	ld b, h                                          ; $643b: $44
	ld a, a                                          ; $643c: $7f
	ld b, c                                          ; $643d: $41
	ld a, a                                          ; $643e: $7f
	ld hl, $1f3f                                     ; $643f: $21 $3f $1f
	rra                                              ; $6442: $1f
	ld e, [hl]                                       ; $6443: $5e
	jr c, jr_01c_64c5                                ; $6444: $38 $7f

	cp $7d                                           ; $6446: $fe $7d
	cp b                                             ; $6448: $b8
	ld [hl], a                                       ; $6449: $77
	cp $df                                           ; $644a: $fe $df
	inc bc                                           ; $644c: $03
	rst SubAFromDE                                          ; $644d: $df
	ld bc, $3994                                     ; $644e: $01 $94 $39
	rst JumpTable                                          ; $6451: $c7
	add $ff                                          ; $6452: $c6 $ff
	db $fd                                           ; $6454: $fd
	dec sp                                           ; $6455: $3b
	ld a, l                                          ; $6456: $7d
	add e                                            ; $6457: $83
	add hl, hl                                       ; $6458: $29
	rst SubAFromHL                                          ; $6459: $d7
	add d                                            ; $645a: $82
	sbc $ff                                          ; $645b: $de $ff
	sbc [hl]                                         ; $645d: $9e
	rst SubAFromHL                                          ; $645e: $d7
	ld a, e                                          ; $645f: $7b
	and b                                            ; $6460: $a0
	sbc [hl]                                         ; $6461: $9e
	ld d, d                                          ; $6462: $52
	ld a, c                                          ; $6463: $79
	call z, $fe6f                                    ; $6464: $cc $6f $fe
	sub b                                            ; $6467: $90
	sbc a                                            ; $6468: $9f
	rst $38                                          ; $6469: $ff
	rst FarCall                                          ; $646a: $f7
	db $f4                                           ; $646b: $f4

jr_01c_646c:
	sub d                                            ; $646c: $92
	sub d                                            ; $646d: $92
	ld d, [hl]                                       ; $646e: $56
	sub $2c                                          ; $646f: $d6 $2c
	db $ec                                           ; $6471: $ec
	jr jr_01c_646c                                   ; $6472: $18 $f8

Jump_01c_6474:
	db $10                                           ; $6474: $10
	ldh a, [rAUD4LEN]                                ; $6475: $f0 $20
	ld [hl], a                                       ; $6477: $77
	inc a                                            ; $6478: $3c
	sbc d                                            ; $6479: $9a
	ld b, b                                          ; $647a: $40
	ldh [rAUD4LEN], a                                ; $647b: $e0 $20
	ldh [$e0], a                                     ; $647d: $e0 $e0
	db $dd                                           ; $647f: $dd
	add b                                            ; $6480: $80
	rst $38                                          ; $6481: $ff
	db $db                                           ; $6482: $db
	add b                                            ; $6483: $80
	ld a, a                                          ; $6484: $7f
	ld h, d                                          ; $6485: $62
	sbc c                                            ; $6486: $99
	ld b, b                                          ; $6487: $40
	ld a, a                                          ; $6488: $7f
	inc hl                                           ; $6489: $23
	ccf                                              ; $648a: $3f
	dec e                                            ; $648b: $1d
	dec e                                            ; $648c: $1d
	ld c, a                                          ; $648d: $4f
	jr c, jr_01c_64f7                                ; $648e: $38 $67

	and d                                            ; $6490: $a2
	rst SubAFromDE                                          ; $6491: $df
	ld bc, $0397                                     ; $6492: $01 $97 $03
	rst $38                                          ; $6495: $ff
	add b                                            ; $6496: $80
	rst $38                                          ; $6497: $ff
	ld h, b                                          ; $6498: $60
	ld a, a                                          ; $6499: $7f
	ld e, $1f                                        ; $649a: $1e $1f
	ld l, a                                          ; $649c: $6f
	ldh a, [c]                                       ; $649d: $f2
	ccf                                              ; $649e: $3f
	ldh [$df], a                                     ; $649f: $e0 $df

jr_01c_64a1:
	call nc, Call_01c_5497                           ; $64a1: $d4 $97 $54
	call nc, $e424                                   ; $64a4: $d4 $24 $e4
	jr jr_01c_64a1                                   ; $64a7: $18 $f8

	jr @-$06                                         ; $64a9: $18 $f8

	ld c, a                                          ; $64ab: $4f
	and b                                            ; $64ac: $a0
	reti                                             ; $64ad: $d9


	add b                                            ; $64ae: $80
	ld [hl], a                                       ; $64af: $77
	jp c, $07df                                      ; $64b0: $da $df $07

	sub a                                            ; $64b3: $97
	rrca                                             ; $64b4: $0f
	inc c                                            ; $64b5: $0c
	rra                                              ; $64b6: $1f
	db $10                                           ; $64b7: $10
	rra                                              ; $64b8: $1f
	inc de                                           ; $64b9: $13
	inc c                                            ; $64ba: $0c
	inc c                                            ; $64bb: $0c
	rst AddAOntoHL                                          ; $64bc: $ef
	rst SubAFromDE                                          ; $64bd: $df
	rst $38                                          ; $64be: $ff
	ld a, l                                          ; $64bf: $7d
	adc d                                            ; $64c0: $8a
	ld a, a                                          ; $64c1: $7f
	sbc [hl]                                         ; $64c2: $9e
	sbc c                                            ; $64c3: $99
	add e                                            ; $64c4: $83

jr_01c_64c5:
	rst $38                                          ; $64c5: $ff
	sbc l                                            ; $64c6: $9d
	db $fd                                           ; $64c7: $fd
	pop hl                                           ; $64c8: $e1
	pop hl                                           ; $64c9: $e1
	scf                                              ; $64ca: $37
	and b                                            ; $64cb: $a0
	rst SubAFromDE                                          ; $64cc: $df
	ldh [$9e], a                                     ; $64cd: $e0 $9e
	ld h, b                                          ; $64cf: $60
	ld a, e                                          ; $64d0: $7b
	xor l                                            ; $64d1: $ad
	ld a, a                                          ; $64d2: $7f
	ld b, d                                          ; $64d3: $42
	ld b, a                                          ; $64d4: $47
	ld b, b                                          ; $64d5: $40
	reti                                             ; $64d6: $d9


	add b                                            ; $64d7: $80
	sbc d                                            ; $64d8: $9a
	cp $ff                                           ; $64d9: $fe $ff
	ld a, b                                          ; $64db: $78
	ld a, a                                          ; $64dc: $7f
	ld [hl], c                                       ; $64dd: $71
	ld a, d                                          ; $64de: $7a
	ldh [$7f], a                                     ; $64df: $e0 $7f
	inc a                                            ; $64e1: $3c
	sbc c                                            ; $64e2: $99
	rra                                              ; $64e3: $1f
	inc e                                            ; $64e4: $1c
	rrca                                             ; $64e5: $0f
	ld [$090f], sp                                   ; $64e6: $08 $0f $09
	halt                                             ; $64e9: $76
	db $10                                           ; $64ea: $10
	ccf                                              ; $64eb: $3f
	ret nz                                           ; $64ec: $c0

	sbc [hl]                                         ; $64ed: $9e
	jr nc, jr_01c_6513                               ; $64ee: $30 $23

	ret nz                                           ; $64f0: $c0

	adc h                                            ; $64f1: $8c
	nop                                              ; $64f2: $00
	ret nz                                           ; $64f3: $c0

	nop                                              ; $64f4: $00
	jr nz, jr_01c_64f7                               ; $64f5: $20 $00

jr_01c_64f7:
	ld [hl], b                                       ; $64f7: $70
	nop                                              ; $64f8: $00
	ld hl, sp+$00                                    ; $64f9: $f8 $00
	db $fc                                           ; $64fb: $fc
	nop                                              ; $64fc: $00
	cp h                                             ; $64fd: $bc
	nop                                              ; $64fe: $00
	ld a, $00                                        ; $64ff: $3e $00
	ld e, $00                                        ; $6501: $1e $00
	sbc b                                            ; $6503: $98
	nop                                              ; $6504: $00
	ld [hl], a                                       ; $6505: $77
	db $ec                                           ; $6506: $ec
	sbc [hl]                                         ; $6507: $9e
	ld b, b                                          ; $6508: $40
	ld a, e                                          ; $6509: $7b
	cp $9e                                           ; $650a: $fe $9e
	ld h, b                                          ; $650c: $60
	ld a, e                                          ; $650d: $7b
	cp $9d                                           ; $650e: $fe $9d
	nop                                              ; $6510: $00
	rlca                                             ; $6511: $07
	ld a, e                                          ; $6512: $7b

jr_01c_6513:
	or [hl]                                          ; $6513: $b6
	ld a, a                                          ; $6514: $7f
	db $fd                                           ; $6515: $fd
	ld a, a                                          ; $6516: $7f
	xor b                                            ; $6517: $a8
	sub h                                            ; $6518: $94
	rst AddAOntoHL                                          ; $6519: $ef
	db $ed                                           ; $651a: $ed
	rst SubAFromDE                                          ; $651b: $df
	or e                                             ; $651c: $b3
	rst $38                                          ; $651d: $ff
	db $fd                                           ; $651e: $fd
	ld a, [hl]                                       ; $651f: $7e
	ld a, [hl]                                       ; $6520: $7e
	ld a, $3e                                        ; $6521: $3e $3e
	rst $38                                          ; $6523: $ff
	ld h, b                                          ; $6524: $60
	inc l                                            ; $6525: $2c
	db $fd                                           ; $6526: $fd
	sub l                                            ; $6527: $95
	ld a, [$bffe]                                    ; $6528: $fa $fe $bf
	or c                                             ; $652b: $b1
	sbc a                                            ; $652c: $9f
	sbc b                                            ; $652d: $98
	rrca                                             ; $652e: $0f
	inc c                                            ; $652f: $0c
	rlca                                             ; $6530: $07
	ld b, $71                                        ; $6531: $06 $71
	sbc d                                            ; $6533: $9a
	ld a, [hl]                                       ; $6534: $7e
	nop                                              ; $6535: $00
	ld a, l                                          ; $6536: $7d
	or c                                             ; $6537: $b1
	sbc h                                            ; $6538: $9c
	rst $38                                          ; $6539: $ff
	rrca                                             ; $653a: $0f
	rrca                                             ; $653b: $0f
	di                                               ; $653c: $f3
	ld a, d                                          ; $653d: $7a
	sbc d                                            ; $653e: $9a
	ld a, a                                          ; $653f: $7f
	adc b                                            ; $6540: $88
	ld a, a                                          ; $6541: $7f
	ld a, c                                          ; $6542: $79
	sbc [hl]                                         ; $6543: $9e
	and b                                            ; $6544: $a0
	ld a, c                                          ; $6545: $79
	ld [hl], c                                       ; $6546: $71
	sbc $f0                                          ; $6547: $de $f0
	rst SubAFromDE                                          ; $6549: $df
	ldh [$df], a                                     ; $654a: $e0 $df
	ld hl, sp-$09                                    ; $654c: $f8 $f7
	rst SubAFromDE                                          ; $654e: $df
	ld a, a                                          ; $654f: $7f

jr_01c_6550:
	adc e                                            ; $6550: $8b
	ld a, $26                                        ; $6551: $3e $26
	ccf                                              ; $6553: $3f
	inc hl                                           ; $6554: $23
	rla                                              ; $6555: $17
	dec de                                           ; $6556: $1b
	rra                                              ; $6557: $1f
	rla                                              ; $6558: $17
	rra                                              ; $6559: $1f
	add hl, de                                       ; $655a: $19
	rra                                              ; $655b: $1f
	inc de                                           ; $655c: $13
	ccf                                              ; $655d: $3f
	ccf                                              ; $655e: $3f
	ld l, a                                          ; $655f: $6f
	ld e, a                                          ; $6560: $5f
	rst $38                                          ; $6561: $ff
	rst $38                                          ; $6562: $ff
	ld a, a                                          ; $6563: $7f
	ld a, a                                          ; $6564: $7f
	ld d, a                                          ; $6565: $57
	call nz, $f867                                   ; $6566: $c4 $67 $f8
	ld a, e                                          ; $6569: $7b
	cp d                                             ; $656a: $ba
	sbc [hl]                                         ; $656b: $9e
	ret nz                                           ; $656c: $c0

	db $dd                                           ; $656d: $dd
	ldh [$df], a                                     ; $656e: $e0 $df
	ret nz                                           ; $6570: $c0

	ld d, a                                          ; $6571: $57
	ret nz                                           ; $6572: $c0

	ld [hl], l                                       ; $6573: $75
	adc e                                            ; $6574: $8b
	ld a, b                                          ; $6575: $78
	dec [hl]                                         ; $6576: $35
	sbc [hl]                                         ; $6577: $9e
	dec b                                            ; $6578: $05
	ld a, e                                          ; $6579: $7b
	inc b                                            ; $657a: $04
	sbc b                                            ; $657b: $98
	rrca                                             ; $657c: $0f
	rra                                              ; $657d: $1f
	rra                                              ; $657e: $1f
	dec a                                            ; $657f: $3d
	dec sp                                           ; $6580: $3b
	ccf                                              ; $6581: $3f
	ccf                                              ; $6582: $3f
	ld c, a                                          ; $6583: $4f
	ld h, b                                          ; $6584: $60
	sbc c                                            ; $6585: $99
	and $25                                          ; $6586: $e6 $25
	ld b, a                                          ; $6588: $47
	call nz, $44c7                                   ; $6589: $c4 $c7 $44
	sbc $87                                          ; $658c: $de $87
	sbc [hl]                                         ; $658e: $9e
	add h                                            ; $658f: $84
	db $db                                           ; $6590: $db
	add a                                            ; $6591: $87
	rst SubAFromDE                                          ; $6592: $df
	rlca                                             ; $6593: $07
	ld c, a                                          ; $6594: $4f
	ldh [rBCPD], a                                   ; $6595: $e0 $69
	ld a, [$409e]                                    ; $6597: $fa $9e $40
	ld a, e                                          ; $659a: $7b
	cp $7b                                           ; $659b: $fe $7b
	and d                                            ; $659d: $a2
	sbc e                                            ; $659e: $9b
	ret nc                                           ; $659f: $d0

	or b                                             ; $65a0: $b0
	ldh a, [$f0]                                     ; $65a1: $f0 $f0
	ld c, a                                          ; $65a3: $4f
	ldh [$e3], a                                     ; $65a4: $e0 $e3
	ld [bc], a                                       ; $65a6: $02
	db $ed                                           ; $65a7: $ed
	sub e                                            ; $65a8: $93
	ld [$040c], sp                                   ; $65a9: $08 $0c $04
	rlca                                             ; $65ac: $07
	ld [bc], a                                       ; $65ad: $02
	inc bc                                           ; $65ae: $03
	rrca                                             ; $65af: $0f
	rrca                                             ; $65b0: $0f
	jr jr_01c_65d2                                   ; $65b1: $18 $1f

	ld sp, $f03f                                     ; $65b3: $31 $3f $f0
	sub b                                            ; $65b6: $90
	jr nc, jr_01c_6550                               ; $65b7: $30 $97

	sbc a                                            ; $65b9: $9f
	ld c, c                                          ; $65ba: $49
	rst GetHLinHL                                          ; $65bb: $cf
	ld a, $ff                                        ; $65bc: $3e $ff
	and a                                            ; $65be: $a7
	rst $38                                          ; $65bf: $ff
	inc e                                            ; $65c0: $1c
	rst $38                                          ; $65c1: $ff
	db $ec                                           ; $65c2: $ec
	rst $38                                          ; $65c3: $ff
	ld d, d                                          ; $65c4: $52
	rst $38                                          ; $65c5: $ff
	rst AddAOntoHL                                          ; $65c6: $ef
	rst SubAFromDE                                          ; $65c7: $df
	add b                                            ; $65c8: $80
	add b                                            ; $65c9: $80
	ld b, b                                          ; $65ca: $40
	ret nz                                           ; $65cb: $c0

	ret z                                            ; $65cc: $c8

	ld hl, sp-$60                                    ; $65cd: $f8 $a0
	ldh [$c0], a                                     ; $65cf: $e0 $c0
	ret nz                                           ; $65d1: $c0

jr_01c_65d2:
	and b                                            ; $65d2: $a0
	ldh [$a0], a                                     ; $65d3: $e0 $a0
	ldh [rAUD4POLY], a                               ; $65d5: $e0 $22
	ccf                                              ; $65d7: $3f
	daa                                              ; $65d8: $27
	ccf                                              ; $65d9: $3f
	ld c, c                                          ; $65da: $49
	ld a, a                                          ; $65db: $7f
	ld e, [hl]                                       ; $65dc: $5e
	ld a, a                                          ; $65dd: $7f
	ld b, e                                          ; $65de: $43
	ld a, a                                          ; $65df: $7f
	sub [hl]                                         ; $65e0: $96
	db $fd                                           ; $65e1: $fd
	and a                                            ; $65e2: $a7
	db $fd                                           ; $65e3: $fd
	xor d                                            ; $65e4: $aa
	rst $38                                          ; $65e5: $ff
	xor a                                            ; $65e6: $af
	db $fd                                           ; $65e7: $fd
	cpl                                              ; $65e8: $2f
	add c                                            ; $65e9: $81
	ld a, a                                          ; $65ea: $7f
	dec l                                            ; $65eb: $2d
	ld a, a                                          ; $65ec: $7f
	ld l, a                                          ; $65ed: $6f
	ld a, d                                          ; $65ee: $7a
	ld d, a                                          ; $65ef: $57
	ld a, b                                          ; $65f0: $78
	scf                                              ; $65f1: $37
	inc a                                            ; $65f2: $3c
	ld [hl-], a                                      ; $65f3: $32
	inc sp                                           ; $65f4: $33
	inc de                                           ; $65f5: $13
	inc de                                           ; $65f6: $13
	and c                                            ; $65f7: $a1
	rst $38                                          ; $65f8: $ff
	ld h, b                                          ; $65f9: $60
	rst $38                                          ; $65fa: $ff
	ld d, b                                          ; $65fb: $50
	rst $38                                          ; $65fc: $ff
	add sp, -$01                                     ; $65fd: $e8 $ff
	ret c                                            ; $65ff: $d8

	rst $38                                          ; $6600: $ff
	db $ec                                           ; $6601: $ec
	cp a                                             ; $6602: $bf
	db $ec                                           ; $6603: $ec
	scf                                              ; $6604: $37
	cp $1f                                           ; $6605: $fe $1f
	cp $7b                                           ; $6607: $fe $7b
	db $fc                                           ; $6609: $fc
	sub e                                            ; $660a: $93
	or $1f                                           ; $660b: $f6 $1f
	cp $0b                                           ; $660d: $fe $0b
	sbc $e3                                          ; $660f: $de $e3
	ld a, [hl]                                       ; $6611: $7e
	db $e3                                           ; $6612: $e3
	ld a, [$9e07]                                    ; $6613: $fa $07 $9e
	rst $38                                          ; $6616: $ff
	daa                                              ; $6617: $27
	ldh [$9b], a                                     ; $6618: $e0 $9b
	cp $e3                                           ; $661a: $fe $e3
	sbc [hl]                                         ; $661c: $9e
	ld h, e                                          ; $661d: $63
	ld [hl], a                                       ; $661e: $77
	ldh [hDisp1_BGP], a                                     ; $661f: $e0 $92
	ret nc                                           ; $6621: $d0

	ldh a, [$d0]                                     ; $6622: $f0 $d0
	ldh a, [$a8]                                     ; $6624: $f0 $a8
	ld hl, sp-$18                                    ; $6626: $f8 $e8
	ld hl, sp+$78                                    ; $6628: $f8 $78
	ld hl, sp+$58                                    ; $662a: $f8 $58
	ld hl, sp+$28                                    ; $662c: $f8 $28
	ld [hl], e                                       ; $662e: $73
	cp $9b                                           ; $662f: $fe $9b
	or b                                             ; $6631: $b0
	ldh a, [$b0]                                     ; $6632: $f0 $b0
	ldh a, [rPCM34]                                  ; $6634: $f0 $77
	add d                                            ; $6636: $82
	rst SubAFromDE                                          ; $6637: $df
	ret nz                                           ; $6638: $c0

	rst SubAFromDE                                          ; $6639: $df
	add b                                            ; $663a: $80
	push af                                          ; $663b: $f5
	rst SubAFromHL                                          ; $663c: $d7
	ld bc, $80f5                                     ; $663d: $01 $f5 $80
	ld b, l                                          ; $6640: $45
	ld a, a                                          ; $6641: $7f
	ld c, [hl]                                       ; $6642: $4e
	ld a, a                                          ; $6643: $7f
	sub d                                            ; $6644: $92
	rst $38                                          ; $6645: $ff
	cp l                                             ; $6646: $bd
	rst $38                                          ; $6647: $ff
	add a                                            ; $6648: $87
	rst $38                                          ; $6649: $ff
	dec l                                            ; $664a: $2d
	ei                                               ; $664b: $fb
	ld c, a                                          ; $664c: $4f
	ld a, [$fe55]                                    ; $664d: $fa $55 $fe
	ld e, a                                          ; $6650: $5f
	ld a, [$fe5f]                                    ; $6651: $fa $5f $fe
	db $db                                           ; $6654: $db
	cp $df                                           ; $6655: $fe $df
	db $f4                                           ; $6657: $f4
	rst SubAFromDE                                          ; $6658: $df
	pop af                                           ; $6659: $f1
	ld e, [hl]                                       ; $665a: $5e
	ld a, c                                          ; $665b: $79
	ld d, a                                          ; $665c: $57
	ld [hl], h                                       ; $665d: $74
	inc de                                           ; $665e: $13
	sbc e                                            ; $665f: $9b
	inc sp                                           ; $6660: $33
	ld b, e                                          ; $6661: $43
	rst $38                                          ; $6662: $ff
	pop bc                                           ; $6663: $c1
	ld a, e                                          ; $6664: $7b
	ld a, h                                          ; $6665: $7c
	add l                                            ; $6666: $85
	pop de                                           ; $6667: $d1
	rst $38                                          ; $6668: $ff
	or b                                             ; $6669: $b0
	rst $38                                          ; $666a: $ff
	ret c                                            ; $666b: $d8

	ld a, a                                          ; $666c: $7f
	ret c                                            ; $666d: $d8

	ld l, a                                          ; $666e: $6f
	db $fc                                           ; $666f: $fc
	rra                                              ; $6670: $1f
	db $fc                                           ; $6671: $fc
	scf                                              ; $6672: $37
	db $fd                                           ; $6673: $fd
	rra                                              ; $6674: $1f
	push af                                          ; $6675: $f5
	rra                                              ; $6676: $1f
	db $fd                                           ; $6677: $fd
	rrca                                             ; $6678: $0f
	db $fd                                           ; $6679: $fd
	ld b, a                                          ; $667a: $47
	cp l                                             ; $667b: $bd
	rst JumpTable                                          ; $667c: $c7
	push af                                          ; $667d: $f5
	rrca                                             ; $667e: $0f
	inc a                                            ; $667f: $3c
	cp $03                                           ; $6680: $fe $03
	add b                                            ; $6682: $80
	ldh [$4e], a                                     ; $6683: $e0 $4e
	db $dd                                           ; $6685: $dd
	ld bc, $0397                                     ; $6686: $01 $97 $03
	ld [bc], a                                       ; $6689: $02
	inc bc                                           ; $668a: $03
	ld [bc], a                                       ; $668b: $02
	ld [bc], a                                       ; $668c: $02
	inc bc                                           ; $668d: $03
	ld bc, $4601                                     ; $668e: $01 $01 $46
	ld b, b                                          ; $6691: $40
	adc a                                            ; $6692: $8f
	rst GetHLinHL                                          ; $6693: $cf
	db $fd                                           ; $6694: $fd

jr_01c_6695:
	rst AddAOntoHL                                          ; $6695: $ef
	cp a                                             ; $6696: $bf
	db $ed                                           ; $6697: $ed
	cp a                                             ; $6698: $bf
	rst AddAOntoHL                                          ; $6699: $ef
	ld a, [hl-]                                      ; $669a: $3a
	rst FarCall                                          ; $669b: $f7
	jr jr_01c_6695                                   ; $669c: $18 $f7

	inc e                                            ; $669e: $1c
	jp nc, $fb3b                                     ; $669f: $d2 $3b $fb

	ei                                               ; $66a2: $fb
	ccf                                              ; $66a3: $3f
	call nz, $03de                                   ; $66a4: $c4 $de $03
	ld a, e                                          ; $66a7: $7b
	add $77                                          ; $66a8: $c6 $77
	ld a, [$fe7f]                                    ; $66aa: $fa $7f $fe
	ccf                                              ; $66ad: $3f
	ret nz                                           ; $66ae: $c0

	ld a, [hl]                                       ; $66af: $7e
	nop                                              ; $66b0: $00
	sbc e                                            ; $66b1: $9b
	xor a                                            ; $66b2: $af
	rst $38                                          ; $66b3: $ff
	db $ed                                           ; $66b4: $ed
	ld a, a                                          ; $66b5: $7f
	ld e, a                                          ; $66b6: $5f
	ret nz                                           ; $66b7: $c0

	ld c, d                                          ; $66b8: $4a
	jr nz, @-$6a                                     ; $66b9: $20 $94

	rrca                                             ; $66bb: $0f
	cp $03                                           ; $66bc: $fe $03
	sub $3b                                          ; $66be: $d6 $3b
	xor $1f                                          ; $66c0: $ee $1f
	cp $03                                           ; $66c2: $fe $03
	cp $93                                           ; $66c4: $fe $93
	ld l, [hl]                                       ; $66c6: $6e
	nop                                              ; $66c7: $00
	ld b, $a0                                        ; $66c8: $06 $a0
	ld a, d                                          ; $66ca: $7a
	ld [hl-], a                                      ; $66cb: $32
	ld [hl], e                                       ; $66cc: $73
	adc [hl]                                         ; $66cd: $8e
	ld [hl], a                                       ; $66ce: $77
	adc h                                            ; $66cf: $8c
	ld [hl], a                                       ; $66d0: $77
	ld d, b                                          ; $66d1: $50
	ld [hl], e                                       ; $66d2: $73
	ld a, [$039c]                                    ; $66d3: $fa $9c $03
	dec b                                            ; $66d6: $05
	rlca                                             ; $66d7: $07
	ld h, a                                          ; $66d8: $67
	cp $80                                           ; $66d9: $fe $80
	ld h, d                                          ; $66db: $62
	sbc [hl]                                         ; $66dc: $9e
	dec b                                            ; $66dd: $05
	rst $38                                          ; $66de: $ff
	inc a                                            ; $66df: $3c
	rst $38                                          ; $66e0: $ff
	db $f4                                           ; $66e1: $f4
	rst GetHLinHL                                          ; $66e2: $cf
	db $f4                                           ; $66e3: $f4
	rrca                                             ; $66e4: $0f
	xor b                                            ; $66e5: $a8
	ld e, a                                          ; $66e6: $5f
	ld [$f8ff], sp                                   ; $66e7: $08 $ff $f8
	rst $38                                          ; $66ea: $ff
	ld e, b                                          ; $66eb: $58
	rst $38                                          ; $66ec: $ff
	ld d, a                                          ; $66ed: $57
	rst $38                                          ; $66ee: $ff
	ld e, a                                          ; $66ef: $5f
	ld hl, sp+$5f                                    ; $66f0: $f8 $5f
	ld hl, sp+$2f                                    ; $66f2: $f8 $2f
	ld sp, hl                                        ; $66f4: $f9
	ld l, $ff                                        ; $66f5: $2e $ff
	inc h                                            ; $66f7: $24
	rst $38                                          ; $66f8: $ff
	daa                                              ; $66f9: $27
	ld [hl], c                                       ; $66fa: $71
	ld b, b                                          ; $66fb: $40
	db $dd                                           ; $66fc: $dd
	add b                                            ; $66fd: $80
	ld a, l                                          ; $66fe: $7d
	ld c, h                                          ; $66ff: $4c
	ld l, a                                          ; $6700: $6f
	cp $d3                                           ; $6701: $fe $d3
	add b                                            ; $6703: $80
	ld l, $e2                                        ; $6704: $2e $e2
	push af                                          ; $6706: $f5
	sbc $07                                          ; $6707: $de $07
	adc a                                            ; $6709: $8f
	inc b                                            ; $670a: $04
	dec b                                            ; $670b: $05
	ld b, $0f                                        ; $670c: $06 $0f
	add hl, bc                                       ; $670e: $09
	rst AddAOntoHL                                          ; $670f: $ef
	db $ed                                           ; $6710: $ed
	rst SubAFromDE                                          ; $6711: $df
	or e                                             ; $6712: $b3
	rst $38                                          ; $6713: $ff
	db $fd                                           ; $6714: $fd
	ld a, [hl]                                       ; $6715: $7e
	ld a, [hl]                                       ; $6716: $7e
	ld a, $3e                                        ; $6717: $3e $3e
	rst $38                                          ; $6719: $ff
	ld d, b                                          ; $671a: $50
	db $ec                                           ; $671b: $ec
	rst SubAFromDE                                          ; $671c: $df
	cp $97                                           ; $671d: $fe $97
	cp a                                             ; $671f: $bf
	or c                                             ; $6720: $b1
	sbc e                                            ; $6721: $9b
	sbc h                                            ; $6722: $9c
	rrca                                             ; $6723: $0f
	inc c                                            ; $6724: $0c
	rlca                                             ; $6725: $07
	ld b, $73                                        ; $6726: $06 $73
	ld e, d                                          ; $6728: $5a
	sbc b                                            ; $6729: $98
	inc bc                                           ; $672a: $03
	rlca                                             ; $672b: $07
	ld b, $ff                                        ; $672c: $06 $ff
	rst $38                                          ; $672e: $ff
	rrca                                             ; $672f: $0f
	rrca                                             ; $6730: $0f
	ld b, h                                          ; $6731: $44
	adc $7f                                          ; $6732: $ce $7f
	add a                                            ; $6734: $87
	sbc b                                            ; $6735: $98
	ldh [$60], a                                     ; $6736: $e0 $60
	ldh [$a0], a                                     ; $6738: $e0 $a0
	ldh a, [rSVBK]                                   ; $673a: $f0 $70
	ldh a, [$7b]                                     ; $673c: $f0 $7b
	db $fd                                           ; $673e: $fd
	rst SubAFromDE                                          ; $673f: $df
	ldh [$df], a                                     ; $6740: $e0 $df
	ld hl, sp-$20                                    ; $6742: $f8 $e0
	sub a                                            ; $6744: $97
	rst SubAFromDE                                          ; $6745: $df
	ld [bc], a                                       ; $6746: $02
	ld b, h                                          ; $6747: $44
	xor $f3                                          ; $6748: $ee $f3
	rst SubAFromDE                                          ; $674a: $df
	dec c                                            ; $674b: $0d
	ld [hl], a                                       ; $674c: $77
	ldh [c], a                                       ; $674d: $e2
	sbc e                                            ; $674e: $9b
	push bc                                          ; $674f: $c5
	add $39                                          ; $6750: $c6 $39
	ld a, [hl-]                                      ; $6752: $3a
	db $dd                                           ; $6753: $dd
	ld [bc], a                                       ; $6754: $02
	halt                                             ; $6755: $76
	dec h                                            ; $6756: $25
	db $dd                                           ; $6757: $dd
	ld [bc], a                                       ; $6758: $02
	rst SubAFromHL                                          ; $6759: $d7
	dec b                                            ; $675a: $05
	add l                                            ; $675b: $85
	ld h, e                                          ; $675c: $63
	sbc a                                            ; $675d: $9f
	ld b, $ff                                        ; $675e: $06 $ff
	cp b                                             ; $6760: $b8
	rst $38                                          ; $6761: $ff
	ldh a, [rVBK]                                    ; $6762: $f0 $4f
	db $f4                                           ; $6764: $f4
	rrca                                             ; $6765: $0f

jr_01c_6766:
	and a                                            ; $6766: $a7
	ld e, a                                          ; $6767: $5f
	ld c, $ff                                        ; $6768: $0e $ff
	rst $38                                          ; $676a: $ff
	ld sp, hl                                        ; $676b: $f9
	ld e, a                                          ; $676c: $5f
	ld sp, hl                                        ; $676d: $f9
	ld d, a                                          ; $676e: $57
	rst $38                                          ; $676f: $ff
	ld d, d                                          ; $6770: $52
	cp $52                                           ; $6771: $fe $52
	cp $49                                           ; $6773: $fe $49
	rst $38                                          ; $6775: $ff
	ld [hl], a                                       ; $6776: $77
	cp $9e                                           ; $6777: $fe $9e
	ld c, a                                          ; $6779: $4f
	ld a, d                                          ; $677a: $7a
	db $f4                                           ; $677b: $f4
	ld a, d                                          ; $677c: $7a
	and h                                            ; $677d: $a4
	sbc h                                            ; $677e: $9c
	ld b, b                                          ; $677f: $40
	jr nz, jr_01c_67a2                               ; $6780: $20 $20

	db $db                                           ; $6782: $db
	db $10                                           ; $6783: $10
	rst SubAFromDE                                          ; $6784: $df
	jr nc, jr_01c_6766                               ; $6785: $30 $df

	ldh [$f3], a                                     ; $6787: $e0 $f3
	ld a, [hl]                                       ; $6789: $7e
	ld e, [hl]                                       ; $678a: $5e
	sbc h                                            ; $678b: $9c
	dec c                                            ; $678c: $0d
	rrca                                             ; $678d: $0f
	ld [$fe7b], sp                                   ; $678e: $08 $7b $fe
	sbc [hl]                                         ; $6791: $9e
	ld bc, $fc7b                                     ; $6792: $01 $7b $fc
	sbc l                                            ; $6795: $9d
	inc b                                            ; $6796: $04
	rlca                                             ; $6797: $07
	ld [hl], d                                       ; $6798: $72
	scf                                              ; $6799: $37
	ld a, e                                          ; $679a: $7b
	cp $9e                                           ; $679b: $fe $9e
	nop                                              ; $679d: $00
	ld h, d                                          ; $679e: $62
	ld a, $77                                        ; $679f: $3e $77
	and b                                            ; $67a1: $a0

jr_01c_67a2:
	sub d                                            ; $67a2: $92
	cp [hl]                                          ; $67a3: $be
	rst $38                                          ; $67a4: $ff
	cp $e3                                           ; $67a5: $fe $e3
	sbc h                                            ; $67a7: $9c
	rst $38                                          ; $67a8: $ff
	ld b, b                                          ; $67a9: $40
	rst $38                                          ; $67aa: $ff
	ld [hl], c                                       ; $67ab: $71
	rst $38                                          ; $67ac: $ff
	cp $fe                                           ; $67ad: $fe $fe
	xor d                                            ; $67af: $aa
	ld a, e                                          ; $67b0: $7b
	cp $9a                                           ; $67b1: $fe $9a
	xor c                                            ; $67b3: $a9
	rst $38                                          ; $67b4: $ff
	xor c                                            ; $67b5: $a9
	rst $38                                          ; $67b6: $ff
	dec h                                            ; $67b7: $25
	ld a, d                                          ; $67b8: $7a
	ld b, d                                          ; $67b9: $42
	ld l, [hl]                                       ; $67ba: $6e
	ld b, b                                          ; $67bb: $40
	ld h, [hl]                                       ; $67bc: $66
	ld b, d                                          ; $67bd: $42
	ld b, [hl]                                       ; $67be: $46
	ld d, b                                          ; $67bf: $50
	ld e, [hl]                                       ; $67c0: $5e
	ld a, $db                                        ; $67c1: $3e $db
	ld bc, $a66f                                     ; $67c3: $01 $6f $a6
	sbc l                                            ; $67c6: $9d
	ld b, $07                                        ; $67c7: $06 $07
	ld a, e                                          ; $67c9: $7b
	xor e                                            ; $67ca: $ab
	sbc h                                            ; $67cb: $9c
	inc b                                            ; $67cc: $04
	inc bc                                           ; $67cd: $03
	inc bc                                           ; $67ce: $03
	ld sp, hl                                        ; $67cf: $f9
	adc h                                            ; $67d0: $8c

jr_01c_67d1:
	ld c, h                                          ; $67d1: $4c
	ld [hl], e                                       ; $67d2: $73
	ret nz                                           ; $67d3: $c0

	rst $38                                          ; $67d4: $ff
	ld [hl], e                                       ; $67d5: $73
	rst $38                                          ; $67d6: $ff
	ld e, a                                          ; $67d7: $5f
	db $ec                                           ; $67d8: $ec
	ld e, a                                          ; $67d9: $5f
	ldh [rWY], a                                     ; $67da: $e0 $4a
	push af                                          ; $67dc: $f5
	ld b, b                                          ; $67dd: $40
	rst $38                                          ; $67de: $ff
	ld a, a                                          ; $67df: $7f
	rst $38                                          ; $67e0: $ff
	ld d, l                                          ; $67e1: $55
	rst $38                                          ; $67e2: $ff
	push de                                          ; $67e3: $d5
	ld a, e                                          ; $67e4: $7b
	cp $9e                                           ; $67e5: $fe $9e
	and h                                            ; $67e7: $a4
	ld a, e                                          ; $67e8: $7b
	cp $9e                                           ; $67e9: $fe $9e
	db $e4                                           ; $67eb: $e4
	ld [hl], e                                       ; $67ec: $73
	cp $82                                           ; $67ed: $fe $82
	jr nz, jr_01c_67d1                               ; $67ef: $20 $e0

	ret nc                                           ; $67f1: $d0

	ldh a, [hDisp0_WY]                                     ; $67f2: $f0 $88
	ld hl, sp+$04                                    ; $67f4: $f8 $04
	db $fc                                           ; $67f6: $fc
	ld [bc], a                                       ; $67f7: $02
	cp $43                                           ; $67f8: $fe $43
	rst $38                                          ; $67fa: $ff
	pop bc                                           ; $67fb: $c1
	rst $38                                          ; $67fc: $ff
	pop hl                                           ; $67fd: $e1
	rst $38                                          ; $67fe: $ff
	ld h, [hl]                                       ; $67ff: $66
	cp $7f                                           ; $6800: $fe $7f
	ld sp, hl                                        ; $6802: $f9
	ccf                                              ; $6803: $3f
	pop af                                           ; $6804: $f1
	xor a                                            ; $6805: $af
	jp hl                                            ; $6806: $e9


	and [hl]                                         ; $6807: $a6
	and $90                                          ; $6808: $e6 $90
	ldh a, [hDisp1_SCY]                                     ; $680a: $f0 $90
	ld a, d                                          ; $680c: $7a
	ld d, h                                          ; $680d: $54
	rst SubAFromDE                                          ; $680e: $df
	ld a, a                                          ; $680f: $7f
	adc e                                            ; $6810: $8b
	ld a, $26                                        ; $6811: $3e $26
	ccf                                              ; $6813: $3f
	inc hl                                           ; $6814: $23
	rla                                              ; $6815: $17
	dec de                                           ; $6816: $1b
	rra                                              ; $6817: $1f
	rla                                              ; $6818: $17
	rra                                              ; $6819: $1f
	add hl, de                                       ; $681a: $19
	rra                                              ; $681b: $1f
	inc de                                           ; $681c: $13
	ccf                                              ; $681d: $3f
	ccf                                              ; $681e: $3f
	ld [hl], a                                       ; $681f: $77
	ld l, a                                          ; $6820: $6f
	rst $38                                          ; $6821: $ff
	rst $38                                          ; $6822: $ff
	ld a, a                                          ; $6823: $7f
	ld a, a                                          ; $6824: $7f
	ld d, a                                          ; $6825: $57
	ld a, d                                          ; $6826: $7a
	ld h, a                                          ; $6827: $67
	ld [hl], h                                       ; $6828: $74
	db $dd                                           ; $6829: $dd
	ret nz                                           ; $682a: $c0

	db $dd                                           ; $682b: $dd
	ldh [$df], a                                     ; $682c: $e0 $df
	ret nz                                           ; $682e: $c0

	ld [bc], a                                       ; $682f: $02
	jr nz, @-$1e                                     ; $6830: $20 $e0

	add d                                            ; $6832: $82
	ld d, l                                          ; $6833: $55
	ldh a, [$df]                                     ; $6834: $f0 $df
	rlca                                             ; $6836: $07
	reti                                             ; $6837: $d9


	ld bc, $4479                                     ; $6838: $01 $79 $44
	sbc b                                            ; $683b: $98
	inc b                                            ; $683c: $04
	rra                                              ; $683d: $1f
	rra                                              ; $683e: $1f
	scf                                              ; $683f: $37
	cpl                                              ; $6840: $2f
	ccf                                              ; $6841: $3f
	ccf                                              ; $6842: $3f
	ld d, l                                          ; $6843: $55
	ld e, $95                                        ; $6844: $1e $95
	cp $fa                                           ; $6846: $fe $fa
	cp $32                                           ; $6848: $fe $32
	cp $32                                           ; $684a: $fe $32
	ld a, e                                          ; $684c: $7b
	cp l                                             ; $684d: $bd
	rst AddAOntoHL                                          ; $684e: $ef
	add hl, hl                                       ; $684f: $29
	sbc $ef                                          ; $6850: $de $ef
	sbc [hl]                                         ; $6852: $9e
	ld l, b                                          ; $6853: $68
	sbc $ef                                          ; $6854: $de $ef
	sbc h                                            ; $6856: $9c
	xor $c7                                          ; $6857: $ee $c7
	rst JumpTable                                          ; $6859: $c7
	ld c, h                                          ; $685a: $4c
	cp $56                                           ; $685b: $fe $56
	ld [hl], b                                       ; $685d: $70
	rst SubAFromDE                                          ; $685e: $df
	ret nz                                           ; $685f: $c0

	ld a, l                                          ; $6860: $7d
	add hl, de                                       ; $6861: $19
	rst SubAFromDE                                          ; $6862: $df
	ld hl, sp-$21                                    ; $6863: $f8 $df
	cp $f6                                           ; $6865: $fe $f6
	sub l                                            ; $6867: $95
	ldh a, [c]                                       ; $6868: $f2
	nop                                              ; $6869: $00
	cp $00                                           ; $686a: $fe $00
	rst $38                                          ; $686c: $ff
	nop                                              ; $686d: $00
	ld a, [hl-]                                      ; $686e: $3a
	nop                                              ; $686f: $00
	ld [bc], a                                       ; $6870: $02
	nop                                              ; $6871: $00
	ld a, b                                          ; $6872: $78
	ld [hl], $77                                     ; $6873: $36 $77
	add e                                            ; $6875: $83
	ld [hl], e                                       ; $6876: $73
	cp $7f                                           ; $6877: $fe $7f
	ldh a, [c]                                       ; $6879: $f2
	ld h, a                                          ; $687a: $67
	cp $73                                           ; $687b: $fe $73
	push bc                                          ; $687d: $c5
	sbc e                                            ; $687e: $9b
	nop                                              ; $687f: $00
	ret nz                                           ; $6880: $c0

	nop                                              ; $6881: $00
	ldh [$73], a                                     ; $6882: $e0 $73
	cp $7f                                           ; $6884: $fe $7f
	ld hl, sp-$0e                                    ; $6886: $f8 $f2
	ld l, d                                          ; $6888: $6a
	inc bc                                           ; $6889: $03
	push hl                                          ; $688a: $e5
	rst SubAFromDE                                          ; $688b: $df
	ld bc, $029d                                     ; $688c: $01 $9d $02
	inc bc                                           ; $688f: $03
	ccf                                              ; $6890: $3f
	db $eb                                           ; $6891: $eb
	rst SubAFromDE                                          ; $6892: $df
	ld c, $93                                        ; $6893: $0e $93
	ld de, $041f                                     ; $6895: $11 $1f $04
	rlca                                             ; $6898: $07
	ld a, h                                          ; $6899: $7c
	ld a, a                                          ; $689a: $7f
	add e                                            ; $689b: $83
	rst $38                                          ; $689c: $ff
	nop                                              ; $689d: $00
	rst $38                                          ; $689e: $ff
	ld hl, sp-$01                                    ; $689f: $f8 $ff
	pop af                                           ; $68a1: $f1
	sub b                                            ; $68a2: $90
	ld b, b                                          ; $68a3: $40
	ret nz                                           ; $68a4: $c0

	ld [de], a                                       ; $68a5: $12
	ld [hl], d                                       ; $68a6: $72
	adc l                                            ; $68a7: $8d
	rst $38                                          ; $68a8: $ff
	ld h, d                                          ; $68a9: $62
	rst $38                                          ; $68aa: $ff
	db $10                                           ; $68ab: $10
	rst $38                                          ; $68ac: $ff
	ld [$c9ff], sp                                   ; $68ad: $08 $ff $c9
	rst $38                                          ; $68b0: $ff
	ld a, [hl+]                                      ; $68b1: $2a
	ld b, e                                          ; $68b2: $43
	ldh [$fb], a                                     ; $68b3: $e0 $fb
	rst SubAFromDE                                          ; $68b5: $df
	ret nz                                           ; $68b6: $c0

	sub a                                            ; $68b7: $97
	and b                                            ; $68b8: $a0
	ldh [hDisp1_SCY], a                                     ; $68b9: $e0 $90
	ldh a, [rAUD1SWEEP]                              ; $68bb: $f0 $10
	ldh a, [$08]                                     ; $68bd: $f0 $08
	ld hl, sp-$1d                                    ; $68bf: $f8 $e3
	rst SubAFromDE                                          ; $68c1: $df
	ld bc, $dff3                                     ; $68c2: $01 $f3 $df
	inc bc                                           ; $68c5: $03
	sub b                                            ; $68c6: $90
	nop                                              ; $68c7: $00
	rlca                                             ; $68c8: $07
	nop                                              ; $68c9: $00
	ld bc, $0f0f                                     ; $68ca: $01 $0f $0f
	ld sp, $403f                                     ; $68cd: $31 $3f $40
	ld a, a                                          ; $68d0: $7f
	inc a                                            ; $68d1: $3c

jr_01c_68d2:
	ccf                                              ; $68d2: $3f
	ld h, e                                          ; $68d3: $63
	ld a, a                                          ; $68d4: $7f
	add c                                            ; $68d5: $81
	ld c, e                                          ; $68d6: $4b
	and b                                            ; $68d7: $a0
	sbc b                                            ; $68d8: $98
	ld [$c418], sp                                   ; $68d9: $08 $18 $c4
	call c, $ee22                                    ; $68dc: $dc $22 $ee
	ld de, $847b                                     ; $68df: $11 $7b $84
	sbc b                                            ; $68e2: $98
	call nz, $24ff                                   ; $68e3: $c4 $ff $24
	rst $38                                          ; $68e6: $ff
	dec d                                            ; $68e7: $15
	rst $38                                          ; $68e8: $ff
	jp $8043                                         ; $68e9: $c3 $43 $80


	rst SubAFromDE                                          ; $68ec: $df
	add b                                            ; $68ed: $80
	rst SubAFromDE                                          ; $68ee: $df
	ret nz                                           ; $68ef: $c0

	sbc b                                            ; $68f0: $98
	ld h, b                                          ; $68f1: $60
	ldh [rAUD4LEN], a                                ; $68f2: $e0 $20
	ldh [$60], a                                     ; $68f4: $e0 $60
	ldh [$b0], a                                     ; $68f6: $e0 $b0
	ld a, e                                          ; $68f8: $7b
	add b                                            ; $68f9: $80
	sbc [hl]                                         ; $68fa: $9e
	adc b                                            ; $68fb: $88
	dec de                                           ; $68fc: $1b
	add b                                            ; $68fd: $80
	ld [hl], a                                       ; $68fe: $77
	add h                                            ; $68ff: $84
	ld b, a                                          ; $6900: $47
	add b                                            ; $6901: $80
	rst $38                                          ; $6902: $ff
	sbc h                                            ; $6903: $9c
	rlca                                             ; $6904: $07
	rrca                                             ; $6905: $0f
	db $10                                           ; $6906: $10
	ld a, e                                          ; $6907: $7b
	ld [bc], a                                       ; $6908: $02
	sbc h                                            ; $6909: $9c
	ld a, $3f                                        ; $690a: $3e $3f
	pop bc                                           ; $690c: $c1
	ld a, e                                          ; $690d: $7b
	ld [bc], a                                       ; $690e: $02
	ld [hl], d                                       ; $690f: $72
	db $fc                                           ; $6910: $fc
	db $f4                                           ; $6911: $f4
	sbc b                                            ; $6912: $98
	jr nz, jr_01c_6975                               ; $6913: $20 $60

	add hl, de                                       ; $6915: $19
	add hl, sp                                       ; $6916: $39
	push bc                                          ; $6917: $c5
	db $fd                                           ; $6918: $fd
	ld [hl+], a                                      ; $6919: $22
	ld a, e                                          ; $691a: $7b
	ld [bc], a                                       ; $691b: $02
	sbc h                                            ; $691c: $9c
	adc b                                            ; $691d: $88
	rst $38                                          ; $691e: $ff
	ld c, c                                          ; $691f: $49
	ld a, e                                          ; $6920: $7b
	ld [bc], a                                       ; $6921: $02
	sbc [hl]                                         ; $6922: $9e
	add a                                            ; $6923: $87
	dec sp                                           ; $6924: $3b
	nop                                              ; $6925: $00
	db $dd                                           ; $6926: $dd
	add b                                            ; $6927: $80
	rst SubAFromDE                                          ; $6928: $df
	ret nz                                           ; $6929: $c0

	rst SubAFromDE                                          ; $692a: $df
	ldh [$7f], a                                     ; $692b: $e0 $7f
	add d                                            ; $692d: $82
	inc bc                                           ; $692e: $03
	nop                                              ; $692f: $00
	ldh [$9e], a                                     ; $6930: $e0 $9e
	halt                                             ; $6932: $76
	inc e                                            ; $6933: $1c
	ld a, a                                          ; $6934: $7f
	jr nc, jr_01c_68d2                               ; $6935: $30 $9b

	dec b                                            ; $6937: $05
	rlca                                             ; $6938: $07
	dec b                                            ; $6939: $05
	dec b                                            ; $693a: $05
	ld a, e                                          ; $693b: $7b
	inc d                                            ; $693c: $14
	ld a, [hl-]                                      ; $693d: $3a
	db $10                                           ; $693e: $10
	ld a, a                                          ; $693f: $7f
	ld a, $9a                                        ; $6940: $3e $9a
	ld h, [hl]                                       ; $6942: $66
	rst $38                                          ; $6943: $ff
	adc h                                            ; $6944: $8c
	rst $38                                          ; $6945: $ff
	inc d                                            ; $6946: $14
	ld a, d                                          ; $6947: $7a
	or d                                             ; $6948: $b2
	ld a, a                                          ; $6949: $7f
	cp $8a                                           ; $694a: $fe $8a
	ld c, h                                          ; $694c: $4c
	rst $38                                          ; $694d: $ff
	ld e, [hl]                                       ; $694e: $5e
	ld a, e                                          ; $694f: $7b
	ld e, c                                          ; $6950: $59
	ld [hl], a                                       ; $6951: $77
	ld d, [hl]                                       ; $6952: $56
	ld a, a                                          ; $6953: $7f
	scf                                              ; $6954: $37
	dec a                                            ; $6955: $3d
	dec [hl]                                         ; $6956: $35
	dec sp                                           ; $6957: $3b
	ld [hl-], a                                      ; $6958: $32
	ccf                                              ; $6959: $3f
	inc l                                            ; $695a: $2c
	dec sp                                           ; $695b: $3b
	cpl                                              ; $695c: $2f
	inc [hl]                                         ; $695d: $34
	ld [de], a                                       ; $695e: $12
	rra                                              ; $695f: $1f
	rlca                                             ; $6960: $07
	ld a, d                                          ; $6961: $7a
	ld hl, sp-$66                                    ; $6962: $f8 $9a
	jr nc, @+$01                                     ; $6964: $30 $ff

	ld d, h                                          ; $6966: $54
	rst $38                                          ; $6967: $ff
	sub d                                            ; $6968: $92
	ld a, e                                          ; $6969: $7b
	cp $84                                           ; $696a: $fe $84
	jp hl                                            ; $696c: $e9


	cp a                                             ; $696d: $bf
	ld a, [hl]                                       ; $696e: $7e
	rst SubAFromHL                                          ; $696f: $d7
	ld h, c                                          ; $6970: $61
	cp a                                             ; $6971: $bf
	call z, Call_01c_5e3f                            ; $6972: $cc $3f $5e

jr_01c_6975:
	or a                                             ; $6975: $b7
	ld d, $ef                                        ; $6976: $16 $ef
	ld l, l                                          ; $6978: $6d
	sbc d                                            ; $6979: $9a
	di                                               ; $697a: $f3
	inc l                                            ; $697b: $2c
	db $dd                                           ; $697c: $dd
	db $e3                                           ; $697d: $e3
	rst FarCall                                          ; $697e: $f7
	rrca                                             ; $697f: $0f
	ld [$88f8], sp                                   ; $6980: $08 $f8 $88
	ld hl, sp+$44                                    ; $6983: $f8 $44
	db $fc                                           ; $6985: $fc
	inc h                                            ; $6986: $24
	ld a, e                                          ; $6987: $7b
	cp $9e                                           ; $6988: $fe $9e
	inc d                                            ; $698a: $14
	ld a, e                                          ; $698b: $7b
	cp $8d                                           ; $698c: $fe $8d
	and h                                            ; $698e: $a4
	db $fc                                           ; $698f: $fc
	db $e4                                           ; $6990: $e4
	call c, $dc64                                    ; $6991: $dc $64 $dc
	db $e4                                           ; $6994: $e4
	inc e                                            ; $6995: $1c
	db $e4                                           ; $6996: $e4
	inc a                                            ; $6997: $3c
	call nz, $887c                                   ; $6998: $c4 $7c $88
	ld hl, sp-$78                                    ; $699b: $f8 $88
	ld a, b                                          ; $699d: $78
	sub b                                            ; $699e: $90
	ld [hl], b                                       ; $699f: $70
	ld [hl], a                                       ; $69a0: $77
	add d                                            ; $69a1: $82
	rst SubAFromDE                                          ; $69a2: $df
	rlca                                             ; $69a3: $07
	ld l, a                                          ; $69a4: $6f
	halt                                             ; $69a5: $76
	ld a, $92                                        ; $69a6: $3e $92
	rst $38                                          ; $69a8: $ff
	add b                                            ; $69a9: $80

Jump_01c_69aa:
	ld a, [hl-]                                      ; $69aa: $3a
	rst $38                                          ; $69ab: $ff
	db $e4                                           ; $69ac: $e4
	rst $38                                          ; $69ad: $ff
	sbc h                                            ; $69ae: $9c
	rst $38                                          ; $69af: $ff
	and h                                            ; $69b0: $a4
	rst $38                                          ; $69b1: $ff
	ld c, [hl]                                       ; $69b2: $4e
	rst $38                                          ; $69b3: $ff
	ld e, c                                          ; $69b4: $59
	rst FarCall                                          ; $69b5: $f7
	ld d, [hl]                                       ; $69b6: $56
	ld sp, hl                                        ; $69b7: $f9
	rst SubAFromDE                                          ; $69b8: $df
	cp $99                                           ; $69b9: $fe $99
	cp a                                             ; $69bb: $bf
	rla                                              ; $69bc: $17
	jr c, @+$3a                                      ; $69bd: $38 $38

	scf                                              ; $69bf: $37
	rla                                              ; $69c0: $17
	add hl, de                                       ; $69c1: $19
	ld e, $19                                        ; $69c2: $1e $19
	rla                                              ; $69c4: $17
	inc e                                            ; $69c5: $1c
	ld e, $1b                                        ; $69c6: $1e $1b
	dec c                                            ; $69c8: $0d
	add b                                            ; $69c9: $80
	rrca                                             ; $69ca: $0f
	jr @+$01                                         ; $69cb: $18 $ff

	jr nz, @+$01                                     ; $69cd: $20 $ff

	ld c, b                                          ; $69cf: $48
	rst $38                                          ; $69d0: $ff
	ld e, c                                          ; $69d1: $59
	rst $38                                          ; $69d2: $ff
	db $dd                                           ; $69d3: $dd
	or a                                             ; $69d4: $b7
	di                                               ; $69d5: $f3
	sbc a                                            ; $69d6: $9f
	ld c, [hl]                                       ; $69d7: $4e
	or c                                             ; $69d8: $b1
	rra                                              ; $69d9: $1f
	db $fc                                           ; $69da: $fc
	inc de                                           ; $69db: $13
	rst $38                                          ; $69dc: $ff
	ld e, [hl]                                       ; $69dd: $5e
	and c                                            ; $69de: $a1
	pop hl                                           ; $69df: $e1
	ld e, $ef                                        ; $69e0: $1e $ef
	jr nc, @-$1f                                     ; $69e2: $30 $df

	ldh [$fe], a                                     ; $69e4: $e0 $fe
	ld bc, $07fb                                     ; $69e6: $01 $fb $07
	sbc e                                            ; $69e9: $9b
	sbc a                                            ; $69ea: $9f
	rst $38                                          ; $69eb: $ff
	ld c, b                                          ; $69ec: $48
	ld hl, sp+$77                                    ; $69ed: $f8 $77
	add [hl]                                         ; $69ef: $86
	add b                                            ; $69f0: $80
	ld [de], a                                       ; $69f1: $12
	cp $8a                                           ; $69f2: $fe $8a
	cp $4a                                           ; $69f4: $fe $4a
	cp $6a                                           ; $69f6: $fe $6a
	cp $32                                           ; $69f8: $fe $32
	cp $12                                           ; $69fa: $fe $12
	xor $f2                                          ; $69fc: $ee $f2
	ld c, $e2                                        ; $69fe: $0e $e2
	ld e, $c2                                        ; $6a00: $1e $c2
	ld a, [hl]                                       ; $6a02: $7e
	call nz, $84fc                                   ; $6a03: $c4 $fc $84
	db $fc                                           ; $6a06: $fc
	adc b                                            ; $6a07: $88
	ld a, b                                          ; $6a08: $78
	ld d, b                                          ; $6a09: $50
	or b                                             ; $6a0a: $b0
	ld [bc], a                                       ; $6a0b: $02
	inc bc                                           ; $6a0c: $03
	dec b                                            ; $6a0d: $05
	rlca                                             ; $6a0e: $07
	rrca                                             ; $6a0f: $0f
	sbc [hl]                                         ; $6a10: $9e
	rrca                                             ; $6a11: $0f
	ld l, a                                          ; $6a12: $6f
	inc b                                            ; $6a13: $04
	add hl, sp                                       ; $6a14: $39
	ld [de], a                                       ; $6a15: $12
	sbc [hl]                                         ; $6a16: $9e
	nop                                              ; $6a17: $00
	ld h, a                                          ; $6a18: $67
	ld [bc], a                                       ; $6a19: $02
	add d                                            ; $6a1a: $82
	ld b, h                                          ; $6a1b: $44
	rst $38                                          ; $6a1c: $ff
	adc [hl]                                         ; $6a1d: $8e
	rst $38                                          ; $6a1e: $ff
	add hl, de                                       ; $6a1f: $19
	ld a, a                                          ; $6a20: $7f
	ld d, [hl]                                       ; $6a21: $56
	ld a, e                                          ; $6a22: $7b
	ld d, a                                          ; $6a23: $57
	ld a, l                                          ; $6a24: $7d
	ccf                                              ; $6a25: $3f
	ccf                                              ; $6a26: $3f
	dec [hl]                                         ; $6a27: $35
	ccf                                              ; $6a28: $3f
	ld a, [hl-]                                      ; $6a29: $3a
	scf                                              ; $6a2a: $37
	cpl                                              ; $6a2b: $2f
	jr c, jr_01c_6a55                                ; $6a2c: $38 $27

	inc a                                            ; $6a2e: $3c
	ld e, $13                                        ; $6a2f: $1e $13
	dec bc                                           ; $6a31: $0b
	rrca                                             ; $6a32: $0f
	jr nc, @+$01                                     ; $6a33: $30 $ff

	ld b, b                                          ; $6a35: $40
	rst $38                                          ; $6a36: $ff
	sub h                                            ; $6a37: $94
	ld a, e                                          ; $6a38: $7b
	inc b                                            ; $6a39: $04
	add a                                            ; $6a3a: $87
	adc c                                            ; $6a3b: $89
	rst $38                                          ; $6a3c: $ff
	ld l, h                                          ; $6a3d: $6c
	or a                                             ; $6a3e: $b7
	ld [hl], e                                       ; $6a3f: $73
	rst SubAFromDE                                          ; $6a40: $df
	ld l, [hl]                                       ; $6a41: $6e
	cp l                                             ; $6a42: $bd
	rra                                              ; $6a43: $1f
	ei                                               ; $6a44: $fb
	ld e, a                                          ; $6a45: $5f
	xor a                                            ; $6a46: $af
	ld e, e                                          ; $6a47: $5b
	xor [hl]                                         ; $6a48: $ae
	db $e4                                           ; $6a49: $e4
	rra                                              ; $6a4a: $1f
	rst $38                                          ; $6a4b: $ff
	and b                                            ; $6a4c: $a0
	ld e, [hl]                                       ; $6a4d: $5e
	pop hl                                           ; $6a4e: $e1
	rst $38                                          ; $6a4f: $ff
	ld [bc], a                                       ; $6a50: $02
	sbc [hl]                                         ; $6a51: $9e
	rst $38                                          ; $6a52: $ff
	ld e, a                                          ; $6a53: $5f
	ld [bc], a                                       ; $6a54: $02

jr_01c_6a55:
	sub e                                            ; $6a55: $93
	sub h                                            ; $6a56: $94
	db $fc                                           ; $6a57: $fc
	call nc, $e4fc                                   ; $6a58: $d4 $fc $e4
	db $fc                                           ; $6a5b: $fc
	inc h                                            ; $6a5c: $24
	call c, $9c64                                    ; $6a5d: $dc $64 $9c
	ld h, h                                          ; $6a60: $64
	cp h                                             ; $6a61: $bc
	ld [hl], e                                       ; $6a62: $73
	ld [bc], a                                       ; $6a63: $02
	sbc d                                            ; $6a64: $9a
	ld hl, sp+$10                                    ; $6a65: $f8 $10
	ldh a, [$a0]                                     ; $6a67: $f0 $a0
	ld h, b                                          ; $6a69: $60
	ldh [hLCDCIntHandlerIdx], a                                     ; $6a6a: $e0 $81
	rst SubAFromDE                                          ; $6a6c: $df
	rrca                                             ; $6a6d: $0f
	rst SubAFromDE                                          ; $6a6e: $df
	rlca                                             ; $6a6f: $07
	adc l                                            ; $6a70: $8d
	dec b                                            ; $6a71: $05
	ld b, $0b                                        ; $6a72: $06 $0b
	ld c, $0a                                        ; $6a74: $0e $0a
	rrca                                             ; $6a76: $0f
	rla                                              ; $6a77: $17
	rra                                              ; $6a78: $1f
	rra                                              ; $6a79: $1f
	inc e                                            ; $6a7a: $1c
	rra                                              ; $6a7b: $1f
	rla                                              ; $6a7c: $17
	rra                                              ; $6a7d: $1f
	dec de                                           ; $6a7e: $1b
	ld d, $1f                                        ; $6a7f: $16 $1f
	dec bc                                           ; $6a81: $0b
	rrca                                             ; $6a82: $0f
	rst SubAFromHL                                          ; $6a83: $d7
	inc bc                                           ; $6a84: $03
	adc d                                            ; $6a85: $8a
	ei                                               ; $6a86: $fb
	rst $38                                          ; $6a87: $ff
	rrca                                             ; $6a88: $0f
	rst $38                                          ; $6a89: $ff
	cp c                                             ; $6a8a: $b9
	rst FarCall                                          ; $6a8b: $f7
	ld hl, sp+$47                                    ; $6a8c: $f8 $47
	db $f4                                           ; $6a8e: $f4
	rrca                                             ; $6a8f: $0f
	db $fc                                           ; $6a90: $fc
	rst $38                                          ; $6a91: $ff
	db $fc                                           ; $6a92: $fc
	daa                                              ; $6a93: $27
	cp $e3                                           ; $6a94: $fe $e3
	rst $38                                          ; $6a96: $ff
	di                                               ; $6a97: $f3
	ld e, [hl]                                       ; $6a98: $5e
	cp $49                                           ; $6a99: $fe $49
	ld a, c                                          ; $6a9b: $79
	inc h                                            ; $6a9c: $24
	sbc [hl]                                         ; $6a9d: $9e
	jr z, jr_01c_6b11                                ; $6a9e: $28 $71

	xor $9b                                          ; $6aa0: $ee $9b
	daa                                              ; $6aa2: $27
	rst $38                                          ; $6aa3: $ff
	ldh [$e0], a                                     ; $6aa4: $e0 $e0
	ld h, l                                          ; $6aa6: $65
	inc l                                            ; $6aa7: $2c
	db $db                                           ; $6aa8: $db
	add b                                            ; $6aa9: $80
	ld d, l                                          ; $6aaa: $55
	ld a, [de]                                       ; $6aab: $1a
	ld [hl], a                                       ; $6aac: $77
	ldh a, [c]                                       ; $6aad: $f2
	rst SubAFromDE                                          ; $6aae: $df
	rlca                                             ; $6aaf: $07
	sbc e                                            ; $6ab0: $9b
	rrca                                             ; $6ab1: $0f
	inc c                                            ; $6ab2: $0c
	rrca                                             ; $6ab3: $0f
	inc c                                            ; $6ab4: $0c
	ld a, e                                          ; $6ab5: $7b
	and h                                            ; $6ab6: $a4
	sub l                                            ; $6ab7: $95
	dec e                                            ; $6ab8: $1d
	rra                                              ; $6ab9: $1f
	jr @+$21                                         ; $6aba: $18 $1f

	add hl, de                                       ; $6abc: $19
	rra                                              ; $6abd: $1f
	dec e                                            ; $6abe: $1d
	dec de                                           ; $6abf: $1b
	rra                                              ; $6ac0: $1f
	dec c                                            ; $6ac1: $0d
	ld [hl], e                                       ; $6ac2: $73
	and d                                            ; $6ac3: $a2
	sbc [hl]                                         ; $6ac4: $9e
	ld bc, $887a                                     ; $6ac5: $01 $7a $88
	ld a, a                                          ; $6ac8: $7f
	cp $df                                           ; $6ac9: $fe $df
	rlca                                             ; $6acb: $07
	ld a, a                                          ; $6acc: $7f
	and b                                            ; $6acd: $a0
	sub h                                            ; $6ace: $94
	rst $38                                          ; $6acf: $ff
	cpl                                              ; $6ad0: $2f
	ld a, [$fb2e]                                    ; $6ad1: $fa $2e $fb
	cpl                                              ; $6ad4: $2f
	ld sp, hl                                        ; $6ad5: $f9
	rst $38                                          ; $6ad6: $ff
	pop af                                           ; $6ad7: $f1
	rst $38                                          ; $6ad8: $ff
	ld bc, $fe7b                                     ; $6ad9: $01 $7b $fe
	sbc d                                            ; $6adc: $9a
	ld [bc], a                                       ; $6add: $02
	cp $8e                                           ; $6ade: $fe $8e
	cp $7a                                           ; $6ae0: $fe $7a
	ld [hl], e                                       ; $6ae2: $73
	sbc [hl]                                         ; $6ae3: $9e
	ld a, [hl]                                       ; $6ae4: $7e
	ld a, [hl+]                                      ; $6ae5: $2a
	ld l, a                                          ; $6ae6: $6f
	and b                                            ; $6ae7: $a0
	ld e, a                                          ; $6ae8: $5f
	xor h                                            ; $6ae9: $ac
	inc a                                            ; $6aea: $3c
	cp b                                             ; $6aeb: $b8
	ld [hl], a                                       ; $6aec: $77
	and b                                            ; $6aed: $a0
	ld a, [hl]                                       ; $6aee: $7e
	ld c, d                                          ; $6aef: $4a
	sbc $03                                          ; $6af0: $de $03
	ld a, d                                          ; $6af2: $7a
	ld b, e                                          ; $6af3: $43
	halt                                             ; $6af4: $76
	ld b, b                                          ; $6af5: $40
	ld [hl], l                                       ; $6af6: $75
	ld [hl-], a                                      ; $6af7: $32
	ld a, e                                          ; $6af8: $7b
	ld a, [$a473]                                    ; $6af9: $fa $73 $a4
	ld l, a                                          ; $6afc: $6f
	cp $90                                           ; $6afd: $fe $90
	ld h, e                                          ; $6aff: $63
	sbc a                                            ; $6b00: $9f
	dec b                                            ; $6b01: $05
	rst $38                                          ; $6b02: $ff
	inc a                                            ; $6b03: $3c
	rst $38                                          ; $6b04: $ff
	db $f4                                           ; $6b05: $f4
	rst GetHLinHL                                          ; $6b06: $cf
	db $f4                                           ; $6b07: $f4
	rrca                                             ; $6b08: $0f
	and h                                            ; $6b09: $a4
	ld e, a                                          ; $6b0a: $5f
	inc b                                            ; $6b0b: $04
	rst $38                                          ; $6b0c: $ff
	db $fc                                           ; $6b0d: $fc
	ld a, c                                          ; $6b0e: $79
	ld d, [hl]                                       ; $6b0f: $56
	sbc h                                            ; $6b10: $9c

jr_01c_6b11:
	ld d, e                                          ; $6b11: $53
	rst $38                                          ; $6b12: $ff
	ld d, d                                          ; $6b13: $52
	ld a, c                                          ; $6b14: $79
	db $f4                                           ; $6b15: $f4
	sbc [hl]                                         ; $6b16: $9e
	add hl, hl                                       ; $6b17: $29
	ld [hl], e                                       ; $6b18: $73
	ld a, $7f                                        ; $6b19: $3e $7f
	and b                                            ; $6b1b: $a0
	rst SubAFromDE                                          ; $6b1c: $df
	ret nz                                           ; $6b1d: $c0

	db $db                                           ; $6b1e: $db
	add b                                            ; $6b1f: $80
	sbc l                                            ; $6b20: $9d
	ld b, b                                          ; $6b21: $40
	ret nz                                           ; $6b22: $c0

	ld l, a                                          ; $6b23: $6f
	cp $4f                                           ; $6b24: $fe $4f
	ld a, $2c                                        ; $6b26: $3e $2c
	adc $f5                                          ; $6b28: $ce $f5
	sbc $07                                          ; $6b2a: $de $07
	adc [hl]                                         ; $6b2c: $8e
	inc b                                            ; $6b2d: $04
	dec b                                            ; $6b2e: $05
	ld b, $0f                                        ; $6b2f: $06 $0f
	add hl, bc                                       ; $6b31: $09
	rst AddAOntoHL                                          ; $6b32: $ef
	db $ed                                           ; $6b33: $ed
	rst SubAFromDE                                          ; $6b34: $df
	or e                                             ; $6b35: $b3
	rst $38                                          ; $6b36: $ff
	db $fd                                           ; $6b37: $fd
	ld a, [hl]                                       ; $6b38: $7e
	ld a, [hl]                                       ; $6b39: $7e
	ld a, $3e                                        ; $6b3a: $3e $3e
	rst $38                                          ; $6b3c: $ff
	rst $38                                          ; $6b3d: $ff
	push af                                          ; $6b3e: $f5
	rst SubAFromDE                                          ; $6b3f: $df
	cp $97                                           ; $6b40: $fe $97
	cp a                                             ; $6b42: $bf
	or c                                             ; $6b43: $b1
	sbc e                                            ; $6b44: $9b
	sbc h                                            ; $6b45: $9c
	rrca                                             ; $6b46: $0f
	inc c                                            ; $6b47: $0c
	rlca                                             ; $6b48: $07
	ld b, $73                                        ; $6b49: $06 $73
	ld e, d                                          ; $6b4b: $5a
	sbc b                                            ; $6b4c: $98
	inc bc                                           ; $6b4d: $03
	rlca                                             ; $6b4e: $07
	ld b, $ff                                        ; $6b4f: $06 $ff
	rst $38                                          ; $6b51: $ff
	rrca                                             ; $6b52: $0f
	rrca                                             ; $6b53: $0f
	ld b, a                                          ; $6b54: $47
	ld [hl], $7f                                     ; $6b55: $36 $7f
	add a                                            ; $6b57: $87
	sbc b                                            ; $6b58: $98
	ldh [$60], a                                     ; $6b59: $e0 $60
	ldh [$a0], a                                     ; $6b5b: $e0 $a0
	ldh a, [rSVBK]                                   ; $6b5d: $f0 $70
	ldh a, [$7b]                                     ; $6b5f: $f0 $7b
	db $fd                                           ; $6b61: $fd
	rst SubAFromDE                                          ; $6b62: $df
	ldh [$df], a                                     ; $6b63: $e0 $df
	ld hl, sp-$20                                    ; $6b65: $f8 $e0
	sub a                                            ; $6b67: $97
	ld d, h                                          ; $6b68: $54
	adc d                                            ; $6b69: $8a
	rst SubAFromDE                                          ; $6b6a: $df
	ld bc, $03df                                     ; $6b6b: $01 $df $03
	sbc [hl]                                         ; $6b6e: $9e
	ld b, $7a                                        ; $6b6f: $06 $7a
	ld l, e                                          ; $6b71: $6b
	rst SubAFromDE                                          ; $6b72: $df
	ld a, a                                          ; $6b73: $7f
	ld d, a                                          ; $6b74: $57
	ld b, b                                          ; $6b75: $40
	ld a, h                                          ; $6b76: $7c
	res 3, c                                         ; $6b77: $cb $99
	cp [hl]                                          ; $6b79: $be
	jp nc, $9dfb                                     ; $6b7a: $d2 $fb $9d

	rst $38                                          ; $6b7d: $ff
	sbc c                                            ; $6b7e: $99
	sbc $ff                                          ; $6b7f: $de $ff
	ld a, l                                          ; $6b81: $7d
	inc de                                           ; $6b82: $13
	sbc h                                            ; $6b83: $9c
	rst $38                                          ; $6b84: $ff
	rst FarCall                                          ; $6b85: $f7
	rst AddAOntoHL                                          ; $6b86: $ef
	db $dd                                           ; $6b87: $dd
	rst $38                                          ; $6b88: $ff
	ld h, $70                                        ; $6b89: $26 $70
	db $db                                           ; $6b8b: $db
	add b                                            ; $6b8c: $80
	rst SubAFromDE                                          ; $6b8d: $df
	ret nz                                           ; $6b8e: $c0

	ldh [$d7], a                                     ; $6b8f: $e0 $d7
	adc l                                            ; $6b91: $8d
	ld h, [hl]                                       ; $6b92: $66
	ld a, c                                          ; $6b93: $79
	jr nc, jr_01c_6c15                               ; $6b94: $30 $7f

	add hl, sp                                       ; $6b96: $39
	ld a, a                                          ; $6b97: $7f
	cpl                                              ; $6b98: $2f
	halt                                             ; $6b99: $76
	xor a                                            ; $6b9a: $af
	ldh a, [$a5]                                     ; $6b9b: $f0 $a5
	ld a, [$ffa0]                                    ; $6b9d: $fa $a0 $ff
	ld e, a                                          ; $6ba0: $5f
	ld a, a                                          ; $6ba1: $7f
	ld a, [hl+]                                      ; $6ba2: $2a
	ccf                                              ; $6ba3: $3f
	ld [hl], a                                       ; $6ba4: $77
	cp $9a                                           ; $6ba5: $fe $9a
	ld d, d                                          ; $6ba7: $52
	ld a, a                                          ; $6ba8: $7f
	ld d, d                                          ; $6ba9: $52
	ld a, a                                          ; $6baa: $7f
	ld [hl], d                                       ; $6bab: $72
	ld [hl], e                                       ; $6bac: $73
	cp $92                                           ; $6bad: $fe $92
	inc e                                            ; $6baf: $1c
	db $fc                                           ; $6bb0: $fc
	ld l, b                                          ; $6bb1: $68
	ld hl, sp-$38                                    ; $6bb2: $f8 $c8
	ld hl, sp-$7c                                    ; $6bb4: $f8 $84
	ld a, h                                          ; $6bb6: $7c
	add h                                            ; $6bb7: $84
	ld a, h                                          ; $6bb8: $7c
	inc h                                            ; $6bb9: $24
	db $fc                                           ; $6bba: $fc
	ld h, h                                          ; $6bbb: $64
	ld a, b                                          ; $6bbc: $78
	ret nz                                           ; $6bbd: $c0

	sbc b                                            ; $6bbe: $98
	xor b                                            ; $6bbf: $a8
	ld hl, sp-$50                                    ; $6bc0: $f8 $b0
	ldh a, [hDisp1_SCY]                                     ; $6bc2: $f0 $90
	ldh a, [$50]                                     ; $6bc4: $f0 $50
	ld a, e                                          ; $6bc6: $7b
	cp $7c                                           ; $6bc7: $fe $7c
	ld h, $7f                                        ; $6bc9: $26 $7f
	cp $7e                                           ; $6bcb: $fe $7e
	jp nc, Jump_01c_7fdf                             ; $6bcd: $d2 $df $7f

	sbc c                                            ; $6bd0: $99
	ld a, $26                                        ; $6bd1: $3e $26
	ccf                                              ; $6bd3: $3f
	inc hl                                           ; $6bd4: $23
	rra                                              ; $6bd5: $1f
	inc de                                           ; $6bd6: $13
	ld a, c                                          ; $6bd7: $79
	ld b, [hl]                                       ; $6bd8: $46
	ld a, l                                          ; $6bd9: $7d
	and d                                            ; $6bda: $a2
	sbc b                                            ; $6bdb: $98
	inc de                                           ; $6bdc: $13
	ccf                                              ; $6bdd: $3f
	ccf                                              ; $6bde: $3f
	ld [hl], a                                       ; $6bdf: $77
	ld l, a                                          ; $6be0: $6f
	rst $38                                          ; $6be1: $ff
	rst $38                                          ; $6be2: $ff
	ld d, a                                          ; $6be3: $57
	ld b, b                                          ; $6be4: $40
	ld l, [hl]                                       ; $6be5: $6e
	inc a                                            ; $6be6: $3c
	ld l, a                                          ; $6be7: $6f
	ld l, d                                          ; $6be8: $6a
	rst SubAFromDE                                          ; $6be9: $df
	ret nz                                           ; $6bea: $c0

	db $dd                                           ; $6beb: $dd
	ldh [$df], a                                     ; $6bec: $e0 $df
	ret nz                                           ; $6bee: $c0

	ld [bc], a                                       ; $6bef: $02
	and b                                            ; $6bf0: $a0
	or $b6                                           ; $6bf1: $f6 $b6
	ld [bc], a                                       ; $6bf3: $02
	db $ed                                           ; $6bf4: $ed
	rst SubAFromDE                                          ; $6bf5: $df
	ld bc, $4695                                     ; $6bf6: $01 $95 $46
	ld b, a                                          ; $6bf9: $47
	dec sp                                           ; $6bfa: $3b
	ld a, a                                          ; $6bfb: $7f
	nop                                              ; $6bfc: $00
	ld a, a                                          ; $6bfd: $7f
	ld c, [hl]                                       ; $6bfe: $4e
	ld a, a                                          ; $6bff: $7f
	sub b                                            ; $6c00: $90
	rst $38                                          ; $6c01: $ff
	rst AddAOntoHL                                          ; $6c02: $ef
	sub d                                            ; $6c03: $92
	jr nz, @+$62                                     ; $6c04: $20 $60

	rst GetHLinHL                                          ; $6c06: $cf
	rst AddAOntoHL                                          ; $6c07: $ef
	ld sp, $aeff                                     ; $6c08: $31 $ff $ae
	rst $38                                          ; $6c0b: $ff
	ld h, c                                          ; $6c0c: $61
	rst $38                                          ; $6c0d: $ff
	ld b, b                                          ; $6c0e: $40
	rst $38                                          ; $6c0f: $ff
	jr jr_01c_6c4d                                   ; $6c10: $18 $3b

	ldh [$fd], a                                     ; $6c12: $e0 $fd
	rst SubAFromDE                                          ; $6c14: $df

jr_01c_6c15:
	ret nz                                           ; $6c15: $c0

	add b                                            ; $6c16: $80
	ld h, b                                          ; $6c17: $60
	ldh [$a0], a                                     ; $6c18: $e0 $a0
	ldh [rSVBK], a                                   ; $6c1a: $e0 $70
	ldh a, [hDisp1_SCY]                                     ; $6c1c: $f0 $90
	ldh a, [rTMA]                                    ; $6c1e: $f0 $06
	rst $38                                          ; $6c20: $ff
	ld bc, $02ff                                     ; $6c21: $01 $ff $02
	rst $38                                          ; $6c24: $ff
	ld b, c                                          ; $6c25: $41
	rst $38                                          ; $6c26: $ff
	dec h                                            ; $6c27: $25
	rst $38                                          ; $6c28: $ff
	ld [hl-], a                                      ; $6c29: $32
	rst SubAFromDE                                          ; $6c2a: $df
	cp d                                             ; $6c2b: $ba
	rst GetHLinHL                                          ; $6c2c: $cf
	cp a                                             ; $6c2d: $bf
	rst GetHLinHL                                          ; $6c2e: $cf
	rst $38                                          ; $6c2f: $ff
	sbc e                                            ; $6c30: $9b
	rst $38                                          ; $6c31: $ff
	ld c, $f9                                        ; $6c32: $0e $f9
	ld c, $ff                                        ; $6c34: $0e $ff
	sub h                                            ; $6c36: $94
	ld h, b                                          ; $6c37: $60
	sbc [hl]                                         ; $6c38: $9e
	pop af                                           ; $6c39: $f1
	db $fd                                           ; $6c3a: $fd
	inc bc                                           ; $6c3b: $03
	ei                                               ; $6c3c: $fb
	ld b, $df                                        ; $6c3d: $06 $df
	cp [hl]                                          ; $6c3f: $be
	jr @+$01                                         ; $6c40: $18 $ff

	dec hl                                           ; $6c42: $2b
	sbc $98                                          ; $6c43: $de $98
	nop                                              ; $6c45: $00
	cp $61                                           ; $6c46: $fe $61
	xor l                                            ; $6c48: $ad
	ld [hl], e                                       ; $6c49: $73
	ld a, d                                          ; $6c4a: $7a
	add [hl]                                         ; $6c4b: $86
	dec de                                           ; $6c4c: $1b

jr_01c_6c4d:
	ldh [$9d], a                                     ; $6c4d: $e0 $9d
	pop af                                           ; $6c4f: $f1
	cp l                                             ; $6c50: $bd
	ld a, e                                          ; $6c51: $7b
	ldh [$7f], a                                     ; $6c52: $e0 $7f
	sbc [hl]                                         ; $6c54: $9e
	sbc b                                            ; $6c55: $98
	ld e, b                                          ; $6c56: $58
	ld hl, sp+$28                                    ; $6c57: $f8 $28
	ld hl, sp-$58                                    ; $6c59: $f8 $a8
	ld hl, sp+$48                                    ; $6c5b: $f8 $48
	ld a, e                                          ; $6c5d: $7b
	cp $9e                                           ; $6c5e: $fe $9e
	ret z                                            ; $6c60: $c8

	ld a, e                                          ; $6c61: $7b
	cp $8f                                           ; $6c62: $fe $8f
	adc b                                            ; $6c64: $88
	ld hl, sp-$30                                    ; $6c65: $f8 $d0
	ld [hl], b                                       ; $6c67: $70
	ret nc                                           ; $6c68: $d0

	ld [hl], b                                       ; $6c69: $70
	and b                                            ; $6c6a: $a0
	ld [hl], b                                       ; $6c6b: $70
	ld [hl], b                                       ; $6c6c: $70
	ldh a, [$c0]                                     ; $6c6d: $f0 $c0
	ret nz                                           ; $6c6f: $c0

	add b                                            ; $6c70: $80
	ldh [$60], a                                     ; $6c71: $e0 $60
	ld h, b                                          ; $6c73: $60
	ld [hl], a                                       ; $6c74: $77
	ld [hl-], a                                      ; $6c75: $32
	rst SubAFromHL                                          ; $6c76: $d7
	ld bc, $80ef                                     ; $6c77: $01 $ef $80
	and h                                            ; $6c7a: $a4
	rst $38                                          ; $6c7b: $ff
	ld c, b                                          ; $6c7c: $48
	rst $38                                          ; $6c7d: $ff
	sub b                                            ; $6c7e: $90
	rst $38                                          ; $6c7f: $ff
	db $10                                           ; $6c80: $10
	rst $38                                          ; $6c81: $ff
	inc hl                                           ; $6c82: $23
	rst $38                                          ; $6c83: $ff
	daa                                              ; $6c84: $27
	db $fd                                           ; $6c85: $fd
	cpl                                              ; $6c86: $2f
	ld hl, sp-$41                                    ; $6c87: $f8 $bf
	cp $7f                                           ; $6c89: $fe $7f
	ld l, l                                          ; $6c8b: $6d
	ld e, a                                          ; $6c8c: $5f
	daa                                              ; $6c8d: $27
	ld a, c                                          ; $6c8e: $79
	daa                                              ; $6c8f: $27
	rla                                              ; $6c90: $17
	jr c, jr_01c_6cb2                                ; $6c91: $38 $1f

	jr jr_01c_6ca4                                   ; $6c93: $18 $0f

	inc c                                            ; $6c95: $0c
	ld b, $07                                        ; $6c96: $06 $07
	rrca                                             ; $6c98: $0f
	sbc [hl]                                         ; $6c99: $9e
	rrca                                             ; $6c9a: $0f
	daa                                              ; $6c9b: $27
	ld b, b                                          ; $6c9c: $40
	sbc e                                            ; $6c9d: $9b
	ld a, [hl]                                       ; $6c9e: $7e
	pop af                                           ; $6c9f: $f1
	ld l, l                                          ; $6ca0: $6d
	di                                               ; $6ca1: $f3
	ld [hl], a                                       ; $6ca2: $77
	ld b, b                                          ; $6ca3: $40

jr_01c_6ca4:
	rla                                              ; $6ca4: $17
	add d                                            ; $6ca5: $82
	add d                                            ; $6ca6: $82
	ldh [rAUD4LEN], a                                ; $6ca7: $e0 $20
	ldh [rAUD4LEN], a                                ; $6ca9: $e0 $20
	ld [hl+], a                                      ; $6cab: $22
	ccf                                              ; $6cac: $3f
	ld b, c                                          ; $6cad: $41
	ld a, a                                          ; $6cae: $7f
	ld b, l                                          ; $6caf: $45
	ld a, [hl]                                       ; $6cb0: $7e
	ld b, l                                          ; $6cb1: $45

jr_01c_6cb2:
	ld a, [hl]                                       ; $6cb2: $7e
	ld c, [hl]                                       ; $6cb3: $4e
	ld a, a                                          ; $6cb4: $7f
	ccf                                              ; $6cb5: $3f
	inc sp                                           ; $6cb6: $33
	rra                                              ; $6cb7: $1f
	inc de                                           ; $6cb8: $13
	rra                                              ; $6cb9: $1f
	rla                                              ; $6cba: $17
	dec c                                            ; $6cbb: $0d
	rrca                                             ; $6cbc: $0f
	dec b                                            ; $6cbd: $05
	rlca                                             ; $6cbe: $07
	add hl, bc                                       ; $6cbf: $09
	rrca                                             ; $6cc0: $0f
	add hl, bc                                       ; $6cc1: $09
	rrca                                             ; $6cc2: $0f
	ld a, [bc]                                       ; $6cc3: $0a
	ld a, e                                          ; $6cc4: $7b
	cp $7f                                           ; $6cc5: $fe $7f
	and b                                            ; $6cc7: $a0
	add b                                            ; $6cc8: $80
	rlca                                             ; $6cc9: $07
	dec b                                            ; $6cca: $05
	rst GetHLinHL                                          ; $6ccb: $cf
	ccf                                              ; $6ccc: $3f
	inc sp                                           ; $6ccd: $33
	cp $f7                                           ; $6cce: $fe $f7
	ld c, [hl]                                       ; $6cd0: $4e
	push af                                          ; $6cd1: $f5
	rrca                                             ; $6cd2: $0f
	and h                                            ; $6cd3: $a4
	ld e, a                                          ; $6cd4: $5f
	dec bc                                           ; $6cd5: $0b
	ei                                               ; $6cd6: $fb
	ld hl, sp-$08                                    ; $6cd7: $f8 $f8
	ld d, h                                          ; $6cd9: $54
	db $fc                                           ; $6cda: $fc
	ld d, h                                          ; $6cdb: $54
	db $fc                                           ; $6cdc: $fc
	ld d, d                                          ; $6cdd: $52
	cp $52                                           ; $6cde: $fe $52
	cp $51                                           ; $6ce0: $fe $51
	rst $38                                          ; $6ce2: $ff
	ld c, c                                          ; $6ce3: $49
	rst $38                                          ; $6ce4: $ff
	ld c, d                                          ; $6ce5: $4a
	cp $4e                                           ; $6ce6: $fe $4e
	sbc h                                            ; $6ce8: $9c
	cp $fc                                           ; $6ce9: $fe $fc
	db $f4                                           ; $6ceb: $f4
	ld [hl], a                                       ; $6cec: $77
	cp h                                             ; $6ced: $bc
	ld a, a                                          ; $6cee: $7f
	cp $df                                           ; $6cef: $fe $df
	ret nz                                           ; $6cf1: $c0

	sbc e                                            ; $6cf2: $9b
	ld b, b                                          ; $6cf3: $40
	ret nz                                           ; $6cf4: $c0

	add b                                            ; $6cf5: $80
	add b                                            ; $6cf6: $80
	db $ed                                           ; $6cf7: $ed
	ld h, a                                          ; $6cf8: $67
	ld b, b                                          ; $6cf9: $40
	ld a, a                                          ; $6cfa: $7f
	ld h, b                                          ; $6cfb: $60
	adc c                                            ; $6cfc: $89
	dec l                                            ; $6cfd: $2d
	ei                                               ; $6cfe: $fb
	dec l                                            ; $6cff: $2d
	ei                                               ; $6d00: $fb
	cp a                                             ; $6d01: $bf
	db $fc                                           ; $6d02: $fc
	ld a, a                                          ; $6d03: $7f
	ld l, d                                          ; $6d04: $6a
	ccf                                              ; $6d05: $3f
	ld l, $33                                        ; $6d06: $2e $33
	ld l, $1f                                        ; $6d08: $2e $1f
	db $10                                           ; $6d0a: $10
	rra                                              ; $6d0b: $1f
	ld de, $090e                                     ; $6d0c: $11 $0e $09
	dec b                                            ; $6d0f: $05
	ld b, $03                                        ; $6d10: $06 $03
	inc bc                                           ; $6d12: $03
	ld d, e                                          ; $6d13: $53
	ld b, b                                          ; $6d14: $40
	adc c                                            ; $6d15: $89
	rst AddAOntoHL                                          ; $6d16: $ef
	cp a                                             ; $6d17: $bf
	db $dd                                           ; $6d18: $dd
	cp $77                                           ; $6d19: $fe $77
	cp $1d                                           ; $6d1b: $fe $1d
	di                                               ; $6d1d: $f3
	inc e                                            ; $6d1e: $1c
	rst $38                                          ; $6d1f: $ff
	nop                                              ; $6d20: $00
	rst $38                                          ; $6d21: $ff
	ld hl, $c3fd                                     ; $6d22: $21 $fd $c3
	or $0e                                           ; $6d25: $f6 $0e
	inc a                                            ; $6d27: $3c
	db $fc                                           ; $6d28: $fc
	ld sp, $613f                                     ; $6d29: $31 $3f $61
	ld a, e                                          ; $6d2c: $7b
	ld h, d                                          ; $6d2d: $62
	sub a                                            ; $6d2e: $97
	ld b, h                                          ; $6d2f: $44
	ld a, a                                          ; $6d30: $7f
	ld c, h                                          ; $6d31: $4c
	ld a, a                                          ; $6d32: $7f
	ld e, a                                          ; $6d33: $5f
	ld [hl], e                                       ; $6d34: $73
	ld a, $33                                        ; $6d35: $3e $33
	ld [hl], a                                       ; $6d37: $77
	ld h, b                                          ; $6d38: $60
	ld a, a                                          ; $6d39: $7f
	ld l, d                                          ; $6d3a: $6a
	ld [hl], a                                       ; $6d3b: $77
	ld h, h                                          ; $6d3c: $64
	ld [hl], a                                       ; $6d3d: $77
	cp $de                                           ; $6d3e: $fe $de
	rlca                                             ; $6d40: $07
	sub h                                            ; $6d41: $94
	inc b                                            ; $6d42: $04
	ld d, e                                          ; $6d43: $53
	cp [hl]                                          ; $6d44: $be
	pop af                                           ; $6d45: $f1
	rst AddAOntoHL                                          ; $6d46: $ef
	db $f4                                           ; $6d47: $f4
	rrca                                             ; $6d48: $0f
	and [hl]                                         ; $6d49: $a6
	ld e, a                                          ; $6d4a: $5f
	dec b                                            ; $6d4b: $05
	db $fd                                           ; $6d4c: $fd
	ld l, a                                          ; $6d4d: $6f
	ld h, d                                          ; $6d4e: $62
	ld [hl], a                                       ; $6d4f: $77
	ld h, b                                          ; $6d50: $60
	ld a, a                                          ; $6d51: $7f
	ld h, [hl]                                       ; $6d52: $66
	ld a, a                                          ; $6d53: $7f
	ld h, d                                          ; $6d54: $62
	ld [hl], a                                       ; $6d55: $77
	ld h, b                                          ; $6d56: $60
	rst SubAFromDE                                          ; $6d57: $df
	db $fc                                           ; $6d58: $fc
	sbc d                                            ; $6d59: $9a
	cp h                                             ; $6d5a: $bc
	and h                                            ; $6d5b: $a4
	ldh [$60], a                                     ; $6d5c: $e0 $60
	and b                                            ; $6d5e: $a0
	ld a, e                                          ; $6d5f: $7b
	ld e, a                                          ; $6d60: $5f
	daa                                              ; $6d61: $27
	ld h, d                                          ; $6d62: $62
	jp hl                                            ; $6d63: $e9


	ld e, l                                          ; $6d64: $5d
	sbc [hl]                                         ; $6d65: $9e
	db $ed                                           ; $6d66: $ed
	ld d, l                                          ; $6d67: $55
	sbc [hl]                                         ; $6d68: $9e
	jp hl                                            ; $6d69: $e9


	ld h, l                                          ; $6d6a: $65
	sbc [hl]                                         ; $6d6b: $9e
	ld l, a                                          ; $6d6c: $6f
	or d                                             ; $6d6d: $b2
	db $dd                                           ; $6d6e: $dd
	ld bc, $029d                                     ; $6d6f: $01 $9d $02
	inc bc                                           ; $6d72: $03
	ld [hl], a                                       ; $6d73: $77
	cp $76                                           ; $6d74: $fe $76
	xor h                                            ; $6d76: $ac
	ld a, a                                          ; $6d77: $7f
	ld c, d                                          ; $6d78: $4a
	rst SubAFromDE                                          ; $6d79: $df
	inc bc                                           ; $6d7a: $03
	ld sp, hl                                        ; $6d7b: $f9
	adc h                                            ; $6d7c: $8c
	ld c, $71                                        ; $6d7d: $0e $71
	ret nz                                           ; $6d7f: $c0

	rst $38                                          ; $6d80: $ff
	inc sp                                           ; $6d81: $33
	rst $38                                          ; $6d82: $ff
	ld e, a                                          ; $6d83: $5f
	db $ec                                           ; $6d84: $ec
	ld e, a                                          ; $6d85: $5f
	ldh [rWY], a                                     ; $6d86: $e0 $4a
	push af                                          ; $6d88: $f5
	ld b, b                                          ; $6d89: $40
	rst $38                                          ; $6d8a: $ff
	ld a, a                                          ; $6d8b: $7f
	rst $38                                          ; $6d8c: $ff
	ld d, l                                          ; $6d8d: $55
	rst $38                                          ; $6d8e: $ff
	push de                                          ; $6d8f: $d5
	ld a, e                                          ; $6d90: $7b
	cp $9c                                           ; $6d91: $fe $9c
	and l                                            ; $6d93: $a5
	rst $38                                          ; $6d94: $ff
	and h                                            ; $6d95: $a4
	ld l, e                                          ; $6d96: $6b
	cp $7f                                           ; $6d97: $fe $7f
	ld b, h                                          ; $6d99: $44
	add [hl]                                         ; $6d9a: $86
	ld d, b                                          ; $6d9b: $50
	ldh a, [hDisp0_WY]                                     ; $6d9c: $f0 $88
	ld hl, sp+$04                                    ; $6d9e: $f8 $04
	db $fc                                           ; $6da0: $fc
	ld [bc], a                                       ; $6da1: $02
	cp $42                                           ; $6da2: $fe $42
	cp $c1                                           ; $6da4: $fe $c1
	rst $38                                          ; $6da6: $ff
	pop hl                                           ; $6da7: $e1
	rst $38                                          ; $6da8: $ff
	ld h, [hl]                                       ; $6da9: $66
	rst $38                                          ; $6daa: $ff
	ld a, a                                          ; $6dab: $7f
	ld sp, hl                                        ; $6dac: $f9
	ccf                                              ; $6dad: $3f
	pop af                                           ; $6dae: $f1
	cpl                                              ; $6daf: $2f
	jp hl                                            ; $6db0: $e9


	and [hl]                                         ; $6db1: $a6
	and $90                                          ; $6db2: $e6 $90
	ld a, c                                          ; $6db4: $79
	ld b, d                                          ; $6db5: $42
	rst SubAFromDE                                          ; $6db6: $df
	ldh [$37], a                                     ; $6db7: $e0 $37
	ld b, h                                          ; $6db9: $44
	push af                                          ; $6dba: $f5
	rst SubAFromDE                                          ; $6dbb: $df
	ld a, a                                          ; $6dbc: $7f
	adc h                                            ; $6dbd: $8c
	ld a, $26                                        ; $6dbe: $3e $26
	ccf                                              ; $6dc0: $3f
	inc hl                                           ; $6dc1: $23
	rla                                              ; $6dc2: $17
	dec de                                           ; $6dc3: $1b
	rra                                              ; $6dc4: $1f
	rla                                              ; $6dc5: $17
	rra                                              ; $6dc6: $1f
	add hl, de                                       ; $6dc7: $19
	rra                                              ; $6dc8: $1f
	inc de                                           ; $6dc9: $13
	ccf                                              ; $6dca: $3f
	ccf                                              ; $6dcb: $3f
	ld [hl], a                                       ; $6dcc: $77
	ld l, a                                          ; $6dcd: $6f
	rst $38                                          ; $6dce: $ff
	rst $38                                          ; $6dcf: $ff
	ld a, a                                          ; $6dd0: $7f
	ld e, e                                          ; $6dd1: $5b
	ld a, [hl+]                                      ; $6dd2: $2a
	ld l, [hl]                                       ; $6dd3: $6e
	add sp, -$23                                     ; $6dd4: $e8 $dd
	add b                                            ; $6dd6: $80
	db $dd                                           ; $6dd7: $dd
	ret nz                                           ; $6dd8: $c0

	db $dd                                           ; $6dd9: $dd
	ldh [$df], a                                     ; $6dda: $e0 $df
	ret nz                                           ; $6ddc: $c0

	rst SubAFromDE                                          ; $6ddd: $df
	ld hl, sp-$1b                                    ; $6dde: $f8 $e5
	rst SubAFromDE                                          ; $6de0: $df
	rlca                                             ; $6de1: $07
	ld d, e                                          ; $6de2: $53
	ldh a, [c]                                       ; $6de3: $f2
	sbc d                                            ; $6de4: $9a
	inc b                                            ; $6de5: $04
	dec c                                            ; $6de6: $0d
	dec bc                                           ; $6de7: $0b
	rrca                                             ; $6de8: $0f
	add hl, bc                                       ; $6de9: $09
	ld a, e                                          ; $6dea: $7b
	and d                                            ; $6deb: $a2
	sub l                                            ; $6dec: $95
	ld de, $1f1f                                     ; $6ded: $11 $1f $1f
	ccf                                              ; $6df0: $3f
	ccf                                              ; $6df1: $3f
	ld l, a                                          ; $6df2: $6f
	ld e, a                                          ; $6df3: $5f
	ld a, [hl]                                       ; $6df4: $7e
	ld a, [hl]                                       ; $6df5: $7e
	rst $38                                          ; $6df6: $ff
	ld d, d                                          ; $6df7: $52
	db $ec                                           ; $6df8: $ec
	sub l                                            ; $6df9: $95
	cp [hl]                                          ; $6dfa: $be
	and d                                            ; $6dfb: $a2
	ld d, $1a                                        ; $6dfc: $16 $1a
	rra                                              ; $6dfe: $1f
	inc de                                           ; $6dff: $13
	rrca                                             ; $6e00: $0f
	dec c                                            ; $6e01: $0d
	rrca                                             ; $6e02: $0f
	ld [$0fdd], sp                                   ; $6e03: $08 $dd $0f
	sbc e                                            ; $6e06: $9b
	ld c, $0d                                        ; $6e07: $0e $0d
	rlca                                             ; $6e09: $07
	rlca                                             ; $6e0a: $07
	ld c, a                                          ; $6e0b: $4f
	ldh [$5f], a                                     ; $6e0c: $e0 $5f
	ld a, b                                          ; $6e0e: $78
	ld [hl], a                                       ; $6e0f: $77
	ld a, [hl]                                       ; $6e10: $7e
	db $dd                                           ; $6e11: $dd
	ldh [rVBK], a                                    ; $6e12: $e0 $4f
	add d                                            ; $6e14: $82
	ld a, [hl]                                       ; $6e15: $7e
	adc $79                                          ; $6e16: $ce $79
	call c, $07df                                    ; $6e18: $dc $df $07
	ld a, a                                          ; $6e1b: $7f
	db $fd                                           ; $6e1c: $fd
	rst SubAFromDE                                          ; $6e1d: $df
	ld b, $7b                                        ; $6e1e: $06 $7b
	ei                                               ; $6e20: $fb
	rst SubAFromDE                                          ; $6e21: $df
	inc bc                                           ; $6e22: $03
	halt                                             ; $6e23: $76
	cp h                                             ; $6e24: $bc
	sbc h                                            ; $6e25: $9c
	ld bc, $0503                                     ; $6e26: $01 $03 $05
	ld a, d                                          ; $6e29: $7a
	cp e                                             ; $6e2a: $bb
	ld l, a                                          ; $6e2b: $6f
	cp $96                                           ; $6e2c: $fe $96
	ld h, e                                          ; $6e2e: $63
	sbc a                                            ; $6e2f: $9f
	ld b, $ff                                        ; $6e30: $06 $ff
	cp b                                             ; $6e32: $b8
	rst $38                                          ; $6e33: $ff
	ldh a, [rVBK]                                    ; $6e34: $f0 $4f
	db $f4                                           ; $6e36: $f4
	ld a, c                                          ; $6e37: $79
	ld e, [hl]                                       ; $6e38: $5e
	adc h                                            ; $6e39: $8c
	inc b                                            ; $6e3a: $04
	rst $38                                          ; $6e3b: $ff
	db $fc                                           ; $6e3c: $fc
	rst $38                                          ; $6e3d: $ff
	ld d, [hl]                                       ; $6e3e: $56
	rst $38                                          ; $6e3f: $ff
	ld d, a                                          ; $6e40: $57
	rst $38                                          ; $6e41: $ff
	ld d, a                                          ; $6e42: $57
	db $fc                                           ; $6e43: $fc
	ld c, a                                          ; $6e44: $4f
	db $fc                                           ; $6e45: $fc
	dec hl                                           ; $6e46: $2b
	cp $25                                           ; $6e47: $fe $25
	rst $38                                          ; $6e49: $ff
	inc h                                            ; $6e4a: $24
	rst $38                                          ; $6e4b: $ff
	daa                                              ; $6e4c: $27
	ld a, e                                          ; $6e4d: $7b
	sub h                                            ; $6e4e: $94
	ld [hl], a                                       ; $6e4f: $77
	xor b                                            ; $6e50: $a8
	ld a, [hl]                                       ; $6e51: $7e
	nop                                              ; $6e52: $00
	ld a, [hl]                                       ; $6e53: $7e
	ld [hl], d                                       ; $6e54: $72
	ld [hl], c                                       ; $6e55: $71
	ld d, a                                          ; $6e56: $57
	ld a, c                                          ; $6e57: $79
	or $de                                           ; $6e58: $f6 $de
	ret nz                                           ; $6e5a: $c0

	ld a, a                                          ; $6e5b: $7f
	ei                                               ; $6e5c: $fb
	ld [hl], e                                       ; $6e5d: $73
	ld sp, hl                                        ; $6e5e: $f9
	ld [hl], a                                       ; $6e5f: $77
	inc b                                            ; $6e60: $04
	ld a, l                                          ; $6e61: $7d
	ld h, h                                          ; $6e62: $64
	inc [hl]                                         ; $6e63: $34
	sbc [hl]                                         ; $6e64: $9e
	sbc e                                            ; $6e65: $9b
	add hl, sp                                       ; $6e66: $39
	ld h, a                                          ; $6e67: $67
	scf                                              ; $6e68: $37
	ld a, b                                          ; $6e69: $78
	ld [hl], h                                       ; $6e6a: $74
	sbc [hl]                                         ; $6e6b: $9e
	sbc l                                            ; $6e6c: $9d
	ld e, $1f                                        ; $6e6d: $1e $1f
	ld [hl], l                                       ; $6e6f: $75
	sbc h                                            ; $6e70: $9c
	ld a, l                                          ; $6e71: $7d
	ld e, b                                          ; $6e72: $58
	ld a, a                                          ; $6e73: $7f
	ld e, $95                                        ; $6e74: $1e $95
	rst AddAOntoHL                                          ; $6e76: $ef
	db $ed                                           ; $6e77: $ed
	rst SubAFromDE                                          ; $6e78: $df
	or e                                             ; $6e79: $b3
	rst $38                                          ; $6e7a: $ff
	db $fd                                           ; $6e7b: $fd
	ld a, [hl]                                       ; $6e7c: $7e
	ld a, [hl]                                       ; $6e7d: $7e
	ld a, $3e                                        ; $6e7e: $3e $3e
	ld c, a                                          ; $6e80: $4f
	ld b, b                                          ; $6e81: $40
	rst SubAFromDE                                          ; $6e82: $df
	cp $98                                           ; $6e83: $fe $98
	cp a                                             ; $6e85: $bf
	or c                                             ; $6e86: $b1
	sbc e                                            ; $6e87: $9b
	sbc h                                            ; $6e88: $9c
	rrca                                             ; $6e89: $0f
	inc c                                            ; $6e8a: $0c
	rlca                                             ; $6e8b: $07
	ld a, c                                          ; $6e8c: $79
	inc [hl]                                         ; $6e8d: $34
	ld a, e                                          ; $6e8e: $7b
	ld h, l                                          ; $6e8f: $65
	sbc b                                            ; $6e90: $98
	inc bc                                           ; $6e91: $03
	rlca                                             ; $6e92: $07
	ld b, $ff                                        ; $6e93: $06 $ff
	rst $38                                          ; $6e95: $ff
	rrca                                             ; $6e96: $0f
	rrca                                             ; $6e97: $0f
	ld b, a                                          ; $6e98: $47
	inc h                                            ; $6e99: $24
	ld a, a                                          ; $6e9a: $7f
	sub b                                            ; $6e9b: $90
	ld a, l                                          ; $6e9c: $7d
	ld a, b                                          ; $6e9d: $78
	ld a, l                                          ; $6e9e: $7d
	pop af                                           ; $6e9f: $f1
	sbc h                                            ; $6ea0: $9c
	ldh a, [rSVBK]                                   ; $6ea1: $f0 $70
	ldh a, [$7b]                                     ; $6ea3: $f0 $7b
	db $fd                                           ; $6ea5: $fd
	ld c, a                                          ; $6ea6: $4f
	ld e, $c3                                        ; $6ea7: $1e $c3
	inc bc                                           ; $6ea9: $03
	db $ed                                           ; $6eaa: $ed
	rst SubAFromDE                                          ; $6eab: $df
	ld bc, $0695                                     ; $6eac: $01 $95 $06
	rlca                                             ; $6eaf: $07
	jr jr_01c_6ed1                                   ; $6eb0: $18 $1f

	jr nc, jr_01c_6ef3                               ; $6eb2: $30 $3f

	ld [hl+], a                                      ; $6eb4: $22
	ccf                                              ; $6eb5: $3f
	ld b, h                                          ; $6eb6: $44
	ld a, a                                          ; $6eb7: $7f
	db $ed                                           ; $6eb8: $ed
	rst SubAFromDE                                          ; $6eb9: $df
	cp $95                                           ; $6eba: $fe $95
	ld bc, $00ff                                     ; $6ebc: $01 $ff $00
	rst $38                                          ; $6ebf: $ff
	ld b, $ff                                        ; $6ec0: $06 $ff
	ld b, c                                          ; $6ec2: $41
	rst $38                                          ; $6ec3: $ff
	ld b, b                                          ; $6ec4: $40
	rst $38                                          ; $6ec5: $ff
	db $eb                                           ; $6ec6: $eb
	rst SubAFromDE                                          ; $6ec7: $df
	add b                                            ; $6ec8: $80
	sub a                                            ; $6ec9: $97
	ld h, b                                          ; $6eca: $60
	ldh [$30], a                                     ; $6ecb: $e0 $30
	ldh a, [rAUD1SWEEP]                              ; $6ecd: $f0 $10
	ldh a, [hDisp0_WY]                                     ; $6ecf: $f0 $88

jr_01c_6ed1:
	ld hl, sp-$15                                    ; $6ed1: $f8 $eb
	ld h, a                                          ; $6ed3: $67
	sbc [hl]                                         ; $6ed4: $9e
	sbc l                                            ; $6ed5: $9d
	ld h, $3f                                        ; $6ed6: $26 $3f
	db $eb                                           ; $6ed8: $eb
	ld l, a                                          ; $6ed9: $6f
	sbc [hl]                                         ; $6eda: $9e
	sbc h                                            ; $6edb: $9c
	inc b                                            ; $6edc: $04
	rst $38                                          ; $6edd: $ff
	ld b, [hl]                                       ; $6ede: $46
	dec hl                                           ; $6edf: $2b
	and b                                            ; $6ee0: $a0

jr_01c_6ee1:
	ld e, a                                          ; $6ee1: $5f
	sbc [hl]                                         ; $6ee2: $9e
	sub [hl]                                         ; $6ee3: $96
	ld c, b                                          ; $6ee4: $48
	ld a, a                                          ; $6ee5: $7f
	ld d, c                                          ; $6ee6: $51
	ld a, a                                          ; $6ee7: $7f
	sub c                                            ; $6ee8: $91
	rst $38                                          ; $6ee9: $ff
	sub c                                            ; $6eea: $91
	rst $38                                          ; $6eeb: $ff
	and d                                            ; $6eec: $a2
	ld [hl], e                                       ; $6eed: $73
	cp $84                                           ; $6eee: $fe $84
	ldh [c], a                                       ; $6ef0: $e2
	rst $38                                          ; $6ef1: $ff
	ld [hl], d                                       ; $6ef2: $72

jr_01c_6ef3:
	ld a, a                                          ; $6ef3: $7f
	ccf                                              ; $6ef4: $3f
	ccf                                              ; $6ef5: $3f
	dec sp                                           ; $6ef6: $3b
	inc a                                            ; $6ef7: $3c
	scf                                              ; $6ef8: $37
	ld a, $3b                                        ; $6ef9: $3e $3b
	scf                                              ; $6efb: $37
	rla                                              ; $6efc: $17
	jr c, jr_01c_6f1a                                ; $6efd: $38 $1b

	ld a, $1f                                        ; $6eff: $3e $1f
	dec a                                            ; $6f01: $3d
	add c                                            ; $6f02: $81
	rst $38                                          ; $6f03: $ff
	ld de, $10ff                                     ; $6f04: $11 $ff $10
	rst $38                                          ; $6f07: $ff
	jr nz, @+$01                                     ; $6f08: $20 $ff

	ld [hl+], a                                      ; $6f0a: $22
	ld [hl], e                                       ; $6f0b: $73
	cp $8d                                           ; $6f0c: $fe $8d
	inc hl                                           ; $6f0e: $23
	rst $38                                          ; $6f0f: $ff
	daa                                              ; $6f10: $27
	rst $38                                          ; $6f11: $ff
	rst $38                                          ; $6f12: $ff
	db $dd                                           ; $6f13: $dd
	rst AddAOntoHL                                          ; $6f14: $ef
	ld de, $39df                                     ; $6f15: $11 $df $39
	rst AddAOntoHL                                          ; $6f18: $ef
	dec e                                            ; $6f19: $1d

jr_01c_6f1a:
	ld a, a                                          ; $6f1a: $7f
	pop hl                                           ; $6f1b: $e1
	rst $38                                          ; $6f1c: $ff
	inc bc                                           ; $6f1d: $03
	rst $38                                          ; $6f1e: $ff
	inc b                                            ; $6f1f: $04
	jp hl                                            ; $6f20: $e9


	rst SubAFromDE                                          ; $6f21: $df
	rlca                                             ; $6f22: $07
	sbc d                                            ; $6f23: $9a
	inc c                                            ; $6f24: $0c
	rrca                                             ; $6f25: $0f
	jr nc, jr_01c_6f67                               ; $6f26: $30 $3f

	inc h                                            ; $6f28: $24
	inc de                                           ; $6f29: $13
	ld h, b                                          ; $6f2a: $60
	ld a, a                                          ; $6f2b: $7f
	cp $9e                                           ; $6f2c: $fe $9e
	ld b, h                                          ; $6f2e: $44
	inc bc                                           ; $6f2f: $03
	ld h, b                                          ; $6f30: $60
	ld [hl], a                                       ; $6f31: $77
	ld h, b                                          ; $6f32: $60
	ld [hl], a                                       ; $6f33: $77
	ld h, [hl]                                       ; $6f34: $66
	sbc d                                            ; $6f35: $9a
	and h                                            ; $6f36: $a4
	rst $38                                          ; $6f37: $ff
	db $e4                                           ; $6f38: $e4
	rst $38                                          ; $6f39: $ff
	call nz, $fe7b                                   ; $6f3a: $c4 $7b $fe
	sbc h                                            ; $6f3d: $9c
	ld h, h                                          ; $6f3e: $64
	ld a, a                                          ; $6f3f: $7f
	inc [hl]                                         ; $6f40: $34
	sbc $3f                                          ; $6f41: $de $3f
	sbc e                                            ; $6f43: $9b
	scf                                              ; $6f44: $37
	inc a                                            ; $6f45: $3c
	dec sp                                           ; $6f46: $3b
	ld a, $de                                        ; $6f47: $3e $de
	ccf                                              ; $6f49: $3f
	sbc e                                            ; $6f4a: $9b
	inc a                                            ; $6f4b: $3c
	ccf                                              ; $6f4c: $3f
	jr c, jr_01c_6ee1                                ; $6f4d: $38 $92

	ld a, e                                          ; $6f4f: $7b
	ld h, b                                          ; $6f50: $60
	sbc [hl]                                         ; $6f51: $9e
	ld hl, $607b                                     ; $6f52: $21 $7b $60
	ld a, a                                          ; $6f55: $7f
	or [hl]                                          ; $6f56: $b6
	ld h, a                                          ; $6f57: $67
	cp $80                                           ; $6f58: $fe $80
	ld b, a                                          ; $6f5a: $47
	rst $38                                          ; $6f5b: $ff
	sbc $ff                                          ; $6f5c: $de $ff
	or d                                             ; $6f5e: $b2
	ld a, a                                          ; $6f5f: $7f
	sbc $3f                                          ; $6f60: $de $3f
	cp $8f                                           ; $6f62: $fe $8f
	cp $d9                                           ; $6f64: $fe $d9
	rst $38                                          ; $6f66: $ff

jr_01c_6f67:
	ld de, $f808                                     ; $6f67: $11 $08 $f8
	ld [$04f8], sp                                   ; $6f6a: $08 $f8 $04
	db $fc                                           ; $6f6d: $fc
	add h                                            ; $6f6e: $84
	db $fc                                           ; $6f6f: $fc
	call nz, Call_01c_44fc                           ; $6f70: $c4 $fc $44
	db $fc                                           ; $6f73: $fc
	ld l, h                                          ; $6f74: $6c
	cp $5a                                           ; $6f75: $fe $5a
	cp $e4                                           ; $6f77: $fe $e4
	sbc l                                            ; $6f79: $9d
	db $fc                                           ; $6f7a: $fc
	inc e                                            ; $6f7b: $1c
	ld a, e                                          ; $6f7c: $7b
	ldh a, [c]                                       ; $6f7d: $f2
	ld e, a                                          ; $6f7e: $5f
	cp $96                                           ; $6f7f: $fe $96
	ld d, d                                          ; $6f81: $52
	ld a, [hl]                                       ; $6f82: $7e
	ld d, e                                          ; $6f83: $53
	ld a, a                                          ; $6f84: $7f
	ld d, [hl]                                       ; $6f85: $56
	ld a, [hl]                                       ; $6f86: $7e
	ccf                                              ; $6f87: $3f
	ld a, $07                                        ; $6f88: $3e $07
	call c, $df06                                    ; $6f8a: $dc $06 $df
	inc bc                                           ; $6f8d: $03
	db $dd                                           ; $6f8e: $dd
	ld [bc], a                                       ; $6f8f: $02
	rst SubAFromDE                                          ; $6f90: $df
	ld bc, $05d7                                     ; $6f91: $01 $d7 $05
	add d                                            ; $6f94: $82
	ld h, e                                          ; $6f95: $63
	sbc a                                            ; $6f96: $9f
	ld b, $ff                                        ; $6f97: $06 $ff
	cp b                                             ; $6f99: $b8
	rst $38                                          ; $6f9a: $ff
	ldh a, [rVBK]                                    ; $6f9b: $f0 $4f
	db $f4                                           ; $6f9d: $f4
	rrca                                             ; $6f9e: $0f
	and h                                            ; $6f9f: $a4
	ld e, a                                          ; $6fa0: $5f
	inc b                                            ; $6fa1: $04
	rst $38                                          ; $6fa2: $ff
	db $fc                                           ; $6fa3: $fc
	rst $38                                          ; $6fa4: $ff
	ld d, [hl]                                       ; $6fa5: $56
	rst $38                                          ; $6fa6: $ff
	ld d, a                                          ; $6fa7: $57
	rst $38                                          ; $6fa8: $ff
	ld d, a                                          ; $6fa9: $57
	db $fc                                           ; $6faa: $fc
	ld c, a                                          ; $6fab: $4f
	db $fc                                           ; $6fac: $fc
	dec hl                                           ; $6fad: $2b
	cp $29                                           ; $6fae: $fe $29
	rst $38                                          ; $6fb0: $ff
	inc h                                            ; $6fb1: $24
	ld a, d                                          ; $6fb2: $7a
	ldh a, [c]                                       ; $6fb3: $f2
	ld a, a                                          ; $6fb4: $7f
	ld h, b                                          ; $6fb5: $60
	sbc h                                            ; $6fb6: $9c
	adc b                                            ; $6fb7: $88
	rst $38                                          ; $6fb8: $ff
	adc b                                            ; $6fb9: $88
	ld a, d                                          ; $6fba: $7a
	ret nz                                           ; $6fbb: $c0

	ld [hl], a                                       ; $6fbc: $77
	cp $7f                                           ; $6fbd: $fe $7f
	ld d, [hl]                                       ; $6fbf: $56
	adc l                                            ; $6fc0: $8d
	ld l, a                                          ; $6fc1: $6f
	ld a, [hl]                                       ; $6fc2: $7e
	ld e, a                                          ; $6fc3: $5f
	ld a, l                                          ; $6fc4: $7d
	ld e, a                                          ; $6fc5: $5f
	ld a, a                                          ; $6fc6: $7f
	ld e, l                                          ; $6fc7: $5d
	ld [hl], a                                       ; $6fc8: $77
	ld e, a                                          ; $6fc9: $5f
	ld [hl], d                                       ; $6fca: $72
	ld e, a                                          ; $6fcb: $5f
	ld a, b                                          ; $6fcc: $78
	ld d, a                                          ; $6fcd: $57
	ld a, h                                          ; $6fce: $7c
	ld e, a                                          ; $6fcf: $5f
	ld a, a                                          ; $6fd0: $7f
	ld e, a                                          ; $6fd1: $5f
	ld a, c                                          ; $6fd2: $79
	ld [hl], a                                       ; $6fd3: $77
	ldh [c], a                                       ; $6fd4: $e2
	ld a, a                                          ; $6fd5: $7f
	cp $9e                                           ; $6fd6: $fe $9e
	ld [de], a                                       ; $6fd8: $12
	ld [hl], e                                       ; $6fd9: $73
	cp $88                                           ; $6fda: $fe $88
	inc de                                           ; $6fdc: $13
	rst $38                                          ; $6fdd: $ff
	rst $38                                          ; $6fde: $ff
	xor $ff                                          ; $6fdf: $ee $ff
	dec bc                                           ; $6fe1: $0b
	rst $38                                          ; $6fe2: $ff
	rrca                                             ; $6fe3: $0f
	ei                                               ; $6fe4: $fb
	ld c, $ff                                        ; $6fe5: $0e $ff
	inc b                                            ; $6fe7: $04
	ld a, a                                          ; $6fe8: $7f
	ldh [rIE], a                                     ; $6fe9: $e0 $ff
	ld bc, $07ff                                     ; $6feb: $01 $ff $07
	sbc a                                            ; $6fee: $9f
	db $fc                                           ; $6fef: $fc
	adc b                                            ; $6ff0: $88
	ld hl, sp+$44                                    ; $6ff1: $f8 $44
	ld a, e                                          ; $6ff3: $7b
	ld h, [hl]                                       ; $6ff4: $66
	sub [hl]                                         ; $6ff5: $96
	ld h, h                                          ; $6ff6: $64
	db $fc                                           ; $6ff7: $fc
	sub h                                            ; $6ff8: $94
	db $fc                                           ; $6ff9: $fc
	ld l, d                                          ; $6ffa: $6a
	cp $f6                                           ; $6ffb: $fe $f6
	cp $8c                                           ; $6ffd: $fe $8c
	ld a, e                                          ; $6fff: $7b
	ld l, [hl]                                       ; $7000: $6e
	sbc [hl]                                         ; $7001: $9e
	and h                                            ; $7002: $a4
	ld e, e                                          ; $7003: $5b
	cp $9d                                           ; $7004: $fe $9d
	db $e4                                           ; $7006: $e4
	ld a, h                                          ; $7007: $7c
	ld [hl], $60                                     ; $7008: $36 $60
	sub [hl]                                         ; $700a: $96
	ccf                                              ; $700b: $3f
	ld a, [hl-]                                      ; $700c: $3a
	ccf                                              ; $700d: $3f
	ld [hl], $3d                                     ; $700e: $36 $3d
	ld [hl-], a                                      ; $7010: $32
	rra                                              ; $7011: $1f
	jr c, @+$21                                      ; $7012: $38 $1f

	ld a, [hl+]                                      ; $7014: $2a
	ld h, b                                          ; $7015: $60
	sbc c                                            ; $7016: $99
	rst $38                                          ; $7017: $ff
	rla                                              ; $7018: $17
	rst $38                                          ; $7019: $ff
	rra                                              ; $701a: $1f
	rst FarCall                                          ; $701b: $f7
	add hl, bc                                       ; $701c: $09
	ld l, [hl]                                       ; $701d: $6e
	ld h, b                                          ; $701e: $60
	ld [hl], a                                       ; $701f: $77
	nop                                              ; $7020: $00
	ld [hl], a                                       ; $7021: $77
	jr jr_01c_70a3                                   ; $7022: $18 $7f

	sbc [hl]                                         ; $7024: $9e
	sbc d                                            ; $7025: $9a
	or h                                             ; $7026: $b4
	db $fc                                           ; $7027: $fc
	ld e, h                                          ; $7028: $5c
	cp $f2                                           ; $7029: $fe $f2
	ld a, e                                          ; $702b: $7b
	sbc [hl]                                         ; $702c: $9e
	ld a, [hl]                                       ; $702d: $7e
	ldh a, [c]                                       ; $702e: $f2
	ld [hl], a                                       ; $702f: $77
	adc [hl]                                         ; $7030: $8e
	ld l, a                                          ; $7031: $6f
	cp $7e                                           ; $7032: $fe $7e
	ld [$be7e], a                                    ; $7034: $ea $7e $be
	sub l                                            ; $7037: $95
	ccf                                              ; $7038: $3f
	dec a                                            ; $7039: $3d
	db $10                                           ; $703a: $10
	jr nc, jr_01c_704d                               ; $703b: $30 $10

	jr nc, @+$13                                     ; $703d: $30 $11

	ld sp, $0b0b                                     ; $703f: $31 $0b $0b
	ld h, a                                          ; $7042: $67
	nop                                              ; $7043: $00
	rst SubAFromDE                                          ; $7044: $df
	inc bc                                           ; $7045: $03
	rst SubAFromHL                                          ; $7046: $d7
	dec b                                            ; $7047: $05
	sbc d                                            ; $7048: $9a
	sbc a                                            ; $7049: $9f
	pop af                                           ; $704a: $f1
	rst AddAOntoHL                                          ; $704b: $ef
	sbc a                                            ; $704c: $9f

jr_01c_704d:
	adc b                                            ; $704d: $88
	ld a, d                                          ; $704e: $7a
	cp $91                                           ; $704f: $fe $91
	ld hl, sp-$71                                    ; $7051: $f8 $8f
	and h                                            ; $7053: $a4
	ld e, a                                          ; $7054: $5f
	inc bc                                           ; $7055: $03
	rst $38                                          ; $7056: $ff
	ld b, $fe                                        ; $7057: $06 $fe
	ld a, [$4afe]                                    ; $7059: $fa $fe $4a
	cp $49                                           ; $705c: $fe $49
	rst $38                                          ; $705e: $ff

Call_01c_705f:
	ld l, a                                          ; $705f: $6f
	cp $9e                                           ; $7060: $fe $9e
	dec h                                            ; $7062: $25
	ld a, e                                          ; $7063: $7b
	cp $7f                                           ; $7064: $fe $7f
	and [hl]                                         ; $7066: $a6
	halt                                             ; $7067: $76
	and d                                            ; $7068: $a2
	sub a                                            ; $7069: $97
	ret z                                            ; $706a: $c8

	ld hl, sp-$30                                    ; $706b: $f8 $d0
	ldh a, [$e0]                                     ; $706d: $f0 $e0
	ldh [$c0], a                                     ; $706f: $e0 $c0
	ret nz                                           ; $7071: $c0

	ld [$0f9e], a                                    ; $7072: $ea $9e $0f
	ld a, e                                          ; $7075: $7b
	cp $9a                                           ; $7076: $fe $9a
	ld c, $00                                        ; $7078: $0e $00
	inc b                                            ; $707a: $04
	nop                                              ; $707b: $00
	ld bc, $4575                                     ; $707c: $01 $75 $45
	ld [hl], e                                       ; $707f: $73
	ld a, [$029e]                                    ; $7080: $fa $9e $02
	ld h, a                                          ; $7083: $67
	cp $16                                           ; $7084: $fe $16
	ret nz                                           ; $7086: $c0

	ld a, [hl]                                       ; $7087: $7e
	ld h, [hl]                                       ; $7088: $66
	ld a, a                                          ; $7089: $7f
	xor $16                                          ; $708a: $ee $16
	ret nz                                           ; $708c: $c0

	sbc e                                            ; $708d: $9b
	cp $07                                           ; $708e: $fe $07
	sbc b                                            ; $7090: $98
	rst $38                                          ; $7091: $ff
	ld c, $c0                                        ; $7092: $0e $c0
	ld a, a                                          ; $7094: $7f
	cp $9e                                           ; $7095: $fe $9e
	inc h                                            ; $7097: $24
	ld a, e                                          ; $7098: $7b
	db $fc                                           ; $7099: $fc
	ld a, a                                          ; $709a: $7f
	ld a, [de]                                       ; $709b: $1a
	rst SubAFromDE                                          ; $709c: $df
	ld a, b                                          ; $709d: $78
	rst SubAFromDE                                          ; $709e: $df
	ld h, b                                          ; $709f: $60
	db $db                                           ; $70a0: $db
	jr nz, @-$1f                                     ; $70a1: $20 $df

jr_01c_70a3:
	ld b, b                                          ; $70a3: $40
	sbc $c0                                          ; $70a4: $de $c0
	ld a, a                                          ; $70a6: $7f
	db $fc                                           ; $70a7: $fc
	ld [hl], a                                       ; $70a8: $77
	ld a, [$c09c]                                    ; $70a9: $fa $9c $c0
	add b                                            ; $70ac: $80
	add b                                            ; $70ad: $80
	cp $7f                                           ; $70ae: $fe $7f
	ld c, h                                          ; $70b0: $4c
	adc [hl]                                         ; $70b1: $8e
	and b                                            ; $70b2: $a0
	nop                                              ; $70b3: $00
	ld [hl], b                                       ; $70b4: $70
	nop                                              ; $70b5: $00
	ld hl, sp+$00                                    ; $70b6: $f8 $00
	db $fc                                           ; $70b8: $fc
	nop                                              ; $70b9: $00
	cp h                                             ; $70ba: $bc
	nop                                              ; $70bb: $00
	ld a, $00                                        ; $70bc: $3e $00
	ld e, $00                                        ; $70be: $1e $00
	sbc b                                            ; $70c0: $98
	nop                                              ; $70c1: $00
	add b                                            ; $70c2: $80
	ld a, e                                          ; $70c3: $7b
	db $ec                                           ; $70c4: $ec
	ld a, a                                          ; $70c5: $7f
	cp $9c                                           ; $70c6: $fe $9c
	ld b, b                                          ; $70c8: $40
	nop                                              ; $70c9: $00
	ld h, b                                          ; $70ca: $60
	ld a, e                                          ; $70cb: $7b
	cp $61                                           ; $70cc: $fe $61
	ld [hl], c                                       ; $70ce: $71
	ld l, e                                          ; $70cf: $6b
	ld [$fe7f], a                                    ; $70d0: $ea $7f $fe
	ld [hl], a                                       ; $70d3: $77
	call z, $9df6                                    ; $70d4: $cc $f6 $9d
	ld e, a                                          ; $70d7: $5f
	ld [hl], b                                       ; $70d8: $70
	ld a, e                                          ; $70d9: $7b
	ld d, [hl]                                       ; $70da: $56
	sub h                                            ; $70db: $94
	ld [hl], l                                       ; $70dc: $75
	ld [hl-], a                                      ; $70dd: $32
	ld [hl-], a                                      ; $70de: $32
	ld de, $1911                                     ; $70df: $11 $11 $19
	add hl, de                                       ; $70e2: $19
	ld c, $0e                                        ; $70e3: $0e $0e
	rlca                                             ; $70e5: $07
	rlca                                             ; $70e6: $07
	ld b, [hl]                                       ; $70e7: $46
	ret nz                                           ; $70e8: $c0

	sub [hl]                                         ; $70e9: $96
	rst AddAOntoHL                                          ; $70ea: $ef
	sbc b                                            ; $70eb: $98
	adc a                                            ; $70ec: $8f
	ld hl, sp-$41                                    ; $70ed: $f8 $bf
	rst $38                                          ; $70ef: $ff
	rst FarCall                                          ; $70f0: $f7
	rst GetHLinHL                                          ; $70f1: $cf
	db $f4                                           ; $70f2: $f4
	ld a, d                                          ; $70f3: $7a
	ret nz                                           ; $70f4: $c0

	ld a, l                                          ; $70f5: $7d
	ret nz                                           ; $70f6: $c0

	rst SubAFromDE                                          ; $70f7: $df
	rst $38                                          ; $70f8: $ff
	ld a, [hl]                                       ; $70f9: $7e
	jp nz, $c06e                                     ; $70fa: $c2 $6e $c0

	halt                                             ; $70fd: $76
	call nz, $fe77                                   ; $70fe: $c4 $77 $fe
	ld a, [hl]                                       ; $7101: $7e
	ld e, $7d                                        ; $7102: $1e $7d
	ld l, [hl]                                       ; $7104: $6e
	ld a, a                                          ; $7105: $7f
	ld h, b                                          ; $7106: $60
	ld a, a                                          ; $7107: $7f
	ld a, [hl-]                                      ; $7108: $3a
	sbc l                                            ; $7109: $9d
	or b                                             ; $710a: $b0
	ldh a, [rOCPD]                                   ; $710b: $f0 $6b
	ld [hl], b                                       ; $710d: $70
	ldh a, [c]                                       ; $710e: $f2
	ld a, d                                          ; $710f: $7a
	ld a, [de]                                       ; $7110: $1a
	sub h                                            ; $7111: $94
	jr c, jr_01c_712b                                ; $7112: $38 $17

	inc [hl]                                         ; $7114: $34
	inc de                                           ; $7115: $13
	inc sp                                           ; $7116: $33
	ld sp, $1b31                                     ; $7117: $31 $31 $1b
	dec de                                           ; $711a: $1b
	ld c, $0e                                        ; $711b: $0e $0e
	ld a, [hl-]                                      ; $711d: $3a
	ld h, b                                          ; $711e: $60
	sbc b                                            ; $711f: $98
	ld hl, sp-$11                                    ; $7120: $f8 $ef
	sbc c                                            ; $7122: $99
	adc a                                            ; $7123: $8f
	rst $38                                          ; $7124: $ff
	cp h                                             ; $7125: $bc
	rst $38                                          ; $7126: $ff
	ld [hl], a                                       ; $7127: $77
	and b                                            ; $7128: $a0
	sbc e                                            ; $7129: $9b
	ld [bc], a                                       ; $712a: $02

jr_01c_712b:
	rst $38                                          ; $712b: $ff
	rlca                                             ; $712c: $07
	rst $38                                          ; $712d: $ff
	ld b, [hl]                                       ; $712e: $46
	ld h, b                                          ; $712f: $60
	ld [hl], l                                       ; $7130: $75
	ld [$fc7f], sp                                   ; $7131: $08 $7f $fc
	ld h, [hl]                                       ; $7134: $66
	ld h, b                                          ; $7135: $60
	scf                                              ; $7136: $37
	sbc [hl]                                         ; $7137: $9e
	pop af                                           ; $7138: $f1
	rst SubAFromDE                                          ; $7139: $df
	ld bc, $384c                                     ; $713a: $01 $4c $38
	adc [hl]                                         ; $713d: $8e
	rlca                                             ; $713e: $07
	inc b                                            ; $713f: $04
	dec b                                            ; $7140: $05
	ld b, $0f                                        ; $7141: $06 $0f
	add hl, bc                                       ; $7143: $09
	rst AddAOntoHL                                          ; $7144: $ef
	db $ed                                           ; $7145: $ed
	rst SubAFromDE                                          ; $7146: $df
	or e                                             ; $7147: $b3
	rst $38                                          ; $7148: $ff
	db $fd                                           ; $7149: $fd
	ld a, [hl]                                       ; $714a: $7e
	ld a, [hl]                                       ; $714b: $7e
	ld a, $3e                                        ; $714c: $3e $3e
	rst $38                                          ; $714e: $ff
	ld d, b                                          ; $714f: $50
	ld c, h                                          ; $7150: $4c
	rst SubAFromDE                                          ; $7151: $df
	cp $98                                           ; $7152: $fe $98
	cp a                                             ; $7154: $bf
	or c                                             ; $7155: $b1
	sbc e                                            ; $7156: $9b
	sbc h                                            ; $7157: $9c
	rrca                                             ; $7158: $0f
	inc c                                            ; $7159: $0c
	rlca                                             ; $715a: $07
	ld a, c                                          ; $715b: $79
	call nz, $637f                                   ; $715c: $c4 $7f $63
	rst SubAFromDE                                          ; $715f: $df
	inc bc                                           ; $7160: $03
	ld a, a                                          ; $7161: $7f
	ld hl, sp-$21                                    ; $7162: $f8 $df
	rst $38                                          ; $7164: $ff
	rst SubAFromDE                                          ; $7165: $df
	rrca                                             ; $7166: $0f
	ld b, h                                          ; $7167: $44
	inc [hl]                                         ; $7168: $34
	ld a, [hl]                                       ; $7169: $7e
	sub b                                            ; $716a: $90
	sbc b                                            ; $716b: $98
	ldh [$60], a                                     ; $716c: $e0 $60
	ldh [$a0], a                                     ; $716e: $e0 $a0
	ldh a, [rSVBK]                                   ; $7170: $f0 $70
	ldh a, [$7b]                                     ; $7172: $f0 $7b
	db $fd                                           ; $7174: $fd
	rst SubAFromDE                                          ; $7175: $df
	ldh [$df], a                                     ; $7176: $e0 $df
	ld hl, sp-$09                                    ; $7178: $f8 $f7
	sub l                                            ; $717a: $95
	ld a, [bc]                                       ; $717b: $0a
	rrca                                             ; $717c: $0f
	ld a, [bc]                                       ; $717d: $0a
	rrca                                             ; $717e: $0f
	dec bc                                           ; $717f: $0b
	rrca                                             ; $7180: $0f
	rlca                                             ; $7181: $07
	rlca                                             ; $7182: $07
	ld bc, $db01                                     ; $7183: $01 $01 $db
	ld [bc], a                                       ; $7186: $02
	rst SubAFromDE                                          ; $7187: $df
	ld b, $99                                        ; $7188: $06 $99
	rlca                                             ; $718a: $07
	dec b                                            ; $718b: $05
	rlca                                             ; $718c: $07
	inc b                                            ; $718d: $04
	inc bc                                           ; $718e: $03
	inc bc                                           ; $718f: $03
	ld sp, hl                                        ; $7190: $f9
	adc h                                            ; $7191: $8c
	adc [hl]                                         ; $7192: $8e
	pop af                                           ; $7193: $f1
	ret nz                                           ; $7194: $c0

	rst $38                                          ; $7195: $ff
	inc sp                                           ; $7196: $33
	rst $38                                          ; $7197: $ff
	ld e, a                                          ; $7198: $5f
	db $ec                                           ; $7199: $ec
	ld e, a                                          ; $719a: $5f
	ldh [rWY], a                                     ; $719b: $e0 $4a
	push af                                          ; $719d: $f5
	ld b, b                                          ; $719e: $40
	rst $38                                          ; $719f: $ff
	ld a, a                                          ; $71a0: $7f
	rst $38                                          ; $71a1: $ff
	ld d, l                                          ; $71a2: $55
	rst $38                                          ; $71a3: $ff
	push de                                          ; $71a4: $d5
	ld a, e                                          ; $71a5: $7b
	cp $9c                                           ; $71a6: $fe $9c
	and l                                            ; $71a8: $a5
	rst $38                                          ; $71a9: $ff
	and h                                            ; $71aa: $a4
	ld l, e                                          ; $71ab: $6b
	cp $99                                           ; $71ac: $fe $99
	inc [hl]                                         ; $71ae: $34
	ccf                                              ; $71af: $3f
	ld d, h                                          ; $71b0: $54
	ld e, a                                          ; $71b1: $5f
	adc b                                            ; $71b2: $88
	adc a                                            ; $71b3: $8f
	halt                                             ; $71b4: $76
	adc b                                            ; $71b5: $88
	rst SubAFromDE                                          ; $71b6: $df
	ld b, d                                          ; $71b7: $42
	rst SubAFromDE                                          ; $71b8: $df
	pop bc                                           ; $71b9: $c1
	rst SubAFromDE                                          ; $71ba: $df
	pop hl                                           ; $71bb: $e1
	rst SubAFromDE                                          ; $71bc: $df
	ld h, [hl]                                       ; $71bd: $66
	sub a                                            ; $71be: $97
	ld a, a                                          ; $71bf: $7f
	ld a, c                                          ; $71c0: $79
	ccf                                              ; $71c1: $3f
	ld sp, $292f                                     ; $71c2: $31 $2f $29
	and [hl]                                         ; $71c5: $a6
	and [hl]                                         ; $71c6: $a6
	db $dd                                           ; $71c7: $dd
	sub b                                            ; $71c8: $90
	rst SubAFromDE                                          ; $71c9: $df
	ldh [$db], a                                     ; $71ca: $e0 $db
	add b                                            ; $71cc: $80
	rla                                              ; $71cd: $17
	ld de, $fc6b                                     ; $71ce: $11 $6b $fc
	ld l, l                                          ; $71d1: $6d
	ld h, [hl]                                       ; $71d2: $66
	ld a, l                                          ; $71d3: $7d
	ld e, h                                          ; $71d4: $5c
	sbc [hl]                                         ; $71d5: $9e
	dec b                                            ; $71d6: $05
	ld a, e                                          ; $71d7: $7b
	ld a, [$6261]                                    ; $71d8: $fa $61 $62
	ld a, e                                          ; $71db: $7b
	cp $57                                           ; $71dc: $fe $57
	sub $6f                                          ; $71de: $d6 $6f
	cp $f4                                           ; $71e0: $fe $f4
	ld l, a                                          ; $71e2: $6f
	ld d, [hl]                                       ; $71e3: $56
	db $dd                                           ; $71e4: $dd
	ld bc, $0273                                     ; $71e5: $01 $73 $02
	sbc b                                            ; $71e8: $98
	rlca                                             ; $71e9: $07
	dec c                                            ; $71ea: $0d
	dec bc                                           ; $71eb: $0b
	rrca                                             ; $71ec: $0f
	rrca                                             ; $71ed: $0f
	ccf                                              ; $71ee: $3f
	ccf                                              ; $71ef: $3f
	ld d, [hl]                                       ; $71f0: $56
	ldh [hDisp1_LCDC], a                                     ; $71f1: $e0 $8f
	cp h                                             ; $71f3: $bc
	db $e4                                           ; $71f4: $e4
	db $fc                                           ; $71f5: $fc
	and h                                            ; $71f6: $a4
	or [hl]                                          ; $71f7: $b6
	ld a, d                                          ; $71f8: $7a
	cp $32                                           ; $71f9: $fe $32
	cp $fe                                           ; $71fb: $fe $fe
	rst $38                                          ; $71fd: $ff
	ld sp, rIE                                     ; $71fe: $31 $ff $ff
	rst FarCall                                          ; $7201: $f7
	rst AddAOntoHL                                          ; $7202: $ef
	db $dd                                           ; $7203: $dd
	rst $38                                          ; $7204: $ff
	db $e3                                           ; $7205: $e3
	rst SubAFromDE                                          ; $7206: $df
	ldh [rRP], a                                     ; $7207: $e0 $56
	add b                                            ; $7209: $80
	ld [hl], a                                       ; $720a: $77
	sbc [hl]                                         ; $720b: $9e
	ld h, a                                          ; $720c: $67
	and b                                            ; $720d: $a0
	rst SubAFromDE                                          ; $720e: $df
	inc bc                                           ; $720f: $03
	sbc e                                            ; $7210: $9b
	ld b, $05                                        ; $7211: $06 $05
	rlca                                             ; $7213: $07
	rlca                                             ; $7214: $07
	ld d, a                                          ; $7215: $57
	and b                                            ; $7216: $a0
	ld a, [hl]                                       ; $7217: $7e
	ld e, $df                                        ; $7218: $1e $df
	cp $7e                                           ; $721a: $fe $7e
	rra                                              ; $721c: $1f
	sbc c                                            ; $721d: $99
	xor [hl]                                         ; $721e: $ae
	ld [hl], d                                       ; $721f: $72
	cp $b2                                           ; $7220: $fe $b2
	cp $7e                                           ; $7222: $fe $7e
	ld [hl], a                                       ; $7224: $77
	and b                                            ; $7225: $a0
	sbc l                                            ; $7226: $9d
	rst AddAOntoHL                                          ; $7227: $ef
	rst SubAFromDE                                          ; $7228: $df
	rrca                                             ; $7229: $0f
	and b                                            ; $722a: $a0
	db $dd                                           ; $722b: $dd
	add b                                            ; $722c: $80
	ld d, a                                          ; $722d: $57
	and b                                            ; $722e: $a0
	rst SubAFromDE                                          ; $722f: $df
	ld a, a                                          ; $7230: $7f
	adc e                                            ; $7231: $8b
	ld a, $26                                        ; $7232: $3e $26
	ccf                                              ; $7234: $3f
	inc hl                                           ; $7235: $23
	rla                                              ; $7236: $17
	dec de                                           ; $7237: $1b
	rra                                              ; $7238: $1f
	rla                                              ; $7239: $17
	rra                                              ; $723a: $1f
	add hl, de                                       ; $723b: $19
	rra                                              ; $723c: $1f
	inc de                                           ; $723d: $13
	ccf                                              ; $723e: $3f
	ccf                                              ; $723f: $3f
	ld [hl], a                                       ; $7240: $77
	ld l, a                                          ; $7241: $6f
	rst $38                                          ; $7242: $ff
	rst $38                                          ; $7243: $ff
	ld a, a                                          ; $7244: $7f
	ld a, a                                          ; $7245: $7f
	ld d, a                                          ; $7246: $57
	ret nc                                           ; $7247: $d0

	ld h, a                                          ; $7248: $67
	jp z, $c0dd                                      ; $7249: $ca $dd $c0

	db $dd                                           ; $724c: $dd
	ldh [$df], a                                     ; $724d: $e0 $df
	ret nz                                           ; $724f: $c0

	ld d, [hl]                                       ; $7250: $56
	ld b, b                                          ; $7251: $40
	db $fc                                           ; $7252: $fc
	sbc b                                            ; $7253: $98
	ld [$0d00], sp                                   ; $7254: $08 $00 $0d
	nop                                              ; $7257: $00
	ld c, $00                                        ; $7258: $0e $00
	ld b, $6a                                        ; $725a: $06 $6a
	or h                                             ; $725c: $b4
	ld [hl], a                                       ; $725d: $77
	ld a, [$c04e]                                    ; $725e: $fa $4e $c0
	ld a, a                                          ; $7261: $7f
	ldh [$9e], a                                     ; $7262: $e0 $9e
	inc c                                            ; $7264: $0c
	ld a, e                                          ; $7265: $7b
	ldh [$7e], a                                     ; $7266: $e0 $7e
	and h                                            ; $7268: $a4
	dec sp                                           ; $7269: $3b
	ldh [hDisp0_WY], a                                     ; $726a: $e0 $88
	inc bc                                           ; $726c: $03
	db $ed                                           ; $726d: $ed
	rst SubAFromDE                                          ; $726e: $df
	ld bc, $0695                                     ; $726f: $01 $95 $06

jr_01c_7272:
	rlca                                             ; $7272: $07
	add hl, bc                                       ; $7273: $09
	rrca                                             ; $7274: $0f
	rla                                              ; $7275: $17
	rra                                              ; $7276: $1f
	jr c, jr_01c_72b8                                ; $7277: $38 $3f

	inc sp                                           ; $7279: $33
	ccf                                              ; $727a: $3f
	ldh a, [hDisp1_SCY]                                     ; $727b: $f0 $90
	ld h, b                                          ; $727d: $60
	ld b, b                                          ; $727e: $40
	ld [hl], b                                       ; $727f: $70
	rst $38                                          ; $7280: $ff
	rst $38                                          ; $7281: $ff
	ld a, [hl-]                                      ; $7282: $3a
	rst $38                                          ; $7283: $ff
	pop af                                           ; $7284: $f1
	rst $38                                          ; $7285: $ff
	inc a                                            ; $7286: $3c
	rst $38                                          ; $7287: $ff
	and d                                            ; $7288: $a2
	rst $38                                          ; $7289: $ff
	ld c, l                                          ; $728a: $4d
	rst $38                                          ; $728b: $ff
	db $eb                                           ; $728c: $eb
	rst SubAFromDE                                          ; $728d: $df
	ret nz                                           ; $728e: $c0

	add b                                            ; $728f: $80
	jr nz, jr_01c_7272                               ; $7290: $20 $e0

	sub b                                            ; $7292: $90
	ldh a, [$50]                                     ; $7293: $f0 $50
	ldh a, [$28]                                     ; $7295: $f0 $28
	ld hl, sp+$6c                                    ; $7297: $f8 $6c
	ld a, a                                          ; $7299: $7f
	ld e, c                                          ; $729a: $59
	ld a, a                                          ; $729b: $7f
	ld d, d                                          ; $729c: $52
	ld a, a                                          ; $729d: $7f
	and h                                            ; $729e: $a4
	rst $38                                          ; $729f: $ff
	xor d                                            ; $72a0: $aa
	db $fd                                           ; $72a1: $fd
	jp z, Jump_01c_47ff                              ; $72a2: $ca $ff $47

	ld a, h                                          ; $72a5: $7c
	ld e, a                                          ; $72a6: $5f
	ld [hl], b                                       ; $72a7: $70
	ld e, a                                          ; $72a8: $5f
	ld [hl], a                                       ; $72a9: $77
	ld a, l                                          ; $72aa: $7d
	ld c, a                                          ; $72ab: $4f
	ld e, e                                          ; $72ac: $5b
	ld h, a                                          ; $72ad: $67
	ccf                                              ; $72ae: $3f
	add b                                            ; $72af: $80
	ld [hl], b                                       ; $72b0: $70
	ccf                                              ; $72b1: $3f
	ld a, b                                          ; $72b2: $78
	ld e, a                                          ; $72b3: $5f
	ld a, h                                          ; $72b4: $7c
	ld e, [hl]                                       ; $72b5: $5e
	ld a, a                                          ; $72b6: $7f
	xor e                                            ; $72b7: $ab

jr_01c_72b8:
	rst $38                                          ; $72b8: $ff
	jp nc, $aaff                                     ; $72b9: $d2 $ff $aa

	rst $38                                          ; $72bc: $ff
	ld l, c                                          ; $72bd: $69
	rst SubAFromDE                                          ; $72be: $df
	push af                                          ; $72bf: $f5
	sbc a                                            ; $72c0: $9f
	push af                                          ; $72c1: $f5
	sbc a                                            ; $72c2: $9f
	db $f4                                           ; $72c3: $f4
	sbc e                                            ; $72c4: $9b
	xor $11                                          ; $72c5: $ee $11
	rst $38                                          ; $72c7: $ff
	nop                                              ; $72c8: $00
	rst $38                                          ; $72c9: $ff
	sbc [hl]                                         ; $72ca: $9e
	ld l, e                                          ; $72cb: $6b
	sbc a                                            ; $72cc: $9f
	db $fd                                           ; $72cd: $fd
	ld c, $7f                                        ; $72ce: $0e $7f
	ld hl, sp-$69                                    ; $72d0: $f8 $97
	sbc a                                            ; $72d2: $9f
	ldh a, [$be]                                     ; $72d3: $f0 $be
	ld h, c                                          ; $72d5: $61
	ei                                               ; $72d6: $fb
	rlca                                             ; $72d7: $07
	rst SubAFromDE                                          ; $72d8: $df
	rst $38                                          ; $72d9: $ff
	ld b, e                                          ; $72da: $43
	ret nz                                           ; $72db: $c0

	sbc d                                            ; $72dc: $9a
	ld [hl], b                                       ; $72dd: $70
	ld a, a                                          ; $72de: $7f
	ld b, a                                          ; $72df: $47
	ld d, a                                          ; $72e0: $57
	ld l, l                                          ; $72e1: $6d
	dec de                                           ; $72e2: $1b
	ret nz                                           ; $72e3: $c0

	sbc d                                            ; $72e4: $9a
	nop                                              ; $72e5: $00
	ld l, a                                          ; $72e6: $6f
	sbc [hl]                                         ; $72e7: $9e
	cp $9b                                           ; $72e8: $fe $9b
	ld a, e                                          ; $72ea: $7b
	ld hl, sp-$63                                    ; $72eb: $f8 $9d
	sub b                                            ; $72ed: $90
	cp $73                                           ; $72ee: $fe $73
	ret nz                                           ; $72f0: $c0

	dec sp                                           ; $72f1: $3b
	inc hl                                           ; $72f2: $23

jr_01c_72f3:
	sub d                                            ; $72f3: $92
	ld bc, $0303                                     ; $72f4: $01 $03 $03
	inc c                                            ; $72f7: $0c
	rrca                                             ; $72f8: $0f
	ld de, $371f                                     ; $72f9: $11 $1f $37
	ccf                                              ; $72fc: $3f
	jr z, @+$41                                      ; $72fd: $28 $3f

	ld [hl], a                                       ; $72ff: $77
	ld a, a                                          ; $7300: $7f
	ldh a, [$df]                                     ; $7301: $f0 $df
	add b                                            ; $7303: $80
	sub e                                            ; $7304: $93
	ldh [$be], a                                     ; $7305: $e0 $be
	cp $f3                                           ; $7307: $fe $f3
	rst $38                                          ; $7309: $ff
	sbc [hl]                                         ; $730a: $9e
	rst $38                                          ; $730b: $ff
	cp e                                             ; $730c: $bb
	rst $38                                          ; $730d: $ff
	db $e4                                           ; $730e: $e4
	rst $38                                          ; $730f: $ff
	ld e, d                                          ; $7310: $5a
	dec hl                                           ; $7311: $2b
	jr nz, jr_01c_72f3                               ; $7312: $20 $df

	add b                                            ; $7314: $80
	rst SubAFromDE                                          ; $7315: $df
	ret nz                                           ; $7316: $c0

	sbc c                                            ; $7317: $99
	ld h, b                                          ; $7318: $60
	ldh [$a0], a                                     ; $7319: $e0 $a0
	ldh [$50], a                                     ; $731b: $e0 $50
	ldh a, [rSC]                                     ; $731d: $f0 $02
	ret nz                                           ; $731f: $c0

	pop af                                           ; $7320: $f1
	sub a                                            ; $7321: $97
	ld b, $04                                        ; $7322: $06 $04
	rlca                                             ; $7324: $07
	cp $ff                                           ; $7325: $fe $ff
	ld l, $ff                                        ; $7327: $2e $ff
	reti                                             ; $7329: $d9


	ld a, d                                          ; $732a: $7a
	ret nz                                           ; $732b: $c0

	sbc [hl]                                         ; $732c: $9e
	or d                                             ; $732d: $b2
	ld a, [hl+]                                      ; $732e: $2a
	ret nz                                           ; $732f: $c0

	ld [hl], a                                       ; $7330: $77
	and d                                            ; $7331: $a2
	ld h, [hl]                                       ; $7332: $66
	ret nz                                           ; $7333: $c0

	add sp, -$62                                     ; $7334: $e8 $9e
	ld bc, $fc73                                     ; $7336: $01 $73 $fc
	sbc [hl]                                         ; $7339: $9e
	ld [bc], a                                       ; $733a: $02
	add sp, -$66                                     ; $733b: $e8 $9a
	jr nz, jr_01c_733f                               ; $733d: $20 $00

jr_01c_733f:
	stop                                             ; $733f: $10 $00
	and b                                            ; $7341: $a0
	and $6f                                          ; $7342: $e6 $6f
	call nz, $029e                                   ; $7344: $c4 $9e $02
	ld e, d                                          ; $7347: $5a
	and b                                            ; $7348: $a0
	sub d                                            ; $7349: $92
	db $fd                                           ; $734a: $fd
	ld b, a                                          ; $734b: $47
	ld a, [hl]                                       ; $734c: $7e
	ld e, a                                          ; $734d: $5f
	ld l, a                                          ; $734e: $6f
	ld e, a                                          ; $734f: $5f
	ld l, l                                          ; $7350: $6d
	ld a, a                                          ; $7351: $7f
	ld b, a                                          ; $7352: $47
	ld e, l                                          ; $7353: $5d
	ld h, a                                          ; $7354: $67
	scf                                              ; $7355: $37
	ld a, b                                          ; $7356: $78
	ld [hl-], a                                      ; $7357: $32
	and b                                            ; $7358: $a0
	sub a                                            ; $7359: $97
	dec e                                            ; $735a: $1d
	rst $38                                          ; $735b: $ff
	rra                                              ; $735c: $1f
	rst $38                                          ; $735d: $ff
	adc e                                            ; $735e: $8b
	rst $38                                          ; $735f: $ff
	ld c, $fb                                        ; $7360: $0e $fb
	ld a, d                                          ; $7362: $7a
	ld h, b                                          ; $7363: $60
	sbc [hl]                                         ; $7364: $9e
	rst $38                                          ; $7365: $ff
	ld l, d                                          ; $7366: $6a
	ld h, b                                          ; $7367: $60
	sbc e                                            ; $7368: $9b
	xor b                                            ; $7369: $a8
	ld hl, sp+$54                                    ; $736a: $f8 $54
	db $fc                                           ; $736c: $fc
	ld [hl], a                                       ; $736d: $77
	cp $80                                           ; $736e: $fe $80
	inc l                                            ; $7370: $2c
	db $fc                                           ; $7371: $fc
	xor h                                            ; $7372: $ac
	db $fc                                           ; $7373: $fc
	cp h                                             ; $7374: $bc
	db $fc                                           ; $7375: $fc
	cp b                                             ; $7376: $b8
	ret c                                            ; $7377: $d8

	cp b                                             ; $7378: $b8
	ld e, b                                          ; $7379: $58
	ret c                                            ; $737a: $d8

	ld a, b                                          ; $737b: $78
	add sp, $78                                      ; $737c: $e8 $78
	ld [hl], h                                       ; $737e: $74
	db $fc                                           ; $737f: $fc
	call nc, $d2fc                                   ; $7380: $d4 $fc $d2
	cp $4a                                           ; $7383: $fe $4a
	cp $aa                                           ; $7385: $fe $aa
	cp $68                                           ; $7387: $fe $68
	ld a, a                                          ; $7389: $7f
	ld [hl], c                                       ; $738a: $71
	ld a, a                                          ; $738b: $7f
	ld d, e                                          ; $738c: $53
	ld a, a                                          ; $738d: $7f
	ld h, l                                          ; $738e: $65
	ld a, a                                          ; $738f: $7f
	or [hl]                                          ; $7390: $b6
	sub b                                            ; $7391: $90
	db $fd                                           ; $7392: $fd
	xor e                                            ; $7393: $ab
	rst $38                                          ; $7394: $ff
	and a                                            ; $7395: $a7
	db $fc                                           ; $7396: $fc
	xor a                                            ; $7397: $af
	ldh a, [$bc]                                     ; $7398: $f0 $bc
	di                                               ; $739a: $f3
	ld a, a                                          ; $739b: $7f
	ld h, a                                          ; $739c: $67
	ld [hl], a                                       ; $739d: $77
	ld c, h                                          ; $739e: $4c
	ccf                                              ; $739f: $3f
	ld h, b                                          ; $73a0: $60
	ld [hl], a                                       ; $73a1: $77
	and b                                            ; $73a2: $a0
	add b                                            ; $73a3: $80
	ld e, d                                          ; $73a4: $5a
	ld a, a                                          ; $73a5: $7f
	ld c, l                                          ; $73a6: $4d
	ld a, a                                          ; $73a7: $7f
	dec h                                            ; $73a8: $25
	rst $38                                          ; $73a9: $ff
	ld d, d                                          ; $73aa: $52
	rst $38                                          ; $73ab: $ff
	jp hl                                            ; $73ac: $e9


	rst $38                                          ; $73ad: $ff
	push af                                          ; $73ae: $f5
	ccf                                              ; $73af: $3f
	db $ed                                           ; $73b0: $ed
	rla                                              ; $73b1: $17
	db $fc                                           ; $73b2: $fc
	add e                                            ; $73b3: $83
	cp $01                                           ; $73b4: $fe $01
	di                                               ; $73b6: $f3
	inc c                                            ; $73b7: $0c
	db $ed                                           ; $73b8: $ed
	ld e, $7f                                        ; $73b9: $1e $7f
	sub d                                            ; $73bb: $92
	ld a, a                                          ; $73bc: $7f
	add b                                            ; $73bd: $80
	rst $38                                          ; $73be: $ff
	ld [$f16e], sp                                   ; $73bf: $08 $6e $f1
	db $fd                                           ; $73c2: $fd
	sub l                                            ; $73c3: $95
	inc bc                                           ; $73c4: $03
	ld a, [$de07]                                    ; $73c5: $fa $07 $de
	rst $38                                          ; $73c8: $ff
	ld d, b                                          ; $73c9: $50
	ldh a, [$b8]                                     ; $73ca: $f0 $b8
	ld hl, sp+$58                                    ; $73cc: $f8 $58
	ld a, e                                          ; $73ce: $7b
	cp $7e                                           ; $73cf: $fe $7e
	or $7f                                           ; $73d1: $f6 $7f
	sub [hl]                                         ; $73d3: $96
	sbc h                                            ; $73d4: $9c
	ld a, b                                          ; $73d5: $78
	cp b                                             ; $73d6: $b8
	ld e, b                                          ; $73d7: $58
	ld a, e                                          ; $73d8: $7b
	cp $7f                                           ; $73d9: $fe $7f
	ld sp, hl                                        ; $73db: $f9
	add e                                            ; $73dc: $83
	ld l, b                                          ; $73dd: $68
	ld hl, sp+$68                                    ; $73de: $f8 $68
	ld hl, sp-$18                                    ; $73e0: $f8 $e8
	ld hl, sp-$5c                                    ; $73e2: $f8 $a4
	db $fc                                           ; $73e4: $fc
	and h                                            ; $73e5: $a4
	db $fc                                           ; $73e6: $fc
	sub h                                            ; $73e7: $94
	db $fc                                           ; $73e8: $fc
	and a                                            ; $73e9: $a7
	cp $a7                                           ; $73ea: $fe $a7
	rst $38                                          ; $73ec: $ff
	sub a                                            ; $73ed: $97
	cp $57                                           ; $73ee: $fe $57
	ld a, [hl]                                       ; $73f0: $7e
	cpl                                              ; $73f1: $2f
	cpl                                              ; $73f2: $2f
	rlca                                             ; $73f3: $07
	ld b, $07                                        ; $73f4: $06 $07
	ld b, $03                                        ; $73f6: $06 $03
	ld [bc], a                                       ; $73f8: $02
	sbc $03                                          ; $73f9: $de $03
	ld a, a                                          ; $73fb: $7f
	db $fc                                           ; $73fc: $fc
	ld a, e                                          ; $73fd: $7b
	ld a, [$06df]                                    ; $73fe: $fa $df $06
	rst SubAFromDE                                          ; $7401: $df
	dec b                                            ; $7402: $05
	rst SubAFromDE                                          ; $7403: $df
	rlca                                             ; $7404: $07
	rst SubAFromDE                                          ; $7405: $df
	dec b                                            ; $7406: $05
	sub e                                            ; $7407: $93
	rst $38                                          ; $7408: $ff
	xor e                                            ; $7409: $ab
	rst $38                                          ; $740a: $ff
	ld d, d                                          ; $740b: $52
	cp a                                             ; $740c: $bf
	db $e4                                           ; $740d: $e4
	rst $38                                          ; $740e: $ff
	ld h, h                                          ; $740f: $64
	rst $38                                          ; $7410: $ff
	ld c, h                                          ; $7411: $4c
	rst $38                                          ; $7412: $ff
	call nc, $fa7b                                   ; $7413: $d4 $7b $fa
	adc l                                            ; $7416: $8d
	call nz, Call_01c_5eff                           ; $7417: $c4 $ff $5e
	rst $38                                          ; $741a: $ff
	rst JumpTable                                          ; $741b: $c7
	rst $38                                          ; $741c: $ff
	ld b, h                                          ; $741d: $44
	cp a                                             ; $741e: $bf
	db $fc                                           ; $741f: $fc
	db $eb                                           ; $7420: $eb
	cp $b5                                           ; $7421: $fe $b5
	rst $38                                          ; $7423: $ff
	ld l, [hl]                                       ; $7424: $6e
	rst $38                                          ; $7425: $ff
	or a                                             ; $7426: $b7
	rst $38                                          ; $7427: $ff
	ld a, [hl+]                                      ; $7428: $2a
	ld a, e                                          ; $7429: $7b
	ld e, h                                          ; $742a: $5c
	sub a                                            ; $742b: $97
	sub d                                            ; $742c: $92
	cp $d4                                           ; $742d: $fe $d4
	db $fc                                           ; $742f: $fc
	add sp, $68                                      ; $7430: $e8 $68
	ret nz                                           ; $7432: $c0

	ld b, b                                          ; $7433: $40
	ld l, e                                          ; $7434: $6b
	cp $df                                           ; $7435: $fe $df
	ret nz                                           ; $7437: $c0

	ld l, a                                          ; $7438: $6f
	ld a, [$c09c]                                    ; $7439: $fa $9c $c0
	add b                                            ; $743c: $80
	add b                                            ; $743d: $80
	ldh [$df], a                                     ; $743e: $e0 $df
	ld h, [hl]                                       ; $7440: $66
	ret nz                                           ; $7441: $c0

	adc h                                            ; $7442: $8c
	xor b                                            ; $7443: $a8
	rst $38                                          ; $7444: $ff
	jp z, Jump_01c_57fd                              ; $7445: $ca $fd $57

	ld a, [hl]                                       ; $7448: $7e
	ld a, a                                          ; $7449: $7f
	ld a, a                                          ; $744a: $7f
	ld e, a                                          ; $744b: $5f
	ld a, l                                          ; $744c: $7d
	ccf                                              ; $744d: $3f
	scf                                              ; $744e: $37
	dec l                                            ; $744f: $2d
	scf                                              ; $7450: $37
	daa                                              ; $7451: $27
	ld a, [hl-]                                      ; $7452: $3a
	cpl                                              ; $7453: $2f
	jr c, jr_01c_74ad                                ; $7454: $38 $57

	ld e, [hl]                                       ; $7456: $5e
	ret nz                                           ; $7457: $c0

	sub [hl]                                         ; $7458: $96
	cp a                                             ; $7459: $bf
	push hl                                          ; $745a: $e5
	cp a                                             ; $745b: $bf
	db $f4                                           ; $745c: $f4
	sbc a                                            ; $745d: $9f
	db $f4                                           ; $745e: $f4
	dec bc                                           ; $745f: $0b
	cp $0f                                           ; $7460: $fe $0f
	ld a, d                                          ; $7462: $7a
	ret nz                                           ; $7463: $c0

	sbc h                                            ; $7464: $9c
	dec bc                                           ; $7465: $0b
	rst $38                                          ; $7466: $ff
	rrca                                             ; $7467: $0f
	ld a, d                                          ; $7468: $7a

jr_01c_7469:
	ret nz                                           ; $7469: $c0

	sub a                                            ; $746a: $97
	inc b                                            ; $746b: $04
	rst $38                                          ; $746c: $ff
	and b                                            ; $746d: $a0
	ld e, [hl]                                       ; $746e: $5e
	pop hl                                           ; $746f: $e1
	ei                                               ; $7470: $fb
	rlca                                             ; $7471: $07
	adc a                                            ; $7472: $8f
	ld h, d                                          ; $7473: $62
	ret nz                                           ; $7474: $c0

	ld a, [hl]                                       ; $7475: $7e
	jp nz, $fe7f                                     ; $7476: $c2 $7f $fe

	ld a, [hl]                                       ; $7479: $7e
	cp h                                             ; $747a: $bc
	ld a, a                                          ; $747b: $7f
	ld a, [de]                                       ; $747c: $1a
	sub a                                            ; $747d: $97
	add sp, -$48                                     ; $747e: $e8 $b8
	add sp, $18                                      ; $7480: $e8 $18
	ret z                                            ; $7482: $c8

	jr c, jr_01c_7469                                ; $7483: $38 $e4

	ld a, h                                          ; $7485: $7c
	ld h, [hl]                                       ; $7486: $66
	ret nz                                           ; $7487: $c0

	sub a                                            ; $7488: $97
	ld a, [bc]                                       ; $7489: $0a
	rrca                                             ; $748a: $0f
	ld a, [bc]                                       ; $748b: $0a
	rrca                                             ; $748c: $0f
	dec b                                            ; $748d: $05
	rlca                                             ; $748e: $07
	ld [bc], a                                       ; $748f: $02
	inc bc                                           ; $7490: $03
	db $db                                           ; $7491: $db
	ld bc, $267f                                     ; $7492: $01 $7f $26
	sbc $07                                          ; $7495: $de $07
	ld a, l                                          ; $7497: $7d
	cp a                                             ; $7498: $bf
	sbc h                                            ; $7499: $9c
	inc b                                            ; $749a: $04
	inc bc                                           ; $749b: $03
	inc bc                                           ; $749c: $03
	ld sp, hl                                        ; $749d: $f9
	add b                                            ; $749e: $80
	rst $38                                          ; $749f: $ff
	db $fd                                           ; $74a0: $fd
	rst $38                                          ; $74a1: $ff
	ld a, [wCharTilesDataDest+1]                                    ; $74a2: $fa $fd $d7
	rst $38                                          ; $74a5: $ff
	sub e                                            ; $74a6: $93
	rst $38                                          ; $74a7: $ff
	sbc d                                            ; $74a8: $9a
	rst $38                                          ; $74a9: $ff
	ld b, $ff                                        ; $74aa: $06 $ff
	inc bc                                           ; $74ac: $03

jr_01c_74ad:
	rst $38                                          ; $74ad: $ff

jr_01c_74ae:
	ld h, $ff                                        ; $74ae: $26 $ff
	ld [hl-], a                                      ; $74b0: $32
	rst $38                                          ; $74b1: $ff
	and $ff                                          ; $74b2: $e6 $ff
	ld h, d                                          ; $74b4: $62
	sbc a                                            ; $74b5: $9f
	sbc a                                            ; $74b6: $9f
	ccf                                              ; $74b7: $3f
	ccf                                              ; $74b8: $3f
	ld e, d                                          ; $74b9: $5a
	ld a, a                                          ; $74ba: $7f
	ld [hl], a                                       ; $74bb: $77
	ld a, a                                          ; $74bc: $7f
	ld e, d                                          ; $74bd: $5a
	add b                                            ; $74be: $80
	ld a, a                                          ; $74bf: $7f
	ld a, [$f95f]                                    ; $74c0: $fa $5f $f9
	xor a                                            ; $74c3: $af
	db $fd                                           ; $74c4: $fd
	daa                                              ; $74c5: $27
	db $fd                                           ; $74c6: $fd
	ld b, a                                          ; $74c7: $47
	cp $43                                           ; $74c8: $fe $43
	rst $38                                          ; $74ca: $ff
	and c                                            ; $74cb: $a1
	rst $38                                          ; $74cc: $ff
	jr nz, jr_01c_74ae                               ; $74cd: $20 $df

	jr nc, @+$01                                     ; $74cf: $30 $ff

	ld sp, hl                                        ; $74d1: $f9
	rst SubAFromHL                                          ; $74d2: $d7
	ld [hl], $f7                                     ; $74d3: $36 $f7
	inc d                                            ; $74d5: $14
	rst FarCall                                          ; $74d6: $f7
	or $d3                                           ; $74d7: $f6 $d3
	db $d3                                           ; $74d9: $d3
	add sp, -$18                                     ; $74da: $e8 $e8
	ld e, b                                          ; $74dc: $58
	ld e, b                                          ; $74dd: $58
	rst SubAFromDE                                          ; $74de: $df
	ldh a, [$7e]                                     ; $74df: $f0 $7e
	jp nz, $a395                                     ; $74e1: $c2 $95 $a3

	cp $97                                           ; $74e4: $fe $97
	db $fd                                           ; $74e6: $fd
	ld d, a                                          ; $74e7: $57
	ld a, l                                          ; $74e8: $7d
	cpl                                              ; $74e9: $2f
	add hl, hl                                       ; $74ea: $29
	rrca                                             ; $74eb: $0f
	ld [$fe7b], sp                                   ; $74ec: $08 $7b $fe
	sbc [hl]                                         ; $74ef: $9e
	inc c                                            ; $74f0: $0c
	ld a, e                                          ; $74f1: $7b
	and d                                            ; $74f2: $a2
	ld a, [hl]                                       ; $74f3: $7e
	cp d                                             ; $74f4: $ba
	halt                                             ; $74f5: $76
	cp e                                             ; $74f6: $bb
	ld l, d                                          ; $74f7: $6a
	cp h                                             ; $74f8: $bc
	adc c                                            ; $74f9: $89
	rst $38                                          ; $74fa: $ff
	ld e, a                                          ; $74fb: $5f
	rst $38                                          ; $74fc: $ff
	xor e                                            ; $74fd: $ab
	rst SubAFromDE                                          ; $74fe: $df
	ld a, d                                          ; $74ff: $7a
	rst $38                                          ; $7500: $ff
	ld a, d                                          ; $7501: $7a
	rst $38                                          ; $7502: $ff
	or [hl]                                          ; $7503: $b6
	rst $38                                          ; $7504: $ff
	sub h                                            ; $7505: $94
	rst $38                                          ; $7506: $ff
	call c, $38ff                                    ; $7507: $dc $ff $38
	rst $38                                          ; $750a: $ff
	ld [hl], b                                       ; $750b: $70
	rst $38                                          ; $750c: $ff
	xor l                                            ; $750d: $ad
	cp $a6                                           ; $750e: $fe $a6
	ld a, d                                          ; $7510: $7a
	call $fe99                                       ; $7511: $cd $99 $fe
	ld e, d                                          ; $7514: $5a
	cp $ad                                           ; $7515: $fe $ad
	rst $38                                          ; $7517: $ff
	db $db                                           ; $7518: $db
	ld [hl], d                                       ; $7519: $72
	ret nz                                           ; $751a: $c0

	ld a, a                                          ; $751b: $7f
	ld d, [hl]                                       ; $751c: $56
	ld a, [hl]                                       ; $751d: $7e
	ld a, b                                          ; $751e: $78
	ld l, [hl]                                       ; $751f: $6e
	ret nz                                           ; $7520: $c0

	db $dd                                           ; $7521: $dd
	add b                                            ; $7522: $80
	di                                               ; $7523: $f3
	ld a, a                                          ; $7524: $7f
	and b                                            ; $7525: $a0
	ld a, e                                          ; $7526: $7b
	cp $9a                                           ; $7527: $fe $9a
	db $fd                                           ; $7529: $fd
	rra                                              ; $752a: $1f
	ld a, c                                          ; $752b: $79
	rra                                              ; $752c: $1f
	add hl, sp                                       ; $752d: $39
	ld [hl], e                                       ; $752e: $73
	and b                                            ; $752f: $a0
	sbc [hl]                                         ; $7530: $9e
	ld [$a057], sp                                   ; $7531: $08 $57 $a0
	rst SubAFromDE                                          ; $7534: $df
	ld [bc], a                                       ; $7535: $02
	dec sp                                           ; $7536: $3b
	and b                                            ; $7537: $a0
	sbc h                                            ; $7538: $9c
	ld a, b                                          ; $7539: $78
	rst $38                                          ; $753a: $ff
	and a                                            ; $753b: $a7
	ld a, e                                          ; $753c: $7b
	and d                                            ; $753d: $a2
	sbc [hl]                                         ; $753e: $9e
	ld d, d                                          ; $753f: $52
	ld h, a                                          ; $7540: $67
	and b                                            ; $7541: $a0
	ld a, [hl]                                       ; $7542: $7e
	and $7e                                          ; $7543: $e6 $7e
	or $7f                                           ; $7545: $f6 $7f
	cp $9b                                           ; $7547: $fe $9b
	ret c                                            ; $7549: $d8

	ld hl, sp-$10                                    ; $754a: $f8 $f0
	ld [hl], b                                       ; $754c: $70
	ld l, [hl]                                       ; $754d: $6e
	ld l, d                                          ; $754e: $6a
	ld [bc], a                                       ; $754f: $02
	ld l, h                                          ; $7550: $6c
	ld a, b                                          ; $7551: $78
	add d                                            ; $7552: $82
	push af                                          ; $7553: $f5
	ld l, [hl]                                       ; $7554: $6e
	ret nc                                           ; $7555: $d0

	sub d                                            ; $7556: $92
	dec bc                                           ; $7557: $0b
	rrca                                             ; $7558: $0f
	jp hl                                            ; $7559: $e9


	rst AddAOntoHL                                          ; $755a: $ef
	pop de                                           ; $755b: $d1
	cp a                                             ; $755c: $bf
	db $fd                                           ; $755d: $fd
	rst $38                                          ; $755e: $ff
	ld a, [hl]                                       ; $755f: $7e
	ld a, [hl]                                       ; $7560: $7e
	ld a, $3e                                        ; $7561: $3e $3e
	rst $38                                          ; $7563: $ff
	ld d, b                                          ; $7564: $50
	adc h                                            ; $7565: $8c
	rst SubAFromDE                                          ; $7566: $df
	cp $96                                           ; $7567: $fe $96
	cp a                                             ; $7569: $bf
	or c                                             ; $756a: $b1
	sbc [hl]                                         ; $756b: $9e
	sbc e                                            ; $756c: $9b
	inc c                                            ; $756d: $0c
	rrca                                             ; $756e: $0f
	ld b, $07                                        ; $756f: $06 $07
	inc bc                                           ; $7571: $03
	ld a, d                                          ; $7572: $7a
	sbc h                                            ; $7573: $9c
	rst SubAFromDE                                          ; $7574: $df

jr_01c_7575:
	inc bc                                           ; $7575: $03
	ld a, a                                          ; $7576: $7f
	ld h, d                                          ; $7577: $62
	rst SubAFromDE                                          ; $7578: $df
	rst $38                                          ; $7579: $ff
	rst SubAFromDE                                          ; $757a: $df
	rrca                                             ; $757b: $0f
	ld b, h                                          ; $757c: $44
	ld [hl], b                                       ; $757d: $70
	ld a, a                                          ; $757e: $7f
	add a                                            ; $757f: $87
	ld a, h                                          ; $7580: $7c
	ld [hl], b                                       ; $7581: $70
	sbc h                                            ; $7582: $9c
	jr nc, jr_01c_7575                               ; $7583: $30 $f0

	ld [hl], b                                       ; $7585: $70
	sbc $f0                                          ; $7586: $de $f0
	ld a, a                                          ; $7588: $7f
	db $fc                                           ; $7589: $fc
	rst SubAFromDE                                          ; $758a: $df

jr_01c_758b:
	ldh [$df], a                                     ; $758b: $e0 $df
	ld hl, sp-$09                                    ; $758d: $f8 $f7
	ld [hl], a                                       ; $758f: $77
	jp z, $01d9                                      ; $7590: $ca $d9 $01

	ld a, a                                          ; $7593: $7f
	dec l                                            ; $7594: $2d
	rst SubAFromDE                                          ; $7595: $df
	rlca                                             ; $7596: $07
	sbc c                                            ; $7597: $99
	ld c, $0d                                        ; $7598: $0e $0d
	rrca                                             ; $759a: $0f
	rrca                                             ; $759b: $0f
	ld a, a                                          ; $759c: $7f
	ld a, a                                          ; $759d: $7f
	ld d, a                                          ; $759e: $57
	and b                                            ; $759f: $a0
	sbc l                                            ; $75a0: $9d
	db $fc                                           ; $75a1: $fc
	inc h                                            ; $75a2: $24
	ld a, e                                          ; $75a3: $7b
	cp $99                                           ; $75a4: $fe $99
	db $fc                                           ; $75a6: $fc
	ld [hl-], a                                      ; $75a7: $32
	cp $33                                           ; $75a8: $fe $33
	rst $38                                          ; $75aa: $ff
	jr z, jr_01c_758b                                ; $75ab: $28 $de

	rst AddAOntoHL                                          ; $75ad: $ef
	sbc e                                            ; $75ae: $9b
	xor $ed                                          ; $75af: $ee $ed
	rst AddAOntoHL                                          ; $75b1: $ef
	rst AddAOntoHL                                          ; $75b2: $ef
	ld c, a                                          ; $75b3: $4f
	ld a, [hl]                                       ; $75b4: $7e
	ld d, a                                          ; $75b5: $57
	sbc b                                            ; $75b6: $98
	rst SubAFromDE                                          ; $75b7: $df
	add b                                            ; $75b8: $80
	db $dd                                           ; $75b9: $dd
	ret nz                                           ; $75ba: $c0

	ld d, a                                          ; $75bb: $57
	and b                                            ; $75bc: $a0
	rst SubAFromDE                                          ; $75bd: $df
	ccf                                              ; $75be: $3f
	sbc d                                            ; $75bf: $9a
	rra                                              ; $75c0: $1f
	inc de                                           ; $75c1: $13
	rra                                              ; $75c2: $1f
	inc de                                           ; $75c3: $13
	dec c                                            ; $75c4: $0d
	ld a, d                                          ; $75c5: $7a
	push bc                                          ; $75c6: $c5
	ld a, a                                          ; $75c7: $7f
	add hl, sp                                       ; $75c8: $39
	sub l                                            ; $75c9: $95
	add hl, bc                                       ; $75ca: $09
	rrca                                             ; $75cb: $0f
	rra                                              ; $75cc: $1f
	rra                                              ; $75cd: $1f
	scf                                              ; $75ce: $37
	cpl                                              ; $75cf: $2f
	rst $38                                          ; $75d0: $ff
	rst $38                                          ; $75d1: $ff
	ccf                                              ; $75d2: $3f
	ccf                                              ; $75d3: $3f
	rst FarCall                                          ; $75d4: $f7
	rst SubAFromDE                                          ; $75d5: $df
	ret nz                                           ; $75d6: $c0

	ld [hl], a                                       ; $75d7: $77
	ret z                                            ; $75d8: $c8

	db $dd                                           ; $75d9: $dd
	ret nz                                           ; $75da: $c0

	db $dd                                           ; $75db: $dd
	ldh [$dd], a                                     ; $75dc: $e0 $dd
	ldh a, [$df]                                     ; $75de: $f0 $df
	ldh [$df], a                                     ; $75e0: $e0 $df
	db $fc                                           ; $75e2: $fc
	rst FarCall                                          ; $75e3: $f7
	sbc l                                            ; $75e4: $9d
	and b                                            ; $75e5: $a0
	ldh [rPCM34], a                                  ; $75e6: $e0 $77
	cp $7f                                           ; $75e8: $fe $7f
	ld b, b                                          ; $75ea: $40
	halt                                             ; $75eb: $76
	ret z                                            ; $75ec: $c8

	db $db                                           ; $75ed: $db
	add b                                            ; $75ee: $80
	ld l, l                                          ; $75ef: $6d
	ld a, [de]                                       ; $75f0: $1a
	ld h, [hl]                                       ; $75f1: $66
	cp b                                             ; $75f2: $b8
	db $fc                                           ; $75f3: $fc
	ld [bc], a                                       ; $75f4: $02
	push hl                                          ; $75f5: $e5
	rst SubAFromDE                                          ; $75f6: $df
	ld bc, $029d                                     ; $75f7: $01 $9d $02
	inc bc                                           ; $75fa: $03
	rst AddAOntoHL                                          ; $75fb: $ef
	sub c                                            ; $75fc: $91
	inc b                                            ; $75fd: $04
	rlca                                             ; $75fe: $07
	add e                                            ; $75ff: $83
	ei                                               ; $7600: $fb
	ld h, b                                          ; $7601: $60
	ld a, a                                          ; $7602: $7f
	inc e                                            ; $7603: $1c
	rra                                              ; $7604: $1f
	ld b, c                                          ; $7605: $41
	ld a, a                                          ; $7606: $7f
	add a                                            ; $7607: $87
	rst $38                                          ; $7608: $ff
	jr c, @+$01                                      ; $7609: $38 $ff

	rst AddAOntoHL                                          ; $760b: $ef
	sub d                                            ; $760c: $92
	ld h, b                                          ; $760d: $60
	add sp, $12                                      ; $760e: $e8 $12
	cp $8b                                           ; $7610: $fe $8b
	rst $38                                          ; $7612: $ff
	ld c, d                                          ; $7613: $4a
	rst $38                                          ; $7614: $ff
	ld b, h                                          ; $7615: $44
	rst $38                                          ; $7616: $ff
	and h                                            ; $7617: $a4
	rst $38                                          ; $7618: $ff
	adc d                                            ; $7619: $8a
	dec sp                                           ; $761a: $3b
	ldh [$fb], a                                     ; $761b: $e0 $fb
	rst SubAFromDE                                          ; $761d: $df
	add b                                            ; $761e: $80
	rst SubAFromDE                                          ; $761f: $df
	ret nz                                           ; $7620: $c0

	sbc e                                            ; $7621: $9b
	ld h, b                                          ; $7622: $60
	ldh [rAUD4LEN], a                                ; $7623: $e0 $20
	ldh [$ee], a                                     ; $7625: $e0 $ee
	rst SubAFromDE                                          ; $7627: $df
	inc bc                                           ; $7628: $03
	sub l                                            ; $7629: $95
	ld a, e                                          ; $762a: $7b
	ld h, b                                          ; $762b: $60
	ld a, a                                          ; $762c: $7f

jr_01c_762d:
	ld e, $1f                                        ; $762d: $1e $1f
	jr nz, @+$41                                     ; $762f: $20 $3f

	ld b, e                                          ; $7631: $43
	ld a, a                                          ; $7632: $7f
	adc h                                            ; $7633: $8c
	dec sp                                           ; $7634: $3b
	ret nz                                           ; $7635: $c0

	sub h                                            ; $7636: $94
	jr nc, jr_01c_762d                               ; $7637: $30 $f4

	add hl, de                                       ; $7639: $19
	rst $38                                          ; $763a: $ff
	add l                                            ; $763b: $85
	rst $38                                          ; $763c: $ff

jr_01c_763d:
	ld b, l                                          ; $763d: $45
	rst $38                                          ; $763e: $ff
	and d                                            ; $763f: $a2
	rst $38                                          ; $7640: $ff
	jp nc, $fa7b                                     ; $7641: $d2 $7b $fa

	daa                                              ; $7644: $27
	and d                                            ; $7645: $a2
	sbc [hl]                                         ; $7646: $9e
	ld b, b                                          ; $7647: $40
	ld a, e                                          ; $7648: $7b
	and d                                            ; $7649: $a2
	sbc e                                            ; $764a: $9b
	jr nc, jr_01c_763d                               ; $764b: $30 $f0

	db $10                                           ; $764d: $10
	ldh a, [$03]                                     ; $764e: $f0 $03
	jr nz, @+$41                                     ; $7650: $20 $3f

	ld [$7d9b], a                                    ; $7652: $ea $9b $7d
	ld [hl], b                                       ; $7655: $70
	ld a, a                                          ; $7656: $7f
	dec e                                            ; $7657: $1d
	ld a, e                                          ; $7658: $7b
	add d                                            ; $7659: $82
	sbc d                                            ; $765a: $9a
	jp $0cff                                         ; $765b: $c3 $ff $0c


	rst $38                                          ; $765e: $ff
	jr nc, jr_01c_769c                               ; $765f: $30 $3b

	and b                                            ; $7661: $a0
	sub [hl]                                         ; $7662: $96
	adc c                                            ; $7663: $89
	ei                                               ; $7664: $fb
	ld b, h                                          ; $7665: $44
	rst $38                                          ; $7666: $ff
	ld [hl+], a                                      ; $7667: $22
	rst $38                                          ; $7668: $ff
	sub c                                            ; $7669: $91
	rst $38                                          ; $766a: $ff
	jp z, $827b                                      ; $766b: $ca $7b $82

	sbc [hl]                                         ; $766e: $9e
	jr z, jr_01c_76a4                                ; $766f: $28 $33

	add b                                            ; $7671: $80
	ld [hl], a                                       ; $7672: $77
	inc h                                            ; $7673: $24
	rst SubAFromDE                                          ; $7674: $df
	ret nz                                           ; $7675: $c0

	ld a, e                                          ; $7676: $7b
	inc h                                            ; $7677: $24
	sbc d                                            ; $7678: $9a
	ldh [hDisp1_SCY], a                                     ; $7679: $e0 $90
	ldh a, [rSB]                                     ; $767b: $f0 $01
	rlca                                             ; $767d: $07
	ld l, a                                          ; $767e: $6f
	sbc b                                            ; $767f: $98
	ld [hl], a                                       ; $7680: $77
	cp $dd                                           ; $7681: $fe $dd
	ld bc, $f86f                                     ; $7683: $01 $6f $f8
	rst FarCall                                          ; $7686: $f7
	sbc b                                            ; $7687: $98
	ret nz                                           ; $7688: $c0

	rst $38                                          ; $7689: $ff
	jr @+$01                                         ; $768a: $18 $ff

	ld h, h                                          ; $768c: $64
	rst $38                                          ; $768d: $ff
	ld c, b                                          ; $768e: $48
	ld a, d                                          ; $768f: $7a
	sub $84                                          ; $7690: $d6 $84
	sub d                                            ; $7692: $92
	rst $38                                          ; $7693: $ff
	ld a, [de]                                       ; $7694: $1a
	rst $38                                          ; $7695: $ff
	dec a                                            ; $7696: $3d
	rst $38                                          ; $7697: $ff
	ld a, a                                          ; $7698: $7f
	db $f4                                           ; $7699: $f4
	rst $38                                          ; $769a: $ff
	db $fc                                           ; $769b: $fc

jr_01c_769c:
	or a                                             ; $769c: $b7
	call c, $e8bf                                    ; $769d: $dc $bf $e8
	cp a                                             ; $76a0: $bf
	ldh [c], a                                       ; $76a1: $e2
	sbc l                                            ; $76a2: $9d
	db $d3                                           ; $76a3: $d3

jr_01c_76a4:
	ld c, a                                          ; $76a4: $4f
	ld c, b                                          ; $76a5: $48
	ld b, $07                                        ; $76a6: $06 $07
	ld d, c                                          ; $76a8: $51
	rst $38                                          ; $76a9: $ff
	add hl, bc                                       ; $76aa: $09
	rst $38                                          ; $76ab: $ff
	inc b                                            ; $76ac: $04
	ld a, e                                          ; $76ad: $7b
	inc d                                            ; $76ae: $14
	ld a, a                                          ; $76af: $7f
	ldh [c], a                                       ; $76b0: $e2
	adc c                                            ; $76b1: $89
	sbc c                                            ; $76b2: $99
	rst $38                                          ; $76b3: $ff
	ld c, l                                          ; $76b4: $4d

jr_01c_76b5:
	rst $38                                          ; $76b5: $ff
	ld a, [hl]                                       ; $76b6: $7e
	rst $38                                          ; $76b7: $ff
	db $fd                                           ; $76b8: $fd
	rst AddAOntoHL                                          ; $76b9: $ef
	db $fd                                           ; $76ba: $fd
	ld a, $ed                                        ; $76bb: $3e $ed
	ld a, $fd                                        ; $76bd: $3e $fd
	rla                                              ; $76bf: $17
	db $fd                                           ; $76c0: $fd
	add a                                            ; $76c1: $87
	ld a, [hl]                                       ; $76c2: $7e
	add a                                            ; $76c3: $87
	db $eb                                           ; $76c4: $eb
	dec de                                           ; $76c5: $1b
	ld [hl], b                                       ; $76c6: $70
	ldh a, [rPCM34]                                  ; $76c7: $f0 $77
	inc e                                            ; $76c9: $1c
	ld a, a                                          ; $76ca: $7f
	sbc d                                            ; $76cb: $9a
	ld e, a                                          ; $76cc: $5f
	cp $93                                           ; $76cd: $fe $93
	and b                                            ; $76cf: $a0
	ld h, b                                          ; $76d0: $60
	and b                                            ; $76d1: $a0
	ld h, b                                          ; $76d2: $60
	jr nz, jr_01c_76b5                               ; $76d3: $20 $e0

	ld b, b                                          ; $76d5: $40
	ret nz                                           ; $76d6: $c0

	ld b, b                                          ; $76d7: $40
	ret nz                                           ; $76d8: $c0

	add b                                            ; $76d9: $80
	add b                                            ; $76da: $80
	db $fd                                           ; $76db: $fd
	ld a, e                                          ; $76dc: $7b
	ld e, $73                                        ; $76dd: $1e $73
	inc e                                            ; $76df: $1c
	db $db                                           ; $76e0: $db
	ld bc, $f667                                     ; $76e1: $01 $67 $f6
	ld e, d                                          ; $76e4: $5a
	or d                                             ; $76e5: $b2
	sbc e                                            ; $76e6: $9b
	rst $38                                          ; $76e7: $ff
	ld c, h                                          ; $76e8: $4c
	ld a, a                                          ; $76e9: $7f
	or d                                             ; $76ea: $b2
	ld a, d                                          ; $76eb: $7a
	ld d, [hl]                                       ; $76ec: $56
	ld a, a                                          ; $76ed: $7f
	inc [hl]                                         ; $76ee: $34
	adc b                                            ; $76ef: $88
	ld c, c                                          ; $76f0: $49
	rst $38                                          ; $76f1: $ff
	reti                                             ; $76f2: $d9


	rst $38                                          ; $76f3: $ff
	sbc l                                            ; $76f4: $9d
	rst FarCall                                          ; $76f5: $f7
	sbc [hl]                                         ; $76f6: $9e
	rst AddAOntoHL                                          ; $76f7: $ef
	ccf                                              ; $76f8: $3f
	ld a, [$ee7f]                                    ; $76f9: $fa $7f $ee
	reti                                             ; $76fc: $d9


	or $5f                                           ; $76fd: $f6 $5f
	ld [hl], b                                       ; $76ff: $70
	dec hl                                           ; $7700: $2b
	inc a                                            ; $7701: $3c
	dec h                                            ; $7702: $25
	ld [hl], $07                                     ; $7703: $36 $07
	rlca                                             ; $7705: $07
	jr z, jr_01c_7783                                ; $7706: $28 $7b

	add d                                            ; $7708: $82

jr_01c_7709:
	sbc h                                            ; $7709: $9c
	ld [bc], a                                       ; $770a: $02
	rst $38                                          ; $770b: $ff
	ld d, c                                          ; $770c: $51
	ld a, e                                          ; $770d: $7b
	ldh [c], a                                       ; $770e: $e2
	adc c                                            ; $770f: $89
	ld c, h                                          ; $7710: $4c
	rst $38                                          ; $7711: $ff
	ld h, $ff                                        ; $7712: $26 $ff
	ccf                                              ; $7714: $3f
	rst $38                                          ; $7715: $ff
	cp [hl]                                          ; $7716: $be
	rst FarCall                                          ; $7717: $f7
	cp $6b                                           ; $7718: $fe $6b
	sbc $3b                                          ; $771a: $de $3b
	and $1b                                          ; $771c: $e6 $1b
	cp $03                                           ; $771e: $fe $03
	ei                                               ; $7720: $fb
	add a                                            ; $7721: $87
	push af                                          ; $7722: $f5
	rrca                                             ; $7723: $0f
	ccf                                              ; $7724: $3f
	rst $38                                          ; $7725: $ff
	ld [hl], a                                       ; $7726: $77
	and d                                            ; $7727: $a2
	ld c, a                                          ; $7728: $4f
	and h                                            ; $7729: $a4
	ld d, a                                          ; $772a: $57
	and d                                            ; $772b: $a2
	rst $38                                          ; $772c: $ff
	ld [hl], a                                       ; $772d: $77
	and d                                            ; $772e: $a2
	sbc [hl]                                         ; $772f: $9e
	inc h                                            ; $7730: $24
	ld a, c                                          ; $7731: $79
	db $f4                                           ; $7732: $f4
	add a                                            ; $7733: $87
	ret                                              ; $7734: $c9


	rst $38                                          ; $7735: $ff
	adc c                                            ; $7736: $89
	rst $38                                          ; $7737: $ff
	sbc e                                            ; $7738: $9b
	cp $1d                                           ; $7739: $fe $1d
	cp $3f                                           ; $773b: $fe $3f
	xor $7b                                          ; $773d: $ee $7b
	cp $5f                                           ; $773f: $fe $5f
	ld [hl], b                                       ; $7741: $70
	ld d, e                                          ; $7742: $53
	ld a, l                                          ; $7743: $7d
	ld [hl], $39                                     ; $7744: $36 $39
	dec hl                                           ; $7746: $2b
	inc a                                            ; $7747: $3c
	ld b, $07                                        ; $7748: $06 $07
	inc bc                                           ; $774a: $03
	inc bc                                           ; $774b: $03
	ld [hl], a                                       ; $774c: $77
	and d                                            ; $774d: $a2
	sbc [hl]                                         ; $774e: $9e
	ld de, $a26b                                     ; $774f: $11 $6b $a2
	add a                                            ; $7752: $87
	or e                                             ; $7753: $b3
	rst SubAFromDE                                          ; $7754: $df
	cp e                                             ; $7755: $bb
	rst $38                                          ; $7756: $ff
	rst $38                                          ; $7757: $ff
	ld a, a                                          ; $7758: $7f
	and $3f                                          ; $7759: $e6 $3f
	cp $03                                           ; $775b: $fe $03
	and $db                                          ; $775d: $e6 $db
	cp $c3                                           ; $775f: $fe $c3
	ld a, e                                          ; $7761: $7b
	add a                                            ; $7762: $87
	push hl                                          ; $7763: $e5
	rra                                              ; $7764: $1f
	ccf                                              ; $7765: $3f
	rst $38                                          ; $7766: $ff
	sub b                                            ; $7767: $90
	ldh a, [rOBP0]                                   ; $7768: $f0 $48
	ld hl, sp+$77                                    ; $776a: $f8 $77
	cp $9e                                           ; $776c: $fe $9e
	ret z                                            ; $776e: $c8

	ld a, e                                          ; $776f: $7b
	cp $6f                                           ; $7770: $fe $6f
	ld hl, sp-$6a                                    ; $7772: $f8 $96
	ret nc                                           ; $7774: $d0

	or b                                             ; $7775: $b0
	ret nc                                           ; $7776: $d0

	jr nc, jr_01c_7709                               ; $7777: $30 $90

	ld [hl], b                                       ; $7779: $70
	and b                                            ; $777a: $a0
	ldh [$a0], a                                     ; $777b: $e0 $a0
	ld a, e                                          ; $777d: $7b
	ld a, [de]                                       ; $777e: $1a
	rst SubAFromDE                                          ; $777f: $df
	add b                                            ; $7780: $80
	rst SubAFromDE                                          ; $7781: $df
	rlca                                             ; $7782: $07

jr_01c_7783:
	ld a, a                                          ; $7783: $7f
	ld e, $de                                        ; $7784: $1e $de
	inc bc                                           ; $7786: $03
	ld a, d                                          ; $7787: $7a
	xor c                                            ; $7788: $a9
	ld l, [hl]                                       ; $7789: $6e
	and [hl]                                         ; $778a: $a6
	ld [hl], e                                       ; $778b: $73
	ld a, [$039c]                                    ; $778c: $fa $9c $03
	dec b                                            ; $778f: $05
	rlca                                             ; $7790: $07
	ld h, a                                          ; $7791: $67
	cp $86                                           ; $7792: $fe $86
	ld h, d                                          ; $7794: $62
	sbc [hl]                                         ; $7795: $9e
	dec b                                            ; $7796: $05
	rst $38                                          ; $7797: $ff
	inc a                                            ; $7798: $3c
	rst $38                                          ; $7799: $ff
	db $f4                                           ; $779a: $f4
	rst GetHLinHL                                          ; $779b: $cf
	db $f4                                           ; $779c: $f4
	rrca                                             ; $779d: $0f
	and h                                            ; $779e: $a4
	ld e, a                                          ; $779f: $5f
	inc b                                            ; $77a0: $04
	rst $38                                          ; $77a1: $ff
	db $fc                                           ; $77a2: $fc
	rst $38                                          ; $77a3: $ff
	ld d, h                                          ; $77a4: $54
	rst $38                                          ; $77a5: $ff
	ld d, e                                          ; $77a6: $53
	rst $38                                          ; $77a7: $ff
	ld d, d                                          ; $77a8: $52
	cp $4a                                           ; $77a9: $fe $4a
	cp $29                                           ; $77ab: $fe $29
	ld a, d                                          ; $77ad: $7a
	ld b, h                                          ; $77ae: $44
	ld a, a                                          ; $77af: $7f
	ld l, b                                          ; $77b0: $68
	sbc [hl]                                         ; $77b1: $9e
	daa                                              ; $77b2: $27
	ld [hl], d                                       ; $77b3: $72
	ld b, b                                          ; $77b4: $40
	db $dd                                           ; $77b5: $dd
	add b                                            ; $77b6: $80
	halt                                             ; $77b7: $76
	adc $5e                                          ; $77b8: $ce $5e
	jp z, $ea67                                      ; $77ba: $ca $67 $ea

	rst $38                                          ; $77bd: $ff
	adc l                                            ; $77be: $8d
	add hl, de                                       ; $77bf: $19
	ld e, $0c                                        ; $77c0: $1e $0c
	rra                                              ; $77c2: $1f
	ld c, $1f                                        ; $77c3: $0e $1f
	dec bc                                           ; $77c5: $0b
	dec e                                            ; $77c6: $1d
	dec hl                                           ; $77c7: $2b
	inc a                                            ; $77c8: $3c
	add hl, hl                                       ; $77c9: $29
	ld a, $28                                        ; $77ca: $3e $28
	ccf                                              ; $77cc: $3f
	rla                                              ; $77cd: $17
	rra                                              ; $77ce: $1f
	ld a, [bc]                                       ; $77cf: $0a
	rrca                                             ; $77d0: $0f
	ld [hl], a                                       ; $77d1: $77
	cp $9a                                           ; $77d2: $fe $9a
	inc d                                            ; $77d4: $14
	rra                                              ; $77d5: $1f
	inc d                                            ; $77d6: $14
	rra                                              ; $77d7: $1f
	inc e                                            ; $77d8: $1c
	ld [hl], e                                       ; $77d9: $73
	cp $88                                           ; $77da: $fe $88
	add h                                            ; $77dc: $84
	ld a, h                                          ; $77dd: $7c
	ld e, $fe                                        ; $77de: $1e $fe
	ld [hl], d                                       ; $77e0: $72
	cp $e1                                           ; $77e1: $fe $e1
	sbc a                                            ; $77e3: $9f
	pop hl                                           ; $77e4: $e1
	rra                                              ; $77e5: $1f
	ld c, c                                          ; $77e6: $49
	cp a                                             ; $77e7: $bf
	add hl, de                                       ; $77e8: $19
	rst $38                                          ; $77e9: $ff
	ld sp, hl                                        ; $77ea: $f9
	rst $38                                          ; $77eb: $ff
	xor d                                            ; $77ec: $aa
	cp $ac                                           ; $77ed: $fe $ac
	db $fc                                           ; $77ef: $fc
	and h                                            ; $77f0: $a4
	db $fc                                           ; $77f1: $fc
	sub h                                            ; $77f2: $94
	ld a, e                                          ; $77f3: $7b
	cp $81                                           ; $77f4: $fe $81
	sub d                                            ; $77f6: $92
	cp $92                                           ; $77f7: $fe $92
	cp $9c                                           ; $77f9: $fe $9c
	db $fc                                           ; $77fb: $fc
	dec b                                            ; $77fc: $05
	rlca                                             ; $77fd: $07
	dec bc                                           ; $77fe: $0b
	ld c, $17                                        ; $77ff: $0e $17
	rra                                              ; $7801: $1f
	ld d, $1d                                        ; $7802: $16 $1d
	inc l                                            ; $7804: $2c
	ccf                                              ; $7805: $3f
	ld h, $3d                                        ; $7806: $26 $3d
	inc l                                            ; $7808: $2c
	ccf                                              ; $7809: $3f
	cpl                                              ; $780a: $2f
	inc sp                                           ; $780b: $33
	rra                                              ; $780c: $1f
	add hl, de                                       ; $780d: $19
	inc c                                            ; $780e: $0c
	rrca                                             ; $780f: $0f
	ld b, $07                                        ; $7810: $06 $07
	ld b, $07                                        ; $7812: $06 $07
	ld l, a                                          ; $7814: $6f
	cp b                                             ; $7815: $b8
	ld a, a                                          ; $7816: $7f
	cp $86                                           ; $7817: $fe $86
	or e                                             ; $7819: $b3
	rst $38                                          ; $781a: $ff
	ld l, d                                          ; $781b: $6a
	rst SubAFromDE                                          ; $781c: $df
	db $f4                                           ; $781d: $f4
	rst $38                                          ; $781e: $ff
	xor h                                            ; $781f: $ac
	ld d, a                                          ; $7820: $57
	rlca                                             ; $7821: $07
	rst $38                                          ; $7822: $ff
	xor [hl]                                         ; $7823: $ae
	ld d, a                                          ; $7824: $57
	ld b, $ff                                        ; $7825: $06 $ff
	rst $38                                          ; $7827: $ff
	ld sp, hl                                        ; $7828: $f9
	ld e, $f3                                        ; $7829: $1e $f3
	sbc a                                            ; $782b: $9f
	rst $38                                          ; $782c: $ff
	sub d                                            ; $782d: $92
	cp $8a                                           ; $782e: $fe $8a
	cp $49                                           ; $7830: $fe $49
	ld a, d                                          ; $7832: $7a
	db $ec                                           ; $7833: $ec
	ld a, a                                          ; $7834: $7f
	cp $9d                                           ; $7835: $fe $9d
	ld c, [hl]                                       ; $7837: $4e
	cp $6d                                           ; $7838: $fe $6d
	inc [hl]                                         ; $783a: $34
	ld a, a                                          ; $783b: $7f
	cp $7f                                           ; $783c: $fe $7f
	ld [de], a                                       ; $783e: $12
	ld a, [hl]                                       ; $783f: $7e
	ld a, [hl+]                                      ; $7840: $2a
	ld a, a                                          ; $7841: $7f
	cp $7d                                           ; $7842: $fe $7d
	inc l                                            ; $7844: $2c
	rst SubAFromDE                                          ; $7845: $df
	ret nz                                           ; $7846: $c0

	ld e, a                                          ; $7847: $5f
	ld e, [hl]                                       ; $7848: $5e
	db $fd                                           ; $7849: $fd
	sbc c                                            ; $784a: $99
	dec c                                            ; $784b: $0d
	rrca                                             ; $784c: $0f
	inc de                                           ; $784d: $13
	ld e, $17                                        ; $784e: $1e $17
	rra                                              ; $7850: $1f
	ld [hl], a                                       ; $7851: $77
	and h                                            ; $7852: $a4
	ld [hl], a                                       ; $7853: $77
	db $fc                                           ; $7854: $fc
	sbc l                                            ; $7855: $9d
	rra                                              ; $7856: $1f
	inc de                                           ; $7857: $13
	inc bc                                           ; $7858: $03
	and b                                            ; $7859: $a0
	ld c, e                                          ; $785a: $4b
	and b                                            ; $785b: $a0
	ld l, a                                          ; $785c: $6f
	and d                                            ; $785d: $a2
	ld a, a                                          ; $785e: $7f
	and [hl]                                         ; $785f: $a6
	ld l, a                                          ; $7860: $6f
	and b                                            ; $7861: $a0
	ld d, a                                          ; $7862: $57
	nop                                              ; $7863: $00
	inc e                                            ; $7864: $1c
	jp z, $def5                                      ; $7865: $ca $f5 $de

	rlca                                             ; $7868: $07
	adc a                                            ; $7869: $8f
	inc b                                            ; $786a: $04
	dec b                                            ; $786b: $05
	ld b, $0f                                        ; $786c: $06 $0f
	add hl, bc                                       ; $786e: $09
	rst AddAOntoHL                                          ; $786f: $ef
	db $ed                                           ; $7870: $ed
	rst SubAFromDE                                          ; $7871: $df
	or e                                             ; $7872: $b3
	rst $38                                          ; $7873: $ff
	db $fd                                           ; $7874: $fd
	ld a, [hl]                                       ; $7875: $7e
	ld a, [hl]                                       ; $7876: $7e
	ld a, $3e                                        ; $7877: $3e $3e
	rst $38                                          ; $7879: $ff
	ld d, b                                          ; $787a: $50
	db $ec                                           ; $787b: $ec
	rst SubAFromDE                                          ; $787c: $df
	cp $97                                           ; $787d: $fe $97
	cp a                                             ; $787f: $bf
	or c                                             ; $7880: $b1
	sbc e                                            ; $7881: $9b
	sbc h                                            ; $7882: $9c
	rrca                                             ; $7883: $0f
	inc c                                            ; $7884: $0c
	rlca                                             ; $7885: $07
	ld b, $72                                        ; $7886: $06 $72
	ld e, d                                          ; $7888: $5a
	sbc l                                            ; $7889: $9d
	inc bc                                           ; $788a: $03
	rlca                                             ; $788b: $07
	ld a, e                                          ; $788c: $7b
	ld a, e                                          ; $788d: $7b
	rst SubAFromDE                                          ; $788e: $df
	rrca                                             ; $788f: $0f
	ld b, b                                          ; $7890: $40
	ret nc                                           ; $7891: $d0

	sbc [hl]                                         ; $7892: $9e
	ld b, b                                          ; $7893: $40
	ld a, e                                          ; $7894: $7b
	dec h                                            ; $7895: $25
	sbc e                                            ; $7896: $9b
	and b                                            ; $7897: $a0
	ldh a, [rSVBK]                                   ; $7898: $f0 $70
	ldh a, [$7b]                                     ; $789a: $f0 $7b
	db $fd                                           ; $789c: $fd
	rst SubAFromDE                                          ; $789d: $df
	ldh [$df], a                                     ; $789e: $e0 $df
	ld hl, sp-$09                                    ; $78a0: $f8 $f7
	rst SubAFromDE                                          ; $78a2: $df
	rrca                                             ; $78a3: $0f
	ld a, a                                          ; $78a4: $7f
	and b                                            ; $78a5: $a0
	ld a, a                                          ; $78a6: $7f
	cp $7b                                           ; $78a7: $fe $7b
	rst JumpTable                                          ; $78a9: $c7
	halt                                             ; $78aa: $76
	add hl, de                                       ; $78ab: $19
	sbc b                                            ; $78ac: $98
	ld [bc], a                                       ; $78ad: $02
	rlca                                             ; $78ae: $07
	rlca                                             ; $78af: $07
	ld c, $0d                                        ; $78b0: $0e $0d
	ccf                                              ; $78b2: $3f
	ccf                                              ; $78b3: $3f
	ld d, a                                          ; $78b4: $57

jr_01c_78b5:
	ret nz                                           ; $78b5: $c0

	rst SubAFromDE                                          ; $78b6: $df
	ldh a, [$df]                                     ; $78b7: $f0 $df
	ret nz                                           ; $78b9: $c0

	ld a, a                                          ; $78ba: $7f
	call nz, $c677                                   ; $78bb: $c4 $77 $c6
	sbc e                                            ; $78be: $9b
	ld hl, sp+$38                                    ; $78bf: $f8 $38
	ld hl, sp+$78                                    ; $78c1: $f8 $78
	db $dd                                           ; $78c3: $dd
	db $fc                                           ; $78c4: $fc
	rst SubAFromDE                                          ; $78c5: $df
	ld hl, sp+$57                                    ; $78c6: $f8 $57
	ld a, [hl]                                       ; $78c8: $7e
	rst SubAFromDE                                          ; $78c9: $df
	rlca                                             ; $78ca: $07
	ld a, a                                          ; $78cb: $7f
	jp z, $01d9                                      ; $78cc: $ca $d9 $01

	ld [hl], a                                       ; $78cf: $77
	ret nz                                           ; $78d0: $c0

	sbc e                                            ; $78d1: $9b
	dec c                                            ; $78d2: $0d
	dec bc                                           ; $78d3: $0b
	rrca                                             ; $78d4: $0f
	rrca                                             ; $78d5: $0f
	ld d, a                                          ; $78d6: $57
	ldh [$de], a                                     ; $78d7: $e0 $de
	db $fc                                           ; $78d9: $fc
	sbc b                                            ; $78da: $98

jr_01c_78db:
	ld h, h                                          ; $78db: $64
	ld a, h                                          ; $78dc: $7c
	and h                                            ; $78dd: $a4
	or $3a                                           ; $78de: $f6 $3a
	cp $32                                           ; $78e0: $fe $32
	sbc $ff                                          ; $78e2: $de $ff
	sbc d                                            ; $78e4: $9a
	ld h, c                                          ; $78e5: $61
	rst $38                                          ; $78e6: $ff
	rst $38                                          ; $78e7: $ff
	rst AddAOntoHL                                          ; $78e8: $ef
	rst SubAFromDE                                          ; $78e9: $df
	db $dd                                           ; $78ea: $dd
	rst $38                                          ; $78eb: $ff
	db $e3                                           ; $78ec: $e3
	ld d, [hl]                                       ; $78ed: $56
	call c, $83ed                                    ; $78ee: $dc $ed $83
	ldh [$cf], a                                     ; $78f1: $e0 $cf
	sbc c                                            ; $78f3: $99
	inc bc                                           ; $78f4: $03
	inc c                                            ; $78f5: $0c
	inc de                                           ; $78f6: $13
	ld l, $71                                        ; $78f7: $2e $71
	ld h, [hl]                                       ; $78f9: $66
	ld a, e                                          ; $78fa: $7b
	ld hl, sp-$66                                    ; $78fb: $f8 $9a
	rrca                                             ; $78fd: $0f
	rra                                              ; $78fe: $1f
	ccf                                              ; $78ff: $3f
	ld a, a                                          ; $7900: $7f
	ld a, a                                          ; $7901: $7f
	ldh a, [hDisp1_WX]                                     ; $7902: $f0 $96
	ld [$5dfd], sp                                   ; $7904: $08 $fd $5d
	or d                                             ; $7907: $b2
	ld a, c                                          ; $7908: $79
	ld h, h                                          ; $7909: $64
	sbc d                                            ; $790a: $9a
	inc c                                            ; $790b: $0c
	ld c, $db                                        ; $790c: $0e $db
	rst $38                                          ; $790e: $ff
	xor $9a                                          ; $790f: $ee $9a
	add b                                            ; $7911: $80
	ld b, b                                          ; $7912: $40
	jr nz, jr_01c_78b5                               ; $7913: $20 $a0

	ld d, b                                          ; $7915: $50
	ld [hl], a                                       ; $7916: $77
	ld hl, sp-$65                                    ; $7917: $f8 $9b
	ret nz                                           ; $7919: $c0

	ldh [$e0], a                                     ; $791a: $e0 $e0
	ldh a, [$5b]                                     ; $791c: $f0 $5b
	jp hl                                            ; $791e: $e9


	ld a, e                                          ; $791f: $7b
	pop af                                           ; $7920: $f1
	sbc l                                            ; $7921: $9d
	ldh [$c0], a                                     ; $7922: $e0 $c0
	ldh [$de], a                                     ; $7924: $e0 $de
	sbc d                                            ; $7926: $9a
	inc bc                                           ; $7927: $03
	inc b                                            ; $7928: $04
	dec bc                                           ; $7929: $0b
	inc e                                            ; $792a: $1c
	add hl, de                                       ; $792b: $19
	ld [hl], a                                       ; $792c: $77
	ld hl, sp-$65                                    ; $792d: $f8 $9b
	rlca                                             ; $792f: $07
	rrca                                             ; $7930: $0f
	rra                                              ; $7931: $1f
	rra                                              ; $7932: $1f
	ldh a, [hDisp1_WX]                                     ; $7933: $f0 $96
	ld [bc], a                                       ; $7935: $02
	rst $38                                          ; $7936: $ff
	rla                                              ; $7937: $17
	db $ec                                           ; $7938: $ec
	sbc [hl]                                         ; $7939: $9e
	ld e, c                                          ; $793a: $59
	and [hl]                                         ; $793b: $a6
	inc bc                                           ; $793c: $03
	inc bc                                           ; $793d: $03
	daa                                              ; $793e: $27
	add b                                            ; $793f: $80
	sbc c                                            ; $7940: $99
	ld b, b                                          ; $7941: $40
	ld h, b                                          ; $7942: $60
	sub b                                            ; $7943: $90
	ld c, b                                          ; $7944: $48
	jr z, jr_01c_78db                                ; $7945: $28 $94

	ld [hl], a                                       ; $7947: $77
	sub c                                            ; $7948: $91
	sbc e                                            ; $7949: $9b
	ldh a, [$f8]                                     ; $794a: $f0 $f8
	ld hl, sp-$04                                    ; $794c: $f8 $fc
	ld sp, hl                                        ; $794e: $f9
	sbc h                                            ; $794f: $9c
	ld [hl], b                                       ; $7950: $70
	inc e                                            ; $7951: $1c
	rlca                                             ; $7952: $07
	sbc $01                                          ; $7953: $de $01
	or $de                                           ; $7955: $f6 $de
	ld bc, $03df                                     ; $7957: $01 $df $03
	sbc [hl]                                         ; $795a: $9e
	ld [bc], a                                       ; $795b: $02
	db $e4                                           ; $795c: $e4
	sbc $c0                                          ; $795d: $de $c0
	sbc [hl]                                         ; $795f: $9e
	ld h, b                                          ; $7960: $60
	ld e, a                                          ; $7961: $5f
	ret nc                                           ; $7962: $d0

	ld [hl], e                                       ; $7963: $73
	call z, $c15b                                    ; $7964: $cc $5b $c1
	db $db                                           ; $7967: $db
	ld [bc], a                                       ; $7968: $02
	ld d, e                                          ; $7969: $53
	rlca                                             ; $796a: $07
	sbc $80                                          ; $796b: $de $80
	ldh [$d1], a                                     ; $796d: $e0 $d1
	sbc h                                            ; $796f: $9c
	dec d                                            ; $7970: $15
	ld a, [bc]                                       ; $7971: $0a
	rlca                                             ; $7972: $07
	ld a, e                                          ; $7973: $7b
	ld a, c                                          ; $7974: $79
	sbc d                                            ; $7975: $9a
	ld [bc], a                                       ; $7976: $02
	ld bc, $0e1f                                     ; $7977: $01 $1f $0e
	rlca                                             ; $797a: $07
	db $dd                                           ; $797b: $dd
	ld [bc], a                                       ; $797c: $02
	ld a, e                                          ; $797d: $7b
	xor d                                            ; $797e: $aa
	sbc [hl]                                         ; $797f: $9e
	ld bc, $05dc                                     ; $7980: $01 $dc $05
	ld h, a                                          ; $7983: $67
	ld hl, sp-$7e                                    ; $7984: $f8 $82
	ld h, e                                          ; $7986: $63
	dec b                                            ; $7987: $05
	inc a                                            ; $7988: $3c
	db $f4                                           ; $7989: $f4
	db $f4                                           ; $798a: $f4
	xor b                                            ; $798b: $a8
	ld [$9ff8], sp                                   ; $798c: $08 $f8 $9f
	rst $38                                          ; $798f: $ff
	rst $38                                          ; $7990: $ff
	rst GetHLinHL                                          ; $7991: $cf
	rrca                                             ; $7992: $0f
	ld e, a                                          ; $7993: $5f
	rst $38                                          ; $7994: $ff
	rst $38                                          ; $7995: $ff
	ld e, b                                          ; $7996: $58
	ld d, a                                          ; $7997: $57
	ld e, a                                          ; $7998: $5f
	ld e, a                                          ; $7999: $5f
	cpl                                              ; $799a: $2f
	ld l, $24                                        ; $799b: $2e $24
	inc h                                            ; $799d: $24
	rst $38                                          ; $799e: $ff
	rst $38                                          ; $799f: $ff
	ld hl, sp-$08                                    ; $79a0: $f8 $f8
	ld sp, hl                                        ; $79a2: $f9
	sbc $ff                                          ; $79a3: $de $ff
	sbc d                                            ; $79a5: $9a
	inc h                                            ; $79a6: $24
	and h                                            ; $79a7: $a4
	ret z                                            ; $79a8: $c8

	adc b                                            ; $79a9: $88
	ld [hl], b                                       ; $79aa: $70
	sbc $40                                          ; $79ab: $de $40
	rst SubAFromDE                                          ; $79ad: $df
	db $fc                                           ; $79ae: $fc
	rst SubAFromDE                                          ; $79af: $df
	ld hl, sp+$77                                    ; $79b0: $f8 $77
	ld hl, sp-$2f                                    ; $79b2: $f8 $d1
	add b                                            ; $79b4: $80
	ld l, a                                          ; $79b5: $6f
	ld d, $67                                        ; $79b6: $16 $67
	ld c, $ef                                        ; $79b8: $0e $ef
	sbc b                                            ; $79ba: $98
	reti                                             ; $79bb: $d9


	or e                                             ; $79bc: $b3
	and h                                            ; $79bd: $a4
	ld c, c                                          ; $79be: $49
	ld d, c                                          ; $79bf: $51
	sub l                                            ; $79c0: $95
	xor l                                            ; $79c1: $ad
	db $db                                           ; $79c2: $db
	rst $38                                          ; $79c3: $ff
	sbc $fe                                          ; $79c4: $de $fe
	adc b                                            ; $79c6: $88
	cp a                                             ; $79c7: $bf
	ld a, a                                          ; $79c8: $7f
	ld e, e                                          ; $79c9: $5b
	ld e, a                                          ; $79ca: $5f
	xor a                                            ; $79cb: $af
	and [hl]                                         ; $79cc: $a6
	sbc l                                            ; $79cd: $9d
	ld c, e                                          ; $79ce: $4b
	ld a, [$6e6e]                                    ; $79cf: $fa $6e $6e
	ld [hl], h                                       ; $79d2: $74
	ld sp, hl                                        ; $79d3: $f9
	db $fd                                           ; $79d4: $fd
	cp $7f                                           ; $79d5: $fe $7f
	and l                                            ; $79d7: $a5
	ld d, h                                          ; $79d8: $54
	jp nc, $e9ca                                     ; $79d9: $d2 $ca $e9

	jp hl                                            ; $79dc: $e9


	call c, $ffde                                    ; $79dd: $dc $de $ff
	rst SubAFromDE                                          ; $79e0: $df
	ld a, a                                          ; $79e1: $7f
	adc d                                            ; $79e2: $8a
	ccf                                              ; $79e3: $3f
	scf                                              ; $79e4: $37
	inc hl                                           ; $79e5: $23
	add hl, bc                                       ; $79e6: $09
	cp $fe                                           ; $79e7: $fe $fe
	or $ff                                           ; $79e9: $f6 $ff
	xor $ff                                          ; $79eb: $ee $ff
	halt                                             ; $79ed: $76
	add hl, sp                                       ; $79ee: $39
	dec e                                            ; $79ef: $1d
	rra                                              ; $79f0: $1f
	dec e                                            ; $79f1: $1d
	ld bc, $e3f3                                     ; $79f2: $01 $f3 $e3
	rst GetHLinHL                                          ; $79f5: $cf
	rst $38                                          ; $79f6: $ff
	ld d, b                                          ; $79f7: $50
	sbc $a8                                          ; $79f8: $de $a8
	rst SubAFromDE                                          ; $79fa: $df
	ld c, b                                          ; $79fb: $48
	rst SubAFromDE                                          ; $79fc: $df
	ld d, b                                          ; $79fd: $50
	ld a, d                                          ; $79fe: $7a
	sub h                                            ; $79ff: $94
	sbc $f8                                          ; $7a00: $de $f8
	rst SubAFromDE                                          ; $7a02: $df
	ldh a, [hDisp1_WX]                                     ; $7a03: $f0 $96
	ld d, b                                          ; $7a05: $50
	sub b                                            ; $7a06: $90
	adc b                                            ; $7a07: $88
	ld c, b                                          ; $7a08: $48
	xor b                                            ; $7a09: $a8
	inc l                                            ; $7a0a: $2c
	ld h, h                                          ; $7a0b: $64
	and h                                            ; $7a0c: $a4
	ldh a, [rPCM34]                                  ; $7a0d: $f0 $77
	rst AddAOntoHL                                          ; $7a0f: $ef
	sbc $fc                                          ; $7a10: $de $fc
	db $ed                                           ; $7a12: $ed
	ld d, a                                          ; $7a13: $57
	ld l, a                                          ; $7a14: $6f
	sbc b                                            ; $7a15: $98
	ld [hl], $2c                                     ; $7a16: $36 $2c
	add hl, hl                                       ; $7a18: $29
	ld d, d                                          ; $7a19: $52
	ld d, h                                          ; $7a1a: $54
	ld h, l                                          ; $7a1b: $65
	dec hl                                           ; $7a1c: $2b
	db $dd                                           ; $7a1d: $dd
	ccf                                              ; $7a1e: $3f
	sbc $7f                                          ; $7a1f: $de $7f
	rst SubAFromDE                                          ; $7a21: $df
	ccf                                              ; $7a22: $3f
	adc b                                            ; $7a23: $88
	ld l, a                                          ; $7a24: $6f
	rst $38                                          ; $7a25: $ff
	or $f7                                           ; $7a26: $f6 $f7
	dec hl                                           ; $7a28: $2b
	add hl, hl                                       ; $7a29: $29
	daa                                              ; $7a2a: $27
	sub d                                            ; $7a2b: $92
	ld a, [hl]                                       ; $7a2c: $7e
	sbc e                                            ; $7a2d: $9b
	sbc e                                            ; $7a2e: $9b
	db $fd                                           ; $7a2f: $fd
	ld a, $3f                                        ; $7a30: $3e $3f
	ccf                                              ; $7a32: $3f
	sbc a                                            ; $7a33: $9f
	ld l, c                                          ; $7a34: $69
	push de                                          ; $7a35: $d5
	inc [hl]                                         ; $7a36: $34
	ld [hl], d                                       ; $7a37: $72
	ld a, d                                          ; $7a38: $7a
	ld a, d                                          ; $7a39: $7a
	ld [hl], a                                       ; $7a3a: $77
	sbc $ff                                          ; $7a3b: $de $ff
	rst SubAFromDE                                          ; $7a3d: $df
	rst SubAFromDE                                          ; $7a3e: $df
	add d                                            ; $7a3f: $82
	rst GetHLinHL                                          ; $7a40: $cf
	adc l                                            ; $7a41: $8d
	adc a                                            ; $7a42: $8f
	adc a                                            ; $7a43: $8f
	rst $38                                          ; $7a44: $ff
	rst $38                                          ; $7a45: $ff
	db $fd                                           ; $7a46: $fd
	rst $38                                          ; $7a47: $ff
	ei                                               ; $7a48: $fb
	cp a                                             ; $7a49: $bf
	ld e, l                                          ; $7a4a: $5d
	adc $85                                          ; $7a4b: $ce $85
	add a                                            ; $7a4d: $87
	add a                                            ; $7a4e: $87
	ld [bc], a                                       ; $7a4f: $02
	ld c, h                                          ; $7a50: $4c
	ld [hl], b                                       ; $7a51: $70
	and e                                            ; $7a52: $a3
	rst $38                                          ; $7a53: $ff
	ld d, h                                          ; $7a54: $54
	ld a, [hl+]                                      ; $7a55: $2a
	xor d                                            ; $7a56: $aa
	xor d                                            ; $7a57: $aa
	ld d, d                                          ; $7a58: $52
	ld d, d                                          ; $7a59: $52
	inc d                                            ; $7a5a: $14
	call nc, $dcfc                                   ; $7a5b: $d4 $fc $dc
	cp $df                                           ; $7a5e: $fe $df
	db $fc                                           ; $7a60: $fc
	sub d                                            ; $7a61: $92
	sub h                                            ; $7a62: $94
	and h                                            ; $7a63: $a4
	and d                                            ; $7a64: $a2
	jp nc, $cbaa                                     ; $7a65: $d2 $aa $cb

	sbc c                                            ; $7a68: $99
	ld l, c                                          ; $7a69: $69
	db $fc                                           ; $7a6a: $fc

jr_01c_7a6b:
	ld a, h                                          ; $7a6b: $7c
	ld a, [hl]                                       ; $7a6c: $7e
	ld a, [hl]                                       ; $7a6d: $7e
	cp $2d                                           ; $7a6e: $fe $2d
	ld h, b                                          ; $7a70: $60
	db $f4                                           ; $7a71: $f4
	sbc b                                            ; $7a72: $98
	ld l, h                                          ; $7a73: $6c
	ld e, c                                          ; $7a74: $59
	ld d, d                                          ; $7a75: $52
	and h                                            ; $7a76: $a4
	xor b                                            ; $7a77: $a8
	jp z, $dd56                                      ; $7a78: $ca $56 $dd

	ld a, a                                          ; $7a7b: $7f
	ld [hl], e                                       ; $7a7c: $73
	inc e                                            ; $7a7d: $1c
	adc b                                            ; $7a7e: $88
	ld e, a                                          ; $7a7f: $5f
	ccf                                              ; $7a80: $3f
	dec l                                            ; $7a81: $2d
	cpl                                              ; $7a82: $2f
	ld d, a                                          ; $7a83: $57
	ld d, e                                          ; $7a84: $53
	ld c, [hl]                                       ; $7a85: $4e
	dec l                                            ; $7a86: $2d
	ld a, l                                          ; $7a87: $7d
	scf                                              ; $7a88: $37
	ccf                                              ; $7a89: $3f
	ld a, [hl-]                                      ; $7a8a: $3a
	ld a, h                                          ; $7a8b: $7c
	ld a, [hl]                                       ; $7a8c: $7e
	ld a, a                                          ; $7a8d: $7f
	ccf                                              ; $7a8e: $3f
	jp nc, Jump_01c_69aa                             ; $7a8f: $d2 $aa $69

	push hl                                          ; $7a92: $e5
	db $f4                                           ; $7a93: $f4
	db $f4                                           ; $7a94: $f4
	xor $de                                          ; $7a95: $ee $de
	rst $38                                          ; $7a97: $ff
	rst SubAFromDE                                          ; $7a98: $df
	cp a                                             ; $7a99: $bf
	adc d                                            ; $7a9a: $8a
	sbc a                                            ; $7a9b: $9f
	dec de                                           ; $7a9c: $1b
	rra                                              ; $7a9d: $1f
	rra                                              ; $7a9e: $1f
	rst $38                                          ; $7a9f: $ff
	rst $38                                          ; $7aa0: $ff
	ei                                               ; $7aa1: $fb
	rst $38                                          ; $7aa2: $ff
	rst $38                                          ; $7aa3: $ff
	ld l, a                                          ; $7aa4: $6f
	ei                                               ; $7aa5: $fb
	sbc h                                            ; $7aa6: $9c
	dec bc                                           ; $7aa7: $0b
	ld c, $0e                                        ; $7aa8: $0e $0e
	inc b                                            ; $7aaa: $04
	sub c                                            ; $7aab: $91
	pop af                                           ; $7aac: $f1
	rlca                                             ; $7aad: $07
	rst $38                                          ; $7aae: $ff
	xor b                                            ; $7aaf: $a8
	sbc $54                                          ; $7ab0: $de $54
	rst SubAFromDE                                          ; $7ab2: $df
	and h                                            ; $7ab3: $a4
	sbc l                                            ; $7ab4: $9d
	jr z, @-$56                                      ; $7ab5: $28 $a8

	ld [hl], a                                       ; $7ab7: $77
	inc d                                            ; $7ab8: $14
	halt                                             ; $7ab9: $76
	ld a, h                                          ; $7aba: $7c
	sub a                                            ; $7abb: $97
	jr z, jr_01c_7b06                                ; $7abc: $28 $48

	ld b, h                                          ; $7abe: $44
	and h                                            ; $7abf: $a4
	ld d, h                                          ; $7ac0: $54
	sub h                                            ; $7ac1: $94
	inc [hl]                                         ; $7ac2: $34
	call nc, $0373                                   ; $7ac3: $d4 $73 $03
	dec hl                                           ; $7ac6: $2b
	nop                                              ; $7ac7: $00
	ld d, c                                          ; $7ac8: $51
	inc de                                           ; $7ac9: $13
	ld a, [hl]                                       ; $7aca: $7e
	inc bc                                           ; $7acb: $03
	ld a, l                                          ; $7acc: $7d
	jr jr_01c_7a6b                                   ; $7acd: $18 $9c

	ld [hl], a                                       ; $7acf: $77
	ld l, a                                          ; $7ad0: $6f
	ld a, a                                          ; $7ad1: $7f
	ld a, e                                          ; $7ad2: $7b
	ld sp, hl                                        ; $7ad3: $f9

jr_01c_7ad4:
	sbc b                                            ; $7ad4: $98
	ld [bc], a                                       ; $7ad5: $02
	inc b                                            ; $7ad6: $04
	halt                                             ; $7ad7: $76
	ld e, c                                          ; $7ad8: $59
	ld a, [hl]                                       ; $7ad9: $7e
	ccf                                              ; $7ada: $3f
	rra                                              ; $7adb: $1f
	ld l, a                                          ; $7adc: $6f
	ld c, l                                          ; $7add: $4d
	ld h, a                                          ; $7ade: $67
	ld hl, sp-$6e                                    ; $7adf: $f8 $92
	rst $38                                          ; $7ae1: $ff
	rra                                              ; $7ae2: $1f
	rst GetHLinHL                                          ; $7ae3: $cf
	push bc                                          ; $7ae4: $c5
	rst JumpTable                                          ; $7ae5: $c7
	add e                                            ; $7ae6: $83
	add c                                            ; $7ae7: $81
	add c                                            ; $7ae8: $81
	rst $38                                          ; $7ae9: $ff
	pop de                                           ; $7aea: $d1
	ld c, b                                          ; $7aeb: $48
	ld b, [hl]                                       ; $7aec: $46
	ld b, [hl]                                       ; $7aed: $46
	ld a, e                                          ; $7aee: $7b
	ld hl, sp+$7d                                    ; $7aef: $f8 $7d
	ld c, e                                          ; $7af1: $4b
	sbc l                                            ; $7af2: $9d
	rst $38                                          ; $7af3: $ff
	rlca                                             ; $7af4: $07
	ld [hl], d                                       ; $7af5: $72
	call nz, $f87c                                   ; $7af6: $c4 $7c $f8
	ld [hl], e                                       ; $7af9: $73
	ld hl, sp+$70                                    ; $7afa: $f8 $70
	xor b                                            ; $7afc: $a8
	ld a, d                                          ; $7afd: $7a

jr_01c_7afe:
	sub e                                            ; $7afe: $93
	ld [hl], b                                       ; $7aff: $70
	adc c                                            ; $7b00: $89
	sbc c                                            ; $7b01: $99
	jr nc, jr_01c_7ad4                               ; $7b02: $30 $d0

	jr c, jr_01c_7afe                                ; $7b04: $38 $f8

jr_01c_7b06:
	ld a, b                                          ; $7b06: $78
	ldh a, [$73]                                     ; $7b07: $f0 $73
	adc h                                            ; $7b09: $8c
	ld a, d                                          ; $7b0a: $7a
	ld [hl], h                                       ; $7b0b: $74
	ld [hl], e                                       ; $7b0c: $73
	ld hl, sp-$64                                    ; $7b0d: $f8 $9c
	jr jr_01c_7b49                                   ; $7b0f: $18 $38

	ld a, a                                          ; $7b11: $7f
	sbc $fc                                          ; $7b12: $de $fc
	sub [hl]                                         ; $7b14: $96
	ld a, e                                          ; $7b15: $7b
	nop                                              ; $7b16: $00
	jr @+$2a                                         ; $7b17: $18 $28

	ld l, a                                          ; $7b19: $6f
	and a                                            ; $7b1a: $a7
	sub a                                            ; $7b1b: $97
	sub a                                            ; $7b1c: $97
	ld a, e                                          ; $7b1d: $7b
	ldh a, [hDisp1_LCDC]                                     ; $7b1e: $f0 $8f
	inc h                                            ; $7b20: $24
	or $01                                           ; $7b21: $f6 $01
	inc bc                                           ; $7b23: $03
	dec bc                                           ; $7b24: $0b
	add hl, sp                                       ; $7b25: $39
	call z, $3f07                                    ; $7b26: $cc $07 $3f
	rst $38                                          ; $7b29: $ff
	rst $38                                          ; $7b2a: $ff
	db $fc                                           ; $7b2b: $fc
	db $fc                                           ; $7b2c: $fc
	cp $cf                                           ; $7b2d: $fe $cf
	rlca                                             ; $7b2f: $07
	sbc $04                                          ; $7b30: $de $04
	db $dd                                           ; $7b32: $dd
	ld a, [bc]                                       ; $7b33: $0a
	sbc [hl]                                         ; $7b34: $9e
	ld a, [de]                                       ; $7b35: $1a
	sbc $07                                          ; $7b36: $de $07
	rst SubAFromDE                                          ; $7b38: $df
	rrca                                             ; $7b39: $0f
	sbc $1f                                          ; $7b3a: $de $1f
	sub a                                            ; $7b3c: $97
	add $0d                                          ; $7b3d: $c6 $0d
	ld [hl], b                                       ; $7b3f: $70
	ldh [$e8], a                                     ; $7b40: $e0 $e8
	ld c, [hl]                                       ; $7b42: $4e
	inc e                                            ; $7b43: $1c
	cp $7b                                           ; $7b44: $fe $7b
	ldh [hDisp1_SCY], a                                     ; $7b46: $e0 $90
	sbc a                                            ; $7b48: $9f

jr_01c_7b49:
	rra                                              ; $7b49: $1f
	cp a                                             ; $7b4a: $bf
	rst $38                                          ; $7b4b: $ff
	di                                               ; $7b4c: $f3
	cp a                                             ; $7b4d: $bf
	xor [hl]                                         ; $7b4e: $ae
	and h                                            ; $7b4f: $a4
	sub [hl]                                         ; $7b50: $96
	ld d, d                                          ; $7b51: $52
	ld c, d                                          ; $7b52: $4a
	ld c, c                                          ; $7b53: $49
	ld c, a                                          ; $7b54: $4f
	di                                               ; $7b55: $f3
	cp $76                                           ; $7b56: $fe $76
	adc [hl]                                         ; $7b58: $8e
	rst SubAFromDE                                          ; $7b59: $df
	rst $38                                          ; $7b5a: $ff
	sbc e                                            ; $7b5b: $9b
	ld c, b                                          ; $7b5c: $48
	ret z                                            ; $7b5d: $c8

	sub b                                            ; $7b5e: $90
	ld d, b                                          ; $7b5f: $50
	sbc $20                                          ; $7b60: $de $20
	sbc [hl]                                         ; $7b62: $9e
	ld h, b                                          ; $7b63: $60
	ld a, e                                          ; $7b64: $7b
	sub b                                            ; $7b65: $90
	sbc [hl]                                         ; $7b66: $9e
	ld [hl], b                                       ; $7b67: $70
	ld [hl], a                                       ; $7b68: $77
	ld hl, sp-$62                                    ; $7b69: $f8 $9e
	ret nz                                           ; $7b6b: $c0

	ld h, h                                          ; $7b6c: $64
	call nz, $dae0                                   ; $7b6d: $c4 $e0 $da
	sbc e                                            ; $7b70: $9b
	adc c                                            ; $7b71: $89
	ld h, c                                          ; $7b72: $61
	jr jr_01c_7b7b                                   ; $7b73: $18 $06

	ld a, c                                          ; $7b75: $79
	inc d                                            ; $7b76: $14
	sbc h                                            ; $7b77: $9c
	ld bc, $638f                                     ; $7b78: $01 $8f $63

jr_01c_7b7b:
	ld l, a                                          ; $7b7b: $6f
	ld hl, sp+$74                                    ; $7b7c: $f8 $74
	xor c                                            ; $7b7e: $a9
	sbc e                                            ; $7b7f: $9b
	inc b                                            ; $7b80: $04
	inc c                                            ; $7b81: $0c
	dec c                                            ; $7b82: $0d
	rlca                                             ; $7b83: $07
	ld h, a                                          ; $7b84: $67
	ld hl, sp-$7a                                    ; $7b85: $f8 $86
	ld sp, $f8c6                                     ; $7b87: $31 $c6 $f8
	ld hl, sp-$4c                                    ; $7b8a: $f8 $b4
	daa                                              ; $7b8c: $27
	adc [hl]                                         ; $7b8d: $8e
	rst $38                                          ; $7b8e: $ff
	rst GetHLinHL                                          ; $7b8f: $cf
	rst $38                                          ; $7b90: $ff
	ccf                                              ; $7b91: $3f
	rlca                                             ; $7b92: $07
	ld c, a                                          ; $7b93: $4f
	rst SubAFromDE                                          ; $7b94: $df
	rst $38                                          ; $7b95: $ff
	ld sp, hl                                        ; $7b96: $f9
	xor a                                            ; $7b97: $af
	xor a                                            ; $7b98: $af
	xor d                                            ; $7b99: $aa
	xor d                                            ; $7b9a: $aa
	xor c                                            ; $7b9b: $a9
	and l                                            ; $7b9c: $a5
	inc h                                            ; $7b9d: $24
	daa                                              ; $7b9e: $27
	ld sp, hl                                        ; $7b9f: $f9
	ld a, c                                          ; $7ba0: $79
	ld d, e                                          ; $7ba1: $53
	db $dd                                           ; $7ba2: $dd
	rst $38                                          ; $7ba3: $ff
	sbc e                                            ; $7ba4: $9b
	sub d                                            ; $7ba5: $92
	ld [hl], d                                       ; $7ba6: $72
	inc h                                            ; $7ba7: $24
	inc d                                            ; $7ba8: $14
	sbc $10                                          ; $7ba9: $de $10
	sbc d                                            ; $7bab: $9a

jr_01c_7bac:
	jr nz, jr_01c_7bac                               ; $7bac: $20 $fe

	ld a, [hl]                                       ; $7bae: $7e
	inc a                                            ; $7baf: $3c
	inc e                                            ; $7bb0: $1c
	ld [hl], a                                       ; $7bb1: $77
	ld hl, sp+$6f                                    ; $7bb2: $f8 $6f
	adc b                                            ; $7bb4: $88
	ld a, l                                          ; $7bb5: $7d
	add hl, bc                                       ; $7bb6: $09
	ld h, a                                          ; $7bb7: $67
	ld hl, sp+$7c                                    ; $7bb8: $f8 $7c
	or a                                             ; $7bba: $b7
	ld l, a                                          ; $7bbb: $6f
	xor h                                            ; $7bbc: $ac
	ld a, h                                          ; $7bbd: $7c
	sbc d                                            ; $7bbe: $9a
	ld l, a                                          ; $7bbf: $6f
	ld hl, sp-$65                                    ; $7bc0: $f8 $9b
	ld b, $07                                        ; $7bc2: $06 $07
	rlca                                             ; $7bc4: $07
	inc bc                                           ; $7bc5: $03
	db $fd                                           ; $7bc6: $fd
	sbc h                                            ; $7bc7: $9c
	ld b, $05                                        ; $7bc8: $06 $05
	inc b                                            ; $7bca: $04
	ld [hl], e                                       ; $7bcb: $73
	ld hl, sp-$75                                    ; $7bcc: $f8 $8b
	adc [hl]                                         ; $7bce: $8e
	ret nz                                           ; $7bcf: $c0

	inc sp                                           ; $7bd0: $33
	ld e, a                                          ; $7bd1: $5f
	ld e, a                                          ; $7bd2: $5f
	ld c, d                                          ; $7bd3: $4a
	ld b, b                                          ; $7bd4: $40
	ld a, a                                          ; $7bd5: $7f
	pop af                                           ; $7bd6: $f1
	rst $38                                          ; $7bd7: $ff
	rst $38                                          ; $7bd8: $ff
	db $ec                                           ; $7bd9: $ec
	ldh [$f5], a                                     ; $7bda: $e0 $f5
	rst $38                                          ; $7bdc: $ff
	rst $38                                          ; $7bdd: $ff
	ld d, l                                          ; $7bde: $55
	push de                                          ; $7bdf: $d5
	push de                                          ; $7be0: $d5
	and l                                            ; $7be1: $a5
	db $dd                                           ; $7be2: $dd
	and h                                            ; $7be3: $a4
	reti                                             ; $7be4: $d9


	rst $38                                          ; $7be5: $ff
	sub l                                            ; $7be6: $95
	inc sp                                           ; $7be7: $33
	dec de                                           ; $7be8: $1b
	adc [hl]                                         ; $7be9: $8e
	add [hl]                                         ; $7bea: $86
	add d                                            ; $7beb: $82
	ld b, d                                          ; $7bec: $42
	pop bc                                           ; $7bed: $c1
	pop hl                                           ; $7bee: $e1
	ccf                                              ; $7bef: $3f
	rra                                              ; $7bf0: $1f
	ld l, a                                          ; $7bf1: $6f
	ld hl, sp-$6d                                    ; $7bf2: $f8 $93
	ld h, [hl]                                       ; $7bf4: $66
	ld a, a                                          ; $7bf5: $7f
	ccf                                              ; $7bf6: $3f
	cpl                                              ; $7bf7: $2f
	and [hl]                                         ; $7bf8: $a6
	sub b                                            ; $7bf9: $90
	sub b                                            ; $7bfa: $90
	ldh [$66], a                                     ; $7bfb: $e0 $66
	ld a, c                                          ; $7bfd: $79
	ld sp, $7729                                     ; $7bfe: $31 $29 $77
	ld hl, sp-$1f                                    ; $7c01: $f8 $e1
	ld a, b                                          ; $7c03: $78
	ld a, a                                          ; $7c04: $7f
	rst SubAFromDE                                          ; $7c05: $df
	add b                                            ; $7c06: $80
	rst SubAFromDE                                          ; $7c07: $df
	ret nz                                           ; $7c08: $c0

	sbc [hl]                                         ; $7c09: $9e
	ldh [$67], a                                     ; $7c0a: $e0 $67
	ld hl, sp-$63                                    ; $7c0c: $f8 $9d
	ldh [$c0], a                                     ; $7c0e: $e0 $c0
	ld a, d                                          ; $7c10: $7a
	ld d, l                                          ; $7c11: $55
	cp $67                                           ; $7c12: $fe $67
	ld hl, sp+$30                                    ; $7c14: $f8 $30
	rst SubAFromBC                                          ; $7c16: $e7
	ld [hl], a                                       ; $7c17: $77
	push af                                          ; $7c18: $f5
	ldh a, [c]                                       ; $7c19: $f2
	ld a, a                                          ; $7c1a: $7f
	add $df                                          ; $7c1b: $c6 $df
	ld a, b                                          ; $7c1d: $78
	sbc e                                            ; $7c1e: $9b
	ld a, h                                          ; $7c1f: $7c
	cp h                                             ; $7c20: $bc
	ld a, $1e                                        ; $7c21: $3e $1e
	ld sp, hl                                        ; $7c23: $f9
	sbc [hl]                                         ; $7c24: $9e
	sbc b                                            ; $7c25: $98
	ld a, e                                          ; $7c26: $7b
	or e                                             ; $7c27: $b3
	sbc h                                            ; $7c28: $9c
	ld b, b                                          ; $7c29: $40
	ld h, b                                          ; $7c2a: $60
	ld h, b                                          ; $7c2b: $60
	ld e, e                                          ; $7c2c: $5b
	sub a                                            ; $7c2d: $97
	ld a, e                                          ; $7c2e: $7b
	and h                                            ; $7c2f: $a4
	ld a, e                                          ; $7c30: $7b
	and d                                            ; $7c31: $a2
	ld [$b167], a                                    ; $7c32: $ea $67 $b1
	ld a, [hl]                                       ; $7c35: $7e
	inc de                                           ; $7c36: $13
	sbc l                                            ; $7c37: $9d
	inc bc                                           ; $7c38: $03
	rrca                                             ; $7c39: $0f
	db $fc                                           ; $7c3a: $fc
	ld a, l                                          ; $7c3b: $7d
	sub c                                            ; $7c3c: $91
	ld l, a                                          ; $7c3d: $6f
	ld hl, sp+$7a                                    ; $7c3e: $f8 $7a
	dec de                                           ; $7c40: $1b
	sub d                                            ; $7c41: $92
	ld a, [de]                                       ; $7c42: $1a
	ld e, $3e                                        ; $7c43: $1e $3e
	ld a, $fe                                        ; $7c45: $3e $fe
	rrca                                             ; $7c47: $0f
	add hl, bc                                       ; $7c48: $09
	ld de, $1216                                     ; $7c49: $11 $16 $12
	ld a, $22                                        ; $7c4c: $3e $22
	ld a, [$cb78]                                    ; $7c4e: $fa $78 $cb
	db $fc                                           ; $7c51: $fc
	ld a, d                                          ; $7c52: $7a
	and d                                            ; $7c53: $a2
	ld l, a                                          ; $7c54: $6f
	ld hl, sp-$64                                    ; $7c55: $f8 $9c
	ld a, $1f                                        ; $7c57: $3e $1f
	dec de                                           ; $7c59: $1b
	db $dd                                           ; $7c5a: $dd
	rrca                                             ; $7c5b: $0f
	sub h                                            ; $7c5c: $94
	or $22                                           ; $7c5d: $f6 $22
	inc de                                           ; $7c5f: $13
	dec e                                            ; $7c60: $1d
	add hl, bc                                       ; $7c61: $09
	rrca                                             ; $7c62: $0f
	ld [$0e0f], sp                                   ; $7c63: $08 $0f $0e
	rrca                                             ; $7c66: $0f
	sbc a                                            ; $7c67: $9f
	db $fc                                           ; $7c68: $fc
	sbc [hl]                                         ; $7c69: $9e
	dec c                                            ; $7c6a: $0d
	ld l, e                                          ; $7c6b: $6b
	ld hl, sp+$6f                                    ; $7c6c: $f8 $6f
	add h                                            ; $7c6e: $84
	rst SubAFromDE                                          ; $7c6f: $df
	add b                                            ; $7c70: $80
	ld h, a                                          ; $7c71: $67
	ld hl, sp-$21                                    ; $7c72: $f8 $df
	ret nz                                           ; $7c74: $c0

	ld l, l                                          ; $7c75: $6d
	dec c                                            ; $7c76: $0d
	ld h, a                                          ; $7c77: $67
	ld hl, sp+$6b                                    ; $7c78: $f8 $6b
	jr z, jr_01c_7cd7                                ; $7c7a: $28 $5b

	ld hl, sp+$69                                    ; $7c7c: $f8 $69
	ld c, c                                          ; $7c7e: $49
	ld l, e                                          ; $7c7f: $6b
	ld hl, sp-$21                                    ; $7c80: $f8 $df
	rlca                                             ; $7c82: $07
	adc a                                            ; $7c83: $8f
	dec b                                            ; $7c84: $05
	rrca                                             ; $7c85: $0f
	rst SubAFromDE                                          ; $7c86: $df
	cp a                                             ; $7c87: $bf
	rst $38                                          ; $7c88: $ff
	cp $04                                           ; $7c89: $fe $04
	inc b                                            ; $7c8b: $04
	ld b, $09                                        ; $7c8c: $06 $09
	reti                                             ; $7c8e: $d9


	ld [hl], l                                       ; $7c8f: $75
	di                                               ; $7c90: $f3
	ld a, [$3c7e]                                    ; $7c91: $fa $7e $3c
	ld l, a                                          ; $7c94: $6f
	adc b                                            ; $7c95: $88
	ld h, a                                          ; $7c96: $67
	ld hl, sp-$65                                    ; $7c97: $f8 $9b
	rst $38                                          ; $7c99: $ff
	adc a                                            ; $7c9a: $8f
	adc a                                            ; $7c9b: $8f
	dec c                                            ; $7c9c: $0d
	db $dd                                           ; $7c9d: $dd
	rlca                                             ; $7c9e: $07
	sbc b                                            ; $7c9f: $98
	rst $38                                          ; $7ca0: $ff
	adc c                                            ; $7ca1: $89
	adc b                                            ; $7ca2: $88
	ld c, $04                                        ; $7ca3: $0e $04
	rlca                                             ; $7ca5: $07
	inc b                                            ; $7ca6: $04
	sbc $07                                          ; $7ca7: $de $07
	sbc [hl]                                         ; $7ca9: $9e
	rst GetHLinHL                                          ; $7caa: $cf
	db $fc                                           ; $7cab: $fc
	ld a, [hl]                                       ; $7cac: $7e
	jr c, jr_01c_7d1e                                ; $7cad: $38 $6f

	ld hl, sp+$6b                                    ; $7caf: $f8 $6b
	adc e                                            ; $7cb1: $8b
	ld a, e                                          ; $7cb2: $7b
	ld [$f877], sp                                   ; $7cb3: $08 $77 $f8
	sbc d                                            ; $7cb6: $9a
	ld b, b                                          ; $7cb7: $40
	ret nz                                           ; $7cb8: $c0

	ld h, b                                          ; $7cb9: $60
	ldh [$fe], a                                     ; $7cba: $e0 $fe
	ld l, [hl]                                       ; $7cbc: $6e
	and b                                            ; $7cbd: $a0
	ld l, e                                          ; $7cbe: $6b
	ld hl, sp+$1e                                    ; $7cbf: $f8 $1e
	or $fb                                           ; $7cc1: $f6 $fb
	sbc e                                            ; $7cc3: $9b
	ld a, a                                          ; $7cc4: $7f
	ld a, $3f                                        ; $7cc5: $3e $3f
	rla                                              ; $7cc7: $17
	sbc $1f                                          ; $7cc8: $de $1f
	sub e                                            ; $7cca: $93
	ccf                                              ; $7ccb: $3f
	ld a, a                                          ; $7ccc: $7f
	ld h, $23                                        ; $7ccd: $26 $23
	dec de                                           ; $7ccf: $1b
	rla                                              ; $7cd0: $17
	add hl, de                                       ; $7cd1: $19
	inc de                                           ; $7cd2: $13
	ccf                                              ; $7cd3: $3f
	ld [hl], a                                       ; $7cd4: $77
	rst $38                                          ; $7cd5: $ff
	ld a, a                                          ; $7cd6: $7f

jr_01c_7cd7:
	db $fc                                           ; $7cd7: $fc
	sbc [hl]                                         ; $7cd8: $9e
	ld l, a                                          ; $7cd9: $6f
	ld l, e                                          ; $7cda: $6b
	ld hl, sp-$01                                    ; $7cdb: $f8 $ff
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

jr_01c_7d1e:
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

Jump_01c_7e7b:
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

Call_01c_7e9e:
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

Jump_01c_7fdf:
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
