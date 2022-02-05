; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $049", ROMX[$4000], BANK[$49]

	rst $38                                          ; $4000: $ff
	rst $38                                          ; $4001: $ff
	jr z, jr_049_4028                                ; $4002: $28 $24

	db $e4                                           ; $4004: $e4
	ret z                                            ; $4005: $c8

	db $e4                                           ; $4006: $e4
	db $fc                                           ; $4007: $fc
	cp $fe                                           ; $4008: $fe $fe
	rst SubAFromHL                                          ; $400a: $d7
	db $db                                           ; $400b: $db
	ei                                               ; $400c: $fb
	sbc a                                            ; $400d: $9f
	ld a, e                                          ; $400e: $7b
	db $20, $96                                      ; $400f: $20 $96
	rst $38                                          ; $4011: $ff
	jp nc, $c245                                     ; $4012: $d2 $45 $c2

	ld h, l                                          ; $4015: $65
	ld [hl], d                                       ; $4016: $72
	ld [hl], l                                       ; $4017: $75
	ld [hl], d                                       ; $4018: $72
	ld [hl], l                                       ; $4019: $75
	halt                                             ; $401a: $76
	call nz, $9d9e                                   ; $401b: $c4 $9e $9d
	ld a, e                                          ; $401e: $7b
	cp $80                                           ; $401f: $fe $80
	db $f4                                           ; $4021: $f4
	ld h, b                                          ; $4022: $60
	db $fc                                           ; $4023: $fc
	ld a, d                                          ; $4024: $7a
	db $fd                                           ; $4025: $fd
	ld a, b                                          ; $4026: $78
	db $fd                                           ; $4027: $fd

jr_049_4028:
	ld a, d                                          ; $4028: $7a
	ld h, d                                          ; $4029: $62
	and $62                                          ; $402a: $e6 $62
	push hl                                          ; $402c: $e5
	ld h, d                                          ; $402d: $62
	rst SubAFromBC                                          ; $402e: $e7
	ld h, d                                          ; $402f: $62
	rst SubAFromBC                                          ; $4030: $e7

jr_049_4031:
	add $a4                                          ; $4031: $c6 $a4
	jp $dfaf                                         ; $4033: $c3 $af $df


	cp a                                             ; $4036: $bf
	rst GetHLinHL                                          ; $4037: $cf
	dec l                                            ; $4038: $2d
	add hl, sp                                       ; $4039: $39
	ld e, e                                          ; $403a: $5b
	inc a                                            ; $403b: $3c
	ld e, c                                          ; $403c: $59
	ld a, [hl-]                                      ; $403d: $3a
	ld e, [hl]                                       ; $403e: $5e
	ccf                                              ; $403f: $3f
	sbc [hl]                                         ; $4040: $9e
	rst SubAFromDE                                          ; $4041: $df
	sbc $03                                          ; $4042: $de $03
	adc [hl]                                         ; $4044: $8e
	add l                                            ; $4045: $85
	add hl, hl                                       ; $4046: $29
	add c                                            ; $4047: $81
	ld c, a                                          ; $4048: $4f
	dec b                                            ; $4049: $05
	inc a                                            ; $404a: $3c
	inc a                                            ; $404b: $3c
	ld a, l                                          ; $404c: $7d
	ld a, e                                          ; $404d: $7b
	rst SubAFromHL                                          ; $404e: $d7
	rst $38                                          ; $404f: $ff
	ccf                                              ; $4050: $3f
	inc bc                                           ; $4051: $03
	add h                                            ; $4052: $84
	ld e, d                                          ; $4053: $5a
	xor e                                            ; $4054: $ab
	dec [hl]                                         ; $4055: $35
	sbc $fb                                          ; $4056: $de $fb
	add b                                            ; $4058: $80
	ld sp, hl                                        ; $4059: $f9
	ld a, a                                          ; $405a: $7f
	rst SubAFromBC                                          ; $405b: $e7
	ld d, c                                          ; $405c: $51
	add sp, -$0c                                     ; $405d: $e8 $f4
	rst $38                                          ; $405f: $ff
	db $fc                                           ; $4060: $fc
	db $fc                                           ; $4061: $fc
	ld e, c                                          ; $4062: $59
	adc d                                            ; $4063: $8a
	ld d, c                                          ; $4064: $51
	ld a, [bc]                                       ; $4065: $0a
	ld e, l                                          ; $4066: $5d
	adc b                                            ; $4067: $88
	daa                                              ; $4068: $27
	ld b, e                                          ; $4069: $43
	and [hl]                                         ; $406a: $a6
	ld [hl], l                                       ; $406b: $75
	xor [hl]                                         ; $406c: $ae
	push af                                          ; $406d: $f5
	and d                                            ; $406e: $a2
	rst FarCall                                          ; $406f: $f7
	rst SubAFromDE                                          ; $4070: $df
	cp h                                             ; $4071: $bc
	ld a, a                                          ; $4072: $7f
	ccf                                              ; $4073: $3f
	rra                                              ; $4074: $1f
	inc l                                            ; $4075: $2c
	ld c, a                                          ; $4076: $4f
	rra                                              ; $4077: $1f
	sbc l                                            ; $4078: $9d
	sbc b                                            ; $4079: $98
	rra                                              ; $407a: $1f
	sbc $ff                                          ; $407b: $de $ff
	add b                                            ; $407d: $80
	rst SubAFromDE                                          ; $407e: $df
	or b                                             ; $407f: $b0

Jump_049_4080:
	ldh [$e7], a                                     ; $4080: $e0 $e7
	nop                                              ; $4082: $00
	pop af                                           ; $4083: $f1
	db $fd                                           ; $4084: $fd
	jp hl                                            ; $4085: $e9


	jr nc, jr_049_4031                               ; $4086: $30 $a9

	ld b, e                                          ; $4088: $43
	jp $fe11                                         ; $4089: $c3 $11 $fe


	and $c6                                          ; $408c: $e6 $c6
	adc a                                            ; $408e: $8f
	ld d, a                                          ; $408f: $57
	ccf                                              ; $4090: $3f
	ccf                                              ; $4091: $3f
	ldh [rAUD1SWEEP], a                              ; $4092: $e0 $10
	inc h                                            ; $4094: $24
	ld e, b                                          ; $4095: $58
	db $f4                                           ; $4096: $f4
	or $fb                                           ; $4097: $f6 $fb
	rst $38                                          ; $4099: $ff
	cp a                                             ; $409a: $bf
	rst AddAOntoHL                                          ; $409b: $ef
	db $db                                           ; $409c: $db
	ld a, d                                          ; $409d: $7a
	cp a                                             ; $409e: $bf
	ld a, [hl]                                       ; $409f: $7e
	add c                                            ; $40a0: $81
	sbc l                                            ; $40a1: $9d
	ld a, a                                          ; $40a2: $7f
	ld e, c                                          ; $40a3: $59
	sbc $79                                          ; $40a4: $de $79
	sbc d                                            ; $40a6: $9a
	jr z, @+$01                                      ; $40a7: $28 $ff

	pop hl                                           ; $40a9: $e1
	nop                                              ; $40aa: $00
	rst $38                                          ; $40ab: $ff
	db $dd                                           ; $40ac: $dd
	rst SubAFromDE                                          ; $40ad: $df
	sbc h                                            ; $40ae: $9c
	rst $38                                          ; $40af: $ff
	ld e, $00                                        ; $40b0: $1e $00
	db $dd                                           ; $40b2: $dd
	or $9b                                           ; $40b3: $f6 $9b
	jp nc, rIE                                     ; $40b5: $d2 $ff $ff

	nop                                              ; $40b8: $00
	call c, Call_049_7f3f                            ; $40b9: $dc $3f $7f
	ld sp, hl                                        ; $40bc: $f9
	sbc [hl]                                         ; $40bd: $9e
	nop                                              ; $40be: $00
	db $dd                                           ; $40bf: $dd
	db $dd                                           ; $40c0: $dd
	sbc e                                            ; $40c1: $9b
	db $fd                                           ; $40c2: $fd
	ccf                                              ; $40c3: $3f
	cp a                                             ; $40c4: $bf
	nop                                              ; $40c5: $00
	db $dd                                           ; $40c6: $dd
	ld [hl], $9c                                     ; $40c7: $36 $9c
	ld d, $ff                                        ; $40c9: $16 $ff
	ld b, b                                          ; $40cb: $40
	ld a, b                                          ; $40cc: $78
	adc b                                            ; $40cd: $88
	rst SubAFromDE                                          ; $40ce: $df
	ld e, l                                          ; $40cf: $5d
	sbc e                                            ; $40d0: $9b
	ld e, c                                          ; $40d1: $59
	cp $fe                                           ; $40d2: $fe $fe
	nop                                              ; $40d4: $00
	call c, $8fe6                                    ; $40d5: $dc $e6 $8f
	rst $38                                          ; $40d8: $ff
	ld bc, $5e00                                     ; $40d9: $01 $00 $5e
	ld d, [hl]                                       ; $40dc: $56
	ld d, l                                          ; $40dd: $55
	ld [hl], l                                       ; $40de: $75
	ld [hl], d                                       ; $40df: $72
	db $fd                                           ; $40e0: $fd
	rst $38                                          ; $40e1: $ff
	nop                                              ; $40e2: $00
	push hl                                          ; $40e3: $e5
	db $ed                                           ; $40e4: $ed
	rst AddAOntoHL                                          ; $40e5: $ef
	rst GetHLinHL                                          ; $40e6: $cf
	call $d07b                                       ; $40e7: $cd $7b $d0
	add b                                            ; $40ea: $80
	jp nc, $f0f0                                     ; $40eb: $d2 $f0 $f0

	jp nz, Jump_049_7582                             ; $40ee: $c2 $82 $75

	rst GetHLinHL                                          ; $40f1: $cf
	nop                                              ; $40f2: $00
	ld l, l                                          ; $40f3: $6d
	ld c, a                                          ; $40f4: $4f
	ld c, a                                          ; $40f5: $4f
	ld a, l                                          ; $40f6: $7d
	ld a, l                                          ; $40f7: $7d
	rst $38                                          ; $40f8: $ff
	jr nc, jr_049_40fb                               ; $40f9: $30 $00

jr_049_40fb:
	ld h, b                                          ; $40fb: $60
	ld h, d                                          ; $40fc: $62
	ld h, e                                          ; $40fd: $63
	ld h, e                                          ; $40fe: $63
	ld h, l                                          ; $40ff: $65
	cp a                                             ; $4100: $bf
	rst FarCall                                          ; $4101: $f7
	nop                                              ; $4102: $00
	sbc a                                            ; $4103: $9f
	sbc a                                            ; $4104: $9f
	sbc [hl]                                         ; $4105: $9e
	sbc [hl]                                         ; $4106: $9e
	sbc d                                            ; $4107: $9a
	rst $38                                          ; $4108: $ff
	ld [$0096], sp                                   ; $4109: $08 $96 $00
	or e                                             ; $410c: $b3
	or e                                             ; $410d: $b3
	cp e                                             ; $410e: $bb
	xor e                                            ; $410f: $ab
	ldh [c], a                                       ; $4110: $e2
	dec c                                            ; $4111: $0d
	push hl                                          ; $4112: $e5
	inc bc                                           ; $4113: $03
	db $dd                                           ; $4114: $dd
	ld e, h                                          ; $4115: $5c
	adc [hl]                                         ; $4116: $8e
	dec e                                            ; $4117: $1d
	rst $38                                          ; $4118: $ff
	dec de                                           ; $4119: $1b
	inc bc                                           ; $411a: $03
	sbc [hl]                                         ; $411b: $9e
	adc e                                            ; $411c: $8b
	sub c                                            ; $411d: $91
	dec hl                                           ; $411e: $2b
	ld e, a                                          ; $411f: $5f
	ccf                                              ; $4120: $3f
	rst $38                                          ; $4121: $ff
	rst $38                                          ; $4122: $ff
	ld h, c                                          ; $4123: $61
	ld [hl], h                                       ; $4124: $74
	ld l, [hl]                                       ; $4125: $6e
	rst SubAFromHL                                          ; $4126: $d7
	cp a                                             ; $4127: $bf
	sbc $ff                                          ; $4128: $de $ff
	ld a, a                                          ; $412a: $7f
	ld b, c                                          ; $412b: $41
	sub c                                            ; $412c: $91
	ld a, a                                          ; $412d: $7f
	cpl                                              ; $412e: $2f
	rst SubAFromDE                                          ; $412f: $df
	add l                                            ; $4130: $85
	db $fc                                           ; $4131: $fc
	ld a, $df                                        ; $4132: $3e $df
	rst SubAFromDE                                          ; $4134: $df
	sbc a                                            ; $4135: $9f
	rst SubAFromDE                                          ; $4136: $df
	and a                                            ; $4137: $a7
	ei                                               ; $4138: $fb
	ei                                               ; $4139: $fb
	pop bc                                           ; $413a: $c1
	call c, $9cfc                                    ; $413b: $dc $fc $9c
	db $e4                                           ; $413e: $e4
	inc e                                            ; $413f: $1c
	ldh a, [rPCM12]                                  ; $4140: $f0 $76
	db $10                                           ; $4142: $10
	adc b                                            ; $4143: $88
	di                                               ; $4144: $f3
	ei                                               ; $4145: $fb
	rst $38                                          ; $4146: $ff
	rrca                                             ; $4147: $0f
	ld h, h                                          ; $4148: $64
	ld h, l                                          ; $4149: $65
	ld h, [hl]                                       ; $414a: $66
	ld h, a                                          ; $414b: $67
	ld l, a                                          ; $414c: $6f
	dec b                                            ; $414d: $05
	ld sp, hl                                        ; $414e: $f9
	rst SubAFromDE                                          ; $414f: $df
	sbc e                                            ; $4150: $9b
	sbc d                                            ; $4151: $9a
	sbc c                                            ; $4152: $99
	sbc c                                            ; $4153: $99
	sub c                                            ; $4154: $91
	ei                                               ; $4155: $fb
	rst $38                                          ; $4156: $ff
	db $fd                                           ; $4157: $fd
	sbc b                                            ; $4158: $98
	ld c, c                                          ; $4159: $49
	cp $dc                                           ; $415a: $fe $dc
	rst $38                                          ; $415c: $ff
	sbc h                                            ; $415d: $9c
	ld h, a                                          ; $415e: $67
	cp $df                                           ; $415f: $fe $df
	ld [hl], a                                       ; $4161: $77
	pop bc                                           ; $4162: $c1
	adc [hl]                                         ; $4163: $8e
	rst $38                                          ; $4164: $ff
	add l                                            ; $4165: $85
	inc b                                            ; $4166: $04
	adc b                                            ; $4167: $88
	add [hl]                                         ; $4168: $86
	dec c                                            ; $4169: $0d
	and b                                            ; $416a: $a0
	dec b                                            ; $416b: $05
	ret c                                            ; $416c: $d8

	ld a, b                                          ; $416d: $78
	ld hl, sp+$74                                    ; $416e: $f8 $74
	ld a, b                                          ; $4170: $78
	ldh a, [c]                                       ; $4171: $f2
	ld e, a                                          ; $4172: $5f
	cp $20                                           ; $4173: $fe $20
	cp $d4                                           ; $4175: $fe $d4
	rst $38                                          ; $4177: $ff
	sbc b                                            ; $4178: $98
	xor h                                            ; $4179: $ac
	inc b                                            ; $417a: $04
	nop                                              ; $417b: $00
	add e                                            ; $417c: $83
	jp $e3e3                                         ; $417d: $c3 $e3 $e3


	ld a, e                                          ; $4180: $7b
	or l                                             ; $4181: $b5
	db $db                                           ; $4182: $db
	rst $38                                          ; $4183: $ff
	ld a, a                                          ; $4184: $7f
	ld l, $4f                                        ; $4185: $2e $4f
	ldh [$73], a                                     ; $4187: $e0 $73
	ret nc                                           ; $4189: $d0

	rst SubAFromDE                                          ; $418a: $df
	push af                                          ; $418b: $f5
	ld c, a                                          ; $418c: $4f
	ldh a, [$9e]                                     ; $418d: $f0 $9e
	rst AddAOntoHL                                          ; $418f: $ef
	ld [hl], l                                       ; $4190: $75
	halt                                             ; $4191: $76
	db $db                                           ; $4192: $db
	rst $38                                          ; $4193: $ff
	sub a                                            ; $4194: $97
	ld d, $00                                        ; $4195: $16 $00
	nop                                              ; $4197: $00
	ldh a, [$f8]                                     ; $4198: $f0 $f8
	cp b                                             ; $419a: $b8
	ld hl, sp-$04                                    ; $419b: $f8 $fc
	ld e, e                                          ; $419d: $5b
	ldh [$97], a                                     ; $419e: $e0 $97
	ld [$0204], sp                                   ; $41a0: $08 $04 $02
	nop                                              ; $41a3: $00
	ld h, b                                          ; $41a4: $60
	nop                                              ; $41a5: $00
	add b                                            ; $41a6: $80
	add b                                            ; $41a7: $80
	ld a, d                                          ; $41a8: $7a
	ld a, [de]                                       ; $41a9: $1a
	ld [hl], e                                       ; $41aa: $73
	ldh a, [$fd]                                     ; $41ab: $f0 $fd
	sbc [hl]                                         ; $41ad: $9e
	ld a, a                                          ; $41ae: $7f
	ld a, [$f067]                                    ; $41af: $fa $67 $f0
	inc bc                                           ; $41b2: $03
	ld hl, sp+$0b                                    ; $41b3: $f8 $0b
	ld hl, sp+$7e                                    ; $41b5: $f8 $7e
	adc a                                            ; $41b7: $8f
	ld l, e                                          ; $41b8: $6b
	ldh a, [$97]                                     ; $41b9: $f0 $97
	rlca                                             ; $41bb: $07
	ld b, $04                                        ; $41bc: $06 $04
	ld l, b                                          ; $41be: $68
	ld b, b                                          ; $41bf: $40
	ret nz                                           ; $41c0: $c0

	add b                                            ; $41c1: $80
	inc b                                            ; $41c2: $04
	sbc $07                                          ; $41c3: $de $07
	ld a, h                                          ; $41c5: $7c
	jp c, $ffde                                      ; $41c6: $da $de $ff

	sbc b                                            ; $41c9: $98
	ld d, b                                          ; $41ca: $50
	nop                                              ; $41cb: $00
	nop                                              ; $41cc: $00
	rrca                                             ; $41cd: $0f
	rra                                              ; $41ce: $1f
	ld a, [de]                                       ; $41cf: $1a
	ccf                                              ; $41d0: $3f
	ld [hl], e                                       ; $41d1: $73
	db $f4                                           ; $41d2: $f4
	ld h, e                                          ; $41d3: $63
	ld d, b                                          ; $41d4: $50
	sbc l                                            ; $41d5: $9d
	cp a                                             ; $41d6: $bf
	ld e, a                                          ; $41d7: $5f
	ld d, e                                          ; $41d8: $53
	ld b, b                                          ; $41d9: $40
	sbc l                                            ; $41da: $9d
	ei                                               ; $41db: $fb
	cp l                                             ; $41dc: $bd
	ld c, a                                          ; $41dd: $4f
	ldh a, [$d5]                                     ; $41de: $f0 $d5
	rst $38                                          ; $41e0: $ff
	sub a                                            ; $41e1: $97
	db $f4                                           ; $41e2: $f4
	jr nz, jr_049_41e5                               ; $41e3: $20 $00

jr_049_41e5:
	add e                                            ; $41e5: $83
	rst JumpTable                                          ; $41e6: $c7
	rst JumpTable                                          ; $41e7: $c7
	rst GetHLinHL                                          ; $41e8: $cf
	rst GetHLinHL                                          ; $41e9: $cf
	daa                                              ; $41ea: $27
	ldh [$73], a                                     ; $41eb: $e0 $73
	ld bc, $fa9c                                     ; $41ed: $01 $9c $fa
	ld d, l                                          ; $41f0: $55
	xor d                                            ; $41f1: $aa
	ld [hl], e                                       ; $41f2: $73
	add e                                            ; $41f3: $83
	ld l, e                                          ; $41f4: $6b
	ldh a, [$9b]                                     ; $41f5: $f0 $9b
	ld sp, $59b9                                     ; $41f7: $31 $b9 $59
	xor c                                            ; $41fa: $a9
	ld d, a                                          ; $41fb: $57
	ldh a, [rOCPD]                                   ; $41fc: $f0 $6b
	ret z                                            ; $41fe: $c8

	ld h, e                                          ; $41ff: $63
	ldh a, [$9b]                                     ; $4200: $f0 $9b
	db $fd                                           ; $4202: $fd
	ei                                               ; $4203: $fb
	push af                                          ; $4204: $f5
	ld [$f053], a                                    ; $4205: $ea $53 $f0
	sbc l                                            ; $4208: $9d
	ld [$5375], a                                    ; $4209: $ea $75 $53
	ret nz                                           ; $420c: $c0

	sbc e                                            ; $420d: $9b
	ld a, h                                          ; $420e: $7c
	cp [hl]                                          ; $420f: $be
	ld l, [hl]                                       ; $4210: $6e
	or [hl]                                          ; $4211: $b6
	ld e, a                                          ; $4212: $5f
	ldh a, [$98]                                     ; $4213: $f0 $98
	ldh [$fc], a                                     ; $4215: $e0 $fc
	ld h, $23                                        ; $4217: $26 $23
	ld sp, $0331                                     ; $4219: $31 $31 $03
	cp $7e                                           ; $421c: $fe $7e
	xor d                                            ; $421e: $aa
	rst SubAFromDE                                          ; $421f: $df
	cp $7e                                           ; $4220: $fe $7e
	nop                                              ; $4222: $00
	sbc l                                            ; $4223: $9d
	rlca                                             ; $4224: $07
	inc bc                                           ; $4225: $03
	db $dd                                           ; $4226: $dd
	ld bc, $e09a                                     ; $4227: $01 $9a $e0
	ld hl, sp+$3c                                    ; $422a: $f8 $3c
	ld e, $1e                                        ; $422c: $1e $1e
	sbc $0e                                          ; $422e: $de $0e
	ld e, e                                          ; $4230: $5b
	ld l, b                                          ; $4231: $68
	ld l, [hl]                                       ; $4232: $6e
	rst $38                                          ; $4233: $ff
	inc bc                                           ; $4234: $03
	ldh a, [rVBK]                                    ; $4235: $f0 $4f
	ldh a, [hDisp1_BGP]                                     ; $4237: $f0 $92
	db $fc                                           ; $4239: $fc
	ldh a, [$e0]                                     ; $423a: $f0 $e0
	ret nz                                           ; $423c: $c0

	add b                                            ; $423d: $80
	nop                                              ; $423e: $00
	ld bc, $0301                                     ; $423f: $01 $01 $03
	rra                                              ; $4242: $1f
	inc a                                            ; $4243: $3c
	ld a, b                                          ; $4244: $78
	ld hl, sp-$22                                    ; $4245: $f8 $de
	ldh a, [$7a]                                     ; $4247: $f0 $7a
	pop de                                           ; $4249: $d1
	sbc c                                            ; $424a: $99
	ccf                                              ; $424b: $3f
	call nz, $88cc                                   ; $424c: $c4 $cc $88
	adc b                                            ; $424f: $88
	ret nz                                           ; $4250: $c0

	cp $df                                           ; $4251: $fe $df
	ccf                                              ; $4253: $3f
	rst SubAFromDE                                          ; $4254: $df
	ld a, a                                          ; $4255: $7f
	ld [hl], a                                       ; $4256: $77
	adc $9b                                          ; $4257: $ce $9b
	ld l, e                                          ; $4259: $6b
	ld [hl], l                                       ; $425a: $75
	ld l, d                                          ; $425b: $6a
	ld d, l                                          ; $425c: $55
	ld d, a                                          ; $425d: $57
	ld h, b                                          ; $425e: $60
	sbc h                                            ; $425f: $9c
	cp a                                             ; $4260: $bf
	ld d, l                                          ; $4261: $55
	xor d                                            ; $4262: $aa
	ld c, a                                          ; $4263: $4f
	ldh a, [$9c]                                     ; $4264: $f0 $9c
	ld e, a                                          ; $4266: $5f
	cp a                                             ; $4267: $bf
	ld e, a                                          ; $4268: $5f
	rla                                              ; $4269: $17
	db $10                                           ; $426a: $10
	sbc e                                            ; $426b: $9b
	sbc a                                            ; $426c: $9f
	sub l                                            ; $426d: $95
	ld a, [bc]                                       ; $426e: $0a
	dec d                                            ; $426f: $15
	ld d, e                                          ; $4270: $53
	ldh [$9e], a                                     ; $4271: $e0 $9e
	ld [hl], a                                       ; $4273: $77
	ld e, a                                          ; $4274: $5f
	ret nz                                           ; $4275: $c0

	ld a, [de]                                       ; $4276: $1a
	nop                                              ; $4277: $00
	rst SubAFromHL                                          ; $4278: $d7
	ld d, l                                          ; $4279: $55
	pop bc                                           ; $427a: $c1
	inc sp                                           ; $427b: $33
	push bc                                          ; $427c: $c5
	inc sp                                           ; $427d: $33
	sbc h                                            ; $427e: $9c
	ld h, e                                          ; $427f: $63
	ld [hl], $63                                     ; $4280: $36 $63
	db $dd                                           ; $4282: $dd
	inc sp                                           ; $4283: $33
	ld a, a                                          ; $4284: $7f
	ld a, [$369e]                                    ; $4285: $fa $9e $36
	sbc $66                                          ; $4288: $de $66
	db $dd                                           ; $428a: $dd
	ld b, h                                          ; $428b: $44
	sbc $66                                          ; $428c: $de $66
	call $b877                                       ; $428e: $cd $77 $b8
	add [hl]                                         ; $4291: $86
	sbc $ff                                          ; $4292: $de $ff
	sbc h                                            ; $4294: $9c
	xor e                                            ; $4295: $ab
	ld d, l                                          ; $4296: $55
	ld a, [hl+]                                      ; $4297: $2a
	ld a, [$c09e]                                    ; $4298: $fa $9e $c0
	db $db                                           ; $429b: $db
	rst $38                                          ; $429c: $ff
	sbc h                                            ; $429d: $9c
	ld d, l                                          ; $429e: $55
	xor d                                            ; $429f: $aa
	ld d, l                                          ; $42a0: $55
	ld sp, hl                                        ; $42a1: $f9
	ld b, a                                          ; $42a2: $47
	ldh a, [$9e]                                     ; $42a3: $f0 $9e
	add b                                            ; $42a5: $80
	ld c, e                                          ; $42a6: $4b
	ldh a, [$73]                                     ; $42a7: $f0 $73
	rst SubAFromDE                                          ; $42a9: $df
	ld c, e                                          ; $42aa: $4b
	ldh a, [$9e]                                     ; $42ab: $f0 $9e
	ld a, [$f04b]                                    ; $42ad: $fa $4b $f0
	ld a, a                                          ; $42b0: $7f
	ldh a, [c]                                       ; $42b1: $f2
	sbc [hl]                                         ; $42b2: $9e
	xor d                                            ; $42b3: $aa
	rst FarCall                                          ; $42b4: $f7
	ld b, e                                          ; $42b5: $43
	ldh a, [$99]                                     ; $42b6: $f0 $99
	cp $55                                           ; $42b8: $fe $55
	xor d                                            ; $42ba: $aa
	ld d, h                                          ; $42bb: $54
	ld [bc], a                                       ; $42bc: $02
	ld bc, $dffc                                     ; $42bd: $01 $fc $df
	ld bc, $0085                                     ; $42c0: $01 $85 $00
	inc bc                                           ; $42c3: $03
	ld c, a                                          ; $42c4: $4f
	jr z, jr_049_433f                                ; $42c5: $28 $78

	rst AddAOntoHL                                          ; $42c7: $ef
	rst $38                                          ; $42c8: $ff
	ld h, b                                          ; $42c9: $60
	cp b                                             ; $42ca: $b8
	ldh a, [$3f]                                     ; $42cb: $f0 $3f
	ld [hl], a                                       ; $42cd: $77
	rlca                                             ; $42ce: $07
	rra                                              ; $42cf: $1f
	ccf                                              ; $42d0: $3f
	rst $38                                          ; $42d1: $ff
	rst JumpTable                                          ; $42d2: $c7
	rrca                                             ; $42d3: $0f
	db $fc                                           ; $42d4: $fc
	ld b, $02                                        ; $42d5: $06 $02
	db $fc                                           ; $42d7: $fc
	cp $3f                                           ; $42d8: $fe $3f
	rrca                                             ; $42da: $0f
	rlca                                             ; $42db: $07
	sbc $fc                                          ; $42dc: $de $fc
	rst SubAFromDE                                          ; $42de: $df
	cp $67                                           ; $42df: $fe $67
	ld [hl], d                                       ; $42e1: $72
	sbc h                                            ; $42e2: $9c
	and b                                            ; $42e3: $a0
	ld b, b                                          ; $42e4: $40
	add b                                            ; $42e5: $80
	ld e, a                                          ; $42e6: $5f
	ld [hl], b                                       ; $42e7: $70
	ld d, a                                          ; $42e8: $57
	sub d                                            ; $42e9: $92
	ld [hl], a                                       ; $42ea: $77
	and b                                            ; $42eb: $a0
	sbc [hl]                                         ; $42ec: $9e
	ld a, a                                          ; $42ed: $7f
	ld a, e                                          ; $42ee: $7b
	jr nc, @-$60                                     ; $42ef: $30 $9e

	dec b                                            ; $42f1: $05
	dec de                                           ; $42f2: $1b
	ld h, b                                          ; $42f3: $60
	sbc d                                            ; $42f4: $9a
	push af                                          ; $42f5: $f5
	xor d                                            ; $42f6: $aa
	ld d, l                                          ; $42f7: $55
	xor b                                            ; $42f8: $a8
	ld b, b                                          ; $42f9: $40
	ld e, a                                          ; $42fa: $5f
	ldh a, [$7b]                                     ; $42fb: $f0 $7b
	ld d, d                                          ; $42fd: $52
	sbc [hl]                                         ; $42fe: $9e
	ld d, b                                          ; $42ff: $50
	or $6b                                           ; $4300: $f6 $6b
	call nc, $089e                                   ; $4302: $d4 $9e $08
	ld a, [$079c]                                    ; $4305: $fa $9c $07
	ld d, l                                          ; $4308: $55
	xor d                                            ; $4309: $aa
	ld e, a                                          ; $430a: $5f
	call nc, $f17b                                   ; $430b: $d4 $7b $f1
	ld a, e                                          ; $430e: $7b
	or h                                             ; $430f: $b4
	ld a, e                                          ; $4310: $7b
	ld e, b                                          ; $4311: $58
	ld sp, hl                                        ; $4312: $f9
	sbc h                                            ; $4313: $9c

jr_049_4314:
	rra                                              ; $4314: $1f
	rst $38                                          ; $4315: $ff
	rst $38                                          ; $4316: $ff
	ld d, [hl]                                       ; $4317: $56
	add sp, -$23                                     ; $4318: $e8 $dd
	rst $38                                          ; $431a: $ff
	ld d, d                                          ; $431b: $52
	rst JumpTable                                          ; $431c: $c7
	dec de                                           ; $431d: $1b
	ldh a, [$9e]                                     ; $431e: $f0 $9e
	ldh a, [rWX]                                     ; $4320: $f0 $4b
	ldh a, [$9e]                                     ; $4322: $f0 $9e
	nop                                              ; $4324: $00
	ld l, a                                          ; $4325: $6f
	inc hl                                           ; $4326: $23
	ld e, a                                          ; $4327: $5f
	ldh a, [rOCPD]                                   ; $4328: $f0 $6b
	adc $07                                          ; $432a: $ce $07
	ldh a, [$9c]                                     ; $432c: $f0 $9c
	rlca                                             ; $432e: $07
	jr c, jr_049_4314                                ; $432f: $38 $e3

	ld l, e                                          ; $4331: $6b
	ld h, l                                          ; $4332: $65
	sbc [hl]                                         ; $4333: $9e
	inc e                                            ; $4334: $1c
	call c, $9eff                                    ; $4335: $dc $ff $9e
	ldh [rOCPS], a                                   ; $4338: $e0 $6a
	and $9d                                          ; $433a: $e6 $9d
	rra                                              ; $433c: $1f
	ld a, a                                          ; $433d: $7f
	db $db                                           ; $433e: $db

jr_049_433f:
	rst $38                                          ; $433f: $ff
	sbc [hl]                                         ; $4340: $9e
	inc bc                                           ; $4341: $03
	ld l, e                                          ; $4342: $6b
	ld d, e                                          ; $4343: $53
	reti                                             ; $4344: $d9


	rst $38                                          ; $4345: $ff
	sbc h                                            ; $4346: $9c
	ldh [$f8], a                                     ; $4347: $e0 $f8
	ld a, l                                          ; $4349: $7d
	db $fc                                           ; $434a: $fc
	ld a, a                                          ; $434b: $7f
	ld hl, sp+$6f                                    ; $434c: $f8 $6f
	adc a                                            ; $434e: $8f
	inc bc                                           ; $434f: $03
	sub b                                            ; $4350: $90
	ld e, e                                          ; $4351: $5b
	inc d                                            ; $4352: $14
	ld d, e                                          ; $4353: $53
	ldh a, [$da]                                     ; $4354: $f0 $da
	rst $38                                          ; $4356: $ff
	sbc [hl]                                         ; $4357: $9e
	jr nz, jr_049_43a9                               ; $4358: $20 $4f

	pop hl                                           ; $435a: $e1
	inc bc                                           ; $435b: $03
	nop                                              ; $435c: $00
	ld a, [$019e]                                    ; $435d: $fa $9e $01
	reti                                             ; $4360: $d9


	rst $38                                          ; $4361: $ff
	sbc [hl]                                         ; $4362: $9e
	inc a                                            ; $4363: $3c
	ld a, d                                          ; $4364: $7a
	ld l, a                                          ; $4365: $6f
	sbc e                                            ; $4366: $9b
	rst $38                                          ; $4367: $ff
	rst FarCall                                          ; $4368: $f7
	dec bc                                           ; $4369: $0b
	ld b, c                                          ; $436a: $41
	ld a, c                                          ; $436b: $79
	add l                                            ; $436c: $85
	sub d                                            ; $436d: $92
	adc $e2                                          ; $436e: $ce $e2
	ld sp, hl                                        ; $4370: $f9
	db $fc                                           ; $4371: $fc
	cp [hl]                                          ; $4372: $be
	nop                                              ; $4373: $00
	ccf                                              ; $4374: $3f
	rst $38                                          ; $4375: $ff
	rst AddAOntoHL                                          ; $4376: $ef
	cp a                                             ; $4377: $bf
	ld a, [hl]                                       ; $4378: $7e
	inc sp                                           ; $4379: $33
	db $dd                                           ; $437a: $dd
	ld a, c                                          ; $437b: $79
	ld [hl], h                                       ; $437c: $74
	sub d                                            ; $437d: $92
	rst FarCall                                          ; $437e: $f7
	ld [hl], e                                       ; $437f: $73
	sbc c                                            ; $4380: $99
	call z, $0022                                    ; $4381: $cc $22 $00
	ld [$2bff], a                                    ; $4384: $ea $ff $2b
	rst SubAFromDE                                          ; $4387: $df
	rst SubAFromBC                                          ; $4388: $e7
	ld [hl], e                                       ; $4389: $73
	sbc e                                            ; $438a: $9b
	ld a, e                                          ; $438b: $7b
	cp [hl]                                          ; $438c: $be
	sub d                                            ; $438d: $92
	rst FarCall                                          ; $438e: $f7
	inc sp                                           ; $438f: $33
	sbc c                                            ; $4390: $99
	call z, $0064                                    ; $4391: $cc $64 $00
	add b                                            ; $4394: $80
	add b                                            ; $4395: $80
	or e                                             ; $4396: $b3
	ld sp, hl                                        ; $4397: $f9
	ld a, a                                          ; $4398: $7f
	xor e                                            ; $4399: $ab
	or l                                             ; $439a: $b5
	ld a, e                                          ; $439b: $7b
	ldh a, [$9a]                                     ; $439c: $f0 $9a
	ld a, a                                          ; $439e: $7f
	inc sp                                           ; $439f: $33
	sbc c                                            ; $43a0: $99
	call c, Call_049_7b4e                            ; $43a1: $dc $4e $7b
	add [hl]                                         ; $43a4: $86
	sbc d                                            ; $43a5: $9a
	dec a                                            ; $43a6: $3d
	ld a, d                                          ; $43a7: $7a
	xor a                                            ; $43a8: $af

jr_049_43a9:
	db $fd                                           ; $43a9: $fd
	rst SubAFromDE                                          ; $43aa: $df
	ld a, e                                          ; $43ab: $7b
	ld l, $8e                                        ; $43ac: $2e $8e
	rst $38                                          ; $43ae: $ff
	sbc l                                            ; $43af: $9d
	call c, Call_049_66ce                            ; $43b0: $dc $ce $66
	nop                                              ; $43b3: $00
	nop                                              ; $43b4: $00
	rst AddAOntoHL                                          ; $43b5: $ef
	rst AddAOntoHL                                          ; $43b6: $ef
	rst SubAFromDE                                          ; $43b7: $df
	ei                                               ; $43b8: $fb
	ld a, a                                          ; $43b9: $7f
	db $eb                                           ; $43ba: $eb
	nop                                              ; $43bb: $00
	nop                                              ; $43bc: $00
	db $10                                           ; $43bd: $10
	rst $38                                          ; $43be: $ff
	sbc $e7                                          ; $43bf: $de $e7
	sbc [hl]                                         ; $43c1: $9e
	ld [hl], a                                       ; $43c2: $77
	ld [hl], a                                       ; $43c3: $77
	ret c                                            ; $43c4: $d8

	sbc e                                            ; $43c5: $9b
	ld a, [$fffe]                                    ; $43c6: $fa $fe $ff
	jp c, $7d77                                      ; $43c9: $da $77 $7d

	sbc e                                            ; $43cc: $9b
	dec a                                            ; $43cd: $3d
	add hl, sp                                       ; $43ce: $39
	add hl, sp                                       ; $43cf: $39
	dec a                                            ; $43d0: $3d
	ld [hl], a                                       ; $43d1: $77
	halt                                             ; $43d2: $76
	db $dd                                           ; $43d3: $dd
	xor a                                            ; $43d4: $af
	ld [hl], a                                       ; $43d5: $77
	ldh a, [$dd]                                     ; $43d6: $f0 $dd
	call c, $f077                                    ; $43d8: $dc $77 $f0
	sbc e                                            ; $43db: $9b
	db $dd                                           ; $43dc: $dd
	rst SubAFromDE                                          ; $43dd: $df
	db $dd                                           ; $43de: $dd
	push de                                          ; $43df: $d5
	ld [hl], a                                       ; $43e0: $77
	ldh a, [$9b]                                     ; $43e1: $f0 $9b
	xor $ec                                          ; $43e3: $ee $ec
	xor $ee                                          ; $43e5: $ee $ee
	ld [hl], a                                       ; $43e7: $77
	ldh a, [$9b]                                     ; $43e8: $f0 $9b
	sbc $df                                          ; $43ea: $de $df
	rst SubAFromDE                                          ; $43ec: $df
	ld e, a                                          ; $43ed: $5f
	ld [hl], a                                       ; $43ee: $77
	ldh a, [$9e]                                     ; $43ef: $f0 $9e
	rst AddAOntoHL                                          ; $43f1: $ef
	sbc $ee                                          ; $43f2: $de $ee
	ld [hl], a                                       ; $43f4: $77
	ldh a, [$9c]                                     ; $43f5: $f0 $9c
	db $eb                                           ; $43f7: $eb
	ei                                               ; $43f8: $fb
	ei                                               ; $43f9: $fb
	ld a, e                                          ; $43fa: $7b
	or b                                             ; $43fb: $b0
	ld a, a                                          ; $43fc: $7f
	rst FarCall                                          ; $43fd: $f7
	db $dd                                           ; $43fe: $dd
	ld [hl], a                                       ; $43ff: $77
	ld [hl], a                                       ; $4400: $77
	ldh a, [$9e]                                     ; $4401: $f0 $9e
	cp e                                             ; $4403: $bb
	sbc $fb                                          ; $4404: $de $fb
	ld [hl], e                                       ; $4406: $73
	ldh a, [$de]                                     ; $4407: $f0 $de
	scf                                              ; $4409: $37
	ld [hl], a                                       ; $440a: $77
	ldh a, [$9c]                                     ; $440b: $f0 $9c
	db $fd                                           ; $440d: $fd
	rst $38                                          ; $440e: $ff
	db $fd                                           ; $440f: $fd
	ld [hl], e                                       ; $4410: $73
	ret nz                                           ; $4411: $c0

	sbc e                                            ; $4412: $9b
	dec sp                                           ; $4413: $3b
	add hl, sp                                       ; $4414: $39
	dec sp                                           ; $4415: $3b
	dec sp                                           ; $4416: $3b
	ld a, c                                          ; $4417: $79
	push af                                          ; $4418: $f5
	sbc [hl]                                         ; $4419: $9e
	sbc $7b                                          ; $441a: $de $7b
	rst AddAOntoHL                                          ; $441c: $ef
	ld a, e                                          ; $441d: $7b
	jr jr_049_449e                                   ; $441e: $18 $7e

	ld a, a                                          ; $4420: $7f
	rst SubAFromDE                                          ; $4421: $df
	sbc [hl]                                         ; $4422: $9e
	rst SubAFromDE                                          ; $4423: $df
	sbc h                                            ; $4424: $9c
	sub a                                            ; $4425: $97
	nop                                              ; $4426: $00
	ld a, [bc]                                       ; $4427: $0a
	nop                                              ; $4428: $00
	rst FarCall                                          ; $4429: $f7
	rst $38                                          ; $442a: $ff
	ld l, a                                          ; $442b: $6f
	ld a, a                                          ; $442c: $7f
	db $dd                                           ; $442d: $dd
	ld [hl], a                                       ; $442e: $77
	ret c                                            ; $442f: $d8

	sub [hl]                                         ; $4430: $96
	ld [hl], e                                       ; $4431: $73
	rst FarCall                                          ; $4432: $f7
	rst SubAFromBC                                          ; $4433: $e7
	and $00                                          ; $4434: $e6 $00
	xor d                                            ; $4436: $aa
	ld a, a                                          ; $4437: $7f
	sbc [hl]                                         ; $4438: $9e
	ld a, [$bd7b]                                    ; $4439: $fa $7b $bd
	ld a, e                                          ; $443c: $7b
	ldh a, [hDisp1_BGP]                                     ; $443d: $f0 $92
	db $fd                                           ; $443f: $fd
	sbc l                                            ; $4440: $9d
	add hl, sp                                       ; $4441: $39
	inc sp                                           ; $4442: $33
	ld h, [hl]                                       ; $4443: $66
	nop                                              ; $4444: $00
	xor a                                            ; $4445: $af
	rst $38                                          ; $4446: $ff
	rst SubAFromDE                                          ; $4447: $df
	rst $38                                          ; $4448: $ff
	rst $38                                          ; $4449: $ff
	sbc a                                            ; $444a: $9f
	reti                                             ; $444b: $d9


	ld [hl], a                                       ; $444c: $77
	add c                                            ; $444d: $81
	sbc e                                            ; $444e: $9b
	call z, $3399                                    ; $444f: $cc $99 $33
	ld h, $7b                                        ; $4452: $26 $7b
	reti                                             ; $4454: $d9


	sbc e                                            ; $4455: $9b
	ld a, h                                          ; $4456: $7c
	cp $ff                                           ; $4457: $fe $ff
	cp $77                                           ; $4459: $fe $77
	ldh [hDisp1_BGP], a                                     ; $445b: $e0 $92
	rst AddAOntoHL                                          ; $445d: $ef
	call $3399                                       ; $445e: $cd $99 $33
	ld h, h                                          ; $4461: $64
	inc bc                                           ; $4462: $03
	adc a                                            ; $4463: $8f
	rst $38                                          ; $4464: $ff
	rst SubAFromHL                                          ; $4465: $d7
	cp a                                             ; $4466: $bf
	ld [hl], a                                       ; $4467: $77
	rst AddAOntoHL                                          ; $4468: $ef
	cp e                                             ; $4469: $bb
	ld a, e                                          ; $446a: $7b
	or c                                             ; $446b: $b1
	ld a, e                                          ; $446c: $7b
	ldh [hDisp1_WX], a                                     ; $446d: $e0 $96
	ld [hl-], a                                      ; $446f: $32
	ld b, h                                          ; $4470: $44
	ei                                               ; $4471: $fb
	rst $38                                          ; $4472: $ff
	di                                               ; $4473: $f3
	ei                                               ; $4474: $fb
	cp a                                             ; $4475: $bf
	ld a, a                                          ; $4476: $7f
	db $e3                                           ; $4477: $e3
	ld a, c                                          ; $4478: $79
	halt                                             ; $4479: $76
	sbc d                                            ; $447a: $9a
	rst $38                                          ; $447b: $ff
	ld h, a                                          ; $447c: $67
	rst GetHLinHL                                          ; $447d: $cf
	sbc a                                            ; $447e: $9f
	ccf                                              ; $447f: $3f
	ld h, [hl]                                       ; $4480: $66
	xor a                                            ; $4481: $af
	sbc [hl]                                         ; $4482: $9e
	jr nc, jr_049_44e2                               ; $4483: $30 $5d

	cp c                                             ; $4485: $b9
	sbc c                                            ; $4486: $99
	rst FarCall                                          ; $4487: $f7
	db $fd                                           ; $4488: $fd
	cp a                                             ; $4489: $bf
	push af                                          ; $448a: $f5
	or a                                             ; $448b: $b7
	rst $38                                          ; $448c: $ff
	ld h, l                                          ; $448d: $65
	ld e, h                                          ; $448e: $5c
	ld a, e                                          ; $448f: $7b
	ld [hl], l                                       ; $4490: $75
	sbc c                                            ; $4491: $99
	xor l                                            ; $4492: $ad
	rst $38                                          ; $4493: $ff
	xor l                                            ; $4494: $ad
	xor l                                            ; $4495: $ad
	rst $38                                          ; $4496: $ff
	ld [bc], a                                       ; $4497: $02
	ld a, [$d996]                                    ; $4498: $fa $96 $d9
	rst $38                                          ; $449b: $ff

Jump_049_449c:
	rst AddAOntoHL                                          ; $449c: $ef
	ld a, l                                          ; $449d: $7d

jr_049_449e:
	rst AddAOntoHL                                          ; $449e: $ef
	ld l, l                                          ; $449f: $6d
	db $eb                                           ; $44a0: $eb
	rst $38                                          ; $44a1: $ff
	ld h, $63                                        ; $44a2: $26 $63
	ret nc                                           ; $44a4: $d0

	ld a, a                                          ; $44a5: $7f
	ldh a, [$9a]                                     ; $44a6: $f0 $9a
	xor a                                            ; $44a8: $af
	ld a, l                                          ; $44a9: $7d
	xor a                                            ; $44aa: $af
	rst $38                                          ; $44ab: $ff
	inc hl                                           ; $44ac: $23
	ld a, [$e67f]                                    ; $44ad: $fa $7f $e6
	sbc c                                            ; $44b0: $99
	rst FarCall                                          ; $44b1: $f7
	cp a                                             ; $44b2: $bf
	or $bf                                           ; $44b3: $f6 $bf
	or $ff                                           ; $44b5: $f6 $ff
	ld a, e                                          ; $44b7: $7b
	daa                                              ; $44b8: $27
	db $fc                                           ; $44b9: $fc
	sub [hl]                                         ; $44ba: $96
	ld e, e                                          ; $44bb: $5b
	rst $38                                          ; $44bc: $ff
	rst $38                                          ; $44bd: $ff
	or a                                             ; $44be: $b7
	db $fd                                           ; $44bf: $fd
	or a                                             ; $44c0: $b7
	db $fd                                           ; $44c1: $fd
	and c                                            ; $44c2: $a1
	cp h                                             ; $44c3: $bc
	ld a, [$d67f]                                    ; $44c4: $fa $7f $d6
	sbc c                                            ; $44c7: $99
	db $ed                                           ; $44c8: $ed
	ld a, a                                          ; $44c9: $7f
	db $ed                                           ; $44ca: $ed
	ld a, h                                          ; $44cb: $7c
	xor c                                            ; $44cc: $a9
	rst AddAOntoHL                                          ; $44cd: $ef
	ld a, d                                          ; $44ce: $7a
	rst JumpTable                                          ; $44cf: $c7
	ld l, h                                          ; $44d0: $6c
	ret nc                                           ; $44d1: $d0

	sbc b                                            ; $44d2: $98
	rst $38                                          ; $44d3: $ff
	cp [hl]                                          ; $44d4: $be
	push af                                          ; $44d5: $f5
	cp [hl]                                          ; $44d6: $be
	push af                                          ; $44d7: $f5
	sbc h                                            ; $44d8: $9c
	db $fd                                           ; $44d9: $fd
	ld a, d                                          ; $44da: $7a
	rst SubAFromHL                                          ; $44db: $d7
	db $fc                                           ; $44dc: $fc
	sub l                                            ; $44dd: $95
	ld d, c                                          ; $44de: $51
	sbc l                                            ; $44df: $9d
	or a                                             ; $44e0: $b7
	sub l                                            ; $44e1: $95

jr_049_44e2:
	or a                                             ; $44e2: $b7
	sub l                                            ; $44e3: $95
	or [hl]                                          ; $44e4: $b6
	rst FarCall                                          ; $44e5: $f7
	xor $62                                          ; $44e6: $ee $62
	ei                                               ; $44e8: $fb
	sub l                                            ; $44e9: $95
	adc e                                            ; $44ea: $8b
	ld a, b                                          ; $44eb: $78
	xor l                                            ; $44ec: $ad
	ld l, a                                          ; $44ed: $6f
	xor l                                            ; $44ee: $ad
	ld h, a                                          ; $44ef: $67
	xor l                                            ; $44f0: $ad
	db $fd                                           ; $44f1: $fd
	ld [hl], a                                       ; $44f2: $77
	add a                                            ; $44f3: $87
	ei                                               ; $44f4: $fb
	sbc l                                            ; $44f5: $9d
	ret z                                            ; $44f6: $c8

	rst SubAFromDE                                          ; $44f7: $df
	ld a, e                                          ; $44f8: $7b
	ld [hl], c                                       ; $44f9: $71
	sbc e                                            ; $44fa: $9b
	ld a, a                                          ; $44fb: $7f
	xor l                                            ; $44fc: $ad
	cp a                                             ; $44fd: $bf
	scf                                              ; $44fe: $37
	ld l, c                                          ; $44ff: $69
	rst JumpTable                                          ; $4500: $c7
	sbc l                                            ; $4501: $9d
	call nz, Call_049_77ff                           ; $4502: $c4 $ff $77
	sub c                                            ; $4505: $91
	sbc l                                            ; $4506: $9d
	or [hl]                                          ; $4507: $b6
	cp a                                             ; $4508: $bf
	ld a, d                                          ; $4509: $7a
	rst JumpTable                                          ; $450a: $c7
	db $fc                                           ; $450b: $fc
	sbc [hl]                                         ; $450c: $9e
	ld h, e                                          ; $450d: $63
	ld a, d                                          ; $450e: $7a
	ld [hl], c                                       ; $450f: $71
	ld a, a                                          ; $4510: $7f
	cp $9c                                           ; $4511: $fe $9c
	db $fd                                           ; $4513: $fd
	add a                                            ; $4514: $87
	sbc h                                            ; $4515: $9c
	ld a, [$1197]                                    ; $4516: $fa $97 $11
	rst $38                                          ; $4519: $ff
	rst FarCall                                          ; $451a: $f7
	rst $38                                          ; $451b: $ff
	or l                                             ; $451c: $b5
	rst FarCall                                          ; $451d: $f7
	xor h                                            ; $451e: $ac
	rst $38                                          ; $451f: $ff
	ld h, a                                          ; $4520: $67
	and b                                            ; $4521: $a0
	ld a, e                                          ; $4522: $7b
	ldh a, [$7b]                                     ; $4523: $f0 $7b
	rst GetHLinHL                                          ; $4525: $cf
	sbc [hl]                                         ; $4526: $9e
	or [hl]                                          ; $4527: $b6
	ld h, e                                          ; $4528: $63
	ldh a, [hDisp1_WX]                                     ; $4529: $f0 $96
	db $db                                           ; $452b: $db
	rst $38                                          ; $452c: $ff
	rst FarCall                                          ; $452d: $f7
	cp [hl]                                          ; $452e: $be
	rst FarCall                                          ; $452f: $f7
	cp [hl]                                          ; $4530: $be
	or [hl]                                          ; $4531: $b6
	rst $38                                          ; $4532: $ff
	inc h                                            ; $4533: $24
	ld a, [$b39e]                                    ; $4534: $fa $9e $b3
	ld a, d                                          ; $4537: $7a
	ld b, c                                          ; $4538: $41
	sbc d                                            ; $4539: $9a
	ei                                               ; $453a: $fb
	sbc $da                                          ; $453b: $de $da
	rst $38                                          ; $453d: $ff
	ld c, h                                          ; $453e: $4c
	ld h, e                                          ; $453f: $63
	ld d, b                                          ; $4540: $50
	ld a, [hl]                                       ; $4541: $7e
	and b                                            ; $4542: $a0
	sbc d                                            ; $4543: $9a
	ei                                               ; $4544: $fb
	rst SubAFromDE                                          ; $4545: $df
	db $db                                           ; $4546: $db
	rst $38                                          ; $4547: $ff
	ret c                                            ; $4548: $d8

	ld h, l                                          ; $4549: $65
	ld a, b                                          ; $454a: $78
	ldh a, [c]                                       ; $454b: $f2
	sbc e                                            ; $454c: $9b
	cp e                                             ; $454d: $bb
	cp a                                             ; $454e: $bf
	or a                                             ; $454f: $b7
	or a                                             ; $4550: $b7
	db $dd                                           ; $4551: $dd
	rst FarCall                                          ; $4552: $f7
	sbc e                                            ; $4553: $9b
	ld b, h                                          ; $4554: $44
	ld b, [hl]                                       ; $4555: $46
	ld c, a                                          ; $4556: $4f
	ld c, a                                          ; $4557: $4f
	db $dd                                           ; $4558: $dd
	rst GetHLinHL                                          ; $4559: $cf
	ld [hl], l                                       ; $455a: $75
	ld d, a                                          ; $455b: $57
	ld a, c                                          ; $455c: $79
	ld [hl], h                                       ; $455d: $74
	halt                                             ; $455e: $76
	xor b                                            ; $455f: $a8
	ld [hl], b                                       ; $4560: $70
	inc l                                            ; $4561: $2c
	ld [hl], a                                       ; $4562: $77
	ldh a, [$71]                                     ; $4563: $f0 $71
	ld b, e                                          ; $4565: $43
	ld l, c                                          ; $4566: $69
	inc a                                            ; $4567: $3c
	inc bc                                           ; $4568: $03
	ldh a, [rWX]                                     ; $4569: $f0 $4b
	ldh a, [$9e]                                     ; $456b: $f0 $9e
	ld e, $79                                        ; $456d: $1e $79
	or e                                             ; $456f: $b3
	ld a, d                                          ; $4570: $7a
	ld e, d                                          ; $4571: $5a
	sbc l                                            ; $4572: $9d
	rst $38                                          ; $4573: $ff
	db $e3                                           ; $4574: $e3
	sbc $23                                          ; $4575: $de $23
	db $dd                                           ; $4577: $dd
	db $e3                                           ; $4578: $e3
	ld a, c                                          ; $4579: $79
	ld [hl], c                                       ; $457a: $71
	ld l, e                                          ; $457b: $6b
	and b                                            ; $457c: $a0
	rst SubAFromDE                                          ; $457d: $df
	add b                                            ; $457e: $80
	inc bc                                           ; $457f: $03
	ret nz                                           ; $4580: $c0

	inc bc                                           ; $4581: $03
	ldh a, [rPCM34]                                  ; $4582: $f0 $77
	db $f4                                           ; $4584: $f4
	rst SubAFromDE                                          ; $4585: $df
	cp $7e                                           ; $4586: $fe $7e
	dec sp                                           ; $4588: $3b
	rst SubAFromDE                                          ; $4589: $df
	cp $7f                                           ; $458a: $fe $7f
	rst FarCall                                          ; $458c: $f7
	rst SubAFromDE                                          ; $458d: $df
	ld bc, $ffdd                                     ; $458e: $01 $dd $ff
	sbc [hl]                                         ; $4591: $9e
	ld [hl], b                                       ; $4592: $70
	sbc $73                                          ; $4593: $de $73
	sbc [hl]                                         ; $4595: $9e
	ld [hl], b                                       ; $4596: $70
	sbc $77                                          ; $4597: $de $77
	sbc [hl]                                         ; $4599: $9e
	adc a                                            ; $459a: $8f
	sbc $8c                                          ; $459b: $de $8c
	db $dd                                           ; $459d: $dd
	adc a                                            ; $459e: $8f
	inc bc                                           ; $459f: $03
	ret nz                                           ; $45a0: $c0

	inc bc                                           ; $45a1: $03
	ldh a, [$9d]                                     ; $45a2: $f0 $9d
	cp $fc                                           ; $45a4: $fe $fc
	ld l, e                                          ; $45a6: $6b
	and b                                            ; $45a7: $a0
	sbc [hl]                                         ; $45a8: $9e
	inc bc                                           ; $45a9: $03
	db $dd                                           ; $45aa: $dd
	rst $38                                          ; $45ab: $ff
	sbc l                                            ; $45ac: $9d
	dec e                                            ; $45ad: $1d
	sbc l                                            ; $45ae: $9d
	sbc $1d                                          ; $45af: $de $1d
	sbc $1f                                          ; $45b1: $de $1f
	sbc e                                            ; $45b3: $9b
	ldh [c], a                                       ; $45b4: $e2
	ld h, d                                          ; $45b5: $62
	ldh [c], a                                       ; $45b6: $e2
	ldh [c], a                                       ; $45b7: $e2
	db $dd                                           ; $45b8: $dd
	db $e3                                           ; $45b9: $e3
	sbc $f7                                          ; $45ba: $de $f7
	call c, $deff                                    ; $45bc: $dc $ff $de
	rst GetHLinHL                                          ; $45bf: $cf
	call c, $9dff                                    ; $45c0: $dc $ff $9d
	rlca                                             ; $45c3: $07
	nop                                              ; $45c4: $00
	ld a, c                                          ; $45c5: $79
	add [hl]                                         ; $45c6: $86
	sbc h                                            ; $45c7: $9c

jr_049_45c8:
	and b                                            ; $45c8: $a0
	ret nz                                           ; $45c9: $c0

	ldh [$d8], a                                     ; $45ca: $e0 $d8
	rst $38                                          ; $45cc: $ff
	halt                                             ; $45cd: $76
	adc [hl]                                         ; $45ce: $8e
	sbc [hl]                                         ; $45cf: $9e
	ld a, a                                          ; $45d0: $7f
	ld a, b                                          ; $45d1: $78
	ld a, [hl+]                                      ; $45d2: $2a
	ld d, a                                          ; $45d3: $57
	ldh a, [$6f]                                     ; $45d4: $f0 $6f
	sbc [hl]                                         ; $45d6: $9e
	inc bc                                           ; $45d7: $03
	ldh a, [$db]                                     ; $45d8: $f0 $db
	rst $38                                          ; $45da: $ff
	sbc [hl]                                         ; $45db: $9e
	rst AddAOntoHL                                          ; $45dc: $ef
	call c, $dfff                                    ; $45dd: $dc $ff $df
	db $e3                                           ; $45e0: $e3
	sbc [hl]                                         ; $45e1: $9e
	di                                               ; $45e2: $f3
	call c, $97ff                                    ; $45e3: $dc $ff $97
	rra                                              ; $45e6: $1f
	nop                                              ; $45e7: $00
	rra                                              ; $45e8: $1f
	db $10                                           ; $45e9: $10
	db $10                                           ; $45ea: $10
	rrca                                             ; $45eb: $0f
	ld [$030f], sp                                   ; $45ec: $08 $0f $03
	ret nz                                           ; $45ef: $c0

	inc bc                                           ; $45f0: $03
	ldh a, [$db]                                     ; $45f1: $f0 $db
	rst $38                                          ; $45f3: $ff
	sub a                                            ; $45f4: $97
	db $fc                                           ; $45f5: $fc
	inc b                                            ; $45f6: $04
	db $fc                                           ; $45f7: $fc
	inc b                                            ; $45f8: $04
	nop                                              ; $45f9: $00
	ldh a, [rP1]                                     ; $45fa: $f0 $00
	ldh a, [$d9]                                     ; $45fc: $f0 $d9
	cp $df                                           ; $45fe: $fe $df
	ld [hl], a                                       ; $4600: $77
	sub a                                            ; $4601: $97
	rlca                                             ; $4602: $07
	ccf                                              ; $4603: $3f
	ccf                                              ; $4604: $3f
	ld a, a                                          ; $4605: $7f
	ld a, a                                          ; $4606: $7f
	rst $38                                          ; $4607: $ff
	adc a                                            ; $4608: $8f
	adc a                                            ; $4609: $8f
	inc bc                                           ; $460a: $03
	ret nz                                           ; $460b: $c0

	dec de                                           ; $460c: $1b
	ldh a, [$78]                                     ; $460d: $f0 $78
	ld h, d                                          ; $460f: $62
	jp c, $97ff                                      ; $4610: $da $ff $97

	ld a, [$f83c]                                    ; $4613: $fa $3c $f8
	db $f4                                           ; $4616: $f4
	ld [$e8d6], a                                    ; $4617: $ea $d6 $e8
	ret nc                                           ; $461a: $d0

	db $dd                                           ; $461b: $dd
	cp $9e                                           ; $461c: $fe $9e
	db $fc                                           ; $461e: $fc
	ld a, b                                          ; $461f: $78
	ld [hl], e                                       ; $4620: $73
	sbc d                                            ; $4621: $9a
	rra                                              ; $4622: $1f
	dec de                                           ; $4623: $1b
	inc bc                                           ; $4624: $03
	ccf                                              ; $4625: $3f
	ld a, a                                          ; $4626: $7f
	ld [hl], a                                       ; $4627: $77
	jr nc, jr_049_45c8                               ; $4628: $30 $9e

	rst SubAFromBC                                          ; $462a: $e7
	db $db                                           ; $462b: $db
	rst $38                                          ; $462c: $ff
	sbc b                                            ; $462d: $98
	dec c                                            ; $462e: $0d
	ld bc, $8101                                     ; $462f: $01 $01 $81
	ld b, b                                          ; $4632: $40
	and b                                            ; $4633: $a0

jr_049_4634:
	sbc b                                            ; $4634: $98
	ld l, e                                          ; $4635: $6b
	cp a                                             ; $4636: $bf
	sub l                                            ; $4637: $95
	ccf                                              ; $4638: $3f
	rra                                              ; $4639: $1f
	add hl, sp                                       ; $463a: $39
	sbc [hl]                                         ; $463b: $9e
	rst AddAOntoHL                                          ; $463c: $ef
	rst SubAFromBC                                          ; $463d: $e7
	ei                                               ; $463e: $fb
	nop                                              ; $463f: $00
	xor d                                            ; $4640: $aa
	push de                                          ; $4641: $d5
	ld l, e                                          ; $4642: $6b
	or e                                             ; $4643: $b3
	sub [hl]                                         ; $4644: $96
	nop                                              ; $4645: $00
	ldh [rIE], a                                     ; $4646: $e0 $ff
	ld hl, sp-$08                                    ; $4648: $f8 $f8
	rst $38                                          ; $464a: $ff
	ret nz                                           ; $464b: $c0

	ld hl, $db10                                     ; $464c: $21 $10 $db
	rst $38                                          ; $464f: $ff
	sbc l                                            ; $4650: $9d
	cp $7e                                           ; $4651: $fe $7e
	ld [hl], e                                       ; $4653: $73
	and c                                            ; $4654: $a1
	sbc h                                            ; $4655: $9c
	ld b, b                                          ; $4656: $40
	ld d, l                                          ; $4657: $55
	xor d                                            ; $4658: $aa
	call c, $9eff                                    ; $4659: $dc $ff $9e
	cp a                                             ; $465c: $bf
	ld l, l                                          ; $465d: $6d
	cpl                                              ; $465e: $2f
	ld h, [hl]                                       ; $465f: $66
	ld d, h                                          ; $4660: $54
	ld l, [hl]                                       ; $4661: $6e
	ld c, e                                          ; $4662: $4b
	ld c, e                                          ; $4663: $4b
	ldh a, [$7d]                                     ; $4664: $f0 $7d
	ldh [c], a                                       ; $4666: $e2
	ld d, e                                          ; $4667: $53
	ldh a, [$97]                                     ; $4668: $f0 $97
	ld [$0407], sp                                   ; $466a: $08 $07 $04
	inc b                                            ; $466d: $04
	rlca                                             ; $466e: $07
	nop                                              ; $466f: $00
	ld b, h                                          ; $4670: $44
	ld l, $db                                        ; $4671: $2e $db
	rst $38                                          ; $4673: $ff
	sub [hl]                                         ; $4674: $96
	jr c, jr_049_4677                                ; $4675: $38 $00

jr_049_4677:
	nop                                              ; $4677: $00
	ld hl, sp+$03                                    ; $4678: $f8 $03
	ld [bc], a                                       ; $467a: $02
	ld a, [$1a02]                                    ; $467b: $fa $02 $1a
	ld a, e                                          ; $467e: $7b
	or b                                             ; $467f: $b0
	db $dd                                           ; $4680: $dd
	db $fc                                           ; $4681: $fc
	rst SubAFromDE                                          ; $4682: $df
	inc b                                            ; $4683: $04
	ld e, a                                          ; $4684: $5f
	inc sp                                           ; $4685: $33
	ld sp, hl                                        ; $4686: $f9
	ld c, e                                          ; $4687: $4b
	ldh a, [$98]                                     ; $4688: $f0 $98
	rra                                              ; $468a: $1f
	ret nz                                           ; $468b: $c0

	ld b, b                                          ; $468c: $40
	ld e, a                                          ; $468d: $5f
	ld c, d                                          ; $468e: $4a
	ld b, l                                          ; $468f: $45
	ld c, b                                          ; $4690: $48
	ld a, e                                          ; $4691: $7b
	ld d, h                                          ; $4692: $54
	rst SubAFromDE                                          ; $4693: $df
	ccf                                              ; $4694: $3f
	rst SubAFromDE                                          ; $4695: $df
	jr nc, jr_049_4634                               ; $4696: $30 $9c

	jr nz, jr_049_469b                               ; $4698: $20 $01

	ldh [c], a                                       ; $469a: $e2

jr_049_469b:
	ld a, e                                          ; $469b: $7b
	ld e, h                                          ; $469c: $5c
	sbc e                                            ; $469d: $9b
	and c                                            ; $469e: $a1
	ld h, d                                          ; $469f: $62

jr_049_46a0:
	jr c, jr_049_46a0                                ; $46a0: $38 $fe

	ld a, e                                          ; $46a2: $7b
	inc h                                            ; $46a3: $24
	ld a, l                                          ; $46a4: $7d
	inc de                                           ; $46a5: $13
	sbc e                                            ; $46a6: $9b
	inc e                                            ; $46a7: $1c
	nop                                              ; $46a8: $00
	nop                                              ; $46a9: $00
	ccf                                              ; $46aa: $3f
	ld a, e                                          ; $46ab: $7b
	adc $9c                                          ; $46ac: $ce $9c
	ld d, a                                          ; $46ae: $57
	ld a, [bc]                                       ; $46af: $0a
	dec b                                            ; $46b0: $05
	ld h, e                                          ; $46b1: $63
	call Call_049_7077                               ; $46b2: $cd $77 $70
	sbc h                                            ; $46b5: $9c
	rst $38                                          ; $46b6: $ff
	xor d                                            ; $46b7: $aa
	ld d, l                                          ; $46b8: $55
	inc bc                                           ; $46b9: $03
	ldh a, [rOCPD]                                   ; $46ba: $f0 $6b
	ldh a, [$7e]                                     ; $46bc: $f0 $7e
	daa                                              ; $46be: $27
	sbc c                                            ; $46bf: $99
	ld e, $1d                                        ; $46c0: $1e $1d
	ld [$a994], a                                    ; $46c2: $ea $94 $a9
	inc b                                            ; $46c5: $04
	call c, $96ff                                    ; $46c6: $dc $ff $96
	ld a, a                                          ; $46c9: $7f
	ld a, [hl]                                       ; $46ca: $7e
	ld a, b                                          ; $46cb: $78
	and c                                            ; $46cc: $a1
	ld b, e                                          ; $46cd: $43
	add a                                            ; $46ce: $87
	rrca                                             ; $46cf: $0f
	ccf                                              ; $46d0: $3f
	ld b, c                                          ; $46d1: $41
	ld l, e                                          ; $46d2: $6b
	ld b, b                                          ; $46d3: $40
	sbc [hl]                                         ; $46d4: $9e
	cp a                                             ; $46d5: $bf
	ld l, l                                          ; $46d6: $6d
	inc e                                            ; $46d7: $1c
	sbc h                                            ; $46d8: $9c
	db $fc                                           ; $46d9: $fc
	ld sp, hl                                        ; $46da: $f9
	ldh [$62], a                                     ; $46db: $e0 $62
	adc a                                            ; $46dd: $8f
	sub a                                            ; $46de: $97
	ld c, $05                                        ; $46df: $0e $05
	ld b, $05                                        ; $46e1: $06 $05
	and $b5                                          ; $46e3: $e6 $b5
	ld b, $b5                                        ; $46e5: $06 $b5
	ld [hl], c                                       ; $46e7: $71
	add h                                            ; $46e8: $84
	sbc $07                                          ; $46e9: $de $07
	ld a, [hl]                                       ; $46eb: $7e
	add $73                                          ; $46ec: $c6 $73
	cp $70                                           ; $46ee: $fe $70
	sbc l                                            ; $46f0: $9d
	db $dd                                           ; $46f1: $dd
	rst $38                                          ; $46f2: $ff
	sub a                                            ; $46f3: $97
	cp e                                             ; $46f4: $bb
	ld d, [hl]                                       ; $46f5: $56
	xor e                                            ; $46f6: $ab
	ld d, [hl]                                       ; $46f7: $56
	xor d                                            ; $46f8: $aa
	ld d, [hl]                                       ; $46f9: $56
	xor d                                            ; $46fa: $aa
	ld b, $72                                        ; $46fb: $06 $72
	jp nz, $fede                                     ; $46fd: $c2 $de $fe

	sbc h                                            ; $4700: $9c
	ld d, h                                          ; $4701: $54
	xor b                                            ; $4702: $a8
	ld b, b                                          ; $4703: $40
	halt                                             ; $4704: $76
	db $ec                                           ; $4705: $ec
	ld a, l                                          ; $4706: $7d
	jr nc, jr_049_4764                               ; $4707: $30 $5b

	ld e, $67                                        ; $4709: $1e $67
	dec e                                            ; $470b: $1d
	ld hl, sp+$7d                                    ; $470c: $f8 $7d
	ld d, b                                          ; $470e: $50
	halt                                             ; $470f: $76
	ld e, l                                          ; $4710: $5d
	ld e, a                                          ; $4711: $5f
	ldh a, [$7e]                                     ; $4712: $f0 $7e
	sbc b                                            ; $4714: $98
	sbc [hl]                                         ; $4715: $9e
	cp a                                             ; $4716: $bf
	ld h, a                                          ; $4717: $67
	ldh a, [$97]                                     ; $4718: $f0 $97
	dec d                                            ; $471a: $15
	ld l, $14                                        ; $471b: $2e $14
	inc c                                            ; $471d: $0c
	inc d                                            ; $471e: $14
	adc l                                            ; $471f: $8d
	inc d                                            ; $4720: $14
	adc l                                            ; $4721: $8d
	db $dd                                           ; $4722: $dd
	rst $38                                          ; $4723: $ff
	db $dd                                           ; $4724: $dd
	ld a, h                                          ; $4725: $7c
	sbc b                                            ; $4726: $98
	ld e, [hl]                                       ; $4727: $5e
	xor a                                            ; $4728: $af
	ld d, l                                          ; $4729: $55
	ld a, [hl+]                                      ; $472a: $2a
	nop                                              ; $472b: $00
	rst FarCall                                          ; $472c: $f7
	nop                                              ; $472d: $00
	ld [hl], b                                       ; $472e: $70
	ei                                               ; $472f: $fb
	ld l, a                                          ; $4730: $6f
	or h                                             ; $4731: $b4
	ld a, [hl]                                       ; $4732: $7e
	ld h, h                                          ; $4733: $64
	sbc e                                            ; $4734: $9b
	nop                                              ; $4735: $00
	rst SubAFromDE                                          ; $4736: $df
	nop                                              ; $4737: $00
	rst SubAFromDE                                          ; $4738: $df
	ld e, e                                          ; $4739: $5b
	ldh a, [$9a]                                     ; $473a: $f0 $9a
	and b                                            ; $473c: $a0
	nop                                              ; $473d: $00
	ei                                               ; $473e: $fb
	nop                                              ; $473f: $00
	ei                                               ; $4740: $fb
	ld h, a                                          ; $4741: $67
	ldh a, [$9d]                                     ; $4742: $f0 $9d
	ld [hl], b                                       ; $4744: $70
	ldh [$7b], a                                     ; $4745: $e0 $7b
	add b                                            ; $4747: $80
	sbc l                                            ; $4748: $9d
	rst AddAOntoHL                                          ; $4749: $ef
	nop                                              ; $474a: $00
	ld [hl], c                                       ; $474b: $71
	dec hl                                           ; $474c: $2b
	db $fd                                           ; $474d: $fd
	sbc l                                            ; $474e: $9d
	jr nc, @+$2a                                     ; $474f: $30 $28

	ld a, e                                          ; $4751: $7b
	cp $9c                                           ; $4752: $fe $9c
	and c                                            ; $4754: $a1
	jr nc, @-$4d                                     ; $4755: $30 $b1

	db $dd                                           ; $4757: $dd
	rst $38                                          ; $4758: $ff
	db $dd                                           ; $4759: $dd
	ld a, $fc                                        ; $475a: $3e $fc
	sbc l                                            ; $475c: $9d
	db $fd                                           ; $475d: $fd
	nop                                              ; $475e: $00
	halt                                             ; $475f: $76
	or d                                             ; $4760: $b2
	ld [hl], e                                       ; $4761: $73
	ldh [$9c], a                                     ; $4762: $e0 $9c

jr_049_4764:
	xor d                                            ; $4764: $aa
	dec d                                            ; $4765: $15
	ld [bc], a                                       ; $4766: $02
	ld d, e                                          ; $4767: $53
	ld d, b                                          ; $4768: $50
	ld a, [hl]                                       ; $4769: $7e
	sub $7f                                          ; $476a: $d6 $7f
	cp $57                                           ; $476c: $fe $57
	ld d, b                                          ; $476e: $50
	ld a, a                                          ; $476f: $7f
	ldh a, [c]                                       ; $4770: $f2
	ld a, e                                          ; $4771: $7b
	cpl                                              ; $4772: $2f
	ld e, e                                          ; $4773: $5b
	ld d, b                                          ; $4774: $50
	sbc d                                            ; $4775: $9a
	add sp, $74                                      ; $4776: $e8 $74
	add sp, $70                                      ; $4778: $e8 $70
	ld l, b                                          ; $477a: $68
	ld a, e                                          ; $477b: $7b
	cp $72                                           ; $477c: $fe $72
	pop bc                                           ; $477e: $c1
	sbc $7f                                          ; $477f: $de $7f
	reti                                             ; $4781: $d9


	ld bc, $ffd9                                     ; $4782: $01 $d9 $ff
	sub a                                            ; $4785: $97
	ld a, a                                          ; $4786: $7f
	cp a                                             ; $4787: $bf
	ld a, a                                          ; $4788: $7f
	cp a                                             ; $4789: $bf
	ld c, a                                          ; $478a: $4f
	sbc a                                            ; $478b: $9f
	ld c, c                                          ; $478c: $49
	sbc a                                            ; $478d: $9f
	db $dd                                           ; $478e: $dd
	rst $38                                          ; $478f: $ff
	sbc e                                            ; $4790: $9b
	ldh [$ed], a                                     ; $4791: $e0 $ed
	ldh [$ed], a                                     ; $4793: $e0 $ed
	pop af                                           ; $4795: $f1
	sbc l                                            ; $4796: $9d
	ret nz                                           ; $4797: $c0

	rst SubAFromDE                                          ; $4798: $df
	db $db                                           ; $4799: $db
	rra                                              ; $479a: $1f
	ld hl, sp+$73                                    ; $479b: $f8 $73
	halt                                             ; $479d: $76
	ld e, d                                          ; $479e: $5a
	db $f4                                           ; $479f: $f4
	ld [hl], l                                       ; $47a0: $75
	add [hl]                                         ; $47a1: $86
	ld a, e                                          ; $47a2: $7b
	ld [hl], d                                       ; $47a3: $72
	ld hl, sp-$68                                    ; $47a4: $f8 $98
	ld [$faf5], a                                    ; $47a6: $ea $f5 $fa
	push af                                          ; $47a9: $f5
	xor d                                            ; $47aa: $aa
	push de                                          ; $47ab: $d5
	ld a, [$9af8]                                    ; $47ac: $fa $f8 $9a
	add b                                            ; $47af: $80
	ld b, b                                          ; $47b0: $40
	and b                                            ; $47b1: $a0
	nop                                              ; $47b2: $00
	nop                                              ; $47b3: $00
	ld a, d                                          ; $47b4: $7a
	db $fc                                           ; $47b5: $fc
	ld sp, hl                                        ; $47b6: $f9
	sbc d                                            ; $47b7: $9a
	ccf                                              ; $47b8: $3f
	dec d                                            ; $47b9: $15
	nop                                              ; $47ba: $00
	nop                                              ; $47bb: $00
	ld a, [hl+]                                      ; $47bc: $2a
	ld e, e                                          ; $47bd: $5b
	ldh a, [$9e]                                     ; $47be: $f0 $9e
	cp $7b                                           ; $47c0: $fe $7b
	ccf                                              ; $47c2: $3f
	sbc l                                            ; $47c3: $9d
	xor d                                            ; $47c4: $aa
	ld a, a                                          ; $47c5: $7f
	ld e, d                                          ; $47c6: $5a
	and h                                            ; $47c7: $a4
	sbc [hl]                                         ; $47c8: $9e
	ld d, l                                          ; $47c9: $55
	ld a, e                                          ; $47ca: $7b
	adc $5b                                          ; $47cb: $ce $5b
	ldh [$7b], a                                     ; $47cd: $e0 $7b
	jp nz, $9eff                                     ; $47cf: $c2 $ff $9e

	ld b, b                                          ; $47d2: $40
	ld e, a                                          ; $47d3: $5f
	ldh a, [$fc]                                     ; $47d4: $f0 $fc
	sbc l                                            ; $47d6: $9d
	ld bc, $f42a                                     ; $47d7: $01 $2a $f4
	sbc [hl]                                         ; $47da: $9e
	jr z, jr_049_4838                                ; $47db: $28 $5b

	ret nc                                           ; $47dd: $d0

	sbc b                                            ; $47de: $98
	cp a                                             ; $47df: $bf
	dec d                                            ; $47e0: $15
	nop                                              ; $47e1: $00
	dec b                                            ; $47e2: $05
	xor d                                            ; $47e3: $aa
	ld d, l                                          ; $47e4: $55
	xor a                                            ; $47e5: $af
	ld sp, hl                                        ; $47e6: $f9
	sbc e                                            ; $47e7: $9b
	inc b                                            ; $47e8: $04
	rst AddAOntoHL                                          ; $47e9: $ef
	ld d, l                                          ; $47ea: $55
	ld a, [bc]                                       ; $47eb: $0a
	ld a, e                                          ; $47ec: $7b
	sbc [hl]                                         ; $47ed: $9e
	ld d, a                                          ; $47ee: $57
	and b                                            ; $47ef: $a0
	sbc e                                            ; $47f0: $9b
	xor h                                            ; $47f1: $ac
	ld d, b                                          ; $47f2: $50
	xor d                                            ; $47f3: $aa
	ld d, l                                          ; $47f4: $55
	ld e, a                                          ; $47f5: $5f
	ld h, b                                          ; $47f6: $60
	sbc l                                            ; $47f7: $9d
	cp d                                             ; $47f8: $ba
	ld d, l                                          ; $47f9: $55
	ld a, e                                          ; $47fa: $7b
	sbc h                                            ; $47fb: $9c
	ld a, a                                          ; $47fc: $7f
	xor $63                                          ; $47fd: $ee $63
	and [hl]                                         ; $47ff: $a6
	sbc h                                            ; $4800: $9c
	and d                                            ; $4801: $a2
	ld bc, $7702                                     ; $4802: $01 $02 $77
	cp $f9                                           ; $4805: $fe $f9
	ld a, e                                          ; $4807: $7b
	ld h, h                                          ; $4808: $64
	ld a, d                                          ; $4809: $7a
	sbc $7f                                          ; $480a: $de $7f
	cp $f9                                           ; $480c: $fe $f9
	sbc e                                            ; $480e: $9b
	ld d, b                                          ; $480f: $50
	xor b                                            ; $4810: $a8
	ld sp, hl                                        ; $4811: $f9
	ld hl, sp+$77                                    ; $4812: $f8 $77
	cp $d9                                           ; $4814: $fe $d9
	rlca                                             ; $4816: $07
	sbc l                                            ; $4817: $9d
	ld d, a                                          ; $4818: $57
	xor d                                            ; $4819: $aa
	ld a, c                                          ; $481a: $79
	ld d, e                                          ; $481b: $53
	ld a, e                                          ; $481c: $7b
	cp $f3                                           ; $481d: $fe $f3
	ld h, [hl]                                       ; $481f: $66
	inc d                                            ; $4820: $14
	rst SubAFromDE                                          ; $4821: $df
	rst $38                                          ; $4822: $ff
	ld l, [hl]                                       ; $4823: $6e
	jp $f05f                                         ; $4824: $c3 $5f $f0


	ld l, [hl]                                       ; $4827: $6e
	jp $f003                                         ; $4828: $c3 $03 $f0


	ld h, e                                          ; $482b: $63
	ldh a, [rSVBK]                                   ; $482c: $f0 $70
	rst FarCall                                          ; $482e: $f7
	ld e, e                                          ; $482f: $5b
	ldh a, [$6e]                                     ; $4830: $f0 $6e
	daa                                              ; $4832: $27
	rra                                              ; $4833: $1f
	ret nc                                           ; $4834: $d0

	ld a, [hl]                                       ; $4835: $7e
	add d                                            ; $4836: $82
	ld c, e                                          ; $4837: $4b

jr_049_4838:
	ret nz                                           ; $4838: $c0

	sbc h                                            ; $4839: $9c
	xor d                                            ; $483a: $aa
	ld a, l                                          ; $483b: $7d
	cp a                                             ; $483c: $bf
	ld d, e                                          ; $483d: $53
	ldh a, [$9e]                                     ; $483e: $f0 $9e
	xor e                                            ; $4840: $ab
	ld a, e                                          ; $4841: $7b
	cp [hl]                                          ; $4842: $be
	ld e, e                                          ; $4843: $5b
	ldh a, [$9e]                                     ; $4844: $f0 $9e
	ld a, l                                          ; $4846: $7d
	inc bc                                           ; $4847: $03
	ld [hl], b                                       ; $4848: $70
	rlca                                             ; $4849: $07
	sub b                                            ; $484a: $90
	sbc l                                            ; $484b: $9d
	db $fd                                           ; $484c: $fd
	cp $57                                           ; $484d: $fe $57
	ldh a, [$7a]                                     ; $484f: $f0 $7a
	add h                                            ; $4851: $84
	sbc l                                            ; $4852: $9d
	xor d                                            ; $4853: $aa
	rst SubAFromHL                                          ; $4854: $d7
	ld d, e                                          ; $4855: $53
	ld d, b                                          ; $4856: $50
	ld c, a                                          ; $4857: $4f
	sub b                                            ; $4858: $90
	ld [hl], d                                       ; $4859: $72
	jp nz, $f77b                                     ; $485a: $c2 $7b $f7

	call c, $de07                                    ; $485d: $dc $07 $de
	rst $38                                          ; $4860: $ff
	sbc l                                            ; $4861: $9d
	ld d, h                                          ; $4862: $54
	xor d                                            ; $4863: $aa
	ld a, b                                          ; $4864: $78
	ld a, [hl]                                       ; $4865: $7e
	sbc l                                            ; $4866: $9d
	rst $38                                          ; $4867: $ff
	ccf                                              ; $4868: $3f
	ld l, d                                          ; $4869: $6a
	ld h, b                                          ; $486a: $60
	ld a, [hl]                                       ; $486b: $7e
	pop de                                           ; $486c: $d1
	sbc $f8                                          ; $486d: $de $f8
	sbc d                                            ; $486f: $9a
	ld a, c                                          ; $4870: $79
	ld sp, hl                                        ; $4871: $f9
	ld a, c                                          ; $4872: $79
	ei                                               ; $4873: $fb
	ld l, b                                          ; $4874: $68
	ld l, h                                          ; $4875: $6c
	ld h, c                                          ; $4876: $61
	sub l                                            ; $4877: $95
	db $fc                                           ; $4878: $fc
	rst $38                                          ; $4879: $ff
	ld b, e                                          ; $487a: $43
	ld b, b                                          ; $487b: $40
	ld b, b                                          ; $487c: $40
	ld b, c                                          ; $487d: $41
	ld b, b                                          ; $487e: $40
	ld b, b                                          ; $487f: $40
	ld a, e                                          ; $4880: $7b
	ccf                                              ; $4881: $3f
	reti                                             ; $4882: $d9


	rst $38                                          ; $4883: $ff
	sbc e                                            ; $4884: $9b
	pop hl                                           ; $4885: $e1
	pop af                                           ; $4886: $f1
	pop hl                                           ; $4887: $e1
	pop hl                                           ; $4888: $e1
	sbc $e5                                          ; $4889: $de $e5
	sbc l                                            ; $488b: $9d
	pop hl                                           ; $488c: $e1
	rst $38                                          ; $488d: $ff
	ld a, b                                          ; $488e: $78
	adc $de                                          ; $488f: $ce $de
	ei                                               ; $4891: $fb
	ld a, a                                          ; $4892: $7f
	db $fc                                           ; $4893: $fc
	ld a, h                                          ; $4894: $7c
	inc h                                            ; $4895: $24
	ld a, e                                          ; $4896: $7b
	ld a, l                                          ; $4897: $7d
	sbc l                                            ; $4898: $9d
	rst $38                                          ; $4899: $ff
	ld a, [hl]                                       ; $489a: $7e
	ret c                                            ; $489b: $d8

	rst $38                                          ; $489c: $ff
	sbc [hl]                                         ; $489d: $9e
	ld e, l                                          ; $489e: $5d
	ld a, d                                          ; $489f: $7a
	ld d, e                                          ; $48a0: $53
	sbc l                                            ; $48a1: $9d
	ld e, a                                          ; $48a2: $5f
	xor a                                            ; $48a3: $af
	ld [hl], a                                       ; $48a4: $77
	and l                                            ; $48a5: $a5
	db $db                                           ; $48a6: $db
	rst $38                                          ; $48a7: $ff
	sbc b                                            ; $48a8: $98
	ld e, [hl]                                       ; $48a9: $5e
	db $ec                                           ; $48aa: $ec
	cp $fc                                           ; $48ab: $fe $fc
	ld a, [$c0f4]                                    ; $48ad: $fa $f4 $c0
	ld h, c                                          ; $48b0: $61
	db $10                                           ; $48b1: $10
	sbc b                                            ; $48b2: $98
	xor c                                            ; $48b3: $a9
	ld [bc], a                                       ; $48b4: $02
	ld hl, $8542                                     ; $48b5: $21 $42 $85
	ld [bc], a                                       ; $48b8: $02
	dec b                                            ; $48b9: $05
	reti                                             ; $48ba: $d9


	rst $38                                          ; $48bb: $ff
	rst SubAFromDE                                          ; $48bc: $df
	add c                                            ; $48bd: $81
	sbc $f9                                          ; $48be: $de $f9
	sbc d                                            ; $48c0: $9a
	ei                                               ; $48c1: $fb
	db $db                                           ; $48c2: $db
	db $db                                           ; $48c3: $db
	rst $38                                          ; $48c4: $ff
	rst $38                                          ; $48c5: $ff
	sbc $87                                          ; $48c6: $de $87
	sub c                                            ; $48c8: $91
	add l                                            ; $48c9: $85
	and l                                            ; $48ca: $a5
	and l                                            ; $48cb: $a5
	xor d                                            ; $48cc: $aa
	push de                                          ; $48cd: $d5
	nop                                              ; $48ce: $00
	nop                                              ; $48cf: $00
	add hl, de                                       ; $48d0: $19
	jr z, jr_049_490c                                ; $48d1: $28 $39

	add hl, sp                                       ; $48d3: $39
	rst $38                                          ; $48d4: $ff
	rst $38                                          ; $48d5: $ff
	add b                                            ; $48d6: $80
	call c, Call_049_78b9                            ; $48d7: $dc $b9 $78
	and d                                            ; $48da: $a2
	sbc d                                            ; $48db: $9a
	ld [de], a                                       ; $48dc: $12
	or e                                             ; $48dd: $b3
	jp nc, $d2b3                                     ; $48de: $d2 $b3 $d2

	ld a, e                                          ; $48e1: $7b
	ld a, $dc                                        ; $48e2: $3e $dc
	di                                               ; $48e4: $f3
	ld a, e                                          ; $48e5: $7b
	ldh a, [$9d]                                     ; $48e6: $f0 $9d
	ld [$de40], sp                                   ; $48e8: $08 $40 $de
	ld c, b                                          ; $48eb: $48
	ld a, e                                          ; $48ec: $7b
	ldh a, [$dc]                                     ; $48ed: $f0 $dc
	rst GetHLinHL                                          ; $48ef: $cf
	sbc [hl]                                         ; $48f0: $9e
	xor e                                            ; $48f1: $ab
	ld a, c                                          ; $48f2: $79
	pop bc                                           ; $48f3: $c1
	db $dd                                           ; $48f4: $dd
	db $10                                           ; $48f5: $10
	rst SubAFromDE                                          ; $48f6: $df
	rst $38                                          ; $48f7: $ff
	sbc [hl]                                         ; $48f8: $9e
	ld bc, $9ddc                                     ; $48f9: $01 $dc $9d
	sbc d                                            ; $48fc: $9a
	add c                                            ; $48fd: $81
	call $85ed                                       ; $48fe: $cd $ed $85
	add l                                            ; $4901: $85
	sbc $87                                          ; $4902: $de $87
	sbc d                                            ; $4904: $9a
	rst $38                                          ; $4905: $ff
	or e                                             ; $4906: $b3
	sub e                                            ; $4907: $93
	ei                                               ; $4908: $fb
	ei                                               ; $4909: $fb
	sbc $f9                                          ; $490a: $de $f9

jr_049_490c:
	sbc e                                            ; $490c: $9b
	ld [$8040], a                                    ; $490d: $ea $40 $80
	nop                                              ; $4910: $00
	ld [hl], a                                       ; $4911: $77
	cp $d9                                           ; $4912: $fe $d9
	rst $38                                          ; $4914: $ff
	ld a, h                                          ; $4915: $7c
	ld b, b                                          ; $4916: $40
	ld a, l                                          ; $4917: $7d
	inc bc                                           ; $4918: $03
	sbc h                                            ; $4919: $9c
	ld a, [hl+]                                      ; $491a: $2a
	ld [hl], l                                       ; $491b: $75
	ld a, [hl+]                                      ; $491c: $2a
	ld [hl], d                                       ; $491d: $72
	add hl, hl                                       ; $491e: $29
	db $dd                                           ; $491f: $dd
	rst $38                                          ; $4920: $ff
	sbc h                                            ; $4921: $9c
	cp $54                                           ; $4922: $fe $54
	xor [hl]                                         ; $4924: $ae
	ld a, e                                          ; $4925: $7b
	cp $7e                                           ; $4926: $fe $7e
	ei                                               ; $4928: $fb
	reti                                             ; $4929: $d9


	rst $38                                          ; $492a: $ff
	sbc l                                            ; $492b: $9d
	ld e, a                                          ; $492c: $5f
	cp a                                             ; $492d: $bf
	ld l, a                                          ; $492e: $6f
	cp $d9                                           ; $492f: $fe $d9
	rst $38                                          ; $4931: $ff
	db $db                                           ; $4932: $db
	add a                                            ; $4933: $87
	rst SubAFromDE                                          ; $4934: $df
	sub a                                            ; $4935: $97
	db $db                                           ; $4936: $db
	rst $38                                          ; $4937: $ff
	rst SubAFromDE                                          ; $4938: $df
	rst AddAOntoHL                                          ; $4939: $ef
	pop de                                           ; $493a: $d1
	rst $38                                          ; $493b: $ff
	sbc $5f                                          ; $493c: $de $5f
	sbc $df                                          ; $493e: $de $df
	rst SubAFromDE                                          ; $4940: $df
	ld e, a                                          ; $4941: $5f
	sbc $bf                                          ; $4942: $de $bf
	sbc $3f                                          ; $4944: $de $3f
	rst SubAFromDE                                          ; $4946: $df
	cp a                                             ; $4947: $bf
	ld l, $00                                        ; $4948: $2e $00
	db $dd                                           ; $494a: $dd
	ld d, l                                          ; $494b: $55
	sbc l                                            ; $494c: $9d
	ld d, e                                          ; $494d: $53
	dec [hl]                                         ; $494e: $35
	reti                                             ; $494f: $d9


	ld d, l                                          ; $4950: $55
	rst SubAFromDE                                          ; $4951: $df
	inc sp                                           ; $4952: $33
	db $dd                                           ; $4953: $dd
	ld d, l                                          ; $4954: $55
	call $d766                                       ; $4955: $cd $66 $d7
	inc sp                                           ; $4958: $33
	sbc h                                            ; $4959: $9c
	ld [hl], $66                                     ; $495a: $36 $66
	ld h, [hl]                                       ; $495c: $66
	ld a, e                                          ; $495d: $7b
	db $fd                                           ; $495e: $fd
	sbc [hl]                                         ; $495f: $9e
	ld h, e                                          ; $4960: $63
	ld [hl], e                                       ; $4961: $73
	db $fd                                           ; $4962: $fd
	reti                                             ; $4963: $d9


	ld h, [hl]                                       ; $4964: $66
	rst SubAFromHL                                          ; $4965: $d7
	ld d, l                                          ; $4966: $55
	ret c                                            ; $4967: $d8

	ld b, h                                          ; $4968: $44
	sbc [hl]                                         ; $4969: $9e
	ld b, [hl]                                       ; $496a: $46
	ld e, a                                          ; $496b: $5f
	or $df                                           ; $496c: $f6 $df
	halt                                             ; $496e: $76
	sbc e                                            ; $496f: $9b
	ld h, [hl]                                       ; $4970: $66
	ld h, a                                          ; $4971: $67
	ld [hl], a                                       ; $4972: $77
	ld [hl], a                                       ; $4973: $77
	ld [hl], a                                       ; $4974: $77
	ei                                               ; $4975: $fb
	or a                                             ; $4976: $b7
	ld a, [bc]                                       ; $4977: $0a
	pop bc                                           ; $4978: $c1
	rst $38                                          ; $4979: $ff
	inc bc                                           ; $497a: $03
	rst $38                                          ; $497b: $ff
	inc bc                                           ; $497c: $03
	rst $38                                          ; $497d: $ff
	inc bc                                           ; $497e: $03
	rst $38                                          ; $497f: $ff
	inc bc                                           ; $4980: $03
	rst $38                                          ; $4981: $ff
	inc bc                                           ; $4982: $03
	rst $38                                          ; $4983: $ff
	inc bc                                           ; $4984: $03
	rst $38                                          ; $4985: $ff
	inc bc                                           ; $4986: $03
	rst $38                                          ; $4987: $ff
	inc bc                                           ; $4988: $03
	rst $38                                          ; $4989: $ff
	ret                                              ; $498a: $c9


	rst $38                                          ; $498b: $ff
	sub l                                            ; $498c: $95
	rst SubAFromBC                                          ; $498d: $e7
	rst $38                                          ; $498e: $ff
	add hl, bc                                       ; $498f: $09
	rst $38                                          ; $4990: $ff
	ld a, e                                          ; $4991: $7b
	rst $38                                          ; $4992: $ff
	dec bc                                           ; $4993: $0b
	rst FarCall                                          ; $4994: $f7
	rla                                              ; $4995: $17
	rst AddAOntoHL                                          ; $4996: $ef
	db $dd                                           ; $4997: $dd
	rst $38                                          ; $4998: $ff
	adc [hl]                                         ; $4999: $8e
	cp a                                             ; $499a: $bf
	rst $38                                          ; $499b: $ff
	di                                               ; $499c: $f3
	rst $38                                          ; $499d: $ff
	ld c, $ff                                        ; $499e: $0e $ff
	ld b, [hl]                                       ; $49a0: $46
	cp a                                             ; $49a1: $bf
	ld [$9cff], sp                                   ; $49a2: $08 $ff $9c
	db $e3                                           ; $49a5: $e3
	rst $38                                          ; $49a6: $ff
	rst $38                                          ; $49a7: $ff
	rra                                              ; $49a8: $1f
	rst $38                                          ; $49a9: $ff
	ld bc, $e07b                                     ; $49aa: $01 $7b $e0
	sub a                                            ; $49ad: $97
	ld h, h                                          ; $49ae: $64
	ei                                               ; $49af: $fb
	ldh a, [rIE]                                     ; $49b0: $f0 $ff
	db $e3                                           ; $49b2: $e3
	rst $38                                          ; $49b3: $ff
	db $e3                                           ; $49b4: $e3
	db $fc                                           ; $49b5: $fc
	ld [hl], a                                       ; $49b6: $77
	call nc, $e09e                                   ; $49b7: $d4 $9e $e0
	ld a, e                                          ; $49ba: $7b
	sbc $98                                          ; $49bb: $de $98
	dec c                                            ; $49bd: $0d
	rst $38                                          ; $49be: $ff
	inc c                                            ; $49bf: $0c
	rst $38                                          ; $49c0: $ff
	ld e, h                                          ; $49c1: $5c
	cp a                                             ; $49c2: $bf
	ld a, $de                                        ; $49c3: $3e $de
	rst $38                                          ; $49c5: $ff
	ld a, a                                          ; $49c6: $7f
	ldh [$9e], a                                     ; $49c7: $e0 $9e
	sbc a                                            ; $49c9: $9f
	sbc $ff                                          ; $49ca: $de $ff
	sub a                                            ; $49cc: $97
	and c                                            ; $49cd: $a1
	rst $38                                          ; $49ce: $ff
	db $eb                                           ; $49cf: $eb
	rst FarCall                                          ; $49d0: $f7
	sub e                                            ; $49d1: $93
	rst AddAOntoHL                                          ; $49d2: $ef
	daa                                              ; $49d3: $27
	rst SubAFromDE                                          ; $49d4: $df
	db $db                                           ; $49d5: $db
	rst $38                                          ; $49d6: $ff
	sub d                                            ; $49d7: $92
	pop af                                           ; $49d8: $f1
	rst $38                                          ; $49d9: $ff
	adc b                                            ; $49da: $88
	rst $38                                          ; $49db: $ff
	jr nz, @+$01                                     ; $49dc: $20 $ff

	ld e, [hl]                                       ; $49de: $5e
	cp a                                             ; $49df: $bf
	db $dd                                           ; $49e0: $dd
	ldh [c], a                                       ; $49e1: $e2
	rst $38                                          ; $49e2: $ff
	rst $38                                          ; $49e3: $ff
	ccf                                              ; $49e4: $3f
	ld a, e                                          ; $49e5: $7b
	ldh [hDisp1_WX], a                                     ; $49e6: $e0 $96
	ld [hl], $ff                                     ; $49e8: $36 $ff
	ld [hl], e                                       ; $49ea: $73
	rst $38                                          ; $49eb: $ff
	ld [hl], b                                       ; $49ec: $70
	rst $38                                          ; $49ed: $ff
	ld hl, sp+$7f                                    ; $49ee: $f8 $7f
	ld a, h                                          ; $49f0: $7c
	call c, $94ff                                    ; $49f1: $dc $ff $94
	ld a, a                                          ; $49f4: $7f
	rst $38                                          ; $49f5: $ff
	ld [hl-], a                                      ; $49f6: $32
	rst $38                                          ; $49f7: $ff
	ldh [c], a                                       ; $49f8: $e2
	rst $38                                          ; $49f9: $ff
	inc de                                           ; $49fa: $13
	rst $38                                          ; $49fb: $ff
	daa                                              ; $49fc: $27
	rst $38                                          ; $49fd: $ff
	rrca                                             ; $49fe: $0f
	jp c, $96ff                                      ; $49ff: $da $ff $96

	ld h, a                                          ; $4a02: $67
	rst $38                                          ; $4a03: $ff
	xor h                                            ; $4a04: $ac
	ld a, a                                          ; $4a05: $7f
	nop                                              ; $4a06: $00
	rst $38                                          ; $4a07: $ff
	add c                                            ; $4a08: $81
	rst $38                                          ; $4a09: $ff
	jp $ffde                                         ; $4a0a: $c3 $de $ff


	sbc h                                            ; $4a0d: $9c
	ld a, l                                          ; $4a0e: $7d
	rst $38                                          ; $4a0f: $ff
	inc sp                                           ; $4a10: $33
	sbc $ff                                          ; $4a11: $de $ff
	sbc b                                            ; $4a13: $98
	pop hl                                           ; $4a14: $e1
	rst SubAFromDE                                          ; $4a15: $df

jr_049_4a16:
	pop bc                                           ; $4a16: $c1
	rst $38                                          ; $4a17: $ff
	ret nz                                           ; $4a18: $c0

	rst $38                                          ; $4a19: $ff
	ldh a, [$de]                                     ; $4a1a: $f0 $de
	rst $38                                          ; $4a1c: $ff
	sbc h                                            ; $4a1d: $9c
	rst GetHLinHL                                          ; $4a1e: $cf
	rst $38                                          ; $4a1f: $ff
	jp nz, $ce7b                                     ; $4a20: $c2 $7b $ce

	sbc d                                            ; $4a23: $9a
	xor d                                            ; $4a24: $aa
	db $dd                                           ; $4a25: $dd
	inc e                                            ; $4a26: $1c
	rst $38                                          ; $4a27: $ff
	ld a, $7b                                        ; $4a28: $3e $7b
	or h                                             ; $4a2a: $b4
	ld [hl], a                                       ; $4a2b: $77
	or b                                             ; $4a2c: $b0
	ld a, a                                          ; $4a2d: $7f
	sbc $96                                          ; $4a2e: $de $96
	sbc l                                            ; $4a30: $9d
	rst $38                                          ; $4a31: $ff
	dec sp                                           ; $4a32: $3b
	db $fd                                           ; $4a33: $fd
	dec b                                            ; $4a34: $05
	ei                                               ; $4a35: $fb
	ld c, a                                          ; $4a36: $4f
	di                                               ; $4a37: $f3
	rlca                                             ; $4a38: $07
	sbc $ff                                          ; $4a39: $de $ff
	sub c                                            ; $4a3b: $91
	ei                                               ; $4a3c: $fb
	rst $38                                          ; $4a3d: $ff
	ld h, e                                          ; $4a3e: $63
	rst $38                                          ; $4a3f: $ff
	sbc b                                            ; $4a40: $98
	rst $38                                          ; $4a41: $ff
	and [hl]                                         ; $4a42: $a6
	rst SubAFromDE                                          ; $4a43: $df
	add b                                            ; $4a44: $80
	rst $38                                          ; $4a45: $ff
	set 6, h                                         ; $4a46: $cb $f4
	db $e4                                           ; $4a48: $e4
	ei                                               ; $4a49: $fb
	db $dd                                           ; $4a4a: $dd
	rst $38                                          ; $4a4b: $ff
	ld a, a                                          ; $4a4c: $7f
	or $df                                           ; $4a4d: $f6 $df
	rst $38                                          ; $4a4f: $ff
	sbc b                                            ; $4a50: $98
	cpl                                              ; $4a51: $2f
	rst FarCall                                          ; $4a52: $f7
	dec [hl]                                         ; $4a53: $35
	ei                                               ; $4a54: $fb
	ld a, b                                          ; $4a55: $78
	rst $38                                          ; $4a56: $ff
	ld a, [hl]                                       ; $4a57: $7e
	sbc $ff                                          ; $4a58: $de $ff
	sbc [hl]                                         ; $4a5a: $9e
	rst FarCall                                          ; $4a5b: $f7
	ld a, e                                          ; $4a5c: $7b
	ld [hl-], a                                      ; $4a5d: $32
	sub d                                            ; $4a5e: $92
	cp $ff                                           ; $4a5f: $fe $ff
	dec bc                                           ; $4a61: $0b
	or $e6                                           ; $4a62: $f6 $e6
	rst $38                                          ; $4a64: $ff
	ld l, $df                                        ; $4a65: $2e $df
	ld e, a                                          ; $4a67: $5f
	cp a                                             ; $4a68: $bf
	rst $38                                          ; $4a69: $ff
	rst $38                                          ; $4a6a: $ff
	adc [hl]                                         ; $4a6b: $8e
	ld a, e                                          ; $4a6c: $7b
	inc h                                            ; $4a6d: $24
	ld a, e                                          ; $4a6e: $7b
	and b                                            ; $4a6f: $a0
	sbc c                                            ; $4a70: $99
	ld a, [hl]                                       ; $4a71: $7e
	ld e, e                                          ; $4a72: $5b
	cp h                                             ; $4a73: $bc
	ld [hl+], a                                      ; $4a74: $22
	db $dd                                           ; $4a75: $dd
	dec e                                            ; $4a76: $1d
	ld a, e                                          ; $4a77: $7b
	jr nz, jr_049_4a16                               ; $4a78: $20 $9c

	jr @+$01                                         ; $4a7a: $18 $ff

	nop                                              ; $4a7c: $00
	sbc $ff                                          ; $4a7d: $de $ff
	sbc h                                            ; $4a7f: $9c
	or e                                             ; $4a80: $b3
	ld l, a                                          ; $4a81: $6f
	ld h, b                                          ; $4a82: $60
	ld a, e                                          ; $4a83: $7b
	sub $9c                                          ; $4a84: $d6 $9c
	ld sp, hl                                        ; $4a86: $f9
	cp $ff                                           ; $4a87: $fe $ff
	ld a, e                                          ; $4a89: $7b
	jp nc, $fe7f                                     ; $4a8a: $d2 $7f $fe

	rst SubAFromDE                                          ; $4a8d: $df
	rst $38                                          ; $4a8e: $ff
	sbc c                                            ; $4a8f: $99
	ld e, $ef                                        ; $4a90: $1e $ef
	call z, $bcff                                    ; $4a92: $cc $ff $bc
	rst SubAFromDE                                          ; $4a95: $df
	ld [hl], a                                       ; $4a96: $77
	jr nz, @+$81                                     ; $4a97: $20 $7f

	and h                                            ; $4a99: $a4
	ld a, a                                          ; $4a9a: $7f
	sbc $6e                                          ; $4a9b: $de $6e
	ld a, [$719a]                                    ; $4a9d: $fa $9a $71
	rst $38                                          ; $4aa0: $ff
	sub e                                            ; $4aa1: $93
	ld l, a                                          ; $4aa2: $6f
	rst SubAFromDE                                          ; $4aa3: $df
	ld a, e                                          ; $4aa4: $7b
	ld [hl], h                                       ; $4aa5: $74
	ld [hl], a                                       ; $4aa6: $77
	adc d                                            ; $4aa7: $8a
	sbc b                                            ; $4aa8: $98
	adc h                                            ; $4aa9: $8c
	di                                               ; $4aaa: $f3
	sbc e                                            ; $4aab: $9b
	rst $38                                          ; $4aac: $ff
	rst JumpTable                                          ; $4aad: $c7
	rst $38                                          ; $4aae: $ff
	db $f4                                           ; $4aaf: $f4
	ld a, e                                          ; $4ab0: $7b
	sub b                                            ; $4ab1: $90
	ld a, a                                          ; $4ab2: $7f
	ld [hl+], a                                      ; $4ab3: $22
	ld a, a                                          ; $4ab4: $7f
	cp $7f                                           ; $4ab5: $fe $7f
	ld l, h                                          ; $4ab7: $6c
	ld a, a                                          ; $4ab8: $7f
	ld [hl], $9e                                     ; $4ab9: $36 $9e
	ld b, a                                          ; $4abb: $47
	ld a, e                                          ; $4abc: $7b
	add sp, $77                                      ; $4abd: $e8 $77
	cp $9a                                           ; $4abf: $fe $9a
	inc bc                                           ; $4ac1: $03
	rst $38                                          ; $4ac2: $ff
	ld d, e                                          ; $4ac3: $53
	xor a                                            ; $4ac4: $af
	inc bc                                           ; $4ac5: $03
	ld a, e                                          ; $4ac6: $7b
	jp nc, Jump_049_449c                             ; $4ac7: $d2 $9c $44

	cp e                                             ; $4aca: $bb
	ld [de], a                                       ; $4acb: $12
	ld a, d                                          ; $4acc: $7a
	call c, $a47f                                    ; $4acd: $dc $7f $a4
	ld a, a                                          ; $4ad0: $7f
	cp $9c                                           ; $4ad1: $fe $9c
	ld [de], a                                       ; $4ad3: $12
	db $ed                                           ; $4ad4: $ed
	pop hl                                           ; $4ad5: $e1
	ld a, d                                          ; $4ad6: $7a
	call z, $fe7f                                    ; $4ad7: $cc $7f $fe
	sbc b                                            ; $4ada: $98
	ld h, c                                          ; $4adb: $61
	cp $e0                                           ; $4adc: $fe $e0
	rst $38                                          ; $4ade: $ff
	db $e4                                           ; $4adf: $e4
	ei                                               ; $4ae0: $fb
	ld h, b                                          ; $4ae1: $60
	ld a, d                                          ; $4ae2: $7a
	or h                                             ; $4ae3: $b4
	sbc b                                            ; $4ae4: $98
	sbc h                                            ; $4ae5: $9c

jr_049_4ae6:
	rst $38                                          ; $4ae6: $ff
	inc e                                            ; $4ae7: $1c
	rst $38                                          ; $4ae8: $ff
	adc h                                            ; $4ae9: $8c
	ld a, a                                          ; $4aea: $7f
	inc e                                            ; $4aeb: $1c
	ld a, e                                          ; $4aec: $7b
	ld a, [$fe7f]                                    ; $4aed: $fa $7f $fe
	ld a, [hl]                                       ; $4af0: $7e
	cp d                                             ; $4af1: $ba
	ld a, a                                          ; $4af2: $7f
	or $9e                                           ; $4af3: $f6 $9e
	dec sp                                           ; $4af5: $3b
	ld a, e                                          ; $4af6: $7b
	jp z, $4392                                      ; $4af7: $ca $92 $43

	cp a                                             ; $4afa: $bf
	dec bc                                           ; $4afb: $0b
	rst FarCall                                          ; $4afc: $f7
	inc de                                           ; $4afd: $13
	rst AddAOntoHL                                          ; $4afe: $ef
	and e                                            ; $4aff: $a3
	ld e, a                                          ; $4b00: $5f
	ld d, e                                          ; $4b01: $53
	xor a                                            ; $4b02: $af
	dec hl                                           ; $4b03: $2b
	rst SubAFromHL                                          ; $4b04: $d7
	and [hl]                                         ; $4b05: $a6
	ld a, e                                          ; $4b06: $7b
	inc a                                            ; $4b07: $3c
	sub d                                            ; $4b08: $92
	inc b                                            ; $4b09: $04
	ei                                               ; $4b0a: $fb
	ld [bc], a                                       ; $4b0b: $02
	rst $38                                          ; $4b0c: $ff
	jr z, jr_049_4ae6                                ; $4b0d: $28 $d7

	inc d                                            ; $4b0f: $14
	db $eb                                           ; $4b10: $eb
	ld a, [hl+]                                      ; $4b11: $2a
	push de                                          ; $4b12: $d5
	dec [hl]                                         ; $4b13: $35
	jp z, Jump_049_7a70                              ; $4b14: $ca $70 $7a

	or $80                                           ; $4b17: $f6 $80
	ld [hl], h                                       ; $4b19: $74
	ei                                               ; $4b1a: $fb
	halt                                             ; $4b1b: $76
	ld sp, hl                                        ; $4b1c: $f9
	halt                                             ; $4b1d: $76
	ld sp, hl                                        ; $4b1e: $f9
	ld a, a                                          ; $4b1f: $7f
	ldh a, [rPCM34]                                  ; $4b20: $f0 $77
	ld hl, sp+$7f                                    ; $4b22: $f8 $7f
	ldh a, [hDisp0_OBP1]                                     ; $4b24: $f0 $87
	rst $38                                          ; $4b26: $ff
	daa                                              ; $4b27: $27
	rst SubAFromDE                                          ; $4b28: $df
	ld b, a                                          ; $4b29: $47
	cp a                                             ; $4b2a: $bf
	sub a                                            ; $4b2b: $97
	ld l, a                                          ; $4b2c: $6f
	ld b, $ff                                        ; $4b2d: $06 $ff
	ld [hl], $cf                                     ; $4b2f: $36 $cf
	or d                                             ; $4b31: $b2
	ld c, a                                          ; $4b32: $4f
	ldh a, [c]                                       ; $4b33: $f2
	rrca                                             ; $4b34: $0f
	ld b, e                                          ; $4b35: $43
	cp a                                             ; $4b36: $bf
	ld bc, $ff8c                                     ; $4b37: $01 $8c $ff
	ld d, c                                          ; $4b3a: $51
	cp a                                             ; $4b3b: $bf
	ld hl, $59df                                     ; $4b3c: $21 $df $59
	and a                                            ; $4b3f: $a7
	dec a                                            ; $4b40: $3d
	jp $8779                                         ; $4b41: $c3 $79 $87


	ld hl, sp+$07                                    ; $4b44: $f8 $07
	ret nz                                           ; $4b46: $c0

	rst $38                                          ; $4b47: $ff
	push bc                                          ; $4b48: $c5
	ld a, [$f5ca]                                    ; $4b49: $fa $ca $f5
	ld [hl], a                                       ; $4b4c: $77
	ld a, [$9b8e]                                    ; $4b4d: $fa $8e $9b
	db $e4                                           ; $4b50: $e4
	rst $38                                          ; $4b51: $ff
	ret nz                                           ; $4b52: $c0

	rst SubAFromDE                                          ; $4b53: $df
	ldh [$7c], a                                     ; $4b54: $e0 $7c
	rst $38                                          ; $4b56: $ff
	ld a, $fd                                        ; $4b57: $3e $fd
	cp l                                             ; $4b59: $bd
	ld a, [hl]                                       ; $4b5a: $7e
	cp a                                             ; $4b5b: $bf
	ld a, h                                          ; $4b5c: $7c
	sbc c                                            ; $4b5d: $99
	ld a, [hl]                                       ; $4b5e: $7e
	sbc e                                            ; $4b5f: $9b
	ld a, e                                          ; $4b60: $7b
	db $fc                                           ; $4b61: $fc
	sbc l                                            ; $4b62: $9d
	add hl, de                                       ; $4b63: $19
	cp $77                                           ; $4b64: $fe $77
	ld h, b                                          ; $4b66: $60
	add b                                            ; $4b67: $80
	add hl, bc                                       ; $4b68: $09
	rst FarCall                                          ; $4b69: $f7
	pop af                                           ; $4b6a: $f1
	rrca                                             ; $4b6b: $0f
	pop af                                           ; $4b6c: $f1
	rrca                                             ; $4b6d: $0f
	ei                                               ; $4b6e: $fb
	dec b                                            ; $4b6f: $05
	push af                                          ; $4b70: $f5
	dec bc                                           ; $4b71: $0b

Call_049_4b72:
	db $fd                                           ; $4b72: $fd
	inc bc                                           ; $4b73: $03
	add b                                            ; $4b74: $80
	rst $38                                          ; $4b75: $ff
	sub b                                            ; $4b76: $90
	rst AddAOntoHL                                          ; $4b77: $ef
	xor b                                            ; $4b78: $a8

Jump_049_4b79:
	rst SubAFromHL                                          ; $4b79: $d7
	and b                                            ; $4b7a: $a0
	rst SubAFromDE                                          ; $4b7b: $df
	or d                                             ; $4b7c: $b2
	call $c0bf                                       ; $4b7d: $cd $bf $c0
	cp [hl]                                          ; $4b80: $be
	pop bc                                           ; $4b81: $c1
	cp a                                             ; $4b82: $bf
	ret nz                                           ; $4b83: $c0

	ldh [rIE], a                                     ; $4b84: $e0 $ff
	pop hl                                           ; $4b86: $e1
	add b                                            ; $4b87: $80
	cp $e3                                           ; $4b88: $fe $e3
	db $fc                                           ; $4b8a: $fc
	ld l, b                                          ; $4b8b: $68
	rst FarCall                                          ; $4b8c: $f7
	ld h, l                                          ; $4b8d: $65
	ld a, [$f06f]                                    ; $4b8e: $fa $6f $f0
	ld h, a                                          ; $4b91: $67
	ld hl, sp+$6f                                    ; $4b92: $f8 $6f
	ldh a, [$8e]                                     ; $4b94: $f0 $8e
	ld a, a                                          ; $4b96: $7f
	ld l, $df                                        ; $4b97: $2e $df
	ld c, $ff                                        ; $4b99: $0e $ff
	xor $1f                                          ; $4b9b: $ee $1f
	xor $1f                                          ; $4b9d: $ee $1f
	sbc $3f                                          ; $4b9f: $de $3f
	xor $1f                                          ; $4ba1: $ee $1f
	adc $3f                                          ; $4ba3: $ce $3f
	ld b, b                                          ; $4ba5: $40
	cp a                                             ; $4ba6: $bf
	sub b                                            ; $4ba7: $90
	jr nz, @-$1f                                     ; $4ba8: $20 $df

	ld a, b                                          ; $4baa: $78
	add a                                            ; $4bab: $87
	and d                                            ; $4bac: $a2
	ld e, l                                          ; $4bad: $5d
	ld h, h                                          ; $4bae: $64
	sbc e                                            ; $4baf: $9b
	cp $01                                           ; $4bb0: $fe $01
	ld a, a                                          ; $4bb2: $7f
	add b                                            ; $4bb3: $80
	cp $01                                           ; $4bb4: $fe $01
	ldh a, [c]                                       ; $4bb6: $f2
	ld a, e                                          ; $4bb7: $7b
	ld h, b                                          ; $4bb8: $60
	ld a, a                                          ; $4bb9: $7f
	cp $85                                           ; $4bba: $fe $85
	pop af                                           ; $4bbc: $f1
	cp $70                                           ; $4bbd: $fe $70
	rst $38                                          ; $4bbf: $ff
	di                                               ; $4bc0: $f3
	db $fc                                           ; $4bc1: $fc
	rst SubAFromBC                                          ; $4bc2: $e7
	ld hl, sp-$1d                                    ; $4bc3: $f8 $e3
	db $fc                                           ; $4bc5: $fc
	ld a, [de]                                       ; $4bc6: $1a
	db $fd                                           ; $4bc7: $fd
	add hl, de                                       ; $4bc8: $19
	cp $b8                                           ; $4bc9: $fe $b8
	ld a, a                                          ; $4bcb: $7f
	jr c, @+$01                                      ; $4bcc: $38 $ff

	cp d                                             ; $4bce: $ba
	ld a, l                                          ; $4bcf: $7d
	add hl, sp                                       ; $4bd0: $39
	cp $bb                                           ; $4bd1: $fe $bb
	ld a, h                                          ; $4bd3: $7c
	add hl, sp                                       ; $4bd4: $39
	cp $76                                           ; $4bd5: $fe $76
	add sp, -$70                                     ; $4bd7: $e8 $90
	add a                                            ; $4bd9: $87
	ld a, a                                          ; $4bda: $7f
	ld b, a                                          ; $4bdb: $47
	cp a                                             ; $4bdc: $bf
	rlca                                             ; $4bdd: $07
	rst $38                                          ; $4bde: $ff
	and a                                            ; $4bdf: $a7
	ld e, a                                          ; $4be0: $5f
	rst SubAFromHL                                          ; $4be1: $d7
	cpl                                              ; $4be2: $2f
	db $e3                                           ; $4be3: $e3
	rra                                              ; $4be4: $1f
	adc a                                            ; $4be5: $8f
	rst $38                                          ; $4be6: $ff
	add h                                            ; $4be7: $84
	ld a, e                                          ; $4be8: $7b
	ld e, $77                                        ; $4be9: $1e $77
	cp $99                                           ; $4beb: $fe $99
	adc d                                            ; $4bed: $8a
	push af                                          ; $4bee: $f5
	sbc h                                            ; $4bef: $9c
	db $e3                                           ; $4bf0: $e3
	adc [hl]                                         ; $4bf1: $8e
	pop af                                           ; $4bf2: $f1
	ld [hl], a                                       ; $4bf3: $77
	ld a, [bc]                                       ; $4bf4: $0a
	ld a, a                                          ; $4bf5: $7f
	db $fc                                           ; $4bf6: $fc
	adc e                                            ; $4bf7: $8b
	db $d3                                           ; $4bf8: $d3
	cpl                                              ; $4bf9: $2f
	cp e                                             ; $4bfa: $bb
	ld b, a                                          ; $4bfb: $47
	di                                               ; $4bfc: $f3
	rrca                                             ; $4bfd: $0f
	cp d                                             ; $4bfe: $ba
	ld b, a                                          ; $4bff: $47
	ldh a, [c]                                       ; $4c00: $f2
	rrca                                             ; $4c01: $0f
	inc h                                            ; $4c02: $24
	db $db                                           ; $4c03: $db
	ld d, [hl]                                       ; $4c04: $56
	xor c                                            ; $4c05: $a9
	ld a, $c1                                        ; $4c06: $3e $c1
	ld a, [hl]                                       ; $4c08: $7e
	add c                                            ; $4c09: $81
	ccf                                              ; $4c0a: $3f
	ret nz                                           ; $4c0b: $c0

	ld l, a                                          ; $4c0c: $6f
	db $fc                                           ; $4c0d: $fc
	ld a, a                                          ; $4c0e: $7f
	ld a, h                                          ; $4c0f: $7c
	ld c, a                                          ; $4c10: $4f
	cp $99                                           ; $4c11: $fe $99
	ld c, h                                          ; $4c13: $4c
	cp a                                             ; $4c14: $bf
	adc b                                            ; $4c15: $88
	ld a, a                                          ; $4c16: $7f
	ret z                                            ; $4c17: $c8

	ccf                                              ; $4c18: $3f
	ld l, a                                          ; $4c19: $6f
	db $fc                                           ; $4c1a: $fc
	sub l                                            ; $4c1b: $95
	adc d                                            ; $4c1c: $8a
	ld a, l                                          ; $4c1d: $7d
	xor [hl]                                         ; $4c1e: $ae
	ld e, c                                          ; $4c1f: $59

jr_049_4c20:
	ld d, e                                          ; $4c20: $53
	xor a                                            ; $4c21: $af
	cp e                                             ; $4c22: $bb
	ld b, a                                          ; $4c23: $47
	ld [hl], e                                       ; $4c24: $73
	adc a                                            ; $4c25: $8f
	ld [hl], a                                       ; $4c26: $77
	db $fc                                           ; $4c27: $fc
	add b                                            ; $4c28: $80
	ei                                               ; $4c29: $fb
	rlca                                             ; $4c2a: $07
	ld [hl], e                                       ; $4c2b: $73
	adc a                                            ; $4c2c: $8f
	ld sp, hl                                        ; $4c2d: $f9
	rlca                                             ; $4c2e: $07
	ld a, [hl+]                                      ; $4c2f: $2a
	push de                                          ; $4c30: $d5
	ld d, $e9                                        ; $4c31: $16 $e9
	ld a, $c1                                        ; $4c33: $3e $c1
	ld a, $c1                                        ; $4c35: $3e $c1
	cp l                                             ; $4c37: $bd
	ld b, d                                          ; $4c38: $42
	ld e, $e1                                        ; $4c39: $1e $e1
	or a                                             ; $4c3b: $b7
	ld c, b                                          ; $4c3c: $48
	ld e, [hl]                                       ; $4c3d: $5e
	and c                                            ; $4c3e: $a1
	ld [hl], a                                       ; $4c3f: $77
	ld hl, sp+$77                                    ; $4c40: $f8 $77
	ld hl, sp+$37                                    ; $4c42: $f8 $37
	ld hl, sp-$49                                    ; $4c44: $f8 $b7
	ld a, b                                          ; $4c46: $78
	daa                                              ; $4c47: $27
	sbc l                                            ; $4c48: $9d
	ld hl, sp-$59                                    ; $4c49: $f8 $a7
	ld a, e                                          ; $4c4b: $7b
	db $fc                                           ; $4c4c: $fc
	sub d                                            ; $4c4d: $92
	and l                                            ; $4c4e: $a5
	ld a, b                                          ; $4c4f: $78
	ld a, [$f607]                                    ; $4c50: $fa $07 $f6
	rrca                                             ; $4c53: $0f
	ldh [c], a                                       ; $4c54: $e2
	rra                                              ; $4c55: $1f
	ldh a, [c]                                       ; $4c56: $f2
	rrca                                             ; $4c57: $0f
	ld [$f217], a                                    ; $4c58: $ea $17 $f2
	ld a, e                                          ; $4c5b: $7b
	ld hl, sp+$7f                                    ; $4c5c: $f8 $7f
	cp $7f                                           ; $4c5e: $fe $7f
	inc [hl]                                         ; $4c60: $34
	ld a, [hl]                                       ; $4c61: $7e

jr_049_4c62:
	call z, $fc7f                                    ; $4c62: $cc $7f $fc
	adc [hl]                                         ; $4c65: $8e
	ld a, [$7005]                                    ; $4c66: $fa $05 $70
	adc a                                            ; $4c69: $8f
	ld a, [$dc05]                                    ; $4c6a: $fa $05 $dc
	inc hl                                           ; $4c6d: $23
	db $ec                                           ; $4c6e: $ec
	inc de                                           ; $4c6f: $13
	ei                                               ; $4c70: $fb
	call nz, $e0df                                   ; $4c71: $c4 $df $e0
	cp a                                             ; $4c74: $bf
	ret nz                                           ; $4c75: $c0

	sbc a                                            ; $4c76: $9f
	ld [hl], e                                       ; $4c77: $73
	db $fc                                           ; $4c78: $fc
	ld [hl], a                                       ; $4c79: $77
	cp $76                                           ; $4c7a: $fe $76
	call z, $9d91                                    ; $4c7c: $cc $91 $9d
	ld a, d                                          ; $4c7f: $7a
	ld e, [hl]                                       ; $4c80: $5e
	cp c                                             ; $4c81: $b9
	rst SubAFromDE                                          ; $4c82: $df
	jr c, jr_049_4c62                                ; $4c83: $38 $dd

	jr c, jr_049_4c20                                ; $4c85: $38 $99

	ld a, h                                          ; $4c87: $7c

jr_049_4c88:
	db $dd                                           ; $4c88: $dd
	jr c, jr_049_4c88                                ; $4c89: $38 $fd

	inc bc                                           ; $4c8b: $03
	ld l, a                                          ; $4c8c: $6f
	cp $9e                                           ; $4c8d: $fe $9e
	db $ed                                           ; $4c8f: $ed
	ld a, e                                          ; $4c90: $7b
	cp $9e                                           ; $4c91: $fe $9e
	call $f87b                                       ; $4c93: $cd $7b $f8
	halt                                             ; $4c96: $76
	call z, $927f                                    ; $4c97: $cc $7f $92
	adc l                                            ; $4c9a: $8d
	rst SubAFromDE                                          ; $4c9b: $df
	and b                                            ; $4c9c: $a0
	ld a, $c1                                        ; $4c9d: $3e $c1
	ld a, a                                          ; $4c9f: $7f
	add b                                            ; $4ca0: $80
	cp a                                             ; $4ca1: $bf
	ret nz                                           ; $4ca2: $c0

	xor a                                            ; $4ca3: $af
	ret nz                                           ; $4ca4: $c0

	ld a, a                                          ; $4ca5: $7f
	ldh [$6f], a                                     ; $4ca6: $e0 $6f
	ldh a, [$7f]                                     ; $4ca8: $f0 $7f
	ldh [rOCPD], a                                   ; $4caa: $e0 $6b
	ldh a, [rPCM34]                                  ; $4cac: $f0 $77
	cp $98                                           ; $4cae: $fe $98
	ld [hl], c                                       ; $4cb0: $71
	add sp, $79                                      ; $4cb1: $e8 $79
	ldh [$ee], a                                     ; $4cb3: $e0 $ee
	rra                                              ; $4cb5: $1f
	and $6b                                          ; $4cb6: $e6 $6b
	cp $89                                           ; $4cb8: $fe $89
	add $3f                                          ; $4cba: $c6 $3f
	and $1f                                          ; $4cbc: $e6 $1f
	or $0f                                           ; $4cbe: $f6 $0f
	ld a, [hl]                                       ; $4cc0: $7e
	add c                                            ; $4cc1: $81
	cp $01                                           ; $4cc2: $fe $01
	cp $01                                           ; $4cc4: $fe $01
	ld a, [hl]                                       ; $4cc6: $7e
	add c                                            ; $4cc7: $81
	ld a, [hl]                                       ; $4cc8: $7e
	add c                                            ; $4cc9: $81
	cp a                                             ; $4cca: $bf
	ld b, b                                          ; $4ccb: $40
	rst AddAOntoHL                                          ; $4ccc: $ef
	nop                                              ; $4ccd: $00
	xor a                                            ; $4cce: $af
	ld b, b                                          ; $4ccf: $40
	halt                                             ; $4cd0: $76
	call z, $947e                                    ; $4cd1: $cc $7e $94
	ld [hl], a                                       ; $4cd4: $77
	ld h, $95                                        ; $4cd5: $26 $95
	ld h, [hl]                                       ; $4cd7: $66
	ld sp, hl                                        ; $4cd8: $f9
	rst SubAFromBC                                          ; $4cd9: $e7
	ld a, b                                          ; $4cda: $78
	ld h, c                                          ; $4cdb: $61
	db $fc                                           ; $4cdc: $fc
	cp c                                             ; $4cdd: $b9
	ld a, [hl]                                       ; $4cde: $7e
	add hl, sp                                       ; $4cdf: $39
	cp $77                                           ; $4ce0: $fe $77
	adc h                                            ; $4ce2: $8c
	ld l, a                                          ; $4ce3: $6f
	cp $99                                           ; $4ce4: $fe $99
	cp b                                             ; $4ce6: $b8
	ld e, a                                          ; $4ce7: $5f
	di                                               ; $4ce8: $f3
	rrca                                             ; $4ce9: $0f
	ei                                               ; $4cea: $fb
	rlca                                             ; $4ceb: $07
	ld e, a                                          ; $4cec: $5f
	db $fc                                           ; $4ced: $fc
	ld a, a                                          ; $4cee: $7f
	cp $9b                                           ; $4cef: $fe $9b
	sbc l                                            ; $4cf1: $9d
	ldh [c], a                                       ; $4cf2: $e2
	xor a                                            ; $4cf3: $af
	ret nc                                           ; $4cf4: $d0

	ld l, a                                          ; $4cf5: $6f
	ld h, d                                          ; $4cf6: $62
	ld l, a                                          ; $4cf7: $6f
	db $fc                                           ; $4cf8: $fc
	sbc e                                            ; $4cf9: $9b
	cp d                                             ; $4cfa: $ba
	rlca                                             ; $4cfb: $07
	ld [hl], d                                       ; $4cfc: $72
	adc a                                            ; $4cfd: $8f
	ld [hl], a                                       ; $4cfe: $77
	ld [hl], $9d                                     ; $4cff: $36 $9d
	jp nz, Jump_049_773f                             ; $4d01: $c2 $3f $77

	inc l                                            ; $4d04: $2c
	ld a, a                                          ; $4d05: $7f
	ld [hl+], a                                      ; $4d06: $22
	halt                                             ; $4d07: $76
	call nz, $ba8e                                   ; $4d08: $c4 $8e $ba
	ld b, c                                          ; $4d0b: $41
	ld e, d                                          ; $4d0c: $5a
	and c                                            ; $4d0d: $a1
	ld [$fa11], a                                    ; $4d0e: $ea $11 $fa
	ld bc, $12ed                                     ; $4d11: $01 $ed $12
	cp $01                                           ; $4d14: $fe $01
	ld h, a                                          ; $4d16: $67
	ld hl, sp+$4f                                    ; $4d17: $f8 $4f
	ldh a, [rBGP]                                    ; $4d19: $f0 $47
	ld a, e                                          ; $4d1b: $7b
	db $fc                                           ; $4d1c: $fc
	sub a                                            ; $4d1d: $97
	ld d, a                                          ; $4d1e: $57
	add sp, $47                                      ; $4d1f: $e8 $47
	ld hl, sp+$56                                    ; $4d21: $f8 $56
	jp hl                                            ; $4d23: $e9


	ld e, l                                          ; $4d24: $5d
	ldh [rPCM12], a                                  ; $4d25: $e0 $76
	call z, $ca88                                    ; $4d27: $cc $88 $ca
	dec a                                            ; $4d2a: $3d
	ret                                              ; $4d2b: $c9


	inc a                                            ; $4d2c: $3c
	adc c                                            ; $4d2d: $89
	ld a, h                                          ; $4d2e: $7c
	ret                                              ; $4d2f: $c9


	inc a                                            ; $4d30: $3c
	xor e                                            ; $4d31: $ab
	ld e, h                                          ; $4d32: $5c
	ld c, e                                          ; $4d33: $4b
	cp h                                             ; $4d34: $bc
	ld [hl], l                                       ; $4d35: $75
	adc e                                            ; $4d36: $8b
	ld sp, hl                                        ; $4d37: $f9
	rlca                                             ; $4d38: $07
	ld [hl], l                                       ; $4d39: $75
	adc e                                            ; $4d3a: $8b
	db $dd                                           ; $4d3b: $dd
	inc bc                                           ; $4d3c: $03
	push de                                          ; $4d3d: $d5
	dec bc                                           ; $4d3e: $0b
	db $fc                                           ; $4d3f: $fc
	ld a, e                                          ; $4d40: $7b
	ld [hl-], a                                      ; $4d41: $32
	ld a, a                                          ; $4d42: $7f
	db $fc                                           ; $4d43: $fc
	add b                                            ; $4d44: $80
	sbc a                                            ; $4d45: $9f
	ld h, b                                          ; $4d46: $60
	ld e, [hl]                                       ; $4d47: $5e
	and c                                            ; $4d48: $a1
	adc a                                            ; $4d49: $8f
	ld [hl], b                                       ; $4d4a: $70
	ld e, [hl]                                       ; $4d4b: $5e
	and c                                            ; $4d4c: $a1
	adc $31                                          ; $4d4d: $ce $31
	ld c, l                                          ; $4d4f: $4d
	or d                                             ; $4d50: $b2
	ld l, a                                          ; $4d51: $6f
	sub b                                            ; $4d52: $90
	ld e, a                                          ; $4d53: $5f
	and b                                            ; $4d54: $a0
	ld hl, $a3fc                                     ; $4d55: $21 $fc $a3
	ld a, h                                          ; $4d58: $7c
	and e                                            ; $4d59: $a3
	ld a, h                                          ; $4d5a: $7c
	and d                                            ; $4d5b: $a2
	ld a, h                                          ; $4d5c: $7c
	ld [$ea74], a                                    ; $4d5d: $ea $74 $ea
	ld [hl], h                                       ; $4d60: $74
	ld h, c                                          ; $4d61: $61
	cp $ea                                           ; $4d62: $fe $ea
	add b                                            ; $4d64: $80
	ld [hl], l                                       ; $4d65: $75
	db $eb                                           ; $4d66: $eb
	ld d, $e2                                        ; $4d67: $16 $e2
	rra                                              ; $4d69: $1f
	db $eb                                           ; $4d6a: $eb
	ld d, $fb                                        ; $4d6b: $16 $fb
	ld b, $eb                                        ; $4d6d: $06 $eb
	ld d, $13                                        ; $4d6f: $16 $13
	ld l, $fb                                        ; $4d71: $2e $fb
	ld b, $f3                                        ; $4d73: $06 $f3
	ld c, $7c                                        ; $4d75: $0e $7c
	add e                                            ; $4d77: $83
	db $fc                                           ; $4d78: $fc
	inc bc                                           ; $4d79: $03
	ld l, h                                          ; $4d7a: $6c
	add e                                            ; $4d7b: $83
	db $e4                                           ; $4d7c: $e4
	inc bc                                           ; $4d7d: $03
	ld hl, sp+$07                                    ; $4d7e: $f8 $07
	ld hl, sp+$07                                    ; $4d80: $f8 $07
	ld [$8015], a                                    ; $4d82: $ea $15 $80
	call c, $9f03                                    ; $4d85: $dc $03 $9f
	ldh [$ce], a                                     ; $4d88: $e0 $ce
	or b                                             ; $4d8a: $b0
	sbc [hl]                                         ; $4d8b: $9e
	ldh [$ae], a                                     ; $4d8c: $e0 $ae
	ret nc                                           ; $4d8e: $d0

	cp a                                             ; $4d8f: $bf
	ret nz                                           ; $4d90: $c0

	xor c                                            ; $4d91: $a9
	ret nc                                           ; $4d92: $d0

	or c                                             ; $4d93: $b1
	ret z                                            ; $4d94: $c8

	and a                                            ; $4d95: $a7
	ret c                                            ; $4d96: $d8

	sbc b                                            ; $4d97: $98
	ld a, h                                          ; $4d98: $7c
	sbc $38                                          ; $4d99: $de $38
	sbc d                                            ; $4d9b: $9a
	ld a, h                                          ; $4d9c: $7c
	ld e, [hl]                                       ; $4d9d: $5e
	cp b                                             ; $4d9e: $b8
	sbc a                                            ; $4d9f: $9f
	ld a, b                                          ; $4da0: $78
	ld e, a                                          ; $4da1: $5f
	cp b                                             ; $4da2: $b8
	sbc e                                            ; $4da3: $9b
	sbc h                                            ; $4da4: $9c
	ld a, h                                          ; $4da5: $7c
	ld e, l                                          ; $4da6: $5d
	cp d                                             ; $4da7: $ba
	halt                                             ; $4da8: $76
	call nz, Call_049_7d80                           ; $4da9: $c4 $80 $7d
	add e                                            ; $4dac: $83
	push af                                          ; $4dad: $f5
	inc bc                                           ; $4dae: $03
	ld [hl], l                                       ; $4daf: $75
	add e                                            ; $4db0: $83
	push hl                                          ; $4db1: $e5
	inc bc                                           ; $4db2: $03
	adc l                                            ; $4db3: $8d
	ld b, e                                          ; $4db4: $43
	cp l                                             ; $4db5: $bd
	ld b, e                                          ; $4db6: $43
	xor a                                            ; $4db7: $af
	ret nz                                           ; $4db8: $c0

	ld l, [hl]                                       ; $4db9: $6e
	add b                                            ; $4dba: $80
	ld h, $c0                                        ; $4dbb: $26 $c0
	ld h, [hl]                                       ; $4dbd: $66
	add b                                            ; $4dbe: $80
	inc [hl]                                         ; $4dbf: $34
	ret nz                                           ; $4dc0: $c0

	ld a, l                                          ; $4dc1: $7d
	add b                                            ; $4dc2: $80
	add hl, sp                                       ; $4dc3: $39
	ret nz                                           ; $4dc4: $c0

	or $89                                           ; $4dc5: $f6 $89
	push af                                          ; $4dc7: $f5
	ld l, b                                          ; $4dc8: $68
	ld a, l                                          ; $4dc9: $7d
	ld a, l                                          ; $4dca: $7d
	ld c, h                                          ; $4dcb: $4c
	add a                                            ; $4dcc: $87
	ldh [$78], a                                     ; $4dcd: $e0 $78
	db $e4                                           ; $4dcf: $e4
	ld a, d                                          ; $4dd0: $7a
	db $e4                                           ; $4dd1: $e4
	ld e, e                                          ; $4dd2: $5b
	db $e4                                           ; $4dd3: $e4
	ld d, c                                          ; $4dd4: $51
	and $5d                                          ; $4dd5: $e6 $5d
	ldh [c], a                                       ; $4dd7: $e2
	or $0f                                           ; $4dd8: $f6 $0f
	or $0f                                           ; $4dda: $f6 $0f
	sub $0f                                          ; $4ddc: $d6 $0f

jr_049_4dde:
	ld b, [hl]                                       ; $4dde: $46
	rra                                              ; $4ddf: $1f
	ld d, $0f                                        ; $4de0: $16 $0f
	ld h, $1f                                        ; $4de2: $26 $1f

jr_049_4de4:
	ld [hl], $7b                                     ; $4de4: $36 $7b
	db $fc                                           ; $4de6: $fc
	add b                                            ; $4de7: $80
	xor l                                            ; $4de8: $ad
	ld b, b                                          ; $4de9: $40
	push bc                                          ; $4dea: $c5
	jr nz, jr_049_4dde                               ; $4deb: $20 $f1

	nop                                              ; $4ded: $00
	pop de                                           ; $4dee: $d1
	jr nz, jr_049_4de4                               ; $4def: $20 $f3

	nop                                              ; $4df1: $00
	ld e, a                                          ; $4df2: $5f
	and b                                            ; $4df3: $a0
	rst AddAOntoHL                                          ; $4df4: $ef
	db $10                                           ; $4df5: $10
	ld h, a                                          ; $4df6: $67
	sbc b                                            ; $4df7: $98
	push hl                                          ; $4df8: $e5
	ld a, b                                          ; $4df9: $78
	ld [hl], c                                       ; $4dfa: $71
	db $ec                                           ; $4dfb: $ec
	pop hl                                           ; $4dfc: $e1
	ld a, h                                          ; $4dfd: $7c
	ld [hl], d                                       ; $4dfe: $72
	db $ec                                           ; $4dff: $ec
	ld [$6b74], a                                    ; $4e00: $ea $74 $6b
	db $f4                                           ; $4e03: $f4
	call Call_049_4b72                               ; $4e04: $cd $72 $4b
	sub a                                            ; $4e07: $97
	ldh a, [$59]                                     ; $4e08: $f0 $59
	cp [hl]                                          ; $4e0a: $be
	ld hl, sp+$1f                                    ; $4e0b: $f8 $1f
	ret c                                            ; $4e0d: $d8

	ccf                                              ; $4e0e: $3f
	ld a, b                                          ; $4e0f: $78
	ld a, e                                          ; $4e10: $7b
	db $fc                                           ; $4e11: $fc
	sub b                                            ; $4e12: $90
	ld a, [$591d]                                    ; $4e13: $fa $1d $59
	cp [hl]                                          ; $4e16: $be
	reti                                             ; $4e17: $d9


	ld a, $f3                                        ; $4e18: $3e $f3
	rrca                                             ; $4e1a: $0f
	db $d3                                           ; $4e1b: $d3
	rrca                                             ; $4e1c: $0f
	or a                                             ; $4e1d: $b7
	dec bc                                           ; $4e1e: $0b
	cp e                                             ; $4e1f: $bb
	rlca                                             ; $4e20: $07
	ei                                               ; $4e21: $fb
	ld a, e                                          ; $4e22: $7b
	cp $90                                           ; $4e23: $fe $90
	ld l, e                                          ; $4e25: $6b
	add a                                            ; $4e26: $87
	rlc a                                            ; $4e27: $cb $07
	sbc [hl]                                         ; $4e29: $9e
	pop hl                                           ; $4e2a: $e1
	or e                                             ; $4e2b: $b3
	ret nz                                           ; $4e2c: $c0

	db $fc                                           ; $4e2d: $fc
	add e                                            ; $4e2e: $83
	db $ed                                           ; $4e2f: $ed
	sub d                                            ; $4e30: $92
	ld a, a                                          ; $4e31: $7f
	add b                                            ; $4e32: $80
	ld a, a                                          ; $4e33: $7f
	ld a, c                                          ; $4e34: $79
	ld a, e                                          ; $4e35: $7b
	ld a, a                                          ; $4e36: $7f
	add d                                            ; $4e37: $82
	sbc e                                            ; $4e38: $9b
	ld e, d                                          ; $4e39: $5a
	and a                                            ; $4e3a: $a7
	ld a, [$7607]                                    ; $4e3b: $fa $07 $76
	add $9d                                          ; $4e3e: $c6 $9d
	jp nc, Jump_049_772f                             ; $4e40: $d2 $2f $77

	db $fc                                           ; $4e43: $fc
	sbc b                                            ; $4e44: $98
	adc d                                            ; $4e45: $8a
	ld [hl], a                                       ; $4e46: $77
	db $fd                                           ; $4e47: $fd
	ld [bc], a                                       ; $4e48: $02
	rst $38                                          ; $4e49: $ff
	nop                                              ; $4e4a: $00
	rst FarCall                                          ; $4e4b: $f7
	ld a, e                                          ; $4e4c: $7b
	cp $7f                                           ; $4e4d: $fe $7f
	ld a, [$627e]                                    ; $4e4f: $fa $7e $62
	ld [hl], h                                       ; $4e52: $74
	dec a                                            ; $4e53: $3d
	sbc b                                            ; $4e54: $98
	ld d, l                                          ; $4e55: $55
	add sp, $5c                                      ; $4e56: $e8 $5c
	ldh [$7f], a                                     ; $4e58: $e0 $7f
	ret nz                                           ; $4e5a: $c0

	ld e, a                                          ; $4e5b: $5f
	ld [hl], e                                       ; $4e5c: $73
	db $fc                                           ; $4e5d: $fc
	ld a, a                                          ; $4e5e: $7f
	ld [hl], d                                       ; $4e5f: $72
	adc h                                            ; $4e60: $8c
	ld a, e                                          ; $4e61: $7b
	call nz, Func_1ceb                                   ; $4e62: $c4 $eb $1c
	srl h                                            ; $4e65: $cb $3c
	ld [$da1c], a                                    ; $4e67: $ea $1c $da
	inc l                                            ; $4e6a: $2c
	and e                                            ; $4e6b: $a3
	ld e, h                                          ; $4e6c: $5c
	db $e3                                           ; $4e6d: $e3
	inc e                                            ; $4e6e: $1c
	and e                                            ; $4e6f: $a3
	ld e, h                                          ; $4e70: $5c
	ld h, e                                          ; $4e71: $63
	sbc h                                            ; $4e72: $9c
	db $fc                                           ; $4e73: $fc
	ld a, d                                          ; $4e74: $7a
	call z, $f498                                    ; $4e75: $cc $98 $f4
	inc bc                                           ; $4e78: $03
	ldh a, [rTAC]                                    ; $4e79: $f0 $07
	db $ec                                           ; $4e7b: $ec
	inc bc                                           ; $4e7c: $03
	db $ec                                           ; $4e7d: $ec
	ld a, e                                          ; $4e7e: $7b
	or $7f                                           ; $4e7f: $f6 $7f
	cp $77                                           ; $4e81: $fe $77
	call z, $f679                                    ; $4e83: $cc $79 $f6
	add b                                            ; $4e86: $80
	ld b, b                                          ; $4e87: $40
	ld e, a                                          ; $4e88: $5f
	and b                                            ; $4e89: $a0
	xor a                                            ; $4e8a: $af
	ld d, b                                          ; $4e8b: $50
	ld b, a                                          ; $4e8c: $47
	cp b                                             ; $4e8d: $b8
	rst JumpTable                                          ; $4e8e: $c7
	jr c, jr_049_4ef6                                ; $4e8f: $38 $65

	ld a, [$70ef]                                    ; $4e91: $fa $ef $70
	daa                                              ; $4e94: $27
	ld hl, sp-$11                                    ; $4e95: $f8 $ef
	ld [hl], b                                       ; $4e97: $70
	ld h, a                                          ; $4e98: $67
	ld hl, sp-$1b                                    ; $4e99: $f8 $e5
	ld a, d                                          ; $4e9b: $7a
	ld l, e                                          ; $4e9c: $6b
	db $f4                                           ; $4e9d: $f4
	db $ed                                           ; $4e9e: $ed
	ld [hl], d                                       ; $4e9f: $72
	cp $07                                           ; $4ea0: $fe $07
	rst FarCall                                          ; $4ea2: $f7
	ld c, $f6                                        ; $4ea3: $0e $f6
	rrca                                             ; $4ea5: $0f
	sub c                                            ; $4ea6: $91
	or e                                             ; $4ea7: $b3
	ld c, $b0                                        ; $4ea8: $0e $b0
	rrca                                             ; $4eaa: $0f
	ld [hl], b                                       ; $4eab: $70
	rrca                                             ; $4eac: $0f

jr_049_4ead:
	ldh [$1f], a                                     ; $4ead: $e0 $1f
	pop bc                                           ; $4eaf: $c1
	ld a, $ca                                        ; $4eb0: $3e $ca
	dec b                                            ; $4eb2: $05
	ld a, h                                          ; $4eb3: $7c
	inc bc                                           ; $4eb4: $03
	ld [hl], a                                       ; $4eb5: $77
	cp $91                                           ; $4eb6: $fe $91
	cp h                                             ; $4eb8: $bc
	inc bc                                           ; $4eb9: $03
	cp b                                             ; $4eba: $b8
	rlca                                             ; $4ebb: $07
	sbc h                                            ; $4ebc: $9c
	inc bc                                           ; $4ebd: $03
	ld c, d                                          ; $4ebe: $4a
	add l                                            ; $4ebf: $85
	cp a                                             ; $4ec0: $bf
	ret nz                                           ; $4ec1: $c0

	add a                                            ; $4ec2: $87
	ldh [$bb], a                                     ; $4ec3: $e0 $bb
	ret nz                                           ; $4ec5: $c0

	ld [hl], h                                       ; $4ec6: $74
	ld [hl], h                                       ; $4ec7: $74
	halt                                             ; $4ec8: $76
	ld [hl+], a                                      ; $4ec9: $22
	ld a, l                                          ; $4eca: $7d
	xor b                                            ; $4ecb: $a8
	sbc c                                            ; $4ecc: $99
	db $db                                           ; $4ecd: $db
	inc a                                            ; $4ece: $3c
	rst SubAFromDE                                          ; $4ecf: $df
	jr c, jr_049_4ead                                ; $4ed0: $38 $db

	inc a                                            ; $4ed2: $3c
	ld [hl], a                                       ; $4ed3: $77
	cp $8f                                           ; $4ed4: $fe $8f
	ld e, d                                          ; $4ed6: $5a
	dec a                                            ; $4ed7: $3d
	ld e, c                                          ; $4ed8: $59
	ld a, $5b                                        ; $4ed9: $3e $5b
	inc a                                            ; $4edb: $3c
	sbc l                                            ; $4edc: $9d
	ld h, e                                          ; $4edd: $63
	ld a, l                                          ; $4ede: $7d
	inc bc                                           ; $4edf: $03
	dec e                                            ; $4ee0: $1d
	inc bc                                           ; $4ee1: $03
	sbc l                                            ; $4ee2: $9d
	inc bc                                           ; $4ee3: $03
	ld sp, hl                                        ; $4ee4: $f9
	rlca                                             ; $4ee5: $07
	halt                                             ; $4ee6: $76
	or [hl]                                          ; $4ee7: $b6
	ld a, h                                          ; $4ee8: $7c
	ld a, $9d                                        ; $4ee9: $3e $9d
	cp e                                             ; $4eeb: $bb
	call nz, Call_049_7e75                           ; $4eec: $c4 $75 $7e
	ld a, a                                          ; $4eef: $7f
	db $fc                                           ; $4ef0: $fc
	sub c                                            ; $4ef1: $91
	cp h                                             ; $4ef2: $bc
	jp $e21d                                         ; $4ef3: $c3 $1d $e2


jr_049_4ef6:
	inc a                                            ; $4ef6: $3c
	jp $e619                                         ; $4ef7: $c3 $19 $e6


	ld e, c                                          ; $4efa: $59
	ldh [c], a                                       ; $4efb: $e2
	ld l, b                                          ; $4efc: $68
	ldh a, [$6d]                                     ; $4efd: $f0 $6d
	ldh a, [c]                                       ; $4eff: $f2
	ld [hl], h                                       ; $4f00: $74
	ld b, h                                          ; $4f01: $44
	ld a, [hl]                                       ; $4f02: $7e
	inc c                                            ; $4f03: $0c
	sub l                                            ; $4f04: $95
	ld [hl], a                                       ; $4f05: $77
	add sp, $6f                                      ; $4f06: $e8 $6f
	ldh a, [$36]                                     ; $4f08: $f0 $36
	rrca                                             ; $4f0a: $0f
	ld d, [hl]                                       ; $4f0b: $56
	cpl                                              ; $4f0c: $2f
	and [hl]                                         ; $4f0d: $a6
	ld e, a                                          ; $4f0e: $5f
	ld l, [hl]                                       ; $4f0f: $6e
	cp d                                             ; $4f10: $ba
	ld [hl], a                                       ; $4f11: $77
	cp $9b                                           ; $4f12: $fe $9b
	ld d, e                                          ; $4f14: $53
	add b                                            ; $4f15: $80
	ld h, a                                          ; $4f16: $67
	add b                                            ; $4f17: $80
	ld [hl], a                                       ; $4f18: $77
	ld e, [hl]                                       ; $4f19: $5e
	ld l, a                                          ; $4f1a: $6f
	db $fc                                           ; $4f1b: $fc
	add l                                            ; $4f1c: $85
	ld [hl], a                                       ; $4f1d: $77
	adc b                                            ; $4f1e: $88
	call z, Call_049_4f70                            ; $4f1f: $cc $70 $4f
	ldh a, [$d7]                                     ; $4f22: $f0 $d7
	ld l, b                                          ; $4f24: $68
	ld c, a                                          ; $4f25: $4f
	ldh a, [rHDMA5]                                  ; $4f26: $f0 $55
	ld [$e55a], a                                    ; $4f28: $ea $5a $e5
	ld e, l                                          ; $4f2b: $5d
	ldh [c], a                                       ; $4f2c: $e2
	ld a, h                                          ; $4f2d: $7c
	db $e3                                           ; $4f2e: $e3
	reti                                             ; $4f2f: $d9


	ld a, $f8                                        ; $4f30: $3e $f8
	rra                                              ; $4f32: $1f
	reti                                             ; $4f33: $d9


	ld a, $d8                                        ; $4f34: $3e $d8
	ccf                                              ; $4f36: $3f
	ld [hl], a                                       ; $4f37: $77
	db $fc                                           ; $4f38: $fc
	ld a, l                                          ; $4f39: $7d
	ld a, b                                          ; $4f3a: $78
	ld a, a                                          ; $4f3b: $7f
	cp $9a                                           ; $4f3c: $fe $9a
	ld c, e                                          ; $4f3e: $4b
	rlca                                             ; $4f3f: $07
	dec de                                           ; $4f40: $1b
	rlca                                             ; $4f41: $07
	sbc e                                            ; $4f42: $9b
	ld a, d                                          ; $4f43: $7a
	call nz, $907f                                   ; $4f44: $c4 $7f $90
	ld [hl], a                                       ; $4f47: $77
	db $fc                                           ; $4f48: $fc
	ld a, a                                          ; $4f49: $7f

jr_049_4f4a:
	adc [hl]                                         ; $4f4a: $8e
	adc e                                            ; $4f4b: $8b
	rst SubAFromBC                                          ; $4f4c: $e7
	add b                                            ; $4f4d: $80
	pop hl                                           ; $4f4e: $e1
	add b                                            ; $4f4f: $80
	pop af                                           ; $4f50: $f1
	add b                                            ; $4f51: $80
	di                                               ; $4f52: $f3
	add b                                            ; $4f53: $80
	cp $81                                           ; $4f54: $fe $81
	ld a, $c1                                        ; $4f56: $3e $c1
	ld a, [hl-]                                      ; $4f58: $3a
	pop bc                                           ; $4f59: $c1
	ld e, a                                          ; $4f5a: $5f
	and b                                            ; $4f5b: $a0
	ld b, d                                          ; $4f5c: $42
	cp a                                             ; $4f5d: $bf
	ld [bc], a                                       ; $4f5e: $02
	rst $38                                          ; $4f5f: $ff
	ld l, a                                          ; $4f60: $6f
	cp $7f                                           ; $4f61: $fe $7f
	or $80                                           ; $4f63: $f6 $80
	adc [hl]                                         ; $4f65: $8e
	rst FarCall                                          ; $4f66: $f7
	halt                                             ; $4f67: $76
	rst AddAOntoHL                                          ; $4f68: $ef
	xor $11                                          ; $4f69: $ee $11
	db $f4                                           ; $4f6b: $f4
	dec bc                                           ; $4f6c: $0b
	ld l, d                                          ; $4f6d: $6a
	sub l                                            ; $4f6e: $95
	or h                                             ; $4f6f: $b4

Call_049_4f70:
	ld c, e                                          ; $4f70: $4b
	jr z, jr_049_4f4a                                ; $4f71: $28 $d7

jr_049_4f73:
	sub b                                            ; $4f73: $90
	ld l, a                                          ; $4f74: $6f
	sbc c                                            ; $4f75: $99
	ld h, [hl]                                       ; $4f76: $66
	push bc                                          ; $4f77: $c5
	ld a, $de                                        ; $4f78: $3e $de
	pop hl                                           ; $4f7a: $e1
	ld sp, hl                                        ; $4f7b: $f9
	add $d0                                          ; $4f7c: $c6 $d0
	rst AddAOntoHL                                          ; $4f7e: $ef
	add sp, -$29                                     ; $4f7f: $e8 $d7
	ret nc                                           ; $4f81: $d0

	rst AddAOntoHL                                          ; $4f82: $ef
	pop hl                                           ; $4f83: $e1
	add b                                            ; $4f84: $80
	rst SubAFromDE                                          ; $4f85: $df
	pop de                                           ; $4f86: $d1
	rst AddAOntoHL                                          ; $4f87: $ef
	rst SubAFromHL                                          ; $4f88: $d7
	rst AddAOntoHL                                          ; $4f89: $ef
	xor e                                            ; $4f8a: $ab
	ld e, h                                          ; $4f8b: $5c
	ld l, c                                          ; $4f8c: $69
	sbc [hl]                                         ; $4f8d: $9e
	ld a, [hl+]                                      ; $4f8e: $2a
	db $dd                                           ; $4f8f: $dd
	ld c, b                                          ; $4f90: $48
	cp a                                             ; $4f91: $bf
	jr z, jr_049_4f73                                ; $4f92: $28 $df

	ld c, c                                          ; $4f94: $49
	cp a                                             ; $4f95: $bf
	ld l, d                                          ; $4f96: $6a
	sbc l                                            ; $4f97: $9d
	add hl, hl                                       ; $4f98: $29
	sbc $be                                          ; $4f99: $de $be
	ld b, e                                          ; $4f9b: $43
	ld a, [$bf07]                                    ; $4f9c: $fa $07 $bf
	ld b, e                                          ; $4f9f: $43
	ld e, e                                          ; $4fa0: $5b
	and a                                            ; $4fa1: $a7
	dec sp                                           ; $4fa2: $3b
	rst JumpTable                                          ; $4fa3: $c7
	sbc c                                            ; $4fa4: $99
	dec de                                           ; $4fa5: $1b
	rst SubAFromBC                                          ; $4fa6: $e7
	adc e                                            ; $4fa7: $8b
	rst FarCall                                          ; $4fa8: $f7
	db $db                                           ; $4fa9: $db
	rst SubAFromBC                                          ; $4faa: $e7
	halt                                             ; $4fab: $76
	call z, $fe7f                                    ; $4fac: $cc $7f $fe
	ld a, l                                          ; $4faf: $7d
	add d                                            ; $4fb0: $82
	add b                                            ; $4fb1: $80
	sub $29                                          ; $4fb2: $d6 $29
	ld a, [$4005]                                    ; $4fb4: $fa $05 $40
	cp a                                             ; $4fb7: $bf
	ld d, d                                          ; $4fb8: $52
	cp l                                             ; $4fb9: $bd
	ld l, d                                          ; $4fba: $6a
	push af                                          ; $4fbb: $f5
	db $ed                                           ; $4fbc: $ed
	ld [hl], d                                       ; $4fbd: $72
	ld h, d                                          ; $4fbe: $62
	db $fd                                           ; $4fbf: $fd
	ld h, c                                          ; $4fc0: $61
	cp $61                                           ; $4fc1: $fe $61
	cp $68                                           ; $4fc3: $fe $68
	rst FarCall                                          ; $4fc5: $f7
	ld l, a                                          ; $4fc6: $6f
	di                                               ; $4fc7: $f3
	ld h, l                                          ; $4fc8: $65
	ei                                               ; $4fc9: $fb
	ldh [$1f], a                                     ; $4fca: $e0 $1f
	push bc                                          ; $4fcc: $c5
	ld a, $a5                                        ; $4fcd: $3e $a5
	ld e, [hl]                                       ; $4fcf: $5e
	dec b                                            ; $4fd0: $05
	ld a, [hl]                                       ; $4fd1: $7e
	cp c                                             ; $4fd2: $b9
	sub l                                            ; $4fd3: $95
	cp $c6                                           ; $4fd4: $fe $c6
	rst $38                                          ; $4fd6: $ff
	adc $ff                                          ; $4fd7: $ce $ff
	adc [hl]                                         ; $4fd9: $8e
	rst $38                                          ; $4fda: $ff
	xor $01                                          ; $4fdb: $ee $01
	ld a, h                                          ; $4fdd: $7c
	ld a, b                                          ; $4fde: $78
	xor [hl]                                         ; $4fdf: $ae
	ld a, [hl]                                       ; $4fe0: $7e
	adc b                                            ; $4fe1: $88
	ld a, a                                          ; $4fe2: $7f
	adc b                                            ; $4fe3: $88
	sub c                                            ; $4fe4: $91
	ld b, h                                          ; $4fe5: $44
	dec sp                                           ; $4fe6: $3b
	xor d                                            ; $4fe7: $aa
	ld [hl], l                                       ; $4fe8: $75
	ld [hl], a                                       ; $4fe9: $77
	cp c                                             ; $4fea: $b9
	cp a                                             ; $4feb: $bf
	ret nz                                           ; $4fec: $c0

	xor $90                                          ; $4fed: $ee $90
	cp [hl]                                          ; $4fef: $be
	ret nz                                           ; $4ff0: $c0

	rst $38                                          ; $4ff1: $ff
	add b                                            ; $4ff2: $80
	halt                                             ; $4ff3: $76
	add sp, -$66                                     ; $4ff4: $e8 $9a
	or a                                             ; $4ff6: $b7
	ret                                              ; $4ff7: $c9


	or a                                             ; $4ff8: $b7
	rst GetHLinHL                                          ; $4ff9: $cf
	ld e, e                                          ; $4ffa: $5b
	ld a, d                                          ; $4ffb: $7a
	add $93                                          ; $4ffc: $c6 $93
	ei                                               ; $4ffe: $fb
	inc e                                            ; $4fff: $1c
	jp c, Jump_049_793d                              ; $5000: $da $3d $79

	sbc [hl]                                         ; $5003: $9e
	ld e, b                                          ; $5004: $58
	cp a                                             ; $5005: $bf
	ld e, c                                          ; $5006: $59
	cp [hl]                                          ; $5007: $be
	call c, Call_049_763b                            ; $5008: $dc $3b $76
	jp z, $7f80                                      ; $500b: $ca $80 $7f

	add e                                            ; $500e: $83
	rst $38                                          ; $500f: $ff
	inc bc                                           ; $5010: $03
	ld l, e                                          ; $5011: $6b
	sub a                                            ; $5012: $97
	ld h, e                                          ; $5013: $63
	sbc a                                            ; $5014: $9f
	db $eb                                           ; $5015: $eb
	rst FarCall                                          ; $5016: $f7
	sbc a                                            ; $5017: $9f
	ld h, e                                          ; $5018: $63
	dec de                                           ; $5019: $1b
	db $e4                                           ; $501a: $e4
	inc de                                           ; $501b: $13
	db $ec                                           ; $501c: $ec
	inc de                                           ; $501d: $13
	db $ec                                           ; $501e: $ec
	ld [bc], a                                       ; $501f: $02
	db $fd                                           ; $5020: $fd
	add b                                            ; $5021: $80
	rst $38                                          ; $5022: $ff
	add h                                            ; $5023: $84
	ei                                               ; $5024: $fb
	sbc c                                            ; $5025: $99
	or $18                                           ; $5026: $f6 $18
	rst $38                                          ; $5028: $ff
	ld [hl], a                                       ; $5029: $77
	add sp, $6b                                      ; $502a: $e8 $6b
	add b                                            ; $502c: $80
	db $f4                                           ; $502d: $f4
	ld b, [hl]                                       ; $502e: $46
	ld sp, hl                                        ; $502f: $f9
	ld b, a                                          ; $5030: $47
	ld hl, sp+$47                                    ; $5031: $f8 $47
	ld hl, sp+$46                                    ; $5033: $f8 $46
	ld sp, hl                                        ; $5035: $f9
	ld d, b                                          ; $5036: $50
	rst AddAOntoHL                                          ; $5037: $ef
	ld [hl], b                                       ; $5038: $70
	rst AddAOntoHL                                          ; $5039: $ef
	halt                                             ; $503a: $76
	adc a                                            ; $503b: $8f
	ld h, [hl]                                       ; $503c: $66
	sbc a                                            ; $503d: $9f
	and [hl]                                         ; $503e: $a6
	ld e, a                                          ; $503f: $5f
	adc [hl]                                         ; $5040: $8e
	ld a, a                                          ; $5041: $7f
	ld c, $ff                                        ; $5042: $0e $ff
	ld c, $ff                                        ; $5044: $0e $ff
	ld l, [hl]                                       ; $5046: $6e
	cp a                                             ; $5047: $bf
	ld c, a                                          ; $5048: $4f
	cp $6f                                           ; $5049: $fe $6f
	sub b                                            ; $504b: $90
	sbc e                                            ; $504c: $9b
	ld b, [hl]                                       ; $504d: $46
	cp c                                             ; $504e: $b9
	dec b                                            ; $504f: $05
	ld a, [$d07b]                                    ; $5050: $fa $7b $d0
	adc b                                            ; $5053: $88
	ld a, a                                          ; $5054: $7f
	ld c, b                                          ; $5055: $48
	or a                                             ; $5056: $b7
	call nz, Call_049_6d3b                           ; $5057: $c4 $3b $6d
	sub e                                            ; $505a: $93
	ld l, e                                          ; $505b: $6b
	db $f4                                           ; $505c: $f4
	ld h, h                                          ; $505d: $64
	ei                                               ; $505e: $fb
	ld h, b                                          ; $505f: $60
	rst $38                                          ; $5060: $ff
	ld h, b                                          ; $5061: $60
	rst $38                                          ; $5062: $ff
	ld l, c                                          ; $5063: $69
	cp $f7                                           ; $5064: $fe $f7
	db $ec                                           ; $5066: $ec
	rst AddAOntoHL                                          ; $5067: $ef
	rst FarCall                                          ; $5068: $f7
	ld a, [$74e7]                                    ; $5069: $fa $e7 $74
	ld c, d                                          ; $506c: $4a
	sub e                                            ; $506d: $93
	ld e, d                                          ; $506e: $5a
	cp l                                             ; $506f: $bd
	sbc b                                            ; $5070: $98
	ld a, a                                          ; $5071: $7f
	ld a, [de]                                       ; $5072: $1a
	db $fd                                           ; $5073: $fd
	dec e                                            ; $5074: $1d
	cp $5d                                           ; $5075: $fe $5d
	cp [hl]                                          ; $5077: $be
	cp h                                             ; $5078: $bc
	ld a, a                                          ; $5079: $7f
	ld [hl], a                                       ; $507a: $77
	sub b                                            ; $507b: $90
	ld a, [hl]                                       ; $507c: $7e
	ld d, d                                          ; $507d: $52
	add b                                            ; $507e: $80
	db $eb                                           ; $507f: $eb
	rla                                              ; $5080: $17
	di                                               ; $5081: $f3
	rrca                                             ; $5082: $0f
	ld h, e                                          ; $5083: $63
	sbc a                                            ; $5084: $9f
	dec hl                                           ; $5085: $2b
	rst FarCall                                          ; $5086: $f7
	sub e                                            ; $5087: $93
	ld l, a                                          ; $5088: $6f
	ld e, l                                          ; $5089: $5d
	and d                                            ; $508a: $a2
	db $db                                           ; $508b: $db
	inc h                                            ; $508c: $24
	ld c, d                                          ; $508d: $4a
	or l                                             ; $508e: $b5
	xor d                                            ; $508f: $aa
	ld de, $9f60                                     ; $5090: $11 $60 $9f
	ld a, h                                          ; $5093: $7c
	adc a                                            ; $5094: $8f
	ld a, [$1985]                                    ; $5095: $fa $85 $19
	add $d2                                          ; $5098: $c6 $d2
	cpl                                              ; $509a: $2f
	ld h, l                                          ; $509b: $65
	sbc a                                            ; $509c: $9f
	ld e, d                                          ; $509d: $5a
	sbc b                                            ; $509e: $98
	rst SubAFromBC                                          ; $509f: $e7
	rst FarCall                                          ; $50a0: $f7
	rrca                                             ; $50a1: $0f
	rst $38                                          ; $50a2: $ff
	rst $38                                          ; $50a3: $ff
	ret nz                                           ; $50a4: $c0

	ret nz                                           ; $50a5: $c0

	db $fd                                           ; $50a6: $fd
	sub l                                            ; $50a7: $95
	ld l, a                                          ; $50a8: $6f
	sbc h                                            ; $50a9: $9c
	sbc e                                            ; $50aa: $9b
	ld a, h                                          ; $50ab: $7c
	ld l, [hl]                                       ; $50ac: $6e
	sub c                                            ; $50ad: $91
	dec a                                            ; $50ae: $3d
	jp rIE                                         ; $50af: $c3 $ff $ff


	ei                                               ; $50b2: $fb
	sub a                                            ; $50b3: $97
	sbc d                                            ; $50b4: $9a
	rst SubAFromBC                                          ; $50b5: $e7
	ld e, c                                          ; $50b6: $59
	rst SubAFromBC                                          ; $50b7: $e7
	sbc l                                            ; $50b8: $9d
	ldh [c], a                                       ; $50b9: $e2
	rst SubAFromDE                                          ; $50ba: $df
	ldh [$67], a                                     ; $50bb: $e0 $67
	ldh a, [$97]                                     ; $50bd: $f0 $97
	ld l, l                                          ; $50bf: $6d
	sbc d                                            ; $50c0: $9a
	ld [hl], d                                       ; $50c1: $72
	sbc l                                            ; $50c2: $9d
	srl h                                            ; $50c3: $cb $3c
	sbc l                                            ; $50c5: $9d
	ld a, [hl]                                       ; $50c6: $7e
	ld h, a                                          ; $50c7: $67
	ldh a, [$98]                                     ; $50c8: $f0 $98
	cp d                                             ; $50ca: $ba
	ld b, a                                          ; $50cb: $47
	db $10                                           ; $50cc: $10
	rst AddAOntoHL                                          ; $50cd: $ef
	ld a, [de]                                       ; $50ce: $1a
	rst SubAFromBC                                          ; $50cf: $e7
	di                                               ; $50d0: $f3
	ld a, e                                          ; $50d1: $7b
	ret nz                                           ; $50d2: $c0

	ei                                               ; $50d3: $fb
	sbc b                                            ; $50d4: $98
	ld h, $d9                                        ; $50d5: $26 $d9
	adc a                                            ; $50d7: $8f
	ld a, b                                          ; $50d8: $78
	cp $01                                           ; $50d9: $fe $01
	inc a                                            ; $50db: $3c
	ld h, e                                          ; $50dc: $63
	ret nz                                           ; $50dd: $c0

	sub a                                            ; $50de: $97
	ld h, $f9                                        ; $50df: $26 $f9
	ld b, b                                          ; $50e1: $40
	rst $38                                          ; $50e2: $ff
	ld l, a                                          ; $50e3: $6f
	ldh a, [$f3]                                     ; $50e4: $f0 $f3
	db $fc                                           ; $50e6: $fc
	ld h, a                                          ; $50e7: $67
	ldh a, [$97]                                     ; $50e8: $f0 $97
	ld bc, $25fe                                     ; $50ea: $01 $fe $25
	sbc $ee                                          ; $50ed: $de $ee

Jump_049_50ef:
	rra                                              ; $50ef: $1f
	rst SubAFromDE                                          ; $50f0: $df
	ccf                                              ; $50f1: $3f
	ld h, a                                          ; $50f2: $67
	ldh a, [$98]                                     ; $50f3: $f0 $98
	ld b, $f9                                        ; $50f5: $06 $f9
	adc a                                            ; $50f7: $8f
	ld [hl], c                                       ; $50f8: $71
	call z, $0133                                    ; $50f9: $cc $33 $01
	sbc $ff                                          ; $50fc: $de $ff
	ei                                               ; $50fe: $fb
	sbc b                                            ; $50ff: $98
	cp e                                             ; $5100: $bb
	add $37                                          ; $5101: $c6 $37
	ret z                                            ; $5103: $c8

	sbc c                                            ; $5104: $99
	and $c0                                          ; $5105: $e6 $c0
	ld h, e                                          ; $5107: $63
	ldh a, [$99]                                     ; $5108: $f0 $99
	sub $39                                          ; $510a: $d6 $39
	srl h                                            ; $510c: $cb $3c
	sbc e                                            ; $510e: $9b
	ld a, h                                          ; $510f: $7c
	ld h, a                                          ; $5110: $67
	ldh a, [c]                                       ; $5111: $f2
	rst $38                                          ; $5112: $ff
	adc c                                            ; $5113: $89
	cp $03                                           ; $5114: $fe $03
	push de                                          ; $5116: $d5
	dec sp                                           ; $5117: $3b
	cp l                                             ; $5118: $bd
	ld a, a                                          ; $5119: $7f
	rst SubAFromBC                                          ; $511a: $e7
	rst SubAFromBC                                          ; $511b: $e7
	jr nz, jr_049_513e                               ; $511c: $20 $20

	nop                                              ; $511e: $00
	jr nc, jr_049_5191                               ; $511f: $30 $70

	nop                                              ; $5121: $00
	ld [hl], b                                       ; $5122: $70
	ld [$ec13], sp                                   ; $5123: $08 $13 $ec
	ld h, a                                          ; $5126: $67
	sbc b                                            ; $5127: $98
	ld a, $c1                                        ; $5128: $3e $c1
	ld e, a                                          ; $512a: $5f
	ldh [$99], a                                     ; $512b: $e0 $99
	ld e, b                                          ; $512d: $58
	rst SubAFromBC                                          ; $512e: $e7
	inc l                                            ; $512f: $2c
	di                                               ; $5130: $f3
	ld [hl], a                                       ; $5131: $77

jr_049_5132:
	ld hl, sp+$5f                                    ; $5132: $f8 $5f
	ldh a, [$9a]                                     ; $5134: $f0 $9a
	adc e                                            ; $5136: $8b
	cp $46                                           ; $5137: $fe $46
	cp a                                             ; $5139: $bf
	rst GetHLinHL                                          ; $513a: $cf
	ld h, e                                          ; $513b: $63
	sub d                                            ; $513c: $92
	rst $38                                          ; $513d: $ff

jr_049_513e:
	sbc e                                            ; $513e: $9b
	ret nz                                           ; $513f: $c0

	ccf                                              ; $5140: $3f
	db $eb                                           ; $5141: $eb
	inc e                                            ; $5142: $1c
	ld e, a                                          ; $5143: $5f
	ld h, d                                          ; $5144: $62
	rst $38                                          ; $5145: $ff
	sbc d                                            ; $5146: $9a
	inc sp                                           ; $5147: $33
	db $ec                                           ; $5148: $ec
	ld c, h                                          ; $5149: $4c
	di                                               ; $514a: $f3
	rst SubAFromBC                                          ; $514b: $e7
	ld e, e                                          ; $514c: $5b
	ret nc                                           ; $514d: $d0

	sbc c                                            ; $514e: $99
	ld [$5bff], sp                                   ; $514f: $08 $ff $5b
	cp h                                             ; $5152: $bc
	db $fd                                           ; $5153: $fd
	ld a, $5f                                        ; $5154: $3e $5f
	ldh a, [$99]                                     ; $5156: $f0 $99
	ld h, d                                          ; $5158: $62
	sbc a                                            ; $5159: $9f
	dec l                                            ; $515a: $2d
	di                                               ; $515b: $f3
	ei                                               ; $515c: $fb
	rlca                                             ; $515d: $07
	ld e, a                                          ; $515e: $5f
	ldh a, [$9a]                                     ; $515f: $f0 $9a
	jr nc, jr_049_5132                               ; $5161: $30 $cf

	ld a, [hl]                                       ; $5163: $7e
	add c                                            ; $5164: $81
	cp a                                             ; $5165: $bf
	ld a, e                                          ; $5166: $7b
	ld h, c                                          ; $5167: $61
	ld sp, hl                                        ; $5168: $f9
	ld a, e                                          ; $5169: $7b
	or $53                                           ; $516a: $f6 $53
	cp $57                                           ; $516c: $fe $57
	ldh a, [$7f]                                     ; $516e: $f0 $7f
	inc d                                            ; $5170: $14
	ld a, e                                          ; $5171: $7b
	rst JumpTable                                          ; $5172: $c7
	ld d, a                                          ; $5173: $57
	db $e4                                           ; $5174: $e4
	ld a, e                                          ; $5175: $7b
	pop de                                           ; $5176: $d1
	ld a, [hl]                                       ; $5177: $7e
	or a                                             ; $5178: $b7
	ld c, a                                          ; $5179: $4f
	ldh a, [$5f]                                     ; $517a: $f0 $5f
	cp $9d                                           ; $517c: $fe $9d
	xor d                                            ; $517e: $aa
	ld d, l                                          ; $517f: $55
	ld d, a                                          ; $5180: $57
	ldh a, [$98]                                     ; $5181: $f0 $98
	inc b                                            ; $5183: $04
	rst $38                                          ; $5184: $ff
	xor a                                            ; $5185: $af
	ld e, a                                          ; $5186: $5f
	db $fd                                           ; $5187: $fd
	rra                                              ; $5188: $1f
	rra                                              ; $5189: $1f
	ld h, e                                          ; $518a: $63
	ldh a, [$9d]                                     ; $518b: $f0 $9d
	add c                                            ; $518d: $81
	ld a, [hl]                                       ; $518e: $7e
	ld a, b                                          ; $518f: $78
	ret nc                                           ; $5190: $d0

jr_049_5191:
	rst SubAFromDE                                          ; $5191: $df
	add b                                            ; $5192: $80
	ld h, e                                          ; $5193: $63
	ldh a, [$9d]                                     ; $5194: $f0 $9d

Jump_049_5196:
	ld a, [bc]                                       ; $5196: $0a
	push af                                          ; $5197: $f5
	ld [hl], a                                       ; $5198: $77
	ld sp, hl                                        ; $5199: $f9
	ld h, a                                          ; $519a: $67
	ldh a, [c]                                       ; $519b: $f2
	ld a, [hl]                                       ; $519c: $7e
	add c                                            ; $519d: $81
	sbc d                                            ; $519e: $9a
	cp b                                             ; $519f: $b8
	ld e, [hl]                                       ; $51a0: $5e
	ld hl, sp+$1c                                    ; $51a1: $f8 $1c
	rst $38                                          ; $51a3: $ff
	ld h, e                                          ; $51a4: $63
	ret nc                                           ; $51a5: $d0

	ld a, a                                          ; $51a6: $7f
	ret c                                            ; $51a7: $d8

	ld a, [hl]                                       ; $51a8: $7e
	ld sp, $fe77                                     ; $51a9: $31 $77 $fe
	ld a, a                                          ; $51ac: $7f
	db $fd                                           ; $51ad: $fd
	ld e, a                                          ; $51ae: $5f
	sub h                                            ; $51af: $94
	ld [hl], a                                       ; $51b0: $77
	cp $7f                                           ; $51b1: $fe $7f
	rla                                              ; $51b3: $17
	adc a                                            ; $51b4: $8f
	add sp, $17                                      ; $51b5: $e8 $17
	ret z                                            ; $51b7: $c8

	scf                                              ; $51b8: $37
	ret c                                            ; $51b9: $d8

	daa                                              ; $51ba: $27
	ld a, l                                          ; $51bb: $7d
	add [hl]                                         ; $51bc: $86
	ld a, [hl-]                                      ; $51bd: $3a
	ret                                              ; $51be: $c9


	di                                               ; $51bf: $f3
	ld c, h                                          ; $51c0: $4c
	ld h, e                                          ; $51c1: $63
	ldh [rLCDC], a                                   ; $51c2: $e0 $40
	db $e3                                           ; $51c4: $e3
	ld l, a                                          ; $51c5: $6f
	ldh [c], a                                       ; $51c6: $e2
	sbc e                                            ; $51c7: $9b
	ld d, l                                          ; $51c8: $55
	xor d                                            ; $51c9: $aa
	xor e                                            ; $51ca: $ab
	ld d, h                                          ; $51cb: $54
	ld d, a                                          ; $51cc: $57
	or b                                             ; $51cd: $b0
	ld a, h                                          ; $51ce: $7c
	xor b                                            ; $51cf: $a8
	ld l, a                                          ; $51d0: $6f
	rst FarCall                                          ; $51d1: $f7
	ld c, a                                          ; $51d2: $4f
	jp nz, $f05f                                     ; $51d3: $c2 $5f $f0

	sbc l                                            ; $51d6: $9d
	push de                                          ; $51d7: $d5
	ld a, [hl+]                                      ; $51d8: $2a
	ld c, a                                          ; $51d9: $4f
	ldh a, [$7c]                                     ; $51da: $f0 $7c
	sub $7d                                          ; $51dc: $d6 $7d
	sub [hl]                                         ; $51de: $96
	sbc d                                            ; $51df: $9a
	ld a, l                                          ; $51e0: $7d
	cp $fd                                           ; $51e1: $fe $fd
	ld a, [hl]                                       ; $51e3: $7e
	ld a, [hl]                                       ; $51e4: $7e
	ld h, e                                          ; $51e5: $63
	sub b                                            ; $51e6: $90
	ld a, l                                          ; $51e7: $7d
	ld h, b                                          ; $51e8: $60
	sbc e                                            ; $51e9: $9b
	ld d, h                                          ; $51ea: $54
	xor e                                            ; $51eb: $ab
	cp $01                                           ; $51ec: $fe $01
	ld e, a                                          ; $51ee: $5f
	ld d, b                                          ; $51ef: $50
	ld [hl], a                                       ; $51f0: $77
	cp $9d                                           ; $51f1: $fe $9d
	and b                                            ; $51f3: $a0
	ld e, a                                          ; $51f4: $5f
	ld a, $d2                                        ; $51f5: $3e $d2
	ld a, a                                          ; $51f7: $7f
	ei                                               ; $51f8: $fb
	sbc l                                            ; $51f9: $9d
	ret nz                                           ; $51fa: $c0

	ld a, a                                          ; $51fb: $7f
	ld l, a                                          ; $51fc: $6f
	db $f4                                           ; $51fd: $f4
	sbc e                                            ; $51fe: $9b
	ld [$fe00], sp                                   ; $51ff: $08 $00 $fe
	rst $38                                          ; $5202: $ff
	ld a, d                                          ; $5203: $7a
	ret nc                                           ; $5204: $d0

	rst SubAFromDE                                          ; $5205: $df
	rrca                                             ; $5206: $0f
	ld a, e                                          ; $5207: $7b
	ld [hl-], a                                      ; $5208: $32
	add l                                            ; $5209: $85
	rst AddAOntoHL                                          ; $520a: $ef
	rra                                              ; $520b: $1f
	xor a                                            ; $520c: $af
	rst $38                                          ; $520d: $ff
	ld d, a                                          ; $520e: $57
	rst $38                                          ; $520f: $ff
	add hl, hl                                       ; $5210: $29
	cp $50                                           ; $5211: $fe $50
	ldh a, [rIE]                                     ; $5213: $f0 $ff
	add c                                            ; $5215: $81
	db $fc                                           ; $5216: $fc
	rst $38                                          ; $5217: $ff
	ld a, [hl]                                       ; $5218: $7e
	rst $38                                          ; $5219: $ff
	xor $ff                                          ; $521a: $ee $ff
	db $fd                                           ; $521c: $fd
	rst $38                                          ; $521d: $ff
	sbc b                                            ; $521e: $98
	db $fc                                           ; $521f: $fc
	ld e, b                                          ; $5220: $58
	pop bc                                           ; $5221: $c1
	jr nz, jr_049_522c                               ; $5222: $20 $08

	ld h, a                                          ; $5224: $67
	cp [hl]                                          ; $5225: $be
	ld a, a                                          ; $5226: $7f
	call nc, $019a                                   ; $5227: $d4 $9a $01
	inc bc                                           ; $522a: $03
	add c                                            ; $522b: $81

jr_049_522c:
	rst $38                                          ; $522c: $ff
	jr c, jr_049_52aa                                ; $522d: $38 $7b

	pop af                                           ; $522f: $f1
	sub e                                            ; $5230: $93
	ccf                                              ; $5231: $3f
	ret nz                                           ; $5232: $c0

	sbc [hl]                                         ; $5233: $9e
	pop hl                                           ; $5234: $e1
	ld e, h                                          ; $5235: $5c
	ldh [c], a                                       ; $5236: $e2
	ld e, a                                          ; $5237: $5f
	db $e3                                           ; $5238: $e3
	ld e, b                                          ; $5239: $58
	ld hl, sp+$1e                                    ; $523a: $f8 $1e
	rst $38                                          ; $523c: $ff
	ld a, d                                          ; $523d: $7a
	rla                                              ; $523e: $17
	sub [hl]                                         ; $523f: $96
	rra                                              ; $5240: $1f
	adc a                                            ; $5241: $8f
	rst $38                                          ; $5242: $ff
	db $fd                                           ; $5243: $fd
	ret nz                                           ; $5244: $c0

	nop                                              ; $5245: $00
	ret nz                                           ; $5246: $c0

	xor d                                            ; $5247: $aa
	ret nz                                           ; $5248: $c0

	ld l, e                                          ; $5249: $6b
	and b                                            ; $524a: $a0
	sub c                                            ; $524b: $91
	add b                                            ; $524c: $80
	add hl, bc                                       ; $524d: $09
	or $f7                                           ; $524e: $f6 $f7
	ccf                                              ; $5250: $3f
	inc hl                                           ; $5251: $23
	rra                                              ; $5252: $1f
	cp e                                             ; $5253: $bb
	rra                                              ; $5254: $1f
	rrca                                             ; $5255: $0f
	rst $38                                          ; $5256: $ff
	dec b                                            ; $5257: $05
	rst $38                                          ; $5258: $ff
	push hl                                          ; $5259: $e5
	ld e, e                                          ; $525a: $5b
	ld a, a                                          ; $525b: $7f
	sbc c                                            ; $525c: $99
	cp $00                                           ; $525d: $fe $00
	ld a, [hl]                                       ; $525f: $7e
	ret nz                                           ; $5260: $c0

	ld a, h                                          ; $5261: $7c
	ret nz                                           ; $5262: $c0

	ld a, e                                          ; $5263: $7b
	sub e                                            ; $5264: $93
	sbc e                                            ; $5265: $9b
	rrca                                             ; $5266: $0f
	ld hl, sp+$00                                    ; $5267: $f8 $00
	add b                                            ; $5269: $80
	cp $85                                           ; $526a: $fe $85
	ld b, b                                          ; $526c: $40
	nop                                              ; $526d: $00
	ld h, b                                          ; $526e: $60
	nop                                              ; $526f: $00
	ld hl, sp+$40                                    ; $5270: $f8 $40
	rst $38                                          ; $5272: $ff
	add c                                            ; $5273: $81
	rst $38                                          ; $5274: $ff
	add c                                            ; $5275: $81
	ld a, a                                          ; $5276: $7f
	ld bc, $000f                                     ; $5277: $01 $0f $00
	rlca                                             ; $527a: $07
	nop                                              ; $527b: $00
	rrca                                             ; $527c: $0f
	inc b                                            ; $527d: $04
	jr nc, jr_049_5298                               ; $527e: $30 $18

	ldh [$30], a                                     ; $5280: $e0 $30
	rst $38                                          ; $5282: $ff
	db $fd                                           ; $5283: $fd
	rst GetHLinHL                                          ; $5284: $cf
	cp $7b                                           ; $5285: $fe $7b
	sub e                                            ; $5287: $93
	add [hl]                                         ; $5288: $86
	db $fc                                           ; $5289: $fc
	ld a, a                                          ; $528a: $7f
	db $fc                                           ; $528b: $fc
	rst $38                                          ; $528c: $ff
	ldh a, [c]                                       ; $528d: $f2
	rra                                              ; $528e: $1f
	inc c                                            ; $528f: $0c
	inc bc                                           ; $5290: $03
	inc c                                            ; $5291: $0c
	db $e3                                           ; $5292: $e3
	ld [hl], b                                       ; $5293: $70
	pop af                                           ; $5294: $f1
	ld [hl], b                                       ; $5295: $70
	ret                                              ; $5296: $c9


	ld c, b                                          ; $5297: $48

jr_049_5298:
	ret                                              ; $5298: $c9


	ld c, b                                          ; $5299: $48
	pop bc                                           ; $529a: $c1
	ld d, d                                          ; $529b: $52
	ld b, e                                          ; $529c: $43
	db $f4                                           ; $529d: $f4
	rst SubAFromBC                                          ; $529e: $e7
	ld h, b                                          ; $529f: $60
	ld a, a                                          ; $52a0: $7f
	ldh a, [$7b]                                     ; $52a1: $f0 $7b
	cp b                                             ; $52a3: $b8
	sbc l                                            ; $52a4: $9d
	ld bc, $78fc                                     ; $52a5: $01 $fc $78
	sbc h                                            ; $52a8: $9c
	ld a, a                                          ; $52a9: $7f

jr_049_52aa:
	ld b, l                                          ; $52aa: $45
	sbc d                                            ; $52ab: $9a
	rst SubAFromBC                                          ; $52ac: $e7
	rra                                              ; $52ad: $1f
	or $1f                                           ; $52ae: $f6 $1f
	rst $38                                          ; $52b0: $ff
	ld a, d                                          ; $52b1: $7a
	ld a, a                                          ; $52b2: $7f
	ld [hl], a                                       ; $52b3: $77
	adc d                                            ; $52b4: $8a
	ld a, a                                          ; $52b5: $7f
	ld [$f77f], sp                                   ; $52b6: $08 $7f $f7
	ld a, a                                          ; $52b9: $7f
	or l                                             ; $52ba: $b5
	sbc h                                            ; $52bb: $9c
	ret nz                                           ; $52bc: $c0

	jp Jump_049_7bbf                                 ; $52bd: $c3 $bf $7b


	sub b                                            ; $52c0: $90
	sub d                                            ; $52c1: $92
	rlca                                             ; $52c2: $07
	ld hl, sp-$05                                    ; $52c3: $f8 $fb
	db $fc                                           ; $52c5: $fc
	ld a, l                                          ; $52c6: $7d
	cp $f7                                           ; $52c7: $fe $f7
	or $7e                                           ; $52c9: $f6 $7e
	rst $38                                          ; $52cb: $ff
	ld a, h                                          ; $52cc: $7c
	rst $38                                          ; $52cd: $ff
	cpl                                              ; $52ce: $2f
	ld a, e                                          ; $52cf: $7b
	ldh a, [$9a]                                     ; $52d0: $f0 $9a
	ldh a, [rIF]                                     ; $52d2: $f0 $0f
	add sp, $1f                                      ; $52d4: $e8 $1f
	db $fc                                           ; $52d6: $fc
	ld a, e                                          ; $52d7: $7b
	cp $90                                           ; $52d8: $fe $90
	ld e, e                                          ; $52da: $5b
	cp a                                             ; $52db: $bf
	db $db                                           ; $52dc: $db
	cp a                                             ; $52dd: $bf
	rst FarCall                                          ; $52de: $f7
	rst $38                                          ; $52df: $ff
	rst GetHLinHL                                          ; $52e0: $cf
	db $fc                                           ; $52e1: $fc
	ld bc, $00c6                                     ; $52e2: $01 $c6 $00
	rst $38                                          ; $52e5: $ff
	jr @-$1e                                         ; $52e6: $18 $e0

	nop                                              ; $52e8: $00
	ld a, d                                          ; $52e9: $7a
	ld d, c                                          ; $52ea: $51
	ld a, c                                          ; $52eb: $79
	ld h, e                                          ; $52ec: $63
	ld a, e                                          ; $52ed: $7b
	ldh [$97], a                                     ; $52ee: $e0 $97
	cp a                                             ; $52f0: $bf
	ld b, b                                          ; $52f1: $40
	rra                                              ; $52f2: $1f
	pop hl                                           ; $52f3: $e1
	rlca                                             ; $52f4: $07
	add hl, bc                                       ; $52f5: $09
	rra                                              ; $52f6: $1f
	ei                                               ; $52f7: $fb
	ld [hl], d                                       ; $52f8: $72
	and c                                            ; $52f9: $a1
	ld [hl], e                                       ; $52fa: $73
	ld d, b                                          ; $52fb: $50
	sbc b                                            ; $52fc: $98
	add b                                            ; $52fd: $80
	rst SubAFromDE                                          ; $52fe: $df
	jr c, @+$01                                      ; $52ff: $38 $ff

	ld [hl], b                                       ; $5301: $70
	rst $38                                          ; $5302: $ff
	rst SubAFromBC                                          ; $5303: $e7
	ld a, e                                          ; $5304: $7b
	cp $9e                                           ; $5305: $fe $9e
	rst AddAOntoHL                                          ; $5307: $ef
	ld [hl], e                                       ; $5308: $73
	ldh a, [$98]                                     ; $5309: $f0 $98
	rlca                                             ; $530b: $07
	cp $01                                           ; $530c: $fe $01
	rst $38                                          ; $530e: $ff
	ld bc, $e1ff                                     ; $530f: $01 $ff $e1
	ld a, e                                          ; $5312: $7b
	push de                                          ; $5313: $d5
	ld a, a                                          ; $5314: $7f
	xor h                                            ; $5315: $ac
	sub a                                            ; $5316: $97
	inc bc                                           ; $5317: $03
	rlca                                             ; $5318: $07
	db $e3                                           ; $5319: $e3
	rst $38                                          ; $531a: $ff
	di                                               ; $531b: $f3
	rst $38                                          ; $531c: $ff
	ldh a, [$fc]                                     ; $531d: $f0 $fc
	ld a, c                                          ; $531f: $79
	dec a                                            ; $5320: $3d
	sbc l                                            ; $5321: $9d
	rst $38                                          ; $5322: $ff
	ld a, a                                          ; $5323: $7f
	ld a, e                                          ; $5324: $7b
	cp $98                                           ; $5325: $fe $98
	nop                                              ; $5327: $00
	ldh [$80], a                                     ; $5328: $e0 $80
	ret nz                                           ; $532a: $c0

	add b                                            ; $532b: $80
	ret nz                                           ; $532c: $c0

	inc b                                            ; $532d: $04
	ld a, e                                          ; $532e: $7b
	jp nz, $ffdb                                     ; $532f: $c2 $db $ff

	sub h                                            ; $5332: $94
	ld [bc], a                                       ; $5333: $02
	dec c                                            ; $5334: $0d
	inc bc                                           ; $5335: $03
	rlca                                             ; $5336: $07
	inc bc                                           ; $5337: $03
	rlca                                             ; $5338: $07
	db $ed                                           ; $5339: $ed
	inc de                                           ; $533a: $13
	nop                                              ; $533b: $00
	rst $38                                          ; $533c: $ff
	db $fc                                           ; $533d: $fc
	ld [hl], e                                       ; $533e: $73
	cp $9a                                           ; $533f: $fe $9a
	jr jr_049_5382                                   ; $5341: $18 $3f

	adc b                                            ; $5343: $88
	rst $38                                          ; $5344: $ff
	call z, $fe7b                                    ; $5345: $cc $7b $fe
	ld a, l                                          ; $5348: $7d
	ld a, b                                          ; $5349: $78
	ld a, a                                          ; $534a: $7f
	or d                                             ; $534b: $b2
	sbc [hl]                                         ; $534c: $9e
	ld h, a                                          ; $534d: $67
	ld a, e                                          ; $534e: $7b
	cp $7b                                           ; $534f: $fe $7b
	jp nc, $ffde                                     ; $5351: $d2 $de $ff

	sbc h                                            ; $5354: $9c
	inc bc                                           ; $5355: $03
	db $fc                                           ; $5356: $fc
	jr nz, jr_049_53cd                               ; $5357: $20 $74

	adc l                                            ; $5359: $8d
	ld l, h                                          ; $535a: $6c
	adc d                                            ; $535b: $8a
	ld [hl], a                                       ; $535c: $77
	ld b, b                                          ; $535d: $40
	ld a, [hl]                                       ; $535e: $7e
	ld l, h                                          ; $535f: $6c
	ld a, l                                          ; $5360: $7d
	ld b, e                                          ; $5361: $43
	ld a, e                                          ; $5362: $7b
	add hl, bc                                       ; $5363: $09
	rst SubAFromDE                                          ; $5364: $df
	rst $38                                          ; $5365: $ff
	sub d                                            ; $5366: $92
	dec [hl]                                         ; $5367: $35
	ld a, a                                          ; $5368: $7f
	ld d, $ff                                        ; $5369: $16 $ff
	add $ff                                          ; $536b: $c6 $ff
	rst JumpTable                                          ; $536d: $c7
	rst $38                                          ; $536e: $ff
	rst GetHLinHL                                          ; $536f: $cf
	rst $38                                          ; $5370: $ff
	ld c, a                                          ; $5371: $4f
	rst $38                                          ; $5372: $ff
	ld l, a                                          ; $5373: $6f
	ld a, e                                          ; $5374: $7b
	ld b, b                                          ; $5375: $40
	sub a                                            ; $5376: $97
	db $fc                                           ; $5377: $fc
	ret nz                                           ; $5378: $c0

	db $fc                                           ; $5379: $fc
	add b                                            ; $537a: $80
	db $fc                                           ; $537b: $fc
	ret nz                                           ; $537c: $c0

	rst $38                                          ; $537d: $ff
	and c                                            ; $537e: $a1

Call_049_537f:
	ld a, e                                          ; $537f: $7b
	ld d, c                                          ; $5380: $51
	ld a, l                                          ; $5381: $7d

jr_049_5382:
	call c, $1d7f                                    ; $5382: $dc $7f $1d
	sbc l                                            ; $5385: $9d
	add b                                            ; $5386: $80
	ld sp, hl                                        ; $5387: $f9
	ld a, c                                          ; $5388: $79
	sbc d                                            ; $5389: $9a
	sbc h                                            ; $538a: $9c
	db $fc                                           ; $538b: $fc
	ldh [$f0], a                                     ; $538c: $e0 $f0
	ld [hl], a                                       ; $538e: $77
	jp nz, $837f                                     ; $538f: $c2 $7f $83

	add b                                            ; $5392: $80
	ld a, d                                          ; $5393: $7a
	rst $38                                          ; $5394: $ff
	ld [hl], l                                       ; $5395: $75
	ldh [c], a                                       ; $5396: $e2
	inc b                                            ; $5397: $04
	add h                                            ; $5398: $84
	ld c, $4c                                        ; $5399: $0e $4c
	cp [hl]                                          ; $539b: $be
	rst $38                                          ; $539c: $ff
	ld a, [hl]                                       ; $539d: $7e
	db $fd                                           ; $539e: $fd
	cp $f8                                           ; $539f: $fe $f8
	db $e4                                           ; $53a1: $e4
	ld hl, sp-$4c                                    ; $53a2: $f8 $b4
	ld hl, sp+$74                                    ; $53a4: $f8 $74
	rlca                                             ; $53a6: $07
	dec bc                                           ; $53a7: $0b
	inc bc                                           ; $53a8: $03
	rrca                                             ; $53a9: $0f
	dec bc                                           ; $53aa: $0b
	dec c                                            ; $53ab: $0d
	dec bc                                           ; $53ac: $0b
	add hl, bc                                       ; $53ad: $09
	dec bc                                           ; $53ae: $0b
	ld [$0c0b], sp                                   ; $53af: $08 $0b $0c
	sub l                                            ; $53b2: $95
	rlca                                             ; $53b3: $07
	inc c                                            ; $53b4: $0c
	rrca                                             ; $53b5: $0f
	inc b                                            ; $53b6: $04
	rst $38                                          ; $53b7: $ff
	ld [hl], b                                       ; $53b8: $70
	ld a, a                                          ; $53b9: $7f
	ld hl, sp-$55                                    ; $53ba: $f8 $ab
	ld e, h                                          ; $53bc: $5c
	ld e, [hl]                                       ; $53bd: $5e
	ld a, d                                          ; $53be: $7a
	ld a, l                                          ; $53bf: $7d
	inc e                                            ; $53c0: $1c
	sbc b                                            ; $53c1: $98
	ei                                               ; $53c2: $fb
	rra                                              ; $53c3: $1f
	cp $3f                                           ; $53c4: $fe $3f
	db $fc                                           ; $53c6: $fc
	ld a, a                                          ; $53c7: $7f
	db $fd                                           ; $53c8: $fd
	ld a, e                                          ; $53c9: $7b
	cp $7f                                           ; $53ca: $fe $7f
	cp [hl]                                          ; $53cc: $be

jr_049_53cd:
	sub b                                            ; $53cd: $90
	db $fc                                           ; $53ce: $fc
	ccf                                              ; $53cf: $3f
	and d                                            ; $53d0: $a2
	pop af                                           ; $53d1: $f1
	ld b, b                                          ; $53d2: $40
	rst $38                                          ; $53d3: $ff
	ld e, a                                          ; $53d4: $5f
	rst $38                                          ; $53d5: $ff
	sbc a                                            ; $53d6: $9f
	rst $38                                          ; $53d7: $ff
	cp b                                             ; $53d8: $b8
	db $fc                                           ; $53d9: $fc
	jr nc, @+$01                                     ; $53da: $30 $ff

	ld [hl], e                                       ; $53dc: $73
	ld a, e                                          ; $53dd: $7b
	ld h, b                                          ; $53de: $60
	sbc l                                            ; $53df: $9d
	inc b                                            ; $53e0: $04
	add sp, $6f                                      ; $53e1: $e8 $6f
	ld [hl], $9e                                     ; $53e3: $36 $9e
	inc bc                                           ; $53e5: $03
	ld [hl], e                                       ; $53e6: $73
	ld l, b                                          ; $53e7: $68
	rst SubAFromDE                                          ; $53e8: $df
	rst $38                                          ; $53e9: $ff
	sbc h                                            ; $53ea: $9c
	ld e, $3f                                        ; $53eb: $1e $3f
	ld e, $73                                        ; $53ed: $1e $73
	jr c, @-$62                                      ; $53ef: $38 $9c

	ld bc, $0307                                     ; $53f1: $01 $07 $03
	call c, Call_049_7eff                            ; $53f4: $dc $ff $7e
	add sp, -$64                                     ; $53f7: $e8 $9c
	ld h, b                                          ; $53f9: $60
	ld sp, hl                                        ; $53fa: $f9
	rst SubAFromBC                                          ; $53fb: $e7
	ld a, e                                          ; $53fc: $7b
	ld h, d                                          ; $53fd: $62
	ld a, a                                          ; $53fe: $7f
	cp $7f                                           ; $53ff: $fe $7f
	call z, $9e9c                                    ; $5401: $cc $9c $9e
	rst $38                                          ; $5404: $ff
	inc a                                            ; $5405: $3c
	ld h, l                                          ; $5406: $65
	xor d                                            ; $5407: $aa
	ld a, l                                          ; $5408: $7d
	or d                                             ; $5409: $b2
	sbc l                                            ; $540a: $9d
	rst JumpTable                                          ; $540b: $c7
	nop                                              ; $540c: $00
	ld a, e                                          ; $540d: $7b
	ld l, a                                          ; $540e: $6f
	rst SubAFromDE                                          ; $540f: $df
	rst $38                                          ; $5410: $ff
	sbc h                                            ; $5411: $9c
	ld h, a                                          ; $5412: $67
	rra                                              ; $5413: $1f
	ld b, $7a                                        ; $5414: $06 $7a
	set 3, a                                         ; $5416: $cb $df
	rst $38                                          ; $5418: $ff
	sbc l                                            ; $5419: $9d
	ld b, $f8                                        ; $541a: $06 $f8
	ld l, a                                          ; $541c: $6f
	add sp, -$63                                     ; $541d: $e8 $9d
	ldh a, [$fe]                                     ; $541f: $f0 $fe
	ld [hl], a                                       ; $5421: $77
	ld b, $7f                                        ; $5422: $06 $7f
	jp nc, $0f9c                                     ; $5424: $d2 $9c $0f

	ld a, a                                          ; $5427: $7f
	ccf                                              ; $5428: $3f
	ld a, e                                          ; $5429: $7b
	jr nz, jr_049_54ab                               ; $542a: $20 $7f

	cp $17                                           ; $542c: $fe $17
	nop                                              ; $542e: $00
	rst SubAFromHL                                          ; $542f: $d7
	ld h, [hl]                                       ; $5430: $66
	pop bc                                           ; $5431: $c1
	inc sp                                           ; $5432: $33
	push bc                                          ; $5433: $c5
	inc sp                                           ; $5434: $33
	rst SubAFromHL                                          ; $5435: $d7
	ld d, l                                          ; $5436: $55
	rst SubAFromHL                                          ; $5437: $d7
	ld h, [hl]                                       ; $5438: $66
	db $dd                                           ; $5439: $dd
	ld b, h                                          ; $543a: $44
	sbc l                                            ; $543b: $9d
	ld [hl], a                                       ; $543c: $77
	ld [hl], h                                       ; $543d: $74
	jp c, $9e44                                      ; $543e: $da $44 $9e

	ld b, a                                          ; $5441: $47
	ld l, a                                          ; $5442: $6f
	or $0c                                           ; $5443: $f6 $0c
	adc d                                            ; $5445: $8a
	sbc e                                            ; $5446: $9b
	rst GetHLinHL                                          ; $5447: $cf
	call z, $cc4c                                    ; $5448: $cc $4c $cc
	sbc $ce                                          ; $544b: $de $ce
	sub l                                            ; $544d: $95
	ld c, l                                          ; $544e: $4d
	ld sp, $b333                                     ; $544f: $31 $33 $b3
	inc sp                                           ; $5452: $33
	jr nc, @+$32                                     ; $5453: $30 $30

	ld sp, $73b3                                     ; $5455: $31 $b3 $73
	sbc $63                                          ; $5458: $de $63
	rst SubAFromDE                                          ; $545a: $df
	db $e3                                           ; $545b: $e3
	sbc h                                            ; $545c: $9c
	di                                               ; $545d: $f3
	ld a, e                                          ; $545e: $7b
	adc h                                            ; $545f: $8c

jr_049_5460:
	sbc $9c                                          ; $5460: $de $9c
	rst SubAFromDE                                          ; $5462: $df
	inc d                                            ; $5463: $14
	sub l                                            ; $5464: $95
	inc c                                            ; $5465: $0c
	adc h                                            ; $5466: $8c
	sbc $5c                                          ; $5467: $de $5c
	inc e                                            ; $5469: $1c
	inc e                                            ; $546a: $1c
	cp h                                             ; $546b: $bc
	sbc h                                            ; $546c: $9c
	call c, Call_049_7bde                            ; $546d: $dc $de $7b
	db $eb                                           ; $5470: $eb
	sub d                                            ; $5471: $92
	db $e3                                           ; $5472: $e3
	ld bc, $6361                                     ; $5473: $01 $61 $63
	ld h, e                                          ; $5476: $63
	rst SubAFromDE                                          ; $5477: $df
	rst SubAFromDE                                          ; $5478: $df
	rst GetHLinHL                                          ; $5479: $cf
	rst GetHLinHL                                          ; $547a: $cf
	rst AddAOntoHL                                          ; $547b: $ef
	rst AddAOntoHL                                          ; $547c: $ef
	rst $38                                          ; $547d: $ff
	rst SubAFromDE                                          ; $547e: $df
	db $dd                                           ; $547f: $dd
	jr nc, jr_049_5460                               ; $5480: $30 $de

	db $10                                           ; $5482: $10
	sbc l                                            ; $5483: $9d
	jr nc, jr_049_54c3                               ; $5484: $30 $3d

	call c, $df39                                    ; $5486: $dc $39 $df
	dec a                                            ; $5489: $3d
	db $dd                                           ; $548a: $dd
	add $9e                                          ; $548b: $c6 $9e
	ld b, d                                          ; $548d: $42
	sbc $c6                                          ; $548e: $de $c6
	call c, $dfce                                    ; $5490: $dc $ce $df
	rst GetHLinHL                                          ; $5493: $cf
	sbc [hl]                                         ; $5494: $9e
	adc $dc                                          ; $5495: $ce $dc
	ld sp, $af7b                                     ; $5497: $31 $7b $af
	sbc [hl]                                         ; $549a: $9e
	ei                                               ; $549b: $fb
	db $db                                           ; $549c: $db
	ld a, e                                          ; $549d: $7b
	sbc [hl]                                         ; $549e: $9e
	ld sp, hl                                        ; $549f: $f9
	db $dd                                           ; $54a0: $dd
	add h                                            ; $54a1: $84
	rst SubAFromDE                                          ; $54a2: $df
	inc b                                            ; $54a3: $04
	adc e                                            ; $54a4: $8b
	add h                                            ; $54a5: $84
	add [hl]                                         ; $54a6: $86
	xor $fe                                          ; $54a7: $ee $fe
	sbc $ce                                          ; $54a9: $de $ce

jr_049_54ab:
	sbc $de                                          ; $54ab: $de $de
	cp $ee                                           ; $54ad: $fe $ee
	ld sp, $2121                                     ; $54af: $31 $21 $21
	ld sp, $0101                                     ; $54b2: $31 $01 $01
	ld hl, $7b31                                     ; $54b5: $21 $31 $7b
	ld a, e                                          ; $54b8: $7b
	db $dd                                           ; $54b9: $dd
	ei                                               ; $54ba: $fb
	sbc l                                            ; $54bb: $9d
	rst $38                                          ; $54bc: $ff
	ld a, l                                          ; $54bd: $7d
	ld [hl], a                                       ; $54be: $77
	ldh [c], a                                       ; $54bf: $e2
	sbc d                                            ; $54c0: $9a
	nop                                              ; $54c1: $00
	inc b                                            ; $54c2: $04

jr_049_54c3:
	inc b                                            ; $54c3: $04
	add [hl]                                         ; $54c4: $86
	db $fd                                           ; $54c5: $fd
	db $db                                           ; $54c6: $db
	call c, $bc9e                                    ; $54c7: $dc $9e $bc
	call c, $9c23                                    ; $54ca: $dc $23 $9c
	nop                                              ; $54cd: $00
	inc hl                                           ; $54ce: $23
	ld h, e                                          ; $54cf: $63
	call c, $9ce7                                    ; $54d0: $dc $e7 $9c
	rst AddAOntoHL                                          ; $54d3: $ef
	rst SubAFromBC                                          ; $54d4: $e7
	rst SubAFromBC                                          ; $54d5: $e7
	call c, $9818                                    ; $54d6: $dc $18 $98
	nop                                              ; $54d9: $00
	jr @+$1a                                         ; $54da: $18 $18

	ld a, c                                          ; $54dc: $79
	ld a, c                                          ; $54dd: $79
	add hl, sp                                       ; $54de: $39
	add hl, sp                                       ; $54df: $39
	sbc $3b                                          ; $54e0: $de $3b
	sbc [hl]                                         ; $54e2: $9e
	add hl, sp                                       ; $54e3: $39
	db $dd                                           ; $54e4: $dd
	add $df                                          ; $54e5: $c6 $df
	ld b, h                                          ; $54e7: $44
	adc e                                            ; $54e8: $8b
	call nz, $fec6                                   ; $54e9: $c4 $c6 $fe
	rst $38                                          ; $54ec: $ff
	rst SubAFromDE                                          ; $54ed: $df
	sbc $df                                          ; $54ee: $de $df
	rst SubAFromDE                                          ; $54f0: $df
	sbc $ee                                          ; $54f1: $de $ee
	ld hl, $2020                                     ; $54f3: $21 $20 $20
	ld hl, $0000                                     ; $54f6: $21 $00 $00
	ld hl, $7d31                                     ; $54f9: $21 $31 $7d
	ld a, c                                          ; $54fc: $79
	call c, $967b                                    ; $54fd: $dc $7b $96
	db $fd                                           ; $5500: $fd
	add [hl]                                         ; $5501: $86
	add [hl]                                         ; $5502: $86
	add h                                            ; $5503: $84
	add h                                            ; $5504: $84
	add b                                            ; $5505: $80
	add b                                            ; $5506: $80
	add h                                            ; $5507: $84
	add [hl]                                         ; $5508: $86
	jp c, $9ee7                                      ; $5509: $da $e7 $9e

	rst FarCall                                          ; $550c: $f7
	db $dd                                           ; $550d: $dd
	jr @-$1f                                         ; $550e: $18 $df

	ld [$18df], sp                                   ; $5510: $08 $df $18
	sbc l                                            ; $5513: $9d
	rst SubAFromDE                                          ; $5514: $df
	cp a                                             ; $5515: $bf
	call c, $9dbe                                    ; $5516: $dc $be $9d
	rst SubAFromDE                                          ; $5519: $df
	ld h, c                                          ; $551a: $61
	sbc $41                                          ; $551b: $de $41
	rst SubAFromDE                                          ; $551d: $df
	ld bc, $419d                                     ; $551e: $01 $9d $41
	ld h, e                                          ; $5521: $63
	sbc $f3                                          ; $5522: $de $f3
	db $dd                                           ; $5524: $dd
	rst FarCall                                          ; $5525: $f7
	sbc [hl]                                         ; $5526: $9e
	db $eb                                           ; $5527: $eb
	sbc $0c                                          ; $5528: $de $0c
	sbc b                                            ; $552a: $98
	ld [rRAMG], sp                                   ; $552b: $08 $00 $00
	ld [$bf0c], sp                                   ; $552e: $08 $0c $bf
	cp a                                             ; $5531: $bf
	db $dd                                           ; $5532: $dd
	cp l                                             ; $5533: $bd
	sbc l                                            ; $5534: $9d
	cp a                                             ; $5535: $bf
	ei                                               ; $5536: $fb
	jp c, $9e42                                      ; $5537: $da $42 $9e

	ld b, [hl]                                       ; $553a: $46
	jp c, $9eee                                      ; $553b: $da $ee $9e

	adc $dc                                          ; $553e: $ce $dc
	ld de, $019c                                     ; $5540: $11 $9c $01
	ld de, $d931                                     ; $5543: $11 $31 $d9
	ld [hl], e                                       ; $5546: $73
	reti                                             ; $5547: $d9


	adc h                                            ; $5548: $8c
	rst SubAFromDE                                          ; $5549: $df
	rst $38                                          ; $554a: $ff
	sbc h                                            ; $554b: $9c
	xor d                                            ; $554c: $aa
	ld d, l                                          ; $554d: $55
	xor d                                            ; $554e: $aa
	ld a, e                                          ; $554f: $7b
	db $fc                                           ; $5550: $fc
	sbc [hl]                                         ; $5551: $9e
	rst $38                                          ; $5552: $ff
	db $fd                                           ; $5553: $fd
	call c, $0fff                                    ; $5554: $dc $ff $0f
	ldh a, [$7f]                                     ; $5557: $f0 $7f
	ld d, b                                          ; $5559: $50
	scf                                              ; $555a: $37
	ldh [$9e], a                                     ; $555b: $e0 $9e
	xor e                                            ; $555d: $ab
	ld h, e                                          ; $555e: $63
	ldh a, [$9e]                                     ; $555f: $f0 $9e
	db $fc                                           ; $5561: $fc
	ld [hl], a                                       ; $5562: $77
	ldh a, [$9c]                                     ; $5563: $f0 $9c
	ld e, a                                          ; $5565: $5f
	ld [$73d5], a                                    ; $5566: $ea $d5 $73
	ldh a, [$9b]                                     ; $5569: $f0 $9b
	add b                                            ; $556b: $80
	rst $38                                          ; $556c: $ff
	rst $38                                          ; $556d: $ff
	dec l                                            ; $556e: $2d
	ld d, a                                          ; $556f: $57
	ret nc                                           ; $5570: $d0

	ld a, e                                          ; $5571: $7b
	rst SubAFromDE                                          ; $5572: $df
	ld a, a                                          ; $5573: $7f
	db $ed                                           ; $5574: $ed
	ld a, a                                          ; $5575: $7f
	db $f4                                           ; $5576: $f4
	sbc [hl]                                         ; $5577: $9e
	sub l                                            ; $5578: $95
	ld l, a                                          ; $5579: $6f
	ldh a, [$df]                                     ; $557a: $f0 $df
	dec sp                                           ; $557c: $3b
	ld a, e                                          ; $557d: $7b
	ldh a, [$9e]                                     ; $557e: $f0 $9e
	inc d                                            ; $5580: $14
	ld a, e                                          ; $5581: $7b
	db $f4                                           ; $5582: $f4
	sbc h                                            ; $5583: $9c
	ld a, [hl+]                                      ; $5584: $2a
	rst $38                                          ; $5585: $ff
	ld [$f077], a                                    ; $5586: $ea $77 $f0
	rst SubAFromDE                                          ; $5589: $df
	add b                                            ; $558a: $80
	ld a, e                                          ; $558b: $7b
	ldh a, [$98]                                     ; $558c: $f0 $98
	ld a, $ff                                        ; $558e: $3e $ff
	xor d                                            ; $5590: $aa
	ld e, a                                          ; $5591: $5f
	xor d                                            ; $5592: $aa
	rst $38                                          ; $5593: $ff
	cp d                                             ; $5594: $ba
	ld h, e                                          ; $5595: $63
	ret nc                                           ; $5596: $d0

	sbc e                                            ; $5597: $9b
	ld e, $ff                                        ; $5598: $1e $ff
	xor d                                            ; $559a: $aa
	rst SubAFromDE                                          ; $559b: $df
	ld h, e                                          ; $559c: $63
	and b                                            ; $559d: $a0
	ld a, e                                          ; $559e: $7b
	ldh a, [$9d]                                     ; $559f: $f0 $9d
	jp c, Jump_049_7bff                              ; $55a1: $da $ff $7b

	or d                                             ; $55a4: $b2
	sbc l                                            ; $55a5: $9d
	rst $38                                          ; $55a6: $ff
	xor a                                            ; $55a7: $af
	ld h, e                                          ; $55a8: $63
	ldh a, [$9b]                                     ; $55a9: $f0 $9b
	or b                                             ; $55ab: $b0
	rst $38                                          ; $55ac: $ff
	xor d                                            ; $55ad: $aa
	ld d, d                                          ; $55ae: $52
	ld l, e                                          ; $55af: $6b
	and b                                            ; $55b0: $a0
	rst SubAFromDE                                          ; $55b1: $df
	rlca                                             ; $55b2: $07
	ld a, e                                          ; $55b3: $7b
	ldh a, [$9b]                                     ; $55b4: $f0 $9b
	add a                                            ; $55b6: $87
	rst $38                                          ; $55b7: $ff
	xor d                                            ; $55b8: $aa
	xor l                                            ; $55b9: $ad
	ld l, e                                          ; $55ba: $6b
	ldh a, [$df]                                     ; $55bb: $f0 $df
	ld [hl], b                                       ; $55bd: $70
	ld [hl], e                                       ; $55be: $73
	ld e, a                                          ; $55bf: $5f
	ld a, e                                          ; $55c0: $7b
	add b                                            ; $55c1: $80
	sbc [hl]                                         ; $55c2: $9e
	db $fd                                           ; $55c3: $fd
	ld e, a                                          ; $55c4: $5f
	add b                                            ; $55c5: $80
	ld [hl], e                                       ; $55c6: $73
	ldh a, [$9e]                                     ; $55c7: $f0 $9e
	push af                                          ; $55c9: $f5
	ld e, a                                          ; $55ca: $5f
	ldh a, [$7f]                                     ; $55cb: $f0 $7f
	db $fd                                           ; $55cd: $fd
	ld [hl], a                                       ; $55ce: $77
	or b                                             ; $55cf: $b0
	ld d, e                                          ; $55d0: $53
	ldh a, [$9c]                                     ; $55d1: $f0 $9c
	db $fd                                           ; $55d3: $fd
	xor [hl]                                         ; $55d4: $ae
	rst FarCall                                          ; $55d5: $f7
	ld d, e                                          ; $55d6: $53
	ldh a, [$de]                                     ; $55d7: $f0 $de
	ld d, l                                          ; $55d9: $55
	ld [hl], e                                       ; $55da: $73
	ldh a, [$df]                                     ; $55db: $f0 $df
	xor $7b                                          ; $55dd: $ee $7b
	ldh a, [$9e]                                     ; $55df: $f0 $9e
	ld bc, $d27b                                     ; $55e1: $01 $7b $d2
	sbc [hl]                                         ; $55e4: $9e
	cp a                                             ; $55e5: $bf
	ld e, e                                          ; $55e6: $5b
	ret nc                                           ; $55e7: $d0

	ld a, e                                          ; $55e8: $7b
	or d                                             ; $55e9: $b2
	ld a, a                                          ; $55ea: $7f
	cp $9c                                           ; $55eb: $fe $9c
	scf                                              ; $55ed: $37
	daa                                              ; $55ee: $27
	dec sp                                           ; $55ef: $3b
	call c, Call_049_7bff                            ; $55f0: $dc $ff $7b
	rst AddAOntoHL                                          ; $55f3: $ef
	ld [hl], a                                       ; $55f4: $77
	ldh a, [$9b]                                     ; $55f5: $f0 $9b
	xor a                                            ; $55f7: $af
	db $fd                                           ; $55f8: $fd
	ret nz                                           ; $55f9: $c0

	ld a, a                                          ; $55fa: $7f
	ld d, a                                          ; $55fb: $57
	ldh a, [$7f]                                     ; $55fc: $f0 $7f
	adc $9d                                          ; $55fe: $ce $9d
	inc bc                                           ; $5600: $03
	ld hl, sp+$6b                                    ; $5601: $f8 $6b
	ldh a, [$7b]                                     ; $5603: $f0 $7b
	and [hl]                                         ; $5605: $a6
	ld [hl], a                                       ; $5606: $77
	ldh a, [$9d]                                     ; $5607: $f0 $9d
	ret nz                                           ; $5609: $c0

	ld h, c                                          ; $560a: $61
	ld l, e                                          ; $560b: $6b
	ldh a, [$9c]                                     ; $560c: $f0 $9c
	add b                                            ; $560e: $80
	xor e                                            ; $560f: $ab
	ld d, l                                          ; $5610: $55
	ld a, e                                          ; $5611: $7b
	cp $9c                                           ; $5612: $fe $9c
	push de                                          ; $5614: $d5
	cp e                                             ; $5615: $bb
	push bc                                          ; $5616: $c5
	call c, $94ff                                    ; $5617: $dc $ff $94
	ccf                                              ; $561a: $3f
	rlca                                             ; $561b: $07
	jr c, @+$01                                      ; $561c: $38 $ff

	rst SubAFromDE                                          ; $561e: $df
	rst $38                                          ; $561f: $ff
	rst $38                                          ; $5620: $ff
	rst SubAFromDE                                          ; $5621: $df
	rst SubAFromDE                                          ; $5622: $df
	rst $38                                          ; $5623: $ff
	reti                                             ; $5624: $d9


	pop bc                                           ; $5625: $c1
	rst $38                                          ; $5626: $ff
	reti                                             ; $5627: $d9


	rst $38                                          ; $5628: $ff
	sbc l                                            ; $5629: $9d
	cp a                                             ; $562a: $bf
	ld e, a                                          ; $562b: $5f
	ld l, a                                          ; $562c: $6f
	cp $db                                           ; $562d: $fe $db
	rst $38                                          ; $562f: $ff
	ld l, a                                          ; $5630: $6f
	adc c                                            ; $5631: $89
	sbc l                                            ; $5632: $9d
	cp $f5                                           ; $5633: $fe $f5
	push de                                          ; $5635: $d5
	rst $38                                          ; $5636: $ff
	sbc l                                            ; $5637: $9d
	cp $d5                                           ; $5638: $fe $d5
	ld a, e                                          ; $563a: $7b
	ld d, d                                          ; $563b: $52
	rst SubAFromHL                                          ; $563c: $d7
	rst $38                                          ; $563d: $ff
	ld a, e                                          ; $563e: $7b
	ldh a, [c]                                       ; $563f: $f2
	ld a, a                                          ; $5640: $7f
	cp $9e                                           ; $5641: $fe $9e
	ld a, [$de5f]                                    ; $5643: $fa $5f $de
	ld [hl], a                                       ; $5646: $77
	ld [hl], b                                       ; $5647: $70
	ld a, e                                          ; $5648: $7b
	ld l, [hl]                                       ; $5649: $6e
	inc hl                                           ; $564a: $23
	ldh a, [$9d]                                     ; $564b: $f0 $9d
	ld b, b                                          ; $564d: $40
	and b                                            ; $564e: $a0
	ld c, a                                          ; $564f: $4f
	ldh a, [$9d]                                     ; $5650: $f0 $9d
	ld bc, $4f00                                     ; $5652: $01 $00 $4f
	ldh a, [$9e]                                     ; $5655: $f0 $9e
	ld de, $f04f                                     ; $5657: $11 $4f $f0
	sub a                                            ; $565a: $97
	db $fc                                           ; $565b: $fc
	ld d, l                                          ; $565c: $55
	inc l                                            ; $565d: $2c
	ld d, l                                          ; $565e: $55
	xor h                                            ; $565f: $ac
	ld d, l                                          ; $5660: $55
	xor h                                            ; $5661: $ac
	db $fd                                           ; $5662: $fd
	ld e, e                                          ; $5663: $5b
	sub b                                            ; $5664: $90
	ld [hl], a                                       ; $5665: $77
	cp $23                                           ; $5666: $fe $23
	and b                                            ; $5668: $a0
	sub h                                            ; $5669: $94
	set 5, e                                         ; $566a: $cb $eb
	ret z                                            ; $566c: $c8

	cp l                                             ; $566d: $bd
	cp $fd                                           ; $566e: $fe $fd
	ld d, $7d                                        ; $5670: $16 $7d
	inc [hl]                                         ; $5672: $34
	inc [hl]                                         ; $5673: $34
	scf                                              ; $5674: $37
	cp $92                                           ; $5675: $fe $92
	ldh [$80], a                                     ; $5677: $e0 $80
	sub a                                            ; $5679: $97
	add h                                            ; $567a: $84
	or h                                             ; $567b: $b4
	ld d, l                                          ; $567c: $55
	xor a                                            ; $567d: $af
	ld a, l                                          ; $567e: $7d
	xor d                                            ; $567f: $aa
	dec b                                            ; $5680: $05
	ld l, b                                          ; $5681: $68
	ld a, e                                          ; $5682: $7b
	ld c, e                                          ; $5683: $4b
	db $fc                                           ; $5684: $fc
	add b                                            ; $5685: $80
	rst SubAFromHL                                          ; $5686: $d7
	rst GetHLinHL                                          ; $5687: $cf
	sbc a                                            ; $5688: $9f
	ld d, h                                          ; $5689: $54
	xor b                                            ; $568a: $a8
	ld a, a                                          ; $568b: $7f
	xor d                                            ; $568c: $aa
	ld d, l                                          ; $568d: $55
	jr z, jr_049_56c3                                ; $568e: $28 $33

	ld l, b                                          ; $5690: $68
	nop                                              ; $5691: $00
	ld bc, $050f                                     ; $5692: $01 $0f $05
	ld [bc], a                                       ; $5695: $02
	dec a                                            ; $5696: $3d
	pop de                                           ; $5697: $d1
	rra                                              ; $5698: $1f
	ld a, l                                          ; $5699: $7d
	db $fc                                           ; $569a: $fc
	db $ec                                           ; $569b: $ec
	cp h                                             ; $569c: $bc
	ld d, d                                          ; $569d: $52
	ret nz                                           ; $569e: $c0

	ret nz                                           ; $569f: $c0

	call nz, $311c                                   ; $56a0: $c4 $1c $31
	pop af                                           ; $56a3: $f1
	ld b, c                                          ; $56a4: $41
	add b                                            ; $56a5: $80
	and c                                            ; $56a6: $a1
	ret c                                            ; $56a7: $d8

	ld b, a                                          ; $56a8: $47
	adc [hl]                                         ; $56a9: $8e
	ld b, e                                          ; $56aa: $43
	ldh [rLCDC], a                                   ; $56ab: $e0 $40
	add b                                            ; $56ad: $80
	ldh [$27], a                                     ; $56ae: $e0 $27
	cp b                                             ; $56b0: $b8
	ld a, a                                          ; $56b1: $7f
	ccf                                              ; $56b2: $3f
	scf                                              ; $56b3: $37
	ccf                                              ; $56b4: $3f
	ld a, a                                          ; $56b5: $7f
	scf                                              ; $56b6: $37
	jr c, jr_049_56ba                                ; $56b7: $38 $01

	ld a, d                                          ; $56b9: $7a

jr_049_56ba:
	rst $38                                          ; $56ba: $ff
	add hl, bc                                       ; $56bb: $09
	dec d                                            ; $56bc: $15
	dec l                                            ; $56bd: $2d
	ld a, h                                          ; $56be: $7c
	rst JumpTable                                          ; $56bf: $c7
	rst $38                                          ; $56c0: $ff
	db $fd                                           ; $56c1: $fd
	rst $38                                          ; $56c2: $ff

jr_049_56c3:
	rst FarCall                                          ; $56c3: $f7
	db $e3                                           ; $56c4: $e3
	sbc h                                            ; $56c5: $9c
	db $d3                                           ; $56c6: $d3
	add e                                            ; $56c7: $83
	nop                                              ; $56c8: $00
	ld [hl], a                                       ; $56c9: $77
	inc b                                            ; $56ca: $04
	sbc h                                            ; $56cb: $9c
	db $fc                                           ; $56cc: $fc
	pop af                                           ; $56cd: $f1
	ldh [rOCPS], a                                   ; $56ce: $e0 $6a
	db $f4                                           ; $56d0: $f4
	sbc l                                            ; $56d1: $9d
	rst $38                                          ; $56d2: $ff
	ld a, [bc]                                       ; $56d3: $0a
	ld [hl], a                                       ; $56d4: $77
	ldh a, [$9c]                                     ; $56d5: $f0 $9c
	ld h, b                                          ; $56d7: $60
	ldh a, [$f2]                                     ; $56d8: $f0 $f2
	call c, $94ff                                    ; $56da: $dc $ff $94
	sbc a                                            ; $56dd: $9f
	rrca                                             ; $56de: $0f
	dec c                                            ; $56df: $0d
	xor d                                            ; $56e0: $aa
	push de                                          ; $56e1: $d5
	cp a                                             ; $56e2: $bf
	rst SubAFromDE                                          ; $56e3: $df
	cp a                                             ; $56e4: $bf
	ld a, b                                          ; $56e5: $78
	adc b                                            ; $56e6: $88
	adc b                                            ; $56e7: $88
	db $dd                                           ; $56e8: $dd
	ld a, a                                          ; $56e9: $7f
	ld a, a                                          ; $56ea: $7f
	ldh a, [$df]                                     ; $56eb: $f0 $df
	rla                                              ; $56ed: $17
	ld [hl], d                                       ; $56ee: $72
	call nc, $2565                                   ; $56ef: $d4 $65 $25
	ld [hl], c                                       ; $56f2: $71
	jp nc, $f077                                     ; $56f3: $d2 $77 $f0

	ld a, a                                          ; $56f6: $7f
	dec bc                                           ; $56f7: $0b
	ld h, a                                          ; $56f8: $67
	ret nz                                           ; $56f9: $c0

	ld l, a                                          ; $56fa: $6f
	ldh a, [$75]                                     ; $56fb: $f0 $75
	ld d, [hl]                                       ; $56fd: $56
	ld l, [hl]                                       ; $56fe: $6e
	sub b                                            ; $56ff: $90
	sbc d                                            ; $5700: $9a
	add c                                            ; $5701: $81
	ld d, c                                          ; $5702: $51
	ei                                               ; $5703: $fb
	rst $38                                          ; $5704: $ff
	ld a, [$04de]                                    ; $5705: $fa $de $04
	rst SubAFromDE                                          ; $5708: $df
	cp $7f                                           ; $5709: $fe $7f
	adc a                                            ; $570b: $8f
	sbc [hl]                                         ; $570c: $9e
	db $fd                                           ; $570d: $fd
	sbc $f9                                          ; $570e: $de $f9
	sub l                                            ; $5710: $95
	ldh [$c5], a                                     ; $5711: $e0 $c5
	rst AddAOntoHL                                          ; $5713: $ef
	ld e, a                                          ; $5714: $5f
	cp a                                             ; $5715: $bf
	db $10                                           ; $5716: $10
	sub b                                            ; $5717: $90
	sub b                                            ; $5718: $90
	rra                                              ; $5719: $1f
	ccf                                              ; $571a: $3f
	halt                                             ; $571b: $76
	ld h, e                                          ; $571c: $63
	rst SubAFromDE                                          ; $571d: $df
	ccf                                              ; $571e: $3f
	ld [hl], e                                       ; $571f: $73
	add b                                            ; $5720: $80
	ld e, e                                          ; $5721: $5b
	or b                                             ; $5722: $b0
	ld [hl], e                                       ; $5723: $73
	add b                                            ; $5724: $80
	ld e, e                                          ; $5725: $5b
	ldh a, [$9e]                                     ; $5726: $f0 $9e
	add b                                            ; $5728: $80
	ld c, e                                          ; $5729: $4b
	ldh a, [$9a]                                     ; $572a: $f0 $9a
	jr z, jr_049_5783                                ; $572c: $28 $55

	db $fc                                           ; $572e: $fc
	db $fd                                           ; $572f: $fd
	ld sp, hl                                        ; $5730: $f9
	ld h, a                                          ; $5731: $67
	ldh a, [$de]                                     ; $5732: $f0 $de
	db $fc                                           ; $5734: $fc
	ld [hl], e                                       ; $5735: $73
	sub b                                            ; $5736: $90
	sbc l                                            ; $5737: $9d
	ld b, b                                          ; $5738: $40
	jp c, $ffda                                      ; $5739: $da $da $ff

	sbc l                                            ; $573c: $9d
	ld h, l                                          ; $573d: $65
	ld b, b                                          ; $573e: $40
	ld [hl], e                                       ; $573f: $73
	ldh a, [$9c]                                     ; $5740: $f0 $9c
	rrca                                             ; $5742: $0f
	nop                                              ; $5743: $00
	ret nz                                           ; $5744: $c0

	jp c, $99ff                                      ; $5745: $da $ff $99

	ccf                                              ; $5748: $3f
	inc e                                            ; $5749: $1c
	add hl, sp                                       ; $574a: $39
	ld [hl], d                                       ; $574b: $72
	ld h, l                                          ; $574c: $65
	ld [$2c7a], a                                    ; $574d: $ea $7a $2c
	sbc l                                            ; $5750: $9d
	ldh [$c0], a                                     ; $5751: $e0 $c0
	ld a, b                                          ; $5753: $78
	pop bc                                           ; $5754: $c1
	cp $94                                           ; $5755: $fe $94
	adc l                                            ; $5757: $8d
	ld a, [de]                                       ; $5758: $1a
	sub l                                            ; $5759: $95
	ccf                                              ; $575a: $3f
	xor d                                            ; $575b: $aa
	ld d, l                                          ; $575c: $55

jr_049_575d:
	add b                                            ; $575d: $80
	ld bc, $0502                                     ; $575e: $01 $02 $05
	ld a, [bc]                                       ; $5761: $0a
	db $fc                                           ; $5762: $fc
	ld a, [hl]                                       ; $5763: $7e
	and h                                            ; $5764: $a4
	sub a                                            ; $5765: $97
	xor [hl]                                         ; $5766: $ae
	ld d, l                                          ; $5767: $55
	xor [hl]                                         ; $5768: $ae
	ld e, a                                          ; $5769: $5f
	cp [hl]                                          ; $576a: $be
	ld d, l                                          ; $576b: $55
	ld bc, $7b02                                     ; $576c: $01 $02 $7b
	cp $fe                                           ; $576f: $fe $fe
	sub h                                            ; $5771: $94
	or d                                             ; $5772: $b2
	ld d, e                                          ; $5773: $53
	or c                                             ; $5774: $b1
	ld [hl], c                                       ; $5775: $71
	jp hl                                            ; $5776: $e9


	pop de                                           ; $5777: $d1
	xor c                                            ; $5778: $a9
	ld d, c                                          ; $5779: $51
	ld b, c                                          ; $577a: $41
	and b                                            ; $577b: $a0
	ld b, b                                          ; $577c: $40
	ld [hl], e                                       ; $577d: $73
	ret nc                                           ; $577e: $d0

	adc e                                            ; $577f: $8b
	call z, $3fef                                    ; $5780: $cc $ef $3f

jr_049_5783:
	dec bc                                           ; $5783: $0b
	sub a                                            ; $5784: $97
	db $eb                                           ; $5785: $eb
	ld [hl], l                                       ; $5786: $75

jr_049_5787:
	ld a, [bc]                                       ; $5787: $0a
	inc sp                                           ; $5788: $33
	jr nc, jr_049_57eb                               ; $5789: $30 $60

	ld [hl], b                                       ; $578b: $70
	ld h, b                                          ; $578c: $60
	jr nc, jr_049_57af                               ; $578d: $30 $20

	ld [hl], b                                       ; $578f: $70
	push af                                          ; $5790: $f5
	db $ed                                           ; $5791: $ed
	push de                                          ; $5792: $d5
	db $ed                                           ; $5793: $ed
	ld a, e                                          ; $5794: $7b
	pop hl                                           ; $5795: $e1
	sbc [hl]                                         ; $5796: $9e
	xor c                                            ; $5797: $a9
	db $dd                                           ; $5798: $dd
	inc bc                                           ; $5799: $03
	db $dd                                           ; $579a: $dd
	rlca                                             ; $579b: $07
	rst SubAFromDE                                          ; $579c: $df
	add c                                            ; $579d: $81
	sbc c                                            ; $579e: $99
	add b                                            ; $579f: $80
	add e                                            ; $57a0: $83
	add l                                            ; $57a1: $85
	adc e                                            ; $57a2: $8b
	adc a                                            ; $57a3: $8f
	or a                                             ; $57a4: $b7
	ld a, e                                          ; $57a5: $7b
	jr nz, jr_049_5787                               ; $57a6: $20 $df

	cp $99                                           ; $57a8: $fe $99
	db $fc                                           ; $57aa: $fc
	ld hl, sp-$08                                    ; $57ab: $f8 $f8
	cp $bc                                           ; $57ad: $fe $bc

jr_049_57af:
	nop                                              ; $57af: $00
	ld a, d                                          ; $57b0: $7a
	ld a, [$fd9b]                                    ; $57b1: $fa $9b $fd
	ld a, [$4301]                                    ; $57b4: $fa $01 $43
	halt                                             ; $57b7: $76
	ld [$8eff], a                                    ; $57b8: $ea $ff $8e
	sbc b                                            ; $57bb: $98
	sbc h                                            ; $57bc: $9c
	jr jr_049_575d                                   ; $57bd: $18 $9e

	sbc l                                            ; $57bf: $9d
	sbc d                                            ; $57c0: $9a
	sbc l                                            ; $57c1: $9d
	sbc d                                            ; $57c2: $9a
	rra                                              ; $57c3: $1f
	dec de                                           ; $57c4: $1b
	sbc a                                            ; $57c5: $9f
	add hl, de                                       ; $57c6: $19
	ld a, [de]                                       ; $57c7: $1a
	dec e                                            ; $57c8: $1d
	ld a, [de]                                       ; $57c9: $1a
	dec e                                            ; $57ca: $1d
	ld a, e                                          ; $57cb: $7b
	ld a, e                                          ; $57cc: $7b
	ld b, l                                          ; $57cd: $45
	sbc d                                            ; $57ce: $9a
	or $6a                                           ; $57cf: $f6 $6a
	ld a, a                                          ; $57d1: $7f
	rst $38                                          ; $57d2: $ff
	add h                                            ; $57d3: $84
	ld a, e                                          ; $57d4: $7b
	ld a, [hl+]                                      ; $57d5: $2a
	sbc [hl]                                         ; $57d6: $9e
	add hl, bc                                       ; $57d7: $09
	halt                                             ; $57d8: $76
	ld b, b                                          ; $57d9: $40
	ld a, h                                          ; $57da: $7c
	ld l, e                                          ; $57db: $6b

jr_049_57dc:
	sub [hl]                                         ; $57dc: $96
	cp $f9                                           ; $57dd: $fe $f9
	xor e                                            ; $57df: $ab
	ld e, c                                          ; $57e0: $59
	ldh a, [c]                                       ; $57e1: $f2
	jr z, jr_049_57dc                                ; $57e2: $28 $f8

	rst $38                                          ; $57e4: $ff
	nop                                              ; $57e5: $00
	db $dd                                           ; $57e6: $dd
	ld b, $7b                                        ; $57e7: $06 $7b
	jp hl                                            ; $57e9: $e9


	sbc e                                            ; $57ea: $9b

jr_049_57eb:
	xor b                                            ; $57eb: $a8
	ld d, b                                          ; $57ec: $50
	xor b                                            ; $57ed: $a8
	ld e, d                                          ; $57ee: $5a
	ld a, e                                          ; $57ef: $7b
	add h                                            ; $57f0: $84
	ld [hl], b                                       ; $57f1: $70
	cp [hl]                                          ; $57f2: $be
	sbc c                                            ; $57f3: $99
	ld a, $d0                                        ; $57f4: $3e $d0
	add sp, $10                                      ; $57f6: $e8 $10
	add sp, -$10                                     ; $57f8: $e8 $f0
	sbc $f8                                          ; $57fa: $de $f8
	sbc d                                            ; $57fc: $9a
	add hl, hl                                       ; $57fd: $29
	ld de, $11e9                                     ; $57fe: $11 $e9 $11
	add hl, bc                                       ; $5801: $09
	sbc $01                                          ; $5802: $de $01
	sbc d                                            ; $5804: $9a
	add hl, de                                       ; $5805: $19
	ld [hl-], a                                      ; $5806: $32
	inc d                                            ; $5807: $14
	ld a, [hl-]                                      ; $5808: $3a
	dec a                                            ; $5809: $3d
	sbc $3f                                          ; $580a: $de $3f
	sbc d                                            ; $580c: $9a
	ld [hl], $3d                                     ; $580d: $36 $3d
	dec sp                                           ; $580f: $3b
	dec [hl]                                         ; $5810: $35
	ld [hl-], a                                      ; $5811: $32
	sbc $30                                          ; $5812: $de $30
	add b                                            ; $5814: $80
	ret c                                            ; $5815: $d8

	rst $38                                          ; $5816: $ff
	cp h                                             ; $5817: $bc
	cp $dc                                           ; $5818: $fe $dc
	ld b, $02                                        ; $581a: $06 $02
	nop                                              ; $581c: $00
	daa                                              ; $581d: $27
	nop                                              ; $581e: $00
	ld b, e                                          ; $581f: $43
	ld bc, $0103                                     ; $5820: $01 $03 $01
	ld bc, $0003                                     ; $5823: $01 $03 $00
	ld hl, sp+$00                                    ; $5826: $f8 $00
	inc bc                                           ; $5828: $03
	inc hl                                           ; $5829: $23
	ld a, e                                          ; $582a: $7b
	ld h, e                                          ; $582b: $63
	ld [bc], a                                       ; $582c: $02
	rst $38                                          ; $582d: $ff
	rlca                                             ; $582e: $07
	rst $38                                          ; $582f: $ff
	db $fc                                           ; $5830: $fc
	call c, $9c84                                    ; $5831: $dc $84 $9c
	sbc [hl]                                         ; $5834: $9e
	db $fc                                           ; $5835: $fc
	ld a, e                                          ; $5836: $7b
	ld a, e                                          ; $5837: $7b
	ld a, a                                          ; $5838: $7f
	ld l, c                                          ; $5839: $69
	sbc h                                            ; $583a: $9c
	rst SubAFromBC                                          ; $583b: $e7

jr_049_583c:
	ld b, b                                          ; $583c: $40
	and b                                            ; $583d: $a0
	ld a, e                                          ; $583e: $7b
	ld l, e                                          ; $583f: $6b
	db $fc                                           ; $5840: $fc
	sbc h                                            ; $5841: $9c
	db $10                                           ; $5842: $10
	xor b                                            ; $5843: $a8
	inc d                                            ; $5844: $14
	sbc $f8                                          ; $5845: $de $f8
	ld a, a                                          ; $5847: $7f
	ld d, a                                          ; $5848: $57
	sbc h                                            ; $5849: $9c
	db $ec                                           ; $584a: $ec
	ld d, h                                          ; $584b: $54
	db $ec                                           ; $584c: $ec
	call c, Call_049_7c04                            ; $584d: $dc $04 $7c
	sub l                                            ; $5850: $95
	sub h                                            ; $5851: $94
	rst $38                                          ; $5852: $ff
	pop bc                                           ; $5853: $c1
	add b                                            ; $5854: $80
	ld b, b                                          ; $5855: $40
	ld [de], a                                       ; $5856: $12
	nop                                              ; $5857: $00
	ret nz                                           ; $5858: $c0

	ld b, b                                          ; $5859: $40
	ret nz                                           ; $585a: $c0

	ld b, b                                          ; $585b: $40
	ld b, b                                          ; $585c: $40
	sbc $c0                                          ; $585d: $de $c0
	add b                                            ; $585f: $80
	db $f4                                           ; $5860: $f4
	ld a, a                                          ; $5861: $7f
	ret nz                                           ; $5862: $c0

	rra                                              ; $5863: $1f
	ei                                               ; $5864: $fb
	ld l, l                                          ; $5865: $6d
	ld a, a                                          ; $5866: $7f
	inc c                                            ; $5867: $0c
	dec bc                                           ; $5868: $0b
	nop                                              ; $5869: $00
	ccf                                              ; $586a: $3f
	cp a                                             ; $586b: $bf
	rra                                              ; $586c: $1f
	rra                                              ; $586d: $1f
	rrca                                             ; $586e: $0f
	ld a, a                                          ; $586f: $7f
	xor d                                            ; $5870: $aa
	ld d, h                                          ; $5871: $54
	xor d                                            ; $5872: $aa
	ld d, h                                          ; $5873: $54
	adc b                                            ; $5874: $88
	ld d, h                                          ; $5875: $54
	xor b                                            ; $5876: $a8
	ld e, [hl]                                       ; $5877: $5e
	nop                                              ; $5878: $00
	add b                                            ; $5879: $80
	ld b, b                                          ; $587a: $40
	add b                                            ; $587b: $80
	ld h, b                                          ; $587c: $60
	add b                                            ; $587d: $80
	nop                                              ; $587e: $00
	sbc [hl]                                         ; $587f: $9e
	and c                                            ; $5880: $a1
	ld a, d                                          ; $5881: $7a
	ret z                                            ; $5882: $c8

	sbc d                                            ; $5883: $9a
	dec d                                            ; $5884: $15
	ld a, [bc]                                       ; $5885: $0a
	inc bc                                           ; $5886: $03
	cp [hl]                                          ; $5887: $be
	ld h, l                                          ; $5888: $65
	ei                                               ; $5889: $fb
	sbc l                                            ; $588a: $9d
	ld bc, $7518                                     ; $588b: $01 $18 $75
	ld d, d                                          ; $588e: $52
	sbc e                                            ; $588f: $9b
	ld a, [bc]                                       ; $5890: $0a
	db $e3                                           ; $5891: $e3
	and c                                            ; $5892: $a1
	ld b, h                                          ; $5893: $44
	db $fc                                           ; $5894: $fc
	sub [hl]                                         ; $5895: $96
	inc c                                            ; $5896: $0c
	ld e, $ba                                        ; $5897: $1e $ba
	xor c                                            ; $5899: $a9
	ld d, d                                          ; $589a: $52
	and b                                            ; $589b: $a0
	ld d, c                                          ; $589c: $51
	and c                                            ; $589d: $a1
	ld bc, $067b                                     ; $589e: $01 $7b $06
	ld [hl], a                                       ; $58a1: $77
	db $fc                                           ; $58a2: $fc
	rst SubAFromDE                                          ; $58a3: $df
	jr nz, jr_049_583c                               ; $58a4: $20 $96

	nop                                              ; $58a6: $00
	sub l                                            ; $58a7: $95
	ld c, d                                          ; $58a8: $4a
	push de                                          ; $58a9: $d5
	ld c, d                                          ; $58aa: $4a
	dec [hl]                                         ; $58ab: $35
	jr nc, @+$12                                     ; $58ac: $30 $10

	ld e, d                                          ; $58ae: $5a
	ld a, d                                          ; $58af: $7a
	call nz, $be7e                                   ; $58b0: $c4 $7e $be
	sbc e                                            ; $58b3: $9b
	ld h, b                                          ; $58b4: $60
	ld l, b                                          ; $58b5: $68
	dec h                                            ; $58b6: $25
	ld d, c                                          ; $58b7: $51
	ld a, d                                          ; $58b8: $7a
	call nz, $fe7b                                   ; $58b9: $c4 $7b $fe
	sbc [hl]                                         ; $58bc: $9e
	ld hl, $07d9                                     ; $58bd: $21 $d9 $07
	sbc [hl]                                         ; $58c0: $9e
	cp a                                             ; $58c1: $bf
	call c, $9d8f                                    ; $58c2: $dc $8f $9d
	sbc c                                            ; $58c5: $99
	sub c                                            ; $58c6: $91
	db $db                                           ; $58c7: $db
	ldh a, [$99]                                     ; $58c8: $f0 $99
	or $fe                                           ; $58ca: $f6 $fe
	ld sp, hl                                        ; $58cc: $f9
	db $f4                                           ; $58cd: $f4
	jp hl                                            ; $58ce: $e9


	db $f4                                           ; $58cf: $f4
	ld a, e                                          ; $58d0: $7b
	rrca                                             ; $58d1: $0f
	sbc [hl]                                         ; $58d2: $9e
	ldh a, [$f9]                                     ; $58d3: $f0 $f9
	sub e                                            ; $58d5: $93
	cp l                                             ; $58d6: $bd
	or e                                             ; $58d7: $b3
	or a                                             ; $58d8: $b7
	cp a                                             ; $58d9: $bf
	or [hl]                                          ; $58da: $b6
	or l                                             ; $58db: $b5
	cp d                                             ; $58dc: $ba
	cp l                                             ; $58dd: $bd
	ld a, [de]                                       ; $58de: $1a
	inc e                                            ; $58df: $1c
	jr @+$1a                                         ; $58e0: $18 $18

	halt                                             ; $58e2: $76
	cp a                                             ; $58e3: $bf
	sub [hl]                                         ; $58e4: $96
	ld l, $83                                        ; $58e5: $2e $83
	nop                                              ; $58e7: $00
	rlca                                             ; $58e8: $07
	ld d, d                                          ; $58e9: $52
	xor b                                            ; $58ea: $a8
	push af                                          ; $58eb: $f5
	ccf                                              ; $58ec: $3f
	pop de                                           ; $58ed: $d1
	ei                                               ; $58ee: $fb
	adc c                                            ; $58ef: $89
	ret nz                                           ; $58f0: $c0

	dec [hl]                                         ; $58f1: $35
	ld b, $07                                        ; $58f2: $06 $07
	ld a, [hl+]                                      ; $58f4: $2a
	rst SubAFromHL                                          ; $58f5: $d7
	ld c, $73                                        ; $58f6: $0e $73
	db $fd                                           ; $58f8: $fd
	jp nz, $0202                                     ; $58f9: $c2 $02 $02

	add $02                                          ; $58fc: $c6 $02
	ld [bc], a                                       ; $58fe: $02
	ld b, $02                                        ; $58ff: $06 $02
	ld l, c                                          ; $5901: $69
	xor b                                            ; $5902: $a8
	ld h, c                                          ; $5903: $61
	xor b                                            ; $5904: $a8
	ld b, c                                          ; $5905: $41
	ld a, e                                          ; $5906: $7b
	ld c, e                                          ; $5907: $4b
	rst SubAFromDE                                          ; $5908: $df
	ld d, $9c                                        ; $5909: $16 $9c
	ld e, $16                                        ; $590b: $1e $16
	ld a, $fe                                        ; $590d: $3e $fe
	db $dd                                           ; $590f: $dd
	ld sp, hl                                        ; $5910: $f9
	db $dd                                           ; $5911: $dd
	ld hl, sp-$27                                    ; $5912: $f8 $d9
	ld bc, $3fdf                                     ; $5914: $01 $df $3f
	sbc c                                            ; $5917: $99
	ld a, $1f                                        ; $5918: $3e $1f

jr_049_591a:
	ld a, [de]                                       ; $591a: $1a
	dec [hl]                                         ; $591b: $35
	ld a, [de]                                       ; $591c: $1a
	inc [hl]                                         ; $591d: $34
	reti                                             ; $591e: $d9


	jr nc, @-$61                                     ; $591f: $30 $9d

	db $eb                                           ; $5921: $eb
	rst SubAFromHL                                          ; $5922: $d7
	ld a, e                                          ; $5923: $7b
	ld a, $9c                                        ; $5924: $3e $9c
	ld b, c                                          ; $5926: $41
	add d                                            ; $5927: $82
	dec b                                            ; $5928: $05
	ld sp, hl                                        ; $5929: $f9
	sbc [hl]                                         ; $592a: $9e
	cp $fe                                           ; $592b: $fe $fe
	sbc e                                            ; $592d: $9b
	ld a, d                                          ; $592e: $7a
	rrca                                             ; $592f: $0f
	ld [de], a                                       ; $5930: $12
	ld [hl-], a                                      ; $5931: $32
	db $fc                                           ; $5932: $fc
	sbc [hl]                                         ; $5933: $9e
	jr nc, jr_049_59b1                               ; $5934: $30 $7b

	add hl, sp                                       ; $5936: $39
	ld a, a                                          ; $5937: $7f
	cp $9a                                           ; $5938: $fe $9a
	ld [bc], a                                       ; $593a: $02
	dec bc                                           ; $593b: $0b

jr_049_593c:
	jp Jump_049_6592                                 ; $593c: $c3 $92 $65


	ld [hl], d                                       ; $593f: $72
	inc sp                                           ; $5940: $33
	add c                                            ; $5941: $81
	nop                                              ; $5942: $00
	ld l, h                                          ; $5943: $6c
	ld [bc], a                                       ; $5944: $02
	jr nz, jr_049_5991                               ; $5945: $20 $4a

	ret nc                                           ; $5947: $d0

	ld a, [$bad8]                                    ; $5948: $fa $d8 $ba
	call nc, $dcaa                                   ; $594b: $d4 $aa $dc
	or h                                             ; $594e: $b4
	inc l                                            ; $594f: $2c
	inc b                                            ; $5950: $04
	inc h                                            ; $5951: $24
	ld b, h                                          ; $5952: $44
	inc l                                            ; $5953: $2c
	ld d, h                                          ; $5954: $54
	nop                                              ; $5955: $00
	rst JumpTable                                          ; $5956: $c7
	inc b                                            ; $5957: $04
	adc h                                            ; $5958: $8c
	ret                                              ; $5959: $c9


	pop bc                                           ; $595a: $c1
	and b                                            ; $595b: $a0
	xor d                                            ; $595c: $aa
	rst GetHLinHL                                          ; $595d: $cf
	ret z                                            ; $595e: $c8

	ret nc                                           ; $595f: $d0

	ld a, c                                          ; $5960: $79
	sbc [hl]                                         ; $5961: $9e
	sub e                                            ; $5962: $93
	pop bc                                           ; $5963: $c1
	pop de                                           ; $5964: $d1
	jr nz, jr_049_591a                               ; $5965: $20 $b3

	xor [hl]                                         ; $5967: $ae
	ld hl, sp+$70                                    ; $5968: $f8 $70
	rst JumpTable                                          ; $596a: $c7
	and a                                            ; $596b: $a7
	cpl                                              ; $596c: $2f
	rst $38                                          ; $596d: $ff
	ld l, a                                          ; $596e: $6f
	ld a, b                                          ; $596f: $78
	ret nc                                           ; $5970: $d0

	sub e                                            ; $5971: $93
	rst $38                                          ; $5972: $ff
	rst SubAFromDE                                          ; $5973: $df
	rst SubAFromDE                                          ; $5974: $df
	cp b                                             ; $5975: $b8
	ld d, l                                          ; $5976: $55
	xor e                                            ; $5977: $ab
	rst SubAFromHL                                          ; $5978: $d7
	ld a, [hl]                                       ; $5979: $7e
	ei                                               ; $597a: $fb
	ld a, l                                          ; $597b: $7d
	ldh [rSCY], a                                    ; $597c: $e0 $42
	ld a, d                                          ; $597e: $7a
	ld l, $80                                        ; $597f: $2e $80
	add c                                            ; $5981: $81
	inc b                                            ; $5982: $04
	add b                                            ; $5983: $80
	nop                                              ; $5984: $00
	or h                                             ; $5985: $b4
	ret z                                            ; $5986: $c8

	adc l                                            ; $5987: $8d
	or d                                             ; $5988: $b2
	inc bc                                           ; $5989: $03
	rst $38                                          ; $598a: $ff
	add d                                            ; $598b: $82
	jr nz, jr_049_5994                               ; $598c: $20 $06

	inc sp                                           ; $598e: $33
	ld h, b                                          ; $598f: $60
	ld [hl], l                                       ; $5990: $75

jr_049_5991:
	db $fc                                           ; $5991: $fc
	nop                                              ; $5992: $00
	inc a                                            ; $5993: $3c

jr_049_5994:
	nop                                              ; $5994: $00
	rst $38                                          ; $5995: $ff
	ld [hl], d                                       ; $5996: $72
	ldh [rAUD3LEVEL], a                              ; $5997: $e0 $1c
	adc $7e                                          ; $5999: $ce $7e
	jr jr_049_59b0                                   ; $599b: $18 $13

	inc b                                            ; $599d: $04
	add hl, de                                       ; $599e: $19
	ld b, $92                                        ; $599f: $06 $92
	db $e3                                           ; $59a1: $e3
	ld sp, $0300                                     ; $59a2: $31 $00 $03
	nop                                              ; $59a5: $00
	pop bc                                           ; $59a6: $c1
	ld h, c                                          ; $59a7: $61
	ld sp, hl                                        ; $59a8: $f9
	ld c, b                                          ; $59a9: $48
	ld [hl+], a                                      ; $59aa: $22
	ld [bc], a                                       ; $59ab: $02
	add hl, bc                                       ; $59ac: $09
	db $ed                                           ; $59ad: $ed
	ld a, e                                          ; $59ae: $7b
	pop de                                           ; $59af: $d1

jr_049_59b0:
	sbc [hl]                                         ; $59b0: $9e

jr_049_59b1:
	add e                                            ; $59b1: $83
	ld a, d                                          ; $59b2: $7a
	cp l                                             ; $59b3: $bd
	add b                                            ; $59b4: $80
	jr jr_049_593c                                   ; $59b5: $18 $85

	ld c, e                                          ; $59b7: $4b
	sbc [hl]                                         ; $59b8: $9e
	sbc d                                            ; $59b9: $9a
	ld c, a                                          ; $59ba: $4f
	sub l                                            ; $59bb: $95
	add e                                            ; $59bc: $83
	add hl, de                                       ; $59bd: $19
	ld h, d                                          ; $59be: $62
	inc a                                            ; $59bf: $3c
	ld h, h                                          ; $59c0: $64
	ld l, h                                          ; $59c1: $6c
	jr c, jr_049_5a2e                                ; $59c2: $38 $6a

	ld a, a                                          ; $59c4: $7f
	ld a, h                                          ; $59c5: $7c
	ld bc, $c981                                     ; $59c6: $01 $81 $c9
	pop hl                                           ; $59c9: $e1
	add hl, hl                                       ; $59ca: $29
	ld d, c                                          ; $59cb: $51
	xor c                                            ; $59cc: $a9
	ld e, a                                          ; $59cd: $5f
	add a                                            ; $59ce: $87
	ld [hl], a                                       ; $59cf: $77
	ld [hl], a                                       ; $59d0: $77
	rla                                              ; $59d1: $17
	rla                                              ; $59d2: $17
	and a                                            ; $59d3: $a7
	sub e                                            ; $59d4: $93
	rlca                                             ; $59d5: $07
	dec c                                            ; $59d6: $0d
	sub a                                            ; $59d7: $97
	adc e                                            ; $59d8: $8b
	add b                                            ; $59d9: $80
	add e                                            ; $59da: $83
	add e                                            ; $59db: $83
	add d                                            ; $59dc: $82

jr_049_59dd:
	add [hl]                                         ; $59dd: $86
	add d                                            ; $59de: $82
	ld hl, sp-$04                                    ; $59df: $f8 $fc
	db $db                                           ; $59e1: $db
	rst $38                                          ; $59e2: $ff
	sub h                                            ; $59e3: $94
	ld hl, sp-$0c                                    ; $59e4: $f8 $f4
	cp $95                                           ; $59e6: $fe $95
	ld [$6b37], a                                    ; $59e8: $ea $37 $6b
	inc [hl]                                         ; $59eb: $34
	nop                                              ; $59ec: $00
	inc bc                                           ; $59ed: $03
	ld bc, $c0de                                     ; $59ee: $01 $de $c0
	add d                                            ; $59f1: $82
	rst JumpTable                                          ; $59f2: $c7
	jp $3cb2                                         ; $59f3: $c3 $b2 $3c


	ld a, [hl-]                                      ; $59f6: $3a
	or l                                             ; $59f7: $b5
	or b                                             ; $59f8: $b0
	or l                                             ; $59f9: $b5
	cp e                                             ; $59fa: $bb
	inc e                                            ; $59fb: $1c
	dec e                                            ; $59fc: $1d
	sbc e                                            ; $59fd: $9b
	sbc l                                            ; $59fe: $9d
	ld a, [de]                                       ; $59ff: $1a
	rra                                              ; $5a00: $1f
	ld a, [de]                                       ; $5a01: $1a
	sbc a                                            ; $5a02: $9f
	cp e                                             ; $5a03: $bb
	inc a                                            ; $5a04: $3c
	inc bc                                           ; $5a05: $03
	pop af                                           ; $5a06: $f1
	pop af                                           ; $5a07: $f1
	ld a, [$feff]                                    ; $5a08: $fa $ff $fe
	ld [bc], a                                       ; $5a0b: $02
	ret nz                                           ; $5a0c: $c0

	db $fc                                           ; $5a0d: $fc
	ld c, $74                                        ; $5a0e: $0e $74
	ld c, d                                          ; $5a10: $4a
	adc [hl]                                         ; $5a11: $8e
	db $fd                                           ; $5a12: $fd
	dec b                                            ; $5a13: $05
	xor c                                            ; $5a14: $a9
	add l                                            ; $5a15: $85
	add hl, hl                                       ; $5a16: $29
	push hl                                          ; $5a17: $e5
	ld h, d                                          ; $5a18: $62
	ld h, l                                          ; $5a19: $65
	adc d                                            ; $5a1a: $8a
	ld [de], a                                       ; $5a1b: $12
	ld [hl], d                                       ; $5a1c: $72
	ld [hl], d                                       ; $5a1d: $72
	ld [de], a                                       ; $5a1e: $12
	ld [de], a                                       ; $5a1f: $12
	sbc h                                            ; $5a20: $9c
	sbc b                                            ; $5a21: $98
	ld h, b                                          ; $5a22: $60
	ld a, d                                          ; $5a23: $7a
	ld sp, $aa9d                                     ; $5a24: $31 $9d $aa
	ld a, a                                          ; $5a27: $7f
	ld a, e                                          ; $5a28: $7b
	db $fc                                           ; $5a29: $fc
	ld sp, hl                                        ; $5a2a: $f9
	sub d                                            ; $5a2b: $92
	cp c                                             ; $5a2c: $b9
	ld a, c                                          ; $5a2d: $79

jr_049_5a2e:
	cp c                                             ; $5a2e: $b9
	ld e, c                                          ; $5a2f: $59
	ld sp, hl                                        ; $5a30: $f9
	ld d, b                                          ; $5a31: $50
	xor b                                            ; $5a32: $a8
	ld d, b                                          ; $5a33: $50

jr_049_5a34:
	ld b, c                                          ; $5a34: $41
	add c                                            ; $5a35: $81
	ld b, c                                          ; $5a36: $41
	and c                                            ; $5a37: $a1
	ld bc, $467a                                     ; $5a38: $01 $7a $46
	sbc d                                            ; $5a3b: $9a
	jr c, jr_049_5a53                                ; $5a3c: $38 $15

	ld a, [hl-]                                      ; $5a3e: $3a
	dec [hl]                                         ; $5a3f: $35
	inc a                                            ; $5a40: $3c
	sbc $7f                                          ; $5a41: $de $7f
	reti                                             ; $5a43: $d9


	jr nc, jr_049_59dd                               ; $5a44: $30 $97

	dec bc                                           ; $5a46: $0b
	ld d, a                                          ; $5a47: $57
	xor a                                            ; $5a48: $af
	ld e, a                                          ; $5a49: $5f
	ldh a, [$fa]                                     ; $5a4a: $f0 $fa
	db $fd                                           ; $5a4c: $fd
	ld a, [$93fd]                                    ; $5a4d: $fa $fd $93
	rrca                                             ; $5a50: $0f
	dec b                                            ; $5a51: $05
	ld [bc], a                                       ; $5a52: $02

jr_049_5a53:
	dec b                                            ; $5a53: $05
	ld [de], a                                       ; $5a54: $12
	inc de                                           ; $5a55: $13
	dec de                                           ; $5a56: $1b
	dec a                                            ; $5a57: $3d
	push hl                                          ; $5a58: $e5
	ld e, a                                          ; $5a59: $5f
	cp e                                             ; $5a5a: $bb
	ld d, l                                          ; $5a5b: $55
	db $fd                                           ; $5a5c: $fd
	sbc [hl]                                         ; $5a5d: $9e

jr_049_5a5e:
	jr jr_049_5a5e                                   ; $5a5e: $18 $fe

	sub a                                            ; $5a60: $97
	ld h, d                                          ; $5a61: $62

Jump_049_5a62:
	ld hl, $2120                                     ; $5a62: $21 $20 $21
	or b                                             ; $5a65: $b0
	ldh a, [$f8]                                     ; $5a66: $f0 $f8
	ld d, [hl]                                       ; $5a68: $56
	sbc $01                                          ; $5a69: $de $01
	ld [hl], l                                       ; $5a6b: $75
	add d                                            ; $5a6c: $82
	add e                                            ; $5a6d: $83
	nop                                              ; $5a6e: $00
	ld b, b                                          ; $5a6f: $40
	ld c, [hl]                                       ; $5a70: $4e
	ld l, h                                          ; $5a71: $6c
	and [hl]                                         ; $5a72: $a6
	ld d, b                                          ; $5a73: $50
	jr nz, @-$26                                     ; $5a74: $20 $d8

	jr c, jr_049_5a34                                ; $5a76: $38 $bc

	cp h                                             ; $5a78: $bc
	sbc h                                            ; $5a79: $9c
	call c, $dcac                                    ; $5a7a: $dc $ac $dc
	ld h, h                                          ; $5a7d: $64
	call nz, $c1d1                                   ; $5a7e: $c4 $d1 $c1
	reti                                             ; $5a81: $d9


	rst JumpTable                                          ; $5a82: $c7
	call z, $9ccc                                    ; $5a83: $cc $cc $9c
	xor h                                            ; $5a86: $ac
	add b                                            ; $5a87: $80
	add b                                            ; $5a88: $80
	and $dd                                          ; $5a89: $e6 $dd
	di                                               ; $5a8b: $f3
	sbc d                                            ; $5a8c: $9a
	db $d3                                           ; $5a8d: $d3
	nop                                              ; $5a8e: $00
	and b                                            ; $5a8f: $a0
	and b                                            ; $5a90: $a0
	nop                                              ; $5a91: $00
	ld a, e                                          ; $5a92: $7b
	ld b, h                                          ; $5a93: $44
	sbc l                                            ; $5a94: $9d
	ld bc, $76ff                                     ; $5a95: $01 $ff $76
	pop bc                                           ; $5a98: $c1
	db $dd                                           ; $5a99: $dd
	rst $38                                          ; $5a9a: $ff
	rst $38                                          ; $5a9b: $ff
	sbc [hl]                                         ; $5a9c: $9e
	rst SubAFromBC                                          ; $5a9d: $e7
	ld sp, hl                                        ; $5a9e: $f9

jr_049_5a9f:
	ld [hl], l                                       ; $5a9f: $75
	ld a, $9b                                        ; $5aa0: $3e $9b
	ld hl, sp+$04                                    ; $5aa2: $f8 $04
	add hl, bc                                       ; $5aa4: $09
	ld sp, hl                                        ; $5aa5: $f9
	ld a, d                                          ; $5aa6: $7a
	reti                                             ; $5aa7: $d9


	ld a, l                                          ; $5aa8: $7d
	ei                                               ; $5aa9: $fb
	rst $38                                          ; $5aaa: $ff
	ld a, h                                          ; $5aab: $7c
	call nc, Call_049_7efd                           ; $5aac: $d4 $fd $7e
	rst SubAFromHL                                          ; $5aaf: $d7
	sbc d                                            ; $5ab0: $9a
	rra                                              ; $5ab1: $1f
	ld sp, $6d11                                     ; $5ab2: $31 $11 $6d
	add hl, bc                                       ; $5ab5: $09
	ld a, e                                          ; $5ab6: $7b
	db $f4                                           ; $5ab7: $f4
	add b                                            ; $5ab8: $80
	ld sp, hl                                        ; $5ab9: $f9
	rst GetHLinHL                                          ; $5aba: $cf
	nop                                              ; $5abb: $00
	db $10                                           ; $5abc: $10
	ld [hl], b                                       ; $5abd: $70
	ld h, [hl]                                       ; $5abe: $66
	ld c, $1e                                        ; $5abf: $0e $1e
	ret c                                            ; $5ac1: $d8

	call c, $fefc                                    ; $5ac2: $dc $fc $fe
	cp $98                                           ; $5ac5: $fe $98
	ld sp, $e961                                     ; $5ac7: $31 $61 $e9
	dec [hl]                                         ; $5aca: $35
	add hl, bc                                       ; $5acb: $09
	dec d                                            ; $5acc: $15
	dec bc                                           ; $5acd: $0b
	ld bc, $fffd                                     ; $5ace: $01 $fd $ff
	db $fc                                           ; $5ad1: $fc
	db $e3                                           ; $5ad2: $e3
	sbc a                                            ; $5ad3: $9f
	cp a                                             ; $5ad4: $bf
	cp a                                             ; $5ad5: $bf
	rst $38                                          ; $5ad6: $ff
	ld e, $94                                        ; $5ad7: $1e $94
	ldh [$03], a                                     ; $5ad9: $e0 $03
	inc e                                            ; $5adb: $1c
	ld h, b                                          ; $5adc: $60
	ld b, b                                          ; $5add: $40
	ld b, b                                          ; $5ade: $40

jr_049_5adf:
	cp [hl]                                          ; $5adf: $be
	ldh a, [c]                                       ; $5ae0: $f2
	adc e                                            ; $5ae1: $8b
	ld a, e                                          ; $5ae2: $7b
	ei                                               ; $5ae3: $fb
	sbc $fa                                          ; $5ae4: $de $fa
	sbc e                                            ; $5ae6: $9b
	pop bc                                           ; $5ae7: $c1
	dec c                                            ; $5ae8: $0d
	ld [hl], l                                       ; $5ae9: $75
	add l                                            ; $5aea: $85
	db $dd                                           ; $5aeb: $dd
	dec b                                            ; $5aec: $05
	sub a                                            ; $5aed: $97
	add h                                            ; $5aee: $84
	adc b                                            ; $5aef: $88
	sub b                                            ; $5af0: $90
	and b                                            ; $5af1: $a0
	ret nz                                           ; $5af2: $c0

	add b                                            ; $5af3: $80
	sbc b                                            ; $5af4: $98
	cp e                                             ; $5af5: $bb
	reti                                             ; $5af6: $d9


	rst $38                                          ; $5af7: $ff
	sub [hl]                                         ; $5af8: $96
	jr nc, jr_049_5b2a                               ; $5af9: $30 $2f

	ld [hl], l                                       ; $5afb: $75
	ld a, a                                          ; $5afc: $7f
	ccf                                              ; $5afd: $3f
	ld e, a                                          ; $5afe: $5f
	ld d, e                                          ; $5aff: $53
	ret nz                                           ; $5b00: $c0

	rst GetHLinHL                                          ; $5b01: $cf
	db $dd                                           ; $5b02: $dd
	ret nz                                           ; $5b03: $c0

	adc e                                            ; $5b04: $8b
	ldh [$ec], a                                     ; $5b05: $e0 $ec
	rst $38                                          ; $5b07: $ff
	jr jr_049_5a9f                                   ; $5b08: $18 $95

	sub d                                            ; $5b0a: $92
	sub l                                            ; $5b0b: $95
	ld [de], a                                       ; $5b0c: $12
	dec d                                            ; $5b0d: $15
	ld [de], a                                       ; $5b0e: $12
	dec d                                            ; $5b0f: $15
	cp a                                             ; $5b10: $bf
	ld a, [hl-]                                      ; $5b11: $3a
	dec a                                            ; $5b12: $3d
	ld a, [hl-]                                      ; $5b13: $3a
	cp l                                             ; $5b14: $bd

jr_049_5b15:
	cp d                                             ; $5b15: $ba
	cp l                                             ; $5b16: $bd
	cp d                                             ; $5b17: $ba
	nop                                              ; $5b18: $00
	ld [hl], l                                       ; $5b19: $75
	rrca                                             ; $5b1a: $0f
	sbc l                                            ; $5b1b: $9d
	xor d                                            ; $5b1c: $aa
	db $fd                                           ; $5b1d: $fd
	ld l, b                                          ; $5b1e: $68
	or d                                             ; $5b1f: $b2
	rst $38                                          ; $5b20: $ff
	ld [hl], a                                       ; $5b21: $77
	ldh a, [c]                                       ; $5b22: $f2
	ld a, a                                          ; $5b23: $7f
	cp $9d                                           ; $5b24: $fe $9d
	ld d, a                                          ; $5b26: $57
	xor c                                            ; $5b27: $a9
	ld a, d                                          ; $5b28: $7a
	ld d, b                                          ; $5b29: $50

jr_049_5b2a:
	ld e, e                                          ; $5b2a: $5b
	ldh a, [$9d]                                     ; $5b2b: $f0 $9d
	rst $38                                          ; $5b2d: $ff
	ld [hl], a                                       ; $5b2e: $77
	ld sp, hl                                        ; $5b2f: $f9
	ld a, [hl]                                       ; $5b30: $7e
	add $99                                          ; $5b31: $c6 $99
	xor c                                            ; $5b33: $a9
	ld e, c                                          ; $5b34: $59
	cp c                                             ; $5b35: $b9
	ld a, c                                          ; $5b36: $79
	ld a, c                                          ; $5b37: $79
	ld sp, hl                                        ; $5b38: $f9
	ld a, c                                          ; $5b39: $79
	inc c                                            ; $5b3a: $0c
	sbc c                                            ; $5b3b: $99
	and c                                            ; $5b3c: $a1
	ld b, c                                          ; $5b3d: $41
	add c                                            ; $5b3e: $81
	add c                                            ; $5b3f: $81
	ld bc, $da5f                                     ; $5b40: $01 $5f $da
	ld a, a                                          ; $5b43: $7f
	reti                                             ; $5b44: $d9


	jr nc, jr_049_5adf                               ; $5b45: $30 $98

	ld [bc], a                                       ; $5b47: $02
	ld d, c                                          ; $5b48: $51
	xor b                                            ; $5b49: $a8
	ld d, h                                          ; $5b4a: $54
	ld [bc], a                                       ; $5b4b: $02
	ld bc, $6102                                     ; $5b4c: $01 $02 $61
	add b                                            ; $5b4f: $80
	ld [hl], a                                       ; $5b50: $77
	pop bc                                           ; $5b51: $c1
	sbc h                                            ; $5b52: $9c
	ld a, [hl+]                                      ; $5b53: $2a
	dec d                                            ; $5b54: $15
	add d                                            ; $5b55: $82
	ld [hl], d                                       ; $5b56: $72
	ret nz                                           ; $5b57: $c0

	db $fd                                           ; $5b58: $fd
	sub a                                            ; $5b59: $97
	xor a                                            ; $5b5a: $af
	ld d, [hl]                                       ; $5b5b: $56
	xor e                                            ; $5b5c: $ab
	ld d, [hl]                                       ; $5b5d: $56
	cp e                                             ; $5b5e: $bb
	ld e, h                                          ; $5b5f: $5c
	xor l                                            ; $5b60: $ad
	ld e, a                                          ; $5b61: $5f
	ld [hl], l                                       ; $5b62: $75
	ld [hl], a                                       ; $5b63: $77
	ld a, a                                          ; $5b64: $7f

jr_049_5b65:
	ld [SetWramBankToHighByteInStackAfterReturn], sp                                   ; $5b65: $08 $7f $07
	add [hl]                                         ; $5b68: $86
	ld c, l                                          ; $5b69: $4d
	jr jr_049_5b15                                   ; $5b6a: $18 $a9

	nop                                              ; $5b6c: $00
	jp hl                                            ; $5b6d: $e9


	nop                                              ; $5b6e: $00
	db $fd                                           ; $5b6f: $fd
	xor b                                            ; $5b70: $a8
	db $fc                                           ; $5b71: $fc
	db $fd                                           ; $5b72: $fd
	ld d, h                                          ; $5b73: $54
	db $fd                                           ; $5b74: $fd
	inc d                                            ; $5b75: $14
	db $fd                                           ; $5b76: $fd
	db $fc                                           ; $5b77: $fc
	ld d, l                                          ; $5b78: $55
	ld hl, sp-$51                                    ; $5b79: $f8 $af
	sbc a                                            ; $5b7b: $9f
	cp a                                             ; $5b7c: $bf
	rst $38                                          ; $5b7d: $ff
	add b                                            ; $5b7e: $80
	rst $38                                          ; $5b7f: $ff
	ld sp, hl                                        ; $5b80: $f9
	rst JumpTable                                          ; $5b81: $c7
	sbc $c0                                          ; $5b82: $de $c0
	ld a, a                                          ; $5b84: $7f
	ld sp, hl                                        ; $5b85: $f9
	sub a                                            ; $5b86: $97
	rst $38                                          ; $5b87: $ff
	add [hl]                                         ; $5b88: $86
	jr nz, jr_049_5b65                               ; $5b89: $20 $da

	or $ff                                           ; $5b8b: $f6 $ff
	push de                                          ; $5b8d: $d5
	nop                                              ; $5b8e: $00
	sbc $ff                                          ; $5b8f: $de $ff
	sbc [hl]                                         ; $5b91: $9e
	dec b                                            ; $5b92: $05
	ld a, d                                          ; $5b93: $7a
	sub b                                            ; $5b94: $90
	halt                                             ; $5b95: $76
	jp nz, $9aff                                     ; $5b96: $c2 $ff $9a

	rra                                              ; $5b99: $1f
	rst $38                                          ; $5b9a: $ff
	jr nz, jr_049_5b9d                               ; $5b9b: $20 $00

jr_049_5b9d:
	jr nz, jr_049_5c0d                               ; $5b9d: $20 $6e

	cp a                                             ; $5b9f: $bf
	ld a, l                                          ; $5ba0: $7d
	ld l, a                                          ; $5ba1: $6f
	halt                                             ; $5ba2: $76
	adc $df                                          ; $5ba3: $ce $df
	ld b, b                                          ; $5ba5: $40
	rst SubAFromDE                                          ; $5ba6: $df
	add b                                            ; $5ba7: $80
	ld [hl], b                                       ; $5ba8: $70
	jp $c09a                                         ; $5ba9: $c3 $9a $c0


	ld b, b                                          ; $5bac: $40
	ld b, b                                          ; $5bad: $40
	add hl, bc                                       ; $5bae: $09
	ld a, c                                          ; $5baf: $79
	db $db                                           ; $5bb0: $db
	add hl, bc                                       ; $5bb1: $09
	sbc h                                            ; $5bb2: $9c
	ld b, b                                          ; $5bb3: $40
	ld [hl], b                                       ; $5bb4: $70
	ld [hl], b                                       ; $5bb5: $70
	ld l, e                                          ; $5bb6: $6b
	db $dd                                           ; $5bb7: $dd
	db $db                                           ; $5bb8: $db
	rst $38                                          ; $5bb9: $ff
	sbc l                                            ; $5bba: $9d
	inc d                                            ; $5bbb: $14
	ld a, [bc]                                       ; $5bbc: $0a
	ld l, a                                          ; $5bbd: $6f
	cp $d9                                           ; $5bbe: $fe $d9
	cp a                                             ; $5bc0: $bf
	reti                                             ; $5bc1: $d9


	ld b, b                                          ; $5bc2: $40
	jp c, $9efb                                      ; $5bc3: $da $fb $9e

	di                                               ; $5bc6: $f3
	jp c, $9d05                                      ; $5bc7: $da $05 $9d

	dec c                                            ; $5bca: $0d
	sbc b                                            ; $5bcb: $98
	ld a, e                                          ; $5bcc: $7b
	adc c                                            ; $5bcd: $89
	sbc e                                            ; $5bce: $9b
	pop bc                                           ; $5bcf: $c1
	add $d8                                          ; $5bd0: $c6 $d8
	ret nz                                           ; $5bd2: $c0

	db $dd                                           ; $5bd3: $dd
	rst $38                                          ; $5bd4: $ff
	ld a, h                                          ; $5bd5: $7c
	ld b, e                                          ; $5bd6: $43
	sbc e                                            ; $5bd7: $9b
	rst SubAFromBC                                          ; $5bd8: $e7
	rst $38                                          ; $5bd9: $ff
	ld d, b                                          ; $5bda: $50
	ld b, b                                          ; $5bdb: $40
	ld a, d                                          ; $5bdc: $7a
	ld l, [hl]                                       ; $5bdd: $6e
	ld a, e                                          ; $5bde: $7b
	ld d, l                                          ; $5bdf: $55
	sbc h                                            ; $5be0: $9c
	rst AddAOntoHL                                          ; $5be1: $ef
	rst $38                                          ; $5be2: $ff
	rst $38                                          ; $5be3: $ff
	ld [hl], d                                       ; $5be4: $72
	ccf                                              ; $5be5: $3f
	sub h                                            ; $5be6: $94
	rra                                              ; $5be7: $1f
	sbc l                                            ; $5be8: $9d
	sbc h                                            ; $5be9: $9c
	jr jr_049_5c04                                   ; $5bea: $18 $18

	sbc b                                            ; $5bec: $98
	jr jr_049_5c07                                   ; $5bed: $18 $18

	cp b                                             ; $5bef: $b8
	cp d                                             ; $5bf0: $ba
	cp e                                             ; $5bf1: $bb
	call c, Call_049_7bbf                            ; $5bf2: $dc $bf $7b
	jp hl                                            ; $5bf5: $e9


	ld a, l                                          ; $5bf6: $7d
	add a                                            ; $5bf7: $87
	db $fc                                           ; $5bf8: $fc
	sbc l                                            ; $5bf9: $9d
	add b                                            ; $5bfa: $80
	pop af                                           ; $5bfb: $f1
	jp c, $9bff                                      ; $5bfc: $da $ff $9b

	ld a, a                                          ; $5bff: $7f
	sbc a                                            ; $5c00: $9f
	ld e, $08                                        ; $5c01: $1e $08
	ld [hl], e                                       ; $5c03: $73

jr_049_5c04:
	rst AddAOntoHL                                          ; $5c04: $ef
	sbc h                                            ; $5c05: $9c
	ld h, b                                          ; $5c06: $60

jr_049_5c07:
	pop hl                                           ; $5c07: $e1
	rst FarCall                                          ; $5c08: $f7
	call c, $9eff                                    ; $5c09: $dc $ff $9e
	scf                                              ; $5c0c: $37

jr_049_5c0d:
	ld a, [$c89e]                                    ; $5c0d: $fa $9e $c8
	sbc $ff                                          ; $5c10: $de $ff
	sbc h                                            ; $5c12: $9c
	ld e, l                                          ; $5c13: $5d
	xor c                                            ; $5c14: $a9
	ld d, l                                          ; $5c15: $55
	ld a, e                                          ; $5c16: $7b
	cp $9c                                           ; $5c17: $fe $9c
	db $fd                                           ; $5c19: $fd
	ei                                               ; $5c1a: $fb
	and c                                            ; $5c1b: $a1
	ld a, d                                          ; $5c1c: $7a
	cp a                                             ; $5c1d: $bf
	adc c                                            ; $5c1e: $89
	xor c                                            ; $5c1f: $a9
	pop de                                           ; $5c20: $d1
	ld sp, hl                                        ; $5c21: $f9
	ld sp, hl                                        ; $5c22: $f9
	ld a, a                                          ; $5c23: $7f
	ld a, a                                          ; $5c24: $7f
	ld a, d                                          ; $5c25: $7a
	ld a, l                                          ; $5c26: $7d
	ld a, d                                          ; $5c27: $7a
	ld [hl], l                                       ; $5c28: $75
	ld a, d                                          ; $5c29: $7a
	ld [hl], b                                       ; $5c2a: $70
	jr nc, jr_049_5c5d                               ; $5c2b: $30 $30

	dec [hl]                                         ; $5c2d: $35
	ld [hl-], a                                      ; $5c2e: $32
	dec [hl]                                         ; $5c2f: $35
	ld a, [hl-]                                      ; $5c30: $3a
	dec [hl]                                         ; $5c31: $35
	ccf                                              ; $5c32: $3f
	ld a, [hl+]                                      ; $5c33: $2a
	rst SubAFromHL                                          ; $5c34: $d7
	ld l, c                                          ; $5c35: $69
	jp c, $dd69                                      ; $5c36: $da $69 $dd

	ld a, d                                          ; $5c39: $7a
	ret nz                                           ; $5c3a: $c0

	sbc [hl]                                         ; $5c3b: $9e
	rst SubAFromDE                                          ; $5c3c: $df
	sbc $ff                                          ; $5c3d: $de $ff
	sbc [hl]                                         ; $5c3f: $9e
	ld a, b                                          ; $5c40: $78
	ld a, [$879e]                                    ; $5c41: $fa $9e $87
	ld a, e                                          ; $5c44: $7b
	adc a                                            ; $5c45: $8f
	sbc $ff                                          ; $5c46: $de $ff
	ld a, h                                          ; $5c48: $7c
	sub [hl]                                         ; $5c49: $96
	ei                                               ; $5c4a: $fb
	ld a, h                                          ; $5c4b: $7c
	add [hl]                                         ; $5c4c: $86
	adc a                                            ; $5c4d: $8f
	ld a, c                                          ; $5c4e: $79
	xor b                                            ; $5c4f: $a8
	ld d, c                                          ; $5c50: $51
	and b                                            ; $5c51: $a0
	ld d, c                                          ; $5c52: $51
	and b                                            ; $5c53: $a0
	ld b, c                                          ; $5c54: $41
	nop                                              ; $5c55: $00
	add h                                            ; $5c56: $84
	ld d, l                                          ; $5c57: $55
	xor h                                            ; $5c58: $ac
	ld e, l                                          ; $5c59: $5d
	xor h                                            ; $5c5a: $ac
	ld e, l                                          ; $5c5b: $5d
	cp h                                             ; $5c5c: $bc

jr_049_5c5d:
	db $fd                                           ; $5c5d: $fd
	ld [hl], a                                       ; $5c5e: $77
	db $d3                                           ; $5c5f: $d3
	sbc l                                            ; $5c60: $9d
	pop af                                           ; $5c61: $f1
	ldh a, [$7b]                                     ; $5c62: $f0 $7b
	dec sp                                           ; $5c64: $3b
	sbc $80                                          ; $5c65: $de $80
	sbc l                                            ; $5c67: $9d
	adc [hl]                                         ; $5c68: $8e
	adc a                                            ; $5c69: $8f
	ld [hl], a                                       ; $5c6a: $77
	ld h, b                                          ; $5c6b: $60
	rst SubAFromDE                                          ; $5c6c: $df
	rst $38                                          ; $5c6d: $ff
	sbc [hl]                                         ; $5c6e: $9e
	ld a, e                                          ; $5c6f: $7b
	ld l, [hl]                                       ; $5c70: $6e
	push af                                          ; $5c71: $f5
	ld a, a                                          ; $5c72: $7f
	call c, $8f8f                                    ; $5c73: $dc $8f $8f
	rst $38                                          ; $5c76: $ff
	rst $38                                          ; $5c77: $ff
	ld h, b                                          ; $5c78: $60
	ld b, h                                          ; $5c79: $44
	adc b                                            ; $5c7a: $88
	ld [$a352], sp                                   ; $5c7b: $08 $52 $a3
	cp a                                             ; $5c7e: $bf
	or e                                             ; $5c7f: $b3
	sbc a                                            ; $5c80: $9f
	cp e                                             ; $5c81: $bb
	ld [hl], a                                       ; $5c82: $77
	rst FarCall                                          ; $5c83: $f7
	rst AddAOntoHL                                          ; $5c84: $ef
	sbc $de                                          ; $5c85: $de $de
	db $dd                                           ; $5c87: $dd
	add b                                            ; $5c88: $80
	ld a, d                                          ; $5c89: $7a
	ret                                              ; $5c8a: $c9


	call c, Call_049_7f40                            ; $5c8b: $dc $40 $7f
	ld c, [hl]                                       ; $5c8e: $4e
	rst SubAFromDE                                          ; $5c8f: $df
	add b                                            ; $5c90: $80
	reti                                             ; $5c91: $d9


	add hl, bc                                       ; $5c92: $09
	ld h, e                                          ; $5c93: $63
	ld a, a                                          ; $5c94: $7f
	sbc $ff                                          ; $5c95: $de $ff
	db $dd                                           ; $5c97: $dd
	rst SubAFromDE                                          ; $5c98: $df
	halt                                             ; $5c99: $76
	call nz, $3486                                   ; $5c9a: $c4 $86 $34
	ld a, [hl+]                                      ; $5c9d: $2a

jr_049_5c9e:
	inc [hl]                                         ; $5c9e: $34
	ld a, [hl+]                                      ; $5c9f: $2a
	cp a                                             ; $5ca0: $bf
	cp a                                             ; $5ca1: $bf
	cp h                                             ; $5ca2: $bc
	or e                                             ; $5ca3: $b3
	adc a                                            ; $5ca4: $8f
	sbc h                                            ; $5ca5: $9c
	pop af                                           ; $5ca6: $f1
	rst JumpTable                                          ; $5ca7: $c7
	ld b, b                                          ; $5ca8: $40
	ld b, b                                          ; $5ca9: $40
	ld b, e                                          ; $5caa: $43
	ld c, h                                          ; $5cab: $4c
	ld [hl], b                                       ; $5cac: $70
	ld h, e                                          ; $5cad: $63
	ld c, $3b                                        ; $5cae: $0e $3b
	rst GetHLinHL                                          ; $5cb0: $cf
	ccf                                              ; $5cb1: $3f
	ld sp, hl                                        ; $5cb2: $f9
	rst JumpTable                                          ; $5cb3: $c7
	sbc a                                            ; $5cb4: $9f
	ld a, d                                          ; $5cb5: $7a
	and $9a                                          ; $5cb6: $e6 $9a
	ld sp, $06c1                                     ; $5cb8: $31 $c1 $06
	dec sp                                           ; $5cbb: $3b
	ld l, a                                          ; $5cbc: $6f
	ld a, e                                          ; $5cbd: $7b
	sub d                                            ; $5cbe: $92
	sub a                                            ; $5cbf: $97
	ld a, [hl+]                                      ; $5cc0: $2a
	ld d, l                                          ; $5cc1: $55
	xor d                                            ; $5cc2: $aa
	db $f4                                           ; $5cc3: $f4
	db $eb                                           ; $5cc4: $eb
	rst SubAFromHL                                          ; $5cc5: $d7
	cp l                                             ; $5cc6: $bd
	ld a, d                                          ; $5cc7: $7a
	db $db                                           ; $5cc8: $db
	rst $38                                          ; $5cc9: $ff
	sbc b                                            ; $5cca: $98
	cp $fc                                           ; $5ccb: $fe $fc
	or l                                             ; $5ccd: $b5
	ld c, b                                          ; $5cce: $48
	ld hl, $95ca                                     ; $5ccf: $21 $ca $95
	ld a, e                                          ; $5cd2: $7b
	db $eb                                           ; $5cd3: $eb
	sbc d                                            ; $5cd4: $9a
	ldh [$f7], a                                     ; $5cd5: $e0 $f7
	db $f4                                           ; $5cd7: $f4
	ldh [$c0], a                                     ; $5cd8: $e0 $c0
	ld a, d                                          ; $5cda: $7a
	or [hl]                                          ; $5cdb: $b6
	adc c                                            ; $5cdc: $89
	ld a, [de]                                       ; $5cdd: $1a
	ld e, b                                          ; $5cde: $58
	ld d, b                                          ; $5cdf: $50
	xor d                                            ; $5ce0: $aa
	ld e, e                                          ; $5ce1: $5b
	or h                                             ; $5ce2: $b4
	ld c, b                                          ; $5ce3: $48
	or b                                             ; $5ce4: $b0
	jr nc, jr_049_5c9e                               ; $5ce5: $30 $b7

	cp a                                             ; $5ce7: $bf
	nop                                              ; $5ce8: $00
	inc b                                            ; $5ce9: $04
	rrca                                             ; $5cea: $0f
	rra                                              ; $5ceb: $1f
	rra                                              ; $5cec: $1f
	xor d                                            ; $5ced: $aa
	inc bc                                           ; $5cee: $03
	nop                                              ; $5cef: $00
	and b                                            ; $5cf0: $a0
	rst $38                                          ; $5cf1: $ff
	inc b                                            ; $5cf2: $04
	cp $9e                                           ; $5cf3: $fe $9e
	db $fc                                           ; $5cf5: $fc
	ld a, e                                          ; $5cf6: $7b
	inc c                                            ; $5cf7: $0c
	sbc $ff                                          ; $5cf8: $de $ff
	sbc h                                            ; $5cfa: $9c
	xor d                                            ; $5cfb: $aa
	add c                                            ; $5cfc: $81
	rst $38                                          ; $5cfd: $ff
	ld [hl], b                                       ; $5cfe: $70
	add sp, $67                                      ; $5cff: $e8 $67
	add e                                            ; $5d01: $83
	ld a, l                                          ; $5d02: $7d
	ld h, l                                          ; $5d03: $65
	ld l, e                                          ; $5d04: $6b
	ldh a, [$9e]                                     ; $5d05: $f0 $9e
	ld [bc], a                                       ; $5d07: $02
	ld l, a                                          ; $5d08: $6f
	ldh a, [$9c]                                     ; $5d09: $f0 $9c
	xor e                                            ; $5d0b: $ab
	cp a                                             ; $5d0c: $bf
	cp $7b                                           ; $5d0d: $fe $7b
	ldh a, [$9b]                                     ; $5d0f: $f0 $9b
	ld b, h                                          ; $5d11: $44
	ld a, [hl+]                                      ; $5d12: $2a
	ld bc, $7541                                     ; $5d13: $01 $41 $75
	ldh a, [$9a]                                     ; $5d16: $f0 $9a
	cp e                                             ; $5d18: $bb
	push de                                          ; $5d19: $d5
	rst GetHLinHL                                          ; $5d1a: $cf
	sbc [hl]                                         ; $5d1b: $9e
	ld hl, sp+$77                                    ; $5d1c: $f8 $77
	ldh [$9c], a                                     ; $5d1e: $e0 $9c
	and b                                            ; $5d20: $a0
	jr nc, jr_049_5d24                               ; $5d21: $30 $01

	ld a, b                                          ; $5d23: $78

jr_049_5d24:
	cp [hl]                                          ; $5d24: $be
	rst SubAFromDE                                          ; $5d25: $df
	rst $38                                          ; $5d26: $ff
	sbc h                                            ; $5d27: $9c
	ld e, a                                          ; $5d28: $5f
	rst $38                                          ; $5d29: $ff
	ld [$c04f], a                                    ; $5d2a: $ea $4f $c0
	sbc l                                            ; $5d2d: $9d
	rst $38                                          ; $5d2e: $ff
	ld bc, $f04b                                     ; $5d2f: $01 $4b $f0
	sbc [hl]                                         ; $5d32: $9e
	ld e, a                                          ; $5d33: $5f
	ld [hl], a                                       ; $5d34: $77
	ret nz                                           ; $5d35: $c0

	db $fd                                           ; $5d36: $fd
	ld [hl], c                                       ; $5d37: $71
	or b                                             ; $5d38: $b0
	adc l                                            ; $5d39: $8d
	rst $38                                          ; $5d3a: $ff
	ld a, h                                          ; $5d3b: $7c
	db $ec                                           ; $5d3c: $ec
	ld a, h                                          ; $5d3d: $7c
	nop                                              ; $5d3e: $00
	db $fc                                           ; $5d3f: $fc
	ld a, [bc]                                       ; $5d40: $0a
	rrca                                             ; $5d41: $0f
	rlca                                             ; $5d42: $07
	add e                                            ; $5d43: $83
	inc de                                           ; $5d44: $13
	add e                                            ; $5d45: $83
	nop                                              ; $5d46: $00
	nop                                              ; $5d47: $00

jr_049_5d48:
	db $f4                                           ; $5d48: $f4
	ldh a, [c]                                       ; $5d49: $f2
	ld sp, hl                                        ; $5d4a: $f9
	ld d, l                                          ; $5d4b: $55
	ld [hl], a                                       ; $5d4c: $77
	ldh [c], a                                       ; $5d4d: $e2
	sbc e                                            ; $5d4e: $9b
	inc b                                            ; $5d4f: $04
	ld [bc], a                                       ; $5d50: $02
	or c                                             ; $5d51: $b1
	add b                                            ; $5d52: $80
	ld l, e                                          ; $5d53: $6b
	bit 7, a                                         ; $5d54: $cb $7f
	ldh a, [$7f]                                     ; $5d56: $f0 $7f
	ret nc                                           ; $5d58: $d0

	ld [hl], l                                       ; $5d59: $75
	ld a, [hl-]                                      ; $5d5a: $3a
	ld a, a                                          ; $5d5b: $7f
	jp hl                                            ; $5d5c: $e9


	ld a, e                                          ; $5d5d: $7b
	ret nc                                           ; $5d5e: $d0

	cp $9a                                           ; $5d5f: $fe $9a
	ld a, a                                          ; $5d61: $7f
	nop                                              ; $5d62: $00
	ld bc, $88df                                     ; $5d63: $01 $df $88
	ld a, e                                          ; $5d66: $7b
	jr c, jr_049_5d48                                ; $5d67: $38 $df

	cp $7d                                           ; $5d69: $fe $7d
	add l                                            ; $5d6b: $85
	sbc [hl]                                         ; $5d6c: $9e
	ld [hl], a                                       ; $5d6d: $77
	ld a, e                                          ; $5d6e: $7b
	ld [$4097], sp                                   ; $5d6f: $08 $97 $40
	ld a, a                                          ; $5d72: $7f
	add b                                            ; $5d73: $80
	rst $38                                          ; $5d74: $ff
	rra                                              ; $5d75: $1f
	ld bc, $100c                                     ; $5d76: $01 $0c $10
	ld a, d                                          ; $5d79: $7a
	cp d                                             ; $5d7a: $ba
	ld a, a                                          ; $5d7b: $7f
	db $dd                                           ; $5d7c: $dd
	sub b                                            ; $5d7d: $90
	cp $f3                                           ; $5d7e: $fe $f3
	rst AddAOntoHL                                          ; $5d80: $ef
	ld bc, $03c1                                     ; $5d81: $01 $c1 $03
	rst $38                                          ; $5d84: $ff
	or $00                                           ; $5d85: $f6 $00
	rlca                                             ; $5d87: $07
	dec de                                           ; $5d88: $1b
	ld [$0138], sp                                   ; $5d89: $08 $38 $01
	inc bc                                           ; $5d8c: $03
	ld [hl], a                                       ; $5d8d: $77
	nop                                              ; $5d8e: $00
	sub [hl]                                         ; $5d8f: $96
	sub l                                            ; $5d90: $95
	dec hl                                           ; $5d91: $2b
	db $fd                                           ; $5d92: $fd
	ld a, [$6018]                                    ; $5d93: $fa $18 $60
	add b                                            ; $5d96: $80
	nop                                              ; $5d97: $00
	cp $de                                           ; $5d98: $fe $de
	rst $38                                          ; $5d9a: $ff
	sbc [hl]                                         ; $5d9b: $9e
	rst SubAFromBC                                          ; $5d9c: $e7

Jump_049_5d9d:
	ld a, d                                          ; $5d9d: $7a
	rst SubAFromHL                                          ; $5d9e: $d7
	sbc l                                            ; $5d9f: $9d
	dec d                                            ; $5da0: $15
	ld a, $7b                                        ; $5da1: $3e $7b
	add [hl]                                         ; $5da3: $86
	sbc h                                            ; $5da4: $9c
	dec b                                            ; $5da5: $05
	inc c                                            ; $5da6: $0c
	dec a                                            ; $5da7: $3d
	ld l, [hl]                                       ; $5da8: $6e
	pop hl                                           ; $5da9: $e1
	sub b                                            ; $5daa: $90
	ld sp, hl                                        ; $5dab: $f9
	di                                               ; $5dac: $f3
	ld d, h                                          ; $5dad: $54
	or d                                             ; $5dae: $b2
	ld [$40b0], sp                                   ; $5daf: $08 $b0 $40
	ret nz                                           ; $5db2: $c0

	add b                                            ; $5db3: $80
	db $10                                           ; $5db4: $10
	rst $38                                          ; $5db5: $ff
	ld hl, sp-$09                                    ; $5db6: $f8 $f7
	rst GetHLinHL                                          ; $5db8: $cf
	cp a                                             ; $5db9: $bf
	ld a, e                                          ; $5dba: $7b
	or b                                             ; $5dbb: $b0
	sub h                                            ; $5dbc: $94
	dec [hl]                                         ; $5dbd: $35
	xor d                                            ; $5dbe: $aa
	dec d                                            ; $5dbf: $15
	ld a, [hl+]                                      ; $5dc0: $2a
	dec d                                            ; $5dc1: $15
	ld a, [bc]                                       ; $5dc2: $0a
	dec d                                            ; $5dc3: $15
	ld a, [bc]                                       ; $5dc4: $0a
	ret nz                                           ; $5dc5: $c0

	nop                                              ; $5dc6: $00
	ldh [$78], a                                     ; $5dc7: $e0 $78
	ld d, b                                          ; $5dc9: $50
	rst SubAFromDE                                          ; $5dca: $df
	ldh [rSVBK], a                                   ; $5dcb: $e0 $70
	add b                                            ; $5dcd: $80
	sbc h                                            ; $5dce: $9c
	xor b                                            ; $5dcf: $a8
	ld d, l                                          ; $5dd0: $55
	xor d                                            ; $5dd1: $aa
	ld [hl], a                                       ; $5dd2: $77
	ld c, a                                          ; $5dd3: $4f
	sbc [hl]                                         ; $5dd4: $9e
	ld [bc], a                                       ; $5dd5: $02
	ld a, e                                          ; $5dd6: $7b
	dec e                                            ; $5dd7: $1d
	sbc d                                            ; $5dd8: $9a
	ld h, b                                          ; $5dd9: $60
	ret nz                                           ; $5dda: $c0

	ret nz                                           ; $5ddb: $c0

	ld d, l                                          ; $5ddc: $55
	rst $38                                          ; $5ddd: $ff
	ld a, b                                          ; $5dde: $78
	ld l, d                                          ; $5ddf: $6a
	sbc e                                            ; $5de0: $9b
	ccf                                              ; $5de1: $3f
	ld a, a                                          ; $5de2: $7f
	rst $38                                          ; $5de3: $ff
	xor d                                            ; $5de4: $aa
	ld l, e                                          ; $5de5: $6b
	scf                                              ; $5de6: $37
	sbc d                                            ; $5de7: $9a
	ld d, l                                          ; $5de8: $55
	ld a, [$5400]                                    ; $5de9: $fa $00 $54
	xor b                                            ; $5dec: $a8
	halt                                             ; $5ded: $76
	push de                                          ; $5dee: $d5
	ld h, a                                          ; $5def: $67
	ldh a, [rPCM34]                                  ; $5df0: $f0 $77
	db $d3                                           ; $5df2: $d3
	ld c, a                                          ; $5df3: $4f
	ldh a, [$df]                                     ; $5df4: $f0 $df
	db $10                                           ; $5df6: $10
	ld e, e                                          ; $5df7: $5b
	ldh a, [$7b]                                     ; $5df8: $f0 $7b
	rst FarCall                                          ; $5dfa: $f7
	ld [hl], e                                       ; $5dfb: $73
	ldh [$7b], a                                     ; $5dfc: $e0 $7b
	ei                                               ; $5dfe: $fb
	rst $38                                          ; $5dff: $ff
	sbc [hl]                                         ; $5e00: $9e
	ld d, c                                          ; $5e01: $51
	ld [hl], e                                       ; $5e02: $73
	ldh a, [$df]                                     ; $5e03: $f0 $df
	inc b                                            ; $5e05: $04
	sbc [hl]                                         ; $5e06: $9e
	xor [hl]                                         ; $5e07: $ae
	ld l, e                                          ; $5e08: $6b
	ldh a, [$9e]                                     ; $5e09: $f0 $9e
	ld d, b                                          ; $5e0b: $50
	ld a, e                                          ; $5e0c: $7b
	dec h                                            ; $5e0d: $25
	ld a, e                                          ; $5e0e: $7b
	ldh [$9d], a                                     ; $5e0f: $e0 $9d
	add hl, bc                                       ; $5e11: $09
	xor a                                            ; $5e12: $af
	ld a, d                                          ; $5e13: $7a
	add $6b                                          ; $5e14: $c6 $6b
	ret nc                                           ; $5e16: $d0

	sbc d                                            ; $5e17: $9a
	ld b, a                                          ; $5e18: $47
	xor d                                            ; $5e19: $aa
	nop                                              ; $5e1a: $00
	ld [$de25], sp                                   ; $5e1b: $08 $25 $de
	rst $38                                          ; $5e1e: $ff
	sbc [hl]                                         ; $5e1f: $9e
	cp b                                             ; $5e20: $b8
	ld e, e                                          ; $5e21: $5b
	ret nz                                           ; $5e22: $c0

	ld [hl], a                                       ; $5e23: $77
	or b                                             ; $5e24: $b0
	ld [hl], e                                       ; $5e25: $73
	ret nc                                           ; $5e26: $d0

	sub d                                            ; $5e27: $92
	rlca                                             ; $5e28: $07
	inc bc                                           ; $5e29: $03
	ld bc, $a2fe                                     ; $5e2a: $01 $fe $a2
	nop                                              ; $5e2d: $00
	add b                                            ; $5e2e: $80
	ld d, d                                          ; $5e2f: $52
	db $fc                                           ; $5e30: $fc
	cp $ff                                           ; $5e31: $fe $ff
	ld bc, $7b08                                     ; $5e33: $01 $08 $7b
	ldh a, [$97]                                     ; $5e36: $f0 $97
	jp z, $a2e5                                      ; $5e38: $ca $e5 $a2

	ld c, l                                          ; $5e3b: $4d
	sub d                                            ; $5e3c: $92
	ld bc, $458a                                     ; $5e3d: $01 $8a $45
	ld a, b                                          ; $5e40: $78
	ld l, e                                          ; $5e41: $6b
	sbc l                                            ; $5e42: $9d
	or b                                             ; $5e43: $b0
	ld a, b                                          ; $5e44: $78
	ld a, c                                          ; $5e45: $79
	ld e, c                                          ; $5e46: $59
	ld a, a                                          ; $5e47: $7f
	ld sp, $f47f                                     ; $5e48: $31 $7f $f4
	sbc [hl]                                         ; $5e4b: $9e
	and d                                            ; $5e4c: $a2
	ld a, e                                          ; $5e4d: $7b
	dec a                                            ; $5e4e: $3d
	ld sp, hl                                        ; $5e4f: $f9
	inc hl                                           ; $5e50: $23
	nop                                              ; $5e51: $00
	rst SubAFromHL                                          ; $5e52: $d7
	ld [hl], a                                       ; $5e53: $77
	pop bc                                           ; $5e54: $c1
	ld b, h                                          ; $5e55: $44
	sub a                                            ; $5e56: $97
	ld b, h                                          ; $5e57: $44
	ld d, l                                          ; $5e58: $55
	dec [hl]                                         ; $5e59: $35
	ld d, l                                          ; $5e5a: $55
	inc sp                                           ; $5e5b: $33
	ld d, l                                          ; $5e5c: $55
	ld d, e                                          ; $5e5d: $53
	ld d, l                                          ; $5e5e: $55
	ld l, e                                          ; $5e5f: $6b
	or $99                                           ; $5e60: $f6 $99
	dec [hl]                                         ; $5e62: $35
	ld d, e                                          ; $5e63: $53
	ld d, l                                          ; $5e64: $55
	inc sp                                           ; $5e65: $33
	inc [hl]                                         ; $5e66: $34
	inc [hl]                                         ; $5e67: $34
	ld h, a                                          ; $5e68: $67
	or $9d                                           ; $5e69: $f6 $9d
	ld [hl], $66                                     ; $5e6b: $36 $66
	ld h, a                                          ; $5e6d: $67
	ldh [c], a                                       ; $5e6e: $e2
	ld d, a                                          ; $5e6f: $57
	or $d0                                           ; $5e70: $f6 $d0
	ld b, h                                          ; $5e72: $44
	ld a, a                                          ; $5e73: $7f
	adc d                                            ; $5e74: $8a
	pop de                                           ; $5e75: $d1
	rst $38                                          ; $5e76: $ff
	sub e                                            ; $5e77: $93
	ret c                                            ; $5e78: $d8

	xor $f7                                          ; $5e79: $ee $f7
	ei                                               ; $5e7b: $fb
	db $fd                                           ; $5e7c: $fd
	cp $ff                                           ; $5e7d: $fe $ff
	rst $38                                          ; $5e7f: $ff
	rst SubAFromBC                                          ; $5e80: $e7
	pop af                                           ; $5e81: $f1
	ld hl, sp-$04                                    ; $5e82: $f8 $fc
	ld a, e                                          ; $5e84: $7b
	ld sp, hl                                        ; $5e85: $f9
	add [hl]                                         ; $5e86: $86
	rst $38                                          ; $5e87: $ff
	ld a, a                                          ; $5e88: $7f
	cpl                                              ; $5e89: $2f
	sub a                                            ; $5e8a: $97
	rst GetHLinHL                                          ; $5e8b: $cf
	push hl                                          ; $5e8c: $e5
	db $f4                                           ; $5e8d: $f4
	dec sp                                           ; $5e8e: $3b
	db $dd                                           ; $5e8f: $dd
	sbc a                                            ; $5e90: $9f
	rst SubAFromDE                                          ; $5e91: $df
	ld l, a                                          ; $5e92: $6f
	inc sp                                           ; $5e93: $33
	dec de                                           ; $5e94: $1b
	add hl, bc                                       ; $5e95: $09
	call nz, $f4e2                                   ; $5e96: $c4 $e2 $f4
	push af                                          ; $5e99: $f5
	ld a, [$fdf9]                                    ; $5e9a: $fa $f9 $fd
	cp $7f                                           ; $5e9d: $fe $7f
	cp a                                             ; $5e9f: $bf
	jp c, $96ff                                      ; $5ea0: $da $ff $96

	ld a, a                                          ; $5ea3: $7f
	rst $38                                          ; $5ea4: $ff
	ld a, a                                          ; $5ea5: $7f
	ld a, a                                          ; $5ea6: $7f
	ccf                                              ; $5ea7: $3f
	ld a, a                                          ; $5ea8: $7f
	rst SubAFromDE                                          ; $5ea9: $df
	cp a                                             ; $5eaa: $bf
	ld l, a                                          ; $5eab: $6f
	db $dd                                           ; $5eac: $dd
	rst $38                                          ; $5ead: $ff
	rst SubAFromDE                                          ; $5eae: $df
	cp a                                             ; $5eaf: $bf
	rst SubAFromDE                                          ; $5eb0: $df
	rst SubAFromDE                                          ; $5eb1: $df
	rst SubAFromDE                                          ; $5eb2: $df
	ld hl, sp-$69                                    ; $5eb3: $f8 $97
	ldh a, [$f4]                                     ; $5eb5: $f0 $f4
	db $fc                                           ; $5eb7: $fc
	db $fc                                           ; $5eb8: $fc
	ld hl, sp-$06                                    ; $5eb9: $f8 $fa
	ldh a, [$f0]                                     ; $5ebb: $f0 $f0
	db $dd                                           ; $5ebd: $dd
	ld hl, sp-$21                                    ; $5ebe: $f8 $df
	db $fc                                           ; $5ec0: $fc
	cp $9a                                           ; $5ec1: $fe $9a
	ld bc, $100a                                     ; $5ec3: $01 $0a $10
	ld a, [bc]                                       ; $5ec6: $0a
	jr nz, @-$05                                     ; $5ec7: $20 $f9

	sbc e                                            ; $5ec9: $9b
	ld [bc], a                                       ; $5eca: $02
	dec d                                            ; $5ecb: $15
	nop                                              ; $5ecc: $00
	db $10                                           ; $5ecd: $10
	push af                                          ; $5ece: $f5
	sbc l                                            ; $5ecf: $9d
	and d                                            ; $5ed0: $a2
	ld bc, $9bf3                                     ; $5ed1: $01 $f3 $9b
	xor d                                            ; $5ed4: $aa
	ld d, l                                          ; $5ed5: $55
	xor d                                            ; $5ed6: $aa
	dec d                                            ; $5ed7: $15
	ld c, e                                          ; $5ed8: $4b
	ldh a, [$9b]                                     ; $5ed9: $f0 $9b
	ld d, l                                          ; $5edb: $55
	xor b                                            ; $5edc: $a8
	sub b                                            ; $5edd: $90
	inc de                                           ; $5ede: $13
	ld hl, sp-$69                                    ; $5edf: $f8 $97
	and b                                            ; $5ee1: $a0
	ld b, b                                          ; $5ee2: $40
	nop                                              ; $5ee3: $00
	nop                                              ; $5ee4: $00
	ret nz                                           ; $5ee5: $c0

	nop                                              ; $5ee6: $00
	jr jr_049_5ef1                                   ; $5ee7: $18 $08

	rst FarCall                                          ; $5ee9: $f7
	sbc c                                            ; $5eea: $99
	ld bc, $0b02                                     ; $5eeb: $01 $02 $0b
	rla                                              ; $5eee: $17
	ld a, $7d                                        ; $5eef: $3e $7d

jr_049_5ef1:
	ld [hl], a                                       ; $5ef1: $77
	rst FarCall                                          ; $5ef2: $f7
	sub c                                            ; $5ef3: $91
	rlca                                             ; $5ef4: $07
	rrca                                             ; $5ef5: $0f
	rra                                              ; $5ef6: $1f
	ccf                                              ; $5ef7: $3f
	add hl, hl                                       ; $5ef8: $29
	ld d, a                                          ; $5ef9: $57
	ld a, a                                          ; $5efa: $7f
	rst $38                                          ; $5efb: $ff
	rst $38                                          ; $5efc: $ff
	ld d, l                                          ; $5efd: $55
	xor [hl]                                         ; $5efe: $ae
	ld e, b                                          ; $5eff: $58
	rra                                              ; $5f00: $1f
	ccf                                              ; $5f01: $3f
	reti                                             ; $5f02: $d9


	rst $38                                          ; $5f03: $ff
	sbc c                                            ; $5f04: $99
	db $fc                                           ; $5f05: $fc
	inc sp                                           ; $5f06: $33
	push hl                                          ; $5f07: $e5
	sub l                                            ; $5f08: $95
	scf                                              ; $5f09: $37
	rra                                              ; $5f0a: $1f
	db $dd                                           ; $5f0b: $dd
	rst $38                                          ; $5f0c: $ff
	add a                                            ; $5f0d: $87
	cp $fb                                           ; $5f0e: $fe $fb
	rst AddAOntoHL                                          ; $5f10: $ef
	rst $38                                          ; $5f11: $ff
	call z, $0717                                    ; $5f12: $cc $17 $07
	ld e, a                                          ; $5f15: $5f
	ld a, [hl]                                       ; $5f16: $7e
	ld sp, hl                                        ; $5f17: $f9
	rst SubAFromBC                                          ; $5f18: $e7
	sbc a                                            ; $5f19: $9f
	rst $38                                          ; $5f1a: $ff
	ld sp, hl                                        ; $5f1b: $f9
	rst $38                                          ; $5f1c: $ff
	cp a                                             ; $5f1d: $bf
	rst $38                                          ; $5f1e: $ff
	cp $f8                                           ; $5f1f: $fe $f8
	ldh [rIE], a                                     ; $5f21: $e0 $ff
	db $fd                                           ; $5f23: $fd
	di                                               ; $5f24: $f3
	sbc a                                            ; $5f25: $9f
	ld a, e                                          ; $5f26: $7b
	and $9a                                          ; $5f27: $e6 $9a
	di                                               ; $5f29: $f3
	rst $38                                          ; $5f2a: $ff
	cp $fc                                           ; $5f2b: $fe $fc
	ldh [$7b], a                                     ; $5f2d: $e0 $7b
	cp l                                             ; $5f2f: $bd
	sbc [hl]                                         ; $5f30: $9e
	rrca                                             ; $5f31: $0f
	ld a, e                                          ; $5f32: $7b
	jp nz, $f99d                                     ; $5f33: $c2 $9d $f9

	rst FarCall                                          ; $5f36: $f7
	ld a, e                                          ; $5f37: $7b
	xor $9b                                          ; $5f38: $ee $9b
	add b                                            ; $5f3a: $80
	nop                                              ; $5f3b: $00
	nop                                              ; $5f3c: $00
	rlca                                             ; $5f3d: $07
	ld [hl], a                                       ; $5f3e: $77
	di                                               ; $5f3f: $f3
	ld a, a                                          ; $5f40: $7f
	call $b76f                                       ; $5f41: $cd $6f $b7
	sbc [hl]                                         ; $5f44: $9e
	rlca                                             ; $5f45: $07
	ld [hl], e                                       ; $5f46: $73
	cp [hl]                                          ; $5f47: $be
	inc bc                                           ; $5f48: $03
	rst $38                                          ; $5f49: $ff
	jp c, $9dff                                      ; $5f4a: $da $ff $9d

	ld [$d955], a                                    ; $5f4d: $ea $55 $d9
	rst $38                                          ; $5f50: $ff
	ld [hl], d                                       ; $5f51: $72
	or c                                             ; $5f52: $b1
	sbc h                                            ; $5f53: $9c
	ld e, a                                          ; $5f54: $5f
	xor d                                            ; $5f55: $aa
	ld d, h                                          ; $5f56: $54
	ld l, d                                          ; $5f57: $6a
	or c                                             ; $5f58: $b1
	add c                                            ; $5f59: $81
	rst $38                                          ; $5f5a: $ff
	rst SubAFromDE                                          ; $5f5b: $df
	ld l, a                                          ; $5f5c: $6f
	or a                                             ; $5f5d: $b7
	sbc e                                            ; $5f5e: $9b
	ret                                              ; $5f5f: $c9


	ld l, l                                          ; $5f60: $6d
	sbc e                                            ; $5f61: $9b
	ld d, l                                          ; $5f62: $55
	ccf                                              ; $5f63: $3f
	sbc a                                            ; $5f64: $9f
	ld c, a                                          ; $5f65: $4f
	ld h, a                                          ; $5f66: $67
	inc sp                                           ; $5f67: $33
	sub b                                            ; $5f68: $90
	ret nz                                           ; $5f69: $c0

	ldh [rAUD2ENV], a                                ; $5f6a: $e0 $17
	or a                                             ; $5f6c: $b7
	ei                                               ; $5f6d: $fb
	ldh a, [rIE]                                     ; $5f6e: $f0 $ff
	rst FarCall                                          ; $5f70: $f7
	ld a, [$eff5]                                    ; $5f71: $fa $f5 $ef
	rst GetHLinHL                                          ; $5f74: $cf
	rst JumpTable                                          ; $5f75: $c7
	rst AddAOntoHL                                          ; $5f76: $ef
	rst $38                                          ; $5f77: $ff
	cp $97                                           ; $5f78: $fe $97
	ld a, [$f8fd]                                    ; $5f7a: $fa $fd $f8
	nop                                              ; $5f7d: $00
	cp $ff                                           ; $5f7e: $fe $ff
	xor d                                            ; $5f80: $aa
	ld d, l                                          ; $5f81: $55
	ld [hl], e                                       ; $5f82: $73
	jp nc, Jump_049_7bfd                             ; $5f83: $d2 $fd $7b

	ei                                               ; $5f86: $fb
	sbc [hl]                                         ; $5f87: $9e
	ld h, e                                          ; $5f88: $63
	ld a, e                                          ; $5f89: $7b
	ldh a, [$7b]                                     ; $5f8a: $f0 $7b
	rst FarCall                                          ; $5f8c: $f7
	ld l, e                                          ; $5f8d: $6b
	ldh a, [$7e]                                     ; $5f8e: $f0 $7e
	rst GetHLinHL                                          ; $5f90: $cf
	sbc [hl]                                         ; $5f91: $9e
	add b                                            ; $5f92: $80
	ld d, e                                          ; $5f93: $53
	ldh a, [$9b]                                     ; $5f94: $f0 $9b
	nop                                              ; $5f96: $00
	sbc b                                            ; $5f97: $98
	nop                                              ; $5f98: $00
	ret nz                                           ; $5f99: $c0

	ld a, e                                          ; $5f9a: $7b
	ld d, d                                          ; $5f9b: $52
	ld e, a                                          ; $5f9c: $5f
	ldh a, [$9e]                                     ; $5f9d: $f0 $9e
	rlca                                             ; $5f9f: $07
	ld a, d                                          ; $5fa0: $7a
	db $ed                                           ; $5fa1: $ed
	ld a, d                                          ; $5fa2: $7a
	xor d                                            ; $5fa3: $aa
	ld h, e                                          ; $5fa4: $63
	ldh a, [$7b]                                     ; $5fa5: $f0 $7b
	cp $5b                                           ; $5fa7: $fe $5b
	ret nc                                           ; $5fa9: $d0

	sub [hl]                                         ; $5faa: $96
	cp $00                                           ; $5fab: $fe $00
	add $0f                                          ; $5fad: $c6 $0f
	rst $38                                          ; $5faf: $ff
	xor e                                            ; $5fb0: $ab
	ld d, a                                          ; $5fb1: $57
	nop                                              ; $5fb2: $00
	ld bc, $f06f                                     ; $5fb3: $01 $6f $f0
	sbc h                                            ; $5fb6: $9c
	ld l, d                                          ; $5fb7: $6a
	push de                                          ; $5fb8: $d5
	ret z                                            ; $5fb9: $c8

	sbc $ff                                          ; $5fba: $de $ff
	sbc d                                            ; $5fbc: $9a
	xor d                                            ; $5fbd: $aa
	ld e, a                                          ; $5fbe: $5f
	rst $38                                          ; $5fbf: $ff
	rst $38                                          ; $5fc0: $ff
	scf                                              ; $5fc1: $37
	ld [hl], a                                       ; $5fc2: $77
	ldh a, [hDisp1_SCX]                                     ; $5fc3: $f0 $91
	ld e, $a1                                        ; $5fc5: $1e $a1
	ld d, l                                          ; $5fc7: $55
	ld h, a                                          ; $5fc8: $67
	cp $fd                                           ; $5fc9: $fe $fd
	db $fd                                           ; $5fcb: $fd
	cp d                                             ; $5fcc: $ba
	ld e, l                                          ; $5fcd: $5d
	cp $eb                                           ; $5fce: $fe $eb
	sbc a                                            ; $5fd0: $9f
	rst $38                                          ; $5fd1: $ff
	cp $fe                                           ; $5fd2: $fe $fe
	adc e                                            ; $5fd4: $8b
	ld a, h                                          ; $5fd5: $7c
	rst SubAFromBC                                          ; $5fd6: $e7
	sbc a                                            ; $5fd7: $9f
	ld a, a                                          ; $5fd8: $7f
	rst $38                                          ; $5fd9: $ff
	ei                                               ; $5fda: $fb
	rst SubAFromBC                                          ; $5fdb: $e7
	add d                                            ; $5fdc: $82
	rst $38                                          ; $5fdd: $ff
	ld hl, sp-$20                                    ; $5fde: $f8 $e0
	add b                                            ; $5fe0: $80
	nop                                              ; $5fe1: $00
	rlca                                             ; $5fe2: $07
	rra                                              ; $5fe3: $1f
	ld a, a                                          ; $5fe4: $7f
	rst $38                                          ; $5fe5: $ff
	cp $f9                                           ; $5fe6: $fe $f9
	rst GetHLinHL                                          ; $5fe8: $cf
	ld a, d                                          ; $5fe9: $7a
	xor $9e                                          ; $5fea: $ee $9e
	xor d                                            ; $5fec: $aa
	ld a, d                                          ; $5fed: $7a
	sub d                                            ; $5fee: $92
	ld [hl], d                                       ; $5fef: $72
	rst SubAFromBC                                          ; $5ff0: $e7
	sbc [hl]                                         ; $5ff1: $9e
	rst GetHLinHL                                          ; $5ff2: $cf
	ld a, d                                          ; $5ff3: $7a
	call c, $bf77                                    ; $5ff4: $dc $77 $bf
	ld h, d                                          ; $5ff7: $62
	sub c                                            ; $5ff8: $91
	call c, Call_049_7eff                            ; $5ff9: $dc $ff $7e
	ld c, e                                          ; $5ffc: $4b
	call nc, $9eff                                   ; $5ffd: $d4 $ff $9e
	cp $4b                                           ; $6000: $fe $4b
	ldh a, [$7a]                                     ; $6002: $f0 $7a
	dec hl                                           ; $6004: $2b
	ld h, e                                          ; $6005: $63
	push hl                                          ; $6006: $e5
	ld a, l                                          ; $6007: $7d
	or b                                             ; $6008: $b0
	sbc d                                            ; $6009: $9a
	push af                                          ; $600a: $f5
	and d                                            ; $600b: $a2
	ld d, l                                          ; $600c: $55
	and [hl]                                         ; $600d: $a6
	inc b                                            ; $600e: $04
	call c, $deff                                    ; $600f: $dc $ff $de
	ei                                               ; $6012: $fb
	sbc b                                            ; $6013: $98
	xor d                                            ; $6014: $aa
	ld d, b                                          ; $6015: $50
	xor b                                            ; $6016: $a8
	ld d, b                                          ; $6017: $50
	and b                                            ; $6018: $a0
	ld d, b                                          ; $6019: $50
	xor d                                            ; $601a: $aa
	ld [hl], a                                       ; $601b: $77
	ld d, d                                          ; $601c: $52
	call c, Call_049_7fff                            ; $601d: $dc $ff $7f
	adc h                                            ; $6020: $8c
	adc b                                            ; $6021: $88
	ld e, $38                                        ; $6022: $1e $38
	ld a, b                                          ; $6024: $78
	and b                                            ; $6025: $a0
	add b                                            ; $6026: $80
	add b                                            ; $6027: $80
	rst $38                                          ; $6028: $ff
	ld hl, sp-$1f                                    ; $6029: $f8 $e1
	rst JumpTable                                          ; $602b: $c7
	add a                                            ; $602c: $87
	ld e, a                                          ; $602d: $5f
	ld a, a                                          ; $602e: $7f
	ld a, a                                          ; $602f: $7f
	ldh a, [$bf]                                     ; $6030: $f0 $bf
	push de                                          ; $6032: $d5
	ld [$82fd], a                                    ; $6033: $ea $fd $82
	push bc                                          ; $6036: $c5
	nop                                              ; $6037: $00
	ldh a, [$dd]                                     ; $6038: $f0 $dd
	rst $38                                          ; $603a: $ff
	sbc [hl]                                         ; $603b: $9e
	rst JumpTable                                          ; $603c: $c7
	ld a, e                                          ; $603d: $7b
	ldh [$7f], a                                     ; $603e: $e0 $7f
	or h                                             ; $6040: $b4
	ld a, l                                          ; $6041: $7d
	db $ed                                           ; $6042: $ed
	ld a, a                                          ; $6043: $7f
	cp $9d                                           ; $6044: $fe $9d
	ld a, a                                          ; $6046: $7f
	ld c, h                                          ; $6047: $4c
	db $db                                           ; $6048: $db
	rst $38                                          ; $6049: $ff
	ld a, a                                          ; $604a: $7f
	ld e, h                                          ; $604b: $5c
	sbc [hl]                                         ; $604c: $9e
	xor d                                            ; $604d: $aa
	ld a, c                                          ; $604e: $79
	rst SubAFromDE                                          ; $604f: $df
	ld a, e                                          ; $6050: $7b
	inc de                                           ; $6051: $13
	sbc [hl]                                         ; $6052: $9e
	db $10                                           ; $6053: $10
	ld l, e                                          ; $6054: $6b
	pop bc                                           ; $6055: $c1
	ld a, a                                          ; $6056: $7f
	ldh a, [rIE]                                     ; $6057: $f0 $ff
	ld a, l                                          ; $6059: $7d
	ldh [$9e], a                                     ; $605a: $e0 $9e
	dec hl                                           ; $605c: $2b
	ld a, d                                          ; $605d: $7a
	db $fc                                           ; $605e: $fc
	rst SubAFromDE                                          ; $605f: $df
	rst $38                                          ; $6060: $ff
	sbc h                                            ; $6061: $9c
	db $f4                                           ; $6062: $f4
	add sp, -$2c                                     ; $6063: $e8 $d4
	ld [hl], e                                       ; $6065: $73
	ldh a, [$9c]                                     ; $6066: $f0 $9c
	pop de                                           ; $6068: $d1
	and b                                            ; $6069: $a0
	ld b, b                                          ; $606a: $40
	ld [hl], e                                       ; $606b: $73
	ldh a, [$9c]                                     ; $606c: $f0 $9c
	cpl                                              ; $606e: $2f
	ld e, a                                          ; $606f: $5f
	cp a                                             ; $6070: $bf
	ld a, e                                          ; $6071: $7b
	ldh a, [$9b]                                     ; $6072: $f0 $9b
	dec d                                            ; $6074: $15
	ld a, [bc]                                       ; $6075: $0a
	ldh a, [rTIMA]                                   ; $6076: $f0 $05
	halt                                             ; $6078: $76
	call c, $ffde                                    ; $6079: $dc $de $ff
	ld a, [hl]                                       ; $607c: $7e
	inc e                                            ; $607d: $1c
	ld l, l                                          ; $607e: $6d
	ld a, a                                          ; $607f: $7f
	sbc [hl]                                         ; $6080: $9e
	ld l, d                                          ; $6081: $6a
	ld a, d                                          ; $6082: $7a
	jp c, $c063                                      ; $6083: $da $63 $c0

	ld a, c                                          ; $6086: $79
	ld a, a                                          ; $6087: $7f
	ld a, a                                          ; $6088: $7f
	call z, Call_049_6f67                            ; $6089: $cc $67 $6f
	ld l, e                                          ; $608c: $6b
	ldh a, [$6e]                                     ; $608d: $f0 $6e
	or c                                             ; $608f: $b1
	ld [hl], a                                       ; $6090: $77
	ld [hl], $96                                     ; $6091: $36 $96
	nop                                              ; $6093: $00
	and a                                            ; $6094: $a7
	ld d, l                                          ; $6095: $55
	xor e                                            ; $6096: $ab
	ld e, a                                          ; $6097: $5f
	and c                                            ; $6098: $a1
	ld b, c                                          ; $6099: $41
	ld bc, $dd13                                     ; $609a: $01 $13 $dd
	rst $38                                          ; $609d: $ff
	sbc e                                            ; $609e: $9b
	pop af                                           ; $609f: $f1
	rst $38                                          ; $60a0: $ff
	cp a                                             ; $60a1: $bf
	ld d, h                                          ; $60a2: $54
	call c, $9cff                                    ; $60a3: $dc $ff $9c
	dec d                                            ; $60a6: $15
	ld [bc], a                                       ; $60a7: $02
	xor e                                            ; $60a8: $ab
	jp c, $9dff                                      ; $60a9: $da $ff $9d

	dec b                                            ; $60ac: $05
	ld [bc], a                                       ; $60ad: $02
	ei                                               ; $60ae: $fb
	ld e, [hl]                                       ; $60af: $5e
	and $9e                                          ; $60b0: $e6 $9e
	ld d, l                                          ; $60b2: $55
	ld [hl], e                                       ; $60b3: $73
	xor $5b                                          ; $60b4: $ee $5b
	ldh a, [$9e]                                     ; $60b6: $f0 $9e
	xor e                                            ; $60b8: $ab
	ld [hl], a                                       ; $60b9: $77
	xor $72                                          ; $60ba: $ee $72
	db $f4                                           ; $60bc: $f4
	ld l, a                                          ; $60bd: $6f
	ldh a, [$9d]                                     ; $60be: $f0 $9d
	ld [$78d5], a                                    ; $60c0: $ea $d5 $78
	db $fd                                           ; $60c3: $fd
	db $dd                                           ; $60c4: $dd
	rst $38                                          ; $60c5: $ff
	halt                                             ; $60c6: $76
	xor h                                            ; $60c7: $ac
	ld [hl], e                                       ; $60c8: $73
	sub d                                            ; $60c9: $92
	ld a, e                                          ; $60ca: $7b
	sub b                                            ; $60cb: $90
	ld e, e                                          ; $60cc: $5b
	ret nc                                           ; $60cd: $d0

	ld d, e                                          ; $60ce: $53
	ldh a, [$9d]                                     ; $60cf: $f0 $9d
	inc b                                            ; $60d1: $04
	dec bc                                           ; $60d2: $0b
	sbc $52                                          ; $60d3: $de $52
	sub a                                            ; $60d5: $97
	sub [hl]                                         ; $60d6: $96
	ret nc                                           ; $60d7: $d0

	sbc e                                            ; $60d8: $9b
	ei                                               ; $60d9: $fb
	db $f4                                           ; $60da: $f4
	ldh [$e7], a                                     ; $60db: $e0 $e7
	rst SubAFromBC                                          ; $60dd: $e7
	sbc $e0                                          ; $60de: $de $e0
	ld a, e                                          ; $60e0: $7b
	ld [hl], $9b                                     ; $60e1: $36 $9b
	xor c                                            ; $60e3: $a9
	rst FarCall                                          ; $60e4: $f7
	ld h, a                                          ; $60e5: $67
	ret c                                            ; $60e6: $d8

	ld [hl], a                                       ; $60e7: $77
	ld d, [hl]                                       ; $60e8: $56
	sbc [hl]                                         ; $60e9: $9e
	ld d, [hl]                                       ; $60ea: $56
	ld a, c                                          ; $60eb: $79
	and $9e                                          ; $60ec: $e6 $9e
	nop                                              ; $60ee: $00
	ld a, d                                          ; $60ef: $7a
	ld c, d                                          ; $60f0: $4a
	sbc $80                                          ; $60f1: $de $80
	sbc d                                            ; $60f3: $9a
	ld bc, $7f03                                     ; $60f4: $01 $03 $7f
	cp a                                             ; $60f7: $bf
	ccf                                              ; $60f8: $3f
	sbc $bf                                          ; $60f9: $de $bf
	sbc l                                            ; $60fb: $9d
	ld a, $3c                                        ; $60fc: $3e $3c
	db $dd                                           ; $60fe: $dd
	cpl                                              ; $60ff: $2f
	db $dd                                           ; $6100: $dd
	cp a                                             ; $6101: $bf
	db $dd                                           ; $6102: $dd
	ldh a, [$dd]                                     ; $6103: $f0 $dd
	ld h, b                                          ; $6105: $60
	jp c, $9eff                                      ; $6106: $da $ff $9e

	rst FarCall                                          ; $6109: $f7
	ld a, [$0c9c]                                    ; $610a: $fa $9c $0c
	ldh a, [$f0]                                     ; $610d: $f0 $f0
	db $db                                           ; $610f: $db
	rst FarCall                                          ; $6110: $f7
	ld a, c                                          ; $6111: $79
	cp d                                             ; $6112: $ba
	ld a, [$f791]                                    ; $6113: $fa $91 $f7
	rst SubAFromHL                                          ; $6116: $d7
	rst FarCall                                          ; $6117: $f7
	rst FarCall                                          ; $6118: $f7
	rst SubAFromHL                                          ; $6119: $d7
	sub a                                            ; $611a: $97
	nop                                              ; $611b: $00
	rst $38                                          ; $611c: $ff
	ld [$0828], sp                                   ; $611d: $08 $28 $08
	ld [$6828], sp                                   ; $6120: $08 $28 $68
	ld l, a                                          ; $6123: $6f
	ld d, [hl]                                       ; $6124: $56
	sbc l                                            ; $6125: $9d
	sbc l                                            ; $6126: $9d
	add hl, bc                                       ; $6127: $09
	ld [hl], l                                       ; $6128: $75
	ld l, b                                          ; $6129: $68
	rst $38                                          ; $612a: $ff
	sbc l                                            ; $612b: $9d
	ld h, d                                          ; $612c: $62
	or $75                                           ; $612d: $f6 $75
	ld c, [hl]                                       ; $612f: $4e
	ld a, a                                          ; $6130: $7f
	ld c, b                                          ; $6131: $48
	sbc h                                            ; $6132: $9c
	rrca                                             ; $6133: $0f
	inc b                                            ; $6134: $04
	nop                                              ; $6135: $00
	ld a, e                                          ; $6136: $7b
	ld d, $7d                                        ; $6137: $16 $7d
	adc e                                            ; $6139: $8b
	sub c                                            ; $613a: $91
	ldh a, [$fb]                                     ; $613b: $f0 $fb
	ccf                                              ; $613d: $3f
	rra                                              ; $613e: $1f
	sbc a                                            ; $613f: $9f
	rra                                              ; $6140: $1f
	sbc a                                            ; $6141: $9f
	rst SubAFromDE                                          ; $6142: $df
	rst SubAFromDE                                          ; $6143: $df
	ld e, a                                          ; $6144: $5f
	nop                                              ; $6145: $00
	ret nz                                           ; $6146: $c0

	ld b, b                                          ; $6147: $40
	ret nz                                           ; $6148: $c0

	ld a, d                                          ; $6149: $7a
	halt                                             ; $614a: $76
	sbc h                                            ; $614b: $9c
	add b                                            ; $614c: $80
	ld d, l                                          ; $614d: $55
	ld [$e17b], a                                    ; $614e: $ea $7b $e1
	ld a, h                                          ; $6151: $7c
	sbc b                                            ; $6152: $98
	sbc [hl]                                         ; $6153: $9e
	ld a, [$7ffa]                                    ; $6154: $fa $fa $7f
	ret c                                            ; $6157: $d8

	sbc b                                            ; $6158: $98
	add b                                            ; $6159: $80
	ld b, b                                          ; $615a: $40
	and b                                            ; $615b: $a0
	ld d, b                                          ; $615c: $50
	xor b                                            ; $615d: $a8
	db $10                                           ; $615e: $10
	dec hl                                           ; $615f: $2b
	ld a, c                                          ; $6160: $79
	ld e, a                                          ; $6161: $5f
	db $fd                                           ; $6162: $fd
	sbc [hl]                                         ; $6163: $9e
	rlca                                             ; $6164: $07
	jp c, $9b01                                      ; $6165: $da $01 $9b

	rrca                                             ; $6168: $0f
	ld d, a                                          ; $6169: $57
	dec hl                                           ; $616a: $2b
	dec d                                            ; $616b: $15
	ld a, e                                          ; $616c: $7b
	cp $9d                                           ; $616d: $fe $9d
	dec b                                            ; $616f: $05
	rrca                                             ; $6170: $0f
	db $fd                                           ; $6171: $fd
	sbc e                                            ; $6172: $9b
	ld c, $0f                                        ; $6173: $0e $0f
	and c                                            ; $6175: $a1
	dec e                                            ; $6176: $1d
	ld [hl], d                                       ; $6177: $72
	or c                                             ; $6178: $b1
	sbc e                                            ; $6179: $9b
	ldh a, [rAUD3HIGH]                               ; $617a: $f0 $1e
	ld [bc], a                                       ; $617c: $02
	dec d                                            ; $617d: $15
	cp $9d                                           ; $617e: $fe $9d
	ld a, b                                          ; $6180: $78
	add b                                            ; $6181: $80
	db $db                                           ; $6182: $db
	rst $38                                          ; $6183: $ff
	sbc e                                            ; $6184: $9b
	add a                                            ; $6185: $87
	ld a, [hl]                                       ; $6186: $7e
	ld a, a                                          ; $6187: $7f
	ld a, a                                          ; $6188: $7f
	ld a, d                                          ; $6189: $7a
	ld [hl], h                                       ; $618a: $74
	ld a, e                                          ; $618b: $7b
	xor d                                            ; $618c: $aa
	sbc [hl]                                         ; $618d: $9e
	sub b                                            ; $618e: $90
	ld l, a                                          ; $618f: $6f
	nop                                              ; $6190: $00
	sub h                                            ; $6191: $94
	ld a, a                                          ; $6192: $7f
	ld l, a                                          ; $6193: $6f
	ld [$aa55], a                                    ; $6194: $ea $55 $aa
	ld bc, $0300                                     ; $6197: $01 $00 $03
	rlca                                             ; $619a: $07
	rlca                                             ; $619b: $07
	daa                                              ; $619c: $27
	jp c, $7dff                                      ; $619d: $da $ff $7d

	ld c, e                                          ; $61a0: $4b
	ld a, [hl]                                       ; $61a1: $7e
	db $e4                                           ; $61a2: $e4
	sbc d                                            ; $61a3: $9a
	ld b, b                                          ; $61a4: $40
	jp $e0e3                                         ; $61a5: $c3 $e3 $e0


	ldh [rPCM34], a                                  ; $61a8: $e0 $77
	db $f4                                           ; $61aa: $f4
	rst SubAFromDE                                          ; $61ab: $df
	db $fc                                           ; $61ac: $fc
	sbc [hl]                                         ; $61ad: $9e
	rst $38                                          ; $61ae: $ff
	ld a, e                                          ; $61af: $7b
	ld hl, sp+$7d                                    ; $61b0: $f8 $7d
	dec d                                            ; $61b2: $15
	rst SubAFromDE                                          ; $61b3: $df
	ld a, a                                          ; $61b4: $7f
	ld l, [hl]                                       ; $61b5: $6e
	ld hl, $ffde                                     ; $61b6: $21 $de $ff
	sbc [hl]                                         ; $61b9: $9e
	dec de                                           ; $61ba: $1b
	halt                                             ; $61bb: $76
	inc a                                            ; $61bc: $3c
	sbc e                                            ; $61bd: $9b
	db $fd                                           ; $61be: $fd
	di                                               ; $61bf: $f3
	rst $38                                          ; $61c0: $ff
	ret nz                                           ; $61c1: $c0

	ld [hl], c                                       ; $61c2: $71

jr_049_61c3:
	sub c                                            ; $61c3: $91
	sbc [hl]                                         ; $61c4: $9e
	ld sp, hl                                        ; $61c5: $f9
	ld a, e                                          ; $61c6: $7b
	ldh [$98], a                                     ; $61c7: $e0 $98
	push af                                          ; $61c9: $f5
	ld [$ff54], a                                    ; $61ca: $ea $54 $ff
	ld [hl], a                                       ; $61cd: $77
	add sp, $57                                      ; $61ce: $e8 $57
	reti                                             ; $61d0: $d9


	rst $38                                          ; $61d1: $ff
	ld a, b                                          ; $61d2: $78
	or [hl]                                          ; $61d3: $b6
	ld a, [hl]                                       ; $61d4: $7e
	db $d3                                           ; $61d5: $d3
	sbc h                                            ; $61d6: $9c
	rst SubAFromDE                                          ; $61d7: $df
	jr z, @+$31                                      ; $61d8: $28 $2f

	halt                                             ; $61da: $76
	ld [hl], c                                       ; $61db: $71
	sbc c                                            ; $61dc: $99
	db $fc                                           ; $61dd: $fc
	ldh [$df], a                                     ; $61de: $e0 $df
	rst SubAFromDE                                          ; $61e0: $df
	rrca                                             ; $61e1: $0f
	inc de                                           ; $61e2: $13
	halt                                             ; $61e3: $76
	ld a, d                                          ; $61e4: $7a
	sbc d                                            ; $61e5: $9a
	ld d, e                                          ; $61e6: $53
	rst $38                                          ; $61e7: $ff
	ldh a, [$ec]                                     ; $61e8: $f0 $ec
	ret nz                                           ; $61ea: $c0

	ld l, [hl]                                       ; $61eb: $6e
	ld c, d                                          ; $61ec: $4a
	sub c                                            ; $61ed: $91
	xor l                                            ; $61ee: $ad
	sub d                                            ; $61ef: $92
	ld a, [$f7fc]                                    ; $61f0: $fa $fc $f7
	ld e, b                                          ; $61f3: $58
	sbc $20                                          ; $61f4: $de $20
	ld a, [hl]                                       ; $61f6: $7e
	ld a, a                                          ; $61f7: $7f
	daa                                              ; $61f8: $27
	ccf                                              ; $61f9: $3f
	jr c, jr_049_61c3                                ; $61fa: $38 $c7

	ld a, c                                          ; $61fc: $79
	ld a, [hl]                                       ; $61fd: $7e
	sub e                                            ; $61fe: $93
	or a                                             ; $61ff: $b7
	ld c, a                                          ; $6200: $4f
	sub e                                            ; $6201: $93
	ld a, a                                          ; $6202: $7f
	ld l, l                                          ; $6203: $6d
	rst $38                                          ; $6204: $ff
	jr jr_049_6237                                   ; $6205: $18 $30

	ld l, b                                          ; $6207: $68
	ldh a, [$6c]                                     ; $6208: $f0 $6c
	or b                                             ; $620a: $b0
	ld a, d                                          ; $620b: $7a
	or a                                             ; $620c: $b7
	call c, $9ef7                                    ; $620d: $dc $f7 $9e
	ld [hl], h                                       ; $6210: $74
	ld [hl], h                                       ; $6211: $74
	push bc                                          ; $6212: $c5
	ld [hl], e                                       ; $6213: $73
	ret nc                                           ; $6214: $d0

	add d                                            ; $6215: $82
	sub a                                            ; $6216: $97
	rla                                              ; $6217: $17
	ld d, [hl]                                       ; $6218: $56
	or a                                             ; $6219: $b7
	ld d, a                                          ; $621a: $57
	or b                                             ; $621b: $b0
	ld a, e                                          ; $621c: $7b
	rst $38                                          ; $621d: $ff
	ld l, b                                          ; $621e: $68
	add sp, -$57                                     ; $621f: $e8 $a9
	ld c, b                                          ; $6221: $48
	xor b                                            ; $6222: $a8
	ld b, c                                          ; $6223: $41
	sbc a                                            ; $6224: $9f
	rra                                              ; $6225: $1f
	ld bc, $57af                                     ; $6226: $01 $af $57
	or a                                             ; $6229: $b7
	rst SubAFromDE                                          ; $622a: $df
	nop                                              ; $622b: $00
	di                                               ; $622c: $f3
	rst $38                                          ; $622d: $ff
	cp $50                                           ; $622e: $fe $50
	xor b                                            ; $6230: $a8
	ld c, b                                          ; $6231: $48
	jr nz, jr_049_62ab                               ; $6232: $20 $77

	ld [hl], e                                       ; $6234: $73
	adc [hl]                                         ; $6235: $8e
	ld b, l                                          ; $6236: $45

jr_049_6237:
	dec hl                                           ; $6237: $2b
	ld d, a                                          ; $6238: $57
	ld a, [hl+]                                      ; $6239: $2a
	dec l                                            ; $623a: $2d
	ld c, l                                          ; $623b: $4d
	rst AddAOntoHL                                          ; $623c: $ef
	rst $38                                          ; $623d: $ff
	cp d                                             ; $623e: $ba
	call nc, $d0a8                                   ; $623f: $d4 $a8 $d0
	add b                                            ; $6242: $80
	rst GetHLinHL                                          ; $6243: $cf
	rst GetHLinHL                                          ; $6244: $cf
	sbc a                                            ; $6245: $9f
	ld e, a                                          ; $6246: $5f
	ld a, e                                          ; $6247: $7b
	cp $9d                                           ; $6248: $fe $9d
	nop                                              ; $624a: $00
	rst SubAFromHL                                          ; $624b: $d7
	ld [hl], d                                       ; $624c: $72
	and d                                            ; $624d: $a2
	rst $38                                          ; $624e: $ff
	ld a, a                                          ; $624f: $7f
	add h                                            ; $6250: $84
	rst SubAFromDE                                          ; $6251: $df
	db $fc                                           ; $6252: $fc
	ld [hl], l                                       ; $6253: $75
	ld [$fb9d], a                                    ; $6254: $ea $9d $fb
	cp e                                             ; $6257: $bb
	ei                                               ; $6258: $fb
	add b                                            ; $6259: $80
	ld hl, sp-$48                                    ; $625a: $f8 $b8
	scf                                              ; $625c: $37
	ccf                                              ; $625d: $3f
	ld a, h                                          ; $625e: $7c
	db $ed                                           ; $625f: $ed
	rst AddAOntoHL                                          ; $6260: $ef
	cp $30                                           ; $6261: $fe $30
	ld hl, $0e0f                                     ; $6263: $21 $0f $0e
	inc c                                            ; $6266: $0c
	ld e, $1f                                        ; $6267: $1e $1f
	add hl, de                                       ; $6269: $19
	ld a, a                                          ; $626a: $7f
	ld [hl], a                                       ; $626b: $77
	sbc [hl]                                         ; $626c: $9e
	db $db                                           ; $626d: $db
	ret                                              ; $626e: $c9


	ret nz                                           ; $626f: $c0

	ld a, e                                          ; $6270: $7b
	add d                                            ; $6271: $82
	sub $fe                                          ; $6272: $d6 $fe
	sbc a                                            ; $6274: $9f
	rst SubAFromDE                                          ; $6275: $df
	db $d3                                           ; $6276: $d3
	reti                                             ; $6277: $d9


	rst $38                                          ; $6278: $ff
	add h                                            ; $6279: $84
	ld c, $de                                        ; $627a: $0e $de
	cp $e0                                           ; $627c: $fe $e0
	nop                                              ; $627e: $00
	add b                                            ; $627f: $80
	jp nz, $9afe                                     ; $6280: $c2 $fe $9a

	ld c, h                                          ; $6283: $4c
	add h                                            ; $6284: $84
	inc bc                                           ; $6285: $03
	add e                                            ; $6286: $83
	add e                                            ; $6287: $83
	rst SubAFromBC                                          ; $6288: $e7
	rst $38                                          ; $6289: $ff
	rra                                              ; $628a: $1f
	rrca                                             ; $628b: $0f
	daa                                              ; $628c: $27
	cp a                                             ; $628d: $bf
	rst $38                                          ; $628e: $ff
	cp a                                             ; $628f: $bf
	cp $bc                                           ; $6290: $fe $bc
	ld hl, sp+$38                                    ; $6292: $f8 $38
	ld a, b                                          ; $6294: $78
	sbc $7f                                          ; $6295: $de $7f
	rst SubAFromDE                                          ; $6297: $df
	ld a, [hl]                                       ; $6298: $7e
	sbc h                                            ; $6299: $9c
	ld a, l                                          ; $629a: $7d
	ld hl, sp-$08                                    ; $629b: $f8 $f8
	ld a, b                                          ; $629d: $78
	ld l, $7f                                        ; $629e: $2e $7f
	ld l, d                                          ; $62a0: $6a
	ld a, a                                          ; $62a1: $7f
	sbc a                                            ; $62a2: $9f
	sbc e                                            ; $62a3: $9b
	nop                                              ; $62a4: $00
	push de                                          ; $62a5: $d5
	ld [$7b83], a                                    ; $62a6: $ea $83 $7b
	ld h, d                                          ; $62a9: $62
	ld a, [hl]                                       ; $62aa: $7e

jr_049_62ab:
	jp nz, $07df                                     ; $62ab: $c2 $df $07

	sub [hl]                                         ; $62ae: $96
	scf                                              ; $62af: $37
	rlca                                             ; $62b0: $07
	rst AddAOntoHL                                          ; $62b1: $ef
	rst $38                                          ; $62b2: $ff
	ld a, a                                          ; $62b3: $7f
	dec sp                                           ; $62b4: $3b
	ld a, a                                          ; $62b5: $7f
	rst $38                                          ; $62b6: $ff
	rst GetHLinHL                                          ; $62b7: $cf
	ld [hl], a                                       ; $62b8: $77
	ld hl, sp-$70                                    ; $62b9: $f8 $90
	ei                                               ; $62bb: $fb
	ret nz                                           ; $62bc: $c0

	sbc d                                            ; $62bd: $9a
	rra                                              ; $62be: $1f
	adc [hl]                                         ; $62bf: $8e
	ld b, h                                          ; $62c0: $44
	add b                                            ; $62c1: $80
	pop bc                                           ; $62c2: $c1
	cp a                                             ; $62c3: $bf
	ret nc                                           ; $62c4: $d0

	and b                                            ; $62c5: $a0
	ret nz                                           ; $62c6: $c0

	ldh [$d1], a                                     ; $62c7: $e0 $d1
	ld [$b975], a                                    ; $62c9: $ea $75 $b9
	cp $9a                                           ; $62cc: $fe $9a
	ld d, b                                          ; $62ce: $50
	db $e3                                           ; $62cf: $e3
	rst $38                                          ; $62d0: $ff
	dec b                                            ; $62d1: $05
	ld a, [bc]                                       ; $62d2: $0a
	ld a, c                                          ; $62d3: $79
	adc d                                            ; $62d4: $8a
	sbc h                                            ; $62d5: $9c
	xor a                                            ; $62d6: $af
	rst $38                                          ; $62d7: $ff

jr_049_62d8:
	rst $38                                          ; $62d8: $ff
	sbc $08                                          ; $62d9: $de $08
	rst SubAFromDE                                          ; $62db: $df
	add hl, bc                                       ; $62dc: $09
	sbc c                                            ; $62dd: $99
	jr jr_049_62d8                                   ; $62de: $18 $f8

	ld sp, hl                                        ; $62e0: $f9
	ld e, [hl]                                       ; $62e1: $5e
	cp [hl]                                          ; $62e2: $be
	ld e, l                                          ; $62e3: $5d
	ld [hl], c                                       ; $62e4: $71
	dec e                                            ; $62e5: $1d
	sub a                                            ; $62e6: $97
	xor $f8                                          ; $62e7: $ee $f8
	db $e4                                           ; $62e9: $e4
	ld c, b                                          ; $62ea: $48
	sub $5f                                          ; $62eb: $d6 $5f
	ldh a, [c]                                       ; $62ed: $f2
	ld l, b                                          ; $62ee: $68
	ld a, e                                          ; $62ef: $7b
	ld e, h                                          ; $62f0: $5c
	adc [hl]                                         ; $62f1: $8e
	rst FarCall                                          ; $62f2: $f7
	rst AddAOntoHL                                          ; $62f3: $ef
	rst $38                                          ; $62f4: $ff
	cp $f6                                           ; $62f5: $fe $f6
	rst $38                                          ; $62f7: $ff
	rst AddAOntoHL                                          ; $62f8: $ef
	add l                                            ; $62f9: $85
	add sp, -$1a                                     ; $62fa: $e8 $e6
	add b                                            ; $62fc: $80
	ld bc, $007f                                     ; $62fd: $01 $7f $00
	ld b, $0e                                        ; $6300: $06 $0e
	inc b                                            ; $6302: $04
	db $fd                                           ; $6303: $fd
	sub h                                            ; $6304: $94
	pop hl                                           ; $6305: $e1
	and c                                            ; $6306: $a1
	sub e                                            ; $6307: $93
	pop af                                           ; $6308: $f1
	pop af                                           ; $6309: $f1
	ld hl, sp+$28                                    ; $630a: $f8 $28
	rst $38                                          ; $630c: $ff
	nop                                              ; $630d: $00
	ld e, $0c                                        ; $630e: $1e $0c
	cp $93                                           ; $6310: $fe $93
	ret nc                                           ; $6312: $d0

	nop                                              ; $6313: $00
	db $e3                                           ; $6314: $e3
	or d                                             ; $6315: $b2
	or d                                             ; $6316: $b2
	scf                                              ; $6317: $37
	and e                                            ; $6318: $a3
	nop                                              ; $6319: $00
	jr @+$01                                         ; $631a: $18 $ff

	nop                                              ; $631c: $00
	ld bc, $fe6d                                     ; $631d: $01 $6d $fe
	sub l                                            ; $6320: $95
	rst $38                                          ; $6321: $ff
	xor c                                            ; $6322: $a9
	ld d, l                                          ; $6323: $55
	xor d                                            ; $6324: $aa
	ret nc                                           ; $6325: $d0

	adc e                                            ; $6326: $8b
	adc b                                            ; $6327: $88
	rst $38                                          ; $6328: $ff
	nop                                              ; $6329: $00
	add d                                            ; $632a: $82
	ld a, d                                          ; $632b: $7a
	add [hl]                                         ; $632c: $86
	sub d                                            ; $632d: $92
	inc b                                            ; $632e: $04
	rlca                                             ; $632f: $07
	nop                                              ; $6330: $00
	ld a, [hl]                                       ; $6331: $7e
	ld [$fefe], a                                    ; $6332: $ea $fe $fe
	ld a, $f4                                        ; $6335: $3e $f4
	jr nz, @+$01                                     ; $6337: $20 $ff

	add c                                            ; $6339: $81
	dec d                                            ; $633a: $15
	sbc $01                                          ; $633b: $de $01
	ld a, l                                          ; $633d: $7d
	cp e                                             ; $633e: $bb
	ld a, l                                          ; $633f: $7d
	ld b, b                                          ; $6340: $40
	rst SubAFromDE                                          ; $6341: $df
	db $e4                                           ; $6342: $e4
	sbc l                                            ; $6343: $9d
	ld h, b                                          ; $6344: $60
	ldh [$75], a                                     ; $6345: $e0 $75
	rst JumpTable                                          ; $6347: $c7
	rst SubAFromDE                                          ; $6348: $df
	ld b, $7b                                        ; $6349: $06 $7b
	rst SubAFromDE                                          ; $634b: $df
	ld a, l                                          ; $634c: $7d
	xor h                                            ; $634d: $ac
	sub [hl]                                         ; $634e: $96
	ccf                                              ; $634f: $3f
	db $fd                                           ; $6350: $fd
	xor d                                            ; $6351: $aa
	ld e, a                                          ; $6352: $5f
	xor a                                            ; $6353: $af
	ld e, a                                          ; $6354: $5f
	db $fd                                           ; $6355: $fd
	cp a                                             ; $6356: $bf
	pop bc                                           ; $6357: $c1
	ld a, b                                          ; $6358: $78
	call z, $1f82                                    ; $6359: $cc $82 $1f
	ccf                                              ; $635c: $3f
	cp $3f                                           ; $635d: $fe $3f
	rst FarCall                                          ; $635f: $f7
	and e                                            ; $6360: $a3
	ld d, a                                          ; $6361: $57
	and a                                            ; $6362: $a7
	push de                                          ; $6363: $d5
	ld [hl+], a                                      ; $6364: $22
	ld a, l                                          ; $6365: $7d
	xor $88                                          ; $6366: $ee $88
	add hl, bc                                       ; $6368: $09

jr_049_6369:
	add hl, bc                                       ; $6369: $09
	ld [$c888], sp                                   ; $636a: $08 $88 $c8
	ret nz                                           ; $636d: $c0

	ret nz                                           ; $636e: $c0

	ld sp, hl                                        ; $636f: $f9
	nop                                              ; $6370: $00
	ld a, a                                          ; $6371: $7f
	db $fd                                           ; $6372: $fd
	xor d                                            ; $6373: $aa
	adc a                                            ; $6374: $8f
	ld [$06fc], sp                                   ; $6375: $08 $fc $06
	ld a, d                                          ; $6378: $7a
	ld [hl], $9e                                     ; $6379: $36 $9e
	ld d, b                                          ; $637b: $50
	ld a, c                                          ; $637c: $79
	dec sp                                           ; $637d: $3b
	sub [hl]                                         ; $637e: $96
	ei                                               ; $637f: $fb
	or a                                             ; $6380: $b7
	ei                                               ; $6381: $fb
	rst $38                                          ; $6382: $ff
	db $db                                           ; $6383: $db
	jp hl                                            ; $6384: $e9


	jr nc, @+$01                                     ; $6385: $30 $ff

	nop                                              ; $6387: $00
	ld a, c                                          ; $6388: $79
	ld [hl], e                                       ; $6389: $73
	rst $38                                          ; $638a: $ff
	ld a, a                                          ; $638b: $7f
	or b                                             ; $638c: $b0
	sub e                                            ; $638d: $93
	ld a, [$8ee8]                                    ; $638e: $fa $e8 $8e
	rst SubAFromHL                                          ; $6391: $d7
	xor d                                            ; $6392: $aa
	ret nz                                           ; $6393: $c0

	jr nz, jr_049_6396                               ; $6394: $20 $00

jr_049_6396:
	dec b                                            ; $6396: $05
	rra                                              ; $6397: $1f
	ld [hl], c                                       ; $6398: $71
	jr z, jr_049_6416                                ; $6399: $28 $7b

	or b                                             ; $639b: $b0
	add b                                            ; $639c: $80
	ld a, a                                          ; $639d: $7f
	call nc, $dc8a                                   ; $639e: $d4 $8a $dc
	rst FarCall                                          ; $63a1: $f7
	adc b                                            ; $63a2: $88
	ld [hl], e                                       ; $63a3: $73
	ld c, b                                          ; $63a4: $48
	nop                                              ; $63a5: $00
	ld a, [hl+]                                      ; $63a6: $2a
	ld [hl], h                                       ; $63a7: $74
	ld [hl+], a                                      ; $63a8: $22
	ld [$0800], sp                                   ; $63a9: $08 $00 $08
	scf                                              ; $63ac: $37
	rst $38                                          ; $63ad: $ff
	db $db                                           ; $63ae: $db
	or e                                             ; $63af: $b3
	ld l, e                                          ; $63b0: $6b
	rst $38                                          ; $63b1: $ff
	rst AddAOntoHL                                          ; $63b2: $ef
	ld b, $01                                        ; $63b3: $06 $01
	ld bc, $6424                                     ; $63b5: $01 $24 $64
	db $e4                                           ; $63b8: $e4
	ld hl, sp+$10                                    ; $63b9: $f8 $10
	ld bc, $8f7a                                     ; $63bb: $01 $7a $8f
	sub h                                            ; $63be: $94
	ld hl, sp-$45                                    ; $63bf: $f8 $bb
	ld a, l                                          ; $63c1: $7d
	ld a, [hl-]                                      ; $63c2: $3a
	ld a, l                                          ; $63c3: $7d
	ccf                                              ; $63c4: $3f
	rst $38                                          ; $63c5: $ff
	ld a, l                                          ; $63c6: $7d
	ld a, d                                          ; $63c7: $7a
	ld a, a                                          ; $63c8: $7f
	ld hl, sp+$7a                                    ; $63c9: $f8 $7a
	ld [hl], l                                       ; $63cb: $75
	ld a, a                                          ; $63cc: $7f
	jr z, jr_049_6369                                ; $63cd: $28 $9a

	ldh [$fb], a                                     ; $63cf: $e0 $fb

jr_049_63d1:
	ld h, h                                          ; $63d1: $64
	dec hl                                           ; $63d2: $2b
	ld d, e                                          ; $63d3: $53
	ld a, d                                          ; $63d4: $7a
	add $df                                          ; $63d5: $c6 $df
	rst $38                                          ; $63d7: $ff
	sbc l                                            ; $63d8: $9d
	ld [hl], c                                       ; $63d9: $71
	jr nz, jr_049_6455                               ; $63da: $20 $79

	push hl                                          ; $63dc: $e5
	add h                                            ; $63dd: $84
	rra                                              ; $63de: $1f
	rst GetHLinHL                                          ; $63df: $cf
	rst $38                                          ; $63e0: $ff
	add a                                            ; $63e1: $87
	add e                                            ; $63e2: $83
	jp $feff                                         ; $63e3: $c3 $ff $fe


	ld a, a                                          ; $63e6: $7f
	rst $38                                          ; $63e7: $ff
	rst $38                                          ; $63e8: $ff
	rst SubAFromDE                                          ; $63e9: $df
	add e                                            ; $63ea: $83
	rst FarCall                                          ; $63eb: $f7
	rst $38                                          ; $63ec: $ff
	rst $38                                          ; $63ed: $ff
	sub b                                            ; $63ee: $90
	ret nz                                           ; $63ef: $c0

	ret nz                                           ; $63f0: $c0

	ldh [$f0], a                                     ; $63f1: $e0 $f0
	rst $38                                          ; $63f3: $ff
	ldh a, [$f4]                                     ; $63f4: $f0 $f4
	cp a                                             ; $63f6: $bf
	sub l                                            ; $63f7: $95
	db $eb                                           ; $63f8: $eb
	ld a, e                                          ; $63f9: $7b
	ldh a, [c]                                       ; $63fa: $f2
	sub c                                            ; $63fb: $91
	rst $38                                          ; $63fc: $ff
	di                                               ; $63fd: $f3
	ldh a, [rLCDC]                                   ; $63fe: $f0 $40
	pop bc                                           ; $6400: $c1
	ld h, b                                          ; $6401: $60
	nop                                              ; $6402: $00
	rst $38                                          ; $6403: $ff
	jr nc, jr_049_643e                               ; $6404: $30 $38

	push af                                          ; $6406: $f5
	ld [$ebd5], a                                    ; $6407: $ea $d5 $eb
	ld [hl], h                                       ; $640a: $74
	sbc b                                            ; $640b: $98
	sbc h                                            ; $640c: $9c
	pop hl                                           ; $640d: $e1
	ld b, b                                          ; $640e: $40
	jr nz, jr_049_648c                               ; $640f: $20 $7b

	dec bc                                           ; $6411: $0b
	sbc c                                            ; $6412: $99
	jr nc, jr_049_6435                               ; $6413: $30 $20

	rst $38                                          ; $6415: $ff

jr_049_6416:
	rst SubAFromHL                                          ; $6416: $d7
	ld a, e                                          ; $6417: $7b
	cp l                                             ; $6418: $bd
	db $dd                                           ; $6419: $dd
	rst $38                                          ; $641a: $ff
	add [hl]                                         ; $641b: $86
	ld b, b                                          ; $641c: $40
	xor b                                            ; $641d: $a8
	jr nz, jr_049_63d1                               ; $641e: $20 $b1

	ld d, b                                          ; $6420: $50
	add hl, de                                       ; $6421: $19
	ld e, e                                          ; $6422: $5b
	add hl, sp                                       ; $6423: $39
	cp $56                                           ; $6424: $fe $56
	call c, $ed4c                                    ; $6426: $dc $4c $ed
	pop hl                                           ; $6429: $e1
	and c                                            ; $642a: $a1
	jp Jump_049_4080                                 ; $642b: $c3 $80 $40


	nop                                              ; $642e: $00
	ld [bc], a                                       ; $642f: $02
	dec b                                            ; $6430: $05
	adc d                                            ; $6431: $8a
	add l                                            ; $6432: $85
	xor d                                            ; $6433: $aa
	ld a, a                                          ; $6434: $7f

jr_049_6435:
	db $dd                                           ; $6435: $dd
	add b                                            ; $6436: $80
	ei                                               ; $6437: $fb
	ld a, [hl]                                       ; $6438: $7e
	adc b                                            ; $6439: $88
	ld a, e                                          ; $643a: $7b
	cp $69                                           ; $643b: $fe $69
	rst AddAOntoHL                                          ; $643d: $ef

jr_049_643e:
	sbc h                                            ; $643e: $9c
	ld bc, $56f8                                     ; $643f: $01 $f8 $56
	db $dd                                           ; $6442: $dd
	ld d, h                                          ; $6443: $54
	sbc h                                            ; $6444: $9c
	inc d                                            ; $6445: $14
	and h                                            ; $6446: $a4
	rlca                                             ; $6447: $07
	call c, $9da8                                    ; $6448: $dc $a8 $9d
	add sp, $58                                      ; $644b: $e8 $58
	cp $77                                           ; $644d: $fe $77
	pop hl                                           ; $644f: $e1
	ld a, a                                          ; $6450: $7f
	ld [hl], c                                       ; $6451: $71
	ld a, [$0196]                                    ; $6452: $fa $96 $01

jr_049_6455:
	db $fd                                           ; $6455: $fd
	ld bc, $a951                                     ; $6456: $01 $51 $a9
	ld d, l                                          ; $6459: $55
	xor c                                            ; $645a: $a9
	ld d, l                                          ; $645b: $55
	cp $da                                           ; $645c: $fe $da
	ld [bc], a                                       ; $645e: $02
	add b                                            ; $645f: $80

jr_049_6460:
	ret nz                                           ; $6460: $c0

	sub b                                            ; $6461: $90
	sub c                                            ; $6462: $91
	or c                                             ; $6463: $b1

jr_049_6464:
	sub c                                            ; $6464: $91
	inc sp                                           ; $6465: $33
	dec d                                            ; $6466: $15
	dec sp                                           ; $6467: $3b
	ccf                                              ; $6468: $3f
	ld h, b                                          ; $6469: $60
	ld h, b                                          ; $646a: $60
	ld b, c                                          ; $646b: $41
	ld h, e                                          ; $646c: $63
	jp $c5e3                                         ; $646d: $c3 $e3 $c5


	ccf                                              ; $6470: $3f
	ld e, $d7                                        ; $6471: $1e $d7
	sbc [hl]                                         ; $6473: $9e
	sbc h                                            ; $6474: $9c
	ld a, b                                          ; $6475: $78
	jr z, jr_049_64cd                                ; $6476: $28 $55

	rst SubAFromDE                                          ; $6478: $df
	inc c                                            ; $6479: $0c
	ld h, h                                          ; $647a: $64
	ei                                               ; $647b: $fb
	rst SubAFromBC                                          ; $647c: $e7
	rst $38                                          ; $647d: $ff

Call_049_647e:
	rst SubAFromHL                                          ; $647e: $d7
	add b                                            ; $647f: $80
	xor d                                            ; $6480: $aa
	adc $01                                          ; $6481: $ce $01
	pop bc                                           ; $6483: $c1
	and a                                            ; $6484: $a7
	rst SubAFromBC                                          ; $6485: $e7
	rst JumpTable                                          ; $6486: $c7
	cp c                                             ; $6487: $b9
	dec hl                                           ; $6488: $2b
	or c                                             ; $6489: $b1
	ld c, $0e                                        ; $648a: $0e $0e

jr_049_648c:
	jp z, $eaca                                      ; $648c: $ca $ca $ea

	add $c5                                          ; $648f: $c6 $c5
	ld [bc], a                                       ; $6491: $02
	ld bc, $7f2a                                     ; $6492: $01 $2a $7f
	dec l                                            ; $6495: $2d
	ld d, d                                          ; $6496: $52
	ld [hl], l                                       ; $6497: $75
	add h                                            ; $6498: $84
	db $fd                                           ; $6499: $fd
	add e                                            ; $649a: $83
	add a                                            ; $649b: $87
	adc a                                            ; $649c: $8f
	add e                                            ; $649d: $83
	add c                                            ; $649e: $81
	add b                                            ; $649f: $80
	adc [hl]                                         ; $64a0: $8e
	ld [hl], b                                       ; $64a1: $70
	db $10                                           ; $64a2: $10
	ld [hl], e                                       ; $64a3: $73
	ld a, h                                          ; $64a4: $7c
	ld d, [hl]                                       ; $64a5: $56
	xor c                                            ; $64a6: $a9
	rst $38                                          ; $64a7: $ff
	ld a, e                                          ; $64a8: $7b
	xor e                                            ; $64a9: $ab
	rst AddAOntoHL                                          ; $64aa: $ef
	ldh a, [$f2]                                     ; $64ab: $f0 $f2
	cp b                                             ; $64ad: $b8
	ld d, b                                          ; $64ae: $50
	ldh [$fc], a                                     ; $64af: $e0 $fc
	ld d, [hl]                                       ; $64b1: $56
	rst FarCall                                          ; $64b2: $f7
	ld [hl], b                                       ; $64b3: $70
	ld d, b                                          ; $64b4: $50
	ld e, b                                          ; $64b5: $58
	jr z, jr_049_6460                                ; $64b6: $28 $a8

	and h                                            ; $64b8: $a4

jr_049_64b9:
	adc h                                            ; $64b9: $8c

jr_049_64ba:
	jr z, jr_049_6464                                ; $64ba: $28 $a8

	xor b                                            ; $64bc: $a8
	or h                                             ; $64bd: $b4
	ld d, h                                          ; $64be: $54
	sbc h                                            ; $64bf: $9c
	ld d, h                                          ; $64c0: $54
	ld e, d                                          ; $64c1: $5a
	ld a, [hl-]                                      ; $64c2: $3a
	ld [hl], a                                       ; $64c3: $77
	adc b                                            ; $64c4: $88
	ld a, [hl]                                       ; $64c5: $7e
	reti                                             ; $64c6: $d9


	sbc [hl]                                         ; $64c7: $9e
	ld de, $6a74                                     ; $64c8: $11 $74 $6a
	ld l, l                                          ; $64cb: $6d
	ld e, [hl]                                       ; $64cc: $5e

jr_049_64cd:
	sub h                                            ; $64cd: $94
	ld a, [bc]                                       ; $64ce: $0a
	nop                                              ; $64cf: $00
	ld bc, $aa56                                     ; $64d0: $01 $56 $aa
	ld d, l                                          ; $64d3: $55
	xor e                                            ; $64d4: $ab
	inc b                                            ; $64d5: $04
	inc b                                            ; $64d6: $04
	ld [bc], a                                       ; $64d7: $02
	ld [bc], a                                       ; $64d8: $02
	halt                                             ; $64d9: $76
	dec e                                            ; $64da: $1d
	sub l                                            ; $64db: $95
	cp [hl]                                          ; $64dc: $be
	ld l, a                                          ; $64dd: $6f
	daa                                              ; $64de: $27
	ld h, d                                          ; $64df: $62
	ccf                                              ; $64e0: $3f
	ld a, $00                                        ; $64e1: $3e $00
	add b                                            ; $64e3: $80
	ld a, a                                          ; $64e4: $7f
	rst $38                                          ; $64e5: $ff
	sbc $7f                                          ; $64e6: $de $7f
	add e                                            ; $64e8: $83
	ccf                                              ; $64e9: $3f
	add b                                            ; $64ea: $80
	add b                                            ; $64eb: $80
	ld a, [$1afa]                                    ; $64ec: $fa $fa $1a
	ld a, [de]                                       ; $64ef: $1a
	ld a, d                                          ; $64f0: $7a
	ld e, d                                          ; $64f1: $5a
	ld a, [hl-]                                      ; $64f2: $3a
	ld e, $07                                        ; $64f3: $1e $07
	rlca                                             ; $64f5: $07
	rst SubAFromBC                                          ; $64f6: $e7
	rst SubAFromBC                                          ; $64f7: $e7
	add a                                            ; $64f8: $87
	and a                                            ; $64f9: $a7
	rlca                                             ; $64fa: $07
	inc bc                                           ; $64fb: $03
	push de                                          ; $64fc: $d5
	jp nz, $c2c5                                     ; $64fd: $c2 $c5 $c2

	sub l                                            ; $6500: $95
	add d                                            ; $6501: $82
	add l                                            ; $6502: $85
	ldh a, [c]                                       ; $6503: $f2
	cpl                                              ; $6504: $2f
	sbc $3f                                          ; $6505: $de $3f
	sub e                                            ; $6507: $93
	ld l, a                                          ; $6508: $6f
	ld a, a                                          ; $6509: $7f
	ld a, a                                          ; $650a: $7f
	rrca                                             ; $650b: $0f
	ld [hl], b                                       ; $650c: $70
	ldh a, [c]                                       ; $650d: $f2
	ld [hl], d                                       ; $650e: $72
	or b                                             ; $650f: $b0
	ld [hl], h                                       ; $6510: $74
	or b                                             ; $6511: $b0
	ld [hl], b                                       ; $6512: $70
	or h                                             ; $6513: $b4
	ld [hl], b                                       ; $6514: $70
	ld h, b                                          ; $6515: $60
	ld a, e                                          ; $6516: $7b
	db $fd                                           ; $6517: $fd
	rst SubAFromDE                                          ; $6518: $df
	jr nc, jr_049_64b9                               ; $6519: $30 $9e

	cp b                                             ; $651b: $b8
	db $dd                                           ; $651c: $dd
	jr c, jr_049_64ba                                ; $651d: $38 $9b

	cp b                                             ; $651f: $b8
	rst $38                                          ; $6520: $ff
	rst $38                                          ; $6521: $ff
	ld [hl], a                                       ; $6522: $77
	db $dd                                           ; $6523: $dd
	rst FarCall                                          ; $6524: $f7
	sbc e                                            ; $6525: $9b
	ld [hl], a                                       ; $6526: $77
	jr nz, jr_049_6549                               ; $6527: $20 $20

	inc h                                            ; $6529: $24
	call c, $d920                                    ; $652a: $dc $20 $d9
	rst $38                                          ; $652d: $ff
	sub e                                            ; $652e: $93
	ld hl, sp+$0f                                    ; $652f: $f8 $0f
	ld e, a                                          ; $6531: $5f
	db $ec                                           ; $6532: $ec
	db $e3                                           ; $6533: $e3
	di                                               ; $6534: $f3
	ret nz                                           ; $6535: $c0

	rst GetHLinHL                                          ; $6536: $cf
	inc bc                                           ; $6537: $03
	ld [de], a                                       ; $6538: $12
	or d                                             ; $6539: $b2
	inc de                                           ; $653a: $13
	ld a, b                                          ; $653b: $78
	ret nc                                           ; $653c: $d0

	sbc h                                            ; $653d: $9c
	ccf                                              ; $653e: $3f
	ld d, l                                          ; $653f: $55
	ld [$6e7b], a                                    ; $6540: $ea $7b $6e
	ld a, [hl]                                       ; $6543: $7e
	rst JumpTable                                          ; $6544: $c7
	ld [hl], a                                       ; $6545: $77
	ld l, c                                          ; $6546: $69
	ld a, e                                          ; $6547: $7b
	db $fc                                           ; $6548: $fc

jr_049_6549:
	rst SubAFromDE                                          ; $6549: $df
	rst $38                                          ; $654a: $ff
	sbc l                                            ; $654b: $9d
	ld d, h                                          ; $654c: $54
	xor d                                            ; $654d: $aa
	ld a, b                                          ; $654e: $78
	ld [hl], l                                       ; $654f: $75
	sbc h                                            ; $6550: $9c
	db $10                                           ; $6551: $10
	inc bc                                           ; $6552: $03
	ldh a, [$de]                                     ; $6553: $f0 $de
	ld bc, $f07b                                     ; $6555: $01 $7b $f0
	sub d                                            ; $6558: $92
	db $fc                                           ; $6559: $fc
	rst $38                                          ; $655a: $ff
	db $e4                                           ; $655b: $e4
	ldh [$61], a                                     ; $655c: $e0 $61
	ret nz                                           ; $655e: $c0

	ld c, h                                          ; $655f: $4c
	ld b, b                                          ; $6560: $40
	add b                                            ; $6561: $80
	rst $38                                          ; $6562: $ff
	ld e, b                                          ; $6563: $58
	ld e, b                                          ; $6564: $58
	ret c                                            ; $6565: $d8

	ld a, d                                          ; $6566: $7a
	sbc l                                            ; $6567: $9d
	rst SubAFromDE                                          ; $6568: $df
	rst $38                                          ; $6569: $ff
	halt                                             ; $656a: $76
	add $9c                                          ; $656b: $c6 $9c
	ld b, $00                                        ; $656d: $06 $00
	rst FarCall                                          ; $656f: $f7
	ld l, e                                          ; $6570: $6b
	ret nc                                           ; $6571: $d0

	sbc d                                            ; $6572: $9a
	ld [$b9ff], sp                                   ; $6573: $08 $ff $b9
	push af                                          ; $6576: $f5
	db $fd                                           ; $6577: $fd
	sbc $01                                          ; $6578: $de $01
	sbc l                                            ; $657a: $9d
	db $fd                                           ; $657b: $fd
	rst $38                                          ; $657c: $ff
	sbc $02                                          ; $657d: $de $02
	ld a, e                                          ; $657f: $7b
	rst JumpTable                                          ; $6580: $c7
	adc b                                            ; $6581: $88
	inc bc                                           ; $6582: $03
	rst $38                                          ; $6583: $ff
	inc de                                           ; $6584: $13
	scf                                              ; $6585: $37
	ld d, d                                          ; $6586: $52
	ld [hl+], a                                      ; $6587: $22
	ld b, [hl]                                       ; $6588: $46
	ld bc, $fd43                                     ; $6589: $01 $43 $fd
	jp hl                                            ; $658c: $e9


	set 5, a                                         ; $658d: $cb $ef
	rst SubAFromDE                                          ; $658f: $df
	add e                                            ; $6590: $83
	add e                                            ; $6591: $83

Jump_049_6592:
	cp a                                             ; $6592: $bf
	rst $38                                          ; $6593: $ff
	ld a, [hl+]                                      ; $6594: $2a
	ld d, b                                          ; $6595: $50
	xor c                                            ; $6596: $a9
	ld d, d                                          ; $6597: $52
	xor b                                            ; $6598: $a8
	cp $9a                                           ; $6599: $fe $9a
	call nc, $54ac                                   ; $659b: $d4 $ac $54
	xor h                                            ; $659e: $ac
	ld d, [hl]                                       ; $659f: $56
	ld a, b                                          ; $65a0: $78
	ld h, l                                          ; $65a1: $65
	add b                                            ; $65a2: $80
	db $db                                           ; $65a3: $db
	db $eb                                           ; $65a4: $eb
	ei                                               ; $65a5: $fb
	add c                                            ; $65a6: $81
	res 2, l                                         ; $65a7: $cb $95
	add b                                            ; $65a9: $80
	ld a, a                                          ; $65aa: $7f
	add l                                            ; $65ab: $85
	add l                                            ; $65ac: $85
	add a                                            ; $65ad: $87
	rst $38                                          ; $65ae: $ff
	ldh [$c0], a                                     ; $65af: $e0 $c0
	rst $38                                          ; $65b1: $ff
	rst $38                                          ; $65b2: $ff
	dec b                                            ; $65b3: $05
	rst SubAFromBC                                          ; $65b4: $e7
	add hl, bc                                       ; $65b5: $09
	db $ec                                           ; $65b6: $ec
	call z, $fa9b                                    ; $65b7: $cc $9b $fa
	pop af                                           ; $65ba: $f1
	ldh [rOBP1], a                                   ; $65bb: $e0 $49
	rst $38                                          ; $65bd: $ff
	sbc c                                            ; $65be: $99
	cp c                                             ; $65bf: $b9
	db $ec                                           ; $65c0: $ec
	call c, $fe80                                    ; $65c1: $dc $80 $fe
	ld e, h                                          ; $65c4: $5c
	xor e                                            ; $65c5: $ab
	di                                               ; $65c6: $f3
	rst $38                                          ; $65c7: $ff
	rst SubAFromHL                                          ; $65c8: $d7
	and e                                            ; $65c9: $a3
	ld [bc], a                                       ; $65ca: $02
	or a                                             ; $65cb: $b7
	and c                                            ; $65cc: $a1
	ld [hl], h                                       ; $65cd: $74
	cp d                                             ; $65ce: $ba
	or $fe                                           ; $65cf: $f6 $fe
	ld b, d                                          ; $65d1: $42
	rlca                                             ; $65d2: $07
	rrca                                             ; $65d3: $0f
	db $dd                                           ; $65d4: $dd
	ld [de], a                                       ; $65d5: $12
	ld h, [hl]                                       ; $65d6: $66
	dec c                                            ; $65d7: $0d
	ld b, [hl]                                       ; $65d8: $46
	ld a, b                                          ; $65d9: $78
	ld bc, $2aff                                     ; $65da: $01 $ff $2a
	xor l                                            ; $65dd: $ad
	sbc l                                            ; $65de: $9d
	or $82                                           ; $65df: $f6 $82
	add e                                            ; $65e1: $83
	ld a, e                                          ; $65e2: $7b
	ret nc                                           ; $65e3: $d0

	sbc [hl]                                         ; $65e4: $9e
	ld a, [$807b]                                    ; $65e5: $fa $7b $80
	sbc l                                            ; $65e8: $9d
	add a                                            ; $65e9: $87
	add b                                            ; $65ea: $80
	ld h, e                                          ; $65eb: $63
	ld d, b                                          ; $65ec: $50
	sbc c                                            ; $65ed: $99
	ld e, l                                          ; $65ee: $5d
	xor [hl]                                         ; $65ef: $ae
	rst $38                                          ; $65f0: $ff
	nop                                              ; $65f1: $00
	inc c                                            ; $65f2: $0c
	db $fc                                           ; $65f3: $fc
	ld e, a                                          ; $65f4: $5f
	ld b, b                                          ; $65f5: $40
	sub e                                            ; $65f6: $93
	ld l, a                                          ; $65f7: $6f
	sbc a                                            ; $65f8: $9f
	cp a                                             ; $65f9: $bf
	cpl                                              ; $65fa: $2f
	rrca                                             ; $65fb: $0f
	rst $38                                          ; $65fc: $ff
	rlca                                             ; $65fd: $07
	ei                                               ; $65fe: $fb
	sub b                                            ; $65ff: $90
	ld c, a                                          ; $6600: $4f
	ld c, a                                          ; $6601: $4f
	ret nz                                           ; $6602: $c0

	ld a, d                                          ; $6603: $7a
	and d                                            ; $6604: $a2
	add b                                            ; $6605: $80
	ldh a, [$e2]                                     ; $6606: $f0 $e2
	rst FarCall                                          ; $6608: $f7
	push af                                          ; $6609: $f5
	ld [$e8e2], a                                    ; $660a: $ea $e2 $e8
	db $e4                                           ; $660d: $e4
	ld [$ff1f], a                                    ; $660e: $ea $1f $ff
	ld a, [$1815]                                    ; $6611: $fa $15 $18
	db $10                                           ; $6614: $10
	jr jr_049_662c                                   ; $6615: $18 $15

	rst SubAFromHL                                          ; $6617: $d7
	pop af                                           ; $6618: $f1
	ld l, e                                          ; $6619: $6b
	cp c                                             ; $661a: $b9
	ld a, $3f                                        ; $661b: $3e $3f
	ccf                                              ; $661d: $3f
	ld [hl], e                                       ; $661e: $73
	cpl                                              ; $661f: $2f
	rst $38                                          ; $6620: $ff
	cp [hl]                                          ; $6621: $be
	rlca                                             ; $6622: $07
	dec b                                            ; $6623: $05
	ld bc, $c57f                                     ; $6624: $01 $7f $c5
	adc c                                            ; $6627: $89
	ld [hl], b                                       ; $6628: $70
	rst $38                                          ; $6629: $ff
	ld [bc], a                                       ; $662a: $02
	rst $38                                          ; $662b: $ff

jr_049_662c:
	ld l, h                                          ; $662c: $6c
	rst $38                                          ; $662d: $ff
	ld h, b                                          ; $662e: $60
	or $ff                                           ; $662f: $f6 $ff
	rst $38                                          ; $6631: $ff
	db $fd                                           ; $6632: $fd
	nop                                              ; $6633: $00
	sbc a                                            ; $6634: $9f
	rrca                                             ; $6635: $0f
	sbc a                                            ; $6636: $9f
	add hl, bc                                       ; $6637: $09
	jr nc, @+$01                                     ; $6638: $30 $ff

	dec sp                                           ; $663a: $3b
	rst $38                                          ; $663b: $ff
	nop                                              ; $663c: $00
	rst $38                                          ; $663d: $ff
	ld a, e                                          ; $663e: $7b
	rla                                              ; $663f: $17
	sbc l                                            ; $6640: $9d
	rst $38                                          ; $6641: $ff

jr_049_6642:
	call nz, $b27b                                   ; $6642: $c4 $7b $b2
	ld a, a                                          ; $6645: $7f
	rst FarCall                                          ; $6646: $f7
	sbc l                                            ; $6647: $9d
	ld [hl], $fe                                     ; $6648: $36 $fe
	ld a, e                                          ; $664a: $7b
	sub h                                            ; $664b: $94
	ld a, a                                          ; $664c: $7f
	cp $9d                                           ; $664d: $fe $9d
	push de                                          ; $664f: $d5
	rst $38                                          ; $6650: $ff
	ld a, c                                          ; $6651: $79
	dec [hl]                                         ; $6652: $35
	sbc $ff                                          ; $6653: $de $ff
	sbc [hl]                                         ; $6655: $9e
	ld a, [hl+]                                      ; $6656: $2a
	sbc $3f                                          ; $6657: $de $3f
	sbc l                                            ; $6659: $9d
	inc a                                            ; $665a: $3c
	cp b                                             ; $665b: $b8
	ld a, b                                          ; $665c: $78
	sbc a                                            ; $665d: $9f
	db $dd                                           ; $665e: $dd
	rrca                                             ; $665f: $0f
	rst SubAFromDE                                          ; $6660: $df
	rra                                              ; $6661: $1f
	ld a, c                                          ; $6662: $79
	ld a, [hl-]                                      ; $6663: $3a
	rst SubAFromDE                                          ; $6664: $df
	rst $38                                          ; $6665: $ff
	ld l, h                                          ; $6666: $6c
	ld l, b                                          ; $6667: $68
	rst SubAFromHL                                          ; $6668: $d7
	rst $38                                          ; $6669: $ff
	ld a, d                                          ; $666a: $7a
	ld sp, hl                                        ; $666b: $f9
	ld a, a                                          ; $666c: $7f
	ld c, b                                          ; $666d: $48
	call c, $9dff                                    ; $666e: $dc $ff $9d
	db $fc                                           ; $6671: $fc
	ld a, [$a87b]                                    ; $6672: $fa $7b $a8
	ld a, a                                          ; $6675: $7f
	and e                                            ; $6676: $a3
	sbc [hl]                                         ; $6677: $9e
	ret nz                                           ; $6678: $c0

	ld a, c                                          ; $6679: $79
	ld h, a                                          ; $667a: $67
	db $dd                                           ; $667b: $dd
	rst $38                                          ; $667c: $ff
	ld [hl], e                                       ; $667d: $73
	jp nc, $d03f                                     ; $667e: $d2 $3f $d0

	rst SubAFromDE                                          ; $6681: $df
	ld bc, $d07f                                     ; $6682: $01 $7f $d0
	sbc [hl]                                         ; $6685: $9e
	rlca                                             ; $6686: $07
	call c, $9cff                                    ; $6687: $dc $ff $9c
	db $fd                                           ; $668a: $fd
	ld sp, hl                                        ; $668b: $f9
	ld sp, hl                                        ; $668c: $f9
	sbc $ff                                          ; $668d: $de $ff
	call c, $dbc0                                    ; $668f: $dc $c0 $db
	rst $38                                          ; $6692: $ff
	rst SubAFromDE                                          ; $6693: $df
	cp a                                             ; $6694: $bf
	ld a, a                                          ; $6695: $7f
	cp l                                             ; $6696: $bd
	sub c                                            ; $6697: $91
	db $f4                                           ; $6698: $f4
	ld l, d                                          ; $6699: $6a
	rra                                              ; $669a: $1f
	ld d, $0e                                        ; $669b: $16 $0e
	ld e, $00                                        ; $669d: $1e $00
	ld b, b                                          ; $669f: $40
	jr nz, jr_049_6642                               ; $66a0: $20 $a0

	ldh [$f9], a                                     ; $66a2: $e0 $f9
	ld sp, hl                                        ; $66a4: $f9
	pop af                                           ; $66a5: $f1
	sbc $ff                                          ; $66a6: $de $ff
	sbc [hl]                                         ; $66a8: $9e
	inc bc                                           ; $66a9: $03
	ld [hl], l                                       ; $66aa: $75
	ret c                                            ; $66ab: $d8

	sbc $7f                                          ; $66ac: $de $7f
	call c, $8fff                                    ; $66ae: $dc $ff $8f
	inc e                                            ; $66b1: $1c
	adc a                                            ; $66b2: $8f
	push de                                          ; $66b3: $d5
	add sp, -$6d                                     ; $66b4: $e8 $93
	adc l                                            ; $66b6: $8d
	ret nz                                           ; $66b7: $c0

	ld h, b                                          ; $66b8: $60
	xor a                                            ; $66b9: $af
	inc bc                                           ; $66ba: $03
	nop                                              ; $66bb: $00
	nop                                              ; $66bc: $00
	ld h, b                                          ; $66bd: $60
	ld [hl], b                                       ; $66be: $70
	cp a                                             ; $66bf: $bf
	sbc a                                            ; $66c0: $9f
	ld a, c                                          ; $66c1: $79
	db $fc                                           ; $66c2: $fc
	sbc b                                            ; $66c3: $98
	ld [hl], h                                       ; $66c4: $74
	xor b                                            ; $66c5: $a8
	ld d, b                                          ; $66c6: $50
	nop                                              ; $66c7: $00
	nop                                              ; $66c8: $00
	rlca                                             ; $66c9: $07
	ei                                               ; $66ca: $fb
	sbc $03                                          ; $66cb: $de $03
	ld l, a                                          ; $66cd: $6f

Call_049_66ce:
	xor d                                            ; $66ce: $aa
	ld a, l                                          ; $66cf: $7d
	bit 7, e                                         ; $66d0: $cb $7b
	ret nc                                           ; $66d2: $d0

jr_049_66d3:
	sub $ff                                          ; $66d3: $d6 $ff
	rst SubAFromDE                                          ; $66d5: $df
	add b                                            ; $66d6: $80
	sbc h                                            ; $66d7: $9c
	ldh [rSVBK], a                                   ; $66d8: $e0 $70
	ld a, h                                          ; $66da: $7c
	ld [hl], a                                       ; $66db: $77
	ld [hl], c                                       ; $66dc: $71
	ld a, l                                          ; $66dd: $7d
	and b                                            ; $66de: $a0
	sbc l                                            ; $66df: $9d
	cp a                                             ; $66e0: $bf
	sub a                                            ; $66e1: $97
	ld b, a                                          ; $66e2: $47
	ld [hl], b                                       ; $66e3: $70
	rst SubAFromDE                                          ; $66e4: $df
	ld hl, sp-$63                                    ; $66e5: $f8 $9d
	db $fc                                           ; $66e7: $fc
	ld [bc], a                                       ; $66e8: $02
	db $fd                                           ; $66e9: $fd
	rst SubAFromDE                                          ; $66ea: $df
	ldh a, [$7d]                                     ; $66eb: $f0 $7d
	ld b, e                                          ; $66ed: $43
	db $dd                                           ; $66ee: $dd
	rst $38                                          ; $66ef: $ff
	ld a, [hl]                                       ; $66f0: $7e
	add $7f                                          ; $66f1: $c6 $7f
	cp $8a                                           ; $66f3: $fe $8a
	rst SubAFromBC                                          ; $66f5: $e7
	db $eb                                           ; $66f6: $eb
	db $ed                                           ; $66f7: $ed
	ldh a, [c]                                       ; $66f8: $f2
	ld a, [de]                                       ; $66f9: $1a
	dec d                                            ; $66fa: $15
	ld a, [de]                                       ; $66fb: $1a
	dec d                                            ; $66fc: $15
	jr jr_049_66d3                                   ; $66fd: $18 $d4

	ldh a, [c]                                       ; $66ff: $f2
	db $fd                                           ; $6700: $fd
	add hl, sp                                       ; $6701: $39
	ccf                                              ; $6702: $3f
	ccf                                              ; $6703: $3f
	cp a                                             ; $6704: $bf
	cpl                                              ; $6705: $2f
	rst SubAFromHL                                          ; $6706: $d7
	jp hl                                            ; $6707: $e9


	cp [hl]                                          ; $6708: $be
	ld b, $fe                                        ; $6709: $06 $fe
	adc c                                            ; $670b: $89
	ret nc                                           ; $670c: $d0

	jr z, jr_049_6725                                ; $670d: $28 $16

	ld b, c                                          ; $670f: $41
	xor $fe                                          ; $6710: $ee $fe
	xor $f6                                          ; $6712: $ee $f6
	rst SubAFromBC                                          ; $6714: $e7
	rst SubAFromHL                                          ; $6715: $d7
	db $eb                                           ; $6716: $eb
	push de                                          ; $6717: $d5
	add hl, de                                       ; $6718: $19
	add hl, bc                                       ; $6719: $09
	add hl, de                                       ; $671a: $19
	dec c                                            ; $671b: $0d
	rra                                              ; $671c: $1f
	dec hl                                           ; $671d: $2b
	inc d                                            ; $671e: $14
	ld a, [hl+]                                      ; $671f: $2a
	ld [$7af5], a                                    ; $6720: $ea $f5 $7a
	rst GetHLinHL                                          ; $6723: $cf
	ld a, [hl]                                       ; $6724: $7e

jr_049_6725:
	reti                                             ; $6725: $d9


	sbc e                                            ; $6726: $9b
	ld d, l                                          ; $6727: $55
	sub l                                            ; $6728: $95
	adc d                                            ; $6729: $8a
	add c                                            ; $672a: $81
	sbc $ff                                          ; $672b: $de $ff
	sbc l                                            ; $672d: $9d
	push de                                          ; $672e: $d5
	xor d                                            ; $672f: $aa
	ld a, b                                          ; $6730: $78
	sub h                                            ; $6731: $94
	ld a, e                                          ; $6732: $7b
	ld d, a                                          ; $6733: $57
	sbc l                                            ; $6734: $9d
	jr nz, jr_049_674d                               ; $6735: $20 $16

	ld [hl], h                                       ; $6737: $74
	adc l                                            ; $6738: $8d
	rst SubAFromDE                                          ; $6739: $df
	rst $38                                          ; $673a: $ff
	sbc c                                            ; $673b: $99
	rst SubAFromDE                                          ; $673c: $df
	rst AddAOntoHL                                          ; $673d: $ef
	ld a, a                                          ; $673e: $7f
	sbc a                                            ; $673f: $9f
	sbc a                                            ; $6740: $9f
	cp a                                             ; $6741: $bf
	ld [hl], a                                       ; $6742: $77
	adc h                                            ; $6743: $8c
	sbc c                                            ; $6744: $99
	adc b                                            ; $6745: $88
	dec bc                                           ; $6746: $0b
	dec bc                                           ; $6747: $0b
	rra                                              ; $6748: $1f
	ccf                                              ; $6749: $3f
	ld a, a                                          ; $674a: $7f
	ld h, e                                          ; $674b: $63
	adc b                                            ; $674c: $88

jr_049_674d:
	ld l, e                                          ; $674d: $6b
	rst FarCall                                          ; $674e: $f7
	rst $38                                          ; $674f: $ff
	sbc [hl]                                         ; $6750: $9e
	sbc [hl]                                         ; $6751: $9e
	ld l, e                                          ; $6752: $6b
	ldh a, [$9e]                                     ; $6753: $f0 $9e
	ld l, a                                          ; $6755: $6f
	call c, $ffce                                    ; $6756: $dc $ce $ff
	sbc [hl]                                         ; $6759: $9e
	ld b, b                                          ; $675a: $40
	ld l, e                                          ; $675b: $6b
	ldh a, [$9a]                                     ; $675c: $f0 $9a
	cp a                                             ; $675e: $bf
	ld c, a                                          ; $675f: $4f
	ld c, a                                          ; $6760: $4f
	ld e, b                                          ; $6761: $58
	ld a, a                                          ; $6762: $7f
	ld a, e                                          ; $6763: $7b
	ret nc                                           ; $6764: $d0

	ld l, e                                          ; $6765: $6b
	rst GetHLinHL                                          ; $6766: $cf
	ld [hl], a                                       ; $6767: $77
	ld sp, hl                                        ; $6768: $f9
	ld a, e                                          ; $6769: $7b
	db $fc                                           ; $676a: $fc
	ld a, d                                          ; $676b: $7a
	ld a, b                                          ; $676c: $78
	ld l, e                                          ; $676d: $6b
	ldh a, [$99]                                     ; $676e: $f0 $99
	push af                                          ; $6770: $f5
	call Call_049_6fed                               ; $6771: $cd $ed $6f
	rst AddAOntoHL                                          ; $6774: $ef
	rst AddAOntoHL                                          ; $6775: $ef
	ld h, a                                          ; $6776: $67
	pop hl                                           ; $6777: $e1
	sub h                                            ; $6778: $94
	db $fc                                           ; $6779: $fc
	rrca                                             ; $677a: $0f
	add b                                            ; $677b: $80
	sbc a                                            ; $677c: $9f
	sbc a                                            ; $677d: $9f
	add b                                            ; $677e: $80
	sbc a                                            ; $677f: $9f
	sbc [hl]                                         ; $6780: $9e
	ld [$eb00], sp                                   ; $6781: $08 $00 $eb
	sbc $f3                                          ; $6784: $de $f3
	sub e                                            ; $6786: $93
	or a                                             ; $6787: $b7
	ld [hl], a                                       ; $6788: $77
	rst FarCall                                          ; $6789: $f7
	call c, $f111                                    ; $678a: $dc $11 $f1
	pop de                                           ; $678d: $d1
	sub e                                            ; $678e: $93
	inc de                                           ; $678f: $13
	inc sp                                           ; $6790: $33
	rst FarCall                                          ; $6791: $f7
	add b                                            ; $6792: $80
	ld a, c                                          ; $6793: $79
	ld a, l                                          ; $6794: $7d
	ld [hl], e                                       ; $6795: $73
	ret nc                                           ; $6796: $d0

	sbc d                                            ; $6797: $9a
	ld bc, $faf8                                     ; $6798: $01 $f8 $fa
	ld a, [$79fe]                                    ; $679b: $fa $fe $79
	ld c, [hl]                                       ; $679e: $4e
	rst SubAFromDE                                          ; $679f: $df
	ld a, a                                          ; $67a0: $7f
	sbc [hl]                                         ; $67a1: $9e
	ld e, a                                          ; $67a2: $5f
	ld [hl], e                                       ; $67a3: $73
	ldh a, [$99]                                     ; $67a4: $f0 $99
	add b                                            ; $67a6: $80
	rla                                              ; $67a7: $17
	rlca                                             ; $67a8: $07
	xor l                                            ; $67a9: $ad
	or d                                             ; $67aa: $b2
	xor a                                            ; $67ab: $af
	ld [hl], a                                       ; $67ac: $77
	ret nz                                           ; $67ad: $c0

	sbc [hl]                                         ; $67ae: $9e
	rst GetHLinHL                                          ; $67af: $cf
	ld l, a                                          ; $67b0: $6f
	ld [hl], a                                       ; $67b1: $77
	sbc e                                            ; $67b2: $9b
	rst SubAFromDE                                          ; $67b3: $df
	add a                                            ; $67b4: $87
	ld d, l                                          ; $67b5: $55
	xor d                                            ; $67b6: $aa
	ld h, a                                          ; $67b7: $67
	ld l, c                                          ; $67b8: $69
	ld [hl], a                                       ; $67b9: $77
	ldh a, [$df]                                     ; $67ba: $f0 $df
	di                                               ; $67bc: $f3
	sbc l                                            ; $67bd: $9d
	ld d, c                                          ; $67be: $51
	and d                                            ; $67bf: $a2
	ld a, e                                          ; $67c0: $7b
	ld sp, hl                                        ; $67c1: $f9
	call c, Call_049_79fd                            ; $67c2: $dc $fd $79
	call nc, Call_049_7e99                           ; $67c5: $d4 $99 $7e
	ld a, h                                          ; $67c8: $7c
	ld a, h                                          ; $67c9: $7c
	inc l                                            ; $67ca: $2c
	ld e, h                                          ; $67cb: $5c
	inc a                                            ; $67cc: $3c
	ld e, a                                          ; $67cd: $5f
	ldh [$72], a                                     ; $67ce: $e0 $72
	db $d3                                           ; $67d0: $d3
	ld a, e                                          ; $67d1: $7b
	ldh [$9c], a                                     ; $67d2: $e0 $9c
	cp a                                             ; $67d4: $bf
	ldh [$f8], a                                     ; $67d5: $e0 $f8
	ld a, e                                          ; $67d7: $7b
	push af                                          ; $67d8: $f5
	ld a, a                                          ; $67d9: $7f
	and a                                            ; $67da: $a7
	sbc b                                            ; $67db: $98
	ld b, b                                          ; $67dc: $40
	ret nz                                           ; $67dd: $c0

	ldh a, [$f8]                                     ; $67de: $f0 $f8
	cp $ff                                           ; $67e0: $fe $ff
	ld bc, $b87a                                     ; $67e2: $01 $7a $b8
	adc c                                            ; $67e5: $89
	ld [hl], b                                       ; $67e6: $70
	ld a, [$b071]                                    ; $67e7: $fa $71 $b0
	push af                                          ; $67ea: $f5
	ldh a, [c]                                       ; $67eb: $f2
	ldh [rAUD4LEN], a                                ; $67ec: $e0 $20
	jr z, jr_049_6815                                ; $67ee: $28 $25

	ld [hl+], a                                      ; $67f0: $22
	ldh [$f2], a                                     ; $67f1: $e0 $f2
	dec c                                            ; $67f3: $0d
	inc bc                                           ; $67f4: $03
	rlca                                             ; $67f5: $07
	nop                                              ; $67f6: $00
	adc b                                            ; $67f7: $88
	ld b, b                                          ; $67f8: $40
	and b                                            ; $67f9: $a0
	ld d, l                                          ; $67fa: $55
	xor d                                            ; $67fb: $aa
	ld a, b                                          ; $67fc: $78
	adc e                                            ; $67fd: $8b
	adc d                                            ; $67fe: $8a
	db $10                                           ; $67ff: $10
	add b                                            ; $6800: $80
	ld b, c                                          ; $6801: $41
	xor b                                            ; $6802: $a8
	ld d, l                                          ; $6803: $55
	ld [$ead5], a                                    ; $6804: $ea $d5 $ea
	push de                                          ; $6807: $d5
	xor d                                            ; $6808: $aa
	push de                                          ; $6809: $d5
	xor e                                            ; $680a: $ab
	push de                                          ; $680b: $d5
	dec d                                            ; $680c: $15
	ld a, [hl+]                                      ; $680d: $2a
	dec d                                            ; $680e: $15
	ld a, [hl+]                                      ; $680f: $2a
	ld d, l                                          ; $6810: $55
	ld a, [hl+]                                      ; $6811: $2a
	ld d, h                                          ; $6812: $54
	ld a, [hl+]                                      ; $6813: $2a
	ld a, d                                          ; $6814: $7a

jr_049_6815:
	ret nc                                           ; $6815: $d0

	ld a, e                                          ; $6816: $7b
	adc b                                            ; $6817: $88
	sbc l                                            ; $6818: $9d
	db $fd                                           ; $6819: $fd
	cp $77                                           ; $681a: $fe $77
	ld sp, hl                                        ; $681c: $f9
	sbc c                                            ; $681d: $99
	ld d, l                                          ; $681e: $55
	nop                                              ; $681f: $00
	ld [bc], a                                       ; $6820: $02
	nop                                              ; $6821: $00
	add c                                            ; $6822: $81
	ld b, b                                          ; $6823: $40
	ld a, e                                          ; $6824: $7b
	rst FarCall                                          ; $6825: $f7
	sbc d                                            ; $6826: $9a
	push de                                          ; $6827: $d5
	ld l, d                                          ; $6828: $6a
	cp d                                             ; $6829: $ba
	ld a, a                                          ; $682a: $7f
	cp a                                             ; $682b: $bf
	ld a, e                                          ; $682c: $7b
	ldh a, [$9c]                                     ; $682d: $f0 $9c
	ld a, [hl+]                                      ; $682f: $2a
	sub l                                            ; $6830: $95
	nop                                              ; $6831: $00
	ld [hl], e                                       ; $6832: $73
	add sp, -$64                                     ; $6833: $e8 $9c
	xor e                                            ; $6835: $ab
	ld d, a                                          ; $6836: $57
	xor [hl]                                         ; $6837: $ae
	ld [hl], e                                       ; $6838: $73
	ret c                                            ; $6839: $d8

	sub d                                            ; $683a: $92
	ld d, h                                          ; $683b: $54
	xor b                                            ; $683c: $a8
	ld d, c                                          ; $683d: $51
	ld e, [hl]                                       ; $683e: $5e
	xor l                                            ; $683f: $ad
	ld e, a                                          ; $6840: $5f
	xor l                                            ; $6841: $ad
	ld e, d                                          ; $6842: $5a
	cp l                                             ; $6843: $bd
	ld e, [hl]                                       ; $6844: $5e
	cp l                                             ; $6845: $bd
	and b                                            ; $6846: $a0
	ld d, b                                          ; $6847: $50
	ld a, e                                          ; $6848: $7b
	cp $7f                                           ; $6849: $fe $7f
	and a                                            ; $684b: $a7
	ld a, e                                          ; $684c: $7b
	jp nc, $af9e                                     ; $684d: $d2 $9e $af

	ld l, a                                          ; $6850: $6f
	push bc                                          ; $6851: $c5
	ld a, [$897a]                                    ; $6852: $fa $7a $89
	ld c, e                                          ; $6855: $4b
	ldh a, [$9e]                                     ; $6856: $f0 $9e
	ld [$f053], a                                    ; $6858: $ea $53 $f0
	ld a, a                                          ; $685b: $7f
	ldh [c], a                                       ; $685c: $e2
	ld a, d                                          ; $685d: $7a
	ld e, e                                          ; $685e: $5b
	ld e, e                                          ; $685f: $5b
	ldh a, [$9b]                                     ; $6860: $f0 $9b
	pop af                                           ; $6862: $f1
	ld e, b                                          ; $6863: $58
	db $fd                                           ; $6864: $fd
	ld d, [hl]                                       ; $6865: $56
	ld [hl], a                                       ; $6866: $77
	ldh a, [$9e]                                     ; $6867: $f0 $9e
	ld c, $71                                        ; $6869: $0e $71
	jp z, $92ff                                      ; $686b: $ca $ff $92

	jp c, $bd43                                      ; $686e: $da $43 $bd

	ccf                                              ; $6871: $3f
	jp nz, $aa7f                                     ; $6872: $c2 $7f $aa

	ld d, l                                          ; $6875: $55
	and h                                            ; $6876: $a4
	cp h                                             ; $6877: $bc
	jp $3fc1                                         ; $6878: $c3 $c1 $3f


	ld [hl], e                                       ; $687b: $73
	ret nz                                           ; $687c: $c0

	sbc [hl]                                         ; $687d: $9e
	cp $67                                           ; $687e: $fe $67
	ret nc                                           ; $6880: $d0

	ld a, c                                          ; $6881: $79
	ld a, [hl+]                                      ; $6882: $2a
	ld [hl], a                                       ; $6883: $77
	ldh a, [$6f]                                     ; $6884: $f0 $6f
	cp $f9                                           ; $6886: $fe $f9
	ld a, a                                          ; $6888: $7f
	db $eb                                           ; $6889: $eb
	ld a, d                                          ; $688a: $7a
	or h                                             ; $688b: $b4
	sbc [hl]                                         ; $688c: $9e
	ld b, b                                          ; $688d: $40
	rst FarCall                                          ; $688e: $f7
	sbc h                                            ; $688f: $9c
	ld [bc], a                                       ; $6890: $02
	dec d                                            ; $6891: $15
	ld a, [$4777]                                    ; $6892: $fa $77 $47
	ld e, a                                          ; $6895: $5f
	sub b                                            ; $6896: $90
	ld a, l                                          ; $6897: $7d
	ldh a, [c]                                       ; $6898: $f2
	sbc h                                            ; $6899: $9c
	ld a, a                                          ; $689a: $7f
	ld [$5f75], a                                    ; $689b: $ea $75 $5f
	ret nc                                           ; $689e: $d0

	sbc l                                            ; $689f: $9d
	ld [$7bfd], a                                    ; $68a0: $ea $fd $7b
	or b                                             ; $68a3: $b0
	ld a, e                                          ; $68a4: $7b
	xor [hl]                                         ; $68a5: $ae
	ld h, e                                          ; $68a6: $63
	ld h, b                                          ; $68a7: $60
	rst SubAFromDE                                          ; $68a8: $df
	rst $38                                          ; $68a9: $ff
	sbc [hl]                                         ; $68aa: $9e
	ld d, a                                          ; $68ab: $57
	ld a, e                                          ; $68ac: $7b
	ld a, $9e                                        ; $68ad: $3e $9e
	ld [hl], l                                       ; $68af: $75
	ld sp, hl                                        ; $68b0: $f9
	sbc [hl]                                         ; $68b1: $9e
	and c                                            ; $68b2: $a1
	halt                                             ; $68b3: $76
	rst SubAFromDE                                          ; $68b4: $df
	ld a, l                                          ; $68b5: $7d
	xor e                                            ; $68b6: $ab
	sbc l                                            ; $68b7: $9d
	db $eb                                           ; $68b8: $eb
	ld [bc], a                                       ; $68b9: $02
	halt                                             ; $68ba: $76
	rst SubAFromDE                                          ; $68bb: $df
	adc h                                            ; $68bc: $8c
	dec d                                            ; $68bd: $15
	ld a, [bc]                                       ; $68be: $0a
	inc d                                            ; $68bf: $14
	ld [hl], e                                       ; $68c0: $73
	cp c                                             ; $68c1: $b9
	ld a, a                                          ; $68c2: $7f
	cp a                                             ; $68c3: $bf
	ld e, a                                          ; $68c4: $5f
	xor a                                            ; $68c5: $af
	ld e, [hl]                                       ; $68c6: $5e
	push af                                          ; $68c7: $f5
	add b                                            ; $68c8: $80
	ld b, b                                          ; $68c9: $40
	add b                                            ; $68ca: $80
	ld b, b                                          ; $68cb: $40
	and b                                            ; $68cc: $a0
	ld d, b                                          ; $68cd: $50
	and c                                            ; $68ce: $a1
	ld a, [bc]                                       ; $68cf: $0a
	ld [hl], a                                       ; $68d0: $77
	call nz, $fe77                                   ; $68d1: $c4 $77 $fe
	ld a, e                                          ; $68d4: $7b
	sbc l                                            ; $68d5: $9d
	ld [hl], e                                       ; $68d6: $73
	rst FarCall                                          ; $68d7: $f7
	sbc d                                            ; $68d8: $9a
	db $fd                                           ; $68d9: $fd
	ld a, [hl]                                       ; $68da: $7e
	cp a                                             ; $68db: $bf
	push de                                          ; $68dc: $d5
	cp e                                             ; $68dd: $bb
	ld [hl], a                                       ; $68de: $77
	ld [hl], b                                       ; $68df: $70
	ld a, a                                          ; $68e0: $7f
	pop hl                                           ; $68e1: $e1
	sbc l                                            ; $68e2: $9d
	ld a, [hl+]                                      ; $68e3: $2a
	ld b, h                                          ; $68e4: $44
	ld [hl], e                                       ; $68e5: $73
	xor $9b                                          ; $68e6: $ee $9b
	push de                                          ; $68e8: $d5
	ld a, [hl+]                                      ; $68e9: $2a
	rst SubAFromDE                                          ; $68ea: $df
	halt                                             ; $68eb: $76
	ld l, e                                          ; $68ec: $6b
	ld d, b                                          ; $68ed: $50
	sbc h                                            ; $68ee: $9c
	adc b                                            ; $68ef: $88
	ld d, l                                          ; $68f0: $55
	xor d                                            ; $68f1: $aa
	ld a, $00                                        ; $68f2: $3e $00
	call z, $9e33                                    ; $68f4: $cc $33 $9e
	inc [hl]                                         ; $68f7: $34
	db $dd                                           ; $68f8: $dd
	ld b, h                                          ; $68f9: $44
	sbc [hl]                                         ; $68fa: $9e
	ld b, a                                          ; $68fb: $47
	db $dd                                           ; $68fc: $dd
	inc sp                                           ; $68fd: $33
	call c, $9e44                                    ; $68fe: $dc $44 $9e
	ld b, l                                          ; $6901: $45
	sbc $55                                          ; $6902: $de $55
	call c, $9d44                                    ; $6904: $dc $44 $9d
	ld b, e                                          ; $6907: $43
	inc [hl]                                         ; $6908: $34
	sbc $55                                          ; $6909: $de $55
	sbc h                                            ; $690b: $9c
	ld b, e                                          ; $690c: $43
	inc sp                                           ; $690d: $33
	inc sp                                           ; $690e: $33
	ld a, e                                          ; $690f: $7b
	db $fd                                           ; $6910: $fd
	sbc [hl]                                         ; $6911: $9e
	inc sp                                           ; $6912: $33
	sbc $55                                          ; $6913: $de $55
	sbc $33                                          ; $6915: $de $33
	sbc [hl]                                         ; $6917: $9e
	ld [hl], $5f                                     ; $6918: $36 $5f
	or $99                                           ; $691a: $f6 $99
	inc [hl]                                         ; $691c: $34
	ld b, e                                          ; $691d: $43
	inc sp                                           ; $691e: $33
	scf                                              ; $691f: $37
	ld [hl], e                                       ; $6920: $73
	inc sp                                           ; $6921: $33
	jp c, $9c66                                      ; $6922: $da $66 $9c

	ld h, a                                          ; $6925: $67
	ld [hl], a                                       ; $6926: $77
	ld [hl], a                                       ; $6927: $77
	ld e, a                                          ; $6928: $5f
	or $da                                           ; $6929: $f6 $da
	inc sp                                           ; $692b: $33
	sbc h                                            ; $692c: $9c
	scf                                              ; $692d: $37
	ld [hl], a                                       ; $692e: $77
	ld [hl], a                                       ; $692f: $77
	and d                                            ; $6930: $a2
	add hl, bc                                       ; $6931: $09
	rst SubAFromDE                                          ; $6932: $df
	rst $38                                          ; $6933: $ff
	sbc b                                            ; $6934: $98
	cp a                                             ; $6935: $bf
	ld a, a                                          ; $6936: $7f
	or a                                             ; $6937: $b7
	rrca                                             ; $6938: $0f
	push af                                          ; $6939: $f5
	inc bc                                           ; $693a: $03
	cp $bf                                           ; $693b: $fe $bf
	sbc a                                            ; $693d: $9f
	db $d3                                           ; $693e: $d3
	sbc h                                            ; $693f: $9c
	ldh [$fe], a                                     ; $6940: $e0 $fe
	ld hl, sp-$27                                    ; $6942: $f8 $d9
	rst $38                                          ; $6944: $ff
	ld a, a                                          ; $6945: $7f
	ld [$e792], a                                    ; $6946: $ea $92 $e7
	rrca                                             ; $6949: $0f
	ld sp, hl                                        ; $694a: $f9
	inc bc                                           ; $694b: $03
	rst $38                                          ; $694c: $ff
	nop                                              ; $694d: $00
	add hl, sp                                       ; $694e: $39
	rst $38                                          ; $694f: $ff
	adc $ff                                          ; $6950: $ce $ff
	di                                               ; $6952: $f3
	rst $38                                          ; $6953: $ff
	db $fc                                           ; $6954: $fc
	jp c, $92ff                                      ; $6955: $da $ff $92

	ccf                                              ; $6958: $3f
	ld a, a                                          ; $6959: $7f
	rst $38                                          ; $695a: $ff
	rst $38                                          ; $695b: $ff
	ld a, a                                          ; $695c: $7f
	rst $38                                          ; $695d: $ff
	cp a                                             ; $695e: $bf
	rst $38                                          ; $695f: $ff
	rst GetHLinHL                                          ; $6960: $cf
	rst $38                                          ; $6961: $ff
	scf                                              ; $6962: $37
	rst $38                                          ; $6963: $ff
	call $e873                                       ; $6964: $cd $73 $e8
	sbc c                                            ; $6967: $99
	ld hl, sp-$10                                    ; $6968: $f8 $f0
	db $fc                                           ; $696a: $fc
	ld hl, sp-$01                                    ; $696b: $f8 $ff
	cp $d7                                           ; $696d: $fe $d7
	rst $38                                          ; $696f: $ff
	ei                                               ; $6970: $fb
	sbc d                                            ; $6971: $9a
	add b                                            ; $6972: $80
	nop                                              ; $6973: $00
	ldh [$c0], a                                     ; $6974: $e0 $c0
	ldh a, [$7b]                                     ; $6976: $f0 $7b
	and $df                                          ; $6978: $e6 $df
	cp $f1                                           ; $697a: $fe $f1
	sbc [hl]                                         ; $697c: $9e
	cp a                                             ; $697d: $bf
	or c                                             ; $697e: $b1
	ld e, a                                          ; $697f: $5f
	cp a                                             ; $6980: $bf
	ld d, a                                          ; $6981: $57
	dec hl                                           ; $6982: $2b
	ld e, $31                                        ; $6983: $1e $31
	ld h, b                                          ; $6985: $60
	rst $38                                          ; $6986: $ff
	rst $38                                          ; $6987: $ff
	rst $38                                          ; $6988: $ff
	rst $38                                          ; $6989: $ff
	rst $38                                          ; $698a: $ff
	cp a                                             ; $698b: $bf
	ld d, l                                          ; $698c: $55
	nop                                              ; $698d: $00
	rst $38                                          ; $698e: $ff
	or c                                             ; $698f: $b1
	rst $38                                          ; $6990: $ff
	rst $38                                          ; $6991: $ff
	rst $38                                          ; $6992: $ff
	rst $38                                          ; $6993: $ff
	rst $38                                          ; $6994: $ff
	ld d, l                                          ; $6995: $55
	nop                                              ; $6996: $00
	ld hl, sp-$0c                                    ; $6997: $f8 $f4
	ld hl, sp-$04                                    ; $6999: $f8 $fc
	cp $eb                                           ; $699b: $fe $eb
	ld d, b                                          ; $699d: $50
	nop                                              ; $699e: $00
	nop                                              ; $699f: $00
	cp c                                             ; $69a0: $b9
	nop                                              ; $69a1: $00
	nop                                              ; $69a2: $00
	nop                                              ; $69a3: $00
	nop                                              ; $69a4: $00
	add b                                            ; $69a5: $80
	ld h, b                                          ; $69a6: $60
	jr jr_049_69e8                                   ; $69a7: $18 $3f

	sbc [hl]                                         ; $69a9: $9e
	ld a, a                                          ; $69aa: $7f
	ld h, a                                          ; $69ab: $67
	cp $7b                                           ; $69ac: $fe $7b
	ld h, a                                          ; $69ae: $67
	rst SubAFromDE                                          ; $69af: $df
	ld a, a                                          ; $69b0: $7f
	rst SubAFromDE                                          ; $69b1: $df
	rst $38                                          ; $69b2: $ff
	sub b                                            ; $69b3: $90
	or $e4                                           ; $69b4: $f6 $e4
	rst $38                                          ; $69b6: $ff
	db $fd                                           ; $69b7: $fd
	rst AddAOntoHL                                          ; $69b8: $ef
	call $dfff                                       ; $69b9: $cd $ff $df

jr_049_69bc:
	ei                                               ; $69bc: $fb
	db $d3                                           ; $69bd: $d3
	rst $38                                          ; $69be: $ff
	rst $38                                          ; $69bf: $ff
	or a                                             ; $69c0: $b7
	rst FarCall                                          ; $69c1: $f7
	xor a                                            ; $69c2: $af
	db $dd                                           ; $69c3: $dd
	rst $38                                          ; $69c4: $ff
	ld a, e                                          ; $69c5: $7b
	ld h, c                                          ; $69c6: $61
	rst SubAFromDE                                          ; $69c7: $df
	cp $87                                           ; $69c8: $fe $87
	db $fc                                           ; $69ca: $fc
	db $fd                                           ; $69cb: $fd
	ld hl, sp-$0e                                    ; $69cc: $f8 $f2
	ld hl, sp-$1a                                    ; $69ce: $f8 $e6
	ldh a, [$99]                                     ; $69d0: $f0 $99
	jp $8733                                         ; $69d2: $c3 $33 $87


	ld h, a                                          ; $69d5: $67
	rrca                                             ; $69d6: $0f
	rst GetHLinHL                                          ; $69d7: $cf
	rra                                              ; $69d8: $1f
	sbc [hl]                                         ; $69d9: $9e
	ccf                                              ; $69da: $3f
	dec [hl]                                         ; $69db: $35
	ld a, a                                          ; $69dc: $7f
	ld l, d                                          ; $69dd: $6a
	rst $38                                          ; $69de: $ff
	ld d, l                                          ; $69df: $55
	rst $38                                          ; $69e0: $ff
	xor d                                            ; $69e1: $aa
	inc bc                                           ; $69e2: $03
	db $fc                                           ; $69e3: $fc
	rrca                                             ; $69e4: $0f
	db $fc                                           ; $69e5: $fc
	pop de                                           ; $69e6: $d1
	rst $38                                          ; $69e7: $ff

jr_049_69e8:
	sbc d                                            ; $69e8: $9a
	ld c, a                                          ; $69e9: $4f
	add b                                            ; $69ea: $80
	ei                                               ; $69eb: $fb
	ldh [$fb], a                                     ; $69ec: $e0 $fb
	ld h, [hl]                                       ; $69ee: $66
	pop de                                           ; $69ef: $d1
	sbc $ff                                          ; $69f0: $de $ff
	sbc [hl]                                         ; $69f2: $9e
	rst SubAFromDE                                          ; $69f3: $df
	ld a, d                                          ; $69f4: $7a
	and h                                            ; $69f5: $a4
	ld a, a                                          ; $69f6: $7f
	ld [hl], $9a                                     ; $69f7: $36 $9a
	rst AddAOntoHL                                          ; $69f9: $ef
	add b                                            ; $69fa: $80
	jp hl                                            ; $69fb: $e9


	ldh a, [$fd]                                     ; $69fc: $f0 $fd
	ld e, [hl]                                       ; $69fe: $5e
	jp c, Jump_049_7f93                              ; $69ff: $da $93 $7f

	xor a                                            ; $6a02: $af
	rra                                              ; $6a03: $1f
	db $fd                                           ; $6a04: $fd
	inc bc                                           ; $6a05: $03
	cp a                                             ; $6a06: $bf
	nop                                              ; $6a07: $00
	xor a                                            ; $6a08: $af
	ret nz                                           ; $6a09: $c0

	rst $38                                          ; $6a0a: $ff
	ldh a, [$3f]                                     ; $6a0b: $f0 $3f
	ld a, d                                          ; $6a0d: $7a
	or h                                             ; $6a0e: $b4
	ld a, [hl]                                       ; $6a0f: $7e
	cp b                                             ; $6a10: $b8
	ld [hl], a                                       ; $6a11: $77
	db $e4                                           ; $6a12: $e4
	ld a, [hl]                                       ; $6a13: $7e
	adc [hl]                                         ; $6a14: $8e
	sbc e                                            ; $6a15: $9b
	rst AddAOntoHL                                          ; $6a16: $ef
	rra                                              ; $6a17: $1f
	db $e4                                           ; $6a18: $e4
	nop                                              ; $6a19: $00
	ld l, a                                          ; $6a1a: $6f
	db $db                                           ; $6a1b: $db
	ld a, a                                          ; $6a1c: $7f
	jr c, jr_049_69bc                                ; $6a1d: $38 $9d

	ccf                                              ; $6a1f: $3f
	ret nz                                           ; $6a20: $c0

	db $dd                                           ; $6a21: $dd
	rst $38                                          ; $6a22: $ff
	sbc [hl]                                         ; $6a23: $9e
	ldh a, [c]                                       ; $6a24: $f2
	cp a                                             ; $6a25: $bf
	add b                                            ; $6a26: $80
	and b                                            ; $6a27: $a0
	sbc h                                            ; $6a28: $9c
	ret nz                                           ; $6a29: $c0

	rst SubAFromDE                                          ; $6a2a: $df
	ldh [rPCM12], a                                  ; $6a2b: $e0 $76
	and a                                            ; $6a2d: $a7
	ld e, [hl]                                       ; $6a2e: $5e
	and d                                            ; $6a2f: $a2
	ld a, a                                          ; $6a30: $7f
	ld sp, hl                                        ; $6a31: $f9
	ld a, e                                          ; $6a32: $7b
	jp c, $f07b                                      ; $6a33: $da $7b $f0

	sbc l                                            ; $6a36: $9d
	adc a                                            ; $6a37: $8f
	ldh a, [$67]                                     ; $6a38: $f0 $67
	ldh a, [rOCPD]                                   ; $6a3a: $f0 $6b
	ldh [$bc], a                                     ; $6a3c: $e0 $bc
	nop                                              ; $6a3e: $00
	nop                                              ; $6a3f: $00
	nop                                              ; $6a40: $00
	rst $38                                          ; $6a41: $ff
	inc b                                            ; $6a42: $04
	ld c, e                                          ; $6a43: $4b
	ldh a, [$9b]                                     ; $6a44: $f0 $9b
	ld bc, $fdff                                     ; $6a46: $01 $ff $fd
	ld [bc], a                                       ; $6a49: $02
	ld e, a                                          ; $6a4a: $5f
	ldh a, [$99]                                     ; $6a4b: $f0 $99
	cp $01                                           ; $6a4d: $fe $01
	ccf                                              ; $6a4f: $3f
	rst $38                                          ; $6a50: $ff
	ldh [$1f], a                                     ; $6a51: $e0 $1f
	ld [hl], a                                       ; $6a53: $77
	ldh a, [$9d]                                     ; $6a54: $f0 $9d
	rlca                                             ; $6a56: $07
	nop                                              ; $6a57: $00
	halt                                             ; $6a58: $76
	ret                                              ; $6a59: $c9


	sbc h                                            ; $6a5a: $9c
	ld a, [hl]                                       ; $6a5b: $7e
	rst $38                                          ; $6a5c: $ff
	ldh [rOCPD], a                                   ; $6a5d: $e0 $6b
	and c                                            ; $6a5f: $a1
	ld a, a                                          ; $6a60: $7f
	cp $95                                           ; $6a61: $fe $95
	adc a                                            ; $6a63: $8f
	ld a, a                                          ; $6a64: $7f
	rst SubAFromDE                                          ; $6a65: $df
	ld a, a                                          ; $6a66: $7f
	ld a, a                                          ; $6a67: $7f
	rst SubAFromDE                                          ; $6a68: $df
	rst $38                                          ; $6a69: $ff
	cp a                                             ; $6a6a: $bf
	cp [hl]                                          ; $6a6b: $be
	ld a, [hl]                                       ; $6a6c: $7e
	sbc $fc                                          ; $6a6d: $de $fc
	cp a                                             ; $6a6f: $bf
	db $fc                                           ; $6a70: $fc
	ret z                                            ; $6a71: $c8

	sub b                                            ; $6a72: $90
	pop hl                                           ; $6a73: $e1
	sbc c                                            ; $6a74: $99
	jp $87b2                                         ; $6a75: $c3 $b2 $87


	ld h, l                                          ; $6a78: $65
	rrca                                             ; $6a79: $0f
	ld c, d                                          ; $6a7a: $4a
	rra                                              ; $6a7b: $1f
	sub l                                            ; $6a7c: $95
	ccf                                              ; $6a7d: $3f
	and b                                            ; $6a7e: $a0
	ld a, a                                          ; $6a7f: $7f
	ld d, h                                          ; $6a80: $54
	ld l, e                                          ; $6a81: $6b
	ld d, a                                          ; $6a82: $57
	inc b                                            ; $6a83: $04
	sbc [hl]                                         ; $6a84: $9e
	ld a, [hl+]                                      ; $6a85: $2a
	ld a, e                                          ; $6a86: $7b
	rst GetHLinHL                                          ; $6a87: $cf
	ld c, [hl]                                       ; $6a88: $4e
	ldh a, [rBGP]                                    ; $6a89: $f0 $47
	ldh a, [$9e]                                     ; $6a8b: $f0 $9e
	dec d                                            ; $6a8d: $15
	ld [bc], a                                       ; $6a8e: $02
	ret nz                                           ; $6a8f: $c0

	db $d3                                           ; $6a90: $d3
	rst $38                                          ; $6a91: $ff
	ld a, a                                          ; $6a92: $7f
	ld l, b                                          ; $6a93: $68
	db $d3                                           ; $6a94: $d3
	rst $38                                          ; $6a95: $ff
	ld e, [hl]                                       ; $6a96: $5e
	call $f09e                                       ; $6a97: $cd $9e $f0
	ld a, e                                          ; $6a9a: $7b
	ld [de], a                                       ; $6a9b: $12
	sub e                                            ; $6a9c: $93
	rst $38                                          ; $6a9d: $ff
	add b                                            ; $6a9e: $80
	ld a, a                                          ; $6a9f: $7f
	add b                                            ; $6aa0: $80
	cp $fe                                           ; $6aa1: $fe $fe
	push af                                          ; $6aa3: $f5
	rst $38                                          ; $6aa4: $ff
	add b                                            ; $6aa5: $80
	rst $38                                          ; $6aa6: $ff
	rrca                                             ; $6aa7: $0f
	ldh a, [rPCM34]                                  ; $6aa8: $f0 $77
	ld d, h                                          ; $6aaa: $54
	sbc e                                            ; $6aab: $9b
	ld hl, sp+$07                                    ; $6aac: $f8 $07
	ldh a, [$0c]                                     ; $6aae: $f0 $0c
	ld a, e                                          ; $6ab0: $7b
	ld [hl+], a                                      ; $6ab1: $22
	ld a, [hl]                                       ; $6ab2: $7e
	sub $bd                                          ; $6ab3: $d6 $bd
	rst $38                                          ; $6ab5: $ff
	rst $38                                          ; $6ab6: $ff
	rst $38                                          ; $6ab7: $ff
	nop                                              ; $6ab8: $00
	ld [hl], e                                       ; $6ab9: $73
	rra                                              ; $6aba: $1f
	ld e, l                                          ; $6abb: $5d
	ret nz                                           ; $6abc: $c0

	inc bc                                           ; $6abd: $03
	ldh a, [$03]                                     ; $6abe: $f0 $03
	ldh a, [$27]                                     ; $6ac0: $f0 $27
	ldh a, [$7e]                                     ; $6ac2: $f0 $7e
	or d                                             ; $6ac4: $b2
	sbc e                                            ; $6ac5: $9b
	ld [$5515], a                                    ; $6ac6: $ea $15 $55
	xor d                                            ; $6ac9: $aa
	cp [hl]                                          ; $6aca: $be
	rst $38                                          ; $6acb: $ff
	nop                                              ; $6acc: $00
	nop                                              ; $6acd: $00
	sub a                                            ; $6ace: $97
	push de                                          ; $6acf: $d5
	ld a, [hl+]                                      ; $6ad0: $2a
	xor [hl]                                         ; $6ad1: $ae
	ld d, c                                          ; $6ad2: $51
	ld d, l                                          ; $6ad3: $55
	xor d                                            ; $6ad4: $aa
	xor d                                            ; $6ad5: $aa
	ld d, l                                          ; $6ad6: $55
	ld l, e                                          ; $6ad7: $6b
	ldh a, [$98]                                     ; $6ad8: $f0 $98
	ld bc, $aa55                                     ; $6ada: $01 $55 $aa
	cp e                                             ; $6add: $bb
	ld b, h                                          ; $6ade: $44
	ld [hl], a                                       ; $6adf: $77
	adc b                                            ; $6ae0: $88
	ld l, a                                          ; $6ae1: $6f
	ldh a, [$99]                                     ; $6ae2: $f0 $99
	ld bc, $aa00                                     ; $6ae4: $01 $00 $aa
	ld d, l                                          ; $6ae7: $55
	push de                                          ; $6ae8: $d5
	ld a, [hl+]                                      ; $6ae9: $2a
	ld [hl], a                                       ; $6aea: $77
	db $f4                                           ; $6aeb: $f4
	ld l, a                                          ; $6aec: $6f
	db $fc                                           ; $6aed: $fc
	sbc c                                            ; $6aee: $99
	ld h, $c0                                        ; $6aef: $26 $c0
	add b                                            ; $6af1: $80
	ld a, a                                          ; $6af2: $7f
	ld d, b                                          ; $6af3: $50
	xor a                                            ; $6af4: $af
	ld e, a                                          ; $6af5: $5f
	ldh a, [$9d]                                     ; $6af6: $f0 $9d
	ld d, l                                          ; $6af8: $55
	ld a, [hl+]                                      ; $6af9: $2a
	cp [hl]                                          ; $6afa: $be
	rst $38                                          ; $6afb: $ff
	rst $38                                          ; $6afc: $ff
	rst $38                                          ; $6afd: $ff
	sbc c                                            ; $6afe: $99
	ld b, b                                          ; $6aff: $40
	cp a                                             ; $6b00: $bf
	xor b                                            ; $6b01: $a8
	ld d, a                                          ; $6b02: $57
	ld d, h                                          ; $6b03: $54
	xor e                                            ; $6b04: $ab
	ld l, e                                          ; $6b05: $6b
	cp h                                             ; $6b06: $bc

jr_049_6b07:
	ld h, e                                          ; $6b07: $63
	cp $9b                                           ; $6b08: $fe $9b
	ret nz                                           ; $6b0a: $c0

	ccf                                              ; $6b0b: $3f
	jr nz, @+$21                                     ; $6b0c: $20 $1f

	halt                                             ; $6b0e: $76
	call c, $0a9e                                    ; $6b0f: $dc $9e $0a
	ld e, e                                          ; $6b12: $5b
	db $ec                                           ; $6b13: $ec
	ld a, a                                          ; $6b14: $7f
	ldh a, [$9b]                                     ; $6b15: $f0 $9b
	ld e, l                                          ; $6b17: $5d
	di                                               ; $6b18: $f3
	or d                                             ; $6b19: $b2
	pop hl                                           ; $6b1a: $e1
	ld [hl], a                                       ; $6b1b: $77
	db $ec                                           ; $6b1c: $ec
	sbc b                                            ; $6b1d: $98
	inc d                                            ; $6b1e: $14
	rst $38                                          ; $6b1f: $ff
	inc c                                            ; $6b20: $0c
	di                                               ; $6b21: $f3
	ld [de], a                                       ; $6b22: $12
	pop hl                                           ; $6b23: $e1
	cp a                                             ; $6b24: $bf
	halt                                             ; $6b25: $76
	jr c, jr_049_6b07                                ; $6b26: $38 $df

	rst $38                                          ; $6b28: $ff
	ld a, l                                          ; $6b29: $7d
	cp l                                             ; $6b2a: $bd
	ld a, c                                          ; $6b2b: $79
	ld b, $7e                                        ; $6b2c: $06 $7e
	add hl, sp                                       ; $6b2e: $39
	sbc l                                            ; $6b2f: $9d
	db $fd                                           ; $6b30: $fd
	di                                               ; $6b31: $f3
	ld [hl], l                                       ; $6b32: $75
	or [hl]                                          ; $6b33: $b6
	sbc l                                            ; $6b34: $9d
	rst SubAFromBC                                          ; $6b35: $e7
	ld hl, sp+$7a                                    ; $6b36: $f8 $7a
	db $dd                                           ; $6b38: $dd

jr_049_6b39:
	sub [hl]                                         ; $6b39: $96
	add b                                            ; $6b3a: $80
	rst AddAOntoHL                                          ; $6b3b: $ef
	jr jr_049_6b39                                   ; $6b3c: $18 $fb

	inc e                                            ; $6b3e: $1c
	ld a, a                                          ; $6b3f: $7f
	sbc h                                            ; $6b40: $9c
	rst $38                                          ; $6b41: $ff
	nop                                              ; $6b42: $00
	ld a, c                                          ; $6b43: $79
	or a                                             ; $6b44: $b7
	cp e                                             ; $6b45: $bb
	ld a, [$eaf5]                                    ; $6b46: $fa $f5 $ea
	push de                                          ; $6b49: $d5
	ld [$90e0], a                                    ; $6b4a: $ea $e0 $90
	stop                                             ; $6b4d: $10 $00
	db $eb                                           ; $6b4f: $eb
	add b                                            ; $6b50: $80
	ld a, h                                          ; $6b51: $7c
	sub b                                            ; $6b52: $90
	ccf                                              ; $6b53: $3f
	ld h, l                                          ; $6b54: $65
	inc de                                           ; $6b55: $13
	xor [hl]                                         ; $6b56: $ae
	rra                                              ; $6b57: $1f
	ld d, [hl]                                       ; $6b58: $56
	dec bc                                           ; $6b59: $0b
	and d                                            ; $6b5a: $a2
	inc bc                                           ; $6b5b: $03
	cp l                                             ; $6b5c: $bd
	nop                                              ; $6b5d: $00
	rst $38                                          ; $6b5e: $ff
	nop                                              ; $6b5f: $00
	rst $38                                          ; $6b60: $ff
	ld a, b                                          ; $6b61: $78
	add $bd                                          ; $6b62: $c6 $bd
	add b                                            ; $6b64: $80
	ret nz                                           ; $6b65: $c0

	nop                                              ; $6b66: $00
	nop                                              ; $6b67: $00
	ld [hl], e                                       ; $6b68: $73
	ldh a, [$5d]                                     ; $6b69: $f0 $5d
	jp nc, $f027                                     ; $6b6b: $d2 $27 $f0

	ld a, h                                          ; $6b6e: $7c
	ld l, d                                          ; $6b6f: $6a
	ld c, a                                          ; $6b70: $4f
	ldh a, [$ba]                                     ; $6b71: $f0 $ba
	nop                                              ; $6b73: $00
	nop                                              ; $6b74: $00
	nop                                              ; $6b75: $00
	nop                                              ; $6b76: $00
	rst $38                                          ; $6b77: $ff
	nop                                              ; $6b78: $00
	rst $38                                          ; $6b79: $ff
	rla                                              ; $6b7a: $17
	ldh a, [$9e]                                     ; $6b7b: $f0 $9e
	inc d                                            ; $6b7d: $14
	ld e, e                                          ; $6b7e: $5b
	ldh a, [$9e]                                     ; $6b7f: $f0 $9e
	ldh [$7b], a                                     ; $6b81: $e0 $7b
	db $f4                                           ; $6b83: $f4
	ld a, e                                          ; $6b84: $7b
	or [hl]                                          ; $6b85: $b6
	ld h, e                                          ; $6b86: $63
	ldh a, [$9a]                                     ; $6b87: $f0 $9a
	ld [$0101], sp                                   ; $6b89: $08 $01 $01
	rst $38                                          ; $6b8c: $ff
	dec bc                                           ; $6b8d: $0b
	ld [hl], l                                       ; $6b8e: $75
	ld b, b                                          ; $6b8f: $40
	adc d                                            ; $6b90: $8a
	rst $38                                          ; $6b91: $ff
	ld [bc], a                                       ; $6b92: $02
	nop                                              ; $6b93: $00
	dec b                                            ; $6b94: $05
	ld [bc], a                                       ; $6b95: $02
	ld [bc], a                                       ; $6b96: $02
	ld bc, $ff6f                                     ; $6b97: $01 $6f $ff
	sbc a                                            ; $6b9a: $9f
	ldh a, [$fa]                                     ; $6b9b: $f0 $fa
	ldh [$0d], a                                     ; $6b9d: $e0 $0d
	ldh [$fe], a                                     ; $6b9f: $e0 $fe
	ret nz                                           ; $6ba1: $c0

	rst SubAFromHL                                          ; $6ba2: $d7
	nop                                              ; $6ba3: $00
	cpl                                              ; $6ba4: $2f
	ld b, b                                          ; $6ba5: $40
	ld l, a                                          ; $6ba6: $6f
	rst SubAFromHL                                          ; $6ba7: $d7
	ld a, a                                          ; $6ba8: $7f
	cp $9e                                           ; $6ba9: $fe $9e
	ld a, a                                          ; $6bab: $7f
	cp l                                             ; $6bac: $bd
	rst $38                                          ; $6bad: $ff
	rst $38                                          ; $6bae: $ff
	rst $38                                          ; $6baf: $ff
	rlca                                             ; $6bb0: $07
	ld a, e                                          ; $6bb1: $7b
	rst SubAFromHL                                          ; $6bb2: $d7
	sbc l                                            ; $6bb3: $9d
	ld sp, hl                                        ; $6bb4: $f9
	ld b, $5e                                        ; $6bb5: $06 $5e
	pop hl                                           ; $6bb7: $e1
	sbc [hl]                                         ; $6bb8: $9e
	db $eb                                           ; $6bb9: $eb
	ld a, e                                          ; $6bba: $7b
	ldh a, [$9d]                                     ; $6bbb: $f0 $9d
	cp a                                             ; $6bbd: $bf
	ld b, b                                          ; $6bbe: $40
	ld a, b                                          ; $6bbf: $78
	ldh [$bd], a                                     ; $6bc0: $e0 $bd
	db $fc                                           ; $6bc2: $fc
	db $fc                                           ; $6bc3: $fc
	ld hl, sp+$3f                                    ; $6bc4: $f8 $3f
	ld a, e                                          ; $6bc6: $7b
	inc bc                                           ; $6bc7: $03
	sub d                                            ; $6bc8: $92
	ld a, [hl+]                                      ; $6bc9: $2a
	inc bc                                           ; $6bca: $03
	ld d, l                                          ; $6bcb: $55
	ld [bc], a                                       ; $6bcc: $02
	inc hl                                           ; $6bcd: $23
	ld [bc], a                                       ; $6bce: $02
	dec d                                            ; $6bcf: $15
	ld [bc], a                                       ; $6bd0: $02
	and d                                            ; $6bd1: $a2
	ld [bc], a                                       ; $6bd2: $02
	inc b                                            ; $6bd3: $04
	ld [bc], a                                       ; $6bd4: $02
	ld [$fa78], a                                    ; $6bd5: $ea $78 $fa
	ld a, l                                          ; $6bd8: $7d
	ld c, d                                          ; $6bd9: $4a
	add b                                            ; $6bda: $80
	add l                                            ; $6bdb: $85
	ld a, a                                          ; $6bdc: $7f
	ret nz                                           ; $6bdd: $c0

	ccf                                              ; $6bde: $3f
	ret nz                                           ; $6bdf: $c0

	ccf                                              ; $6be0: $3f
	ret z                                            ; $6be1: $c8

	scf                                              ; $6be2: $37
	adc $31                                          ; $6be3: $ce $31
	ret z                                            ; $6be5: $c8

	scf                                              ; $6be6: $37
	cp $71                                           ; $6be7: $fe $71
	cp a                                             ; $6be9: $bf
	ldh a, [$5f]                                     ; $6bea: $f0 $5f
	ldh a, [$ee]                                     ; $6bec: $f0 $ee
	ld sp, $33dd                                     ; $6bee: $31 $dd $33
	ld a, a                                          ; $6bf1: $7f
	ld sp, $30cf                                     ; $6bf2: $31 $cf $30
	rst AddAOntoHL                                          ; $6bf5: $ef
	jr nc, jr_049_6c27                               ; $6bf6: $30 $2f

	ret c                                            ; $6bf8: $d8

	ret c                                            ; $6bf9: $d8

	adc l                                            ; $6bfa: $8d
	db $ed                                           ; $6bfb: $ed
	push bc                                          ; $6bfc: $c5
	scf                                              ; $6bfd: $37
	and $1c                                          ; $6bfe: $e6 $1c
	ld a, c                                          ; $6c00: $79
	sbc h                                            ; $6c01: $9c
	adc h                                            ; $6c02: $8c
	cp $c1                                           ; $6c03: $fe $c1
	rrca                                             ; $6c05: $0f
	ldh a, [c]                                       ; $6c06: $f2
	rrca                                             ; $6c07: $0f
	push de                                          ; $6c08: $d5
	nop                                              ; $6c09: $00
	xor d                                            ; $6c0a: $aa
	add b                                            ; $6c0b: $80
	call nc, $a8bc                                   ; $6c0c: $d4 $bc $a8
	db $f4                                           ; $6c0f: $f4
	add b                                            ; $6c10: $80
	ld hl, sp-$60                                    ; $6c11: $f8 $a0
	sbc e                                            ; $6c13: $9b
	pop bc                                           ; $6c14: $c1
	ld b, $03                                        ; $6c15: $06 $03
	ld [bc], a                                       ; $6c17: $02
	ld h, a                                          ; $6c18: $67
	cp $89                                           ; $6c19: $fe $89
	ld a, e                                          ; $6c1b: $7b
	ld a, $9b                                        ; $6c1c: $3e $9b
	ld l, [hl]                                       ; $6c1e: $6e
	dec de                                           ; $6c1f: $1b
	ld a, b                                          ; $6c20: $78
	add b                                            ; $6c21: $80
	ld d, d                                          ; $6c22: $52
	inc c                                            ; $6c23: $0c
	xor $1f                                          ; $6c24: $ee $1f
	ld [hl], l                                       ; $6c26: $75

jr_049_6c27:
	ccf                                              ; $6c27: $3f
	ld sp, hl                                        ; $6c28: $f9
	ld a, l                                          ; $6c29: $7d
	ld [hl-], a                                      ; $6c2a: $32
	ld a, c                                          ; $6c2b: $79
	push de                                          ; $6c2c: $d5
	ld a, [de]                                       ; $6c2d: $1a
	ld a, d                                          ; $6c2e: $7a
	inc d                                            ; $6c2f: $14
	ld d, b                                          ; $6c30: $50
	cp l                                             ; $6c31: $bd
	xor d                                            ; $6c32: $aa
	ld d, l                                          ; $6c33: $55
	xor e                                            ; $6c34: $ab
	rst SubAFromDE                                          ; $6c35: $df
	adc a                                            ; $6c36: $8f
	adc b                                            ; $6c37: $88
	xor a                                            ; $6c38: $af
	ld [$04df], sp                                   ; $6c39: $08 $df $04
	xor a                                            ; $6c3c: $af
	nop                                              ; $6c3d: $00
	ld a, [de]                                       ; $6c3e: $1a
	inc b                                            ; $6c3f: $04
	and l                                            ; $6c40: $a5
	ld c, $5a                                        ; $6c41: $0e $5a
	inc b                                            ; $6c43: $04
	xor e                                            ; $6c44: $ab
	inc b                                            ; $6c45: $04
	ld c, d                                          ; $6c46: $4a
	ld [hl], e                                       ; $6c47: $73
	db $fc                                           ; $6c48: $fc
	sbc l                                            ; $6c49: $9d
	ld a, [hl+]                                      ; $6c4a: $2a
	inc b                                            ; $6c4b: $04
	ld [hl], a                                       ; $6c4c: $77
	ld a, $9c                                        ; $6c4d: $3e $9c
	call nz, $dfc0                                   ; $6c4f: $c4 $c0 $df
	ld [hl], a                                       ; $6c52: $77
	cp $95                                           ; $6c53: $fe $95
	add h                                            ; $6c55: $84
	sbc a                                            ; $6c56: $9f
	inc bc                                           ; $6c57: $03
	rra                                              ; $6c58: $1f
	ld bc, $0007                                     ; $6c59: $01 $07 $00
	rst $38                                          ; $6c5c: $ff
	ldh a, [$3f]                                     ; $6c5d: $f0 $3f
	ld [hl], c                                       ; $6c5f: $71
	db $fd                                           ; $6c60: $fd
	sbc l                                            ; $6c61: $9d
	rst $38                                          ; $6c62: $ff
	ld l, b                                          ; $6c63: $68
	ld a, c                                          ; $6c64: $79
	dec de                                           ; $6c65: $1b
	ld a, a                                          ; $6c66: $7f
	ld d, b                                          ; $6c67: $50
	sub a                                            ; $6c68: $97
	ld a, d                                          ; $6c69: $7a
	rst $38                                          ; $6c6a: $ff
	ld e, a                                          ; $6c6b: $5f
	ld h, a                                          ; $6c6c: $67
	ld bc, $01ef                                     ; $6c6d: $01 $ef $01
	rst $38                                          ; $6c70: $ff
	ld a, e                                          ; $6c71: $7b
	cp $9e                                           ; $6c72: $fe $9e
	db $fd                                           ; $6c74: $fd
	cp a                                             ; $6c75: $bf
	rst $38                                          ; $6c76: $ff
	db $f4                                           ; $6c77: $f4
	sub b                                            ; $6c78: $90
	dec bc                                           ; $6c79: $0b
	ld a, [$fdf5]                                    ; $6c7a: $fa $f5 $fd
	add d                                            ; $6c7d: $82
	ld a, [$fd05]                                    ; $6c7e: $fa $05 $fd
	and d                                            ; $6c81: $a2
	cp $01                                           ; $6c82: $fe $01
	db $fd                                           ; $6c84: $fd
	ld [bc], a                                       ; $6c85: $02
	ld a, [$7905]                                    ; $6c86: $fa $05 $79
	sbc a                                            ; $6c89: $9f
	cp h                                             ; $6c8a: $bc
	nop                                              ; $6c8b: $00
	ld bc, $0403                                     ; $6c8c: $01 $03 $04
	ld [$038a], sp                                   ; $6c8f: $08 $8a $03
	add hl, bc                                       ; $6c92: $09
	inc e                                            ; $6c93: $1c
	nop                                              ; $6c94: $00
	nop                                              ; $6c95: $00
	ld de, $69e0                                     ; $6c96: $11 $e0 $69
	ld d, $c2                                        ; $6c99: $16 $c2
	inc a                                            ; $6c9b: $3c
	inc sp                                           ; $6c9c: $33
	ld hl, sp+$14                                    ; $6c9d: $f8 $14
	dec de                                           ; $6c9f: $1b
	ld c, b                                          ; $6ca0: $48
	sub b                                            ; $6ca1: $90
	add d                                            ; $6ca2: $82
	ld a, h                                          ; $6ca3: $7c
	push hl                                          ; $6ca4: $e5
	ld b, e                                          ; $6ca5: $43
	ld d, a                                          ; $6ca6: $57
	cp $80                                           ; $6ca7: $fe $80
	ld h, l                                          ; $6ca9: $65
	jp $7f80                                         ; $6caa: $c3 $80 $7f


	rst $38                                          ; $6cad: $ff
	ld a, b                                          ; $6cae: $78
	add b                                            ; $6caf: $80
	ld a, a                                          ; $6cb0: $7f
	add e                                            ; $6cb1: $83
	rst $38                                          ; $6cb2: $ff
	cp $e0                                           ; $6cb3: $fe $e0
	rst $38                                          ; $6cb5: $ff
	nop                                              ; $6cb6: $00
	ld d, l                                          ; $6cb7: $55
	ld bc, rIE                                     ; $6cb8: $01 $ff $ff
	push hl                                          ; $6cbb: $e5
	and $94                                          ; $6cbc: $e6 $94
	daa                                              ; $6cbe: $27
	dec d                                            ; $6cbf: $15
	and $84                                          ; $6cc0: $e6 $84
	rst SubAFromBC                                          ; $6cc2: $e7
	dec b                                            ; $6cc3: $05
	ld h, $44                                        ; $6cc4: $26 $44
	ld h, a                                          ; $6cc6: $67
	ld b, l                                          ; $6cc7: $45
	adc e                                            ; $6cc8: $8b
	ld h, [hl]                                       ; $6cc9: $66
	call nz, $ffe7                                   ; $6cca: $c4 $e7 $ff
	scf                                              ; $6ccd: $37

jr_049_6cce:
	ld hl, sp+$34                                    ; $6cce: $f8 $34
	ld a, b                                          ; $6cd0: $78
	or h                                             ; $6cd1: $b4
	cp e                                             ; $6cd2: $bb
	ld [hl], h                                       ; $6cd3: $74
	dec sp                                           ; $6cd4: $3b
	db $f4                                           ; $6cd5: $f4
	cp b                                             ; $6cd6: $b8
	ld [hl], h                                       ; $6cd7: $74
	jr c, jr_049_6cce                                ; $6cd8: $38 $f4

	cp e                                             ; $6cda: $bb
	ld [hl], h                                       ; $6cdb: $74
	ld hl, sp+$72                                    ; $6cdc: $f8 $72
	ld a, b                                          ; $6cde: $78
	sbc h                                            ; $6cdf: $9c
	ldh [c], a                                       ; $6ce0: $e2
	dec e                                            ; $6ce1: $1d
	sbc h                                            ; $6ce2: $9c
	cp [hl]                                          ; $6ce3: $be
	nop                                              ; $6ce4: $00
	rst SubAFromBC                                          ; $6ce5: $e7
	ld d, d                                          ; $6ce6: $52
	sub e                                            ; $6ce7: $93
	xor l                                            ; $6ce8: $ad
	ld h, l                                          ; $6ce9: $65
	jp nc, Jump_049_5a62                             ; $6cea: $d2 $62 $5a

	ld h, l                                          ; $6ced: $65
	ld e, d                                          ; $6cee: $5a
	ld [$6556], a                                    ; $6cef: $ea $56 $65
	ld e, d                                          ; $6cf2: $5a
	ld l, d                                          ; $6cf3: $6a
	ld [hl], e                                       ; $6cf4: $73
	db $fc                                           ; $6cf5: $fc
	sbc l                                            ; $6cf6: $9d
	ld b, h                                          ; $6cf7: $44
	dec sp                                           ; $6cf8: $3b
	halt                                             ; $6cf9: $76
	add d                                            ; $6cfa: $82
	sbc [hl]                                         ; $6cfb: $9e
	cp a                                             ; $6cfc: $bf
	cp h                                             ; $6cfd: $bc
	ld e, a                                          ; $6cfe: $5f
	xor a                                            ; $6cff: $af
	ld d, [hl]                                       ; $6d00: $56
	xor e                                            ; $6d01: $ab
	sbc d                                            ; $6d02: $9a
	add b                                            ; $6d03: $80
	ld h, a                                          ; $6d04: $67
	or l                                             ; $6d05: $b5
	and $5e                                          ; $6d06: $e6 $5e
	pop hl                                           ; $6d08: $e1
	ccf                                              ; $6d09: $3f
	ldh [$7f], a                                     ; $6d0a: $e0 $7f
	ldh [$8d], a                                     ; $6d0c: $e0 $8d
	ldh a, [rTMA]                                    ; $6d0e: $f0 $06
	ld hl, sp-$1b                                    ; $6d10: $f8 $e5
	ld hl, sp-$45                                    ; $6d12: $f8 $bb
	ld a, h                                          ; $6d14: $7c
	and [hl]                                         ; $6d15: $a6
	ld c, b                                          ; $6d16: $48
	ld a, [$bc04]                                    ; $6d17: $fa $04 $bc
	ld a, e                                          ; $6d1a: $7b
	and b                                            ; $6d1b: $a0
	ld c, h                                          ; $6d1c: $4c
	ld b, b                                          ; $6d1d: $40
	inc b                                            ; $6d1e: $04
	and b                                            ; $6d1f: $a0
	inc b                                            ; $6d20: $04
	ld b, b                                          ; $6d21: $40
	inc b                                            ; $6d22: $04
	adc c                                            ; $6d23: $89
	ret nc                                           ; $6d24: $d0

	ld [hl+], a                                      ; $6d25: $22
	ld bc, $0304                                     ; $6d26: $01 $04 $03
	ld [$9046], sp                                   ; $6d29: $08 $46 $90
	cp $40                                           ; $6d2c: $fe $40
	ld [hl], l                                       ; $6d2e: $75
	ld [$3001], sp                                   ; $6d2f: $08 $01 $30
	nop                                              ; $6d32: $00
	nop                                              ; $6d33: $00
	adc [hl]                                         ; $6d34: $8e
	ld e, e                                          ; $6d35: $5b
	rrca                                             ; $6d36: $0f
	sbc d                                            ; $6d37: $9a
	rrca                                             ; $6d38: $0f
	ld a, [de]                                       ; $6d39: $1a
	ld [hl], e                                       ; $6d3a: $73

Call_049_6d3b:
	cp $9d                                           ; $6d3b: $fe $9d
	jp c, $7bcf                                      ; $6d3d: $da $cf $7b

	ld a, [$a58e]                                    ; $6d40: $fa $8e $a5
	ld a, [hl]                                       ; $6d43: $7e
	ld h, [hl]                                       ; $6d44: $66
	sbc e                                            ; $6d45: $9b
	ld d, b                                          ; $6d46: $50
	sbc a                                            ; $6d47: $9f
	ld c, b                                          ; $6d48: $48
	cp a                                             ; $6d49: $bf
	ld [hl], l                                       ; $6d4a: $75
	sbc a                                            ; $6d4b: $9f
	ld e, a                                          ; $6d4c: $5f
	sbc a                                            ; $6d4d: $9f
	ld c, d                                          ; $6d4e: $4a
	sbc a                                            ; $6d4f: $9f
	ld b, h                                          ; $6d50: $44
	sbc a                                            ; $6d51: $9f
	sbc $bf                                          ; $6d52: $de $bf
	cp a                                             ; $6d54: $bf
	push de                                          ; $6d55: $d5
	sbc [hl]                                         ; $6d56: $9e
	add b                                            ; $6d57: $80
	ld a, d                                          ; $6d58: $7a
	adc h                                            ; $6d59: $8c
	ld a, e                                          ; $6d5a: $7b
	db $fc                                           ; $6d5b: $fc
	sub [hl]                                         ; $6d5c: $96
	db $f4                                           ; $6d5d: $f4
	ret nz                                           ; $6d5e: $c0

	ld [hl], e                                       ; $6d5f: $73
	and e                                            ; $6d60: $a3
	ld c, d                                          ; $6d61: $4a
	inc b                                            ; $6d62: $04
	xor d                                            ; $6d63: $aa
	inc b                                            ; $6d64: $04
	ld a, [bc]                                       ; $6d65: $0a
	ld h, e                                          ; $6d66: $63
	cp $96                                           ; $6d67: $fe $96
	ei                                               ; $6d69: $fb
	inc b                                            ; $6d6a: $04
	rra                                              ; $6d6b: $1f
	dec c                                            ; $6d6c: $0d
	rra                                              ; $6d6d: $1f
	rlca                                             ; $6d6e: $07
	ld a, a                                          ; $6d6f: $7f
	rlca                                             ; $6d70: $07
	rst $38                                          ; $6d71: $ff
	cp l                                             ; $6d72: $bd
	ld b, b                                          ; $6d73: $40
	nop                                              ; $6d74: $00
	inc de                                           ; $6d75: $13
	rst $38                                          ; $6d76: $ff
	rst SubAFromDE                                          ; $6d77: $df
	rst $38                                          ; $6d78: $ff
	sbc h                                            ; $6d79: $9c
	cp $fc                                           ; $6d7a: $fe $fc
	db $fc                                           ; $6d7c: $fc
	ld a, d                                          ; $6d7d: $7a
	ret z                                            ; $6d7e: $c8

	cp [hl]                                          ; $6d7f: $be
	nop                                              ; $6d80: $00
	nop                                              ; $6d81: $00
	cp $7a                                           ; $6d82: $fe $7a
	ld [hl+], a                                      ; $6d84: $22
	halt                                             ; $6d85: $76
	add d                                            ; $6d86: $82
	ld a, a                                          ; $6d87: $7f
	db $fc                                           ; $6d88: $fc
	ld a, [hl]                                       ; $6d89: $7e
	reti                                             ; $6d8a: $d9


	adc d                                            ; $6d8b: $8a
	ld [hl], d                                       ; $6d8c: $72
	nop                                              ; $6d8d: $00
	cp h                                             ; $6d8e: $bc
	ld a, b                                          ; $6d8f: $78
	sbc $7c                                          ; $6d90: $de $7c
	rst GetHLinHL                                          ; $6d92: $cf
	ld a, h                                          ; $6d93: $7c
	sbc l                                            ; $6d94: $9d
	ld c, $5f                                        ; $6d95: $0e $5f
	ld a, [de]                                       ; $6d97: $1a
	or e                                             ; $6d98: $b3
	ld a, [de]                                       ; $6d99: $1a
	inc sp                                           ; $6d9a: $33
	ld a, $2b                                        ; $6d9b: $3e $2b
	ld a, [hl]                                       ; $6d9d: $7e
	ld d, a                                          ; $6d9e: $57
	ld a, [hl]                                       ; $6d9f: $7e
	ld a, [hl]                                       ; $6da0: $7e
	ld a, b                                          ; $6da1: $78
	jp hl                                            ; $6da2: $e9


	add a                                            ; $6da3: $87
	db $fd                                           ; $6da4: $fd
	ld a, $cd                                        ; $6da5: $3e $cd
	ld [hl], $ef                                     ; $6da7: $36 $ef
	db $10                                           ; $6da9: $10
	ld c, c                                          ; $6daa: $49
	ld a, $bc                                        ; $6dab: $3e $bc
	ld a, a                                          ; $6dad: $7f
	ld d, h                                          ; $6dae: $54
	ei                                               ; $6daf: $fb
	db $eb                                           ; $6db0: $eb
	db $fd                                           ; $6db1: $fd
	cp a                                             ; $6db2: $bf
	ld b, b                                          ; $6db3: $40
	ld h, b                                          ; $6db4: $60
	inc sp                                           ; $6db5: $33
	ld b, b                                          ; $6db6: $40
	pop de                                           ; $6db7: $d1
	ld c, d                                          ; $6db8: $4a
	sbc l                                            ; $6db9: $9d
	ld l, l                                          ; $6dba: $6d
	ld [de], a                                       ; $6dbb: $12
	cp a                                             ; $6dbc: $bf
	sub b                                            ; $6dbd: $90
	ret nc                                           ; $6dbe: $d0

	sbc e                                            ; $6dbf: $9b
	rst SubAFromDE                                          ; $6dc0: $df
	ldh [$c0], a                                     ; $6dc1: $e0 $c0
	ld bc, $ca6e                                     ; $6dc3: $01 $6e $ca
	ld h, a                                          ; $6dc6: $67
	cp $94                                           ; $6dc7: $fe $94
	sbc l                                            ; $6dc9: $9d
	inc hl                                           ; $6dca: $23
	ld d, l                                          ; $6dcb: $55
	nop                                              ; $6dcc: $00
	rst SubAFromBC                                          ; $6dcd: $e7
	call nz, $ffbf                                   ; $6dce: $c4 $bf $ff
	inc b                                            ; $6dd1: $04
	rst $38                                          ; $6dd2: $ff
	push de                                          ; $6dd3: $d5
	cp [hl]                                          ; $6dd4: $be
	ld l, e                                          ; $6dd5: $6b
	dec d                                            ; $6dd6: $15
	cp $8d                                           ; $6dd7: $fe $8d
	rst $38                                          ; $6dd9: $ff
	dec b                                            ; $6dda: $05
	ld h, $54                                        ; $6ddb: $26 $54
	daa                                              ; $6ddd: $27
	push de                                          ; $6dde: $d5
	and $10                                          ; $6ddf: $e6 $10
	db $e4                                           ; $6de1: $e4
	ldh a, [rDIV]                                    ; $6de2: $f0 $04
	add hl, sp                                       ; $6de4: $39
	call nz, $06f3                                   ; $6de5: $c4 $f3 $06
	ld l, d                                          ; $6de8: $6a
	rst SubAFromBC                                          ; $6de9: $e7
	dec sp                                           ; $6dea: $3b
	ld a, d                                          ; $6deb: $7a
	call z, $3f90                                    ; $6dec: $cc $90 $3f
	rst FarCall                                          ; $6def: $f7
	scf                                              ; $6df0: $37
	jr nc, jr_049_6e67                               ; $6df1: $30 $74

	db $10                                           ; $6df3: $10
	rst SubAFromDE                                          ; $6df4: $df
	db $10                                           ; $6df5: $10
	ccf                                              ; $6df6: $3f
	db $10                                           ; $6df7: $10
	ld hl, sp-$10                                    ; $6df8: $f8 $f0
	adc h                                            ; $6dfa: $8c
	ld bc, $7b81                                     ; $6dfb: $01 $81 $7b
	ld l, d                                          ; $6dfe: $6a
	sbc b                                            ; $6dff: $98
	ret nz                                           ; $6e00: $c0

	ld a, a                                          ; $6e01: $7f
	rst $38                                          ; $6e02: $ff
	ld a, a                                          ; $6e03: $7f
	cp $01                                           ; $6e04: $fe $01
	rst GetHLinHL                                          ; $6e06: $cf
	cp a                                             ; $6e07: $bf
	rra                                              ; $6e08: $1f
	push hl                                          ; $6e09: $e5
	ld a, d                                          ; $6e0a: $7a
	call nz, $e78c                                   ; $6e0b: $c4 $8c $e7
	db $db                                           ; $6e0e: $db
	ld c, d                                          ; $6e0f: $4a
	sub a                                            ; $6e10: $97
	and [hl]                                         ; $6e11: $a6
	db $db                                           ; $6e12: $db
	ld a, [bc]                                       ; $6e13: $0a
	rst SubAFromHL                                          ; $6e14: $d7
	add $1b                                          ; $6e15: $c6 $1b
	ld c, d                                          ; $6e17: $4a
	rla                                              ; $6e18: $17
	ld d, a                                          ; $6e19: $57
	nop                                              ; $6e1a: $00
	xor d                                            ; $6e1b: $aa
	ld bc, $e0d5                                     ; $6e1c: $01 $d5 $e0
	ld a, $7a                                        ; $6e1f: $3e $7a
	ld hl, $ffbf                                     ; $6e21: $21 $bf $ff
	rst $38                                          ; $6e24: $ff
	sub d                                            ; $6e25: $92
	ld bc, $e6fe                                     ; $6e26: $01 $fe $e6
	ld hl, sp-$2b                                    ; $6e29: $f8 $d5
	ld hl, sp-$44                                    ; $6e2b: $f8 $bc
	cp $be                                           ; $6e2d: $fe $be
	cp $18                                           ; $6e2f: $fe $18
	rst $38                                          ; $6e31: $ff
	db $10                                           ; $6e32: $10
	ld [hl], a                                       ; $6e33: $77
	add hl, sp                                       ; $6e34: $39
	sbc l                                            ; $6e35: $9d
	rst $38                                          ; $6e36: $ff
	add d                                            ; $6e37: $82
	ld a, e                                          ; $6e38: $7b
	ld a, [de]                                       ; $6e39: $1a
	sbc e                                            ; $6e3a: $9b
	dec de                                           ; $6e3b: $1b
	ld [$0819], sp                                   ; $6e3c: $08 $19 $08
	ld [hl], a                                       ; $6e3f: $77
	db $e4                                           ; $6e40: $e4
	sbc d                                            ; $6e41: $9a
	ld [bc], a                                       ; $6e42: $02
	db $fd                                           ; $6e43: $fd
	ld bc, $00fe                                     ; $6e44: $01 $fe $00
	cp l                                             ; $6e47: $bd
	ld b, b                                          ; $6e48: $40
	ld a, [hl+]                                      ; $6e49: $2a
	ld d, l                                          ; $6e4a: $55
	rst $38                                          ; $6e4b: $ff
	ld a, c                                          ; $6e4c: $79
	ld [$d47c], sp                                   ; $6e4d: $08 $7c $d4
	sbc b                                            ; $6e50: $98
	ld b, b                                          ; $6e51: $40
	add b                                            ; $6e52: $80
	rrca                                             ; $6e53: $0f
	ld a, [de]                                       ; $6e54: $1a
	ld c, a                                          ; $6e55: $4f
	ld a, [de]                                       ; $6e56: $1a
	cp a                                             ; $6e57: $bf
	ld a, e                                          ; $6e58: $7b
	db $fc                                           ; $6e59: $fc
	adc e                                            ; $6e5a: $8b
	rra                                              ; $6e5b: $1f
	ld a, [$12e3]                                    ; $6e5c: $fa $e3 $12
	db $10                                           ; $6e5f: $10
	ld [$0c18], sp                                   ; $6e60: $08 $18 $0c
	ld l, b                                          ; $6e63: $68
	adc a                                            ; $6e64: $8f
	cpl                                              ; $6e65: $2f
	rst JumpTable                                          ; $6e66: $c7

jr_049_6e67:
	ccf                                              ; $6e67: $3f
	rst SubAFromBC                                          ; $6e68: $e7
	dec a                                            ; $6e69: $3d
	ei                                               ; $6e6a: $fb
	inc [hl]                                         ; $6e6b: $34
	ld sp, hl                                        ; $6e6c: $f9
	ld a, [hl]                                       ; $6e6d: $7e
	add c                                            ; $6e6e: $81
	ld [hl], a                                       ; $6e6f: $77
	inc b                                            ; $6e70: $04
	sub [hl]                                         ; $6e71: $96
	xor h                                            ; $6e72: $ac
	ld b, b                                          ; $6e73: $40
	cpl                                              ; $6e74: $2f
	ret nc                                           ; $6e75: $d0

	ret nz                                           ; $6e76: $c0

	rst $38                                          ; $6e77: $ff
	add b                                            ; $6e78: $80
	add b                                            ; $6e79: $80
	or c                                             ; $6e7a: $b1
	ld a, e                                          ; $6e7b: $7b
	adc $7e                                          ; $6e7c: $ce $7e
	ld e, b                                          ; $6e7e: $58
	sbc [hl]                                         ; $6e7f: $9e
	ldh a, [$be]                                     ; $6e80: $f0 $be
	nop                                              ; $6e82: $00
	rst $38                                          ; $6e83: $ff
	ld [bc], a                                       ; $6e84: $02
	sbc e                                            ; $6e85: $9b
	rst $38                                          ; $6e86: $ff
	and [hl]                                         ; $6e87: $a6
	ld [bc], a                                       ; $6e88: $02
	ld e, [hl]                                       ; $6e89: $5e
	ld a, b                                          ; $6e8a: $78
	and $7c                                          ; $6e8b: $e6 $7c
	ld [hl+], a                                      ; $6e8d: $22
	ld a, l                                          ; $6e8e: $7d
	sub [hl]                                         ; $6e8f: $96
	ld [hl], b                                       ; $6e90: $70
	ld [hl], c                                       ; $6e91: $71
	ld [hl], d                                       ; $6e92: $72
	pop de                                           ; $6e93: $d1
	ld [hl], h                                       ; $6e94: $74
	adc [hl]                                         ; $6e95: $8e
	sbc [hl]                                         ; $6e96: $9e
	add e                                            ; $6e97: $83
	cp [hl]                                          ; $6e98: $be
	nop                                              ; $6e99: $00
	rst $38                                          ; $6e9a: $ff
	inc bc                                           ; $6e9b: $03
	ld a, a                                          ; $6e9c: $7f
	sbc b                                            ; $6e9d: $98
	ld a, a                                          ; $6e9e: $7f
	call c, $a27d                                    ; $6e9f: $dc $7d $a2
	adc a                                            ; $6ea2: $8f
	rst $38                                          ; $6ea3: $ff
	inc bc                                           ; $6ea4: $03
	rlca                                             ; $6ea5: $07
	rst $38                                          ; $6ea6: $ff
	rlca                                             ; $6ea7: $07
	ld a, b                                          ; $6ea8: $78
	ld a, h                                          ; $6ea9: $7c
	ei                                               ; $6eaa: $fb
	ld a, h                                          ; $6eab: $7c
	ld h, a                                          ; $6eac: $67
	cp b                                             ; $6ead: $b8
	cp e                                             ; $6eae: $bb
	ld a, b                                          ; $6eaf: $78
	ld a, [hl]                                       ; $6eb0: $7e
	rst $38                                          ; $6eb1: $ff
	add c                                            ; $6eb2: $81
	ld l, h                                          ; $6eb3: $6c
	xor l                                            ; $6eb4: $ad
	ld a, e                                          ; $6eb5: $7b
	ret c                                            ; $6eb6: $d8

	sub e                                            ; $6eb7: $93
	add a                                            ; $6eb8: $87
	ld a, b                                          ; $6eb9: $78
	nop                                              ; $6eba: $00
	jr nz, @+$06                                     ; $6ebb: $20 $04

	db $e3                                           ; $6ebd: $e3
	cp a                                             ; $6ebe: $bf
	rst $38                                          ; $6ebf: $ff
	cp $c0                                           ; $6ec0: $fe $c0
	db $fd                                           ; $6ec2: $fd
	ldh [c], a                                       ; $6ec3: $e2
	ld a, e                                          ; $6ec4: $7b
	ldh a, [$7f]                                     ; $6ec5: $f0 $7f
	ld de, $c89b                                     ; $6ec7: $11 $9b $c8
	rrca                                             ; $6eca: $0f
	rst GetHLinHL                                          ; $6ecb: $cf
	ret nz                                           ; $6ecc: $c0

	ld a, b                                          ; $6ecd: $78
	and [hl]                                         ; $6ece: $a6
	ld a, a                                          ; $6ecf: $7f
	and b                                            ; $6ed0: $a0
	sbc b                                            ; $6ed1: $98
	call nz, $0078                                   ; $6ed2: $c4 $78 $00
	ld bc, $fffa                                     ; $6ed5: $01 $fa $ff
	db $fc                                           ; $6ed8: $fc
	ld a, c                                          ; $6ed9: $79
	ld l, l                                          ; $6eda: $6d
	sbc [hl]                                         ; $6edb: $9e
	ld a, h                                          ; $6edc: $7c
	ld [hl], e                                       ; $6edd: $73
	ld e, [hl]                                       ; $6ede: $5e
	adc e                                            ; $6edf: $8b
	ccf                                              ; $6ee0: $3f
	ld a, a                                          ; $6ee1: $7f
	adc l                                            ; $6ee2: $8d
	inc de                                           ; $6ee3: $13
	dec b                                            ; $6ee4: $05
	adc e                                            ; $6ee5: $8b
	add l                                            ; $6ee6: $85
	jp $c345                                         ; $6ee7: $c3 $45 $c3


	ld b, l                                          ; $6eea: $45
	db $e3                                           ; $6eeb: $e3
	push hl                                          ; $6eec: $e5
	db $e3                                           ; $6eed: $e3
	db $fd                                           ; $6eee: $fd
	inc bc                                           ; $6eef: $03
	ld c, c                                          ; $6ef0: $49
	add a                                            ; $6ef1: $87
	ld e, $3f                                        ; $6ef2: $1e $3f
	ld [hl], b                                       ; $6ef4: $70
	ld c, a                                          ; $6ef5: $4f
	cp a                                             ; $6ef6: $bf
	ld a, a                                          ; $6ef7: $7f
	ccf                                              ; $6ef8: $3f
	rst SubAFromDE                                          ; $6ef9: $df
	ld a, a                                          ; $6efa: $7f
	ld a, [hl]                                       ; $6efb: $7e
	add c                                            ; $6efc: $81
	add b                                            ; $6efd: $80
	add b                                            ; $6efe: $80
	ld [hl-], a                                      ; $6eff: $32
	rst SubAFromBC                                          ; $6f00: $e7
	ld a, [$02e7]                                    ; $6f01: $fa $e7 $02
	rst SubAFromBC                                          ; $6f04: $e7
	ld a, [bc]                                       ; $6f05: $0a
	rlca                                             ; $6f06: $07
	ld [hl], d                                       ; $6f07: $72
	add a                                            ; $6f08: $87
	ei                                               ; $6f09: $fb
	rst FarCall                                          ; $6f0a: $f7
	ei                                               ; $6f0b: $fb
	inc b                                            ; $6f0c: $04
	rst $38                                          ; $6f0d: $ff
	nop                                              ; $6f0e: $00
	sbc [hl]                                         ; $6f0f: $9e
	di                                               ; $6f10: $f3
	sbc a                                            ; $6f11: $9f
	di                                               ; $6f12: $f3
	inc e                                            ; $6f13: $1c
	di                                               ; $6f14: $f3
	rra                                              ; $6f15: $1f
	ldh a, [$1f]                                     ; $6f16: $f0 $1f
	ldh a, [$ef]                                     ; $6f18: $f0 $ef
	rst $38                                          ; $6f1a: $ff
	jp nz, Jump_049_7d3f                             ; $6f1b: $c2 $3f $7d

	ld d, [hl]                                       ; $6f1e: $56
	sbc [hl]                                         ; $6f1f: $9e
	rrca                                             ; $6f20: $0f
	ld [hl], a                                       ; $6f21: $77
	cp c                                             ; $6f22: $b9
	ld [hl], e                                       ; $6f23: $73
	call $347a                                       ; $6f24: $cd $7a $34
	adc h                                            ; $6f27: $8c
	rst $38                                          ; $6f28: $ff
	ld d, l                                          ; $6f29: $55
	rst $38                                          ; $6f2a: $ff
	add $9b                                          ; $6f2b: $c6 $9b
	adc d                                            ; $6f2d: $8a
	rst SubAFromHL                                          ; $6f2e: $d7
	ld b, [hl]                                       ; $6f2f: $46
	sbc e                                            ; $6f30: $9b
	rl a                                             ; $6f31: $cb $17
	ld h, a                                          ; $6f33: $67
	sbc b                                            ; $6f34: $98
	rst FarCall                                          ; $6f35: $f7
	ld hl, sp-$55                                    ; $6f36: $f8 $ab
	db $fc                                           ; $6f38: $fc
	ld d, a                                          ; $6f39: $57
	db $fc                                           ; $6f3a: $fc
	cp [hl]                                          ; $6f3b: $be
	cp $fe                                           ; $6f3c: $fe $fe
	cp $8d                                           ; $6f3e: $fe $8d
	add c                                            ; $6f40: $81
	cp $71                                           ; $6f41: $fe $71
	cp $ef                                           ; $6f43: $fe $ef
	ld e, $cb                                        ; $6f45: $1e $cb
	rlca                                             ; $6f47: $07
	ei                                               ; $6f48: $fb
	nop                                              ; $6f49: $00
	ldh [$1f], a                                     ; $6f4a: $e0 $1f
	ret nz                                           ; $6f4c: $c0

	ccf                                              ; $6f4d: $3f
	add sp, $17                                      ; $6f4e: $e8 $17
	ret nc                                           ; $6f50: $d0

	cpl                                              ; $6f51: $2f
	ld [hl], a                                       ; $6f52: $77
	db $fc                                           ; $6f53: $fc
	sbc e                                            ; $6f54: $9b
	xor b                                            ; $6f55: $a8
	ld d, a                                          ; $6f56: $57
	ret nc                                           ; $6f57: $d0

	cpl                                              ; $6f58: $2f
	halt                                             ; $6f59: $76
	ret z                                            ; $6f5a: $c8

	ld h, [hl]                                       ; $6f5b: $66
	call nz, $039a                                   ; $6f5c: $c4 $9a $03
	db $fc                                           ; $6f5f: $fc
	ld bc, $c0fe                                     ; $6f60: $01 $fe $c0
	cp c                                             ; $6f63: $b9
	pop bc                                           ; $6f64: $c1
	ldh [c], a                                       ; $6f65: $e2
	push af                                          ; $6f66: $f5

Call_049_6f67:
	db $eb                                           ; $6f67: $eb
	push af                                          ; $6f68: $f5
	rst $38                                          ; $6f69: $ff
	rst $38                                          ; $6f6a: $ff
	inc d                                            ; $6f6b: $14
	sub [hl]                                         ; $6f6c: $96
	rrca                                             ; $6f6d: $0f
	ld d, $0f                                        ; $6f6e: $16 $0f
	and a                                            ; $6f70: $a7
	rrca                                             ; $6f71: $0f
	ld e, d                                          ; $6f72: $5a
	rlca                                             ; $6f73: $07
	xor l                                            ; $6f74: $ad
	rlca                                             ; $6f75: $07
	ld l, a                                          ; $6f76: $6f
	db $fc                                           ; $6f77: $fc
	rst $38                                          ; $6f78: $ff
	halt                                             ; $6f79: $76
	ld d, h                                          ; $6f7a: $54
	ld a, a                                          ; $6f7b: $7f
	cp $7f                                           ; $6f7c: $fe $7f
	ld h, b                                          ; $6f7e: $60
	ld [hl], a                                       ; $6f7f: $77
	cp $9d                                           ; $6f80: $fe $9d
	rst AddAOntoHL                                          ; $6f82: $ef
	rra                                              ; $6f83: $1f
	cp a                                             ; $6f84: $bf
	nop                                              ; $6f85: $00
	rst $38                                          ; $6f86: $ff
	sbc [hl]                                         ; $6f87: $9e
	ei                                               ; $6f88: $fb
	ld a, d                                          ; $6f89: $7a
	halt                                             ; $6f8a: $76
	ld l, a                                          ; $6f8b: $6f
	inc bc                                           ; $6f8c: $03
	sbc e                                            ; $6f8d: $9b
	rst GetHLinHL                                          ; $6f8e: $cf
	ldh a, [$0c]                                     ; $6f8f: $f0 $0c
	ld bc, $6e5f                                     ; $6f91: $01 $5f $6e
	sbc b                                            ; $6f94: $98
	ld sp, hl                                        ; $6f95: $f9
	rlca                                             ; $6f96: $07
	di                                               ; $6f97: $f3
	rrca                                             ; $6f98: $0f
	nop                                              ; $6f99: $00
	nop                                              ; $6f9a: $00
	add sp, $78                                      ; $6f9b: $e8 $78
	ld e, e                                          ; $6f9d: $5b
	ld l, a                                          ; $6f9e: $6f
	ldh a, [$8d]                                     ; $6f9f: $f0 $8d
	ei                                               ; $6fa1: $fb
	db $fc                                           ; $6fa2: $fc
	db $fd                                           ; $6fa3: $fd
	cp $00                                           ; $6fa4: $fe $00
	rrca                                             ; $6fa6: $0f
	ld [bc], a                                       ; $6fa7: $02
	rst $38                                          ; $6fa8: $ff
	ld [de], a                                       ; $6fa9: $12
	rst $38                                          ; $6faa: $ff
	inc c                                            ; $6fab: $0c
	rst $38                                          ; $6fac: $ff
	rst $38                                          ; $6fad: $ff
	ld bc, $07f9                                     ; $6fae: $01 $f9 $07
	pop af                                           ; $6fb1: $f1
	rrca                                             ; $6fb2: $0f
	ld a, e                                          ; $6fb3: $7b
	ldh [$7b], a                                     ; $6fb4: $e0 $7b
	rst SubAFromBC                                          ; $6fb6: $e7

jr_049_6fb7:
	ld a, [hl]                                       ; $6fb7: $7e
	ld [hl], $8e                                     ; $6fb8: $36 $8e
	ld de, $3bff                                     ; $6fba: $11 $ff $3b
	rst $38                                          ; $6fbd: $ff
	sbc h                                            ; $6fbe: $9c
	rst $38                                          ; $6fbf: $ff
	ld e, e                                          ; $6fc0: $5b
	rst $38                                          ; $6fc1: $ff
	adc e                                            ; $6fc2: $8b
	rst $38                                          ; $6fc3: $ff
	add b                                            ; $6fc4: $80
	db $f4                                           ; $6fc5: $f4
	adc h                                            ; $6fc6: $8c
	rst $38                                          ; $6fc7: $ff
	ret z                                            ; $6fc8: $c8

	rst $38                                          ; $6fc9: $ff
	ld h, b                                          ; $6fca: $60
	halt                                             ; $6fcb: $76
	db $e4                                           ; $6fcc: $e4
	ld a, a                                          ; $6fcd: $7f
	ld d, a                                          ; $6fce: $57
	sub a                                            ; $6fcf: $97
	ldh [$bf], a                                     ; $6fd0: $e0 $bf
	ldh [rP1], a                                     ; $6fd2: $e0 $00
	inc a                                            ; $6fd4: $3c
	rra                                              ; $6fd5: $1f
	rst $38                                          ; $6fd6: $ff
	cp a                                             ; $6fd7: $bf
	ld l, e                                          ; $6fd8: $6b
	ret nz                                           ; $6fd9: $c0

	ld a, a                                          ; $6fda: $7f
	sub d                                            ; $6fdb: $92
	ld a, a                                          ; $6fdc: $7f
	db $ed                                           ; $6fdd: $ed
	ld a, a                                          ; $6fde: $7f
	adc e                                            ; $6fdf: $8b
	db $dd                                           ; $6fe0: $dd
	rst $38                                          ; $6fe1: $ff
	ld l, e                                          ; $6fe2: $6b
	ldh a, [hDisp1_BGP]                                     ; $6fe3: $f0 $92
	ldh a, [rTAC]                                    ; $6fe5: $f0 $07
	ld hl, sp+$03                                    ; $6fe7: $f8 $03
	rst FarCall                                          ; $6fe9: $f7
	ld a, [$f8f7]                                    ; $6fea: $fa $f7 $f8

Call_049_6fed:
	rst FarCall                                          ; $6fed: $f7
	jr nc, jr_049_6fb7                               ; $6fee: $30 $c7

	ldh a, [rTAC]                                    ; $6ff0: $f0 $07
	ld l, a                                          ; $6ff2: $6f
	cp $99                                           ; $6ff3: $fe $99
	rst $38                                          ; $6ff5: $ff
	push bc                                          ; $6ff6: $c5
	rst $38                                          ; $6ff7: $ff
	jp nz, $c1ff                                     ; $6ff8: $c2 $ff $c1

	ld a, e                                          ; $6ffb: $7b
	adc l                                            ; $6ffc: $8d
	ld a, a                                          ; $6ffd: $7f
	cp e                                             ; $6ffe: $bb
	add [hl]                                         ; $6fff: $86
	push de                                          ; $7000: $d5
	rst $38                                          ; $7001: $ff
	jp z, $d5ff                                      ; $7002: $ca $ff $d5

	db $fc                                           ; $7005: $fc
	inc bc                                           ; $7006: $03
	cp $11                                           ; $7007: $fe $11
	db $fc                                           ; $7009: $fc
	inc bc                                           ; $700a: $03
	ld a, [$fd15]                                    ; $700b: $fa $15 $fd
	xor d                                            ; $700e: $aa
	cp $55                                           ; $700f: $fe $55
	db $fc                                           ; $7011: $fc
	xor e                                            ; $7012: $ab
	cp $51                                           ; $7013: $fe $51
	add b                                            ; $7015: $80
	ld a, a                                          ; $7016: $7f
	nop                                              ; $7017: $00
	rst $38                                          ; $7018: $ff
	ld a, e                                          ; $7019: $7b
	and a                                            ; $701a: $a7
	ld a, [hl]                                       ; $701b: $7e
	pop bc                                           ; $701c: $c1
	sbc [hl]                                         ; $701d: $9e
	rrca                                             ; $701e: $0f
	halt                                             ; $701f: $76
	or d                                             ; $7020: $b2
	halt                                             ; $7021: $76
	inc d                                            ; $7022: $14
	cp [hl]                                          ; $7023: $be
	rst $38                                          ; $7024: $ff
	rst $38                                          ; $7025: $ff
	rst $38                                          ; $7026: $ff
	ld a, a                                          ; $7027: $7f
	ld b, $9d                                        ; $7028: $06 $9d
	xor a                                            ; $702a: $af
	ld d, b                                          ; $702b: $50
	ld [hl], a                                       ; $702c: $77
	rst FarCall                                          ; $702d: $f7
	ld a, d                                          ; $702e: $7a
	call z, $f89a                                    ; $702f: $cc $9a $f8
	rrca                                             ; $7032: $0f
	ldh a, [rPCM34]                                  ; $7033: $f0 $77
	adc b                                            ; $7035: $88
	ld l, e                                          ; $7036: $6b
	jp hl                                            ; $7037: $e9


	cp c                                             ; $7038: $b9
	cp $fe                                           ; $7039: $fe $fe
	rst $38                                          ; $703b: $ff
	rst $38                                          ; $703c: $ff
	rst $38                                          ; $703d: $ff
	rst $38                                          ; $703e: $ff
	rst $38                                          ; $703f: $ff
	pop hl                                           ; $7040: $e1
	sbc b                                            ; $7041: $98
	ld e, $40                                        ; $7042: $1e $40
	cp a                                             ; $7044: $bf
	xor b                                            ; $7045: $a8
	ld d, a                                          ; $7046: $57
	ld d, b                                          ; $7047: $50

jr_049_7048:
	xor a                                            ; $7048: $af
	halt                                             ; $7049: $76
	add $95                                          ; $704a: $c6 $95
	and b                                            ; $704c: $a0
	ld e, a                                          ; $704d: $5f
	call nc, $f82b                                   ; $704e: $d4 $2b $f8
	rlca                                             ; $7051: $07
	inc bc                                           ; $7052: $03
	db $fc                                           ; $7053: $fc
	inc bc                                           ; $7054: $03
	db $fc                                           ; $7055: $fc
	ld a, e                                          ; $7056: $7b
	ld a, d                                          ; $7057: $7a
	ld a, d                                          ; $7058: $7a
	add $7f                                          ; $7059: $c6 $7f
	cp $9a                                           ; $705b: $fe $9a
	ld b, $f9                                        ; $705d: $06 $f9
	ld bc, $aafe                                     ; $705f: $01 $fe $aa
	cp c                                             ; $7062: $b9
	push de                                          ; $7063: $d5
	xor d                                            ; $7064: $aa
	push de                                          ; $7065: $d5
	xor d                                            ; $7066: $aa
	push af                                          ; $7067: $f5
	ld [$add5], a                                    ; $7068: $ea $d5 $ad
	ld l, d                                          ; $706b: $6a
	ret z                                            ; $706c: $c8

	sbc [hl]                                         ; $706d: $9e
	cp l                                             ; $706e: $bd
	ld l, e                                          ; $706f: $6b
	ld hl, sp-$66                                    ; $7070: $f8 $9a
	ld e, a                                          ; $7072: $5f
	ccf                                              ; $7073: $3f
	ld d, b                                          ; $7074: $50
	ccf                                              ; $7075: $3f
	ld e, a                                          ; $7076: $5f

Call_049_7077:
	ld a, e                                          ; $7077: $7b
	cp $93                                           ; $7078: $fe $93
	ld h, a                                          ; $707a: $67
	rra                                              ; $707b: $1f
	cp $01                                           ; $707c: $fe $01
	ld a, [hl]                                       ; $707e: $7e
	ld bc, $807e                                     ; $707f: $01 $7e $80
	rst SubAFromBC                                          ; $7082: $e7
	ld hl, sp+$37                                    ; $7083: $f8 $37
	ld hl, sp+$7b                                    ; $7085: $f8 $7b
	ccf                                              ; $7087: $3f
	sbc l                                            ; $7088: $9d
	ld hl, sp-$31                                    ; $7089: $f8 $cf
	ld [hl], l                                       ; $708b: $75
	inc sp                                           ; $708c: $33
	cp a                                             ; $708d: $bf
	rst $38                                          ; $708e: $ff
	or $9d                                           ; $708f: $f6 $9d
	rrca                                             ; $7091: $0f
	rst FarCall                                          ; $7092: $f7
	ld a, e                                          ; $7093: $7b
	cp $7f                                           ; $7094: $fe $7f
	xor b                                            ; $7096: $a8
	ld h, a                                          ; $7097: $67
	adc [hl]                                         ; $7098: $8e
	sub l                                            ; $7099: $95
	cpl                                              ; $709a: $2f
	cp $ff                                           ; $709b: $fe $ff
	cp $fd                                           ; $709d: $fe $fd
	cp $73                                           ; $709f: $fe $73

jr_049_70a1:
	db $fc                                           ; $70a1: $fc
	sbc a                                            ; $70a2: $9f
	ld h, b                                          ; $70a3: $60
	ld a, e                                          ; $70a4: $7b
	cp $97                                           ; $70a5: $fe $97
	jr nz, jr_049_7048                               ; $70a7: $20 $9f

	jr nz, jr_049_70a1                               ; $70a9: $20 $f6

	rrca                                             ; $70ab: $0f
	cp $07                                           ; $70ac: $fe $07
	ei                                               ; $70ae: $fb
	ld a, e                                          ; $70af: $7b
	cp $7d                                           ; $70b0: $fe $7d
	add e                                            ; $70b2: $83
	ld a, a                                          ; $70b3: $7f
	cp $7b                                           ; $70b4: $fe $7b
	add l                                            ; $70b6: $85
	sbc [hl]                                         ; $70b7: $9e
	inc bc                                           ; $70b8: $03
	ld a, e                                          ; $70b9: $7b
	ld b, [hl]                                       ; $70ba: $46
	ret c                                            ; $70bb: $d8

	rst $38                                          ; $70bc: $ff
	sbc c                                            ; $70bd: $99
	jp nc, Jump_049_50ef                             ; $70be: $d2 $ef $50

	rst JumpTable                                          ; $70c1: $c7
	rst SubAFromDE                                          ; $70c2: $df
	ldh [$6f], a                                     ; $70c3: $e0 $6f
	cp $7a                                           ; $70c5: $fe $7a
	cp $7f                                           ; $70c7: $fe $7f
	add hl, de                                       ; $70c9: $19
	ld a, l                                          ; $70ca: $7d
	add b                                            ; $70cb: $80
	sbc e                                            ; $70cc: $9b
	adc $dc                                          ; $70cd: $ce $dc
	ccf                                              ; $70cf: $3f
	rst SubAFromDE                                          ; $70d0: $df
	ld a, e                                          ; $70d1: $7b
	cp $7e                                           ; $70d2: $fe $7e
	add $7b                                          ; $70d4: $c6 $7b
	ld [hl], $77                                     ; $70d6: $36 $77
	ld e, l                                          ; $70d8: $5d
	sbc e                                            ; $70d9: $9b
	ld bc, $f83f                                     ; $70da: $01 $3f $f8
	rst $38                                          ; $70dd: $ff
	ld a, e                                          ; $70de: $7b
	sub d                                            ; $70df: $92
	ld a, [hl]                                       ; $70e0: $7e
	add $7d                                          ; $70e1: $c6 $7d
	and h                                            ; $70e3: $a4
	ld [hl], a                                       ; $70e4: $77
	cp $7f                                           ; $70e5: $fe $7f
	ld [hl-], a                                      ; $70e7: $32
	ld a, d                                          ; $70e8: $7a
	cp l                                             ; $70e9: $bd
	ld a, d                                          ; $70ea: $7a
	jp z, $fc77                                      ; $70eb: $ca $77 $fc

	sbc c                                            ; $70ee: $99
	ld sp, hl                                        ; $70ef: $f9
	ld b, $f6                                        ; $70f0: $06 $f6
	ld bc, $e71b                                     ; $70f2: $01 $1b $e7
	ld a, d                                          ; $70f5: $7a
	jp nz, $be76                                     ; $70f6: $c2 $76 $be

	ld h, [hl]                                       ; $70f9: $66
	cp d                                             ; $70fa: $ba
	ld a, a                                          ; $70fb: $7f
	cp [hl]                                          ; $70fc: $be
	ld a, l                                          ; $70fd: $7d
	ld a, h                                          ; $70fe: $7c

jr_049_70ff:
	sub e                                            ; $70ff: $93
	jr nz, jr_049_70ff                               ; $7100: $20 $fd

jr_049_7102:
	sub c                                            ; $7102: $91

jr_049_7103:
	ei                                               ; $7103: $fb
	jr z, jr_049_7103                                ; $7104: $28 $fd

	db $10                                           ; $7106: $10
	ld a, [$ff28]                                    ; $7107: $fa $28 $ff
	jr nz, jr_049_7102                               ; $710a: $20 $f6

	cp l                                             ; $710c: $bd
	rst $38                                          ; $710d: $ff
	rst $38                                          ; $710e: $ff
	ld a, a                                          ; $710f: $7f
	cp a                                             ; $7110: $bf
	sub a                                            ; $7111: $97
	add b                                            ; $7112: $80
	ld e, l                                          ; $7113: $5d
	ld b, b                                          ; $7114: $40
	or h                                             ; $7115: $b4
	jr nc, @+$01                                     ; $7116: $30 $ff

	inc c                                            ; $7118: $0c
	adc d                                            ; $7119: $8a
	ld h, [hl]                                       ; $711a: $66
	pop bc                                           ; $711b: $c1
	or h                                             ; $711c: $b4
	rst $38                                          ; $711d: $ff
	cp a                                             ; $711e: $bf
	rst $38                                          ; $711f: $ff
	xor e                                            ; $7120: $ab
	rst $38                                          ; $7121: $ff
	cp a                                             ; $7122: $bf
	ld e, a                                          ; $7123: $5f
	xor a                                            ; $7124: $af
	ld d, a                                          ; $7125: $57
	xor a                                            ; $7126: $af
	ld d, a                                          ; $7127: $57
	xor e                                            ; $7128: $ab
	db $fc                                           ; $7129: $fc
	ld a, [hl]                                       ; $712a: $7e
	add b                                            ; $712b: $80
	ld a, b                                          ; $712c: $78
	ld b, l                                          ; $712d: $45
	ld a, a                                          ; $712e: $7f
	ld a, [$927e]                                    ; $712f: $fa $7e $92
	ld [hl], a                                       ; $7132: $77
	ld hl, sp+$7f                                    ; $7133: $f8 $7f
	cp $7e                                           ; $7135: $fe $7e
	call z, $867d                                    ; $7137: $cc $7d $86
	halt                                             ; $713a: $76
	ret z                                            ; $713b: $c8

	ld a, a                                          ; $713c: $7f
	db $fc                                           ; $713d: $fc
	ld a, [hl]                                       ; $713e: $7e
	cp h                                             ; $713f: $bc
	adc d                                            ; $7140: $8a
	ld d, h                                          ; $7141: $54
	xor e                                            ; $7142: $ab
	ldh a, [rIF]                                     ; $7143: $f0 $0f
	inc bc                                           ; $7145: $03
	db $fc                                           ; $7146: $fc
	rrca                                             ; $7147: $0f
	ldh a, [$03]                                     ; $7148: $f0 $03
	db $fc                                           ; $714a: $fc
	ld c, $f0                                        ; $714b: $0e $f0
	rrca                                             ; $714d: $0f
	ldh a, [$5f]                                     ; $714e: $f0 $5f
	and b                                            ; $7150: $a0
	rrca                                             ; $7151: $0f
	ldh a, [$1f]                                     ; $7152: $f0 $1f
	ldh [$eb], a                                     ; $7154: $e0 $eb
	cp c                                             ; $7156: $b9
	rst $38                                          ; $7157: $ff
	rst $38                                          ; $7158: $ff
	add hl, sp                                       ; $7159: $39
	ld a, a                                          ; $715a: $7f
	rst $38                                          ; $715b: $ff
	rst $38                                          ; $715c: $ff
	rst $38                                          ; $715d: $ff
	rst AddAOntoHL                                          ; $715e: $ef
	sbc h                                            ; $715f: $9c
	rlca                                             ; $7160: $07
	ld a, a                                          ; $7161: $7f
	inc bc                                           ; $7162: $03
	ld a, e                                          ; $7163: $7b
	dec e                                            ; $7164: $1d
	cp h                                             ; $7165: $bc
	rst $38                                          ; $7166: $ff
	rst $38                                          ; $7167: $ff
	rst $38                                          ; $7168: $ff
	rst $38                                          ; $7169: $ff
	rst $38                                          ; $716a: $ff
	ld a, d                                          ; $716b: $7a
	ldh a, [$9d]                                     ; $716c: $f0 $9d
	ld b, $ff                                        ; $716e: $06 $ff
	ld [hl], a                                       ; $7170: $77
	xor d                                            ; $7171: $aa
	ld a, [hl]                                       ; $7172: $7e
	inc a                                            ; $7173: $3c
	sbc e                                            ; $7174: $9b
	swap b                                           ; $7175: $cb $30
	ldh [$1f], a                                     ; $7177: $e0 $1f
	db $dd                                           ; $7179: $dd
	rst $38                                          ; $717a: $ff
	ld a, a                                          ; $717b: $7f
	jp z, $9076                                      ; $717c: $ca $76 $90

	ld a, a                                          ; $717f: $7f
	jp nz, $b67e                                     ; $7180: $c2 $7e $b6

	ld a, a                                          ; $7183: $7f
	db $fc                                           ; $7184: $fc
	call c, $bfff                                    ; $7185: $dc $ff $bf
	ld d, [hl]                                       ; $7188: $56
	ld hl, sp+$7d                                    ; $7189: $f8 $7d
	and d                                            ; $718b: $a2
	sbc [hl]                                         ; $718c: $9e
	inc c                                            ; $718d: $0c
	halt                                             ; $718e: $76
	cp d                                             ; $718f: $ba
	sbc [hl]                                         ; $7190: $9e
	sbc a                                            ; $7191: $9f
	sbc $ff                                          ; $7192: $de $ff
	sub l                                            ; $7194: $95
	rst SubAFromDE                                          ; $7195: $df
	ld h, b                                          ; $7196: $60
	push af                                          ; $7197: $f5
	ld h, b                                          ; $7198: $60
	add hl, sp                                       ; $7199: $39
	cp $7e                                           ; $719a: $fe $7e
	rra                                              ; $719c: $1f
	rrca                                             ; $719d: $0f
	cp $7a                                           ; $719e: $fe $7a
	ld a, [$ffdd]                                    ; $71a0: $fa $dd $ff
	ld [hl], e                                       ; $71a3: $73
	ld l, h                                          ; $71a4: $6c
	ld [hl], d                                       ; $71a5: $72
	ld [hl+], a                                      ; $71a6: $22
	adc [hl]                                         ; $71a7: $8e
	ld bc, $ff77                                     ; $71a8: $01 $77 $ff
	rst SubAFromBC                                          ; $71ab: $e7
	rst $38                                          ; $71ac: $ff
	set 6, a                                         ; $71ad: $cb $f7
	ldh [rIE], a                                     ; $71af: $e0 $ff
	rst $38                                          ; $71b1: $ff
	jr @-$7e                                         ; $71b2: $18 $80

	jr @+$0a                                         ; $71b4: $18 $08

	rst $38                                          ; $71b6: $ff
	ld b, d                                          ; $71b7: $42
	adc a                                            ; $71b8: $8f
	db $dd                                           ; $71b9: $dd
	rst $38                                          ; $71ba: $ff
	sub e                                            ; $71bb: $93
	rst SubAFromDE                                          ; $71bc: $df
	cp $5d                                           ; $71bd: $fe $5d
	sbc [hl]                                         ; $71bf: $9e
	cp h                                             ; $71c0: $bc
	ld e, $3f                                        ; $71c1: $1e $3f
	ld e, $3c                                        ; $71c3: $1e $3c
	ld e, $3f                                        ; $71c5: $1e $3f
	sbc h                                            ; $71c7: $9c
	ld [hl], a                                       ; $71c8: $77
	ret nc                                           ; $71c9: $d0

	ld a, a                                          ; $71ca: $7f
	jp c, Jump_049_5196                              ; $71cb: $da $96 $51

	inc bc                                           ; $71ce: $03
	xor b                                            ; $71cf: $a8
	rlca                                             ; $71d0: $07
	ld l, b                                          ; $71d1: $68
	db $10                                           ; $71d2: $10
	or b                                             ; $71d3: $b0
	rrca                                             ; $71d4: $0f
	ld d, l                                          ; $71d5: $55
	ld a, c                                          ; $71d6: $79
	add a                                            ; $71d7: $87
	ld a, h                                          ; $71d8: $7c
	adc b                                            ; $71d9: $88
	ld a, [hl]                                       ; $71da: $7e
	ret z                                            ; $71db: $c8

	sub [hl]                                         ; $71dc: $96
	ld c, a                                          ; $71dd: $4f
	add b                                            ; $71de: $80
	rst GetHLinHL                                          ; $71df: $cf
	ldh a, [$f7]                                     ; $71e0: $f0 $f7
	ld a, b                                          ; $71e2: $78
	rrca                                             ; $71e3: $0f
	ldh a, [rTMA]                                    ; $71e4: $f0 $06
	ld a, e                                          ; $71e6: $7b
	ldh a, [$9d]                                     ; $71e7: $f0 $9d
	sbc e                                            ; $71e9: $9b
	db $fc                                           ; $71ea: $fc
	ld e, e                                          ; $71eb: $5b
	ld h, d                                          ; $71ec: $62
	ld a, c                                          ; $71ed: $79
	and e                                            ; $71ee: $a3
	ld a, e                                          ; $71ef: $7b
	cp $7f                                           ; $71f0: $fe $7f
	ld a, d                                          ; $71f2: $7a
	sbc [hl]                                         ; $71f3: $9e
	sub b                                            ; $71f4: $90
	ld a, e                                          ; $71f5: $7b
	or $7f                                           ; $71f6: $f6 $7f
	or c                                             ; $71f8: $b1
	cp [hl]                                          ; $71f9: $be
	rst $38                                          ; $71fa: $ff
	ei                                               ; $71fb: $fb
	cp $7d                                           ; $71fc: $fe $7d
	sbc b                                            ; $71fe: $98
	ld a, [hl]                                       ; $71ff: $7e
	jp c, $019d                                      ; $7200: $da $9d $01

	db $fd                                           ; $7203: $fd
	cp c                                             ; $7204: $b9

jr_049_7205:
	rst $38                                          ; $7205: $ff
	db $fd                                           ; $7206: $fd
	rst $38                                          ; $7207: $ff
	ld b, l                                          ; $7208: $45
	xor d                                            ; $7209: $aa
	ld d, l                                          ; $720a: $55
	xor d                                            ; $720b: $aa
	push de                                          ; $720c: $d5
	ld a, [hl]                                       ; $720d: $7e
	xor b                                            ; $720e: $a8
	adc [hl]                                         ; $720f: $8e
	ld b, b                                          ; $7210: $40
	ld d, l                                          ; $7211: $55
	ld b, b                                          ; $7212: $40
	xor d                                            ; $7213: $aa
	jr nz, jr_049_726b                               ; $7214: $20 $55

	nop                                              ; $7216: $00
	ld [$7540], a                                    ; $7217: $ea $40 $75
	jr nz, @-$54                                     ; $721a: $20 $aa

	ld [$0455], sp                                   ; $721c: $08 $55 $04
	rst $38                                          ; $721f: $ff
	inc bc                                           ; $7220: $03
	ld [hl], a                                       ; $7221: $77
	add sp, $53                                      ; $7222: $e8 $53
	or h                                             ; $7224: $b4
	or [hl]                                          ; $7225: $b6
	rst $38                                          ; $7226: $ff
	rst $38                                          ; $7227: $ff
	rst $38                                          ; $7228: $ff
	rst $38                                          ; $7229: $ff
	rst $38                                          ; $722a: $ff
	rst $38                                          ; $722b: $ff
	rst $38                                          ; $722c: $ff
	rst $38                                          ; $722d: $ff
	rst AddAOntoHL                                          ; $722e: $ef
	rst $38                                          ; $722f: $ff
	rst FarCall                                          ; $7230: $f7
	ld a, e                                          ; $7231: $7b
	xor b                                            ; $7232: $a8
	sbc l                                            ; $7233: $9d
	jr nc, jr_049_7205                               ; $7234: $30 $cf

	ld [hl], a                                       ; $7236: $77
	ld a, [$fe77]                                    ; $7237: $fa $77 $fe
	sub a                                            ; $723a: $97
	ld c, a                                          ; $723b: $4f
	or b                                             ; $723c: $b0
	cp a                                             ; $723d: $bf
	ld b, b                                          ; $723e: $40
	ld a, a                                          ; $723f: $7f
	add b                                            ; $7240: $80
	rst SubAFromDE                                          ; $7241: $df
	jr nz, jr_049_7253                               ; $7242: $20 $0f

	ret z                                            ; $7244: $c8

	ccf                                              ; $7245: $3f
	cp $6d                                           ; $7246: $fe $6d
	ld h, d                                          ; $7248: $62
	ld a, a                                          ; $7249: $7f
	db $fc                                           ; $724a: $fc
	ld d, [hl]                                       ; $724b: $56
	ld b, b                                          ; $724c: $40
	sbc [hl]                                         ; $724d: $9e
	ld l, [hl]                                       ; $724e: $6e
	or c                                             ; $724f: $b1
	rst SubAFromDE                                          ; $7250: $df
	rst $38                                          ; $7251: $ff
	rst $38                                          ; $7252: $ff

jr_049_7253:
	rst $38                                          ; $7253: $ff
	rst $38                                          ; $7254: $ff
	xor d                                            ; $7255: $aa
	ld d, l                                          ; $7256: $55
	xor d                                            ; $7257: $aa
	ld d, l                                          ; $7258: $55
	rst $38                                          ; $7259: $ff
	rst $38                                          ; $725a: $ff
	rst $38                                          ; $725b: $ff
	rst $38                                          ; $725c: $ff
	cp a                                             ; $725d: $bf
	ld e, a                                          ; $725e: $5f
	xor a                                            ; $725f: $af
	cp a                                             ; $7260: $bf
	ld e, a                                          ; $7261: $5f
	rst $38                                          ; $7262: $ff
	ld d, [hl]                                       ; $7263: $56
	ld [hl], h                                       ; $7264: $74
	cp a                                             ; $7265: $bf
	rst $38                                          ; $7266: $ff
	rst $38                                          ; $7267: $ff
	sbc e                                            ; $7268: $9b
	rst $38                                          ; $7269: $ff
	pop hl                                           ; $726a: $e1

jr_049_726b:
	ld e, [hl]                                       ; $726b: $5e
	add c                                            ; $726c: $81
	cp h                                             ; $726d: $bc
	rst $38                                          ; $726e: $ff
	rst SubAFromDE                                          ; $726f: $df
	xor a                                            ; $7270: $af
	sbc $af                                          ; $7271: $de $af
	ld a, [hl]                                       ; $7273: $7e
	ld a, [de]                                       ; $7274: $1a
	sbc l                                            ; $7275: $9d
	adc b                                            ; $7276: $88
	ld a, l                                          ; $7277: $7d
	ld [hl], e                                       ; $7278: $73
	ld b, $9e                                        ; $7279: $06 $9e
	ld a, [$5db1]                                    ; $727b: $fa $b1 $5d
	cp $7d                                           ; $727e: $fe $7d
	xor d                                            ; $7280: $aa
	ld d, l                                          ; $7281: $55
	ld [$aaff], a                                    ; $7282: $ea $ff $aa
	ld d, l                                          ; $7285: $55
	xor d                                            ; $7286: $aa
	ld d, l                                          ; $7287: $55
	ld [bc], a                                       ; $7288: $02
	inc bc                                           ; $7289: $03
	ld [bc], a                                       ; $728a: $02
	rst $38                                          ; $728b: $ff
	add d                                            ; $728c: $82
	or d                                             ; $728d: $b2
	ld bc, $0100                                     ; $728e: $01 $00 $01
	ld a, a                                          ; $7291: $7f
	ccf                                              ; $7292: $3f
	rra                                              ; $7293: $1f
	rst $38                                          ; $7294: $ff
	ld e, a                                          ; $7295: $5f
	dec hl                                           ; $7296: $2b
	rla                                              ; $7297: $17
	inc bc                                           ; $7298: $03
	rst $38                                          ; $7299: $ff
	rst $38                                          ; $729a: $ff
	rst $38                                          ; $729b: $ff
	rst $38                                          ; $729c: $ff
	sbc [hl]                                         ; $729d: $9e
	dec c                                            ; $729e: $0d
	ld c, e                                          ; $729f: $4b
	sbc d                                            ; $72a0: $9a
	sbc h                                            ; $72a1: $9c
	add sp, -$01                                     ; $72a2: $e8 $ff
	add b                                            ; $72a4: $80
	ld l, h                                          ; $72a5: $6c
	ld [hl], d                                       ; $72a6: $72
	sub e                                            ; $72a7: $93
	ld d, l                                          ; $72a8: $55
	db $10                                           ; $72a9: $10
	xor d                                            ; $72aa: $aa
	ld [$085d], sp                                   ; $72ab: $08 $5d $08
	xor $04                                          ; $72ae: $ee $04
	ld d, a                                          ; $72b0: $57
	ld [bc], a                                       ; $72b1: $02
	xor e                                            ; $72b2: $ab
	ld bc, $ae6f                                     ; $72b3: $01 $6f $ae
	ld a, l                                          ; $72b6: $7d
	sbc h                                            ; $72b7: $9c
	ld a, a                                          ; $72b8: $7f
	db $fc                                           ; $72b9: $fc
	ld a, a                                          ; $72ba: $7f
	ld h, d                                          ; $72bb: $62
	ld [hl], a                                       ; $72bc: $77
	ld hl, sp-$64                                    ; $72bd: $f8 $9c
	rst SubAFromHL                                          ; $72bf: $d7
	add b                                            ; $72c0: $80
	db $eb                                           ; $72c1: $eb
	ld [hl], e                                       ; $72c2: $73
	jp c, $fe57                                      ; $72c3: $da $57 $fe

	ld a, a                                          ; $72c6: $7f
	inc e                                            ; $72c7: $1c
	ld a, a                                          ; $72c8: $7f
	halt                                             ; $72c9: $76
	ld [hl], a                                       ; $72ca: $77
	db $fc                                           ; $72cb: $fc
	ld a, a                                          ; $72cc: $7f
	db $10                                           ; $72cd: $10
	ld a, a                                          ; $72ce: $7f
	db $fc                                           ; $72cf: $fc
	halt                                             ; $72d0: $76
	add b                                            ; $72d1: $80
	dec [hl]                                         ; $72d2: $35
	nop                                              ; $72d3: $00
	rst SubAFromDE                                          ; $72d4: $df
	inc sp                                           ; $72d5: $33
	sbc [hl]                                         ; $72d6: $9e
	ld d, l                                          ; $72d7: $55
	sbc $77                                          ; $72d8: $de $77
	jp nz, $de33                                     ; $72da: $c2 $33 $de

	ld h, [hl]                                       ; $72dd: $66
	rst SubAFromDE                                          ; $72de: $df
	inc sp                                           ; $72df: $33
	rst SubAFromDE                                          ; $72e0: $df
	ld b, a                                          ; $72e1: $47
	sbc l                                            ; $72e2: $9d
	ld [hl], a                                       ; $72e3: $77
	halt                                             ; $72e4: $76
	db $dd                                           ; $72e5: $dd
	ld h, [hl]                                       ; $72e6: $66
	ld [hl], a                                       ; $72e7: $77
	or $9d                                           ; $72e8: $f6 $9d
	ld [hl], h                                       ; $72ea: $74
	ld b, h                                          ; $72eb: $44
	ld l, a                                          ; $72ec: $6f
	or $9c                                           ; $72ed: $f6 $9c
	ld b, [hl]                                       ; $72ef: $46
	ld h, [hl]                                       ; $72f0: $66
	ld h, h                                          ; $72f1: $64
	call c, $9d66                                    ; $72f2: $dc $66 $9d
	ld d, l                                          ; $72f5: $55
	ld d, h                                          ; $72f6: $54
	call c, $9c44                                    ; $72f7: $dc $44 $9c
	ld [hl], a                                       ; $72fa: $77
	ld d, l                                          ; $72fb: $55
	ld d, a                                          ; $72fc: $57
	ld h, a                                          ; $72fd: $67
	or $df                                           ; $72fe: $f6 $df
	ld [hl], a                                       ; $7300: $77
	ld e, e                                          ; $7301: $5b
	or $9e                                           ; $7302: $f6 $9e
	ld d, a                                          ; $7304: $57
	reti                                             ; $7305: $d9


	ld [hl], a                                       ; $7306: $77
	jr nz, jr_049_7313                               ; $7307: $20 $0a

	sub e                                            ; $7309: $93
	ld a, a                                          ; $730a: $7f
	ccf                                              ; $730b: $3f
	ld b, a                                          ; $730c: $47
	ccf                                              ; $730d: $3f
	ld b, l                                          ; $730e: $45
	ld [bc], a                                       ; $730f: $02
	ld [hl], d                                       ; $7310: $72
	dec c                                            ; $7311: $0d
	ld h, c                                          ; $7312: $61

jr_049_7313:
	ld a, $40                                        ; $7313: $3e $40
	ccf                                              ; $7315: $3f
	ld [hl], a                                       ; $7316: $77
	cp $8b                                           ; $7317: $fe $8b
	rst $38                                          ; $7319: $ff
	ld d, l                                          ; $731a: $55
	rst $38                                          ; $731b: $ff
	nop                                              ; $731c: $00
	rrca                                             ; $731d: $0f
	and b                                            ; $731e: $a0
	ld bc, $0054                                     ; $731f: $01 $54 $00
	ld a, [bc]                                       ; $7322: $0a
	ld bc, $0180                                     ; $7323: $01 $80 $01
	ret nz                                           ; $7326: $c0

	ld bc, $ffe0                                     ; $7327: $01 $e0 $ff
	ld [$00ff], a                                    ; $732a: $ea $ff $00
	ld [hl], a                                       ; $732d: $77
	cp $95                                           ; $732e: $fe $95
	dec b                                            ; $7330: $05
	xor d                                            ; $7331: $aa
	ldh a, [rSB]                                     ; $7332: $f0 $01
	db $fc                                           ; $7334: $fc
	ld [de], a                                       ; $7335: $12
	cp $1d                                           ; $7336: $fe $1d
	rst $38                                          ; $7338: $ff
	xor d                                            ; $7339: $aa
	ld l, a                                          ; $733a: $6f
	ldh a, [$7f]                                     ; $733b: $f0 $7f
	cp $99                                           ; $733d: $fe $99
	nop                                              ; $733f: $00
	ld d, l                                          ; $7340: $55
	nop                                              ; $7341: $00
	xor d                                            ; $7342: $aa
	nop                                              ; $7343: $00
	ld d, l                                          ; $7344: $55
	rra                                              ; $7345: $1f
	ldh a, [$7f]                                     ; $7346: $f0 $7f
	or e                                             ; $7348: $b3
	ld c, a                                          ; $7349: $4f
	ldh a, [$7b]                                     ; $734a: $f0 $7b
	sbc $4b                                          ; $734c: $de $4b
	ldh a, [$9d]                                     ; $734e: $f0 $9d
	ld [bc], a                                       ; $7350: $02
	xor b                                            ; $7351: $a8
	ld c, a                                          ; $7352: $4f
	ldh a, [$9e]                                     ; $7353: $f0 $9e
	ld bc, $e06f                                     ; $7355: $01 $6f $e0
	sbc [hl]                                         ; $7358: $9e
	ld bc, $f06b                                     ; $7359: $01 $6b $f0
	sbc d                                            ; $735c: $9a
	ld bc, $803f                                     ; $735d: $01 $3f $80
	ld bc, $7b54                                     ; $7360: $01 $54 $7b
	ldh a, [$7f]                                     ; $7363: $f0 $7f
	db $fc                                           ; $7365: $fc
	ld l, a                                          ; $7366: $6f
	ldh a, [$9c]                                     ; $7367: $f0 $9c
	ld hl, sp-$01                                    ; $7369: $f8 $ff
	inc b                                            ; $736b: $04
	ld a, e                                          ; $736c: $7b
	ld a, [$f093]                                    ; $736d: $fa $93 $f0
	rst AddAOntoHL                                          ; $7370: $ef
	ldh a, [$e0]                                     ; $7371: $f0 $e0
	ldh a, [$f5]                                     ; $7373: $f0 $f5
	ld [$f4eb], a                                    ; $7375: $ea $eb $f4
	push de                                          ; $7378: $d5
	ld [$7bcb], a                                    ; $7379: $ea $cb $7b
	db $fc                                           ; $737c: $fc
	sbc l                                            ; $737d: $9d
	push de                                          ; $737e: $d5
	ld a, [hl+]                                      ; $737f: $2a
	ld a, e                                          ; $7380: $7b
	xor b                                            ; $7381: $a8
	sbc c                                            ; $7382: $99
	nop                                              ; $7383: $00
	ld a, a                                          ; $7384: $7f
	add b                                            ; $7385: $80
	db $fd                                           ; $7386: $fd
	ld [bc], a                                       ; $7387: $02
	cp $73                                           ; $7388: $fe $73
	ret z                                            ; $738a: $c8

	add a                                            ; $738b: $87
	ld b, b                                          ; $738c: $40
	cp a                                             ; $738d: $bf

jr_049_738e:
	xor d                                            ; $738e: $aa
	ld d, l                                          ; $738f: $55
	nop                                              ; $7390: $00
	nop                                              ; $7391: $00
	xor e                                            ; $7392: $ab
	ld d, l                                          ; $7393: $55
	ld d, b                                          ; $7394: $50
	xor a                                            ; $7395: $af
	xor d                                            ; $7396: $aa
	ld d, l                                          ; $7397: $55
	call nc, $ea2b                                   ; $7398: $d4 $2b $ea
	dec d                                            ; $739b: $15
	ld h, b                                          ; $739c: $60
	ccf                                              ; $739d: $3f
	ld l, d                                          ; $739e: $6a
	dec [hl]                                         ; $739f: $35
	nop                                              ; $73a0: $00
	nop                                              ; $73a1: $00
	ld a, d                                          ; $73a2: $7a
	dec a                                            ; $73a3: $3d
	ld [hl], a                                       ; $73a4: $77
	ld hl, sp-$63                                    ; $73a5: $f8 $9d
	ld [hl], l                                       ; $73a7: $75
	ld a, [hl+]                                      ; $73a8: $2a
	ld a, e                                          ; $73a9: $7b
	db $f4                                           ; $73aa: $f4
	sbc h                                            ; $73ab: $9c
	rst $38                                          ; $73ac: $ff
	jr c, jr_049_738e                                ; $73ad: $38 $df

	ld a, e                                          ; $73af: $7b
	ld [hl], a                                       ; $73b0: $77
	sub d                                            ; $73b1: $92
	ld d, l                                          ; $73b2: $55
	jr @+$01                                         ; $73b3: $18 $ff

	adc d                                            ; $73b5: $8a
	ld [hl], l                                       ; $73b6: $75
	ld d, l                                          ; $73b7: $55
	xor d                                            ; $73b8: $aa
	xor d                                            ; $73b9: $aa
	ld d, l                                          ; $73ba: $55
	add hl, bc                                       ; $73bb: $09
	cp $aa                                           ; $73bc: $fe $aa
	ld d, h                                          ; $73be: $54
	ld a, e                                          ; $73bf: $7b
	ldh a, [hDisp1_OBP1]                                     ; $73c0: $f0 $94
	ld d, h                                          ; $73c2: $54
	inc d                                            ; $73c3: $14
	ld [$54aa], a                                    ; $73c4: $ea $aa $54
	ld b, [hl]                                       ; $73c7: $46
	cp b                                             ; $73c8: $b8
	adc d                                            ; $73c9: $8a
	ld [hl], h                                       ; $73ca: $74
	add h                                            ; $73cb: $84
	ei                                               ; $73cc: $fb
	ld [hl], a                                       ; $73cd: $77
	ret nz                                           ; $73ce: $c0

	adc l                                            ; $73cf: $8d
	cp a                                             ; $73d0: $bf
	ld b, b                                          ; $73d1: $40
	dec d                                            ; $73d2: $15
	ld [$55aa], a                                    ; $73d3: $ea $aa $55
	push de                                          ; $73d6: $d5
	ld a, [hl+]                                      ; $73d7: $2a
	xor d                                            ; $73d8: $aa
	ld d, l                                          ; $73d9: $55
	ld a, [$a8ff]                                    ; $73da: $fa $ff $a8
	ld d, a                                          ; $73dd: $57
	nop                                              ; $73de: $00
	nop                                              ; $73df: $00
	ld a, [$7705]                                    ; $73e0: $fa $05 $77
	or b                                             ; $73e3: $b0
	ld [hl], a                                       ; $73e4: $77
	ret nc                                           ; $73e5: $d0

	sbc h                                            ; $73e6: $9c
	rst JumpTable                                          ; $73e7: $c7
	rst $38                                          ; $73e8: $ff
	pop hl                                           ; $73e9: $e1
	ld [hl], a                                       ; $73ea: $77
	scf                                              ; $73eb: $37
	ld a, a                                          ; $73ec: $7f
	call c, $e87b                                    ; $73ed: $dc $7b $e8
	sbc e                                            ; $73f0: $9b
	ld d, l                                          ; $73f1: $55
	xor e                                            ; $73f2: $ab
	xor d                                            ; $73f3: $aa
	ld d, l                                          ; $73f4: $55
	ld l, [hl]                                       ; $73f5: $6e
	jp z, $fe5f                                      ; $73f6: $ca $5f $fe

	sbc c                                            ; $73f9: $99
	ld bc, $01f8                                     ; $73fa: $01 $f8 $01
	db $fc                                           ; $73fd: $fc
	ld bc, $5ffe                                     ; $73fe: $01 $fe $5f
	cp $97                                           ; $7401: $fe $97
	cp $1c                                           ; $7403: $fe $1c
	db $fc                                           ; $7405: $fc
	ld e, $fc                                        ; $7406: $1e $fc
	inc d                                            ; $7408: $14
	db $fc                                           ; $7409: $fc
	ld [$fc73], sp                                   ; $740a: $08 $73 $fc
	sbc d                                            ; $740d: $9a
	ld d, $fc                                        ; $740e: $16 $fc
	dec bc                                           ; $7410: $0b
	nop                                              ; $7411: $00
	and d                                            ; $7412: $a2
	db $fd                                           ; $7413: $fd
	ld [hl], a                                       ; $7414: $77

jr_049_7415:
	ld [hl+], a                                      ; $7415: $22
	ld [hl], a                                       ; $7416: $77
	cp $9d                                           ; $7417: $fe $9d
	ei                                               ; $7419: $fb
	dec b                                            ; $741a: $05
	ld sp, hl                                        ; $741b: $f9
	sub l                                            ; $741c: $95
	ret nz                                           ; $741d: $c0

	add b                                            ; $741e: $80
	ldh [$e0], a                                     ; $741f: $e0 $e0
	rst $38                                          ; $7421: $ff
	ld hl, sp-$02                                    ; $7422: $f8 $fe
	ld a, a                                          ; $7424: $7f
	nop                                              ; $7425: $00
	ld [$97fb], sp                                   ; $7426: $08 $fb $97
	jr c, jr_049_7443                                ; $7429: $38 $18

	inc h                                            ; $742b: $24
	jr z, jr_049_7415                                ; $742c: $28 $e7

	inc c                                            ; $742e: $0c
	and a                                            ; $742f: $a7
	rst $38                                          ; $7430: $ff
	ld a, d                                          ; $7431: $7a
	call z, $159e                                    ; $7432: $cc $9e $15
	ld h, a                                          ; $7435: $67
	db $ec                                           ; $7436: $ec
	ld a, e                                          ; $7437: $7b
	jp z, $e07f                                      ; $7438: $ca $7f $e0

	ld a, d                                          ; $743b: $7a
	call c, $fc7b                                    ; $743c: $dc $7b $fc
	ld h, a                                          ; $743f: $67
	ldh a, [$9e]                                     ; $7440: $f0 $9e
	ei                                               ; $7442: $fb

jr_049_7443:
	ld [hl], e                                       ; $7443: $73
	ldh a, [$7e]                                     ; $7444: $f0 $7e
	cp b                                             ; $7446: $b8
	ld h, a                                          ; $7447: $67
	ldh a, [$7f]                                     ; $7448: $f0 $7f
	xor l                                            ; $744a: $ad
	sbc d                                            ; $744b: $9a
	xor d                                            ; $744c: $aa
	ld bc, $0150                                     ; $744d: $01 $50 $01
	nop                                              ; $7450: $00
	ld l, a                                          ; $7451: $6f
	cp $7e                                           ; $7452: $fe $7e
	db $ec                                           ; $7454: $ec
	sub c                                            ; $7455: $91
	ei                                               ; $7456: $fb
	sbc $fc                                          ; $7457: $de $fc
	ld b, $f8                                        ; $7459: $06 $f8
	dec b                                            ; $745b: $05
	ld hl, sp+$02                                    ; $745c: $f8 $02
	ld hl, sp+$00                                    ; $745e: $f8 $00
	ld hl, sp+$00                                    ; $7460: $f8 $00
	ldh a, [$08]                                     ; $7462: $f0 $08
	ld a, e                                          ; $7464: $7b
	ldh [$8d], a                                     ; $7465: $e0 $8d
	rlca                                             ; $7467: $07
	ld b, b                                          ; $7468: $40
	sub l                                            ; $7469: $95
	jr nz, jr_049_74d6                               ; $746a: $20 $6a

	ld [hl], b                                       ; $746c: $70
	dec a                                            ; $746d: $3d
	ld a, b                                          ; $746e: $78
	ld a, $7c                                        ; $746f: $3e $7c
	add hl, sp                                       ; $7471: $39
	ld a, h                                          ; $7472: $7c
	ld a, [hl]                                       ; $7473: $7e
	db $fc                                           ; $7474: $fc
	ld a, a                                          ; $7475: $7f
	rst $38                                          ; $7476: $ff
	cp $ff                                           ; $7477: $fe $ff
	ld a, d                                          ; $7479: $7a
	call nz, $fc77                                   ; $747a: $c4 $77 $fc
	ld a, a                                          ; $747d: $7f
	ld c, $7f                                        ; $747e: $0e $7f
	db $fc                                           ; $7480: $fc
	sub a                                            ; $7481: $97
	xor a                                            ; $7482: $af
	ld d, b                                          ; $7483: $50
	ld d, a                                          ; $7484: $57
	xor b                                            ; $7485: $a8
	ld [$f715], a                                    ; $7486: $ea $15 $f7
	ld [$b676], sp                                   ; $7489: $08 $76 $b6
	ld a, a                                          ; $748c: $7f
	db $fc                                           ; $748d: $fc
	sbc c                                            ; $748e: $99
	push af                                          ; $748f: $f5
	ld a, [bc]                                       ; $7490: $0a
	cp $01                                           ; $7491: $fe $01
	call nc, Call_049_762b                           ; $7493: $d4 $2b $76
	call z, $fc67                                    ; $7496: $cc $67 $fc
	sbc e                                            ; $7499: $9b
	ld [hl], h                                       ; $749a: $74
	dec hl                                           ; $749b: $2b
	ld l, b                                          ; $749c: $68
	scf                                              ; $749d: $37
	halt                                             ; $749e: $76
	db $fc                                           ; $749f: $fc
	ld l, a                                          ; $74a0: $6f
	db $fc                                           ; $74a1: $fc
	sub l                                            ; $74a2: $95
	ld a, [bc]                                       ; $74a3: $0a
	push af                                          ; $74a4: $f5
	ld b, c                                          ; $74a5: $41
	cp [hl]                                          ; $74a6: $be
	nop                                              ; $74a7: $00
	rst $38                                          ; $74a8: $ff
	ld e, [hl]                                       ; $74a9: $5e
	and b                                            ; $74aa: $a0
	cp d                                             ; $74ab: $ba
	ld b, h                                          ; $74ac: $44
	ld l, a                                          ; $74ad: $6f
	db $fc                                           ; $74ae: $fc
	ld a, [hl]                                       ; $74af: $7e
	ret nz                                           ; $74b0: $c0

	sbc d                                            ; $74b1: $9a
	ld d, [hl]                                       ; $74b2: $56
	xor b                                            ; $74b3: $a8
	ld a, [hl+]                                      ; $74b4: $2a
	call nc, Call_049_7aff                           ; $74b5: $d4 $ff $7a
	call nz, Call_049_7876                           ; $74b8: $c4 $76 $78
	ld a, a                                          ; $74bb: $7f
	add h                                            ; $74bc: $84
	ld a, [hl]                                       ; $74bd: $7e
	call z, $be7f                                    ; $74be: $cc $7f $be
	sbc c                                            ; $74c1: $99
	and b                                            ; $74c2: $a0
	ld e, a                                          ; $74c3: $5f
	push af                                          ; $74c4: $f5
	ld a, [bc]                                       ; $74c5: $0a
	ld a, [$7705]                                    ; $74c6: $fa $05 $77
	db $f4                                           ; $74c9: $f4
	ld [hl], a                                       ; $74ca: $77
	call z, Call_049_647e                            ; $74cb: $cc $7e $64
	ld a, a                                          ; $74ce: $7f
	rst SubAFromBC                                          ; $74cf: $e7
	sbc [hl]                                         ; $74d0: $9e
	ld d, h                                          ; $74d1: $54
	ld a, d                                          ; $74d2: $7a
	call z, $b47e                                    ; $74d3: $cc $7e $b4

jr_049_74d6:
	ld a, a                                          ; $74d6: $7f
	add sp, $77                                      ; $74d7: $e8 $77
	db $f4                                           ; $74d9: $f4
	ld [hl], a                                       ; $74da: $77
	cp $42                                           ; $74db: $fe $42
	ret nz                                           ; $74dd: $c0

	sbc h                                            ; $74de: $9c
	cp $02                                           ; $74df: $fe $02
	db $fc                                           ; $74e1: $fc
	ld d, a                                          ; $74e2: $57
	cp $97                                           ; $74e3: $fe $97
	db $fc                                           ; $74e5: $fc
	rra                                              ; $74e6: $1f
	inc e                                            ; $74e7: $1c
	rrca                                             ; $74e8: $0f
	ld [$1417], sp                                   ; $74e9: $08 $17 $14
	dec bc                                           ; $74ec: $0b
	ld [hl], a                                       ; $74ed: $77
	db $fc                                           ; $74ee: $fc
	sub c                                            ; $74ef: $91
	jr jr_049_74f9                                   ; $74f0: $18 $07

	inc e                                            ; $74f2: $1c
	inc bc                                           ; $74f3: $03
	ei                                               ; $74f4: $fb
	inc b                                            ; $74f5: $04
	ei                                               ; $74f6: $fb
	dec b                                            ; $74f7: $05
	ei                                               ; $74f8: $fb

jr_049_74f9:
	inc b                                            ; $74f9: $04
	rst $38                                          ; $74fa: $ff
	ld bc, $0003                                     ; $74fb: $01 $03 $00
	ld a, e                                          ; $74fe: $7b
	rra                                              ; $74ff: $1f
	ld a, e                                          ; $7500: $7b
	db $fc                                           ; $7501: $fc
	add b                                            ; $7502: $80
	db $fd                                           ; $7503: $fd
	xor a                                            ; $7504: $af
	rst $38                                          ; $7505: $ff
	ld e, h                                          ; $7506: $5c
	db $fd                                           ; $7507: $fd
	xor [hl]                                         ; $7508: $ae
	cp $57                                           ; $7509: $fe $57
	cp $af                                           ; $750b: $fe $af
	cp $57                                           ; $750d: $fe $57
	dec a                                            ; $750f: $3d
	adc [hl]                                         ; $7510: $8e
	ld c, $57                                        ; $7511: $0e $57
	ei                                               ; $7513: $fb
	add e                                            ; $7514: $83
	add e                                            ; $7515: $83
	ld bc, $0103                                     ; $7516: $01 $03 $01
	ld c, l                                          ; $7519: $4d
	ld bc, $6d7d                                     ; $751a: $01 $7d $6d
	rst $38                                          ; $751d: $ff
	inc de                                           ; $751e: $13
	ccf                                              ; $751f: $3f
	jp $9eef                                         ; $7520: $c3 $ef $9e


	rst SubAFromHL                                          ; $7523: $d7
	sbc $ff                                          ; $7524: $de $ff
	ld a, d                                          ; $7526: $7a
	ld [$ffd7], a                                    ; $7527: $ea $d7 $ff
	sbc [hl]                                         ; $752a: $9e
	ei                                               ; $752b: $fb
	ld a, e                                          ; $752c: $7b
	ldh a, [$99]                                     ; $752d: $f0 $99
	ld a, a                                          ; $752f: $7f
	sbc a                                            ; $7530: $9f
	rst $38                                          ; $7531: $ff
	cp a                                             ; $7532: $bf
	ld a, a                                          ; $7533: $7f
	cp a                                             ; $7534: $bf
	ld l, a                                          ; $7535: $6f
	db $fc                                           ; $7536: $fc
	ld [hl], e                                       ; $7537: $73
	ldh [$7e], a                                     ; $7538: $e0 $7e
	dec hl                                           ; $753a: $2b
	sbc [hl]                                         ; $753b: $9e
	rst AddAOntoHL                                          ; $753c: $ef
	ld h, a                                          ; $753d: $67
	cp $97                                           ; $753e: $fe $97
	or h                                             ; $7540: $b4
	sbc $fe                                          ; $7541: $de $fe
	nop                                              ; $7543: $00
	db $f4                                           ; $7544: $f4
	sbc $ba                                          ; $7545: $de $ba
	sbc $7b                                          ; $7547: $de $7b
	db $fc                                           ; $7549: $fc
	sub h                                            ; $754a: $94
	call c, $defc                                    ; $754b: $dc $fc $de
	or h                                             ; $754e: $b4
	sbc $b7                                          ; $754f: $de $b7
	ld c, a                                          ; $7551: $4f
	rrca                                             ; $7552: $0f
	rlca                                             ; $7553: $07
	rlca                                             ; $7554: $07
	rrca                                             ; $7555: $0f
	ld e, a                                          ; $7556: $5f
	db $fc                                           ; $7557: $fc
	pop de                                           ; $7558: $d1
	rst $38                                          ; $7559: $ff
	add l                                            ; $755a: $85
	nop                                              ; $755b: $00
	push de                                          ; $755c: $d5
	add b                                            ; $755d: $80
	ld [$d580], a                                    ; $755e: $ea $80 $d5
	ret nz                                           ; $7561: $c0

	ld [$e5f0], a                                    ; $7562: $ea $f0 $e5
	cp $e1                                           ; $7565: $fe $e1
	db $fc                                           ; $7567: $fc
	di                                               ; $7568: $f3
	rst $38                                          ; $7569: $ff
	ld hl, sp-$56                                    ; $756a: $f8 $aa
	ld d, l                                          ; $756c: $55
	ld d, h                                          ; $756d: $54
	xor e                                            ; $756e: $ab
	xor b                                            ; $756f: $a8
	ld d, a                                          ; $7570: $57
	ld b, b                                          ; $7571: $40
	cp a                                             ; $7572: $bf
	add b                                            ; $7573: $80
	ld a, a                                          ; $7574: $7f
	ld l, a                                          ; $7575: $6f
	jr nz, jr_049_75f5                               ; $7576: $20 $7d

	adc b                                            ; $7578: $88
	ld d, a                                          ; $7579: $57
	cp $77                                           ; $757a: $fe $77
	sub e                                            ; $757c: $93
	ld d, a                                          ; $757d: $57
	cp $df                                           ; $757e: $fe $df
	rst $38                                          ; $7580: $ff
	sbc e                                            ; $7581: $9b

Jump_049_7582:
	db $10                                           ; $7582: $10
	xor $00                                          ; $7583: $ee $00
	cp $77                                           ; $7585: $fe $77
	cp $6d                                           ; $7587: $fe $6d
	jp nc, $e073                                     ; $7589: $d2 $73 $e0

	ld [hl], a                                       ; $758c: $77
	add $7b                                          ; $758d: $c6 $7b
	db $fc                                           ; $758f: $fc
	sbc d                                            ; $7590: $9a
	ld a, [bc]                                       ; $7591: $0a
	ld [hl], l                                       ; $7592: $75
	push de                                          ; $7593: $d5
	ccf                                              ; $7594: $3f
	ld [$ba6b], a                                    ; $7595: $ea $6b $ba
	ld a, c                                          ; $7598: $79
	pop de                                           ; $7599: $d1
	ld a, l                                          ; $759a: $7d
	ld e, b                                          ; $759b: $58
	rst SubAFromDE                                          ; $759c: $df
	ld d, l                                          ; $759d: $55
	ld e, b                                          ; $759e: $58
	db $d3                                           ; $759f: $d3
	sbc e                                            ; $75a0: $9b
	ld b, l                                          ; $75a1: $45
	cp d                                             ; $75a2: $ba
	xor d                                            ; $75a3: $aa
	ld d, a                                          ; $75a4: $57
	ld [hl], a                                       ; $75a5: $77
	ldh a, [$9d]                                     ; $75a6: $f0 $9d
	ldh [$1f], a                                     ; $75a8: $e0 $1f
	ld [hl], a                                       ; $75aa: $77
	cp c                                             ; $75ab: $b9
	sub h                                            ; $75ac: $94
	ld c, b                                          ; $75ad: $48
	ccf                                              ; $75ae: $3f
	ld c, b                                          ; $75af: $48
	ccf                                              ; $75b0: $3f
	ld c, e                                          ; $75b1: $4b
	inc a                                            ; $75b2: $3c
	ld c, b                                          ; $75b3: $48
	ccf                                              ; $75b4: $3f
	rst $38                                          ; $75b5: $ff
	ld [$7a00], sp                                   ; $75b6: $08 $00 $7a
	ret nz                                           ; $75b9: $c0

	add b                                            ; $75ba: $80
	db $fc                                           ; $75bb: $fc
	cp $22                                           ; $75bc: $fe $22
	db $fc                                           ; $75be: $fc
	inc [hl]                                         ; $75bf: $34
	cp $2a                                           ; $75c0: $fe $2a
	db $fc                                           ; $75c2: $fc
	add hl, sp                                       ; $75c3: $39
	ldh a, [$a7]                                     ; $75c4: $f0 $a7
	jp $1708                                         ; $75c6: $c3 $08 $17


	db $10                                           ; $75c9: $10
	ld c, $09                                        ; $75ca: $0e $09
	db $10                                           ; $75cc: $10
	rlca                                             ; $75cd: $07
	inc bc                                           ; $75ce: $03
	rra                                              ; $75cf: $1f
	rrca                                             ; $75d0: $0f
	ld a, a                                          ; $75d1: $7f
	ccf                                              ; $75d2: $3f
	push af                                          ; $75d3: $f5
	ei                                               ; $75d4: $fb
	ei                                               ; $75d5: $fb
	db $fd                                           ; $75d6: $fd
	jr nz, jr_049_75ec                               ; $75d7: $20 $13

	inc [hl]                                         ; $75d9: $34
	add b                                            ; $75da: $80
	ld a, e                                          ; $75db: $7b
	cp $ff                                           ; $75dc: $fe $ff
	rst FarCall                                          ; $75de: $f7
	rst AddAOntoHL                                          ; $75df: $ef

jr_049_75e0:
	db $e3                                           ; $75e0: $e3
	di                                               ; $75e1: $f3
	di                                               ; $75e2: $f3
	db $e3                                           ; $75e3: $e3
	db $e3                                           ; $75e4: $e3
	di                                               ; $75e5: $f3
	call nc, $00eb                                   ; $75e6: $d4 $eb $00
	xor a                                            ; $75e9: $af
	nop                                              ; $75ea: $00
	ld d, a                                          ; $75eb: $57

jr_049_75ec:
	nop                                              ; $75ec: $00
	xor [hl]                                         ; $75ed: $ae
	nop                                              ; $75ee: $00
	ld d, a                                          ; $75ef: $57
	add b                                            ; $75f0: $80
	ld l, $00                                        ; $75f1: $2e $00
	ld d, [hl]                                       ; $75f3: $56
	nop                                              ; $75f4: $00

jr_049_75f5:
	ld l, $20                                        ; $75f5: $2e $20
	sub [hl]                                         ; $75f7: $96
	or $94                                           ; $75f8: $f6 $94
	sub c                                            ; $75fa: $91
	inc l                                            ; $75fb: $2c
	sub $64                                          ; $75fc: $d6 $64
	cp $7c                                           ; $75fe: $fe $7c
	sbc $7c                                          ; $7600: $de $7c
	sbc [hl]                                         ; $7602: $9e
	db $fc                                           ; $7603: $fc
	ld l, $6c                                        ; $7604: $2e $6c
	ld a, [hl+]                                      ; $7606: $2a
	and b                                            ; $7607: $a0
	ld e, $77                                        ; $7608: $1e $77
	sub h                                            ; $760a: $94
	ld a, a                                          ; $760b: $7f
	ld l, $9b                                        ; $760c: $2e $9b
	ld a, [hl+]                                      ; $760e: $2a
	push de                                          ; $760f: $d5
	ld d, h                                          ; $7610: $54
	xor e                                            ; $7611: $ab
	ld l, h                                          ; $7612: $6c
	and b                                            ; $7613: $a0
	sbc l                                            ; $7614: $9d
	add b                                            ; $7615: $80
	ccf                                              ; $7616: $3f
	ld [hl], a                                       ; $7617: $77
	cp $88                                           ; $7618: $fe $88
	sub l                                            ; $761a: $95
	ld a, [hl+]                                      ; $761b: $2a
	xor d                                            ; $761c: $aa
	dec d                                            ; $761d: $15
	sbc a                                            ; $761e: $9f
	jr nz, jr_049_75e0                               ; $761f: $20 $bf

	nop                                              ; $7621: $00
	rst SubAFromDE                                          ; $7622: $df
	jr nz, jr_049_7625                               ; $7623: $20 $00

jr_049_7625:
	rst AddAOntoHL                                          ; $7625: $ef
	nop                                              ; $7626: $00
	rst AddAOntoHL                                          ; $7627: $ef
	jr nz, @-$2f                                     ; $7628: $20 $cf

	ld c, d                                          ; $762a: $4a

Call_049_762b:
	and l                                            ; $762b: $a5
	and l                                            ; $762c: $a5
	ld c, d                                          ; $762d: $4a
	rst AddAOntoHL                                          ; $762e: $ef
	nop                                              ; $762f: $00
	rst SubAFromBC                                          ; $7630: $e7
	ld a, c                                          ; $7631: $79
	sbc [hl]                                         ; $7632: $9e
	adc h                                            ; $7633: $8c
	ld c, b                                          ; $7634: $48
	sub [hl]                                         ; $7635: $96
	ld [de], a                                       ; $7636: $12
	add b                                            ; $7637: $80
	ld d, b                                          ; $7638: $50
	add d                                            ; $7639: $82
	sub d                                            ; $763a: $92

Call_049_763b:
	nop                                              ; $763b: $00
	ld d, c                                          ; $763c: $51
	add d                                            ; $763d: $82
	add c                                            ; $763e: $81
	inc bc                                           ; $763f: $03
	add b                                            ; $7640: $80
	inc bc                                           ; $7641: $03
	ldh [$03], a                                     ; $7642: $e0 $03
	nop                                              ; $7644: $00
	rlca                                             ; $7645: $07
	rrca                                             ; $7646: $0f
	ld l, e                                          ; $7647: $6b
	cp $df                                           ; $7648: $fe $df
	rlca                                             ; $764a: $07
	sbc e                                            ; $764b: $9b
	ld b, a                                          ; $764c: $47
	add a                                            ; $764d: $87
	rrca                                             ; $764e: $0f
	rst GetHLinHL                                          ; $764f: $cf
	ld [hl], a                                       ; $7650: $77
	inc c                                            ; $7651: $0c
	sbc [hl]                                         ; $7652: $9e
	ld a, [hl]                                       ; $7653: $7e
	ld e, e                                          ; $7654: $5b
	db $fc                                           ; $7655: $fc
	ld [hl], a                                       ; $7656: $77
	ldh a, [$7b]                                     ; $7657: $f0 $7b
	add hl, bc                                       ; $7659: $09
	ld h, e                                          ; $765a: $63
	db $fc                                           ; $765b: $fc
	ld [hl], a                                       ; $765c: $77
	rst AddAOntoHL                                          ; $765d: $ef
	ld a, [hl]                                       ; $765e: $7e
	inc sp                                           ; $765f: $33
	ld a, a                                          ; $7660: $7f
	sub e                                            ; $7661: $93
	ld [hl], a                                       ; $7662: $77
	db $fc                                           ; $7663: $fc
	sbc [hl]                                         ; $7664: $9e
	rst SubAFromHL                                          ; $7665: $d7
	ld [hl], a                                       ; $7666: $77
	rst AddAOntoHL                                          ; $7667: $ef
	ld a, e                                          ; $7668: $7b
	ldh a, [$9b]                                     ; $7669: $f0 $9b
	ld d, [hl]                                       ; $766b: $56
	ld a, a                                          ; $766c: $7f
	dec hl                                           ; $766d: $2b
	ld a, a                                          ; $766e: $7f
	ld l, a                                          ; $766f: $6f
	db $fc                                           ; $7670: $fc
	ld l, a                                          ; $7671: $6f
	ldh a, [$9c]                                     ; $7672: $f0 $9c
	xor e                                            ; $7674: $ab
	rst $38                                          ; $7675: $ff
	ld d, [hl]                                       ; $7676: $56
	ld l, e                                          ; $7677: $6b
	db $fc                                           ; $7678: $fc
	ld l, e                                          ; $7679: $6b
	ldh [$7e], a                                     ; $767a: $e0 $7e
	db $e4                                           ; $767c: $e4
	sbc [hl]                                         ; $767d: $9e
	cp $6f                                           ; $767e: $fe $6f
	db $fc                                           ; $7680: $fc
	ld l, a                                          ; $7681: $6f
	ldh a, [$9b]                                     ; $7682: $f0 $9b
	push de                                          ; $7684: $d5
	ld a, a                                          ; $7685: $7f
	xor e                                            ; $7686: $ab
	ld a, a                                          ; $7687: $7f
	ld l, a                                          ; $7688: $6f
	db $fc                                           ; $7689: $fc
	ld h, a                                          ; $768a: $67
	ret nc                                           ; $768b: $d0

	ld a, [hl]                                       ; $768c: $7e
	sub $7f                                          ; $768d: $d6 $7f
	or d                                             ; $768f: $b2
	sbc h                                            ; $7690: $9c
	ld d, h                                          ; $7691: $54
	cp $aa                                           ; $7692: $fe $aa
	sbc $fc                                          ; $7694: $de $fc
	ld [hl], a                                       ; $7696: $77
	ldh a, [$7e]                                     ; $7697: $f0 $7e
	jp z, $c676                                      ; $7699: $ca $76 $c6

	ld a, a                                          ; $769c: $7f
	ldh [c], a                                       ; $769d: $e2
	sbc h                                            ; $769e: $9c
	ld a, [hl+]                                      ; $769f: $2a
	rst $38                                          ; $76a0: $ff
	rst $38                                          ; $76a1: $ff
	ld a, e                                          ; $76a2: $7b
	sbc $75                                          ; $76a3: $de $75
	or a                                             ; $76a5: $b7
	halt                                             ; $76a6: $76
	ldh [hDisp1_SCY], a                                     ; $76a7: $e0 $90
	ld a, h                                          ; $76a9: $7c
	ld a, $f0                                        ; $76aa: $3e $f0
	ld hl, sp-$30                                    ; $76ac: $f8 $d0
	ldh [$1f], a                                     ; $76ae: $e0 $1f
	adc a                                            ; $76b0: $8f
	ld a, [hl]                                       ; $76b1: $7e
	ccf                                              ; $76b2: $3f
	cp $ff                                           ; $76b3: $fe $ff
	ld a, [$e6ff]                                    ; $76b5: $fa $ff $e6
	ld a, e                                          ; $76b8: $7b
	ld h, d                                          ; $76b9: $62
	sbc c                                            ; $76ba: $99
	dec sp                                           ; $76bb: $3b
	ld a, h                                          ; $76bc: $7c
	ld l, c                                          ; $76bd: $69
	ld [hl], a                                       ; $76be: $77
	ld d, l                                          ; $76bf: $55
	xor e                                            ; $76c0: $ab
	ld [hl], h                                       ; $76c1: $74
	or l                                             ; $76c2: $b5
	adc b                                            ; $76c3: $88
	ld [bc], a                                       ; $76c4: $02
	rlca                                             ; $76c5: $07
	inc c                                            ; $76c6: $0c
	rra                                              ; $76c7: $1f
	ld b, b                                          ; $76c8: $40
	ccf                                              ; $76c9: $3f
	ld h, [hl]                                       ; $76ca: $66
	rst $38                                          ; $76cb: $ff
	di                                               ; $76cc: $f3
	rst $38                                          ; $76cd: $ff
	ld e, h                                          ; $76ce: $5c
	cp a                                             ; $76cf: $bf
	jp nc, $ab7f                                     ; $76d0: $d2 $7f $ab

	rst FarCall                                          ; $76d3: $f7
	add b                                            ; $76d4: $80
	ld a, a                                          ; $76d5: $7f
	ld a, h                                          ; $76d6: $7c
	rst $38                                          ; $76d7: $ff
	jr nz, @+$01                                     ; $76d8: $20 $ff

	ld b, b                                          ; $76da: $40
	ld a, e                                          ; $76db: $7b
	db $fc                                           ; $76dc: $fc
	sbc e                                            ; $76dd: $9b
	ld d, b                                          ; $76de: $50
	rst AddAOntoHL                                          ; $76df: $ef

jr_049_76e0:
	dec b                                            ; $76e0: $05
	ld a, [$2e56]                                    ; $76e1: $fa $56 $2e
	ld a, h                                          ; $76e4: $7c
	ld [$167d], a                                    ; $76e5: $ea $7d $16
	ld a, a                                          ; $76e8: $7f
	ld a, [$0f9c]                                    ; $76e9: $fa $9c $0f
	rst $38                                          ; $76ec: $ff
	rra                                              ; $76ed: $1f
	ld a, e                                          ; $76ee: $7b
	cp $9c                                           ; $76ef: $fe $9c
	ld c, $ff                                        ; $76f1: $0e $ff
	rrca                                             ; $76f3: $0f
	halt                                             ; $76f4: $76
	ld c, d                                          ; $76f5: $4a
	sbc d                                            ; $76f6: $9a
	xor d                                            ; $76f7: $aa
	add b                                            ; $76f8: $80
	ld a, a                                          ; $76f9: $7f
	ret nz                                           ; $76fa: $c0

	rst $38                                          ; $76fb: $ff
	ld a, b                                          ; $76fc: $78
	sbc e                                            ; $76fd: $9b
	ld a, a                                          ; $76fe: $7f
	db $fc                                           ; $76ff: $fc
	ld a, d                                          ; $7700: $7a
	ld [hl-], a                                      ; $7701: $32
	ld a, [hl]                                       ; $7702: $7e
	or [hl]                                          ; $7703: $b6
	ld [hl], a                                       ; $7704: $77
	ldh [$7f], a                                     ; $7705: $e0 $7f
	ld [$d677], a                                    ; $7707: $ea $77 $d6
	ld a, l                                          ; $770a: $7d
	dec [hl]                                         ; $770b: $35
	ld a, a                                          ; $770c: $7f
	ld a, [$f67c]                                    ; $770d: $fa $7c $f6
	ld h, a                                          ; $7710: $67
	ldh a, [rPCM34]                                  ; $7711: $f0 $77
	db $fc                                           ; $7713: $fc
	ld a, a                                          ; $7714: $7f
	cp $80                                           ; $7715: $fe $80
	inc bc                                           ; $7717: $03
	db $e3                                           ; $7718: $e3
	nop                                              ; $7719: $00
	ldh [c], a                                       ; $771a: $e2
	jr nz, jr_049_76e0                               ; $771b: $20 $c3

	and c                                            ; $771d: $a1
	ld b, e                                          ; $771e: $43
	nop                                              ; $771f: $00
	jp $03c0                                         ; $7720: $c3 $c0 $03


	ld b, b                                          ; $7723: $40
	add e                                            ; $7724: $83
	ld b, b                                          ; $7725: $40
	add e                                            ; $7726: $83
	jr @+$01                                         ; $7727: $18 $ff

	ld [$0070], sp                                   ; $7729: $08 $70 $00
	inc a                                            ; $772c: $3c
	ld [de], a                                       ; $772d: $12
	xor h                                            ; $772e: $ac

Jump_049_772f:
	ld d, b                                          ; $772f: $50
	and [hl]                                         ; $7730: $a6
	ld [bc], a                                       ; $7731: $02
	or $03                                           ; $7732: $f6 $03
	ldh a, [c]                                       ; $7734: $f2
	nop                                              ; $7735: $00
	ld a, e                                          ; $7736: $7b
	adc $f3                                          ; $7737: $ce $f3
	ld a, l                                          ; $7739: $7d
	add sp, $77                                      ; $773a: $e8 $77
	ld b, b                                          ; $773c: $40
	ld a, a                                          ; $773d: $7f
	ld e, a                                          ; $773e: $5f

Jump_049_773f:
	sbc e                                            ; $773f: $9b
	ld [bc], a                                       ; $7740: $02
	inc b                                            ; $7741: $04
	rlca                                             ; $7742: $07
	nop                                              ; $7743: $00
	ld [hl], a                                       ; $7744: $77
	cp $7f                                           ; $7745: $fe $7f
	sbc h                                            ; $7747: $9c
	sub c                                            ; $7748: $91
	add b                                            ; $7749: $80
	nop                                              ; $774a: $00
	ld h, b                                          ; $774b: $60
	add b                                            ; $774c: $80
	and b                                            ; $774d: $a0
	ld b, b                                          ; $774e: $40
	ret nz                                           ; $774f: $c0

	jr nz, jr_049_7792                               ; $7750: $20 $40

	jr nc, jr_049_77c4                               ; $7752: $30 $70

	adc b                                            ; $7754: $88
	ld l, b                                          ; $7755: $68
	ldh a, [rBGP]                                    ; $7756: $f0 $47
	ret nc                                           ; $7758: $d0

	inc bc                                           ; $7759: $03
	ldh a, [rWX]                                     ; $775a: $f0 $4b
	ldh a, [hDisp1_LCDC]                                     ; $775c: $f0 $8f
	inc bc                                           ; $775e: $03
	db $fc                                           ; $775f: $fc
	ld bc, $0602                                     ; $7760: $01 $02 $06
	ld bc, $0205                                     ; $7763: $01 $05 $02
	rrca                                             ; $7766: $0f
	nop                                              ; $7767: $00
	ld a, [bc]                                       ; $7768: $0a
	inc b                                            ; $7769: $04
	ld c, $01                                        ; $776a: $0e $01
	rrca                                             ; $776c: $0f
	nop                                              ; $776d: $00
	ld a, b                                          ; $776e: $78
	ld c, b                                          ; $776f: $48
	sbc [hl]                                         ; $7770: $9e
	ret nz                                           ; $7771: $c0

	ld a, e                                          ; $7772: $7b
	and e                                            ; $7773: $a3
	sub h                                            ; $7774: $94
	ret nz                                           ; $7775: $c0

	and b                                            ; $7776: $a0
	ret nz                                           ; $7777: $c0

	and b                                            ; $7778: $a0
	ld b, b                                          ; $7779: $40

jr_049_777a:
	nop                                              ; $777a: $00
	ldh [rLCDC], a                                   ; $777b: $e0 $40
	and b                                            ; $777d: $a0
	ret nz                                           ; $777e: $c0

	add b                                            ; $777f: $80
	ld [hl], a                                       ; $7780: $77
	cp $84                                           ; $7781: $fe $84
	sub e                                            ; $7783: $93
	pop bc                                           ; $7784: $c1
	db $e3                                           ; $7785: $e3
	rst JumpTable                                          ; $7786: $c7
	adc h                                            ; $7787: $8c
	sbc a                                            ; $7788: $9f
	cp b                                             ; $7789: $b8
	ld a, a                                          ; $778a: $7f
	ld d, a                                          ; $778b: $57
	rst $38                                          ; $778c: $ff
	ld d, a                                          ; $778d: $57
	ld l, a                                          ; $778e: $6f
	ld a, c                                          ; $778f: $79
	rra                                              ; $7790: $1f
	db $f4                                           ; $7791: $f4

jr_049_7792:
	ld a, a                                          ; $7792: $7f
	add d                                            ; $7793: $82
	db $fd                                           ; $7794: $fd
	ret c                                            ; $7795: $d8

	rst $38                                          ; $7796: $ff
	ld a, [bc]                                       ; $7797: $0a
	db $fd                                           ; $7798: $fd
	jr nz, jr_049_777a                               ; $7799: $20 $df

	ld c, [hl]                                       ; $779b: $4e
	rst $38                                          ; $779c: $ff
	ldh [c], a                                       ; $779d: $e2
	ld a, e                                          ; $779e: $7b
	inc l                                            ; $779f: $2c
	sbc d                                            ; $77a0: $9a
	adc b                                            ; $77a1: $88
	rst $38                                          ; $77a2: $ff
	ld [bc], a                                       ; $77a3: $02
	db $fd                                           ; $77a4: $fd
	ret nz                                           ; $77a5: $c0

	ld a, d                                          ; $77a6: $7a
	jp nc, $147f                                     ; $77a7: $d2 $7f $14

	ld a, a                                          ; $77aa: $7f
	db $f4                                           ; $77ab: $f4
	sbc [hl]                                         ; $77ac: $9e
	push de                                          ; $77ad: $d5
	ld [hl], l                                       ; $77ae: $75
	or b                                             ; $77af: $b0
	ld h, d                                          ; $77b0: $62
	jp nc, Jump_049_7e7e                             ; $77b1: $d2 $7e $7e

	ld a, [hl]                                       ; $77b4: $7e
	halt                                             ; $77b5: $76
	ld a, a                                          ; $77b6: $7f
	ldh [c], a                                       ; $77b7: $e2
	ld a, a                                          ; $77b8: $7f
	ld hl, sp+$7f                                    ; $77b9: $f8 $7f
	ldh [$6e], a                                     ; $77bb: $e0 $6e
	call nz, $fc7f                                   ; $77bd: $c4 $7f $fc
	adc a                                            ; $77c0: $8f
	ld [de], a                                       ; $77c1: $12
	rst $38                                          ; $77c2: $ff
	ld b, d                                          ; $77c3: $42

jr_049_77c4:
	db $fd                                           ; $77c4: $fd
	or a                                             ; $77c5: $b7
	ret z                                            ; $77c6: $c8

	ld b, e                                          ; $77c7: $43
	sbc h                                            ; $77c8: $9c
	ld [hl], a                                       ; $77c9: $77
	adc b                                            ; $77ca: $88
	ld l, e                                          ; $77cb: $6b
	sub h                                            ; $77cc: $94
	ld [hl], a                                       ; $77cd: $77
	adc b                                            ; $77ce: $88
	daa                                              ; $77cf: $27
	ret c                                            ; $77d0: $d8

	ld a, d                                          ; $77d1: $7a
	jp z, $ff92                                      ; $77d2: $ca $92 $ff

	jp nz, $a53d                                     ; $77d5: $c2 $3d $a5

	ld e, d                                          ; $77d8: $5a
	inc de                                           ; $77d9: $13
	db $ec                                           ; $77da: $ec
	or $49                                           ; $77db: $f6 $49
	daa                                              ; $77dd: $27
	ret c                                            ; $77de: $d8

	ld [hl], a                                       ; $77df: $77
	ret z                                            ; $77e0: $c8

	halt                                             ; $77e1: $76
	ret c                                            ; $77e2: $d8

	sbc h                                            ; $77e3: $9c
	db $fd                                           ; $77e4: $fd
	ld [bc], a                                       ; $77e5: $02
	ld a, [hl+]                                      ; $77e6: $2a
	ld a, e                                          ; $77e7: $7b
	cp c                                             ; $77e8: $b9
	ld a, a                                          ; $77e9: $7f
	ld hl, sp+$77                                    ; $77ea: $f8 $77
	cp l                                             ; $77ec: $bd
	ld [hl], a                                       ; $77ed: $77
	ldh a, [$7e]                                     ; $77ee: $f0 $7e
	cp [hl]                                          ; $77f0: $be
	ld e, e                                          ; $77f1: $5b
	ldh a, [$97]                                     ; $77f2: $f0 $97
	add e                                            ; $77f4: $83
	nop                                              ; $77f5: $00
	add e                                            ; $77f6: $83
	ld bc, $8083                                     ; $77f7: $01 $83 $80
	inc bc                                           ; $77fa: $03
	add e                                            ; $77fb: $83
	ld a, e                                          ; $77fc: $7b
	cp $dd                                           ; $77fd: $fe $dd

Call_049_77ff:
	inc bc                                           ; $77ff: $03
	ld a, [hl]                                       ; $7800: $7e
	adc $76                                          ; $7801: $ce $76
	sbc d                                            ; $7803: $9a
	sbc l                                            ; $7804: $9d
	ld [$60f7], sp                                   ; $7805: $08 $f7 $60
	ld d, b                                          ; $7808: $50
	rst SubAFromDE                                          ; $7809: $df
	add b                                            ; $780a: $80
	ld a, a                                          ; $780b: $7f
	db $fd                                           ; $780c: $fd
	rst $38                                          ; $780d: $ff
	ld a, a                                          ; $780e: $7f
	ld c, h                                          ; $780f: $4c
	add b                                            ; $7810: $80
	rst $38                                          ; $7811: $ff
	rst AddAOntoHL                                          ; $7812: $ef
	rst $38                                          ; $7813: $ff
	ldh a, [rIE]                                     ; $7814: $f0 $ff
	ei                                               ; $7816: $fb
	rst $38                                          ; $7817: $ff
	inc c                                            ; $7818: $0c
	inc bc                                           ; $7819: $03
	ld c, $00                                        ; $781a: $0e $00
	ld [$0806], sp                                   ; $781c: $08 $06 $08
	rlca                                             ; $781f: $07
	dec b                                            ; $7820: $05
	ld a, [$f9f6]                                    ; $7821: $fa $f6 $f9
	ld b, $f9                                        ; $7824: $06 $f9
	db $fc                                           ; $7826: $fc
	di                                               ; $7827: $f3
	add b                                            ; $7828: $80
	ld [hl], b                                       ; $7829: $70
	ld [$6870], sp                                   ; $782a: $08 $70 $68
	ldh a, [$30]                                     ; $782d: $f0 $30
	call z, $ee97                                    ; $782f: $cc $97 $ee

jr_049_7832:
	rra                                              ; $7832: $1f
	daa                                              ; $7833: $27
	rst SubAFromDE                                          ; $7834: $df
	cp b                                             ; $7835: $b8
	ld b, a                                          ; $7836: $47
	dec sp                                           ; $7837: $3b
	rst JumpTable                                          ; $7838: $c7
	ld e, [hl]                                       ; $7839: $5e
	add sp, $6d                                      ; $783a: $e8 $6d
	ld d, h                                          ; $783c: $54
	inc bc                                           ; $783d: $03
	ldh a, [rWX]                                     ; $783e: $f0 $4b
	ldh a, [hDisp0_OBP0]                                     ; $7840: $f0 $86
	ld c, $11                                        ; $7842: $0e $11
	jr jr_049_7867                                   ; $7844: $18 $21

	ld [hl], c                                       ; $7846: $71
	ld c, $3f                                        ; $7847: $0e $3f
	ld b, b                                          ; $7849: $40
	push hl                                          ; $784a: $e5
	inc de                                           ; $784b: $13
	db $f4                                           ; $784c: $f4
	adc e                                            ; $784d: $8b
	ld a, e                                          ; $784e: $7b
	add h                                            ; $784f: $84
	ldh a, [c]                                       ; $7850: $f2
	adc c                                            ; $7851: $89
	ld h, b                                          ; $7852: $60
	sub b                                            ; $7853: $90
	and b                                            ; $7854: $a0
	ld [hl], b                                       ; $7855: $70
	add sp, $30                                      ; $7856: $e8 $30
	jr nc, jr_049_7832                               ; $7858: $30 $d8

	jp c, $dc79                                      ; $785a: $da $79 $dc

	sbc d                                            ; $785d: $9a
	rst AddAOntoHL                                          ; $785e: $ef
	rra                                              ; $785f: $1f
	xor a                                            ; $7860: $af
	ld a, a                                          ; $7861: $7f
	xor b                                            ; $7862: $a8
	ld a, d                                          ; $7863: $7a
	cp $9e                                           ; $7864: $fe $9e
	xor a                                            ; $7866: $af

jr_049_7867:
	ld a, d                                          ; $7867: $7a
	xor $7f                                          ; $7868: $ee $7f
	ld hl, sp-$67                                    ; $786a: $f8 $99
	ld d, b                                          ; $786c: $50
	rst $38                                          ; $786d: $ff
	rrca                                             ; $786e: $0f
	ldh a, [$50]                                     ; $786f: $f0 $50
	rst AddAOntoHL                                          ; $7871: $ef
	ld a, d                                          ; $7872: $7a
	jr nc, jr_049_78f3                               ; $7873: $30 $7e

	ret c                                            ; $7875: $d8

Call_049_7876:
	sub a                                            ; $7876: $97
	rst $38                                          ; $7877: $ff
	db $10                                           ; $7878: $10
	rst AddAOntoHL                                          ; $7879: $ef
	jr nz, @-$1f                                     ; $787a: $20 $df

	dec d                                            ; $787c: $15
	ld [$7aff], a                                    ; $787d: $ea $ff $7a
	ld [hl+], a                                      ; $7880: $22
	ld [hl], l                                       ; $7881: $75
	ldh [c], a                                       ; $7882: $e2
	ld a, a                                          ; $7883: $7f
	cp $7f                                           ; $7884: $fe $7f
	ld h, d                                          ; $7886: $62
	ld a, a                                          ; $7887: $7f
	ld e, $99                                        ; $7888: $1e $99
	ld d, b                                          ; $788a: $50
	xor a                                            ; $788b: $af
	rst $38                                          ; $788c: $ff
	nop                                              ; $788d: $00
	ld d, a                                          ; $788e: $57
	xor b                                            ; $788f: $a8
	ld l, a                                          ; $7890: $6f
	ldh a, [$7f]                                     ; $7891: $f0 $7f
	ld a, [$0677]                                    ; $7893: $fa $77 $06
	ld [hl], a                                       ; $7896: $77
	db $10                                           ; $7897: $10
	ld a, a                                          ; $7898: $7f
	or $9e                                           ; $7899: $f6 $9e
	ld [bc], a                                       ; $789b: $02
	ld [hl], a                                       ; $789c: $77
	ldh a, [$80]                                     ; $789d: $f0 $80
	xor e                                            ; $789f: $ab
	db $fc                                           ; $78a0: $fc
	inc bc                                           ; $78a1: $03
	dec d                                            ; $78a2: $15
	db $eb                                           ; $78a3: $eb
	db $fc                                           ; $78a4: $fc
	inc bc                                           ; $78a5: $03
	db $fd                                           ; $78a6: $fd
	ld [bc], a                                       ; $78a7: $02
	ld [hl], l                                       ; $78a8: $75
	adc d                                            ; $78a9: $8a
	ld hl, $42de                                     ; $78aa: $21 $de $42
	cp l                                             ; $78ad: $bd
	ld l, l                                          ; $78ae: $6d
	sub d                                            ; $78af: $92
	ld [hl], l                                       ; $78b0: $75
	adc d                                            ; $78b1: $8a
	db $e3                                           ; $78b2: $e3
	inc e                                            ; $78b3: $1c
	inc hl                                           ; $78b4: $23
	call c, $ff3d                                    ; $78b5: $dc $3d $ff
	ld h, l                                          ; $78b8: $65

Call_049_78b9:
	jp c, $c837                                      ; $78b9: $da $37 $c8

	cpl                                              ; $78bc: $2f

jr_049_78bd:
	ret c                                            ; $78bd: $d8

	sub l                                            ; $78be: $95
	rrca                                             ; $78bf: $0f
	ld hl, sp-$59                                    ; $78c0: $f8 $a7
	ld e, b                                          ; $78c2: $58
	dec a                                            ; $78c3: $3d
	jp z, $d822                                      ; $78c4: $ca $22 $d8

	rla                                              ; $78c7: $17
	ld hl, sp+$77                                    ; $78c8: $f8 $77
	add $6f                                          ; $78ca: $c6 $6f
	cp $7f                                           ; $78cc: $fe $7f
	or $77                                           ; $78ce: $f6 $77
	or l                                             ; $78d0: $b5
	ld [hl], a                                       ; $78d1: $77
	ldh a, [$7b]                                     ; $78d2: $f0 $7b
	adc l                                            ; $78d4: $8d
	ld a, e                                          ; $78d5: $7b
	db $fc                                           ; $78d6: $fc
	ld a, a                                          ; $78d7: $7f
	db $fd                                           ; $78d8: $fd
	ld a, a                                          ; $78d9: $7f
	ldh a, [$97]                                     ; $78da: $f0 $97
	ld a, [$0304]                                    ; $78dc: $fa $04 $03
	inc bc                                           ; $78df: $03
	ld [bc], a                                       ; $78e0: $02
	ld bc, $0300                                     ; $78e1: $01 $00 $03
	ld e, a                                          ; $78e4: $5f
	cp $73                                           ; $78e5: $fe $73
	cpl                                              ; $78e7: $2f
	ld a, a                                          ; $78e8: $7f
	rst SubAFromBC                                          ; $78e9: $e7
	ld a, l                                          ; $78ea: $7d
	ld h, h                                          ; $78eb: $64
	sbc [hl]                                         ; $78ec: $9e
	ld a, [bc]                                       ; $78ed: $0a
	ld a, e                                          ; $78ee: $7b
	db $fc                                           ; $78ef: $fc
	sbc [hl]                                         ; $78f0: $9e
	xor b                                            ; $78f1: $a8
	ld [hl], l                                       ; $78f2: $75

jr_049_78f3:
	pop hl                                           ; $78f3: $e1
	ld a, l                                          ; $78f4: $7d
	ldh a, [$80]                                     ; $78f5: $f0 $80
	inc b                                            ; $78f7: $04
	xor d                                            ; $78f8: $aa
	ld a, [de]                                       ; $78f9: $1a
	ld c, $34                                        ; $78fa: $0e $34
	sbc a                                            ; $78fc: $9f
	ld l, [hl]                                       ; $78fd: $6e
	ccf                                              ; $78fe: $3f
	ld e, h                                          ; $78ff: $5c
	ccf                                              ; $7900: $3f
	ld a, d                                          ; $7901: $7a
	rst $38                                          ; $7902: $ff
	rst AddAOntoHL                                          ; $7903: $ef
	ldh a, [$3f]                                     ; $7904: $f0 $3f
	ret nz                                           ; $7906: $c0

	ld a, a                                          ; $7907: $7f
	add b                                            ; $7908: $80
	ld l, h                                          ; $7909: $6c
	sub c                                            ; $790a: $91
	adc e                                            ; $790b: $8b
	ld [hl], h                                       ; $790c: $74
	sub [hl]                                         ; $790d: $96
	ld l, c                                          ; $790e: $69
	ld a, [hl-]                                      ; $790f: $3a
	call nz, $dc23                                   ; $7910: $c4 $23 $dc
	ldh a, [rIF]                                     ; $7913: $f0 $0f
	ld h, [hl]                                       ; $7915: $66
	sub e                                            ; $7916: $93
	sbc c                                            ; $7917: $99
	or b                                             ; $7918: $b0
	ld a, a                                          ; $7919: $7f
	ld a, d                                          ; $791a: $7a
	db $fd                                           ; $791b: $fd
	halt                                             ; $791c: $76
	ld hl, sp-$0a                                    ; $791d: $f8 $f6
	jr jr_049_78bd                                   ; $791f: $18 $9c

	ld a, e                                          ; $7921: $7b
	sbc b                                            ; $7922: $98
	ld a, c                                          ; $7923: $79
	ld c, $77                                        ; $7924: $0e $77
	cp $9d                                           ; $7926: $fe $9d
	ret nz                                           ; $7928: $c0

	ccf                                              ; $7929: $3f
	ld a, [$857e]                                    ; $792a: $fa $7e $85
	ld h, a                                          ; $792d: $67
	add c                                            ; $792e: $81
	ld h, d                                          ; $792f: $62
	reti                                             ; $7930: $d9


	ld a, h                                          ; $7931: $7c
	sub d                                            ; $7932: $92
	add [hl]                                         ; $7933: $86
	ld hl, sp-$01                                    ; $7934: $f8 $ff
	di                                               ; $7936: $f3
	dec c                                            ; $7937: $0d
	ld l, $13                                        ; $7938: $2e $13
	ld a, h                                          ; $793a: $7c
	rlca                                             ; $793b: $07
	ld e, b                                          ; $793c: $58

Jump_049_793d:
	cpl                                              ; $793d: $2f
	ldh a, [$5f]                                     ; $793e: $f0 $5f
	rst $38                                          ; $7940: $ff
	rst $38                                          ; $7941: $ff
	ld e, a                                          ; $7942: $5f
	rst $38                                          ; $7943: $ff
	add l                                            ; $7944: $85
	cp $01                                           ; $7945: $fe $01
	cp $1f                                           ; $7947: $fe $1f
	ldh [rTAC], a                                    ; $7949: $e0 $07
	ld hl, sp+$01                                    ; $794b: $f8 $01
	ld a, e                                          ; $794d: $7b
	ret c                                            ; $794e: $d8

	add b                                            ; $794f: $80
	ld a, h                                          ; $7950: $7c
	add e                                            ; $7951: $83
	ld h, c                                          ; $7952: $61
	sbc [hl]                                         ; $7953: $9e
	ld a, a                                          ; $7954: $7f
	add b                                            ; $7955: $80
	ld a, l                                          ; $7956: $7d
	add d                                            ; $7957: $82
	rst $38                                          ; $7958: $ff
	ld [$2cd3], sp                                   ; $7959: $08 $d3 $2c
	rra                                              ; $795c: $1f
	ldh [$7f], a                                     ; $795d: $e0 $7f
	add b                                            ; $795f: $80
	add b                                            ; $7960: $80
	ld a, a                                          ; $7961: $7f

jr_049_7962:
	ldh [$1f], a                                     ; $7962: $e0 $1f
	adc b                                            ; $7964: $88
	ld [hl], a                                       ; $7965: $77
	ld c, l                                          ; $7966: $4d
	ldh a, [c]                                       ; $7967: $f2
	ld hl, sp-$3a                                    ; $7968: $f8 $c6
	ldh [c], a                                       ; $796a: $e2
	inc e                                            ; $796b: $1c
	adc d                                            ; $796c: $8a
	ld a, l                                          ; $796d: $7d
	cp c                                             ; $796e: $b9
	sbc b                                            ; $796f: $98
	ld a, [hl]                                       ; $7970: $7e
	cp a                                             ; $7971: $bf
	ret nz                                           ; $7972: $c0

	ld l, d                                          ; $7973: $6a
	add b                                            ; $7974: $80
	and c                                            ; $7975: $a1
	ld e, [hl]                                       ; $7976: $5e
	ld [hl], a                                       ; $7977: $77
	or c                                             ; $7978: $b1
	ld a, a                                          ; $7979: $7f
	db $fc                                           ; $797a: $fc
	sbc l                                            ; $797b: $9d
	xor a                                            ; $797c: $af
	ld d, b                                          ; $797d: $50
	halt                                             ; $797e: $76
	call z, Call_049_537f                            ; $797f: $cc $7f $53
	sbc l                                            ; $7982: $9d
	ld e, a                                          ; $7983: $5f
	and b                                            ; $7984: $a0
	ld l, a                                          ; $7985: $6f
	ldh a, [$6f]                                     ; $7986: $f0 $6f
	ld [hl+], a                                      ; $7988: $22
	ld [hl], d                                       ; $7989: $72
	rst GetHLinHL                                          ; $798a: $cf
	ld [hl], e                                       ; $798b: $73
	dec sp                                           ; $798c: $3b
	ld l, a                                          ; $798d: $6f
	ldh a, [$6f]                                     ; $798e: $f0 $6f
	and $6f                                          ; $7990: $e6 $6f
	ldh a, [$7f]                                     ; $7992: $f0 $7f
	cp $94                                           ; $7994: $fe $94
	ld sp, hl                                        ; $7996: $f9
	inc bc                                           ; $7997: $03
	dec b                                            ; $7998: $05

jr_049_7999:
	inc bc                                           ; $7999: $03
	ei                                               ; $799a: $fb
	rlca                                             ; $799b: $07
	ei                                               ; $799c: $fb
	rlca                                             ; $799d: $07
	inc bc                                           ; $799e: $03
	rlca                                             ; $799f: $07
	xor e                                            ; $79a0: $ab
	ld a, e                                          ; $79a1: $7b
	ld a, [$fe7f]                                    ; $79a2: $fa $7f $fe
	add b                                            ; $79a5: $80
	ld a, [bc]                                       ; $79a6: $0a
	rst $38                                          ; $79a7: $ff
	rst SubAFromDE                                          ; $79a8: $df
	cp c                                             ; $79a9: $b9

jr_049_79aa:
	xor d                                            ; $79aa: $aa
	db $dd                                           ; $79ab: $dd
	db $ec                                           ; $79ac: $ec
	sbc e                                            ; $79ad: $9b
	and [hl]                                         ; $79ae: $a6
	reti                                             ; $79af: $d9


	ldh [c], a                                       ; $79b0: $e2

jr_049_79b1:
	sbc c                                            ; $79b1: $99
	and h                                            ; $79b2: $a4
	db $db                                           ; $79b3: $db
	ld b, d                                          ; $79b4: $42
	cp c                                             ; $79b5: $b9
	and a                                            ; $79b6: $a7
	ret c                                            ; $79b7: $d8

	jr jr_049_79aa                                   ; $79b8: $18 $f0

	dec b                                            ; $79ba: $05
	ldh a, [$cf]                                     ; $79bb: $f0 $cf
	jr nc, jr_049_7999                               ; $79bd: $30 $da

	jr nz, jr_049_79b1                               ; $79bf: $20 $f0

	jr nz, jr_049_7962                               ; $79c1: $20 $9f

	ld h, b                                          ; $79c3: $60
	xor a                                            ; $79c4: $af
	sbc [hl]                                         ; $79c5: $9e
	ld [hl], b                                       ; $79c6: $70
	ld [hl], a                                       ; $79c7: $77
	add $74                                          ; $79c8: $c6 $74
	ld d, a                                          ; $79ca: $57
	ld a, a                                          ; $79cb: $7f
	jp nz, $b86f                                     ; $79cc: $c2 $6f $b8

	ld a, [hl]                                       ; $79cf: $7e
	ret z                                            ; $79d0: $c8

	sbc d                                            ; $79d1: $9a
	inc b                                            ; $79d2: $04
	nop                                              ; $79d3: $00
	ld d, h                                          ; $79d4: $54
	nop                                              ; $79d5: $00
	db $fc                                           ; $79d6: $fc
	ld a, d                                          ; $79d7: $7a
	push hl                                          ; $79d8: $e5
	ld a, a                                          ; $79d9: $7f
	ld hl, sp-$62                                    ; $79da: $f8 $9e
	ld hl, sp+$7b                                    ; $79dc: $f8 $7b
	cp $9d                                           ; $79de: $fe $9d
	ld bc, $7703                                     ; $79e0: $01 $03 $77
	cp $56                                           ; $79e3: $fe $56
	ret nz                                           ; $79e5: $c0

	ld l, c                                          ; $79e6: $69
	db $eb                                           ; $79e7: $eb
	sbc [hl]                                         ; $79e8: $9e
	add d                                            ; $79e9: $82
	ld a, e                                          ; $79ea: $7b
	reti                                             ; $79eb: $d9


	ld a, a                                          ; $79ec: $7f
	res 2, c                                         ; $79ed: $cb $91
	ld d, b                                          ; $79ef: $50
	ld [$f5ff], a                                    ; $79f0: $ea $ff $f5
	rst $38                                          ; $79f3: $ff
	cp d                                             ; $79f4: $ba
	rst $38                                          ; $79f5: $ff
	ld e, l                                          ; $79f6: $5d
	rst $38                                          ; $79f7: $ff
	ld l, [hl]                                       ; $79f8: $6e
	rst $38                                          ; $79f9: $ff
	ld d, a                                          ; $79fa: $57
	rst $38                                          ; $79fb: $ff
	ld l, e                                          ; $79fc: $6b

Call_049_79fd:
	ld a, d                                          ; $79fd: $7a
	inc b                                            ; $79fe: $04
	add b                                            ; $79ff: $80
	dec e                                            ; $7a00: $1d
	ldh [c], a                                       ; $7a01: $e2
	dec e                                            ; $7a02: $1d
	ldh [c], a                                       ; $7a03: $e2
	ld e, $e0                                        ; $7a04: $1e $e0
	adc a                                            ; $7a06: $8f
	ldh a, [$ba]                                     ; $7a07: $f0 $ba
	rst JumpTable                                          ; $7a09: $c7
	sbc b                                            ; $7a0a: $98
	rst JumpTable                                          ; $7a0b: $c7

jr_049_7a0c:
	cp e                                             ; $7a0c: $bb

jr_049_7a0d:
	call nz, $906f                                   ; $7a0d: $c4 $6f $90
	cp c                                             ; $7a10: $b9
	ld e, [hl]                                       ; $7a11: $5e
	reti                                             ; $7a12: $d9


	ld a, $f8                                        ; $7a13: $3e $f8
	rra                                              ; $7a15: $1f
	call nz, $fd7f                                   ; $7a16: $c4 $7f $fd
	ld b, $e8                                        ; $7a19: $06 $e8
	scf                                              ; $7a1b: $37
	jr nc, jr_049_7a0d                               ; $7a1c: $30 $ef

	ld l, d                                          ; $7a1e: $6a
	sbc [hl]                                         ; $7a1f: $9e
	rst FarCall                                          ; $7a20: $f7
	ld h, d                                          ; $7a21: $62
	jp nc, Jump_049_4b79                             ; $7a22: $d2 $79 $4b

	ld l, b                                          ; $7a25: $68
	ld h, b                                          ; $7a26: $60
	ld e, d                                          ; $7a27: $5a
	jp nz, $92ff                                     ; $7a28: $c2 $ff $92

	jr nc, jr_049_7a0c                               ; $7a2b: $30 $df

	ld c, b                                          ; $7a2d: $48
	cp a                                             ; $7a2e: $bf
	inc h                                            ; $7a2f: $24
	rst SubAFromDE                                          ; $7a30: $df
	ld [hl], d                                       ; $7a31: $72
	rrca                                             ; $7a32: $0f
	add hl, hl                                       ; $7a33: $29
	ld d, a                                          ; $7a34: $57
	ld d, h                                          ; $7a35: $54
	dec hl                                           ; $7a36: $2b
	jr z, jr_049_7ab4                                ; $7a37: $28 $7b

	db $fc                                           ; $7a39: $fc
	ld a, a                                          ; $7a3a: $7f
	db $e4                                           ; $7a3b: $e4
	ld a, [hl]                                       ; $7a3c: $7e
	call nz, $fe7f                                   ; $7a3d: $c4 $7f $fe
	add b                                            ; $7a40: $80
	dec b                                            ; $7a41: $05
	cp $0a                                           ; $7a42: $fe $0a
	db $fd                                           ; $7a44: $fd
	jp nc, $23fd                                     ; $7a45: $d2 $fd $23

	db $fc                                           ; $7a48: $fc
	ld bc, $f2fe                                     ; $7a49: $01 $fe $f2
	dec c                                            ; $7a4c: $0d
	ei                                               ; $7a4d: $fb
	dec c                                            ; $7a4e: $0d
	pop af                                           ; $7a4f: $f1
	rrca                                             ; $7a50: $0f
	ld c, l                                          ; $7a51: $4d
	or e                                             ; $7a52: $b3
	ld e, h                                          ; $7a53: $5c
	or e                                             ; $7a54: $b3
	dec l                                            ; $7a55: $2d
	db $d3                                           ; $7a56: $d3
	add e                                            ; $7a57: $83
	ld a, a                                          ; $7a58: $7f
	jp $a23f                                         ; $7a59: $c3 $3f $a2


	ld a, l                                          ; $7a5c: $7d
	add c                                            ; $7a5d: $81
	cp $e5                                           ; $7a5e: $fe $e5
	sub h                                            ; $7a60: $94
	cp $0c                                           ; $7a61: $fe $0c
	rst $38                                          ; $7a63: $ff
	ld e, $ff                                        ; $7a64: $1e $ff
	rra                                              ; $7a66: $1f
	cp $f4                                           ; $7a67: $fe $f4
	cp $fe                                           ; $7a69: $fe $fe
	db $fd                                           ; $7a6b: $fd
	ld l, a                                          ; $7a6c: $6f
	or l                                             ; $7a6d: $b5
	sbc e                                            ; $7a6e: $9b
	push de                                          ; $7a6f: $d5

Jump_049_7a70:
	nop                                              ; $7a70: $00
	ld a, [bc]                                       ; $7a71: $0a
	push af                                          ; $7a72: $f5
	ld a, c                                          ; $7a73: $79
	ldh a, [$7b]                                     ; $7a74: $f0 $7b
	daa                                              ; $7a76: $27
	ld l, a                                          ; $7a77: $6f
	ldh a, [$7f]                                     ; $7a78: $f0 $7f
	rst FarCall                                          ; $7a7a: $f7
	ld [hl], h                                       ; $7a7b: $74
	xor d                                            ; $7a7c: $aa
	sbc e                                            ; $7a7d: $9b
	cp a                                             ; $7a7e: $bf
	ld b, b                                          ; $7a7f: $40
	ld b, l                                          ; $7a80: $45
	cp d                                             ; $7a81: $ba
	ld e, a                                          ; $7a82: $5f
	ldh a, [$9d]                                     ; $7a83: $f0 $9d
	ld e, l                                          ; $7a85: $5d
	and d                                            ; $7a86: $a2
	ld h, [hl]                                       ; $7a87: $66
	ret nz                                           ; $7a88: $c0

	ld l, [hl]                                       ; $7a89: $6e
	cp $77                                           ; $7a8a: $fe $77
	cp $7e                                           ; $7a8c: $fe $7e
	sub [hl]                                         ; $7a8e: $96
	ld a, e                                          ; $7a8f: $7b
	call z, $0c7f                                    ; $7a90: $cc $7f $0c
	ld a, a                                          ; $7a93: $7f
	dec h                                            ; $7a94: $25
	ld [hl], a                                       ; $7a95: $77
	adc e                                            ; $7a96: $8b
	ld a, d                                          ; $7a97: $7a
	ld d, c                                          ; $7a98: $51
	ld a, a                                          ; $7a99: $7f
	db $fc                                           ; $7a9a: $fc
	add b                                            ; $7a9b: $80
	ld b, h                                          ; $7a9c: $44
	cp e                                             ; $7a9d: $bb
	ld d, d                                          ; $7a9e: $52
	or c                                             ; $7a9f: $b1
	ld l, b                                          ; $7aa0: $68
	sub c                                            ; $7aa1: $91
	ld d, l                                          ; $7aa2: $55
	or e                                             ; $7aa3: $b3
	ld b, a                                          ; $7aa4: $47
	cp b                                             ; $7aa5: $b8
	ld e, a                                          ; $7aa6: $5f
	or b                                             ; $7aa7: $b0
	ld h, a                                          ; $7aa8: $67
	sbc b                                            ; $7aa9: $98
	ld e, a                                          ; $7aaa: $5f
	or b                                             ; $7aab: $b0
	jp z, $9535                                      ; $7aac: $ca $35 $95

	ld h, b                                          ; $7aaf: $60
	ret nz                                           ; $7ab0: $c0

	ldh [$c0], a                                     ; $7ab1: $e0 $c0
	db $fc                                           ; $7ab3: $fc

jr_049_7ab4:
	xor c                                            ; $7ab4: $a9
	ld a, [hl]                                       ; $7ab5: $7e
	jp nz, $a13f                                     ; $7ab6: $c2 $3f $a1

	ld a, a                                          ; $7ab9: $7f
	ld e, d                                          ; $7aba: $5a
	ld a, e                                          ; $7abb: $7b
	db $dd                                           ; $7abc: $dd
	ld a, e                                          ; $7abd: $7b
	rst GetHLinHL                                          ; $7abe: $cf
	ld l, e                                          ; $7abf: $6b
	add hl, sp                                       ; $7ac0: $39
	ld a, l                                          ; $7ac1: $7d
	add $7e                                          ; $7ac2: $c6 $7e
	ld l, $7a                                        ; $7ac4: $2e $7a
	call $2573                                       ; $7ac6: $cd $73 $25
	sbc [hl]                                         ; $7ac9: $9e
	ldh a, [rOCPD]                                   ; $7aca: $f0 $6b
	cp $66                                           ; $7acc: $fe $66
	ret z                                            ; $7ace: $c8

	ld l, [hl]                                       ; $7acf: $6e
	cp b                                             ; $7ad0: $b8
	ld a, a                                          ; $7ad1: $7f
	cp $80                                           ; $7ad2: $fe $80
	ld d, d                                          ; $7ad4: $52
	xor l                                            ; $7ad5: $ad
	and e                                            ; $7ad6: $a3
	ld e, h                                          ; $7ad7: $5c
	ld d, [hl]                                       ; $7ad8: $56
	xor c                                            ; $7ad9: $a9
	and d                                            ; $7ada: $a2
	ld e, l                                          ; $7adb: $5d
	ld d, l                                          ; $7adc: $55
	xor d                                            ; $7add: $aa
	ld [$5f55], a                                    ; $7ade: $ea $55 $5f
	rst AddAOntoHL                                          ; $7ae1: $ef
	ld l, $d5                                        ; $7ae2: $2e $d5
	ld a, a                                          ; $7ae4: $7f
	rst $38                                          ; $7ae5: $ff
	ld h, h                                          ; $7ae6: $64
	db $db                                           ; $7ae7: $db
	add hl, de                                       ; $7ae8: $19
	and $8a                                          ; $7ae9: $e6 $8a
	ld [hl], l                                       ; $7aeb: $75
	ld d, a                                          ; $7aec: $57
	xor e                                            ; $7aed: $ab
	db $e3                                           ; $7aee: $e3
	ld a, l                                          ; $7aef: $7d
	ld [hl], l                                       ; $7af0: $75
	ld [$80fb], a                                    ; $7af1: $ea $fb $80
	ld [hl], a                                       ; $7af4: $77
	sbc [hl]                                         ; $7af5: $9e
	pop hl                                           ; $7af6: $e1
	cp e                                             ; $7af7: $bb
	ld b, h                                          ; $7af8: $44
	ld d, a                                          ; $7af9: $57
	xor b                                            ; $7afa: $a8
	cp d                                             ; $7afb: $ba
	ld h, c                                          ; $7afc: $61
	ld c, l                                          ; $7afd: $4d
	di                                               ; $7afe: $f3

Call_049_7aff:
	ld sp, hl                                        ; $7aff: $f9
	ld b, a                                          ; $7b00: $47
	call c, $ace3                                    ; $7b01: $dc $e3 $ac
	db $d3                                           ; $7b04: $d3
	ld h, [hl]                                       ; $7b05: $66
	rst $38                                          ; $7b06: $ff
	sbc [hl]                                         ; $7b07: $9e
	ld l, a                                          ; $7b08: $6f
	sub d                                            ; $7b09: $92
	ld l, a                                          ; $7b0a: $6f

jr_049_7b0b:
	cp c                                             ; $7b0b: $b9
	ld e, a                                          ; $7b0c: $5f
	sbc e                                            ; $7b0d: $9b
	rst $38                                          ; $7b0e: $ff
	or e                                             ; $7b0f: $b3
	rst $38                                          ; $7b10: $ff
	add a                                            ; $7b11: $87
	ld a, a                                          ; $7b12: $7f
	sbc l                                            ; $7b13: $9d
	cp a                                             ; $7b14: $bf
	ld a, a                                          ; $7b15: $7f
	db $fd                                           ; $7b16: $fd
	sub e                                            ; $7b17: $93
	ret nz                                           ; $7b18: $c0

	nop                                              ; $7b19: $00
	ld [hl], b                                       ; $7b1a: $70
	ldh [rAUD2LOW], a                                ; $7b1b: $e0 $18
	ldh a, [$09]                                     ; $7b1d: $f0 $09
	ldh a, [$0b]                                     ; $7b1f: $f0 $0b
	ldh a, [rVBK]                                    ; $7b21: $f0 $4f
	or b                                             ; $7b23: $b0
	ld sp, hl                                        ; $7b24: $f9
	ld a, l                                          ; $7b25: $7d
	ld e, b                                          ; $7b26: $58
	sbc b                                            ; $7b27: $98
	and b                                            ; $7b28: $a0
	ld e, a                                          ; $7b29: $5f
	jr nz, jr_049_7b0b                               ; $7b2a: $20 $df

	ld sp, hl                                        ; $7b2c: $f9
	rlca                                             ; $7b2d: $07
	cpl                                              ; $7b2e: $2f
	ld a, e                                          ; $7b2f: $7b
	inc [hl]                                         ; $7b30: $34
	ld a, l                                          ; $7b31: $7d
	ld h, e                                          ; $7b32: $63
	sbc d                                            ; $7b33: $9a
	ld [hl], l                                       ; $7b34: $75
	nop                                              ; $7b35: $00
	ld bc, $2fff                                     ; $7b36: $01 $ff $2f
	sbc $ff                                          ; $7b39: $de $ff
	sbc l                                            ; $7b3b: $9d
	rst AddAOntoHL                                          ; $7b3c: $ef
	rst SubAFromDE                                          ; $7b3d: $df
	ld a, e                                          ; $7b3e: $7b
	inc e                                            ; $7b3f: $1c
	sbc l                                            ; $7b40: $9d
	nop                                              ; $7b41: $00
	ld [$2077], a                                    ; $7b42: $ea $77 $20
	sbc $ff                                          ; $7b45: $de $ff
	sub [hl]                                         ; $7b47: $96
	rst FarCall                                          ; $7b48: $f7
	rst $38                                          ; $7b49: $ff
	rst FarCall                                          ; $7b4a: $f7
	ei                                               ; $7b4b: $fb
	ret nz                                           ; $7b4c: $c0

	ccf                                              ; $7b4d: $3f

Call_049_7b4e:
	ld e, a                                          ; $7b4e: $5f
	nop                                              ; $7b4f: $00
	xor [hl]                                         ; $7b50: $ae
	ld a, e                                          ; $7b51: $7b
	ldh [$dd], a                                     ; $7b52: $e0 $dd
	rst $38                                          ; $7b54: $ff
	sub [hl]                                         ; $7b55: $96
	db $fc                                           ; $7b56: $fc
	rst $38                                          ; $7b57: $ff
	db $fd                                           ; $7b58: $fd
	cp $02                                           ; $7b59: $fe $02
	db $fc                                           ; $7b5b: $fc
	ld e, c                                          ; $7b5c: $59
	ld b, $a0                                        ; $7b5d: $06 $a0
	ld l, e                                          ; $7b5f: $6b
	ldh [$dd], a                                     ; $7b60: $e0 $dd
	rst $38                                          ; $7b62: $ff
	sbc [hl]                                         ; $7b63: $9e
	xor e                                            ; $7b64: $ab
	ld e, d                                          ; $7b65: $5a
	ldh a, [c]                                       ; $7b66: $f2
	ld a, [hl]                                       ; $7b67: $7e
	ret nc                                           ; $7b68: $d0

	ld [hl], a                                       ; $7b69: $77
	or $67                                           ; $7b6a: $f6 $67
	ldh a, [$7d]                                     ; $7b6c: $f0 $7d
	and $7e                                          ; $7b6e: $e6 $7e
	ldh a, [c]                                       ; $7b70: $f2
	ld d, a                                          ; $7b71: $57
	ldh a, [$7e]                                     ; $7b72: $f0 $7e
	inc bc                                           ; $7b74: $03
	sbc l                                            ; $7b75: $9d
	rst SubAFromHL                                          ; $7b76: $d7
	jr z, @+$51                                      ; $7b77: $28 $4f

	ldh a, [rPCM34]                                  ; $7b79: $f0 $77
	sub h                                            ; $7b7b: $94
	sbc [hl]                                         ; $7b7c: $9e
	db $fd                                           ; $7b7d: $fd
	ld c, e                                          ; $7b7e: $4b
	ldh a, [$98]                                     ; $7b7f: $f0 $98
	inc l                                            ; $7b81: $2c
	di                                               ; $7b82: $f3
	push af                                          ; $7b83: $f5
	ld a, a                                          ; $7b84: $7f
	ld l, c                                          ; $7b85: $69
	or $8f                                           ; $7b86: $f6 $8f
	ld a, c                                          ; $7b88: $79
	sbc b                                            ; $7b89: $98
	sbc [hl]                                         ; $7b8a: $9e
	cp a                                             ; $7b8b: $bf
	ld [hl], e                                       ; $7b8c: $73
	ldh a, [$9a]                                     ; $7b8d: $f0 $9a
	or l                                             ; $7b8f: $b5
	rst $38                                          ; $7b90: $ff
	ld b, e                                          ; $7b91: $43
	db $fc                                           ; $7b92: $fc
	add sp, $60                                      ; $7b93: $e8 $60
	bit 7, a                                         ; $7b95: $cb $7f
	ldh a, [$9c]                                     ; $7b97: $f0 $9c
	ld e, a                                          ; $7b99: $5f
	ldh [$c5], a                                     ; $7b9a: $e0 $c5
	ld h, c                                          ; $7b9c: $61
	ei                                               ; $7b9d: $fb
	ld [hl], a                                       ; $7b9e: $77
	ldh a, [hDisp1_WY]                                     ; $7b9f: $f0 $95
	xor d                                            ; $7ba1: $aa
	ld b, l                                          ; $7ba2: $45
	ld d, b                                          ; $7ba3: $50
	rrca                                             ; $7ba4: $0f
	nop                                              ; $7ba5: $00
	rrca                                             ; $7ba6: $0f
	ldh a, [c]                                       ; $7ba7: $f2
	dec c                                            ; $7ba8: $0d
	push af                                          ; $7ba9: $f5
	ld a, [bc]                                       ; $7baa: $0a
	ld [hl], a                                       ; $7bab: $77
	db $fc                                           ; $7bac: $fc
	add d                                            ; $7bad: $82
	ld d, d                                          ; $7bae: $52
	dec c                                            ; $7baf: $0d
	xor c                                            ; $7bb0: $a9
	ld d, a                                          ; $7bb1: $57
	ld bc, $05ff                                     ; $7bb2: $01 $ff $05
	ei                                               ; $7bb5: $fb
	ld bc, $07ff                                     ; $7bb6: $01 $ff $07
	ei                                               ; $7bb9: $fb
	add e                                            ; $7bba: $83
	ld a, a                                          ; $7bbb: $7f
	inc bc                                           ; $7bbc: $03
	rst $38                                          ; $7bbd: $ff
	add c                                            ; $7bbe: $81

Call_049_7bbf:
Jump_049_7bbf:
	ld a, a                                          ; $7bbf: $7f
	ld d, l                                          ; $7bc0: $55
	xor [hl]                                         ; $7bc1: $ae
	xor e                                            ; $7bc2: $ab
	db $dd                                           ; $7bc3: $dd
	rst SubAFromHL                                          ; $7bc4: $d7
	rst $38                                          ; $7bc5: $ff
	ld a, [$65bf]                                    ; $7bc6: $fa $bf $65
	rst SubAFromDE                                          ; $7bc9: $df
	rst $38                                          ; $7bca: $ff
	ld a, c                                          ; $7bcb: $79
	sub d                                            ; $7bcc: $92
	ld a, a                                          ; $7bcd: $7f
	call Call_049_7d98                               ; $7bce: $cd $98 $7d
	rst $38                                          ; $7bd1: $ff
	db $eb                                           ; $7bd2: $eb
	rst $38                                          ; $7bd3: $ff
	rst SubAFromHL                                          ; $7bd4: $d7
	ei                                               ; $7bd5: $fb
	xor [hl]                                         ; $7bd6: $ae
	ld a, b                                          ; $7bd7: $78
	sbc d                                            ; $7bd8: $9a
	sbc [hl]                                         ; $7bd9: $9e
	cp a                                             ; $7bda: $bf
	ld a, c                                          ; $7bdb: $79
	ld a, [hl]                                       ; $7bdc: $7e
	ld a, a                                          ; $7bdd: $7f

Call_049_7bde:
	ldh a, [hDisp1_LCDC]                                     ; $7bde: $f0 $8f
	db $e3                                           ; $7be0: $e3
	rst SubAFromDE                                          ; $7be1: $df
	ld sp, hl                                        ; $7be2: $f9
	rst JumpTable                                          ; $7be3: $c7
	jp hl                                            ; $7be4: $e9


	rst SubAFromHL                                          ; $7be5: $d7
	rst FarCall                                          ; $7be6: $f7
	rst AddAOntoHL                                          ; $7be7: $ef
	ld a, [$f2f7]                                    ; $7be8: $fa $f7 $f2
	rst $38                                          ; $7beb: $ff
	db $fd                                           ; $7bec: $fd
	rst $38                                          ; $7bed: $ff
	ccf                                              ; $7bee: $3f
	ret nz                                           ; $7bef: $c0

	ld [hl], h                                       ; $7bf0: $74
	ld [hl], b                                       ; $7bf1: $70
	sbc h                                            ; $7bf2: $9c
	rra                                              ; $7bf3: $1f
	rst $38                                          ; $7bf4: $ff
	or [hl]                                          ; $7bf5: $b6
	ld a, e                                          ; $7bf6: $7b
	inc b                                            ; $7bf7: $04
	ld a, a                                          ; $7bf8: $7f
	ld hl, sp-$80                                    ; $7bf9: $f8 $80
	db $e4                                           ; $7bfb: $e4
	rst $38                                          ; $7bfc: $ff

Jump_049_7bfd:
	db $fc                                           ; $7bfd: $fc
	inc bc                                           ; $7bfe: $03

Call_049_7bff:
Jump_049_7bff:
	adc a                                            ; $7bff: $8f
	ld [hl], b                                       ; $7c00: $70
	ld c, c                                          ; $7c01: $49
	or [hl]                                          ; $7c02: $b6
	xor c                                            ; $7c03: $a9

Call_049_7c04:
	ld d, [hl]                                       ; $7c04: $56
	ld c, c                                          ; $7c05: $49
	or [hl]                                          ; $7c06: $b6
	add b                                            ; $7c07: $80
	ld a, a                                          ; $7c08: $7f
	ld b, b                                          ; $7c09: $40
	cp a                                             ; $7c0a: $bf
	add c                                            ; $7c0b: $81
	ld a, a                                          ; $7c0c: $7f
	sub $2f                                          ; $7c0d: $d6 $2f
	ldh [$1f], a                                     ; $7c0f: $e0 $1f
	dec hl                                           ; $7c11: $2b
	rst SubAFromHL                                          ; $7c12: $d7
	db $eb                                           ; $7c13: $eb
	rla                                              ; $7c14: $17
	cp a                                             ; $7c15: $bf
	ld b, a                                          ; $7c16: $47
	ld a, $df                                        ; $7c17: $3e $df
	cp [hl]                                          ; $7c19: $be
	sbc l                                            ; $7c1a: $9d
	rst SubAFromDE                                          ; $7c1b: $df
	sbc a                                            ; $7c1c: $9f
	sbc $ff                                          ; $7c1d: $de $ff
	sub h                                            ; $7c1f: $94
	scf                                              ; $7c20: $37
	rst GetHLinHL                                          ; $7c21: $cf
	scf                                              ; $7c22: $37
	rst $38                                          ; $7c23: $ff
	ld h, a                                          ; $7c24: $67
	cp a                                             ; $7c25: $bf
	rst FarCall                                          ; $7c26: $f7
	adc a                                            ; $7c27: $8f
	ld b, [hl]                                       ; $7c28: $46
	cp c                                             ; $7c29: $b9
	ld a, [hl]                                       ; $7c2a: $7e
	call c, $92ff                                    ; $7c2b: $dc $ff $92
	db $f4                                           ; $7c2e: $f4
	ei                                               ; $7c2f: $fb
	db $eb                                           ; $7c30: $eb
	db $f4                                           ; $7c31: $f4
	and [hl]                                         ; $7c32: $a6
	reti                                             ; $7c33: $d9


	call c, $f3f3                                    ; $7c34: $dc $f3 $f3
	rst $38                                          ; $7c37: $ff
	di                                               ; $7c38: $f3
	rst $38                                          ; $7c39: $ff
	ei                                               ; $7c3a: $fb
	sbc $ff                                          ; $7c3b: $de $ff
	sub h                                            ; $7c3d: $94
	ld a, a                                          ; $7c3e: $7f
	db $fc                                           ; $7c3f: $fc
	ldh a, [$7f]                                     ; $7c40: $f0 $7f
	rst $38                                          ; $7c42: $ff
	ldh a, [$e6]                                     ; $7c43: $f0 $e6
	ld sp, hl                                        ; $7c45: $f9
	di                                               ; $7c46: $f3
	rst $38                                          ; $7c47: $ff
	rst SubAFromBC                                          ; $7c48: $e7
	call c, $94ff                                    ; $7c49: $dc $ff $94
	ccf                                              ; $7c4c: $3f
	rst $38                                          ; $7c4d: $ff
	sbc a                                            ; $7c4e: $9f
	ld a, a                                          ; $7c4f: $7f
	scf                                              ; $7c50: $37
	rst GetHLinHL                                          ; $7c51: $cf
	ld l, a                                          ; $7c52: $6f
	rst $38                                          ; $7c53: $ff
	rst SubAFromDE                                          ; $7c54: $df
	ccf                                              ; $7c55: $3f
	sbc a                                            ; $7c56: $9f
	ld [hl], e                                       ; $7c57: $73
	rst AddAOntoHL                                          ; $7c58: $ef
	ld a, a                                          ; $7c59: $7f
	ld a, [bc]                                       ; $7c5a: $0a
	sbc [hl]                                         ; $7c5b: $9e
	ld b, c                                          ; $7c5c: $41
	ld a, e                                          ; $7c5d: $7b
	ld b, $9e                                        ; $7c5e: $06 $9e
	push af                                          ; $7c60: $f5
	ld h, e                                          ; $7c61: $63
	ld l, $7f                                        ; $7c62: $2e $7f
	db $f4                                           ; $7c64: $f4
	ld a, a                                          ; $7c65: $7f
	inc l                                            ; $7c66: $2c
	ld a, h                                          ; $7c67: $7c
	or h                                             ; $7c68: $b4
	halt                                             ; $7c69: $76
	ld a, h                                          ; $7c6a: $7c
	ld e, a                                          ; $7c6b: $5f
	ldh a, [$7d]                                     ; $7c6c: $f0 $7d
	ldh [$7b], a                                     ; $7c6e: $e0 $7b
	jr jr_049_7ceb                                   ; $7c70: $18 $79

	ld e, h                                          ; $7c72: $5c
	ld a, [hl]                                       ; $7c73: $7e
	xor [hl]                                         ; $7c74: $ae
	ld a, a                                          ; $7c75: $7f
	ret c                                            ; $7c76: $d8

	ld [hl], a                                       ; $7c77: $77
	ldh a, [$71]                                     ; $7c78: $f0 $71
	ld [hl], b                                       ; $7c7a: $70
	ld [hl], e                                       ; $7c7b: $73
	db $fc                                           ; $7c7c: $fc
	ld b, a                                          ; $7c7d: $47
	ldh a, [$6f]                                     ; $7c7e: $f0 $6f
	db $fc                                           ; $7c80: $fc
	inc bc                                           ; $7c81: $03
	ldh a, [$5b]                                     ; $7c82: $f0 $5b
	db $f4                                           ; $7c84: $f4
	sub [hl]                                         ; $7c85: $96
	and c                                            ; $7c86: $a1
	ld a, [bc]                                       ; $7c87: $0a
	ld d, b                                          ; $7c88: $50
	add hl, bc                                       ; $7c89: $09
	nop                                              ; $7c8a: $00
	ld [$0850], sp                                   ; $7c8b: $08 $50 $08
	or b                                             ; $7c8e: $b0
	ld l, e                                          ; $7c8f: $6b
	db $fc                                           ; $7c90: $fc
	ld a, l                                          ; $7c91: $7d
	xor b                                            ; $7c92: $a8
	sub b                                            ; $7c93: $90
	and c                                            ; $7c94: $a1
	ld e, a                                          ; $7c95: $5f
	ld d, a                                          ; $7c96: $57
	dec hl                                           ; $7c97: $2b
	add hl, hl                                       ; $7c98: $29
	rla                                              ; $7c99: $17
	inc de                                           ; $7c9a: $13
	cpl                                              ; $7c9b: $2f
	add hl, bc                                       ; $7c9c: $09
	rla                                              ; $7c9d: $17
	rla                                              ; $7c9e: $17
	dec bc                                           ; $7c9f: $0b
	add hl, bc                                       ; $7ca0: $09
	rlca                                             ; $7ca1: $07
	ld a, [hl+]                                      ; $7ca2: $2a
	ld a, d                                          ; $7ca3: $7a
	jp z, $0a8b                                      ; $7ca4: $ca $8b $0a

	rst $38                                          ; $7ca7: $ff
	dec d                                            ; $7ca8: $15
	rst $38                                          ; $7ca9: $ff
	ld a, [hl+]                                      ; $7caa: $2a
	rst $38                                          ; $7cab: $ff
	inc b                                            ; $7cac: $04
	rst $38                                          ; $7cad: $ff
	add hl, de                                       ; $7cae: $19
	cp $27                                           ; $7caf: $fe $27
	ld hl, sp-$56                                    ; $7cb1: $f8 $aa
	rst $38                                          ; $7cb3: $ff
	ld d, c                                          ; $7cb4: $51
	cp $a7                                           ; $7cb5: $fe $a7
	ld hl, sp+$4f                                    ; $7cb7: $f8 $4f
	ldh a, [$7a]                                     ; $7cb9: $f0 $7a
	sub $63                                          ; $7cbb: $d6 $63
	ld c, h                                          ; $7cbd: $4c
	ld d, a                                          ; $7cbe: $57
	cp $9d                                           ; $7cbf: $fe $9d
	ld hl, sp+$07                                    ; $7cc1: $f8 $07
	ld e, a                                          ; $7cc3: $5f
	cp $92                                           ; $7cc4: $fe $92
	cp $03                                           ; $7cc6: $fe $03
	rst $38                                          ; $7cc8: $ff
	ld bc, $5fa0                                     ; $7cc9: $01 $a0 $5f
	pop de                                           ; $7ccc: $d1
	cpl                                              ; $7ccd: $2f
	and a                                            ; $7cce: $a7
	ld e, a                                          ; $7ccf: $5f
	rst SubAFromDE                                          ; $7cd0: $df
	cpl                                              ; $7cd1: $2f
	xor a                                            ; $7cd2: $af
	ld [hl], e                                       ; $7cd3: $73
	db $fc                                           ; $7cd4: $fc
	adc l                                            ; $7cd5: $8d
	ld c, a                                          ; $7cd6: $4f
	cp a                                             ; $7cd7: $bf
	db $fd                                           ; $7cd8: $fd
	rst $38                                          ; $7cd9: $ff
	db $eb                                           ; $7cda: $eb
	db $fd                                           ; $7cdb: $fd

jr_049_7cdc:
	db $fd                                           ; $7cdc: $fd
	db $e3                                           ; $7cdd: $e3
	push hl                                          ; $7cde: $e5
	ei                                               ; $7cdf: $fb
	db $ec                                           ; $7ce0: $ec
	di                                               ; $7ce1: $f3
	call c, $18e3                                    ; $7ce2: $dc $e3 $18
	rst SubAFromBC                                          ; $7ce5: $e7
	push de                                          ; $7ce6: $d5
	xor $76                                          ; $7ce7: $ee $76
	sub b                                            ; $7ce9: $90
	ld a, l                                          ; $7cea: $7d

jr_049_7ceb:
	xor d                                            ; $7ceb: $aa
	sbc [hl]                                         ; $7cec: $9e
	ld hl, sp+$79                                    ; $7ced: $f8 $79
	and h                                            ; $7cef: $a4
	adc d                                            ; $7cf0: $8a
	jr c, @+$01                                      ; $7cf1: $38 $ff

	cp h                                             ; $7cf3: $bc
	rst $38                                          ; $7cf4: $ff
	ld a, $fd                                        ; $7cf5: $3e $fd
	rst $38                                          ; $7cf7: $ff
	rst $38                                          ; $7cf8: $ff
	ld d, a                                          ; $7cf9: $57
	rst AddAOntoHL                                          ; $7cfa: $ef
	jr nz, jr_049_7cdc                               ; $7cfb: $20 $df

	sub b                                            ; $7cfd: $90
	rst $38                                          ; $7cfe: $ff
	set 7, l                                         ; $7cff: $cb $fd
	add a                                            ; $7d01: $87
	db $fd                                           ; $7d02: $fd
	db $db                                           ; $7d03: $db
	db $fd                                           ; $7d04: $fd
	db $fd                                           ; $7d05: $fd
	ld a, d                                          ; $7d06: $7a
	cp l                                             ; $7d07: $bd
	sub h                                            ; $7d08: $94
	di                                               ; $7d09: $f3
	db $fd                                           ; $7d0a: $fd
	jp nz, $85fd                                     ; $7d0b: $c2 $fd $85

	ei                                               ; $7d0e: $fb
	and c                                            ; $7d0f: $a1
	rst $38                                          ; $7d10: $ff
	rst AddAOntoHL                                          ; $7d11: $ef
	di                                               ; $7d12: $f3
	db $fd                                           ; $7d13: $fd
	ld a, d                                          ; $7d14: $7a
	adc $7e                                          ; $7d15: $ce $7e
	ret nz                                           ; $7d17: $c0

	sub c                                            ; $7d18: $91
	rst GetHLinHL                                          ; $7d19: $cf
	or a                                             ; $7d1a: $b7
	rla                                              ; $7d1b: $17
	rst AddAOntoHL                                          ; $7d1c: $ef
	ld d, a                                          ; $7d1d: $57
	xor a                                            ; $7d1e: $af
	rst JumpTable                                          ; $7d1f: $c7
	cp a                                             ; $7d20: $bf
	res 6, a                                         ; $7d21: $cb $b7
	res 6, a                                         ; $7d23: $cb $b7
	ld sp, hl                                        ; $7d25: $f9
	cp a                                             ; $7d26: $bf
	ld a, [hl-]                                      ; $7d27: $3a
	nop                                              ; $7d28: $00
	sbc [hl]                                         ; $7d29: $9e
	ld [hl], e                                       ; $7d2a: $73
	db $dd                                           ; $7d2b: $dd
	inc sp                                           ; $7d2c: $33
	sbc [hl]                                         ; $7d2d: $9e
	scf                                              ; $7d2e: $37
	db $dd                                           ; $7d2f: $dd
	ld [hl], a                                       ; $7d30: $77
	ld [hl], e                                       ; $7d31: $73
	or $9e                                           ; $7d32: $f6 $9e
	inc sp                                           ; $7d34: $33
	call c, $9977                                    ; $7d35: $dc $77 $99
	ld [hl], e                                       ; $7d38: $73
	scf                                              ; $7d39: $37
	inc sp                                           ; $7d3a: $33
	inc sp                                           ; $7d3b: $33
	ld b, e                                          ; $7d3c: $43
	scf                                              ; $7d3d: $37
	ld a, e                                          ; $7d3e: $7b

Jump_049_7d3f:
	xor $98                                          ; $7d3f: $ee $98
	inc [hl]                                         ; $7d41: $34
	ld b, h                                          ; $7d42: $44
	scf                                              ; $7d43: $37
	ld b, h                                          ; $7d44: $44
	ld b, h                                          ; $7d45: $44
	ld h, [hl]                                       ; $7d46: $66
	ld h, e                                          ; $7d47: $63
	sbc $33                                          ; $7d48: $de $33
	call c, $dc44                                    ; $7d4a: $dc $44 $dc
	ld h, [hl]                                       ; $7d4d: $66
	ld c, e                                          ; $7d4e: $4b
	or $9b                                           ; $7d4f: $f6 $9b
	inc sp                                           ; $7d51: $33
	ld h, [hl]                                       ; $7d52: $66
	ld h, [hl]                                       ; $7d53: $66
	ld [hl], a                                       ; $7d54: $77
	ld l, a                                          ; $7d55: $6f
	or $9e                                           ; $7d56: $f6 $9e
	inc [hl]                                         ; $7d58: $34
	ld a, e                                          ; $7d59: $7b
	xor $67                                          ; $7d5a: $ee $67
	ldh [c], a                                       ; $7d5c: $e2
	sbc $55                                          ; $7d5d: $de $55
	scf                                              ; $7d5f: $37
	or $5e                                           ; $7d60: $f6 $5e
	rlca                                             ; $7d62: $07
	add c                                            ; $7d63: $81
	nop                                              ; $7d64: $00
	rst $38                                          ; $7d65: $ff
	cp $01                                           ; $7d66: $fe $01
	db $f4                                           ; $7d68: $f4
	dec bc                                           ; $7d69: $0b
	adc d                                            ; $7d6a: $8a
	ld [hl], l                                       ; $7d6b: $75
	ld d, l                                          ; $7d6c: $55
	xor d                                            ; $7d6d: $aa
	xor d                                            ; $7d6e: $aa
	ld d, l                                          ; $7d6f: $55
	ld d, l                                          ; $7d70: $55
	xor d                                            ; $7d71: $aa
	nop                                              ; $7d72: $00
	rst $38                                          ; $7d73: $ff
	nop                                              ; $7d74: $00
	rst $38                                          ; $7d75: $ff
	ld a, [$5505]                                    ; $7d76: $fa $05 $55
	xor d                                            ; $7d79: $aa
	xor b                                            ; $7d7a: $a8
	ld d, a                                          ; $7d7b: $57
	ld de, $aaee                                     ; $7d7c: $11 $ee $aa
	ld d, l                                          ; $7d7f: $55

Call_049_7d80:
	db $dd                                           ; $7d80: $dd
	ld [hl+], a                                      ; $7d81: $22
	ld [hl], a                                       ; $7d82: $77
	ldh a, [$7f]                                     ; $7d83: $f0 $7f
	db $fd                                           ; $7d85: $fd
	sub l                                            ; $7d86: $95
	cp a                                             ; $7d87: $bf
	ld b, b                                          ; $7d88: $40
	cp a                                             ; $7d89: $bf
	ld b, b                                          ; $7d8a: $40
	ld d, a                                          ; $7d8b: $57
	xor b                                            ; $7d8c: $a8
	xor d                                            ; $7d8d: $aa
	ld d, l                                          ; $7d8e: $55
	rst $38                                          ; $7d8f: $ff
	nop                                              ; $7d90: $00
	ld l, a                                          ; $7d91: $6f
	ldh a, [$6f]                                     ; $7d92: $f0 $6f
	cp $7f                                           ; $7d94: $fe $7f
	db $ec                                           ; $7d96: $ec
	ld c, a                                          ; $7d97: $4f

Call_049_7d98:
	ldh a, [$9d]                                     ; $7d98: $f0 $9d
	db $fd                                           ; $7d9a: $fd
	ld [bc], a                                       ; $7d9b: $02
	ld d, a                                          ; $7d9c: $57
	ldh a, [$7f]                                     ; $7d9d: $f0 $7f
	xor d                                            ; $7d9f: $aa
	sbc l                                            ; $7da0: $9d
	ld l, l                                          ; $7da1: $6d
	sub d                                            ; $7da2: $92
	ld e, a                                          ; $7da3: $5f
	ldh a, [$7f]                                     ; $7da4: $f0 $7f
	or [hl]                                          ; $7da6: $b6
	ld a, a                                          ; $7da7: $7f
	jp nz, Jump_049_5d9d                             ; $7da8: $c2 $9d $5d

	and d                                            ; $7dab: $a2
	ld l, a                                          ; $7dac: $6f
	ldh a, [$9d]                                     ; $7dad: $f0 $9d
	push de                                          ; $7daf: $d5
	ld a, [hl+]                                      ; $7db0: $2a
	ld [hl], a                                       ; $7db1: $77
	sub [hl]                                         ; $7db2: $96
	ld a, a                                          ; $7db3: $7f
	sbc [hl]                                         ; $7db4: $9e
	sbc l                                            ; $7db5: $9d
	ld h, c                                          ; $7db6: $61
	sbc [hl]                                         ; $7db7: $9e
	ld l, a                                          ; $7db8: $6f
	ldh a, [rPCM34]                                  ; $7db9: $f0 $77
	cp $7f                                           ; $7dbb: $fe $7f
	sbc a                                            ; $7dbd: $9f
	ld a, a                                          ; $7dbe: $7f
	ldh a, [$7f]                                     ; $7dbf: $f0 $7f
	db $ec                                           ; $7dc1: $ec
	ld l, a                                          ; $7dc2: $6f
	ldh a, [hDisp1_WY]                                     ; $7dc3: $f0 $95
	add l                                            ; $7dc5: $85
	ld a, d                                          ; $7dc6: $7a
	ld [bc], a                                       ; $7dc7: $02
	db $fd                                           ; $7dc8: $fd
	dec b                                            ; $7dc9: $05
	ld a, [$55aa]                                    ; $7dca: $fa $aa $55
	dec d                                            ; $7dcd: $15
	ld [$f06f], a                                    ; $7dce: $ea $6f $f0
	ld [hl], a                                       ; $7dd1: $77
	ld h, [hl]                                       ; $7dd2: $66
	ld a, a                                          ; $7dd3: $7f
	db $f4                                           ; $7dd4: $f4
	ld [hl], a                                       ; $7dd5: $77
	call z, $ac7f                                    ; $7dd6: $cc $7f $ac
	ld h, a                                          ; $7dd9: $67
	ret nc                                           ; $7dda: $d0

	ld a, a                                          ; $7ddb: $7f
	cp $99                                           ; $7ddc: $fe $99
	add b                                            ; $7dde: $80
	ld a, a                                          ; $7ddf: $7f
	db $10                                           ; $7de0: $10
	rst AddAOntoHL                                          ; $7de1: $ef
	ld [$5f15], a                                    ; $7de2: $ea $15 $5f
	ldh a, [$7f]                                     ; $7de5: $f0 $7f
	cp $7f                                           ; $7de7: $fe $7f
	ldh a, [$7f]                                     ; $7de9: $f0 $7f
	cp h                                             ; $7deb: $bc
	ld d, a                                          ; $7dec: $57
	ldh a, [rPCM34]                                  ; $7ded: $f0 $77
	add $4f                                          ; $7def: $c6 $4f
	ldh a, [$7f]                                     ; $7df1: $f0 $7f
	sbc d                                            ; $7df3: $9a
	ld [hl], a                                       ; $7df4: $77
	ld a, [$b47f]                                    ; $7df5: $fa $7f $b4
	ld c, a                                          ; $7df8: $4f
	ld [$5f9d], a                                    ; $7df9: $ea $9d $5f
	and b                                            ; $7dfc: $a0
	ld c, a                                          ; $7dfd: $4f
	ldh a, [$7f]                                     ; $7dfe: $f0 $7f
	db $fd                                           ; $7e00: $fd
	ld a, a                                          ; $7e01: $7f
	add d                                            ; $7e02: $82
	ld c, a                                          ; $7e03: $4f
	ldh a, [$7f]                                     ; $7e04: $f0 $7f
	sbc $9d                                          ; $7e06: $de $9d
	ld a, [hl+]                                      ; $7e08: $2a
	push de                                          ; $7e09: $d5
	ld d, a                                          ; $7e0a: $57
	ldh a, [rPCM34]                                  ; $7e0b: $f0 $77
	cp $63                                           ; $7e0d: $fe $63
	ldh a, [c]                                       ; $7e0f: $f2
	call c, Call_049_7eff                            ; $7e10: $dc $ff $7e
	push hl                                          ; $7e13: $e5
	sbc [hl]                                         ; $7e14: $9e
	xor e                                            ; $7e15: $ab
	ld h, a                                          ; $7e16: $67
	and $dc                                          ; $7e17: $e6 $dc
	rst $38                                          ; $7e19: $ff
	sbc [hl]                                         ; $7e1a: $9e
	ld e, [hl]                                       ; $7e1b: $5e
	sbc $ff                                          ; $7e1c: $de $ff
	ld [hl], a                                       ; $7e1e: $77
	ldh a, [$7b]                                     ; $7e1f: $f0 $7b
	or a                                             ; $7e21: $b7
	call c, Call_049_7fff                            ; $7e22: $dc $ff $7f
	dec h                                            ; $7e25: $25
	ld l, a                                          ; $7e26: $6f
	ldh a, [$9d]                                     ; $7e27: $f0 $9d
	and b                                            ; $7e29: $a0
	rrca                                             ; $7e2a: $0f
	ld h, a                                          ; $7e2b: $67
	ldh a, [$9e]                                     ; $7e2c: $f0 $9e
	db $dd                                           ; $7e2e: $dd
	ld [hl], e                                       ; $7e2f: $73
	ldh a, [$67]                                     ; $7e30: $f0 $67
	ret nz                                           ; $7e32: $c0

	ld h, a                                          ; $7e33: $67
	ldh [$6f], a                                     ; $7e34: $e0 $6f
	ldh a, [$9e]                                     ; $7e36: $f0 $9e
	ld [hl], l                                       ; $7e38: $75
	ld a, e                                          ; $7e39: $7b
	ldh a, [$7a]                                     ; $7e3a: $f0 $7a
	sub e                                            ; $7e3c: $93
	ld h, e                                          ; $7e3d: $63
	ldh a, [$7f]                                     ; $7e3e: $f0 $7f
	db $f4                                           ; $7e40: $f4
	scf                                              ; $7e41: $37
	ldh a, [$9d]                                     ; $7e42: $f0 $9d
	ld a, a                                          ; $7e44: $7f
	add b                                            ; $7e45: $80
	ld c, a                                          ; $7e46: $4f
	ldh a, [$6f]                                     ; $7e47: $f0 $6f
	ld l, d                                          ; $7e49: $6a
	ld d, a                                          ; $7e4a: $57
	ldh a, [$9b]                                     ; $7e4b: $f0 $9b
	db $fd                                           ; $7e4d: $fd
	nop                                              ; $7e4e: $00
	ld [de], a                                       ; $7e4f: $12
	ld hl, sp+$5f                                    ; $7e50: $f8 $5f
	ldh a, [$9a]                                     ; $7e52: $f0 $9a
	ldh a, [rIF]                                     ; $7e54: $f0 $0f
	ld d, a                                          ; $7e56: $57
	nop                                              ; $7e57: $00
	xor e                                            ; $7e58: $ab
	ld [hl], e                                       ; $7e59: $73
	rst SubAFromDE                                          ; $7e5a: $df
	ld a, a                                          ; $7e5b: $7f
	db $f4                                           ; $7e5c: $f4
	sbc [hl]                                         ; $7e5d: $9e
	and b                                            ; $7e5e: $a0
	ld [hl], e                                       ; $7e5f: $73
	or b                                             ; $7e60: $b0
	ld a, [hl]                                       ; $7e61: $7e
	or b                                             ; $7e62: $b0
	ld l, a                                          ; $7e63: $6f
	ld d, b                                          ; $7e64: $50
	ld [hl], a                                       ; $7e65: $77
	db $f4                                           ; $7e66: $f4
	ld [hl], a                                       ; $7e67: $77
	db $fc                                           ; $7e68: $fc
	halt                                             ; $7e69: $76
	sbc h                                            ; $7e6a: $9c
	ld l, a                                          ; $7e6b: $6f
	ldh a, [$9e]                                     ; $7e6c: $f0 $9e
	ld a, [hl+]                                      ; $7e6e: $2a
	ld [hl], e                                       ; $7e6f: $73
	ldh a, [$67]                                     ; $7e70: $f0 $67
	ld sp, $c077                                     ; $7e72: $31 $77 $c0

Call_049_7e75:
	sbc l                                            ; $7e75: $9d
	ld d, h                                          ; $7e76: $54
	rst $38                                          ; $7e77: $ff
	ld [hl], a                                       ; $7e78: $77
	db $d3                                           ; $7e79: $d3
	sbc l                                            ; $7e7a: $9d
	inc bc                                           ; $7e7b: $03
	cp $67                                           ; $7e7c: $fe $67

Jump_049_7e7e:
	ldh a, [$97]                                     ; $7e7e: $f0 $97
	ld e, d                                          ; $7e80: $5a
	pop hl                                           ; $7e81: $e1
	db $10                                           ; $7e82: $10
	add b                                            ; $7e83: $80
	jr z, jr_049_7eb6                                ; $7e84: $28 $30

	ld a, h                                          ; $7e86: $7c
	inc bc                                           ; $7e87: $03
	ld e, a                                          ; $7e88: $5f
	and b                                            ; $7e89: $a0
	sbc d                                            ; $7e8a: $9a
	ld c, d                                          ; $7e8b: $4a
	ccf                                              ; $7e8c: $3f
	db $10                                           ; $7e8d: $10
	rra                                              ; $7e8e: $1f
	ld hl, sp+$73                                    ; $7e8f: $f8 $73
	jr nz, jr_049_7f02                               ; $7e91: $20 $6f

	ldh a, [$7a]                                     ; $7e93: $f0 $7a
	ld sp, $c05b                                     ; $7e95: $31 $5b $c0
	ld d, a                                          ; $7e98: $57

Call_049_7e99:
	ldh a, [$9e]                                     ; $7e99: $f0 $9e
	ld d, a                                          ; $7e9b: $57
	ld [hl], e                                       ; $7e9c: $73
	ldh a, [$7f]                                     ; $7e9d: $f0 $7f
	ld a, h                                          ; $7e9f: $7c
	ld d, l                                          ; $7ea0: $55
	jp nz, $fe67                                     ; $7ea1: $c2 $67 $fe

	sbc b                                            ; $7ea4: $98
	push af                                          ; $7ea5: $f5
	nop                                              ; $7ea6: $00
	ld [$d400], a                                    ; $7ea7: $ea $00 $d4
	nop                                              ; $7eaa: $00
	xor b                                            ; $7eab: $a8
	ld [hl], e                                       ; $7eac: $73
	db $fc                                           ; $7ead: $fc
	sbc [hl]                                         ; $7eae: $9e
	ld d, b                                          ; $7eaf: $50
	ld a, e                                          ; $7eb0: $7b
	db $fc                                           ; $7eb1: $fc
	sub a                                            ; $7eb2: $97
	ld [$081f], sp                                   ; $7eb3: $08 $1f $08

jr_049_7eb6:
	rra                                              ; $7eb6: $1f
	ld a, [bc]                                       ; $7eb7: $0a
	dec e                                            ; $7eb8: $1d
	inc c                                            ; $7eb9: $0c
	dec de                                           ; $7eba: $1b
	ld h, a                                          ; $7ebb: $67
	db $fc                                           ; $7ebc: $fc
	ld a, a                                          ; $7ebd: $7f
	ld a, [bc]                                       ; $7ebe: $0a
	ld a, a                                          ; $7ebf: $7f
	db $db                                           ; $7ec0: $db
	ld a, [hl]                                       ; $7ec1: $7e
	sub h                                            ; $7ec2: $94
	sub l                                            ; $7ec3: $95
	ld d, l                                          ; $7ec4: $55
	add b                                            ; $7ec5: $80
	ld a, [hl+]                                      ; $7ec6: $2a
	add b                                            ; $7ec7: $80
	ld d, l                                          ; $7ec8: $55
	add b                                            ; $7ec9: $80
	ld l, $81                                        ; $7eca: $2e $81
	ld d, a                                          ; $7ecc: $57
	add e                                            ; $7ecd: $83
	ld [hl], a                                       ; $7ece: $77
	inc c                                            ; $7ecf: $0c
	sbc b                                            ; $7ed0: $98
	push de                                          ; $7ed1: $d5
	rst $38                                          ; $7ed2: $ff
	ld d, l                                          ; $7ed3: $55
	nop                                              ; $7ed4: $00
	xor d                                            ; $7ed5: $aa
	nop                                              ; $7ed6: $00
	ld d, l                                          ; $7ed7: $55
	ld [hl], e                                       ; $7ed8: $73
	ld [bc], a                                       ; $7ed9: $02
	sbc d                                            ; $7eda: $9a
	db $fc                                           ; $7edb: $fc
	inc bc                                           ; $7edc: $03
	xor d                                            ; $7edd: $aa
	rst $38                                          ; $7ede: $ff
	ld d, b                                          ; $7edf: $50
	ld l, e                                          ; $7ee0: $6b
	ldh a, [$7f]                                     ; $7ee1: $f0 $7f
	ld c, [hl]                                       ; $7ee3: $4e
	sbc [hl]                                         ; $7ee4: $9e
	or $77                                           ; $7ee5: $f6 $77
	ld a, [hl+]                                      ; $7ee7: $2a
	ld [hl], a                                       ; $7ee8: $77
	ld [hl+], a                                      ; $7ee9: $22
	ld [hl], e                                       ; $7eea: $73
	ldh a, [$7f]                                     ; $7eeb: $f0 $7f
	adc h                                            ; $7eed: $8c
	sbc h                                            ; $7eee: $9c
	ccf                                              ; $7eef: $3f
	rst $38                                          ; $7ef0: $ff
	dec b                                            ; $7ef1: $05
	ld a, e                                          ; $7ef2: $7b
	ldh a, [$9e]                                     ; $7ef3: $f0 $9e
	dec d                                            ; $7ef5: $15
	ld h, e                                          ; $7ef6: $63
	ldh a, [$9e]                                     ; $7ef7: $f0 $9e
	rst AddAOntoHL                                          ; $7ef9: $ef
	ld a, e                                          ; $7efa: $7b
	ld a, b                                          ; $7efb: $78
	sbc [hl]                                         ; $7efc: $9e

Call_049_7efd:
	xor [hl]                                         ; $7efd: $ae
	ld a, e                                          ; $7efe: $7b

Call_049_7eff:
	db $fc                                           ; $7eff: $fc
	ld a, a                                          ; $7f00: $7f
	db $f4                                           ; $7f01: $f4

jr_049_7f02:
	ld a, [hl]                                       ; $7f02: $7e
	and $7b                                          ; $7f03: $e6 $7b
	db $ec                                           ; $7f05: $ec
	sub a                                            ; $7f06: $97
	pop bc                                           ; $7f07: $c1
	push de                                          ; $7f08: $d5
	ldh [$5d], a                                     ; $7f09: $e0 $5d
	ld hl, sp-$48                                    ; $7f0b: $f8 $b8
	ld hl, sp+$5c                                    ; $7f0d: $f8 $5c
	ld l, e                                          ; $7f0f: $6b
	db $fc                                           ; $7f10: $fc
	sub [hl]                                         ; $7f11: $96
	ld e, b                                          ; $7f12: $58
	ld hl, sp-$44                                    ; $7f13: $f8 $bc
	ld hl, sp+$55                                    ; $7f15: $f8 $55
	nop                                              ; $7f17: $00
	ld a, [hl+]                                      ; $7f18: $2a
	nop                                              ; $7f19: $00
	dec d                                            ; $7f1a: $15
	ld [hl], e                                       ; $7f1b: $73
	db $fc                                           ; $7f1c: $fc
	sbc d                                            ; $7f1d: $9a
	ld a, [bc]                                       ; $7f1e: $0a
	nop                                              ; $7f1f: $00
	dec b                                            ; $7f20: $05
	nop                                              ; $7f21: $00
	ld [bc], a                                       ; $7f22: $02
	ld [hl], e                                       ; $7f23: $73
	ld e, h                                          ; $7f24: $5c
	sbc d                                            ; $7f25: $9a
	ld a, a                                          ; $7f26: $7f
	nop                                              ; $7f27: $00
	cp a                                             ; $7f28: $bf
	nop                                              ; $7f29: $00
	ld e, a                                          ; $7f2a: $5f
	ld [hl], e                                       ; $7f2b: $73
	db $fc                                           ; $7f2c: $fc
	sub c                                            ; $7f2d: $91
	xor a                                            ; $7f2e: $af
	nop                                              ; $7f2f: $00
	xor d                                            ; $7f30: $aa
	ld d, l                                          ; $7f31: $55
	push de                                          ; $7f32: $d5
	ld a, [hl+]                                      ; $7f33: $2a
	ld [$f515], a                                    ; $7f34: $ea $15 $f5
	ld a, [bc]                                       ; $7f37: $0a
	ld a, [$fd05]                                    ; $7f38: $fa $05 $fd
	ld [bc], a                                       ; $7f3b: $02
	ld [hl], a                                       ; $7f3c: $77
	db $fc                                           ; $7f3d: $fc
	ld a, l                                          ; $7f3e: $7d

Call_049_7f3f:
	ld l, b                                          ; $7f3f: $68

Call_049_7f40:
	ld [hl], l                                       ; $7f40: $75
	ld h, h                                          ; $7f41: $64
	ld a, l                                          ; $7f42: $7d
	sub [hl]                                         ; $7f43: $96
	sbc e                                            ; $7f44: $9b

jr_049_7f45:
	and b                                            ; $7f45: $a0
	ld e, a                                          ; $7f46: $5f
	ld d, b                                          ; $7f47: $50

jr_049_7f48:
	xor a                                            ; $7f48: $af
	ld [hl], a                                       ; $7f49: $77
	db $fc                                           ; $7f4a: $fc
	sbc h                                            ; $7f4b: $9c
	inc b                                            ; $7f4c: $04
	cp $02                                           ; $7f4d: $fe $02
	ld [hl], d                                       ; $7f4f: $72
	add $67                                          ; $7f50: $c6 $67

jr_049_7f52:
	cp $80                                           ; $7f52: $fe $80
	add [hl]                                         ; $7f54: $86
	ld b, e                                          ; $7f55: $43
	halt                                             ; $7f56: $76
	add b                                            ; $7f57: $80
	ret c                                            ; $7f58: $d8

	ldh a, [$50]                                     ; $7f59: $f0 $50
	xor $36                                          ; $7f5b: $ee $36
	ldh [c], a                                       ; $7f5d: $e2
	ld d, a                                          ; $7f5e: $57
	ld hl, sp+$7d                                    ; $7f5f: $f8 $7d
	jp nz, $82d7                                     ; $7f61: $c2 $d7 $82

	jr c, @-$2f                                      ; $7f64: $38 $cf

	jr nz, jr_049_7fb7                               ; $7f66: $20 $4f

	ld c, h                                          ; $7f68: $4c
	daa                                              ; $7f69: $27
	ld h, a                                          ; $7f6a: $67
	inc hl                                           ; $7f6b: $23
	di                                               ; $7f6c: $f3
	jr nz, jr_049_7f52                               ; $7f6d: $20 $e3

	jr nc, jr_049_7f45                               ; $7f6f: $30 $d4

	dec sp                                           ; $7f71: $3b
	ld h, d                                          ; $7f72: $62
	adc [hl]                                         ; $7f73: $8e
	inc c                                            ; $7f74: $0c
	nop                                              ; $7f75: $00
	rst $38                                          ; $7f76: $ff
	jr nc, jr_049_7f48                               ; $7f77: $30 $cf

	call z, $0c03                                    ; $7f79: $cc $03 $0c
	rst FarCall                                          ; $7f7c: $f7
	ldh [c], a                                       ; $7f7d: $e2
	ld bc, $01c0                                     ; $7f7e: $01 $c0 $01
	ld e, a                                          ; $7f81: $5f
	add b                                            ; $7f82: $80
	xor c                                            ; $7f83: $a9
	ld b, [hl]                                       ; $7f84: $46
	ld e, c                                          ; $7f85: $59
	ld c, $7b                                        ; $7f86: $0e $7b
	db $fc                                           ; $7f88: $fc
	sbc [hl]                                         ; $7f89: $9e
	ret nz                                           ; $7f8a: $c0

	ld a, e                                          ; $7f8b: $7b
	and d                                            ; $7f8c: $a2
	ld b, l                                          ; $7f8d: $45
	ld d, d                                          ; $7f8e: $52
	sbc [hl]                                         ; $7f8f: $9e
	cp $74                                           ; $7f90: $fe $74
	sub d                                            ; $7f92: $92

Jump_049_7f93:
	ld a, d                                          ; $7f93: $7a
	inc d                                            ; $7f94: $14
	ld l, a                                          ; $7f95: $6f
	db $fc                                           ; $7f96: $fc
	ld a, [hl]                                       ; $7f97: $7e
	call z, $317d                                    ; $7f98: $cc $7d $31
	halt                                             ; $7f9b: $76
	ret z                                            ; $7f9c: $c8

	ld l, a                                          ; $7f9d: $6f
	ld hl, sp+$7f                                    ; $7f9e: $f8 $7f
	db $fc                                           ; $7fa0: $fc
	ld d, [hl]                                       ; $7fa1: $56
	call nz, $fc7f                                   ; $7fa2: $c4 $7f $fc
	add [hl]                                         ; $7fa5: $86
	dec c                                            ; $7fa6: $0d
	ld a, [de]                                       ; $7fa7: $1a
	dec l                                            ; $7fa8: $2d
	add e                                            ; $7fa9: $83
	ld [hl], a                                       ; $7faa: $77
	add e                                            ; $7fab: $83
	dec a                                            ; $7fac: $3d
	add e                                            ; $7fad: $83
	ld a, l                                          ; $7fae: $7d
	add e                                            ; $7faf: $83
	dec l                                            ; $7fb0: $2d
	sub e                                            ; $7fb1: $93
	ld [hl], a                                       ; $7fb2: $77
	adc e                                            ; $7fb3: $8b
	ld l, l                                          ; $7fb4: $6d
	sub e                                            ; $7fb5: $93
	ld d, l                                          ; $7fb6: $55

jr_049_7fb7:
	xor e                                            ; $7fb7: $ab
	ld a, d                                          ; $7fb8: $7a
	rst $38                                          ; $7fb9: $ff
	push af                                          ; $7fba: $f5
	rst $38                                          ; $7fbb: $ff
	ld l, e                                          ; $7fbc: $6b
	rst $38                                          ; $7fbd: $ff
	rst SubAFromHL                                          ; $7fbe: $d7
	ld a, d                                          ; $7fbf: $7a
	or $9e                                           ; $7fc0: $f6 $9e
	rst SubAFromDE                                          ; $7fc2: $df
	call c, $8bff                                    ; $7fc3: $dc $ff $8b
	xor c                                            ; $7fc6: $a9
	cp $f2                                           ; $7fc7: $fe $f2
	db $fd                                           ; $7fc9: $fd
	db $fd                                           ; $7fca: $fd
	ld a, [$fdf2]                                    ; $7fcb: $fa $f2 $fd
	ld sp, hl                                        ; $7fce: $f9
	cp $e2                                           ; $7fcf: $fe $e2
	rst $38                                          ; $7fd1: $ff
	jp hl                                            ; $7fd2: $e9


	or $c3                                           ; $7fd3: $f6 $c3
	db $fc                                           ; $7fd5: $fc
	push bc                                          ; $7fd6: $c5
	ccf                                              ; $7fd7: $3f
	xor d                                            ; $7fd8: $aa
	ld e, a                                          ; $7fd9: $5f
	ld [hl], a                                       ; $7fda: $77
	db $fc                                           ; $7fdb: $fc
	sub [hl]                                         ; $7fdc: $96
	ld c, l                                          ; $7fdd: $4d
	ccf                                              ; $7fde: $3f
	srl a                                            ; $7fdf: $cb $3f
	dec hl                                           ; $7fe1: $2b
	rla                                              ; $7fe2: $17
	ld h, d                                          ; $7fe3: $62
	rra                                              ; $7fe4: $1f
	ld d, h                                          ; $7fe5: $54
	ld l, d                                          ; $7fe6: $6a
	inc [hl]                                         ; $7fe7: $34
	ld [hl], a                                       ; $7fe8: $77
	ld hl, sp+$77                                    ; $7fe9: $f8 $77
	db $fc                                           ; $7feb: $fc
	adc h                                            ; $7fec: $8c
	ld l, d                                          ; $7fed: $6a
	pop bc                                           ; $7fee: $c1
	ld e, l                                          ; $7fef: $5d
	ldh [$5a], a                                     ; $7ff0: $e0 $5a
	pop hl                                           ; $7ff2: $e1
	ld a, a                                          ; $7ff3: $7f
	ret nz                                           ; $7ff4: $c0

	ld e, d                                          ; $7ff5: $5a
	pop hl                                           ; $7ff6: $e1
	ld d, a                                          ; $7ff7: $57
	add sp, $4e                                      ; $7ff8: $e8 $4e
	pop af                                           ; $7ffa: $f1
	push de                                          ; $7ffb: $d5
	ld [$f858], a                                    ; $7ffc: $ea $58 $f8

Call_049_7fff:
	sbc b                                            ; $7fff: $98
