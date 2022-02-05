; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $071", ROMX[$4000], BANK[$71]

	dec l                                            ; $4000: $2d
	dec a                                            ; $4001: $3d
	dec hl                                           ; $4002: $2b
	ld l, [hl]                                       ; $4003: $6e
	ld e, e                                          ; $4004: $5b
	ld a, d                                          ; $4005: $7a
	ld d, a                                          ; $4006: $57
	sbc h                                            ; $4007: $9c
	rst FarCall                                          ; $4008: $f7
	db $f4                                           ; $4009: $f4
	rst AddAOntoHL                                          ; $400a: $ef
	ld l, c                                          ; $400b: $69
	ld a, a                                          ; $400c: $7f
	ld d, d                                          ; $400d: $52
	ld a, a                                          ; $400e: $7f
	db $fc                                           ; $400f: $fc
	rst $38                                          ; $4010: $ff
	dec l                                            ; $4011: $2d
	dec sp                                           ; $4012: $3b
	ld l, l                                          ; $4013: $6d
	ld e, d                                          ; $4014: $5a
	ld l, a                                          ; $4015: $6f
	ld e, h                                          ; $4016: $5c
	rst SubAFromHL                                          ; $4017: $d7
	cp h                                             ; $4018: $bc
	cp a                                             ; $4019: $bf
	db $f4                                           ; $401a: $f4
	db $dd                                           ; $401b: $dd
	rst SubAFromHL                                          ; $401c: $d7
	or a                                             ; $401d: $b7
	adc b                                            ; $401e: $88
	xor [hl]                                         ; $401f: $ae
	xor e                                            ; $4020: $ab
	cp [hl]                                          ; $4021: $be
	ld l, [hl]                                       ; $4022: $6e
	ld e, e                                          ; $4023: $5b
	ld e, a                                          ; $4024: $5f
	ld a, e                                          ; $4025: $7b
	xor e                                            ; $4026: $ab
	rst AddAOntoHL                                          ; $4027: $ef
	rst SubAFromHL                                          ; $4028: $d7
	rst SubAFromDE                                          ; $4029: $df
	sub a                                            ; $402a: $97
	sbc a                                            ; $402b: $9f
	sbc d                                            ; $402c: $9a
	sbc e                                            ; $402d: $9b
	dec de                                           ; $402e: $1b
	ld a, [de]                                       ; $402f: $1a
	inc de                                           ; $4030: $13
	ld [de], a                                       ; $4031: $12
	inc de                                           ; $4032: $13
	inc de                                           ; $4033: $13
	inc bc                                           ; $4034: $03
	inc bc                                           ; $4035: $03
	db $dd                                           ; $4036: $dd
	ld [bc], a                                       ; $4037: $02
	ei                                               ; $4038: $fb
	add b                                            ; $4039: $80
	cp [hl]                                          ; $403a: $be
	inc de                                           ; $403b: $13
	ld d, l                                          ; $403c: $55
	dec sp                                           ; $403d: $3b
	dec a                                            ; $403e: $3d
	ld l, e                                          ; $403f: $6b
	db $eb                                           ; $4040: $eb
	ld l, l                                          ; $4041: $6d
	ld l, a                                          ; $4042: $6f
	push bc                                          ; $4043: $c5
	call nz, $e287                                   ; $4044: $c4 $87 $e2
	inc bc                                           ; $4047: $03
	ei                                               ; $4048: $fb
	ld a, c                                          ; $4049: $79
	pop hl                                           ; $404a: $e1
	ld hl, sp+$7c                                    ; $404b: $f8 $7c
	add b                                            ; $404d: $80
	ld a, h                                          ; $404e: $7c
	nop                                              ; $404f: $00
	ld a, $00                                        ; $4050: $3e $00
	or [hl]                                          ; $4052: $b6
	ld a, b                                          ; $4053: $78
	ld [$e6ec], a                                    ; $4054: $ea $ec $e6
	db $e4                                           ; $4057: $e4
	ld e, h                                          ; $4058: $5c
	add b                                            ; $4059: $80
	ld a, h                                          ; $405a: $7c
	ld e, h                                          ; $405b: $5c
	ld e, h                                          ; $405c: $5c
	ld d, h                                          ; $405d: $54
	ld d, h                                          ; $405e: $54
	jr z, @+$2e                                      ; $405f: $28 $2c

	ld a, l                                          ; $4061: $7d
	db $18, $83                                      ; $4062: $18 $83
	inc bc                                           ; $4064: $03
	add e                                            ; $4065: $83
	ld [bc], a                                       ; $4066: $02
	add c                                            ; $4067: $81
	add b                                            ; $4068: $80
	ret nz                                           ; $4069: $c0

	add b                                            ; $406a: $80
	rst $38                                          ; $406b: $ff
	ret nz                                           ; $406c: $c0

	ld e, a                                          ; $406d: $5f
	ld h, b                                          ; $406e: $60
	cpl                                              ; $406f: $2f
	jr nc, jr_071_4089                               ; $4070: $30 $17

	jr jr_071_407f                                   ; $4072: $18 $0b

	inc c                                            ; $4074: $0c
	rlca                                             ; $4075: $07
	ld b, $03                                        ; $4076: $06 $03
	inc bc                                           ; $4078: $03
	rst SubAFromDE                                          ; $4079: $df
	rrca                                             ; $407a: $0f

Call_071_407b:
	add b                                            ; $407b: $80
	ld d, h                                          ; $407c: $54
	inc hl                                           ; $407d: $23
	ld b, h                                          ; $407e: $44

jr_071_407f:
	or e                                             ; $407f: $b3
	db $d3                                           ; $4080: $d3
	cp c                                             ; $4081: $b9
	sbc d                                            ; $4082: $9a
	db $fd                                           ; $4083: $fd
	call c, $ee77                                    ; $4084: $dc $77 $ee
	cp e                                             ; $4087: $bb
	cp a                                             ; $4088: $bf

jr_071_4089:
	sbc c                                            ; $4089: $99
	ld e, a                                          ; $408a: $5f
	call $e1e6                                       ; $408b: $cd $e6 $e1
	ld h, e                                          ; $408e: $63
	nop                                              ; $408f: $00
	rlca                                             ; $4090: $07
	nop                                              ; $4091: $00
	rrca                                             ; $4092: $0f
	nop                                              ; $4093: $00
	ld c, $01                                        ; $4094: $0e $01
	dec c                                            ; $4096: $0d

jr_071_4097:
	inc bc                                           ; $4097: $03
	rrca                                             ; $4098: $0f
	inc bc                                           ; $4099: $03
	dec b                                            ; $409a: $05
	call c, $9801                                    ; $409b: $dc $01 $98
	add b                                            ; $409e: $80
	ld bc, $00c0                                     ; $409f: $01 $c0 $00
	pop bc                                           ; $40a2: $c1
	nop                                              ; $40a3: $00
	add b                                            ; $40a4: $80
	db $f4                                           ; $40a5: $f4
	add b                                            ; $40a6: $80
	ld bc, $0300                                     ; $40a7: $01 $00 $03
	nop                                              ; $40aa: $00
	adc a                                            ; $40ab: $8f
	inc bc                                           ; $40ac: $03
	rst $38                                          ; $40ad: $ff
	call z, $1965                                    ; $40ae: $cc $65 $19
	or b                                             ; $40b1: $b0
	dec c                                            ; $40b2: $0d
	ld [hl], $8d                                     ; $40b3: $36 $8d
	sbc h                                            ; $40b5: $9c
	rst JumpTable                                          ; $40b6: $c7
	ld e, d                                          ; $40b7: $5a
	rst SubAFromBC                                          ; $40b8: $e7
	ld a, [hl+]                                      ; $40b9: $2a
	rst FarCall                                          ; $40ba: $f7
	sub c                                            ; $40bb: $91
	rst $38                                          ; $40bc: $ff
	jp hl                                            ; $40bd: $e9


	rst $38                                          ; $40be: $ff
	inc a                                            ; $40bf: $3c

jr_071_40c0:
	rst $38                                          ; $40c0: $ff
	rst $38                                          ; $40c1: $ff
	dec bc                                           ; $40c2: $0b
	rst $38                                          ; $40c3: $ff
	ld bc, $89ff                                     ; $40c4: $01 $ff $89
	nop                                              ; $40c7: $00
	rst AddAOntoHL                                          ; $40c8: $ef
	ldh a, [$9b]                                     ; $40c9: $f0 $9b
	sbc h                                            ; $40cb: $9c
	ld c, a                                          ; $40cc: $4f
	adc $77                                          ; $40cd: $ce $77
	db $fc                                           ; $40cf: $fc
	ld [hl], a                                       ; $40d0: $77
	ld [hl], h                                       ; $40d1: $74
	ld d, e                                          ; $40d2: $53
	ld d, b                                          ; $40d3: $50
	and a                                            ; $40d4: $a7
	or b                                             ; $40d5: $b0
	rst AddAOntoHL                                          ; $40d6: $ef
	ldh [rIE], a                                     ; $40d7: $e0 $ff
	nop                                              ; $40d9: $00
	rra                                              ; $40da: $1f
	nop                                              ; $40db: $00
	ccf                                              ; $40dc: $3f

jr_071_40dd:
	ld a, e                                          ; $40dd: $7b
	cp $8f                                           ; $40de: $fe $8f
	ld a, a                                          ; $40e0: $7f
	ld bc, $037f                                     ; $40e1: $01 $7f $03
	rst $38                                          ; $40e4: $ff
	ld b, $ff                                        ; $40e5: $06 $ff
	inc c                                            ; $40e7: $0c
	db $fc                                           ; $40e8: $fc
	jr nc, @-$06                                     ; $40e9: $30 $f8

	ret nz                                           ; $40eb: $c0

	ldh [rP1], a                                     ; $40ec: $e0 $00
	ret nz                                           ; $40ee: $c0

	nop                                              ; $40ef: $00
	inc de                                           ; $40f0: $13
	nop                                              ; $40f1: $00
	sbc h                                            ; $40f2: $9c
	sub $b7                                          ; $40f3: $d6 $b7
	xor [hl]                                         ; $40f5: $ae
	daa                                              ; $40f6: $27
	jr nz, jr_071_4097                               ; $40f7: $20 $9e

	ld a, [hl]                                       ; $40f9: $7e
	ld a, e                                          ; $40fa: $7b
	ld e, $99                                        ; $40fb: $1e $99
	ld h, d                                          ; $40fd: $62
	db $e4                                           ; $40fe: $e4
	db $fc                                           ; $40ff: $fc
	db $fc                                           ; $4100: $fc
	ld e, h                                          ; $4101: $5c
	ld a, h                                          ; $4102: $7c
	inc bc                                           ; $4103: $03
	jr nz, jr_071_4139                               ; $4104: $20 $33

	jr nz, jr_071_4177                               ; $4106: $20 $6f

	ld e, $9d                                        ; $4108: $1e $9d
	rlca                                             ; $410a: $07
	inc bc                                           ; $410b: $03
	inc bc                                           ; $410c: $03
	jr nz, @+$2d                                     ; $410d: $20 $2b

	jr nz, jr_071_4190                               ; $410f: $20 $7f

	cp $97                                           ; $4111: $fe $97
	rst FarCall                                          ; $4113: $f7
	ld hl, sp-$31                                    ; $4114: $f8 $cf
	call z, $fef7                                    ; $4116: $cc $f7 $fe
	ld [hl], a                                       ; $4119: $77
	db $f4                                           ; $411a: $f4
	inc bc                                           ; $411b: $03
	jr nz, @+$05                                     ; $411c: $20 $03

	jr nz, jr_071_4167                               ; $411e: $20 $47

	jr nz, jr_071_40c0                               ; $4120: $20 $9e

	db $fc                                           ; $4122: $fc
	ld a, e                                          ; $4123: $7b
	ld [hl+], a                                      ; $4124: $22
	ld a, a                                          ; $4125: $7f
	ld e, $77                                        ; $4126: $1e $77
	inc e                                            ; $4128: $1c
	sbc e                                            ; $4129: $9b
	inc a                                            ; $412a: $3c
	ld a, b                                          ; $412b: $78
	call c, $03fc                                    ; $412c: $dc $fc $03
	jr nz, @+$2d                                     ; $412f: $20 $2b

	jr nz, jr_071_41aa                               ; $4131: $20 $77

	cp $9e                                           ; $4133: $fe $9e
	dec b                                            ; $4135: $05
	sbc $03                                          ; $4136: $de $03
	inc bc                                           ; $4138: $03

jr_071_4139:
	jr nz, @+$2d                                     ; $4139: $20 $2b

	jr nz, jr_071_41ac                               ; $413b: $20 $6f

	inc e                                            ; $413d: $1c
	sbc e                                            ; $413e: $9b
	ld a, a                                          ; $413f: $7f
	cp $57                                           ; $4140: $fe $57
	ld d, h                                          ; $4142: $54
	inc bc                                           ; $4143: $03
	jr nz, @+$05                                     ; $4144: $20 $03

	jr nz, jr_071_4177                               ; $4146: $20 $2f

	jr nz, jr_071_40dd                               ; $4148: $20 $93

	ld e, $00                                        ; $414a: $1e $00
	inc e                                            ; $414c: $1c
	nop                                              ; $414d: $00
	inc a                                            ; $414e: $3c
	nop                                              ; $414f: $00
	ld a, h                                          ; $4150: $7c
	nop                                              ; $4151: $00
	ld h, h                                          ; $4152: $64
	ld l, h                                          ; $4153: $6c
	ld a, l                                          ; $4154: $7d
	jr c, @+$05                                      ; $4155: $38 $03

	jr nz, jr_071_418c                               ; $4157: $20 $33

	jr nz, jr_071_41da                               ; $4159: $20 $7f

	or $7f                                           ; $415b: $f6 $7f
	jr c, jr_071_41de                                ; $415d: $38 $7f

	cp $9b                                           ; $415f: $fe $9b
	add d                                            ; $4161: $82
	inc bc                                           ; $4162: $03
	pop bc                                           ; $4163: $c1

jr_071_4164:
	ld bc, $2003                                     ; $4164: $01 $03 $20

jr_071_4167:
	inc sp                                           ; $4167: $33
	jr nz, jr_071_41d9                               ; $4168: $20 $6f

	cp $9b                                           ; $416a: $fe $9b
	xor a                                            ; $416c: $af
	ld e, $ff                                        ; $416d: $1e $ff
	ld hl, sp+$27                                    ; $416f: $f8 $27
	jr nz, jr_071_4164                               ; $4171: $20 $f1

	rst SubAFromDE                                          ; $4173: $df
	ld bc, $dfe5                                     ; $4174: $01 $e5 $df

jr_071_4177:
	db $10                                           ; $4177: $10
	sbc h                                            ; $4178: $9c
	ldh [$60], a                                     ; $4179: $e0 $60
	nop                                              ; $417b: $00
	dec sp                                           ; $417c: $3b
	jp z, $c003                                      ; $417d: $ca $03 $c0

	ld a, [$309a]                                    ; $4180: $fa $9a $30
	db $10                                           ; $4183: $10
	ldh a, [$e0]                                     ; $4184: $f0 $e0
	ldh [rAUD2ENV], a                                ; $4186: $e0 $17
	pop bc                                           ; $4188: $c1
	ld a, e                                          ; $4189: $7b
	ret nz                                           ; $418a: $c0

	rla                                              ; $418b: $17

jr_071_418c:
	cp a                                             ; $418c: $bf
	ld a, e                                          ; $418d: $7b
	ret nz                                           ; $418e: $c0

	rst SubAFromDE                                          ; $418f: $df

jr_071_4190:
	ldh a, [$df]                                     ; $4190: $f0 $df
	ldh [$9e], a                                     ; $4192: $e0 $9e
	ld b, b                                          ; $4194: $40
	inc bc                                           ; $4195: $03

jr_071_4196:
	ret nz                                           ; $4196: $c0

	rla                                              ; $4197: $17
	ret nz                                           ; $4198: $c0

	ld d, e                                          ; $4199: $53
	cp [hl]                                          ; $419a: $be
	and b                                            ; $419b: $a0
	ld bc, $3b80                                     ; $419c: $01 $80 $3b
	dec l                                            ; $419f: $2d
	dec a                                            ; $41a0: $3d
	dec hl                                           ; $41a1: $2b
	ld l, [hl]                                       ; $41a2: $6e
	ld e, e                                          ; $41a3: $5b
	ld a, d                                          ; $41a4: $7a
	ld d, a                                          ; $41a5: $57
	sbc h                                            ; $41a6: $9c
	rst FarCall                                          ; $41a7: $f7
	db $f4                                           ; $41a8: $f4
	rst AddAOntoHL                                          ; $41a9: $ef

jr_071_41aa:
	ld l, c                                          ; $41aa: $69
	ld a, a                                          ; $41ab: $7f

jr_071_41ac:
	ld d, d                                          ; $41ac: $52
	ld a, a                                          ; $41ad: $7f
	db $fc                                           ; $41ae: $fc
	rst $38                                          ; $41af: $ff
	dec l                                            ; $41b0: $2d
	dec sp                                           ; $41b1: $3b
	ld l, l                                          ; $41b2: $6d
	ld e, d                                          ; $41b3: $5a
	ld l, a                                          ; $41b4: $6f
	ld e, h                                          ; $41b5: $5c
	rst SubAFromHL                                          ; $41b6: $d7
	cp h                                             ; $41b7: $bc
	cp a                                             ; $41b8: $bf
	db $f4                                           ; $41b9: $f4
	db $dd                                           ; $41ba: $dd
	rst SubAFromHL                                          ; $41bb: $d7
	or a                                             ; $41bc: $b7
	adc b                                            ; $41bd: $88
	xor [hl]                                         ; $41be: $ae
	xor e                                            ; $41bf: $ab
	cp [hl]                                          ; $41c0: $be
	ld l, [hl]                                       ; $41c1: $6e
	ld e, e                                          ; $41c2: $5b
	ld e, a                                          ; $41c3: $5f
	ld a, e                                          ; $41c4: $7b
	xor e                                            ; $41c5: $ab
	rst AddAOntoHL                                          ; $41c6: $ef
	rst SubAFromHL                                          ; $41c7: $d7
	rst SubAFromDE                                          ; $41c8: $df
	sub a                                            ; $41c9: $97
	sbc a                                            ; $41ca: $9f
	sbc d                                            ; $41cb: $9a
	sbc e                                            ; $41cc: $9b
	dec de                                           ; $41cd: $1b
	ld a, [de]                                       ; $41ce: $1a
	inc de                                           ; $41cf: $13
	ld [de], a                                       ; $41d0: $12
	inc de                                           ; $41d1: $13
	inc de                                           ; $41d2: $13
	inc bc                                           ; $41d3: $03
	inc bc                                           ; $41d4: $03
	db $dd                                           ; $41d5: $dd
	ld [bc], a                                       ; $41d6: $02
	ei                                               ; $41d7: $fb
	adc d                                            ; $41d8: $8a

jr_071_41d9:
	cp [hl]                                          ; $41d9: $be

jr_071_41da:
	inc de                                           ; $41da: $13
	ld d, l                                          ; $41db: $55
	dec sp                                           ; $41dc: $3b
	dec a                                            ; $41dd: $3d

jr_071_41de:
	ld l, e                                          ; $41de: $6b
	db $eb                                           ; $41df: $eb
	ld l, l                                          ; $41e0: $6d
	ld l, a                                          ; $41e1: $6f
	push bc                                          ; $41e2: $c5
	call nz, $e287                                   ; $41e3: $c4 $87 $e2
	inc bc                                           ; $41e6: $03
	ei                                               ; $41e7: $fb
	add hl, sp                                       ; $41e8: $39
	pop af                                           ; $41e9: $f1
	ld hl, sp-$44                                    ; $41ea: $f8 $bc
	ret nz                                           ; $41ec: $c0

	ld a, h                                          ; $41ed: $7c
	cp a                                             ; $41ee: $bf
	ld a, $b6                                        ; $41ef: $3e $b6
	add b                                            ; $41f1: $80
	ld a, b                                          ; $41f2: $78
	ld [$e6ec], a                                    ; $41f3: $ea $ec $e6
	db $e4                                           ; $41f6: $e4
	ld e, h                                          ; $41f7: $5c
	ld a, h                                          ; $41f8: $7c
	ld e, h                                          ; $41f9: $5c
	ld e, h                                          ; $41fa: $5c
	ld d, h                                          ; $41fb: $54
	ld d, h                                          ; $41fc: $54
	jr z, @+$2e                                      ; $41fd: $28 $2c

	ld a, l                                          ; $41ff: $7d
	jr @-$7b                                         ; $4200: $18 $83

	inc bc                                           ; $4202: $03
	add e                                            ; $4203: $83
	ld [bc], a                                       ; $4204: $02
	add c                                            ; $4205: $81
	add b                                            ; $4206: $80
	ret nz                                           ; $4207: $c0

	add b                                            ; $4208: $80
	rst $38                                          ; $4209: $ff
	ret nz                                           ; $420a: $c0

	ld e, a                                          ; $420b: $5f
	ld h, b                                          ; $420c: $60
	cpl                                              ; $420d: $2f
	jr nc, jr_071_4227                               ; $420e: $30 $17

	jr jr_071_4196                                   ; $4210: $18 $84

	dec bc                                           ; $4212: $0b
	inc c                                            ; $4213: $0c
	rlca                                             ; $4214: $07
	ld b, $03                                        ; $4215: $06 $03
	inc bc                                           ; $4217: $03
	rrca                                             ; $4218: $0f
	rrca                                             ; $4219: $0f
	ld d, h                                          ; $421a: $54
	inc hl                                           ; $421b: $23
	ld b, h                                          ; $421c: $44
	or e                                             ; $421d: $b3
	db $d3                                           ; $421e: $d3
	cp c                                             ; $421f: $b9
	sbc d                                            ; $4220: $9a
	db $fd                                           ; $4221: $fd
	call c, $ee77                                    ; $4222: $dc $77 $ee
	cp e                                             ; $4225: $bb
	cp a                                             ; $4226: $bf

jr_071_4227:
	sbc c                                            ; $4227: $99
	ld e, a                                          ; $4228: $5f
	call $e1e6                                       ; $4229: $cd $e6 $e1
	ld h, e                                          ; $422c: $63
	cp [hl]                                          ; $422d: $be
	rlca                                             ; $422e: $07
	rrca                                             ; $422f: $0f
	ld c, $99                                        ; $4230: $0e $99
	ld bc, $030d                                     ; $4232: $01 $0d $03
	rrca                                             ; $4235: $0f
	inc bc                                           ; $4236: $03
	dec b                                            ; $4237: $05
	call c, $9c01                                    ; $4238: $dc $01 $9c
	add b                                            ; $423b: $80
	ld bc, $b6c0                                     ; $423c: $01 $c0 $b6
	pop bc                                           ; $423f: $c1
	add b                                            ; $4240: $80
	nop                                              ; $4241: $00
	nop                                              ; $4242: $00
	nop                                              ; $4243: $00
	nop                                              ; $4244: $00
	nop                                              ; $4245: $00
	nop                                              ; $4246: $00
	ld bc, $8f03                                     ; $4247: $01 $03 $8f
	add b                                            ; $424a: $80
	inc bc                                           ; $424b: $03
	rst $38                                          ; $424c: $ff
	call z, $1965                                    ; $424d: $cc $65 $19
	or b                                             ; $4250: $b0
	dec c                                            ; $4251: $0d
	ld [hl], $8d                                     ; $4252: $36 $8d
	sbc h                                            ; $4254: $9c
	rst JumpTable                                          ; $4255: $c7
	ld e, d                                          ; $4256: $5a
	rst SubAFromBC                                          ; $4257: $e7
	ld a, [hl+]                                      ; $4258: $2a
	rst FarCall                                          ; $4259: $f7
	sub c                                            ; $425a: $91
	rst $38                                          ; $425b: $ff
	jp hl                                            ; $425c: $e9


jr_071_425d:
	rst $38                                          ; $425d: $ff
	ld a, h                                          ; $425e: $7c
	rst $38                                          ; $425f: $ff
	rst AddAOntoHL                                          ; $4260: $ef
	dec de                                           ; $4261: $1b
	rst $38                                          ; $4262: $ff
	ld bc, $00ff                                     ; $4263: $01 $ff $00
	rst AddAOntoHL                                          ; $4266: $ef
	ldh a, [$9b]                                     ; $4267: $f0 $9b
	sbc h                                            ; $4269: $9c
	sub d                                            ; $426a: $92
	ld c, a                                          ; $426b: $4f
	adc $77                                          ; $426c: $ce $77
	db $fc                                           ; $426e: $fc
	ld [hl], a                                       ; $426f: $77
	ld [hl], h                                       ; $4270: $74
	ld d, e                                          ; $4271: $53
	ld d, b                                          ; $4272: $50
	and a                                            ; $4273: $a7
	or b                                             ; $4274: $b0
	rst AddAOntoHL                                          ; $4275: $ef
	ldh [rIE], a                                     ; $4276: $e0 $ff
	cp l                                             ; $4278: $bd
	rra                                              ; $4279: $1f
	ccf                                              ; $427a: $3f
	ccf                                              ; $427b: $3f
	ld a, a                                          ; $427c: $7f
	sub e                                            ; $427d: $93
	ld bc, $037f                                     ; $427e: $01 $7f $03
	rst $38                                          ; $4281: $ff
	ld b, $ff                                        ; $4282: $06 $ff
	inc c                                            ; $4284: $0c
	db $fc                                           ; $4285: $fc

jr_071_4286:
	jr nc, @-$06                                     ; $4286: $30 $f8

	ret nz                                           ; $4288: $c0

	ldh [$bf], a                                     ; $4289: $e0 $bf
	ret nz                                           ; $428b: $c0

	dec sp                                           ; $428c: $3b
	rla                                              ; $428d: $17
	nop                                              ; $428e: $00
	sbc h                                            ; $428f: $9c
	sub $b7                                          ; $4290: $d6 $b7

jr_071_4292:
	xor [hl]                                         ; $4292: $ae
	daa                                              ; $4293: $27
	jr nz, @-$60                                     ; $4294: $20 $9e

	ld a, [hl]                                       ; $4296: $7e
	ld a, e                                          ; $4297: $7b
	ld e, $99                                        ; $4298: $1e $99
	ld h, d                                          ; $429a: $62
	db $e4                                           ; $429b: $e4
	db $fc                                           ; $429c: $fc
	db $fc                                           ; $429d: $fc
	ld e, h                                          ; $429e: $5c
	ld a, h                                          ; $429f: $7c
	inc bc                                           ; $42a0: $03
	jr nz, @+$35                                     ; $42a1: $20 $33

	jr nz, jr_071_4314                               ; $42a3: $20 $6f

	ld e, $9d                                        ; $42a5: $1e $9d
	rlca                                             ; $42a7: $07
	inc bc                                           ; $42a8: $03
	inc bc                                           ; $42a9: $03
	jr nz, jr_071_42d7                               ; $42aa: $20 $2b

	jr nz, @+$81                                     ; $42ac: $20 $7f

	cp $97                                           ; $42ae: $fe $97
	rst FarCall                                          ; $42b0: $f7
	ld hl, sp-$31                                    ; $42b1: $f8 $cf
	call z, $fef7                                    ; $42b3: $cc $f7 $fe
	ld [hl], a                                       ; $42b6: $77
	db $f4                                           ; $42b7: $f4
	inc bc                                           ; $42b8: $03
	jr nz, @+$05                                     ; $42b9: $20 $03

	jr nz, @+$49                                     ; $42bb: $20 $47

	jr nz, jr_071_425d                               ; $42bd: $20 $9e

	db $fc                                           ; $42bf: $fc
	cp h                                             ; $42c0: $bc
	ld a, [hl]                                       ; $42c1: $7e
	ld a, $3e                                        ; $42c2: $3e $3e
	ld a, [hl]                                       ; $42c4: $7e
	inc a                                            ; $42c5: $3c
	sbc h                                            ; $42c6: $9c
	ld a, b                                          ; $42c7: $78
	call c, $03fc                                    ; $42c8: $dc $fc $03
	jr nz, jr_071_42f8                               ; $42cb: $20 $2b

	jr nz, jr_071_4346                               ; $42cd: $20 $77

	cp $9e                                           ; $42cf: $fe $9e
	dec b                                            ; $42d1: $05
	sbc $03                                          ; $42d2: $de $03
	inc bc                                           ; $42d4: $03
	jr nz, @+$2d                                     ; $42d5: $20 $2b

jr_071_42d7:
	jr nz, jr_071_4348                               ; $42d7: $20 $6f

	inc e                                            ; $42d9: $1c
	sbc e                                            ; $42da: $9b
	ld a, a                                          ; $42db: $7f
	cp $57                                           ; $42dc: $fe $57
	ld d, h                                          ; $42de: $54
	inc bc                                           ; $42df: $03
	jr nz, jr_071_4335                               ; $42e0: $20 $53

	jr nz, @-$63                                     ; $42e2: $20 $9b

	inc l                                            ; $42e4: $2c
	dec sp                                           ; $42e5: $3b
	ld l, l                                          ; $42e6: $6d
	ld e, e                                          ; $42e7: $5b
	inc hl                                           ; $42e8: $23
	jr nz, jr_071_4286                               ; $42e9: $20 $9b

	ld bc, $38f9                                     ; $42eb: $01 $f9 $38
	db $f4                                           ; $42ee: $f4
	ld a, e                                          ; $42ef: $7b
	ld e, $6f                                        ; $42f0: $1e $6f
	jr nz, jr_071_4292                               ; $42f2: $20 $9e

	ld e, $bd                                        ; $42f4: $1e $bd
	inc e                                            ; $42f6: $1c
	inc a                                            ; $42f7: $3c

jr_071_42f8:
	ld a, h                                          ; $42f8: $7c
	ld h, h                                          ; $42f9: $64
	sbc h                                            ; $42fa: $9c

jr_071_42fb:
	ld l, h                                          ; $42fb: $6c
	ld a, l                                          ; $42fc: $7d
	jr c, @+$05                                      ; $42fd: $38 $03

	jr nz, jr_071_4334                               ; $42ff: $20 $33

	jr nz, jr_071_4382                               ; $4301: $20 $7f

	or $7f                                           ; $4303: $f6 $7f
	jr c, jr_071_4386                                ; $4305: $38 $7f

	cp $9b                                           ; $4307: $fe $9b
	add d                                            ; $4309: $82
	inc bc                                           ; $430a: $03
	pop bc                                           ; $430b: $c1
	ld bc, $2003                                     ; $430c: $01 $03 $20
	inc sp                                           ; $430f: $33
	jr nz, jr_071_4381                               ; $4310: $20 $6f

	cp $9b                                           ; $4312: $fe $9b

jr_071_4314:
	xor a                                            ; $4314: $af
	ld e, $ff                                        ; $4315: $1e $ff
	ld hl, sp+$27                                    ; $4317: $f8 $27
	jr nz, jr_071_42fb                               ; $4319: $20 $e0

	pop de                                           ; $431b: $d1
	sbc h                                            ; $431c: $9c
	ldh a, [$60]                                     ; $431d: $f0 $60
	ret nz                                           ; $431f: $c0

	ld c, a                                          ; $4320: $4f
	ld [hl], a                                       ; $4321: $77
	ldh [$d2], a                                     ; $4322: $e0 $d2
	sbc e                                            ; $4324: $9b
	ld hl, sp+$70                                    ; $4325: $f8 $70
	ldh a, [$e0]                                     ; $4327: $f0 $e0
	ldh [$c5], a                                     ; $4329: $e0 $c5
	sbc l                                            ; $432b: $9d
	ldh a, [rSVBK]                                   ; $432c: $f0 $70
	sbc $f8                                          ; $432e: $de $f8
	rst SubAFromDE                                          ; $4330: $df
	ld [hl], b                                       ; $4331: $70
	ldh [$c8], a                                     ; $4332: $e0 $c8

jr_071_4334:
	ld [hl], e                                       ; $4334: $73

jr_071_4335:
	ret nz                                           ; $4335: $c0

	sbc l                                            ; $4336: $9d
	ld a, b                                          ; $4337: $78
	jr nc, jr_071_439d                               ; $4338: $30 $63

	cp a                                             ; $433a: $bf
	cp [hl]                                          ; $433b: $be
	ld bc, $3b80                                     ; $433c: $01 $80 $3b
	dec l                                            ; $433f: $2d
	dec a                                            ; $4340: $3d
	dec hl                                           ; $4341: $2b
	ld l, [hl]                                       ; $4342: $6e
	ld e, e                                          ; $4343: $5b
	ld a, d                                          ; $4344: $7a
	ld d, a                                          ; $4345: $57

jr_071_4346:
	sbc h                                            ; $4346: $9c
	rst FarCall                                          ; $4347: $f7

jr_071_4348:
	db $f4                                           ; $4348: $f4
	rst AddAOntoHL                                          ; $4349: $ef
	ld l, c                                          ; $434a: $69
	ld a, a                                          ; $434b: $7f
	ld d, d                                          ; $434c: $52
	ld a, a                                          ; $434d: $7f
	db $fc                                           ; $434e: $fc
	rst $38                                          ; $434f: $ff
	inc l                                            ; $4350: $2c
	dec sp                                           ; $4351: $3b
	ld l, l                                          ; $4352: $6d
	ld e, d                                          ; $4353: $5a
	ld l, a                                          ; $4354: $6f
	ld e, h                                          ; $4355: $5c
	rst SubAFromHL                                          ; $4356: $d7
	cp h                                             ; $4357: $bc
	cp a                                             ; $4358: $bf
	db $f4                                           ; $4359: $f4
	db $dd                                           ; $435a: $dd
	rst SubAFromHL                                          ; $435b: $d7
	or a                                             ; $435c: $b7
	adc b                                            ; $435d: $88
	xor [hl]                                         ; $435e: $ae
	xor e                                            ; $435f: $ab
	cp [hl]                                          ; $4360: $be
	ld l, [hl]                                       ; $4361: $6e
	ld e, e                                          ; $4362: $5b
	ld e, a                                          ; $4363: $5f
	ld a, e                                          ; $4364: $7b
	xor e                                            ; $4365: $ab
	rst AddAOntoHL                                          ; $4366: $ef
	rst SubAFromHL                                          ; $4367: $d7
	rst SubAFromDE                                          ; $4368: $df
	sub a                                            ; $4369: $97
	sbc a                                            ; $436a: $9f
	sbc d                                            ; $436b: $9a
	sbc e                                            ; $436c: $9b
	dec de                                           ; $436d: $1b
	ld a, [de]                                       ; $436e: $1a
	inc de                                           ; $436f: $13
	ld [de], a                                       ; $4370: $12
	inc de                                           ; $4371: $13
	inc de                                           ; $4372: $13
	inc bc                                           ; $4373: $03
	inc bc                                           ; $4374: $03
	db $dd                                           ; $4375: $dd
	ld [bc], a                                       ; $4376: $02
	ei                                               ; $4377: $fb
	add b                                            ; $4378: $80
	cp [hl]                                          ; $4379: $be
	inc de                                           ; $437a: $13
	ld d, l                                          ; $437b: $55
	dec sp                                           ; $437c: $3b
	dec a                                            ; $437d: $3d
	ld l, e                                          ; $437e: $6b
	db $eb                                           ; $437f: $eb
	ld l, l                                          ; $4380: $6d

jr_071_4381:
	ld l, a                                          ; $4381: $6f

jr_071_4382:
	push bc                                          ; $4382: $c5
	call nz, $e287                                   ; $4383: $c4 $87 $e2

jr_071_4386:
	inc bc                                           ; $4386: $03
	ei                                               ; $4387: $fb
	ld bc, $f0e9                                     ; $4388: $01 $e9 $f0
	cp h                                             ; $438b: $bc
	ld a, b                                          ; $438c: $78
	ld a, h                                          ; $438d: $7c
	inc e                                            ; $438e: $1c
	ld a, $00                                        ; $438f: $3e $00
	or [hl]                                          ; $4391: $b6
	ld a, b                                          ; $4392: $78
	ld [$e6ec], a                                    ; $4393: $ea $ec $e6
	db $e4                                           ; $4396: $e4
	ld e, h                                          ; $4397: $5c
	add b                                            ; $4398: $80
	ld a, h                                          ; $4399: $7c
	ld e, h                                          ; $439a: $5c
	ld a, h                                          ; $439b: $7c
	ld d, h                                          ; $439c: $54

jr_071_439d:
	ld d, h                                          ; $439d: $54
	jr z, @+$2e                                      ; $439e: $28 $2c

	ld a, l                                          ; $43a0: $7d
	jr @-$7b                                         ; $43a1: $18 $83

	inc bc                                           ; $43a3: $03
	add e                                            ; $43a4: $83
	ld [bc], a                                       ; $43a5: $02
	add c                                            ; $43a6: $81
	add b                                            ; $43a7: $80
	ret nz                                           ; $43a8: $c0

	add b                                            ; $43a9: $80
	rst $38                                          ; $43aa: $ff
	ret nz                                           ; $43ab: $c0

	ld e, a                                          ; $43ac: $5f
	ld h, b                                          ; $43ad: $60
	cpl                                              ; $43ae: $2f
	jr nc, jr_071_43c8                               ; $43af: $30 $17

	jr jr_071_43be                                   ; $43b1: $18 $0b

	inc c                                            ; $43b3: $0c
	rlca                                             ; $43b4: $07
	ld b, $03                                        ; $43b5: $06 $03
	inc bc                                           ; $43b7: $03
	rst SubAFromDE                                          ; $43b8: $df
	rrca                                             ; $43b9: $0f
	add b                                            ; $43ba: $80
	ld d, h                                          ; $43bb: $54
	inc hl                                           ; $43bc: $23
	ld b, h                                          ; $43bd: $44

jr_071_43be:
	or e                                             ; $43be: $b3
	db $d3                                           ; $43bf: $d3
	cp c                                             ; $43c0: $b9
	sbc d                                            ; $43c1: $9a
	db $fd                                           ; $43c2: $fd
	call c, $ee77                                    ; $43c3: $dc $77 $ee
	cp e                                             ; $43c6: $bb
	cp a                                             ; $43c7: $bf

jr_071_43c8:
	sbc c                                            ; $43c8: $99
	ld e, a                                          ; $43c9: $5f
	call z, $e0e7                                    ; $43ca: $cc $e7 $e0
	ld h, d                                          ; $43cd: $62
	ld bc, $0307                                     ; $43ce: $01 $07 $03
	rrca                                             ; $43d1: $0f
	rlca                                             ; $43d2: $07
	ld c, $01                                        ; $43d3: $0e $01
	dec c                                            ; $43d5: $0d

jr_071_43d6:
	inc bc                                           ; $43d6: $03
	rrca                                             ; $43d7: $0f
	inc bc                                           ; $43d8: $03
	dec b                                            ; $43d9: $05
	call c, $9801                                    ; $43da: $dc $01 $98
	add b                                            ; $43dd: $80
	ld bc, $00c0                                     ; $43de: $01 $c0 $00
	pop bc                                           ; $43e1: $c1

jr_071_43e2:
	nop                                              ; $43e2: $00
	add b                                            ; $43e3: $80
	db $f4                                           ; $43e4: $f4
	add b                                            ; $43e5: $80
	ld bc, $0300                                     ; $43e6: $01 $00 $03
	nop                                              ; $43e9: $00
	adc a                                            ; $43ea: $8f
	inc bc                                           ; $43eb: $03
	rst $38                                          ; $43ec: $ff
	call z, $1965                                    ; $43ed: $cc $65 $19
	or b                                             ; $43f0: $b0
	dec c                                            ; $43f1: $0d
	ld [hl], $8d                                     ; $43f2: $36 $8d
	sbc h                                            ; $43f4: $9c
	rst JumpTable                                          ; $43f5: $c7
	ld e, d                                          ; $43f6: $5a
	rst SubAFromBC                                          ; $43f7: $e7
	ld a, [hl+]                                      ; $43f8: $2a
	rst FarCall                                          ; $43f9: $f7

jr_071_43fa:
	sub c                                            ; $43fa: $91
	rst $38                                          ; $43fb: $ff

jr_071_43fc:
	jp hl                                            ; $43fc: $e9


Jump_071_43fd:
	ld a, a                                          ; $43fd: $7f
	db $fc                                           ; $43fe: $fc
	rra                                              ; $43ff: $1f
	rst $38                                          ; $4400: $ff
	db $e3                                           ; $4401: $e3
	cp a                                             ; $4402: $bf
	pop bc                                           ; $4403: $c1
	rst $38                                          ; $4404: $ff
	adc c                                            ; $4405: $89
	nop                                              ; $4406: $00
	rst AddAOntoHL                                          ; $4407: $ef
	ldh a, [$9b]                                     ; $4408: $f0 $9b
	sbc h                                            ; $440a: $9c
	rst GetHLinHL                                          ; $440b: $cf
	adc $77                                          ; $440c: $ce $77
	db $fc                                           ; $440e: $fc
	ld [hl], a                                       ; $440f: $77
	db $f4                                           ; $4410: $f4
	ld d, e                                          ; $4411: $53
	ld d, b                                          ; $4412: $50
	and a                                            ; $4413: $a7
	or b                                             ; $4414: $b0
	rst AddAOntoHL                                          ; $4415: $ef
	ldh [rIE], a                                     ; $4416: $e0 $ff
	nop                                              ; $4418: $00
	rra                                              ; $4419: $1f
	nop                                              ; $441a: $00
	ccf                                              ; $441b: $3f
	ld a, e                                          ; $441c: $7b
	cp $8f                                           ; $441d: $fe $8f
	ld a, a                                          ; $441f: $7f
	ld bc, $037f                                     ; $4420: $01 $7f $03
	rst $38                                          ; $4423: $ff
	ld b, $ff                                        ; $4424: $06 $ff
	inc c                                            ; $4426: $0c
	db $fc                                           ; $4427: $fc

jr_071_4428:
	jr nc, @-$06                                     ; $4428: $30 $f8

	ret nz                                           ; $442a: $c0

	ldh [rP1], a                                     ; $442b: $e0 $00
	ret nz                                           ; $442d: $c0

	nop                                              ; $442e: $00
	inc de                                           ; $442f: $13
	nop                                              ; $4430: $00
	sbc h                                            ; $4431: $9c
	sub $b7                                          ; $4432: $d6 $b7
	xor [hl]                                         ; $4434: $ae
	daa                                              ; $4435: $27
	jr nz, jr_071_43d6                               ; $4436: $20 $9e

	ld a, [hl]                                       ; $4438: $7e
	ld a, e                                          ; $4439: $7b
	ld e, $9b                                        ; $443a: $1e $9b
	ld h, d                                          ; $443c: $62
	db $e4                                           ; $443d: $e4
	db $fc                                           ; $443e: $fc
	db $fc                                           ; $443f: $fc
	inc bc                                           ; $4440: $03
	jr nz, jr_071_446e                               ; $4441: $20 $2b

jr_071_4443:
	jr nz, jr_071_43e2                               ; $4443: $20 $9d

	rrca                                             ; $4445: $0f
	nop                                              ; $4446: $00
	ld [hl], a                                       ; $4447: $77
	ld e, $7f                                        ; $4448: $1e $7f
	or $03                                           ; $444a: $f6 $03
	jr nz, @+$2d                                     ; $444c: $20 $2b

	jr nz, @+$81                                     ; $444e: $20 $7f

	cp $99                                           ; $4450: $fe $99
	rst FarCall                                          ; $4452: $f7
	ld hl, sp-$31                                    ; $4453: $f8 $cf
	call z, $fef7                                    ; $4455: $cc $f7 $fe
	inc bc                                           ; $4458: $03

jr_071_4459:
	jr nz, jr_071_4496                               ; $4459: $20 $3b

	jr nz, jr_071_43fa                               ; $445b: $20 $9d

	ld l, h                                          ; $445d: $6c
	ld e, e                                          ; $445e: $5b
	rrca                                             ; $445f: $0f
	jr nz, jr_071_43fc                               ; $4460: $20 $9a

	db $fc                                           ; $4462: $fc
	inc e                                            ; $4463: $1c
	ld a, [hl]                                       ; $4464: $7e
	nop                                              ; $4465: $00
	ld a, $7b                                        ; $4466: $3e $7b
	cp $7f                                           ; $4468: $fe $7f
	ld a, [$3c9b]                                    ; $446a: $fa $9b $3c
	ld a, b                                          ; $446d: $78

jr_071_446e:
	call c, $03fc                                    ; $446e: $dc $fc $03
	jr nz, jr_071_449e                               ; $4471: $20 $2b

	jr nz, jr_071_44ec                               ; $4473: $20 $77

	cp $9e                                           ; $4475: $fe $9e
	dec b                                            ; $4477: $05
	sbc $03                                          ; $4478: $de $03
	inc bc                                           ; $447a: $03
	jr nz, @+$2d                                     ; $447b: $20 $2b

	jr nz, jr_071_44ee                               ; $447d: $20 $6f

	inc e                                            ; $447f: $1c
	sbc e                                            ; $4480: $9b
	ld a, a                                          ; $4481: $7f
	cp $57                                           ; $4482: $fe $57
	ld d, h                                          ; $4484: $54
	inc bc                                           ; $4485: $03
	jr nz, @+$05                                     ; $4486: $20 $03

	jr nz, jr_071_44e9                               ; $4488: $20 $5f

	jr nz, jr_071_4428                               ; $448a: $20 $9c

	add hl, sp                                       ; $448c: $39
	ret nz                                           ; $448d: $c0

	db $ec                                           ; $448e: $ec
	ld a, e                                          ; $448f: $7b
	ld e, $9e                                        ; $4490: $1e $9e
	ld a, [hl]                                       ; $4492: $7e
	ld a, d                                          ; $4493: $7a
	ld a, $7f                                        ; $4494: $3e $7f

jr_071_4496:
	cp $93                                           ; $4496: $fe $93
	ld e, $00                                        ; $4498: $1e $00
	inc e                                            ; $449a: $1c
	nop                                              ; $449b: $00
	inc a                                            ; $449c: $3c
	nop                                              ; $449d: $00

jr_071_449e:
	ld a, h                                          ; $449e: $7c
	nop                                              ; $449f: $00
	ld h, h                                          ; $44a0: $64
	ld l, h                                          ; $44a1: $6c
	ld a, l                                          ; $44a2: $7d
	jr c, @+$05                                      ; $44a3: $38 $03

	jr nz, @+$65                                     ; $44a5: $20 $63

	jr nz, jr_071_4443                               ; $44a7: $20 $9a

	ld h, e                                          ; $44a9: $63
	nop                                              ; $44aa: $00
	ld b, $01                                        ; $44ab: $06 $01
	rrca                                             ; $44ad: $0f
	ld l, e                                          ; $44ae: $6b
	ld e, $9e                                        ; $44af: $1e $9e
	rlca                                             ; $44b1: $07
	ld a, e                                          ; $44b2: $7b
	jr c, jr_071_4534                                ; $44b3: $38 $7f

	cp $9b                                           ; $44b5: $fe $9b
	add d                                            ; $44b7: $82
	inc bc                                           ; $44b8: $03
	pop bc                                           ; $44b9: $c1
	ld bc, $2003                                     ; $44ba: $01 $03 $20
	ld h, e                                          ; $44bd: $63
	jr nz, jr_071_4459                               ; $44be: $20 $99

	adc a                                            ; $44c0: $8f
	ld [hl], e                                       ; $44c1: $73
	rst $38                                          ; $44c2: $ff

jr_071_44c3:
	pop hl                                           ; $44c3: $e1
	cp a                                             ; $44c4: $bf
	ret nz                                           ; $44c5: $c0

	ld h, a                                          ; $44c6: $67
	ld e, $77                                        ; $44c7: $1e $77
	cp $9b                                           ; $44c9: $fe $9b
	xor a                                            ; $44cb: $af
	ld e, $ff                                        ; $44cc: $1e $ff
	ld hl, sp+$27                                    ; $44ce: $f8 $27
	jr nz, jr_071_44c3                               ; $44d0: $20 $f1

	ld a, e                                          ; $44d2: $7b
	sub b                                            ; $44d3: $90
	ld a, a                                          ; $44d4: $7f
	db $fd                                           ; $44d5: $fd
	and $9b                                          ; $44d6: $e6 $9b
	ldh [$c0], a                                     ; $44d8: $e0 $c0
	ldh [rAUD4LEN], a                                ; $44da: $e0 $20
	push hl                                          ; $44dc: $e5
	inc bc                                           ; $44dd: $03
	ret nz                                           ; $44de: $c0

	ld a, a                                          ; $44df: $7f
	ret nz                                           ; $44e0: $c0

	rst SubAFromDE                                          ; $44e1: $df
	ldh [$3f], a                                     ; $44e2: $e0 $3f
	adc c                                            ; $44e4: $89
	inc bc                                           ; $44e5: $03
	ret nz                                           ; $44e6: $c0

	ld d, e                                          ; $44e7: $53
	ret nz                                           ; $44e8: $c0

jr_071_44e9:
	rst SubAFromDE                                          ; $44e9: $df
	ldh [$9e], a                                     ; $44ea: $e0 $9e

jr_071_44ec:
	ld b, b                                          ; $44ec: $40
	rla                                              ; $44ed: $17

jr_071_44ee:
	ret nz                                           ; $44ee: $c0

	rla                                              ; $44ef: $17
	cp a                                             ; $44f0: $bf
	rst SubAFromDE                                          ; $44f1: $df
	ldh [$db], a                                     ; $44f2: $e0 $db
	ldh a, [$9d]                                     ; $44f4: $f0 $9d
	ld [hl], b                                       ; $44f6: $70
	ld h, b                                          ; $44f7: $60
	ei                                               ; $44f8: $fb
	rst AddAOntoHL                                          ; $44f9: $ef
	ld [bc], a                                       ; $44fa: $02
	pop af                                           ; $44fb: $f1
	rst SubAFromDE                                          ; $44fc: $df
	rrca                                             ; $44fd: $0f
	rst SubAFromDE                                          ; $44fe: $df
	inc bc                                           ; $44ff: $03
	rst SubAFromBC                                          ; $4500: $e7
	rlc c                                            ; $4501: $cb $01
	rst SubAFromDE                                          ; $4503: $df
	inc bc                                           ; $4504: $03
	adc e                                            ; $4505: $8b
	ld [bc], a                                       ; $4506: $02
	inc bc                                           ; $4507: $03
	dec b                                            ; $4508: $05
	ld b, $0f                                        ; $4509: $06 $0f
	dec c                                            ; $450b: $0d
	dec a                                            ; $450c: $3d
	dec sp                                           ; $450d: $3b
	ei                                               ; $450e: $fb
	and $e3                                          ; $450f: $e6 $e3
	sbc [hl]                                         ; $4511: $9e
	rlca                                             ; $4512: $07
	db $fc                                           ; $4513: $fc
	cp $fd                                           ; $4514: $fe $fd
	ld c, $0d                                        ; $4516: $0e $0d
	inc c                                            ; $4518: $0c
	dec bc                                           ; $4519: $0b
	ld [hl], a                                       ; $451a: $77
	cp $9c                                           ; $451b: $fe $9c
	ld [$090f], sp                                   ; $451d: $08 $0f $09
	ld a, e                                          ; $4520: $7b
	cp $9b                                           ; $4521: $fe $9b
	dec b                                            ; $4523: $05
	rlca                                             ; $4524: $07
	dec b                                            ; $4525: $05
	rlca                                             ; $4526: $07
	db $dd                                           ; $4527: $dd
	inc bc                                           ; $4528: $03
	db $dd                                           ; $4529: $dd
	ld bc, $b03f                                     ; $452a: $01 $3f $b0
	db $dd                                           ; $452d: $dd
	inc bc                                           ; $452e: $03
	sbc h                                            ; $452f: $9c
	ld b, $07                                        ; $4530: $06 $07
	ld b, $7b                                        ; $4532: $06 $7b

jr_071_4534:
	call c, $0d8b                                    ; $4534: $dc $8b $0d
	rrca                                             ; $4537: $0f
	dec bc                                           ; $4538: $0b
	rrca                                             ; $4539: $0f
	dec de                                           ; $453a: $1b
	rra                                              ; $453b: $1f
	rla                                              ; $453c: $17
	rra                                              ; $453d: $1f
	ld [hl], $3f                                     ; $453e: $36 $3f
	ld h, $3f                                        ; $4540: $26 $3f
	ld l, [hl]                                       ; $4542: $6e
	ld a, a                                          ; $4543: $7f
	ld c, l                                          ; $4544: $4d
	ld a, a                                          ; $4545: $7f
	db $dd                                           ; $4546: $dd
	rst $38                                          ; $4547: $ff
	sbc l                                            ; $4548: $9d
	rst $38                                          ; $4549: $ff
	rla                                              ; $454a: $17
	ld [hl], h                                       ; $454b: $74
	rst SubAFromDE                                          ; $454c: $df
	inc bc                                           ; $454d: $03
	ld a, a                                          ; $454e: $7f
	ret                                              ; $454f: $c9


	add b                                            ; $4550: $80
	rrca                                             ; $4551: $0f
	ld c, $32                                        ; $4552: $0e $32
	ccf                                              ; $4554: $3f
	ld l, c                                          ; $4555: $69
	ld [hl], a                                       ; $4556: $77
	ld d, c                                          ; $4557: $51
	ld l, a                                          ; $4558: $6f
	and a                                            ; $4559: $a7
	rst SubAFromDE                                          ; $455a: $df
	ret c                                            ; $455b: $d8

	cp a                                             ; $455c: $bf
	or $b9                                           ; $455d: $f6 $b9
	inc l                                            ; $455f: $2c
	di                                               ; $4560: $f3
	db $e3                                           ; $4561: $e3
	ld [hl], a                                       ; $4562: $77
	add $67                                          ; $4563: $c6 $67
	push bc                                          ; $4565: $c5
	ld l, [hl]                                       ; $4566: $6e
	add l                                            ; $4567: $85
	call $db89                                       ; $4568: $cd $89 $db
	adc d                                            ; $456b: $8a
	db $db                                           ; $456c: $db
	adc d                                            ; $456d: $8a
	ld e, d                                          ; $456e: $5a
	adc d                                            ; $456f: $8a
	rst SubAFromDE                                          ; $4570: $df
	ld a, d                                          ; $4571: $7a
	add e                                            ; $4572: $83
	adc d                                            ; $4573: $8a
	ld a, [hl]                                       ; $4574: $7e
	adc d                                            ; $4575: $8a
	ld a, $ca                                        ; $4576: $3e $ca
	cp [hl]                                          ; $4578: $be
	jp z, $ea9e                                      ; $4579: $ca $9e $ea

	rst GetHLinHL                                          ; $457c: $cf
	ld a, d                                          ; $457d: $7a
	bit 7, [hl]                                      ; $457e: $cb $7e
	ld [$fa3f], a                                    ; $4580: $ea $3f $fa
	ccf                                              ; $4583: $3f
	sub h                                            ; $4584: $94
	ld a, a                                          ; $4585: $7f
	cp l                                             ; $4586: $bd
	ld a, a                                          ; $4587: $7f
	ld c, d                                          ; $4588: $4a
	rst $38                                          ; $4589: $ff
	ld e, a                                          ; $458a: $5f
	rst SubAFromDE                                          ; $458b: $df
	ld e, c                                          ; $458c: $59
	call z, $7bd9                                    ; $458d: $cc $d9 $7b
	cp $8f                                           ; $4590: $fe $8f
	ld a, a                                          ; $4592: $7f
	ld c, h                                          ; $4593: $4c
	ld a, a                                          ; $4594: $7f
	ld c, h                                          ; $4595: $4c
	ld e, e                                          ; $4596: $5b
	ld l, d                                          ; $4597: $6a
	ld a, [hl-]                                      ; $4598: $3a
	dec hl                                           ; $4599: $2b
	add hl, hl                                       ; $459a: $29
	add hl, sp                                       ; $459b: $39
	inc d                                            ; $459c: $14
	inc e                                            ; $459d: $1c
	inc d                                            ; $459e: $14
	inc e                                            ; $459f: $1c
	inc c                                            ; $45a0: $0c
	inc c                                            ; $45a1: $0c
	reti                                             ; $45a2: $d9


	rlca                                             ; $45a3: $07
	rst SubAFromDE                                          ; $45a4: $df
	rrca                                             ; $45a5: $0f
	sub d                                            ; $45a6: $92
	ld a, $3f                                        ; $45a7: $3e $3f
	xor $ff                                          ; $45a9: $ee $ff
	sbc a                                            ; $45ab: $9f
	rst $38                                          ; $45ac: $ff
	cp [hl]                                          ; $45ad: $be
	rst $38                                          ; $45ae: $ff
	call z, $f8ff                                    ; $45af: $cc $ff $f8
	rst $38                                          ; $45b2: $ff
	ldh a, [$7b]                                     ; $45b3: $f0 $7b
	cp $9e                                           ; $45b5: $fe $9e
	pop hl                                           ; $45b7: $e1
	ld a, e                                          ; $45b8: $7b
	cp $9d                                           ; $45b9: $fe $9d
	jp Jump_071_77fe                                 ; $45bb: $c3 $fe $77


	cp $9d                                           ; $45be: $fe $9d
	add a                                            ; $45c0: $87
	db $fc                                           ; $45c1: $fc
	ld [hl], a                                       ; $45c2: $77
	cp $99                                           ; $45c3: $fe $99
	rrca                                             ; $45c5: $0f
	db $fc                                           ; $45c6: $fc
	rrca                                             ; $45c7: $0f
	ld hl, sp+$0f                                    ; $45c8: $f8 $0f
	ld hl, sp-$0f                                    ; $45ca: $f8 $f1
	rst SubAFromDE                                          ; $45cc: $df
	rlca                                             ; $45cd: $07
	add b                                            ; $45ce: $80
	dec e                                            ; $45cf: $1d
	ld e, $36                                        ; $45d0: $1e $36
	add hl, sp                                       ; $45d2: $39
	ld e, c                                          ; $45d3: $59
	ld h, a                                          ; $45d4: $67
	or [hl]                                          ; $45d5: $b6
	rst GetHLinHL                                          ; $45d6: $cf
	ld e, e                                          ; $45d7: $5b
	cp h                                             ; $45d8: $bc
	sub l                                            ; $45d9: $95
	ld a, e                                          ; $45da: $7b
	xor e                                            ; $45db: $ab
	ld [hl], a                                       ; $45dc: $77
	cp a                                             ; $45dd: $bf
	ld h, [hl]                                       ; $45de: $66
	ld [hl], $cc                                     ; $45df: $36 $cc
	cp l                                             ; $45e1: $bd
	ret                                              ; $45e2: $c9


	adc e                                            ; $45e3: $8b
	rst $38                                          ; $45e4: $ff
	sub h                                            ; $45e5: $94
	rst $38                                          ; $45e6: $ff
	sbc e                                            ; $45e7: $9b
	db $fc                                           ; $45e8: $fc
	rst SubAFromDE                                          ; $45e9: $df
	rst $38                                          ; $45ea: $ff
	ret nc                                           ; $45eb: $d0

	rst $38                                          ; $45ec: $ff
	rlca                                             ; $45ed: $07
	sub b                                            ; $45ee: $90
	ld hl, sp+$66                                    ; $45ef: $f8 $66
	rst $38                                          ; $45f1: $ff
	push hl                                          ; $45f2: $e5
	db $db                                           ; $45f3: $db
	db $db                                           ; $45f4: $db
	sbc h                                            ; $45f5: $9c
	and h                                            ; $45f6: $a4
	ld l, $6f                                        ; $45f7: $2e $6f
	ld a, [hl+]                                      ; $45f9: $2a
	ld l, [hl]                                       ; $45fa: $6e
	ld l, e                                          ; $45fb: $6b
	ld l, l                                          ; $45fc: $6d
	ld c, c                                          ; $45fd: $49
	ldh [$c1], a                                     ; $45fe: $e0 $c1
	sub a                                            ; $4600: $97
	dec bc                                           ; $4601: $0b
	rst $38                                          ; $4602: $ff
	dec sp                                           ; $4603: $3b
	rst $38                                          ; $4604: $ff
	ld a, l                                          ; $4605: $7d
	rst AddAOntoHL                                          ; $4606: $ef
	db $fd                                           ; $4607: $fd
	add a                                            ; $4608: $87
	ld a, e                                          ; $4609: $7b
	cp $9e                                           ; $460a: $fe $9e
	rlca                                             ; $460c: $07
	ld [hl], a                                       ; $460d: $77
	cp $9d                                           ; $460e: $fe $9d
	cp $03                                           ; $4610: $fe $03
	ld a, e                                          ; $4612: $7b
	cp $9c                                           ; $4613: $fe $9c
	inc de                                           ; $4615: $13
	cp $0b                                           ; $4616: $fe $0b
	ld a, e                                          ; $4618: $7b
	cp $9a                                           ; $4619: $fe $9a
	rrca                                             ; $461b: $0f
	cp $07                                           ; $461c: $fe $07
	cp $07                                           ; $461e: $fe $07
	di                                               ; $4620: $f3
	rst SubAFromDE                                          ; $4621: $df
	rst $38                                          ; $4622: $ff
	sbc b                                            ; $4623: $98
	nop                                              ; $4624: $00
	add e                                            ; $4625: $83
	nop                                              ; $4626: $00
	rra                                              ; $4627: $1f
	ccf                                              ; $4628: $3f
	rst $38                                          ; $4629: $ff
	ret nz                                           ; $462a: $c0

	ld a, d                                          ; $462b: $7a
	xor b                                            ; $462c: $a8
	sbc h                                            ; $462d: $9c
	ld a, h                                          ; $462e: $7c
	ld a, a                                          ; $462f: $7f
	jp $f27b                                         ; $4630: $c3 $7b $f2


	ld a, [hl]                                       ; $4633: $7e
	ld l, a                                          ; $4634: $6f
	add c                                            ; $4635: $81
	ld hl, sp-$02                                    ; $4636: $f8 $fe
	ld [hl], a                                       ; $4638: $77
	adc a                                            ; $4639: $8f
	sbc l                                            ; $463a: $9d
	db $e3                                           ; $463b: $e3
	ld h, c                                          ; $463c: $61
	ld hl, sp-$28                                    ; $463d: $f8 $d8
	inc a                                            ; $463f: $3c
	halt                                             ; $4640: $76
	adc a                                            ; $4641: $8f
	rst JumpTable                                          ; $4642: $c7
	jp Jump_071_71e1                                 ; $4643: $c3 $e1 $71


	ret c                                            ; $4646: $d8

	inc a                                            ; $4647: $3c
	adc h                                            ; $4648: $8c
	adc [hl]                                         ; $4649: $8e
	ldh [c], a                                       ; $464a: $e2
	rst JumpTable                                          ; $464b: $c7
	pop hl                                           ; $464c: $e1
	ld [hl], e                                       ; $464d: $73
	jr nc, jr_071_46c9                               ; $464e: $30 $79

	ld l, e                                          ; $4650: $6b
	inc a                                            ; $4651: $3c
	ld [hl], $9f                                     ; $4652: $36 $9f
	ldh [$c1], a                                     ; $4654: $e0 $c1
	sbc e                                            ; $4656: $9b
	ld sp, hl                                        ; $4657: $f9
	rst JumpTable                                          ; $4658: $c7
	cp $c1                                           ; $4659: $fe $c1
	ld a, e                                          ; $465b: $7b
	sub c                                            ; $465c: $91
	sbc [hl]                                         ; $465d: $9e
	ldh [rOCPD], a                                   ; $465e: $e0 $6b
	cp $76                                           ; $4660: $fe $76
	or a                                             ; $4662: $b7
	ld d, e                                          ; $4663: $53
	cp $f3                                           ; $4664: $fe $f3
	rst SubAFromDE                                          ; $4666: $df
	ldh [$80], a                                     ; $4667: $e0 $80
	sbc h                                            ; $4669: $9c
	ld a, h                                          ; $466a: $7c
	di                                               ; $466b: $f3
	rrca                                             ; $466c: $0f
	db $fc                                           ; $466d: $fc
	rst $38                                          ; $466e: $ff
	add e                                            ; $466f: $83
	ld a, a                                          ; $4670: $7f
	ldh a, [rIF]                                     ; $4671: $f0 $0f
	ccf                                              ; $4673: $3f
	rst $38                                          ; $4674: $ff
	ld a, h                                          ; $4675: $7c
	add e                                            ; $4676: $83
	rst SubAFromDE                                          ; $4677: $df
	ldh [$b3], a                                     ; $4678: $e0 $b3
	ld a, h                                          ; $467a: $7c
	ld l, a                                          ; $467b: $6f
	rra                                              ; $467c: $1f
	rla                                              ; $467d: $17
	adc [hl]                                         ; $467e: $8e
	cp e                                             ; $467f: $bb
	rst JumpTable                                          ; $4680: $c7
	db $ed                                           ; $4681: $ed
	di                                               ; $4682: $f3
	or [hl]                                          ; $4683: $b6
	ld a, c                                          ; $4684: $79
	jr jr_071_46c6                                   ; $4685: $18 $3f

	inc c                                            ; $4687: $0c
	adc a                                            ; $4688: $8f
	sbc a                                            ; $4689: $9f
	add [hl]                                         ; $468a: $86
	rst GetHLinHL                                          ; $468b: $cf
	ld c, e                                          ; $468c: $4b
	rst SubAFromBC                                          ; $468d: $e7
	dec l                                            ; $468e: $2d
	ld [hl], e                                       ; $468f: $73
	call nc, Call_071_483b                           ; $4690: $d4 $3b $48
	cp a                                             ; $4693: $bf
	add a                                            ; $4694: $87
	rst $38                                          ; $4695: $ff
	ld h, c                                          ; $4696: $61
	rst $38                                          ; $4697: $ff
	jr @+$1b                                         ; $4698: $18 $19

	ldh [$e0], a                                     ; $469a: $e0 $e0
	db $db                                           ; $469c: $db
	sub e                                            ; $469d: $93
	inc a                                            ; $469e: $3c
	ldh a, [hDisp1_LCDC]                                     ; $469f: $f0 $8f
	db $fc                                           ; $46a1: $fc
	db $e3                                           ; $46a2: $e3
	ld a, a                                          ; $46a3: $7f
	ld hl, sp+$1f                                    ; $46a4: $f8 $1f
	rst $38                                          ; $46a6: $ff
	rlca                                             ; $46a7: $07
	rst $38                                          ; $46a8: $ff
	nop                                              ; $46a9: $00
	ld h, a                                          ; $46aa: $67
	cp $9e                                           ; $46ab: $fe $9e
	cp $7b                                           ; $46ad: $fe $7b
	cp $9d                                           ; $46af: $fe $9d
	rst $38                                          ; $46b1: $ff
	ld bc, $f46f                                     ; $46b2: $01 $6f $f4
	ld b, c                                          ; $46b5: $41
	ld d, d                                          ; $46b6: $52
	add c                                            ; $46b7: $81
	ld [bc], a                                       ; $46b8: $02
	rlca                                             ; $46b9: $07
	ld b, $ce                                        ; $46ba: $06 $ce
	call $fbfc                                       ; $46bc: $cd $fc $fb
	ld sp, $0fff                                     ; $46bf: $31 $ff $0f
	rst $38                                          ; $46c2: $ff
	push af                                          ; $46c3: $f5
	cp $ce                                           ; $46c4: $fe $ce

jr_071_46c6:
	ccf                                              ; $46c6: $3f
	ei                                               ; $46c7: $fb
	rlca                                             ; $46c8: $07

jr_071_46c9:
	rst GetHLinHL                                          ; $46c9: $cf
	pop af                                           ; $46ca: $f1
	cp [hl]                                          ; $46cb: $be
	ld a, a                                          ; $46cc: $7f
	ld h, c                                          ; $46cd: $61
	sbc a                                            ; $46ce: $9f
	cp a                                             ; $46cf: $bf
	ret nz                                           ; $46d0: $c0

	call z, $43f3                                    ; $46d1: $cc $f3 $43
	rst $38                                          ; $46d4: $ff
	inc a                                            ; $46d5: $3c
	ld a, e                                          ; $46d6: $7b
	ld l, [hl]                                       ; $46d7: $6e
	sbc h                                            ; $46d8: $9c
	adc h                                            ; $46d9: $8c
	rst $38                                          ; $46da: $ff
	ld h, e                                          ; $46db: $63
	ld a, c                                          ; $46dc: $79
	ret z                                            ; $46dd: $c8

	sbc [hl]                                         ; $46de: $9e
	ld h, b                                          ; $46df: $60
	ld a, e                                          ; $46e0: $7b
	or $9c                                           ; $46e1: $f6 $9c
	cp $ff                                           ; $46e3: $fe $ff
	ld sp, $6003                                     ; $46e5: $31 $03 $60
	pop hl                                           ; $46e8: $e1
	sbc c                                            ; $46e9: $99
	add hl, bc                                       ; $46ea: $09
	ccf                                              ; $46eb: $3f
	inc sp                                           ; $46ec: $33
	rst $38                                          ; $46ed: $ff
	rst JumpTable                                          ; $46ee: $c7
	cp $7a                                           ; $46ef: $fe $7a
	db $ed                                           ; $46f1: $ed
	ld a, [hl]                                       ; $46f2: $7e
	call nc, Call_071_6063                           ; $46f3: $d4 $63 $60
	ld a, a                                          ; $46f6: $7f
	cp $95                                           ; $46f7: $fe $95
	ld a, a                                          ; $46f9: $7f
	nop                                              ; $46fa: $00
	sbc a                                            ; $46fb: $9f
	nop                                              ; $46fc: $00
	rst GetHLinHL                                          ; $46fd: $cf
	add b                                            ; $46fe: $80
	db $e3                                           ; $46ff: $e3
	ld b, b                                          ; $4700: $40
	ldh a, [rAUD4LEN]                                ; $4701: $f0 $20
	db $fd                                           ; $4703: $fd
	db $dd                                           ; $4704: $dd
	ld b, b                                          ; $4705: $40
	call c, Call_071_7fc0                            ; $4706: $dc $c0 $7f
	ld a, [$f77b]                                    ; $4709: $fa $7b $f7
	ld a, a                                          ; $470c: $7f
	cp $dd                                           ; $470d: $fe $dd
	add b                                            ; $470f: $80
	rst $38                                          ; $4710: $ff
	rst SubAFromDE                                          ; $4711: $df
	ldh a, [$80]                                     ; $4712: $f0 $80
	db $fc                                           ; $4714: $fc
	inc c                                            ; $4715: $0c
	rrca                                             ; $4716: $0f
	di                                               ; $4717: $f3
	rrca                                             ; $4718: $0f
	ldh a, [$fd]                                     ; $4719: $f0 $fd
	cp $bb                                           ; $471b: $fe $bb
	ei                                               ; $471d: $fb
	or $ce                                           ; $471e: $f6 $ce
	ld a, l                                          ; $4720: $7d
	jp $f1ee                                         ; $4721: $c3 $ee $f1


	inc hl                                           ; $4724: $23
	db $fc                                           ; $4725: $fc

jr_071_4726:
	inc a                                            ; $4726: $3c
	rst $38                                          ; $4727: $ff
	inc sp                                           ; $4728: $33
	rst $38                                          ; $4729: $ff
	db $dd                                           ; $472a: $dd
	di                                               ; $472b: $f3
	ld e, $f1                                        ; $472c: $1e $f1
	sub e                                            ; $472e: $93
	db $fc                                           ; $472f: $fc
	inc e                                            ; $4730: $1c
	rst $38                                          ; $4731: $ff
	scf                                              ; $4732: $37
	add [hl]                                         ; $4733: $86
	rst $38                                          ; $4734: $ff
	ld e, d                                          ; $4735: $5a
	or $9d                                           ; $4736: $f6 $9d
	di                                               ; $4738: $f3
	dec e                                            ; $4739: $1d
	di                                               ; $473a: $f3
	sub [hl]                                         ; $473b: $96
	ld sp, hl                                        ; $473c: $f9
	xor e                                            ; $473d: $ab
	db $fc                                           ; $473e: $fc
	db $ed                                           ; $473f: $ed
	ld a, [hl]                                       ; $4740: $7e
	cp $6f                                           ; $4741: $fe $6f
	ld a, [$d96b]                                    ; $4743: $fa $6b $d9
	ld l, c                                          ; $4746: $69
	cp c                                             ; $4747: $b9
	xor c                                            ; $4748: $a9
	xor b                                            ; $4749: $a8
	cp b                                             ; $474a: $b8
	jr z, @+$3a                                      ; $474b: $28 $38

	db $dd                                           ; $474d: $dd
	jr nc, @-$21                                     ; $474e: $30 $dd

	jr nz, @+$01                                     ; $4750: $20 $ff

	rst SubAFromDE                                          ; $4752: $df
	ld a, [hl]                                       ; $4753: $7e
	sbc [hl]                                         ; $4754: $9e
	add c                                            ; $4755: $81
	ld a, e                                          ; $4756: $7b
	sub c                                            ; $4757: $91
	ld a, [hl]                                       ; $4758: $7e
	push hl                                          ; $4759: $e5
	sbc c                                            ; $475a: $99
	rra                                              ; $475b: $1f
	db $fc                                           ; $475c: $fc
	ccf                                              ; $475d: $3f
	ldh a, [$7f]                                     ; $475e: $f0 $7f
	ldh [$75], a                                     ; $4760: $e0 $75
	ret                                              ; $4762: $c9


	sbc l                                            ; $4763: $9d
	rst $38                                          ; $4764: $ff
	add b                                            ; $4765: $80
	ld c, e                                          ; $4766: $4b
	cp $5b                                           ; $4767: $fe $5b
	ld l, d                                          ; $4769: $6a
	scf                                              ; $476a: $37
	cp $df                                           ; $476b: $fe $df
	add b                                            ; $476d: $80
	ld a, a                                          ; $476e: $7f
	ld l, a                                          ; $476f: $6f
	add b                                            ; $4770: $80
	ldh [$a0], a                                     ; $4771: $e0 $a0
	ld [hl], b                                       ; $4773: $70
	ld [hl], b                                       ; $4774: $70
	sbc b                                            ; $4775: $98
	sbc b                                            ; $4776: $98
	ld b, b                                          ; $4777: $40
	ret nz                                           ; $4778: $c0

	and b                                            ; $4779: $a0
	ld h, b                                          ; $477a: $60
	ret nc                                           ; $477b: $d0

	jr nc, jr_071_4726                               ; $477c: $30 $a8

	ret c                                            ; $477e: $d8

	ld h, h                                          ; $477f: $64
	ld a, h                                          ; $4780: $7c
	sub h                                            ; $4781: $94
	sbc h                                            ; $4782: $9c
	jp z, $e64e                                      ; $4783: $ca $4e $e6

	ld h, $72                                        ; $4786: $26 $72
	sub d                                            ; $4788: $92
	ret z                                            ; $4789: $c8

	ld hl, sp+$28                                    ; $478a: $f8 $28
	jr c, jr_071_47a2                                ; $478c: $38 $14

	inc e                                            ; $478e: $1c
	adc h                                            ; $478f: $8c
	sbc d                                            ; $4790: $9a
	adc h                                            ; $4791: $8c
	add [hl]                                         ; $4792: $86
	add [hl]                                         ; $4793: $86
	jp nz, Jump_071_6742                             ; $4794: $c2 $42 $67

	ld b, h                                          ; $4797: $44
	ld [hl], e                                       ; $4798: $73
	add hl, sp                                       ; $4799: $39
	sbc $40                                          ; $479a: $de $40
	ld sp, hl                                        ; $479c: $f9
	rst SubAFromDE                                          ; $479d: $df
	add b                                            ; $479e: $80
	ld a, a                                          ; $479f: $7f
	db $ec                                           ; $47a0: $ec
	rst SubAFromDE                                          ; $47a1: $df

jr_071_47a2:
	ldh [hDisp1_OBP0], a                                     ; $47a2: $e0 $93
	ldh a, [$30]                                     ; $47a4: $f0 $30
	ld hl, sp+$08                                    ; $47a6: $f8 $08
	ld hl, sp+$08                                    ; $47a8: $f8 $08
	db $fc                                           ; $47aa: $fc
	inc b                                            ; $47ab: $04
	db $fc                                           ; $47ac: $fc
	ld b, h                                          ; $47ad: $44
	cp $42                                           ; $47ae: $fe $42
	ld l, a                                          ; $47b0: $6f
	cp $7a                                           ; $47b1: $fe $7a
	inc bc                                           ; $47b3: $03
	sbc [hl]                                         ; $47b4: $9e
	ld hl, $fe73                                     ; $47b5: $21 $73 $fe
	sbc [hl]                                         ; $47b8: $9e
	jr nz, jr_071_4836                               ; $47b9: $20 $7b

	cp $9e                                           ; $47bb: $fe $9e
	db $10                                           ; $47bd: $10
	ld [hl], e                                       ; $47be: $73
	cp $9b                                           ; $47bf: $fe $9b
	ld [$09fe], sp                                   ; $47c1: $08 $fe $09
	db $fd                                           ; $47c4: $fd
	ld [hl], c                                       ; $47c5: $71
	inc c                                            ; $47c6: $0c
	sbc l                                            ; $47c7: $9d
	rst $38                                          ; $47c8: $ff
	inc bc                                           ; $47c9: $03
	ld a, e                                          ; $47ca: $7b
	cp $7e                                           ; $47cb: $fe $7e
	ld b, b                                          ; $47cd: $40
	ld [hl], e                                       ; $47ce: $73
	cp $dd                                           ; $47cf: $fe $dd
	add b                                            ; $47d1: $80
	ld [hl], a                                       ; $47d2: $77
	and [hl]                                         ; $47d3: $a6
	sub [hl]                                         ; $47d4: $96
	ld h, b                                          ; $47d5: $60
	ldh [$50], a                                     ; $47d6: $e0 $50
	ldh a, [hDisp1_SCY]                                     ; $47d8: $f0 $90
	ldh a, [rAUD4LEN]                                ; $47da: $f0 $20
	ldh [$60], a                                     ; $47dc: $e0 $60
	db $dd                                           ; $47de: $dd
	ldh [$9a], a                                     ; $47df: $e0 $9a
	and b                                            ; $47e1: $a0
	ldh [rAUD4LEN], a                                ; $47e2: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $47e4: $f0 $10
	ld l, a                                          ; $47e6: $6f
	cp $22                                           ; $47e7: $fe $22
	nop                                              ; $47e9: $00
	db $dd                                           ; $47ea: $dd

Jump_071_47eb:
	xor d                                            ; $47eb: $aa
	sub e                                            ; $47ec: $93
	db $dd                                           ; $47ed: $dd
	adc b                                            ; $47ee: $88
	and d                                            ; $47ef: $a2
	nop                                              ; $47f0: $00
	adc b                                            ; $47f1: $88
	ld de, $00aa                                     ; $47f2: $11 $aa $00
	sbc c                                            ; $47f5: $99
	sbc c                                            ; $47f6: $99
	ld de, $77a2                                     ; $47f7: $11 $a2 $77
	ei                                               ; $47fa: $fb
	sbc [hl]                                         ; $47fb: $9e
	adc b                                            ; $47fc: $88
	ld h, e                                          ; $47fd: $63
	ei                                               ; $47fe: $fb
	sub l                                            ; $47ff: $95
	xor d                                            ; $4800: $aa
	adc b                                            ; $4801: $88
	adc b                                            ; $4802: $88
	ld de, $8811                                     ; $4803: $11 $11 $88
	adc b                                            ; $4806: $88
	sbc c                                            ; $4807: $99
	ld de, $c6cc                                     ; $4808: $11 $cc $c6
	ld bc, $dc9d                                     ; $480b: $01 $9d $dc
	ld c, b                                          ; $480e: $48
	ld l, a                                          ; $480f: $6f
	cp $80                                           ; $4810: $fe $80
	db $fc                                           ; $4812: $fc
	ld c, b                                          ; $4813: $48
	add sp, $58                                      ; $4814: $e8 $58
	ld e, e                                          ; $4816: $5b
	di                                               ; $4817: $f3
	ld e, a                                          ; $4818: $5f
	di                                               ; $4819: $f3
	sbc [hl]                                         ; $481a: $9e
	rst FarCall                                          ; $481b: $f7
	cp a                                             ; $481c: $bf
	and $37                                          ; $481d: $e6 $37
	db $ec                                           ; $481f: $ec
	ld a, a                                          ; $4820: $7f
	ret z                                            ; $4821: $c8

	cp $89                                           ; $4822: $fe $89
	rst $38                                          ; $4824: $ff
	pop bc                                           ; $4825: $c1
	db $fd                                           ; $4826: $fd
	db $e3                                           ; $4827: $e3
	db $fd                                           ; $4828: $fd
	di                                               ; $4829: $f3
	sbc a                                            ; $482a: $9f
	sbc e                                            ; $482b: $9b
	sub a                                            ; $482c: $97
	sbc h                                            ; $482d: $9c
	sbc a                                            ; $482e: $9f
	sub [hl]                                         ; $482f: $96
	sbc a                                            ; $4830: $9f
	sbc b                                            ; $4831: $98
	sub a                                            ; $4832: $97
	ld d, l                                          ; $4833: $55
	db $dd                                           ; $4834: $dd
	ret z                                            ; $4835: $c8

jr_071_4836:
	ret z                                            ; $4836: $c8

	ld c, e                                          ; $4837: $4b
	ld c, e                                          ; $4838: $4b
	db $dd                                           ; $4839: $dd
	rst $38                                          ; $483a: $ff

Call_071_483b:
	rst SubAFromDE                                          ; $483b: $df
	ldh a, [$df]                                     ; $483c: $f0 $df
	rrca                                             ; $483e: $0f
	rst SubAFromDE                                          ; $483f: $df
	ld a, a                                          ; $4840: $7f
	rst SubAFromDE                                          ; $4841: $df
	rst $38                                          ; $4842: $ff
	sub c                                            ; $4843: $91
	ld a, a                                          ; $4844: $7f
	rst GetHLinHL                                          ; $4845: $cf
	rst $38                                          ; $4846: $ff
	rst FarCall                                          ; $4847: $f7
	rst $38                                          ; $4848: $ff
	dec de                                           ; $4849: $1b
	sbc l                                            ; $484a: $9d
	bit 3, l                                         ; $484b: $cb $5d
	ld h, h                                          ; $484d: $64
	ld [hl-], a                                      ; $484e: $32
	ld a, $0f                                        ; $484f: $3e $0f
	rrca                                             ; $4851: $0f

jr_071_4852:
	ei                                               ; $4852: $fb
	sbc [hl]                                         ; $4853: $9e
	ret nz                                           ; $4854: $c0

	cp l                                             ; $4855: $bd
	ret nz                                           ; $4856: $c0

	ldh [$f0], a                                     ; $4857: $e0 $f0
	ld h, b                                          ; $4859: $60
	sbc $f0                                          ; $485a: $de $f0
	rst SubAFromDE                                          ; $485c: $df
	ret c                                            ; $485d: $d8

	rst SubAFromDE                                          ; $485e: $df
	sbc b                                            ; $485f: $98
	sbc b                                            ; $4860: $98
	db $f4                                           ; $4861: $f4
	db $fc                                           ; $4862: $fc
	inc h                                            ; $4863: $24
	inc h                                            ; $4864: $24
	sbc b                                            ; $4865: $98
	jr jr_071_4852                                   ; $4866: $18 $ea

	cp a                                             ; $4868: $bf
	call nc, $9ae0                                   ; $4869: $d4 $e0 $9a
	add b                                            ; $486c: $80
	ld hl, sp-$40                                    ; $486d: $f8 $c0
	cp $f8                                           ; $486f: $fe $f8
	sbc $ff                                          ; $4871: $de $ff
	add b                                            ; $4873: $80
	ld hl, sp-$04                                    ; $4874: $f8 $fc
	ld hl, sp-$12                                    ; $4876: $f8 $ee
	db $fc                                           ; $4878: $fc
	scf                                              ; $4879: $37
	cp $93                                           ; $487a: $fe $93
	rst $38                                          ; $487c: $ff
	cp c                                             ; $487d: $b9
	rst $38                                          ; $487e: $ff
	db $ec                                           ; $487f: $ec
	rst $38                                          ; $4880: $ff
	add $ff                                          ; $4881: $c6 $ff
	add a                                            ; $4883: $87
	rst $38                                          ; $4884: $ff
	ld a, a                                          ; $4885: $7f
	db $fc                                           ; $4886: $fc
	ccf                                              ; $4887: $3f
	nop                                              ; $4888: $00
	rst $38                                          ; $4889: $ff
	add b                                            ; $488a: $80
	ld hl, sp+$07                                    ; $488b: $f8 $07
	rst $38                                          ; $488d: $ff
	rrca                                             ; $488e: $0f
	db $fd                                           ; $488f: $fd
	dec e                                            ; $4890: $1d
	ld sp, hl                                        ; $4891: $f9
	add hl, de                                       ; $4892: $19
	sub h                                            ; $4893: $94
	ld [hl], a                                       ; $4894: $77
	rra                                              ; $4895: $1f
	dec h                                            ; $4896: $25
	rlca                                             ; $4897: $07
	ld [bc], a                                       ; $4898: $02
	ld [bc], a                                       ; $4899: $02
	ld bc, $0201                                     ; $489a: $01 $01 $02
	ld bc, $be02                                     ; $489d: $01 $02 $be
	push bc                                          ; $48a0: $c5
	ldh a, [$fe]                                     ; $48a1: $f0 $fe
	add b                                            ; $48a3: $80
	rst $38                                          ; $48a4: $ff
	ld de, $12ff                                     ; $48a5: $11 $ff $12
	rst $38                                          ; $48a8: $ff
	ld a, [bc]                                       ; $48a9: $0a
	rst $38                                          ; $48aa: $ff
	dec hl                                           ; $48ab: $2b
	rst $38                                          ; $48ac: $ff
	db $eb                                           ; $48ad: $eb
	ei                                               ; $48ae: $fb
	xor d                                            ; $48af: $aa
	cp e                                             ; $48b0: $bb
	adc d                                            ; $48b1: $8a
	sbc e                                            ; $48b2: $9b
	ld l, [hl]                                       ; $48b3: $6e
	db $db                                           ; $48b4: $db
	db $eb                                           ; $48b5: $eb
	ld e, a                                          ; $48b6: $5f
	call $8a7f                                       ; $48b7: $cd $7f $8a
	cp $62                                           ; $48ba: $fe $62
	sbc [hl]                                         ; $48bc: $9e
	ld b, d                                          ; $48bd: $42
	cp [hl]                                          ; $48be: $be
	add h                                            ; $48bf: $84
	ld a, h                                          ; $48c0: $7c
	call nz, $273c                                   ; $48c1: $c4 $3c $27
	ld b, b                                          ; $48c4: $40
	sub l                                            ; $48c5: $95
	rst $38                                          ; $48c6: $ff
	adc b                                            ; $48c7: $88
	rst $38                                          ; $48c8: $ff
	ret nz                                           ; $48c9: $c0

	cp $e1                                           ; $48ca: $fe $e1
	cp $f1                                           ; $48cc: $fe $f1
	sbc a                                            ; $48ce: $9f
	sbc c                                            ; $48cf: $99
	inc bc                                           ; $48d0: $03
	ld b, b                                          ; $48d1: $40
	dec sp                                           ; $48d2: $3b
	ld b, b                                          ; $48d3: $40
	ld a, e                                          ; $48d4: $7b
	cp $96                                           ; $48d5: $fe $96
	ld [hl], b                                       ; $48d7: $70
	ret c                                            ; $48d8: $d8

	ret c                                            ; $48d9: $d8

	cp b                                             ; $48da: $b8
	cp b                                             ; $48db: $b8
	db $f4                                           ; $48dc: $f4
	db $fc                                           ; $48dd: $fc
	and h                                            ; $48de: $a4
	and h                                            ; $48df: $a4
	inc bc                                           ; $48e0: $03
	ld b, b                                          ; $48e1: $40
	ld [hl], e                                       ; $48e2: $73
	ld b, b                                          ; $48e3: $40
	sub e                                            ; $48e4: $93
	cp $01                                           ; $48e5: $fe $01
	ei                                               ; $48e7: $fb
	rlca                                             ; $48e8: $07
	push af                                          ; $48e9: $f5
	dec c                                            ; $48ea: $0d
	db $eb                                           ; $48eb: $eb
	dec de                                           ; $48ec: $1b
	ld l, a                                          ; $48ed: $6f
	rra                                              ; $48ee: $1f
	dec h                                            ; $48ef: $25
	rla                                              ; $48f0: $17
	inc bc                                           ; $48f1: $03
	ld b, b                                          ; $48f2: $40
	inc bc                                           ; $48f3: $03
	ld b, b                                          ; $48f4: $40
	ld l, a                                          ; $48f5: $6f
	ld b, b                                          ; $48f6: $40
	sbc c                                            ; $48f7: $99
	rst $38                                          ; $48f8: $ff
	ldh [rIE], a                                     ; $48f9: $e0 $ff
	ldh a, [$9f]                                     ; $48fb: $f0 $9f
	sbc b                                            ; $48fd: $98
	inc bc                                           ; $48fe: $03
	ld b, b                                          ; $48ff: $40
	cpl                                              ; $4900: $2f
	ld b, b                                          ; $4901: $40
	sub h                                            ; $4902: $94
	nop                                              ; $4903: $00
	or b                                             ; $4904: $b0
	ld a, b                                          ; $4905: $78
	ld e, b                                          ; $4906: $58
	ret c                                            ; $4907: $d8

	db $f4                                           ; $4908: $f4
	db $fc                                           ; $4909: $fc
	or h                                             ; $490a: $b4
	and h                                            ; $490b: $a4
	ret c                                            ; $490c: $d8

	ret c                                            ; $490d: $d8

	inc bc                                           ; $490e: $03
	ld b, b                                          ; $490f: $40
	ld a, e                                          ; $4910: $7b
	ld b, b                                          ; $4911: $40
	sbc l                                            ; $4912: $9d
	rst $38                                          ; $4913: $ff
	nop                                              ; $4914: $00
	ld l, a                                          ; $4915: $6f
	ld a, $9b                                        ; $4916: $3e $9b
	ld a, a                                          ; $4918: $7f
	rrca                                             ; $4919: $0f
	dec a                                            ; $491a: $3d
	rrca                                             ; $491b: $0f
	scf                                              ; $491c: $37
	ld b, b                                          ; $491d: $40
	sbc d                                            ; $491e: $9a
	dec bc                                           ; $491f: $0b
	rst $38                                          ; $4920: $ff
	dec hl                                           ; $4921: $2b
	ei                                               ; $4922: $fb
	ld [$3e7b], a                                    ; $4923: $ea $7b $3e
	rla                                              ; $4926: $17
	ld b, b                                          ; $4927: $40
	sub e                                            ; $4928: $93
	ld e, b                                          ; $4929: $58
	ldh a, [$5b]                                     ; $492a: $f0 $5b
	di                                               ; $492c: $f3
	sbc a                                            ; $492d: $9f
	di                                               ; $492e: $f3
	cp [hl]                                          ; $492f: $be
	rst SubAFromBC                                          ; $4930: $e7
	ccf                                              ; $4931: $3f
	and $77                                          ; $4932: $e6 $77
	call z, Call_071_407b                            ; $4934: $cc $7b $40
	ld a, a                                          ; $4937: $7f
	inc a                                            ; $4938: $3c
	inc bc                                           ; $4939: $03
	ld b, b                                          ; $493a: $40
	rla                                              ; $493b: $17
	ld b, b                                          ; $493c: $40
	sbc [hl]                                         ; $493d: $9e
	ld hl, sp-$41                                    ; $493e: $f8 $bf
	ld hl, sp-$04                                    ; $4940: $f8 $fc
	sbc d                                            ; $4942: $9a
	inc c                                            ; $4943: $0c
	db $fc                                           ; $4944: $fc
	inc a                                            ; $4945: $3c
	ld hl, sp-$08                                    ; $4946: $f8 $f8
	dec bc                                           ; $4948: $0b
	ld b, b                                          ; $4949: $40
	sbc [hl]                                         ; $494a: $9e
	cp $6f                                           ; $494b: $fe $6f
	ld b, b                                          ; $494d: $40
	ld l, a                                          ; $494e: $6f
	cp $9e                                           ; $494f: $fe $9e
	ld a, a                                          ; $4951: $7f
	cp a                                             ; $4952: $bf
	ld a, $00                                        ; $4953: $3e $00
	sbc h                                            ; $4955: $9c
	ld bc, $0303                                     ; $4956: $01 $03 $03
	ccf                                              ; $4959: $3f
	ld b, b                                          ; $495a: $40
	sbc h                                            ; $495b: $9c
	dec bc                                           ; $495c: $0b
	ei                                               ; $495d: $fb
	ld a, [bc]                                       ; $495e: $0a
	ld a, e                                          ; $495f: $7b
	cp $98                                           ; $4960: $fe $98
	ld l, $fb                                        ; $4962: $2e $fb
	ld l, e                                          ; $4964: $6b
	rst $38                                          ; $4965: $ff
	db $ed                                           ; $4966: $ed
	rst $38                                          ; $4967: $ff
	jp z, $4063                                      ; $4968: $ca $63 $40

	adc l                                            ; $496b: $8d
	or b                                             ; $496c: $b0
	ret nz                                           ; $496d: $c0

	ldh [$c4], a                                     ; $496e: $e0 $c4
	inc c                                            ; $4970: $0c
	ld [$3038], sp                                   ; $4971: $08 $38 $30
	nop                                              ; $4974: $00
	nop                                              ; $4975: $00
	inc b                                            ; $4976: $04
	ld [$0001], sp                                   ; $4977: $08 $01 $00
	jp $ff01                                         ; $497a: $c3 $01 $ff


	cp $6f                                           ; $497d: $fe $6f
	ld [hl], l                                       ; $497f: $75
	add b                                            ; $4980: $80
	add b                                            ; $4981: $80
	nop                                              ; $4982: $00
	ret nz                                           ; $4983: $c0

	add b                                            ; $4984: $80
	ldh [$c0], a                                     ; $4985: $e0 $c0
	ld [hl], b                                       ; $4987: $70
	ldh [$7f], a                                     ; $4988: $e0 $7f
	rrca                                             ; $498a: $0f
	ld a, h                                          ; $498b: $7c
	rrca                                             ; $498c: $0f
	ld a, b                                          ; $498d: $78
	rra                                              ; $498e: $1f
	ld a, b                                          ; $498f: $78
	rra                                              ; $4990: $1f
	ld hl, sp+$2f                                    ; $4991: $f8 $2f
	db $fc                                           ; $4993: $fc
	ld l, a                                          ; $4994: $6f
	ei                                               ; $4995: $fb
	rst GetHLinHL                                          ; $4996: $cf
	ld sp, hl                                        ; $4997: $f9
	adc a                                            ; $4998: $8f
	db $fc                                           ; $4999: $fc
	rrca                                             ; $499a: $0f
	cp $0b                                           ; $499b: $fe $0b
	ld a, [hl]                                       ; $499d: $7e
	dec bc                                           ; $499e: $0b
	ld a, $9b                                        ; $499f: $3e $9b
	inc bc                                           ; $49a1: $03
	ld a, $03                                        ; $49a2: $3e $03
	ld e, $7b                                        ; $49a4: $1e $7b
	cp $94                                           ; $49a6: $fe $94
	dec e                                            ; $49a8: $1d
	rlca                                             ; $49a9: $07
	or b                                             ; $49aa: $b0
	ret nz                                           ; $49ab: $c0

	db $e4                                           ; $49ac: $e4
	call nz, $0c0c                                   ; $49ad: $c4 $0c $0c
	jr c, jr_071_49ee                                ; $49b0: $38 $3c

	inc e                                            ; $49b2: $1c
	cp [hl]                                          ; $49b3: $be
	nop                                              ; $49b4: $00
	ld bc, $43c3                                     ; $49b5: $01 $c3 $43
	ret nz                                           ; $49b8: $c0

	ld [hl], a                                       ; $49b9: $77
	ldh [$98], a                                     ; $49ba: $e0 $98
	inc e                                            ; $49bc: $1c
	inc c                                            ; $49bd: $0c
	inc a                                            ; $49be: $3c
	inc a                                            ; $49bf: $3c
	jr @+$1e                                         ; $49c0: $18 $1c

	inc c                                            ; $49c2: $0c
	dec hl                                           ; $49c3: $2b
	ldh [$7f], a                                     ; $49c4: $e0 $7f
	add b                                            ; $49c6: $80
	ld [hl], a                                       ; $49c7: $77
	ldh [$7f], a                                     ; $49c8: $e0 $7f
	cp a                                             ; $49ca: $bf
	sbc l                                            ; $49cb: $9d
	jr jr_071_49da                                   ; $49cc: $18 $0c

	scf                                              ; $49ce: $37
	ldh [$cb], a                                     ; $49cf: $e0 $cb
	ld bc, $dc9d                                     ; $49d1: $01 $9d $dc
	ld c, b                                          ; $49d4: $48
	ld l, a                                          ; $49d5: $6f
	cp $80                                           ; $49d6: $fe $80
	db $fc                                           ; $49d8: $fc
	ld c, b                                          ; $49d9: $48

jr_071_49da:
	add sp, $58                                      ; $49da: $e8 $58
	ld e, [hl]                                       ; $49dc: $5e
	or $56                                           ; $49dd: $f6 $56
	rst $38                                          ; $49df: $ff
	sbc l                                            ; $49e0: $9d
	cp $bb                                           ; $49e1: $fe $bb
	db $ec                                           ; $49e3: $ec
	ccf                                              ; $49e4: $3f
	add sp, $7f                                      ; $49e5: $e8 $7f
	ret z                                            ; $49e7: $c8

	cp $81                                           ; $49e8: $fe $81
	db $fd                                           ; $49ea: $fd
	jp $e3fd                                         ; $49eb: $c3 $fd $e3


jr_071_49ee:
	rst $38                                          ; $49ee: $ff
	di                                               ; $49ef: $f3
	sbc a                                            ; $49f0: $9f
	sbc c                                            ; $49f1: $99
	sub a                                            ; $49f2: $97
	sbc h                                            ; $49f3: $9c
	sbc a                                            ; $49f4: $9f
	sub [hl]                                         ; $49f5: $96
	sbc a                                            ; $49f6: $9f
	sbc b                                            ; $49f7: $98
	sub a                                            ; $49f8: $97
	ld d, l                                          ; $49f9: $55
	db $dd                                           ; $49fa: $dd
	ret z                                            ; $49fb: $c8

	ret z                                            ; $49fc: $c8

	ld c, e                                          ; $49fd: $4b
	ld c, e                                          ; $49fe: $4b
	db $dd                                           ; $49ff: $dd
	rst $38                                          ; $4a00: $ff
	rst SubAFromDE                                          ; $4a01: $df
	ldh a, [$df]                                     ; $4a02: $f0 $df
	rrca                                             ; $4a04: $0f
	rst SubAFromDE                                          ; $4a05: $df
	ld a, a                                          ; $4a06: $7f
	rst SubAFromDE                                          ; $4a07: $df
	rst $38                                          ; $4a08: $ff
	sub c                                            ; $4a09: $91
	ld a, a                                          ; $4a0a: $7f
	rst GetHLinHL                                          ; $4a0b: $cf
	rst $38                                          ; $4a0c: $ff
	rst FarCall                                          ; $4a0d: $f7
	rst $38                                          ; $4a0e: $ff
	dec de                                           ; $4a0f: $1b
	sbc l                                            ; $4a10: $9d

jr_071_4a11:
	bit 3, l                                         ; $4a11: $cb $5d
	ld h, h                                          ; $4a13: $64
	ld [hl-], a                                      ; $4a14: $32
	ld a, $0f                                        ; $4a15: $3e $0f
	rrca                                             ; $4a17: $0f
	ei                                               ; $4a18: $fb
	sbc [hl]                                         ; $4a19: $9e
	ret nz                                           ; $4a1a: $c0

	ld a, e                                          ; $4a1b: $7b
	cp $8c                                           ; $4a1c: $fe $8c
	ldh [rP1], a                                     ; $4a1e: $e0 $00
	ldh a, [rP1]                                     ; $4a20: $f0 $00
	ld h, b                                          ; $4a22: $60
	ldh a, [$d0]                                     ; $4a23: $f0 $d0
	ret nc                                           ; $4a25: $d0

	sbc b                                            ; $4a26: $98
	sbc b                                            ; $4a27: $98
	cp b                                             ; $4a28: $b8
	cp b                                             ; $4a29: $b8
	ld [hl], h                                       ; $4a2a: $74
	ld a, h                                          ; $4a2b: $7c
	inc h                                            ; $4a2c: $24
	inc h                                            ; $4a2d: $24
	sbc b                                            ; $4a2e: $98
	jr jr_071_4a11                                   ; $4a2f: $18 $e0

	ld [hl], a                                       ; $4a31: $77
	ld [$809a], a                                    ; $4a32: $ea $9a $80
	ld hl, sp-$40                                    ; $4a35: $f8 $c0
	cp $f8                                           ; $4a37: $fe $f8
	sbc $ff                                          ; $4a39: $de $ff
	add b                                            ; $4a3b: $80
	ld hl, sp-$04                                    ; $4a3c: $f8 $fc
	ld hl, sp-$12                                    ; $4a3e: $f8 $ee
	db $fc                                           ; $4a40: $fc
	scf                                              ; $4a41: $37
	cp $93                                           ; $4a42: $fe $93
	rst $38                                          ; $4a44: $ff
	cp c                                             ; $4a45: $b9
	rst $38                                          ; $4a46: $ff
	db $ec                                           ; $4a47: $ec
	rst $38                                          ; $4a48: $ff
	add $ff                                          ; $4a49: $c6 $ff
	add a                                            ; $4a4b: $87
	rst $38                                          ; $4a4c: $ff
	ld a, a                                          ; $4a4d: $7f
	db $fc                                           ; $4a4e: $fc
	ccf                                              ; $4a4f: $3f
	nop                                              ; $4a50: $00
	db $fc                                           ; $4a51: $fc
	add e                                            ; $4a52: $83
	di                                               ; $4a53: $f3
	rrca                                             ; $4a54: $0f
	db $ed                                           ; $4a55: $ed
	dec e                                            ; $4a56: $1d
	ld sp, hl                                        ; $4a57: $f9
	add hl, de                                       ; $4a58: $19
	ei                                               ; $4a59: $fb
	dec de                                           ; $4a5a: $1b
	sub l                                            ; $4a5b: $95
	ld [hl], a                                       ; $4a5c: $77
	rra                                              ; $4a5d: $1f
	dec h                                            ; $4a5e: $25
	rlca                                             ; $4a5f: $07
	ld [bc], a                                       ; $4a60: $02
	ld [bc], a                                       ; $4a61: $02
	ld bc, $0201                                     ; $4a62: $01 $01 $02
	ld bc, $b277                                     ; $4a65: $01 $77 $b2
	ld a, a                                          ; $4a68: $7f
	or [hl]                                          ; $4a69: $b6
	add b                                            ; $4a6a: $80
	cp $ff                                           ; $4a6b: $fe $ff
	ld de, $12ff                                     ; $4a6d: $11 $ff $12
	rst $38                                          ; $4a70: $ff
	ld a, [hl+]                                      ; $4a71: $2a
	rst $38                                          ; $4a72: $ff
	db $eb                                           ; $4a73: $eb
	rst $38                                          ; $4a74: $ff
	ld l, e                                          ; $4a75: $6b
	ld a, e                                          ; $4a76: $7b
	adc d                                            ; $4a77: $8a
	sbc e                                            ; $4a78: $9b
	adc d                                            ; $4a79: $8a
	sbc e                                            ; $4a7a: $9b
	ld l, [hl]                                       ; $4a7b: $6e
	db $db                                           ; $4a7c: $db
	db $eb                                           ; $4a7d: $eb
	ld e, a                                          ; $4a7e: $5f
	call $8a7f                                       ; $4a7f: $cd $7f $8a
	cp $62                                           ; $4a82: $fe $62
	sbc [hl]                                         ; $4a84: $9e
	jp nz, $c43e                                     ; $4a85: $c2 $3e $c4

	inc a                                            ; $4a88: $3c
	call nz, $3c9e                                   ; $4a89: $c4 $9e $3c
	daa                                              ; $4a8c: $27
	ld b, b                                          ; $4a8d: $40
	sub a                                            ; $4a8e: $97
	rst $38                                          ; $4a8f: $ff
	add b                                            ; $4a90: $80
	rst $38                                          ; $4a91: $ff
	ret nz                                           ; $4a92: $c0

	cp $e1                                           ; $4a93: $fe $e1
	cp $f1                                           ; $4a95: $fe $f1
	inc bc                                           ; $4a97: $03
	ld b, b                                          ; $4a98: $40
	inc sp                                           ; $4a99: $33
	ld b, b                                          ; $4a9a: $40
	ld a, e                                          ; $4a9b: $7b
	cp $96                                           ; $4a9c: $fe $96
	ld [hl], b                                       ; $4a9e: $70
	ret c                                            ; $4a9f: $d8

	ret c                                            ; $4aa0: $d8

	cp b                                             ; $4aa1: $b8
	cp b                                             ; $4aa2: $b8
	db $f4                                           ; $4aa3: $f4
	db $fc                                           ; $4aa4: $fc
	and h                                            ; $4aa5: $a4
	and h                                            ; $4aa6: $a4
	inc bc                                           ; $4aa7: $03
	ld b, b                                          ; $4aa8: $40
	ld a, e                                          ; $4aa9: $7b
	ld b, b                                          ; $4aaa: $40
	ld a, a                                          ; $4aab: $7f
	sub d                                            ; $4aac: $92
	sub e                                            ; $4aad: $93
	cp $01                                           ; $4aae: $fe $01
	ei                                               ; $4ab0: $fb
	rlca                                             ; $4ab1: $07
	or $0e                                           ; $4ab2: $f6 $0e
	db $ed                                           ; $4ab4: $ed
	dec e                                            ; $4ab5: $1d
	ld l, a                                          ; $4ab6: $6f
	rra                                              ; $4ab7: $1f
	dec h                                            ; $4ab8: $25
	rla                                              ; $4ab9: $17
	ccf                                              ; $4aba: $3f
	ld b, b                                          ; $4abb: $40
	sub a                                            ; $4abc: $97
	ld a, [bc]                                       ; $4abd: $0a
	rst $38                                          ; $4abe: $ff
	dec hl                                           ; $4abf: $2b
	rst $38                                          ; $4ac0: $ff
	db $eb                                           ; $4ac1: $eb
	ei                                               ; $4ac2: $fb
	xor d                                            ; $4ac3: $aa
	cp e                                             ; $4ac4: $bb
	inc bc                                           ; $4ac5: $03
	ld b, b                                          ; $4ac6: $40
	ld d, e                                          ; $4ac7: $53
	ld b, b                                          ; $4ac8: $40
	sbc c                                            ; $4ac9: $99
	rst $38                                          ; $4aca: $ff
	ldh [rIE], a                                     ; $4acb: $e0 $ff
	ldh a, [$9f]                                     ; $4acd: $f0 $9f
	sbc b                                            ; $4acf: $98
	inc bc                                           ; $4ad0: $03
	ld b, b                                          ; $4ad1: $40
	cpl                                              ; $4ad2: $2f
	ld b, b                                          ; $4ad3: $40
	sub h                                            ; $4ad4: $94
	nop                                              ; $4ad5: $00
	or b                                             ; $4ad6: $b0
	ld a, b                                          ; $4ad7: $78
	ld e, b                                          ; $4ad8: $58
	ret c                                            ; $4ad9: $d8

	db $f4                                           ; $4ada: $f4
	db $fc                                           ; $4adb: $fc
	or h                                             ; $4adc: $b4
	and h                                            ; $4add: $a4
	ret c                                            ; $4ade: $d8

	ret c                                            ; $4adf: $d8

	inc bc                                           ; $4ae0: $03
	ld b, b                                          ; $4ae1: $40
	ld a, e                                          ; $4ae2: $7b
	ld b, b                                          ; $4ae3: $40
	sbc l                                            ; $4ae4: $9d
	rst $38                                          ; $4ae5: $ff
	nop                                              ; $4ae6: $00
	ld [hl], a                                       ; $4ae7: $77
	ld a, $99                                        ; $4ae8: $3e $99
	push af                                          ; $4aea: $f5
	dec c                                            ; $4aeb: $0d
	ld a, a                                          ; $4aec: $7f
	rrca                                             ; $4aed: $0f
	dec a                                            ; $4aee: $3d
	rrca                                             ; $4aef: $0f
	scf                                              ; $4af0: $37
	ld b, b                                          ; $4af1: $40
	sbc d                                            ; $4af2: $9a
	dec bc                                           ; $4af3: $0b
	rst $38                                          ; $4af4: $ff
	dec hl                                           ; $4af5: $2b
	ei                                               ; $4af6: $fb
	ld [$3e7b], a                                    ; $4af7: $ea $7b $3e
	rla                                              ; $4afa: $17
	ld b, b                                          ; $4afb: $40
	sub l                                            ; $4afc: $95
	ld d, e                                          ; $4afd: $53
	di                                               ; $4afe: $f3
	ld d, [hl]                                       ; $4aff: $56
	rst FarCall                                          ; $4b00: $f7
	sbc l                                            ; $4b01: $9d
	or $bf                                           ; $4b02: $f6 $bf
	db $ec                                           ; $4b04: $ec
	ccf                                              ; $4b05: $3f
	db $ec                                           ; $4b06: $ec
	ld a, e                                          ; $4b07: $7b
	ld b, b                                          ; $4b08: $40
	sbc [hl]                                         ; $4b09: $9e
	adc b                                            ; $4b0a: $88
	inc bc                                           ; $4b0b: $03
	ld b, b                                          ; $4b0c: $40
	dec bc                                           ; $4b0d: $0b
	ld b, b                                          ; $4b0e: $40
	sbc [hl]                                         ; $4b0f: $9e
	ld hl, sp+$7b                                    ; $4b10: $f8 $7b
	cp $99                                           ; $4b12: $fe $99
	db $fc                                           ; $4b14: $fc
	inc c                                            ; $4b15: $0c
	db $fc                                           ; $4b16: $fc
	inc a                                            ; $4b17: $3c
	ld hl, sp-$08                                    ; $4b18: $f8 $f8
	inc bc                                           ; $4b1a: $03
	ld b, b                                          ; $4b1b: $40
	ld [hl], e                                       ; $4b1c: $73
	ld b, b                                          ; $4b1d: $40
	ld l, a                                          ; $4b1e: $6f
	cp $97                                           ; $4b1f: $fe $97
	ld a, a                                          ; $4b21: $7f
	nop                                              ; $4b22: $00
	ld a, $00                                        ; $4b23: $3e $00
	nop                                              ; $4b25: $00
	ld bc, $0303                                     ; $4b26: $01 $03 $03
	ccf                                              ; $4b29: $3f
	ld b, b                                          ; $4b2a: $40
	sub d                                            ; $4b2b: $92
	dec bc                                           ; $4b2c: $0b
	ei                                               ; $4b2d: $fb
	ld a, [bc]                                       ; $4b2e: $0a
	ei                                               ; $4b2f: $fb
	ld a, [hl+]                                      ; $4b30: $2a
	ei                                               ; $4b31: $fb
	ld l, $fb                                        ; $4b32: $2e $fb
	ld l, e                                          ; $4b34: $6b
	rst $38                                          ; $4b35: $ff
	db $ed                                           ; $4b36: $ed
	rst $38                                          ; $4b37: $ff
	jp z, $4063                                      ; $4b38: $ca $63 $40

	adc l                                            ; $4b3b: $8d
	or b                                             ; $4b3c: $b0
	ret nz                                           ; $4b3d: $c0

	db $e4                                           ; $4b3e: $e4
	call nz, $0c14                                   ; $4b3f: $c4 $14 $0c
	jr c, jr_071_4b7c                                ; $4b42: $38 $38

	nop                                              ; $4b44: $00
	nop                                              ; $4b45: $00
	inc b                                            ; $4b46: $04
	ld [$0001], sp                                   ; $4b47: $08 $01 $00
	jp $ff01                                         ; $4b4a: $c3 $01 $ff


	cp $6f                                           ; $4b4d: $fe $6f
	ld [hl], l                                       ; $4b4f: $75
	add b                                            ; $4b50: $80
	add b                                            ; $4b51: $80
	nop                                              ; $4b52: $00
	ret nz                                           ; $4b53: $c0

	add b                                            ; $4b54: $80
	ldh [$c0], a                                     ; $4b55: $e0 $c0
	ld [hl], b                                       ; $4b57: $70
	ldh [$7f], a                                     ; $4b58: $e0 $7f
	rrca                                             ; $4b5a: $0f
	ld a, h                                          ; $4b5b: $7c
	rrca                                             ; $4b5c: $0f
	ld a, b                                          ; $4b5d: $78
	rra                                              ; $4b5e: $1f
	ld a, b                                          ; $4b5f: $78
	rra                                              ; $4b60: $1f
	ld hl, sp+$2f                                    ; $4b61: $f8 $2f
	db $fc                                           ; $4b63: $fc
	ld l, a                                          ; $4b64: $6f
	ei                                               ; $4b65: $fb
	rst GetHLinHL                                          ; $4b66: $cf
	ld sp, hl                                        ; $4b67: $f9
	adc a                                            ; $4b68: $8f
	db $fc                                           ; $4b69: $fc
	rrca                                             ; $4b6a: $0f
	cp $0b                                           ; $4b6b: $fe $0b
	ld a, [hl]                                       ; $4b6d: $7e
	dec bc                                           ; $4b6e: $0b
	ld a, $9b                                        ; $4b6f: $3e $9b
	inc bc                                           ; $4b71: $03
	ld a, $03                                        ; $4b72: $3e $03
	ld e, $7b                                        ; $4b74: $1e $7b
	cp $9d                                           ; $4b76: $fe $9d
	dec e                                            ; $4b78: $1d
	rlca                                             ; $4b79: $07
	ld l, e                                          ; $4b7a: $6b
	ret nz                                           ; $4b7b: $c0

jr_071_4b7c:
	sbc l                                            ; $4b7c: $9d
	inc a                                            ; $4b7d: $3c

jr_071_4b7e:
	jr jr_071_4b7e                                   ; $4b7e: $18 $fe

	scf                                              ; $4b80: $37
	ret nz                                           ; $4b81: $c0

	ld [hl], a                                       ; $4b82: $77
	ldh [$98], a                                     ; $4b83: $e0 $98
	inc e                                            ; $4b85: $1c
	inc c                                            ; $4b86: $0c
	inc a                                            ; $4b87: $3c
	inc a                                            ; $4b88: $3c
	inc c                                            ; $4b89: $0c
	inc e                                            ; $4b8a: $1c
	inc c                                            ; $4b8b: $0c
	dec hl                                           ; $4b8c: $2b
	ldh [hDisp1_WY], a                                     ; $4b8d: $e0 $95
	ldh [c], a                                       ; $4b8f: $e2
	add $1e                                          ; $4b90: $c6 $1e
	ld c, $3e                                        ; $4b92: $0e $3e
	ld a, $0e                                        ; $4b94: $3e $0e
	ld e, $0c                                        ; $4b96: $1e $0c
	ld b, $37                                        ; $4b98: $06 $37
	ldh [$bd], a                                     ; $4b9a: $e0 $bd
	ld bc, $dc9d                                     ; $4b9c: $01 $9d $dc
	ld c, b                                          ; $4b9f: $48
	ld l, a                                          ; $4ba0: $6f
	cp $80                                           ; $4ba1: $fe $80
	db $fc                                           ; $4ba3: $fc
	ld c, b                                          ; $4ba4: $48
	add sp, $58                                      ; $4ba5: $e8 $58
	ld e, e                                          ; $4ba7: $5b
	di                                               ; $4ba8: $f3
	ld d, [hl]                                       ; $4ba9: $56
	rst FarCall                                          ; $4baa: $f7
	sub l                                            ; $4bab: $95
	or $bf                                           ; $4bac: $f6 $bf
	db $ec                                           ; $4bae: $ec
	ccf                                              ; $4baf: $3f
	db $ec                                           ; $4bb0: $ec
	ld a, a                                          ; $4bb1: $7f
	ret z                                            ; $4bb2: $c8

	cp $89                                           ; $4bb3: $fe $89
	db $fd                                           ; $4bb5: $fd
	jp $e3fd                                         ; $4bb6: $c3 $fd $e3


	rst $38                                          ; $4bb9: $ff
	di                                               ; $4bba: $f3
	sbc a                                            ; $4bbb: $9f
	sbc c                                            ; $4bbc: $99
	sub a                                            ; $4bbd: $97
	sbc h                                            ; $4bbe: $9c
	sbc a                                            ; $4bbf: $9f
	sub [hl]                                         ; $4bc0: $96
	sbc a                                            ; $4bc1: $9f
	sbc b                                            ; $4bc2: $98
	sub a                                            ; $4bc3: $97
	ld d, l                                          ; $4bc4: $55
	db $dd                                           ; $4bc5: $dd
	ret z                                            ; $4bc6: $c8

	ret z                                            ; $4bc7: $c8

	ld c, e                                          ; $4bc8: $4b
	ld c, e                                          ; $4bc9: $4b
	db $dd                                           ; $4bca: $dd
	rst $38                                          ; $4bcb: $ff
	rst SubAFromDE                                          ; $4bcc: $df
	ldh a, [$df]                                     ; $4bcd: $f0 $df
	rrca                                             ; $4bcf: $0f
	rst SubAFromDE                                          ; $4bd0: $df
	ld a, a                                          ; $4bd1: $7f
	rst SubAFromDE                                          ; $4bd2: $df
	rst $38                                          ; $4bd3: $ff
	sub c                                            ; $4bd4: $91
	ld a, a                                          ; $4bd5: $7f
	rst GetHLinHL                                          ; $4bd6: $cf
	rst $38                                          ; $4bd7: $ff
	rst FarCall                                          ; $4bd8: $f7
	rst $38                                          ; $4bd9: $ff
	dec de                                           ; $4bda: $1b
	sbc l                                            ; $4bdb: $9d

jr_071_4bdc:
	bit 3, l                                         ; $4bdc: $cb $5d
	ld h, h                                          ; $4bde: $64
	ld [hl-], a                                      ; $4bdf: $32
	ld a, $0f                                        ; $4be0: $3e $0f
	rrca                                             ; $4be2: $0f
	ei                                               ; $4be3: $fb
	sbc [hl]                                         ; $4be4: $9e
	ret nz                                           ; $4be5: $c0

	ld a, e                                          ; $4be6: $7b
	cp $9a                                           ; $4be7: $fe $9a
	ldh [rP1], a                                     ; $4be9: $e0 $00
	ldh a, [rP1]                                     ; $4beb: $f0 $00
	ld h, b                                          ; $4bed: $60
	sbc $f0                                          ; $4bee: $de $f0
	rst SubAFromDE                                          ; $4bf0: $df
	sbc b                                            ; $4bf1: $98
	rst SubAFromDE                                          ; $4bf2: $df
	cp b                                             ; $4bf3: $b8
	sbc b                                            ; $4bf4: $98
	ld [hl], h                                       ; $4bf5: $74
	ld a, h                                          ; $4bf6: $7c
	inc h                                            ; $4bf7: $24
	inc h                                            ; $4bf8: $24
	sbc b                                            ; $4bf9: $98
	jr jr_071_4bdc                                   ; $4bfa: $18 $e0

	ld [hl], a                                       ; $4bfc: $77
	ld [$809a], a                                    ; $4bfd: $ea $9a $80
	ld hl, sp-$40                                    ; $4c00: $f8 $c0
	cp $f8                                           ; $4c02: $fe $f8
	sbc $ff                                          ; $4c04: $de $ff
	add b                                            ; $4c06: $80
	ld hl, sp-$04                                    ; $4c07: $f8 $fc
	ld hl, sp-$12                                    ; $4c09: $f8 $ee
	db $fc                                           ; $4c0b: $fc
	scf                                              ; $4c0c: $37
	cp $93                                           ; $4c0d: $fe $93
	rst $38                                          ; $4c0f: $ff
	cp c                                             ; $4c10: $b9
	rst $38                                          ; $4c11: $ff
	db $ec                                           ; $4c12: $ec
	rst $38                                          ; $4c13: $ff
	add $ff                                          ; $4c14: $c6 $ff
	add a                                            ; $4c16: $87
	rst $38                                          ; $4c17: $ff
	ld a, a                                          ; $4c18: $7f
	db $fc                                           ; $4c19: $fc
	ccf                                              ; $4c1a: $3f
	nop                                              ; $4c1b: $00
	db $fc                                           ; $4c1c: $fc
	add e                                            ; $4c1d: $83
	di                                               ; $4c1e: $f3
	rrca                                             ; $4c1f: $0f
	rst AddAOntoHL                                          ; $4c20: $ef
	rra                                              ; $4c21: $1f
	ld sp, hl                                        ; $4c22: $f9
	add hl, de                                       ; $4c23: $19
	ei                                               ; $4c24: $fb
	dec de                                           ; $4c25: $1b
	sub l                                            ; $4c26: $95
	ld [hl], a                                       ; $4c27: $77
	rra                                              ; $4c28: $1f
	dec h                                            ; $4c29: $25
	rlca                                             ; $4c2a: $07
	ld [bc], a                                       ; $4c2b: $02
	ld [bc], a                                       ; $4c2c: $02
	ld bc, $0201                                     ; $4c2d: $01 $01 $02
	ld bc, $b277                                     ; $4c30: $01 $77 $b2
	ld a, a                                          ; $4c33: $7f
	or [hl]                                          ; $4c34: $b6
	add b                                            ; $4c35: $80
	cp $ff                                           ; $4c36: $fe $ff
	ld de, $12ff                                     ; $4c38: $11 $ff $12
	rst $38                                          ; $4c3b: $ff
	ld a, [hl+]                                      ; $4c3c: $2a
	rst $38                                          ; $4c3d: $ff
	db $eb                                           ; $4c3e: $eb
	rst $38                                          ; $4c3f: $ff
	ld l, e                                          ; $4c40: $6b
	ld a, e                                          ; $4c41: $7b
	adc d                                            ; $4c42: $8a
	sbc e                                            ; $4c43: $9b
	adc d                                            ; $4c44: $8a
	sbc e                                            ; $4c45: $9b
	ld l, [hl]                                       ; $4c46: $6e
	db $db                                           ; $4c47: $db
	db $eb                                           ; $4c48: $eb
	ld e, a                                          ; $4c49: $5f
	call $8a7f                                       ; $4c4a: $cd $7f $8a
	cp $62                                           ; $4c4d: $fe $62
	sbc [hl]                                         ; $4c4f: $9e
	jp nz, $c43e                                     ; $4c50: $c2 $3e $c4

	inc a                                            ; $4c53: $3c
	call nz, $3c9e                                   ; $4c54: $c4 $9e $3c
	daa                                              ; $4c57: $27
	ld b, b                                          ; $4c58: $40
	sub a                                            ; $4c59: $97
	rst $38                                          ; $4c5a: $ff
	adc b                                            ; $4c5b: $88
	rst $38                                          ; $4c5c: $ff
	ret nz                                           ; $4c5d: $c0

	cp $e1                                           ; $4c5e: $fe $e1
	cp $f1                                           ; $4c60: $fe $f1
	inc bc                                           ; $4c62: $03
	ld b, b                                          ; $4c63: $40
	inc sp                                           ; $4c64: $33
	ld b, b                                          ; $4c65: $40
	ld a, e                                          ; $4c66: $7b
	cp $96                                           ; $4c67: $fe $96
	ld [hl], b                                       ; $4c69: $70
	ret c                                            ; $4c6a: $d8

	ret c                                            ; $4c6b: $d8

	cp b                                             ; $4c6c: $b8
	cp b                                             ; $4c6d: $b8
	db $f4                                           ; $4c6e: $f4
	db $fc                                           ; $4c6f: $fc
	and h                                            ; $4c70: $a4
	and h                                            ; $4c71: $a4
	inc bc                                           ; $4c72: $03
	ld b, b                                          ; $4c73: $40
	ld a, e                                          ; $4c74: $7b
	ld b, b                                          ; $4c75: $40
	sub c                                            ; $4c76: $91
	rst $38                                          ; $4c77: $ff
	add b                                            ; $4c78: $80
	cp $01                                           ; $4c79: $fe $01
	ei                                               ; $4c7b: $fb
	rlca                                             ; $4c7c: $07
	push af                                          ; $4c7d: $f5
	dec c                                            ; $4c7e: $0d
	db $eb                                           ; $4c7f: $eb
	dec de                                           ; $4c80: $1b
	ld l, a                                          ; $4c81: $6f
	rra                                              ; $4c82: $1f
	dec h                                            ; $4c83: $25
	rla                                              ; $4c84: $17
	ccf                                              ; $4c85: $3f
	ld b, b                                          ; $4c86: $40
	sub a                                            ; $4c87: $97
	ld a, [bc]                                       ; $4c88: $0a
	rst $38                                          ; $4c89: $ff
	dec hl                                           ; $4c8a: $2b
	rst $38                                          ; $4c8b: $ff
	db $eb                                           ; $4c8c: $eb
	ei                                               ; $4c8d: $fb
	xor d                                            ; $4c8e: $aa
	cp e                                             ; $4c8f: $bb
	inc bc                                           ; $4c90: $03
	ld b, b                                          ; $4c91: $40
	ld d, e                                          ; $4c92: $53
	ld b, b                                          ; $4c93: $40
	sbc c                                            ; $4c94: $99
	rst $38                                          ; $4c95: $ff
	ldh [rIE], a                                     ; $4c96: $e0 $ff
	ldh a, [$9f]                                     ; $4c98: $f0 $9f
	sbc b                                            ; $4c9a: $98
	inc bc                                           ; $4c9b: $03
	ld b, b                                          ; $4c9c: $40
	cpl                                              ; $4c9d: $2f
	ld b, b                                          ; $4c9e: $40
	sub h                                            ; $4c9f: $94
	nop                                              ; $4ca0: $00
	or b                                             ; $4ca1: $b0
	ld a, b                                          ; $4ca2: $78
	ld e, b                                          ; $4ca3: $58
	ret c                                            ; $4ca4: $d8

	db $f4                                           ; $4ca5: $f4
	db $fc                                           ; $4ca6: $fc
	or h                                             ; $4ca7: $b4
	and h                                            ; $4ca8: $a4
	ret c                                            ; $4ca9: $d8

	ret c                                            ; $4caa: $d8

	inc bc                                           ; $4cab: $03
	ld b, b                                          ; $4cac: $40
	ld a, e                                          ; $4cad: $7b
	ld b, b                                          ; $4cae: $40
	sbc l                                            ; $4caf: $9d
	rst $38                                          ; $4cb0: $ff
	nop                                              ; $4cb1: $00
	ld l, a                                          ; $4cb2: $6f
	ld a, $9b                                        ; $4cb3: $3e $9b
	ld a, a                                          ; $4cb5: $7f
	rrca                                             ; $4cb6: $0f
	dec a                                            ; $4cb7: $3d
	rrca                                             ; $4cb8: $0f
	scf                                              ; $4cb9: $37
	ld b, b                                          ; $4cba: $40
	sbc d                                            ; $4cbb: $9a
	dec bc                                           ; $4cbc: $0b
	rst $38                                          ; $4cbd: $ff
	dec hl                                           ; $4cbe: $2b
	ei                                               ; $4cbf: $fb
	ld [$3e7b], a                                    ; $4cc0: $ea $7b $3e
	inc bc                                           ; $4cc3: $03
	ld b, b                                          ; $4cc4: $40
	inc bc                                           ; $4cc5: $03
	ld b, b                                          ; $4cc6: $40
	inc bc                                           ; $4cc7: $03
	ld b, b                                          ; $4cc8: $40
	ld l, e                                          ; $4cc9: $6b
	ld b, b                                          ; $4cca: $40
	sbc [hl]                                         ; $4ccb: $9e
	ld hl, sp+$7b                                    ; $4ccc: $f8 $7b
	cp $99                                           ; $4cce: $fe $99
	db $fc                                           ; $4cd0: $fc
	inc c                                            ; $4cd1: $0c
	db $fc                                           ; $4cd2: $fc
	inc a                                            ; $4cd3: $3c
	ld hl, sp-$08                                    ; $4cd4: $f8 $f8
	inc bc                                           ; $4cd6: $03
	ld b, b                                          ; $4cd7: $40
	ld [hl], e                                       ; $4cd8: $73
	ld b, b                                          ; $4cd9: $40
	ld l, a                                          ; $4cda: $6f
	cp $97                                           ; $4cdb: $fe $97
	ld a, a                                          ; $4cdd: $7f
	nop                                              ; $4cde: $00
	ld a, $00                                        ; $4cdf: $3e $00
	nop                                              ; $4ce1: $00
	ld bc, $0303                                     ; $4ce2: $01 $03 $03
	ccf                                              ; $4ce5: $3f
	ld b, b                                          ; $4ce6: $40
	sbc h                                            ; $4ce7: $9c
	dec bc                                           ; $4ce8: $0b
	ei                                               ; $4ce9: $fb
	ld a, [bc]                                       ; $4cea: $0a
	ld a, e                                          ; $4ceb: $7b
	cp $98                                           ; $4cec: $fe $98
	ld l, $fb                                        ; $4cee: $2e $fb
	ld l, e                                          ; $4cf0: $6b
	rst $38                                          ; $4cf1: $ff
	db $ed                                           ; $4cf2: $ed
	rst $38                                          ; $4cf3: $ff
	jp z, $4063                                      ; $4cf4: $ca $63 $40

	sub l                                            ; $4cf7: $95
	or b                                             ; $4cf8: $b0
	ret nz                                           ; $4cf9: $c0

	db $e4                                           ; $4cfa: $e4
	call nz, $0808                                   ; $4cfb: $c4 $08 $08
	jr nc, jr_071_4d20                               ; $4cfe: $30 $20

	nop                                              ; $4d00: $00
	ld [$c97b], sp                                   ; $4d01: $08 $7b $c9
	sbc d                                            ; $4d04: $9a
	nop                                              ; $4d05: $00
	jp $ff01                                         ; $4d06: $c3 $01 $ff


	cp $6f                                           ; $4d09: $fe $6f
	ld [hl], l                                       ; $4d0b: $75
	add b                                            ; $4d0c: $80
	add b                                            ; $4d0d: $80
	nop                                              ; $4d0e: $00
	ret nz                                           ; $4d0f: $c0

	add b                                            ; $4d10: $80
	ldh [$c0], a                                     ; $4d11: $e0 $c0
	ld [hl], b                                       ; $4d13: $70
	ldh [$7f], a                                     ; $4d14: $e0 $7f
	rrca                                             ; $4d16: $0f
	ld a, h                                          ; $4d17: $7c
	rrca                                             ; $4d18: $0f
	ld a, b                                          ; $4d19: $78
	rra                                              ; $4d1a: $1f
	ld a, b                                          ; $4d1b: $78
	rra                                              ; $4d1c: $1f
	ld hl, sp+$2f                                    ; $4d1d: $f8 $2f
	db $fc                                           ; $4d1f: $fc

jr_071_4d20:
	ld l, a                                          ; $4d20: $6f
	ei                                               ; $4d21: $fb
	rst GetHLinHL                                          ; $4d22: $cf
	ld sp, hl                                        ; $4d23: $f9
	adc a                                            ; $4d24: $8f
	db $fc                                           ; $4d25: $fc
	rrca                                             ; $4d26: $0f
	cp $0b                                           ; $4d27: $fe $0b
	ld a, [hl]                                       ; $4d29: $7e
	dec bc                                           ; $4d2a: $0b
	ld a, $9b                                        ; $4d2b: $3e $9b
	inc bc                                           ; $4d2d: $03
	ld a, $03                                        ; $4d2e: $3e $03
	ld e, $7b                                        ; $4d30: $1e $7b
	cp $9d                                           ; $4d32: $fe $9d
	dec e                                            ; $4d34: $1d
	rlca                                             ; $4d35: $07
	ld [hl], a                                       ; $4d36: $77
	ret nz                                           ; $4d37: $c0

	rst SubAFromDE                                          ; $4d38: $df
	inc c                                            ; $4d39: $0c
	sbc h                                            ; $4d3a: $9c
	jr c, jr_071_4d79                                ; $4d3b: $38 $3c

	inc e                                            ; $4d3d: $1c
	cp $37                                           ; $4d3e: $fe $37
	ret nz                                           ; $4d40: $c0

	ld [hl], a                                       ; $4d41: $77
	ldh [$98], a                                     ; $4d42: $e0 $98
	inc e                                            ; $4d44: $1c
	inc c                                            ; $4d45: $0c
	inc a                                            ; $4d46: $3c
	inc a                                            ; $4d47: $3c
	jr @+$1e                                         ; $4d48: $18 $1c

	inc c                                            ; $4d4a: $0c
	dec hl                                           ; $4d4b: $2b
	ldh [$9e], a                                     ; $4d4c: $e0 $9e
	ldh [$73], a                                     ; $4d4e: $e0 $73
	ldh [$7f], a                                     ; $4d50: $e0 $7f
	cp a                                             ; $4d52: $bf
	sbc l                                            ; $4d53: $9d
	jr jr_071_4d62                                   ; $4d54: $18 $0c

	scf                                              ; $4d56: $37
	ldh [$c5], a                                     ; $4d57: $e0 $c5
	ld bc, $dc9d                                     ; $4d59: $01 $9d $dc
	ld c, b                                          ; $4d5c: $48
	ld l, a                                          ; $4d5d: $6f
	cp $80                                           ; $4d5e: $fe $80
	db $fc                                           ; $4d60: $fc
	ld c, b                                          ; $4d61: $48

jr_071_4d62:
	add sp, $58                                      ; $4d62: $e8 $58
	ld e, b                                          ; $4d64: $58
	ldh a, [$5f]                                     ; $4d65: $f0 $5f
	di                                               ; $4d67: $f3
	sbc a                                            ; $4d68: $9f
	rst FarCall                                          ; $4d69: $f7
	cp l                                             ; $4d6a: $bd
	xor $3b                                          ; $4d6b: $ee $3b
	db $ec                                           ; $4d6d: $ec
	ld [hl], a                                       ; $4d6e: $77
	ret z                                            ; $4d6f: $c8

	cp $81                                           ; $4d70: $fe $81
	db $fd                                           ; $4d72: $fd
	jp $e3fd                                         ; $4d73: $c3 $fd $e3


	rst $38                                          ; $4d76: $ff
	di                                               ; $4d77: $f3
	sbc a                                            ; $4d78: $9f

jr_071_4d79:
	sbc c                                            ; $4d79: $99
	sub a                                            ; $4d7a: $97
	sbc h                                            ; $4d7b: $9c
	sbc a                                            ; $4d7c: $9f
	sub [hl]                                         ; $4d7d: $96
	sbc a                                            ; $4d7e: $9f
	sbc b                                            ; $4d7f: $98
	sub a                                            ; $4d80: $97
	ld d, l                                          ; $4d81: $55
	db $dd                                           ; $4d82: $dd
	ret z                                            ; $4d83: $c8

	ret z                                            ; $4d84: $c8

	ld c, e                                          ; $4d85: $4b
	ld c, e                                          ; $4d86: $4b
	db $dd                                           ; $4d87: $dd
	rst $38                                          ; $4d88: $ff
	rst SubAFromDE                                          ; $4d89: $df
	ldh a, [$df]                                     ; $4d8a: $f0 $df
	rrca                                             ; $4d8c: $0f
	rst SubAFromDE                                          ; $4d8d: $df
	ld a, a                                          ; $4d8e: $7f
	rst SubAFromDE                                          ; $4d8f: $df
	rst $38                                          ; $4d90: $ff
	sub c                                            ; $4d91: $91
	ld a, a                                          ; $4d92: $7f
	rst GetHLinHL                                          ; $4d93: $cf
	rst $38                                          ; $4d94: $ff
	rst FarCall                                          ; $4d95: $f7
	rst $38                                          ; $4d96: $ff
	dec de                                           ; $4d97: $1b

jr_071_4d98:
	sbc l                                            ; $4d98: $9d
	bit 3, l                                         ; $4d99: $cb $5d
	ld h, h                                          ; $4d9b: $64
	ld [hl-], a                                      ; $4d9c: $32
	ld a, $0f                                        ; $4d9d: $3e $0f
	rrca                                             ; $4d9f: $0f
	ei                                               ; $4da0: $fb
	sbc d                                            ; $4da1: $9a
	ret nz                                           ; $4da2: $c0

	add b                                            ; $4da3: $80
	ret nz                                           ; $4da4: $c0

	add b                                            ; $4da5: $80
	ldh [$bf], a                                     ; $4da6: $e0 $bf
	ldh a, [$60]                                     ; $4da8: $f0 $60
	sbc $f0                                          ; $4daa: $de $f0
	rst SubAFromDE                                          ; $4dac: $df
	sbc b                                            ; $4dad: $98
	rst SubAFromDE                                          ; $4dae: $df
	cp b                                             ; $4daf: $b8
	sbc b                                            ; $4db0: $98
	ld [hl], h                                       ; $4db1: $74
	ld a, h                                          ; $4db2: $7c
	inc h                                            ; $4db3: $24
	inc h                                            ; $4db4: $24
	sbc b                                            ; $4db5: $98
	jr jr_071_4d98                                   ; $4db6: $18 $e0

	cp a                                             ; $4db8: $bf
	ret nz                                           ; $4db9: $c0

	ldh [$9a], a                                     ; $4dba: $e0 $9a
	add b                                            ; $4dbc: $80
	ld hl, sp-$40                                    ; $4dbd: $f8 $c0
	cp $f8                                           ; $4dbf: $fe $f8
	sbc $ff                                          ; $4dc1: $de $ff
	add b                                            ; $4dc3: $80
	ld hl, sp-$04                                    ; $4dc4: $f8 $fc
	ld hl, sp-$12                                    ; $4dc6: $f8 $ee
	db $fc                                           ; $4dc8: $fc
	scf                                              ; $4dc9: $37
	cp $93                                           ; $4dca: $fe $93
	rst $38                                          ; $4dcc: $ff
	cp c                                             ; $4dcd: $b9
	rst $38                                          ; $4dce: $ff
	db $ec                                           ; $4dcf: $ec
	rst $38                                          ; $4dd0: $ff
	add $ff                                          ; $4dd1: $c6 $ff
	add a                                            ; $4dd3: $87
	rst $38                                          ; $4dd4: $ff
	ld a, a                                          ; $4dd5: $7f
	db $fc                                           ; $4dd6: $fc
	ccf                                              ; $4dd7: $3f
	nop                                              ; $4dd8: $00
	db $fc                                           ; $4dd9: $fc
	add e                                            ; $4dda: $83
	di                                               ; $4ddb: $f3
	rrca                                             ; $4ddc: $0f
	rst AddAOntoHL                                          ; $4ddd: $ef
	rra                                              ; $4dde: $1f
	ld sp, hl                                        ; $4ddf: $f9
	add hl, de                                       ; $4de0: $19
	ei                                               ; $4de1: $fb
	dec de                                           ; $4de2: $1b
	sub l                                            ; $4de3: $95
	ld [hl], a                                       ; $4de4: $77
	rra                                              ; $4de5: $1f
	dec h                                            ; $4de6: $25
	rlca                                             ; $4de7: $07
	ld [bc], a                                       ; $4de8: $02
	ld [bc], a                                       ; $4de9: $02
	ld bc, $0201                                     ; $4dea: $01 $01 $02
	ld bc, $b27b                                     ; $4ded: $01 $7b $b2
	cp a                                             ; $4df0: $bf
	ldh a, [$fe]                                     ; $4df1: $f0 $fe
	add b                                            ; $4df3: $80
	rst $38                                          ; $4df4: $ff
	ld de, $12ff                                     ; $4df5: $11 $ff $12
	rst $38                                          ; $4df8: $ff
	ld a, [hl+]                                      ; $4df9: $2a
	rst $38                                          ; $4dfa: $ff
	db $eb                                           ; $4dfb: $eb
	rst $38                                          ; $4dfc: $ff
	ld l, e                                          ; $4dfd: $6b
	ld a, e                                          ; $4dfe: $7b
	adc d                                            ; $4dff: $8a
	sbc e                                            ; $4e00: $9b
	adc d                                            ; $4e01: $8a
	sbc e                                            ; $4e02: $9b
	ld l, [hl]                                       ; $4e03: $6e
	db $db                                           ; $4e04: $db
	db $eb                                           ; $4e05: $eb
	ld e, a                                          ; $4e06: $5f
	call $8a7f                                       ; $4e07: $cd $7f $8a
	cp $62                                           ; $4e0a: $fe $62
	sbc [hl]                                         ; $4e0c: $9e
	jp nz, $c43e                                     ; $4e0d: $c2 $3e $c4

	inc a                                            ; $4e10: $3c
	call nz, $273c                                   ; $4e11: $c4 $3c $27
	ld b, b                                          ; $4e14: $40
	sub a                                            ; $4e15: $97
	rst $38                                          ; $4e16: $ff
	add b                                            ; $4e17: $80
	rst $38                                          ; $4e18: $ff
	ret nz                                           ; $4e19: $c0

	cp $e1                                           ; $4e1a: $fe $e1
	cp $f1                                           ; $4e1c: $fe $f1
	inc bc                                           ; $4e1e: $03
	ld b, b                                          ; $4e1f: $40
	inc sp                                           ; $4e20: $33
	ld b, b                                          ; $4e21: $40
	ld a, e                                          ; $4e22: $7b
	cp $96                                           ; $4e23: $fe $96
	ld [hl], b                                       ; $4e25: $70
	ret c                                            ; $4e26: $d8

	ret c                                            ; $4e27: $d8

	cp b                                             ; $4e28: $b8
	cp b                                             ; $4e29: $b8
	db $f4                                           ; $4e2a: $f4
	db $fc                                           ; $4e2b: $fc
	and h                                            ; $4e2c: $a4
	and h                                            ; $4e2d: $a4
	inc bc                                           ; $4e2e: $03
	ld b, b                                          ; $4e2f: $40
	ld a, e                                          ; $4e30: $7b
	ld b, b                                          ; $4e31: $40
	ld a, a                                          ; $4e32: $7f
	sub d                                            ; $4e33: $92
	sub e                                            ; $4e34: $93
	cp $01                                           ; $4e35: $fe $01
	ei                                               ; $4e37: $fb
	rlca                                             ; $4e38: $07
	push af                                          ; $4e39: $f5
	dec c                                            ; $4e3a: $0d
	db $eb                                           ; $4e3b: $eb
	dec de                                           ; $4e3c: $1b
	ld l, a                                          ; $4e3d: $6f
	rra                                              ; $4e3e: $1f
	dec h                                            ; $4e3f: $25
	rla                                              ; $4e40: $17
	ccf                                              ; $4e41: $3f
	ld b, b                                          ; $4e42: $40
	sub a                                            ; $4e43: $97
	ld a, [bc]                                       ; $4e44: $0a
	rst $38                                          ; $4e45: $ff
	dec hl                                           ; $4e46: $2b
	rst $38                                          ; $4e47: $ff
	db $eb                                           ; $4e48: $eb
	ei                                               ; $4e49: $fb
	xor d                                            ; $4e4a: $aa
	cp e                                             ; $4e4b: $bb
	inc bc                                           ; $4e4c: $03
	ld b, b                                          ; $4e4d: $40
	ld d, e                                          ; $4e4e: $53
	ld b, b                                          ; $4e4f: $40
	sbc c                                            ; $4e50: $99
	rst $38                                          ; $4e51: $ff
	ldh [rIE], a                                     ; $4e52: $e0 $ff
	ldh a, [$9f]                                     ; $4e54: $f0 $9f
	sbc b                                            ; $4e56: $98
	inc bc                                           ; $4e57: $03
	ld b, b                                          ; $4e58: $40
	cpl                                              ; $4e59: $2f
	ld b, b                                          ; $4e5a: $40
	sub h                                            ; $4e5b: $94
	nop                                              ; $4e5c: $00
	or b                                             ; $4e5d: $b0
	ld a, b                                          ; $4e5e: $78
	ld e, b                                          ; $4e5f: $58
	ret c                                            ; $4e60: $d8

	db $f4                                           ; $4e61: $f4
	db $fc                                           ; $4e62: $fc
	or h                                             ; $4e63: $b4
	and h                                            ; $4e64: $a4
	ret c                                            ; $4e65: $d8

	ret c                                            ; $4e66: $d8

	inc bc                                           ; $4e67: $03
	ld b, b                                          ; $4e68: $40
	ld a, e                                          ; $4e69: $7b
	ld b, b                                          ; $4e6a: $40
	sbc l                                            ; $4e6b: $9d
	rst $38                                          ; $4e6c: $ff
	nop                                              ; $4e6d: $00
	ld l, a                                          ; $4e6e: $6f
	ld a, $9b                                        ; $4e6f: $3e $9b
	ld a, a                                          ; $4e71: $7f
	rrca                                             ; $4e72: $0f
	dec a                                            ; $4e73: $3d
	rrca                                             ; $4e74: $0f
	scf                                              ; $4e75: $37
	ld b, b                                          ; $4e76: $40
	sbc d                                            ; $4e77: $9a
	dec bc                                           ; $4e78: $0b
	rst $38                                          ; $4e79: $ff
	dec hl                                           ; $4e7a: $2b
	ei                                               ; $4e7b: $fb
	ld [$3e7b], a                                    ; $4e7c: $ea $7b $3e
	dec bc                                           ; $4e7f: $0b
	ld b, b                                          ; $4e80: $40
	sub a                                            ; $4e81: $97
	ldh a, [$9b]                                     ; $4e82: $f0 $9b
	rst FarCall                                          ; $4e84: $f7
	or a                                             ; $4e85: $b7
	rst AddAOntoHL                                          ; $4e86: $ef
	ccf                                              ; $4e87: $3f
	db $ec                                           ; $4e88: $ec
	ld a, a                                          ; $4e89: $7f
	inc bc                                           ; $4e8a: $03
	ld b, b                                          ; $4e8b: $40
	dec hl                                           ; $4e8c: $2b
	ld b, b                                          ; $4e8d: $40
	ld a, e                                          ; $4e8e: $7b
	ld a, $9d                                        ; $4e8f: $3e $9d
	ld h, b                                          ; $4e91: $60
	add b                                            ; $4e92: $80
	ld l, a                                          ; $4e93: $6f
	ld b, b                                          ; $4e94: $40
	sbc [hl]                                         ; $4e95: $9e
	ld hl, sp-$41                                    ; $4e96: $f8 $bf
	ld hl, sp-$04                                    ; $4e98: $f8 $fc
	sbc d                                            ; $4e9a: $9a
	inc c                                            ; $4e9b: $0c
	db $fc                                           ; $4e9c: $fc
	inc a                                            ; $4e9d: $3c
	ld hl, sp-$08                                    ; $4e9e: $f8 $f8
	inc bc                                           ; $4ea0: $03
	ld b, b                                          ; $4ea1: $40
	sbc [hl]                                         ; $4ea2: $9e
	jr jr_071_4f1c                                   ; $4ea3: $18 $77

	ld b, b                                          ; $4ea5: $40
	ld l, a                                          ; $4ea6: $6f
	cp $9e                                           ; $4ea7: $fe $9e
	ld a, a                                          ; $4ea9: $7f
	cp a                                             ; $4eaa: $bf
	ld a, $00                                        ; $4eab: $3e $00
	sbc h                                            ; $4ead: $9c
	ld bc, $0303                                     ; $4eae: $01 $03 $03
	ccf                                              ; $4eb1: $3f
	ld b, b                                          ; $4eb2: $40
	sbc h                                            ; $4eb3: $9c
	dec bc                                           ; $4eb4: $0b
	ei                                               ; $4eb5: $fb
	ld a, [bc]                                       ; $4eb6: $0a
	ld a, e                                          ; $4eb7: $7b
	cp $98                                           ; $4eb8: $fe $98
	ld l, $fb                                        ; $4eba: $2e $fb
	ld l, e                                          ; $4ebc: $6b
	rst $38                                          ; $4ebd: $ff
	db $ed                                           ; $4ebe: $ed
	rst $38                                          ; $4ebf: $ff
	jp z, $4063                                      ; $4ec0: $ca $63 $40

	sub l                                            ; $4ec3: $95
	or b                                             ; $4ec4: $b0
	ret nz                                           ; $4ec5: $c0

	ldh [$c0], a                                     ; $4ec6: $e0 $c0
	inc e                                            ; $4ec8: $1c
	jr jr_071_4efb                                   ; $4ec9: $18 $30

	jr nz, jr_071_4ed1                               ; $4ecb: $20 $04

	ld [$c97b], sp                                   ; $4ecd: $08 $7b $c9
	sbc d                                            ; $4ed0: $9a

jr_071_4ed1:
	nop                                              ; $4ed1: $00
	jp $ff01                                         ; $4ed2: $c3 $01 $ff


	cp $6f                                           ; $4ed5: $fe $6f
	ld [hl], l                                       ; $4ed7: $75
	sbc [hl]                                         ; $4ed8: $9e
	add b                                            ; $4ed9: $80
	ld a, e                                          ; $4eda: $7b
	halt                                             ; $4edb: $76
	ld a, a                                          ; $4edc: $7f
	and $82                                          ; $4edd: $e6 $82
	ld [hl], b                                       ; $4edf: $70
	ldh [$7f], a                                     ; $4ee0: $e0 $7f
	rrca                                             ; $4ee2: $0f
	ld a, h                                          ; $4ee3: $7c
	rrca                                             ; $4ee4: $0f
	ld a, b                                          ; $4ee5: $78
	rra                                              ; $4ee6: $1f
	ld a, b                                          ; $4ee7: $78
	rra                                              ; $4ee8: $1f
	ld hl, sp+$2f                                    ; $4ee9: $f8 $2f
	db $fc                                           ; $4eeb: $fc
	ld l, a                                          ; $4eec: $6f
	ei                                               ; $4eed: $fb
	rst GetHLinHL                                          ; $4eee: $cf
	ld sp, hl                                        ; $4eef: $f9
	adc a                                            ; $4ef0: $8f
	db $fc                                           ; $4ef1: $fc
	rrca                                             ; $4ef2: $0f
	cp $0b                                           ; $4ef3: $fe $0b
	ld a, [hl]                                       ; $4ef5: $7e
	dec bc                                           ; $4ef6: $0b
	ld a, $03                                        ; $4ef7: $3e $03
	ld a, $03                                        ; $4ef9: $3e $03

jr_071_4efb:
	ld e, $7b                                        ; $4efb: $1e $7b
	cp $9d                                           ; $4efd: $fe $9d
	dec e                                            ; $4eff: $1d
	rlca                                             ; $4f00: $07
	ld [hl], e                                       ; $4f01: $73
	ret nz                                           ; $4f02: $c0

	sbc h                                            ; $4f03: $9c
	inc e                                            ; $4f04: $1c

jr_071_4f05:
	inc a                                            ; $4f05: $3c
	jr c, jr_071_4f05                                ; $4f06: $38 $fd

	scf                                              ; $4f08: $37
	ret nz                                           ; $4f09: $c0

	ld [hl], a                                       ; $4f0a: $77
	ldh [$98], a                                     ; $4f0b: $e0 $98
	jr @+$1e                                         ; $4f0d: $18 $1c

	inc a                                            ; $4f0f: $3c
	inc a                                            ; $4f10: $3c
	jr jr_071_4f2f                                   ; $4f11: $18 $1c

	inc c                                            ; $4f13: $0c
	inc de                                           ; $4f14: $13
	ldh [$9b], a                                     ; $4f15: $e0 $9b
	inc a                                            ; $4f17: $3c
	inc e                                            ; $4f18: $1c
	jr jr_071_4f27                                   ; $4f19: $18 $0c

	scf                                              ; $4f1b: $37

jr_071_4f1c:
	ldh [$c2], a                                     ; $4f1c: $e0 $c2
	ld bc, $dc9d                                     ; $4f1e: $01 $9d $dc
	ld c, b                                          ; $4f21: $48
	ld l, a                                          ; $4f22: $6f
	cp $80                                           ; $4f23: $fe $80
	db $fc                                           ; $4f25: $fc
	ld c, b                                          ; $4f26: $48

jr_071_4f27:
	add sp, $58                                      ; $4f27: $e8 $58
	ld e, b                                          ; $4f29: $58
	ldh a, [$5f]                                     ; $4f2a: $f0 $5f
	ldh a, [$9f]                                     ; $4f2c: $f0 $9f
	rst $38                                          ; $4f2e: $ff

jr_071_4f2f:
	cp a                                             ; $4f2f: $bf
	db $e3                                           ; $4f30: $e3
	ccf                                              ; $4f31: $3f
	ldh [$7f], a                                     ; $4f32: $e0 $7f
	ret nz                                           ; $4f34: $c0

	rst $38                                          ; $4f35: $ff
	add b                                            ; $4f36: $80
	rst $38                                          ; $4f37: $ff
	pop bc                                           ; $4f38: $c1
	db $fd                                           ; $4f39: $fd
	db $e3                                           ; $4f3a: $e3
	rst $38                                          ; $4f3b: $ff
	di                                               ; $4f3c: $f3
	sbc a                                            ; $4f3d: $9f
	sbc b                                            ; $4f3e: $98
	sub a                                            ; $4f3f: $97
	sbc h                                            ; $4f40: $9c
	sbc a                                            ; $4f41: $9f
	sub [hl]                                         ; $4f42: $96
	sbc a                                            ; $4f43: $9f
	sbc b                                            ; $4f44: $98
	sub a                                            ; $4f45: $97
	ld d, l                                          ; $4f46: $55
	db $dd                                           ; $4f47: $dd
	ret z                                            ; $4f48: $c8

	ret z                                            ; $4f49: $c8

	ld c, e                                          ; $4f4a: $4b
	ld c, e                                          ; $4f4b: $4b
	db $dd                                           ; $4f4c: $dd
	rst $38                                          ; $4f4d: $ff
	rst SubAFromDE                                          ; $4f4e: $df
	ldh a, [$df]                                     ; $4f4f: $f0 $df
	rrca                                             ; $4f51: $0f
	rst SubAFromDE                                          ; $4f52: $df
	ld a, a                                          ; $4f53: $7f
	rst SubAFromDE                                          ; $4f54: $df
	rst $38                                          ; $4f55: $ff
	sub c                                            ; $4f56: $91
	ld a, a                                          ; $4f57: $7f
	rst GetHLinHL                                          ; $4f58: $cf
	rst $38                                          ; $4f59: $ff
	rst FarCall                                          ; $4f5a: $f7
	rst $38                                          ; $4f5b: $ff
	dec de                                           ; $4f5c: $1b
	sbc l                                            ; $4f5d: $9d

jr_071_4f5e:
	bit 3, l                                         ; $4f5e: $cb $5d
	ld h, h                                          ; $4f60: $64
	ld [hl-], a                                      ; $4f61: $32
	ld a, $0f                                        ; $4f62: $3e $0f
	rrca                                             ; $4f64: $0f
	ei                                               ; $4f65: $fb
	adc b                                            ; $4f66: $88
	add b                                            ; $4f67: $80
	nop                                              ; $4f68: $00
	ret nz                                           ; $4f69: $c0

	add b                                            ; $4f6a: $80
	ldh [$c0], a                                     ; $4f6b: $e0 $c0
	ldh a, [rP1]                                     ; $4f6d: $f0 $00
	add b                                            ; $4f6f: $80
	ld [hl], b                                       ; $4f70: $70
	ldh a, [$f0]                                     ; $4f71: $f0 $f0
	sbc b                                            ; $4f73: $98
	sbc b                                            ; $4f74: $98
	cp b                                             ; $4f75: $b8
	cp b                                             ; $4f76: $b8
	ld [hl], h                                       ; $4f77: $74
	ld a, h                                          ; $4f78: $7c
	inc h                                            ; $4f79: $24
	inc h                                            ; $4f7a: $24
	sbc b                                            ; $4f7b: $98
	jr jr_071_4f5e                                   ; $4f7c: $18 $e0

	cp a                                             ; $4f7e: $bf
	ret nz                                           ; $4f7f: $c0

	ldh [$9a], a                                     ; $4f80: $e0 $9a
	add b                                            ; $4f82: $80
	ld hl, sp-$40                                    ; $4f83: $f8 $c0
	cp $f8                                           ; $4f85: $fe $f8
	sbc $ff                                          ; $4f87: $de $ff
	add b                                            ; $4f89: $80
	ld hl, sp-$04                                    ; $4f8a: $f8 $fc

jr_071_4f8c:
	ld hl, sp-$12                                    ; $4f8c: $f8 $ee
	db $fc                                           ; $4f8e: $fc
	scf                                              ; $4f8f: $37
	cp $93                                           ; $4f90: $fe $93
	rst $38                                          ; $4f92: $ff
	cp c                                             ; $4f93: $b9
	rst $38                                          ; $4f94: $ff
	db $ec                                           ; $4f95: $ec
	rst $38                                          ; $4f96: $ff
	add $ff                                          ; $4f97: $c6 $ff
	add a                                            ; $4f99: $87
	rst $38                                          ; $4f9a: $ff
	ld a, a                                          ; $4f9b: $7f
	db $fc                                           ; $4f9c: $fc
	ccf                                              ; $4f9d: $3f
	jr nc, jr_071_4f8c                               ; $4f9e: $30 $ec

	di                                               ; $4fa0: $f3
	di                                               ; $4fa1: $f3
	ld l, a                                          ; $4fa2: $6f
	rst $38                                          ; $4fa3: $ff
	rrca                                             ; $4fa4: $0f
	jp hl                                            ; $4fa5: $e9


	add hl, de                                       ; $4fa6: $19
	ei                                               ; $4fa7: $fb
	dec de                                           ; $4fa8: $1b
	sub h                                            ; $4fa9: $94
	ld [hl], a                                       ; $4faa: $77
	ccf                                              ; $4fab: $3f
	dec h                                            ; $4fac: $25
	rlca                                             ; $4fad: $07
	ld [bc], a                                       ; $4fae: $02
	ld [bc], a                                       ; $4faf: $02
	ld bc, $0201                                     ; $4fb0: $01 $01 $02
	ld bc, $be00                                     ; $4fb3: $01 $00 $be
	ret nz                                           ; $4fb6: $c0

	ldh a, [$fe]                                     ; $4fb7: $f0 $fe
	add b                                            ; $4fb9: $80
	rst $38                                          ; $4fba: $ff
	ld de, $12ff                                     ; $4fbb: $11 $ff $12
	rst $38                                          ; $4fbe: $ff
	ld a, [hl+]                                      ; $4fbf: $2a
	rst $38                                          ; $4fc0: $ff
	db $eb                                           ; $4fc1: $eb
	rst $38                                          ; $4fc2: $ff
	ld l, e                                          ; $4fc3: $6b
	ld a, e                                          ; $4fc4: $7b
	adc d                                            ; $4fc5: $8a
	sbc e                                            ; $4fc6: $9b
	adc d                                            ; $4fc7: $8a
	sbc e                                            ; $4fc8: $9b
	ld l, [hl]                                       ; $4fc9: $6e
	db $db                                           ; $4fca: $db
	db $eb                                           ; $4fcb: $eb
	ld e, a                                          ; $4fcc: $5f
	call $8a7f                                       ; $4fcd: $cd $7f $8a
	cp $62                                           ; $4fd0: $fe $62
	sbc [hl]                                         ; $4fd2: $9e
	jp nz, $c43e                                     ; $4fd3: $c2 $3e $c4

	inc a                                            ; $4fd6: $3c
	call nz, $1b3c                                   ; $4fd7: $c4 $3c $1b
	ld b, b                                          ; $4fda: $40
	ld a, a                                          ; $4fdb: $7f
	sub b                                            ; $4fdc: $90
	sbc d                                            ; $4fdd: $9a
	pop hl                                           ; $4fde: $e1
	rst $38                                          ; $4fdf: $ff
	pop af                                           ; $4fe0: $f1
	sbc a                                            ; $4fe1: $9f
	sbc c                                            ; $4fe2: $99
	inc bc                                           ; $4fe3: $03
	ld b, b                                          ; $4fe4: $40
	dec sp                                           ; $4fe5: $3b
	ld b, b                                          ; $4fe6: $40
	ld a, a                                          ; $4fe7: $7f
	cp $95                                           ; $4fe8: $fe $95
	ld hl, sp+$70                                    ; $4fea: $f8 $70
	ret c                                            ; $4fec: $d8

	ret c                                            ; $4fed: $d8

	cp b                                             ; $4fee: $b8

Call_071_4fef:
	cp b                                             ; $4fef: $b8
	db $f4                                           ; $4ff0: $f4
	db $fc                                           ; $4ff1: $fc
	and h                                            ; $4ff2: $a4
	and h                                            ; $4ff3: $a4
	inc bc                                           ; $4ff4: $03
	ld b, b                                          ; $4ff5: $40
	ld a, e                                          ; $4ff6: $7b
	ld b, b                                          ; $4ff7: $40
	sub c                                            ; $4ff8: $91
	rst AddAOntoHL                                          ; $4ff9: $ef
	ldh a, [$fe]                                     ; $4ffa: $f0 $fe
	ld h, c                                          ; $4ffc: $61
	ei                                               ; $4ffd: $fb
	rlca                                             ; $4ffe: $07
	push af                                          ; $4fff: $f5
	dec c                                            ; $5000: $0d
	db $eb                                           ; $5001: $eb
	dec de                                           ; $5002: $1b
	ld l, a                                          ; $5003: $6f
	rra                                              ; $5004: $1f
	dec h                                            ; $5005: $25
	rla                                              ; $5006: $17
	ccf                                              ; $5007: $3f
	ld b, b                                          ; $5008: $40
	sub a                                            ; $5009: $97
	ld a, [bc]                                       ; $500a: $0a
	rst $38                                          ; $500b: $ff
	dec hl                                           ; $500c: $2b
	rst $38                                          ; $500d: $ff
	db $eb                                           ; $500e: $eb
	ei                                               ; $500f: $fb
	xor d                                            ; $5010: $aa
	cp e                                             ; $5011: $bb
	inc bc                                           ; $5012: $03
	ld b, b                                          ; $5013: $40
	ld d, e                                          ; $5014: $53
	ld b, b                                          ; $5015: $40
	sbc e                                            ; $5016: $9b
	rst $38                                          ; $5017: $ff
	ldh [rIE], a                                     ; $5018: $e0 $ff
	ldh a, [rSC]                                     ; $501a: $f0 $02
	add b                                            ; $501c: $80
	dec hl                                           ; $501d: $2b
	ld b, b                                          ; $501e: $40
	ld a, a                                          ; $501f: $7f
	cp $95                                           ; $5020: $fe $95
	or b                                             ; $5022: $b0
	ld a, b                                          ; $5023: $78
	ld e, b                                          ; $5024: $58
	ret c                                            ; $5025: $d8

	db $f4                                           ; $5026: $f4
	db $fc                                           ; $5027: $fc
	or h                                             ; $5028: $b4
	and h                                            ; $5029: $a4
	ret c                                            ; $502a: $d8

	ret c                                            ; $502b: $d8

	inc bc                                           ; $502c: $03
	ld b, b                                          ; $502d: $40
	ld a, e                                          ; $502e: $7b
	ld b, b                                          ; $502f: $40
	sbc e                                            ; $5030: $9b
	rst $38                                          ; $5031: $ff
	ld h, b                                          ; $5032: $60
	cp $01                                           ; $5033: $fe $01
	ld [hl], a                                       ; $5035: $77
	ld a, $9b                                        ; $5036: $3e $9b
	ld a, a                                          ; $5038: $7f
	rrca                                             ; $5039: $0f
	dec a                                            ; $503a: $3d
	rrca                                             ; $503b: $0f
	scf                                              ; $503c: $37
	ld b, b                                          ; $503d: $40
	sbc d                                            ; $503e: $9a
	dec bc                                           ; $503f: $0b
	rst $38                                          ; $5040: $ff
	dec hl                                           ; $5041: $2b
	ei                                               ; $5042: $fb
	ld [$3e7b], a                                    ; $5043: $ea $7b $3e
	inc bc                                           ; $5046: $03
	ld b, b                                          ; $5047: $40
	sbc d                                            ; $5048: $9a
	ldh a, [$bf]                                     ; $5049: $f0 $bf
	rst AddAOntoHL                                          ; $504b: $ef
	ccf                                              ; $504c: $3f
	pop hl                                           ; $504d: $e1
	inc bc                                           ; $504e: $03
	ld b, b                                          ; $504f: $40
	rra                                              ; $5050: $1f
	ld b, b                                          ; $5051: $40
	ld a, a                                          ; $5052: $7f
	ld d, [hl]                                       ; $5053: $56
	ld a, a                                          ; $5054: $7f
	ld b, b                                          ; $5055: $40
	sbc [hl]                                         ; $5056: $9e
	ldh [$72], a                                     ; $5057: $e0 $72
	ld a, [hl]                                       ; $5059: $7e
	cp a                                             ; $505a: $bf
	ld hl, sp-$04                                    ; $505b: $f8 $fc
	sbc d                                            ; $505d: $9a
	inc c                                            ; $505e: $0c

jr_071_505f:
	db $fc                                           ; $505f: $fc
	inc a                                            ; $5060: $3c
	ld hl, sp-$08                                    ; $5061: $f8 $f8
	inc bc                                           ; $5063: $03
	ld b, b                                          ; $5064: $40
	sub a                                            ; $5065: $97
	jr jr_071_505f                                   ; $5066: $18 $f7

	ld hl, sp-$11                                    ; $5068: $f8 $ef
	ld [hl], b                                       ; $506a: $70
	rst $38                                          ; $506b: $ff
	ld h, b                                          ; $506c: $60
	rst $38                                          ; $506d: $ff
	cp l                                             ; $506e: $bd
	rst $38                                          ; $506f: $ff
	ld a, a                                          ; $5070: $7f
	ld a, $00                                        ; $5071: $3e $00
	sbc h                                            ; $5073: $9c
	ld bc, $0303                                     ; $5074: $01 $03 $03
	ccf                                              ; $5077: $3f
	ld b, b                                          ; $5078: $40
	sbc h                                            ; $5079: $9c
	dec bc                                           ; $507a: $0b
	ei                                               ; $507b: $fb
	ld a, [bc]                                       ; $507c: $0a
	ld a, e                                          ; $507d: $7b
	cp $98                                           ; $507e: $fe $98
	ld l, $fb                                        ; $5080: $2e $fb
	ld l, e                                          ; $5082: $6b
	rst $38                                          ; $5083: $ff
	db $ed                                           ; $5084: $ed
	rst $38                                          ; $5085: $ff
	jp z, $4063                                      ; $5086: $ca $63 $40

	sub l                                            ; $5089: $95
	or b                                             ; $508a: $b0
	ret nz                                           ; $508b: $c0

	ldh [$c0], a                                     ; $508c: $e0 $c0
	inc e                                            ; $508e: $1c
	jr jr_071_50c1                                   ; $508f: $18 $30

	jr nz, jr_071_5097                               ; $5091: $20 $04

	ld [$c97b], sp                                   ; $5093: $08 $7b $c9
	sbc d                                            ; $5096: $9a

jr_071_5097:
	nop                                              ; $5097: $00
	jp $ff01                                         ; $5098: $c3 $01 $ff


	cp $6f                                           ; $509b: $fe $6f
	ld [hl], l                                       ; $509d: $75
	ld l, [hl]                                       ; $509e: $6e
	or [hl]                                          ; $509f: $b6
	add d                                            ; $50a0: $82
	ld [hl], b                                       ; $50a1: $70
	ldh [$7f], a                                     ; $50a2: $e0 $7f
	rrca                                             ; $50a4: $0f
	ld a, h                                          ; $50a5: $7c
	rrca                                             ; $50a6: $0f
	ld a, b                                          ; $50a7: $78
	rra                                              ; $50a8: $1f
	ld a, b                                          ; $50a9: $78
	rra                                              ; $50aa: $1f
	ld hl, sp+$2f                                    ; $50ab: $f8 $2f
	db $fc                                           ; $50ad: $fc
	ld l, a                                          ; $50ae: $6f
	ei                                               ; $50af: $fb
	rst GetHLinHL                                          ; $50b0: $cf
	ld sp, hl                                        ; $50b1: $f9
	adc a                                            ; $50b2: $8f
	db $fc                                           ; $50b3: $fc
	rrca                                             ; $50b4: $0f
	cp $0b                                           ; $50b5: $fe $0b
	ld a, [hl]                                       ; $50b7: $7e
	dec bc                                           ; $50b8: $0b
	ld a, $03                                        ; $50b9: $3e $03
	ld a, $03                                        ; $50bb: $3e $03
	ld e, $7b                                        ; $50bd: $1e $7b
	cp $9d                                           ; $50bf: $fe $9d

jr_071_50c1:
	dec e                                            ; $50c1: $1d
	rlca                                             ; $50c2: $07
	ld [hl], e                                       ; $50c3: $73
	ret nz                                           ; $50c4: $c0

	sbc h                                            ; $50c5: $9c
	inc e                                            ; $50c6: $1c

jr_071_50c7:
	inc a                                            ; $50c7: $3c
	jr c, jr_071_50c7                                ; $50c8: $38 $fd

	scf                                              ; $50ca: $37
	ret nz                                           ; $50cb: $c0

	ld [hl], a                                       ; $50cc: $77
	ldh [$98], a                                     ; $50cd: $e0 $98
	jr @+$1e                                         ; $50cf: $18 $1c

	inc a                                            ; $50d1: $3c
	inc a                                            ; $50d2: $3c
	jr jr_071_50f1                                   ; $50d3: $18 $1c

	inc c                                            ; $50d5: $0c
	inc de                                           ; $50d6: $13
	ldh [$9b], a                                     ; $50d7: $e0 $9b
	inc a                                            ; $50d9: $3c
	inc e                                            ; $50da: $1c
	jr @+$0e                                         ; $50db: $18 $0c

	scf                                              ; $50dd: $37
	ldh [$a2], a                                     ; $50de: $e0 $a2
	ld [bc], a                                       ; $50e0: $02
	pop af                                           ; $50e1: $f1
	db $db                                           ; $50e2: $db
	ld bc, $029d                                     ; $50e3: $01 $9d $02
	inc bc                                           ; $50e6: $03
	ld h, a                                          ; $50e7: $67
	cp $67                                           ; $50e8: $fe $67
	xor $dd                                          ; $50ea: $ee $dd
	ld bc, $dffb                                     ; $50ec: $01 $fb $df
	inc bc                                           ; $50ef: $03
	add b                                            ; $50f0: $80

jr_071_50f1:
	rrca                                             ; $50f1: $0f
	ld c, $1e                                        ; $50f2: $0e $1e
	add hl, de                                       ; $50f4: $19
	jr c, @+$29                                      ; $50f5: $38 $27

	ld l, a                                          ; $50f7: $6f
	ld e, a                                          ; $50f8: $5f
	or c                                             ; $50f9: $b1
	pop af                                           ; $50fa: $f1
	rst JumpTable                                          ; $50fb: $c7
	add $8f                                          ; $50fc: $c6 $8f
	adc b                                            ; $50fe: $88
	inc e                                            ; $50ff: $1c
	inc de                                           ; $5100: $13
	inc sp                                           ; $5101: $33
	cpl                                              ; $5102: $2f
	inc l                                            ; $5103: $2c
	inc a                                            ; $5104: $3c
	ld d, e                                          ; $5105: $53
	ld [hl], e                                       ; $5106: $73
	ld l, h                                          ; $5107: $6c
	ld l, a                                          ; $5108: $6f
	ld e, a                                          ; $5109: $5f
	ld e, a                                          ; $510a: $5f
	ld b, c                                          ; $510b: $41
	ld b, c                                          ; $510c: $41
	inc bc                                           ; $510d: $03
	ld [bc], a                                       ; $510e: $02
	rlca                                             ; $510f: $07
	sbc d                                            ; $5110: $9a
	inc b                                            ; $5111: $04
	rra                                              ; $5112: $1f
	add hl, de                                       ; $5113: $19
	ld a, [hl]                                       ; $5114: $7e
	ld a, [hl]                                       ; $5115: $7e
	db $e3                                           ; $5116: $e3
	rst SubAFromDE                                          ; $5117: $df
	ld bc, $0697                                     ; $5118: $01 $97 $06
	rlca                                             ; $511b: $07
	ld [$100f], sp                                   ; $511c: $08 $0f $10
	rra                                              ; $511f: $1f
	jr nz, jr_071_5161                               ; $5120: $20 $3f

	ld [hl], a                                       ; $5122: $77
	cp $8e                                           ; $5123: $fe $8e
	ld b, b                                          ; $5125: $40
	ld a, a                                          ; $5126: $7f
	ld c, a                                          ; $5127: $4f
	ld a, a                                          ; $5128: $7f
	ld d, b                                          ; $5129: $50
	ld a, a                                          ; $512a: $7f
	ldh [rIE], a                                     ; $512b: $e0 $ff
	rst SubAFromDE                                          ; $512d: $df
	rst $38                                          ; $512e: $ff
	and b                                            ; $512f: $a0
	rst $38                                          ; $5130: $ff
	ret nz                                           ; $5131: $c0

	rst $38                                          ; $5132: $ff
	add b                                            ; $5133: $80
	rst $38                                          ; $5134: $ff
	nop                                              ; $5135: $00
	ld d, a                                          ; $5136: $57
	cp $73                                           ; $5137: $fe $73
	jp nc, $81df                                     ; $5139: $d2 $df $81

	add [hl]                                         ; $513c: $86
	jp $f243                                         ; $513d: $c3 $43 $f2


	inc sp                                           ; $5140: $33
	cp $8f                                           ; $5141: $fe $8f
	db $fd                                           ; $5143: $fd
	rst JumpTable                                          ; $5144: $c7
	ld a, [hl]                                       ; $5145: $7e
	ld a, a                                          ; $5146: $7f
	db $fd                                           ; $5147: $fd
	add [hl]                                         ; $5148: $86
	db $fd                                           ; $5149: $fd
	rlca                                             ; $514a: $07
	ld b, $ff                                        ; $514b: $06 $ff
	inc a                                            ; $514d: $3c
	rst $38                                          ; $514e: $ff
	call c, $ffe7                                    ; $514f: $dc $e7 $ff
	add a                                            ; $5152: $87
	push bc                                          ; $5153: $c5
	ld a, $0c                                        ; $5154: $3e $0c
	sbc $ff                                          ; $5156: $de $ff
	add c                                            ; $5158: $81
	ld l, e                                          ; $5159: $6b
	halt                                             ; $515a: $76
	sub $ef                                          ; $515b: $d6 $ef
	ld l, [hl]                                       ; $515d: $6e
	db $db                                           ; $515e: $db
	db $db                                           ; $515f: $db
	or a                                             ; $5160: $b7

jr_071_5161:
	ld [hl], l                                       ; $5161: $75
	xor a                                            ; $5162: $af
	or l                                             ; $5163: $b5
	ld l, a                                          ; $5164: $6f
	rst $38                                          ; $5165: $ff
	ld c, l                                          ; $5166: $4d
	ld a, [hl]                                       ; $5167: $7e
	reti                                             ; $5168: $d9


	db $fc                                           ; $5169: $fc
	db $db                                           ; $516a: $db
	ld l, l                                          ; $516b: $6d
	ld l, e                                          ; $516c: $6b
	ld l, d                                          ; $516d: $6a
	ld l, [hl]                                       ; $516e: $6e
	ld c, d                                          ; $516f: $4a
	ld c, [hl]                                       ; $5170: $4e
	ld b, [hl]                                       ; $5171: $46
	ld b, [hl]                                       ; $5172: $46
	ld b, $06                                        ; $5173: $06 $06
	ld [bc], a                                       ; $5175: $02
	ld [bc], a                                       ; $5176: $02
	ld sp, hl                                        ; $5177: $f9
	rst SubAFromDE                                          ; $5178: $df
	inc bc                                           ; $5179: $03
	sbc [hl]                                         ; $517a: $9e
	inc c                                            ; $517b: $0c
	ld [hl], e                                       ; $517c: $73
	adc [hl]                                         ; $517d: $8e
	ld a, a                                          ; $517e: $7f
	sub d                                            ; $517f: $92
	ld a, a                                          ; $5180: $7f
	sbc h                                            ; $5181: $9c
	sbc h                                            ; $5182: $9c
	ldh a, [rIE]                                     ; $5183: $f0 $ff
	rrca                                             ; $5185: $0f
	ld d, e                                          ; $5186: $53
	sbc d                                            ; $5187: $9a
	ld l, a                                          ; $5188: $6f
	ldh a, [$7f]                                     ; $5189: $f0 $7f
	add [hl]                                         ; $518b: $86
	sub h                                            ; $518c: $94
	ld h, b                                          ; $518d: $60
	rst $38                                          ; $518e: $ff
	jr c, @+$01                                      ; $518f: $38 $ff

	inc c                                            ; $5191: $0c
	rst $38                                          ; $5192: $ff
	ld b, $ff                                        ; $5193: $06 $ff
	ld [bc], a                                       ; $5195: $02
	rst $38                                          ; $5196: $ff
	ld bc, $fe6b                                     ; $5197: $01 $6b $fe
	cpl                                              ; $519a: $2f
	ld b, d                                          ; $519b: $42
	ld a, a                                          ; $519c: $7f
	ld a, a                                          ; $519d: $7f
	add b                                            ; $519e: $80
	dec bc                                           ; $519f: $0b
	inc c                                            ; $51a0: $0c
	dec e                                            ; $51a1: $1d
	inc de                                           ; $51a2: $13
	ld [hl], $2f                                     ; $51a3: $36 $2f
	ld l, c                                          ; $51a5: $69
	ld e, [hl]                                       ; $51a6: $5e
	rst SubAFromHL                                          ; $51a7: $d7
	ld hl, sp-$52                                    ; $51a8: $f8 $ae
	pop af                                           ; $51aa: $f1
	ld e, e                                          ; $51ab: $5b
	rst SubAFromBC                                          ; $51ac: $e7
	xor a                                            ; $51ad: $af
	call c, $b877                                    ; $51ae: $dc $77 $b8
	rst SubAFromDE                                          ; $51b1: $df
	ld h, b                                          ; $51b2: $60
	cp l                                             ; $51b3: $bd
	jp $8e77                                         ; $51b4: $c3 $77 $8e


	sbc $38                                          ; $51b7: $de $38
	ld a, b                                          ; $51b9: $78
	pop hl                                           ; $51ba: $e1
	and e                                            ; $51bb: $a3
	rst JumpTable                                          ; $51bc: $c7
	ld l, [hl]                                       ; $51bd: $6e
	sub [hl]                                         ; $51be: $96
	sbc a                                            ; $51bf: $9f
	cp b                                             ; $51c0: $b8
	ld a, a                                          ; $51c1: $7f
	call Call_071_77f3                               ; $51c2: $cd $f3 $77
	adc a                                            ; $51c5: $8f
	cp [hl]                                          ; $51c6: $be
	ld a, a                                          ; $51c7: $7f
	ldh [$c0], a                                     ; $51c8: $e0 $c0
	ld h, e                                          ; $51ca: $63
	ld e, h                                          ; $51cb: $5c
	ld a, [hl]                                       ; $51cc: $7e
	ldh [$9e], a                                     ; $51cd: $e0 $9e
	ld e, $7b                                        ; $51cf: $1e $7b
	ld [hl], b                                       ; $51d1: $70
	sub h                                            ; $51d2: $94

jr_071_51d3:
	inc bc                                           ; $51d3: $03
	rst $38                                          ; $51d4: $ff
	ld b, $fe                                        ; $51d5: $06 $fe
	inc c                                            ; $51d7: $0c
	db $fc                                           ; $51d8: $fc
	jr jr_071_51d3                                   ; $51d9: $18 $f8

	db $10                                           ; $51db: $10
	ldh a, [rAUD4LEN]                                ; $51dc: $f0 $20
	sbc $e0                                          ; $51de: $de $e0
	rst SubAFromDE                                          ; $51e0: $df
	add b                                            ; $51e1: $80
	pop af                                           ; $51e2: $f1
	rst SubAFromDE                                          ; $51e3: $df
	rrca                                             ; $51e4: $0f
	add b                                            ; $51e5: $80
	ld [hl], a                                       ; $51e6: $77
	ld a, b                                          ; $51e7: $78
	ld hl, sp-$79                                    ; $51e8: $f8 $87
	ret nz                                           ; $51ea: $c0

	ccf                                              ; $51eb: $3f
	adc a                                            ; $51ec: $8f
	ld [hl], b                                       ; $51ed: $70
	ld a, $c1                                        ; $51ee: $3e $c1
	ldh a, [rIF]                                     ; $51f0: $f0 $0f
	rst JumpTable                                          ; $51f2: $c7
	jr c, jr_071_5211                                ; $51f3: $38 $1c

	ldh [$71], a                                     ; $51f5: $e0 $71

jr_071_51f7:
	add b                                            ; $51f7: $80
	add $01                                          ; $51f8: $c6 $01
	sbc b                                            ; $51fa: $98
	rlca                                             ; $51fb: $07
	ld h, e                                          ; $51fc: $63
	inc e                                            ; $51fd: $1c
	ld l, a                                          ; $51fe: $6f
	pop af                                           ; $51ff: $f1
	cp e                                             ; $5200: $bb
	add $e6                                          ; $5201: $c6 $e6
	inc e                                            ; $5203: $1c
	inc a                                            ; $5204: $3c
	sbc l                                            ; $5205: $9d
	ld a, b                                          ; $5206: $78
	push de                                          ; $5207: $d5
	ld a, e                                          ; $5208: $7b
	ld c, [hl]                                       ; $5209: $4e
	sub [hl]                                         ; $520a: $96
	ld e, c                                          ; $520b: $59
	rst SubAFromBC                                          ; $520c: $e7
	di                                               ; $520d: $f3
	adc $cd                                          ; $520e: $ce $cd
	cp [hl]                                          ; $5210: $be

jr_071_5211:
	ld a, [hl-]                                      ; $5211: $3a
	db $fd                                           ; $5212: $fd

jr_071_5213:
	ld b, c                                          ; $5213: $41
	inc sp                                           ; $5214: $33
	jr nz, jr_071_51f7                               ; $5215: $20 $e0

	push de                                          ; $5217: $d5
	sbc h                                            ; $5218: $9c
	rra                                              ; $5219: $1f
	db $fc                                           ; $521a: $fc
	rlca                                             ; $521b: $07
	ld e, d                                          ; $521c: $5a
	cp b                                             ; $521d: $b8
	ld a, a                                          ; $521e: $7f
	ld e, h                                          ; $521f: $5c
	sbc h                                            ; $5220: $9c
	inc e                                            ; $5221: $1c
	rra                                              ; $5222: $1f
	inc bc                                           ; $5223: $03
	ld a, c                                          ; $5224: $79
	call z, $311b                                    ; $5225: $cc $1b $31
	add b                                            ; $5228: $80
	rst $38                                          ; $5229: $ff
	rst JumpTable                                          ; $522a: $c7
	ccf                                              ; $522b: $3f
	ld bc, $feff                                     ; $522c: $01 $ff $fe
	ld bc, $7f9f                                     ; $522f: $01 $9f $7f
	ld a, $c1                                        ; $5232: $3e $c1
	db $e3                                           ; $5234: $e3
	nop                                              ; $5235: $00
	adc h                                            ; $5236: $8c
	inc bc                                           ; $5237: $03
	ld [hl], c                                       ; $5238: $71
	rrca                                             ; $5239: $0f
	add $3f                                          ; $523a: $c6 $3f
	rra                                              ; $523c: $1f
	ld hl, sp-$0f                                    ; $523d: $f8 $f1
	ld h, b                                          ; $523f: $60
	call nz, $9183                                   ; $5240: $c4 $83 $91
	ld c, $24                                        ; $5243: $0e $24
	jr @+$4a                                         ; $5245: $18 $48

	ld sp, $9090                                     ; $5247: $31 $90 $90
	ld h, e                                          ; $524a: $63
	ld h, c                                          ; $524b: $61
	add $c6                                          ; $524c: $c6 $c6
	adc h                                            ; $524e: $8c
	db $ed                                           ; $524f: $ed
	jr @-$23                                         ; $5250: $18 $db

	jr nc, jr_071_5213                               ; $5252: $30 $bf

	ld h, c                                          ; $5254: $61
	ld c, a                                          ; $5255: $4f
	ldh a, [c]                                       ; $5256: $f2
	adc h                                            ; $5257: $8c
	inc bc                                           ; $5258: $03
	ld h, b                                          ; $5259: $60
	pop hl                                           ; $525a: $e1
	ld a, a                                          ; $525b: $7f
	ld h, c                                          ; $525c: $61
	ld a, a                                          ; $525d: $7f
	cp $7d                                           ; $525e: $fe $7d
	jp z, $3898                                      ; $5260: $ca $98 $38

	rst AddAOntoHL                                          ; $5263: $ef
	jr @+$01                                         ; $5264: $18 $ff

	jr @+$01                                         ; $5266: $18 $ff

	ld [$fe73], sp                                   ; $5268: $08 $73 $fe
	sub a                                            ; $526b: $97
	adc b                                            ; $526c: $88
	rst $38                                          ; $526d: $ff
	db $ed                                           ; $526e: $ed
	rst $38                                          ; $526f: $ff
	dec sp                                           ; $5270: $3b
	dec sp                                           ; $5271: $3b
	rrca                                             ; $5272: $0f
	rrca                                             ; $5273: $0f
	db $dd                                           ; $5274: $dd
	dec b                                            ; $5275: $05
	db $ed                                           ; $5276: $ed
	rst SubAFromDE                                          ; $5277: $df
	ret nz                                           ; $5278: $c0

	adc h                                            ; $5279: $8c
	ld [hl], b                                       ; $527a: $70
	or b                                             ; $527b: $b0
	xor h                                            ; $527c: $ac
	call c, $e65a                                    ; $527d: $dc $5a $e6
	rst AddAOntoHL                                          ; $5280: $ef
	rst $38                                          ; $5281: $ff
	xor [hl]                                         ; $5282: $ae
	ld [hl], c                                       ; $5283: $71
	inc de                                           ; $5284: $13
	rst $38                                          ; $5285: $ff
	or $f8                                           ; $5286: $f6 $f8
	dec de                                           ; $5288: $1b
	db $fc                                           ; $5289: $fc
	ret                                              ; $528a: $c9


	ld a, $74                                        ; $528b: $3e $74
	ld a, c                                          ; $528d: $79
	ldh [hDisp0_WX], a                                     ; $528e: $e0 $89
	rst SubAFromBC                                          ; $5290: $e7
	inc e                                            ; $5291: $1c
	add h                                            ; $5292: $84
	ld a, a                                          ; $5293: $7f
	inc bc                                           ; $5294: $03
	rst $38                                          ; $5295: $ff
	ld h, e                                          ; $5296: $63
	sbc a                                            ; $5297: $9f
	jp z, $9b37                                      ; $5298: $ca $37 $9b

	ld h, [hl]                                       ; $529b: $66
	xor c                                            ; $529c: $a9
	ld d, [hl]                                       ; $529d: $56
	sbc $b7                                          ; $529e: $de $b7
	or [hl]                                          ; $52a0: $b6
	ld l, a                                          ; $52a1: $6f
	ld a, a                                          ; $52a2: $7f
	db $eb                                           ; $52a3: $eb
	rst AddAOntoHL                                          ; $52a4: $ef
	reti                                             ; $52a5: $d9


	ldh [$c1], a                                     ; $52a6: $e0 $c1
	adc a                                            ; $52a8: $8f
	ld h, [hl]                                       ; $52a9: $66
	rst $38                                          ; $52aa: $ff
	call z, $98ff                                    ; $52ab: $cc $ff $98
	rst $38                                          ; $52ae: $ff
	jr nc, @+$01                                     ; $52af: $30 $ff

	jr nz, @+$01                                     ; $52b1: $20 $ff

	ld [hl], b                                       ; $52b3: $70
	rst $38                                          ; $52b4: $ff
	ld c, h                                          ; $52b5: $4c
	rst GetHLinHL                                          ; $52b6: $cf
	jp $ddc3                                         ; $52b7: $c3 $c3 $dd


	add b                                            ; $52ba: $80
	rst SubAFromDE                                          ; $52bb: $df
	ret nz                                           ; $52bc: $c0

	db $dd                                           ; $52bd: $dd
	ld b, b                                          ; $52be: $40
	rst SubAFromDE                                          ; $52bf: $df
	ret nz                                           ; $52c0: $c0

	pop hl                                           ; $52c1: $e1
	ld [hl], a                                       ; $52c2: $77
	sub $98                                          ; $52c3: $d6 $98
	ld h, b                                          ; $52c5: $60
	ldh [$d0], a                                     ; $52c6: $e0 $d0
	jr nc, jr_071_533a                               ; $52c8: $30 $70

	sub b                                            ; $52ca: $90
	ld [$f8de], sp                                   ; $52cb: $08 $de $f8
	adc a                                            ; $52ce: $8f
	db $ec                                           ; $52cf: $ec
	inc e                                            ; $52d0: $1c
	inc [hl]                                         ; $52d1: $34
	call z, $f6ea                                    ; $52d2: $cc $ea $f6
	ld d, [hl]                                       ; $52d5: $56
	cp d                                             ; $52d6: $ba
	xor [hl]                                         ; $52d7: $ae
	jp c, $cd7b                                      ; $52d8: $da $7b $cd

	push de                                          ; $52db: $d5
	ld l, a                                          ; $52dc: $6f
	ld l, l                                          ; $52dd: $6d
	or a                                             ; $52de: $b7
	ld l, a                                          ; $52df: $6f
	cp $96                                           ; $52e0: $fe $96
	ld h, l                                          ; $52e2: $65
	cp a                                             ; $52e3: $bf
	dec h                                            ; $52e4: $25
	rst $38                                          ; $52e5: $ff
	dec h                                            ; $52e6: $25
	rst $38                                          ; $52e7: $ff
	inc h                                            ; $52e8: $24
	rst $38                                          ; $52e9: $ff
	sub d                                            ; $52ea: $92
	ld a, e                                          ; $52eb: $7b
	cp $80                                           ; $52ec: $fe $80
	ld c, c                                          ; $52ee: $49
	rst $38                                          ; $52ef: $ff
	ld h, a                                          ; $52f0: $67
	rst $38                                          ; $52f1: $ff
	ld a, [hl]                                       ; $52f2: $7e
	cp $d3                                           ; $52f3: $fe $d3
	rst $38                                          ; $52f5: $ff
	xor a                                            ; $52f6: $af
	rst $38                                          ; $52f7: $ff
	xor h                                            ; $52f8: $ac
	db $f4                                           ; $52f9: $f4
	halt                                             ; $52fa: $76
	jp c, $dd73                                      ; $52fb: $da $73 $dd

	db $dd                                           ; $52fe: $dd
	ld a, [hl]                                       ; $52ff: $7e
	db $d3                                           ; $5300: $d3
	ld [hl], e                                       ; $5301: $73
	or b                                             ; $5302: $b0
	or b                                             ; $5303: $b0
	sbc [hl]                                         ; $5304: $9e
	sbc [hl]                                         ; $5305: $9e
	ld a, a                                          ; $5306: $7f
	ld [hl], e                                       ; $5307: $73
	rst $38                                          ; $5308: $ff
	and c                                            ; $5309: $a1
	rst $38                                          ; $530a: $ff
	jr z, @+$01                                      ; $530b: $28 $ff

	sub l                                            ; $530d: $95
	dec l                                            ; $530e: $2d
	cp $27                                           ; $530f: $fe $27
	db $fc                                           ; $5311: $fc
	sub a                                            ; $5312: $97
	ld c, b                                          ; $5313: $48
	ld c, a                                          ; $5314: $4f
	ld [hl], b                                       ; $5315: $70
	ld a, a                                          ; $5316: $7f
	sub b                                            ; $5317: $90
	ld a, e                                          ; $5318: $7b
	ld [hl], d                                       ; $5319: $72
	ld a, a                                          ; $531a: $7f
	cp $76                                           ; $531b: $fe $76
	jr nc, jr_071_539e                               ; $531d: $30 $7f

	ld l, b                                          ; $531f: $68
	ld a, [hl]                                       ; $5320: $7e
	ld l, $9c                                        ; $5321: $2e $9c
	ld b, b                                          ; $5323: $40
	rst $38                                          ; $5324: $ff
	ld d, b                                          ; $5325: $50
	ld a, e                                          ; $5326: $7b
	ld hl, sp+$7f                                    ; $5327: $f8 $7f
	cp $9e                                           ; $5329: $fe $9e
	db $10                                           ; $532b: $10
	ld a, e                                          ; $532c: $7b
	cp $7f                                           ; $532d: $fe $7f
	db $db                                           ; $532f: $db
	sub b                                            ; $5330: $90
	xor b                                            ; $5331: $a8
	rst $38                                          ; $5332: $ff
	ld [hl], h                                       ; $5333: $74
	ld a, a                                          ; $5334: $7f
	inc [hl]                                         ; $5335: $34
	ccf                                              ; $5336: $3f
	ld a, [de]                                       ; $5337: $1a
	rra                                              ; $5338: $1f
	ld a, [bc]                                       ; $5339: $0a

jr_071_533a:
	rrca                                             ; $533a: $0f
	dec c                                            ; $533b: $0d
	rrca                                             ; $533c: $0f
	dec b                                            ; $533d: $05
	rlca                                             ; $533e: $07
	ld [bc], a                                       ; $533f: $02
	ld l, d                                          ; $5340: $6a
	inc d                                            ; $5341: $14
	db $dd                                           ; $5342: $dd
	add b                                            ; $5343: $80
	ld a, a                                          ; $5344: $7f
	ld c, a                                          ; $5345: $4f
	rst SubAFromDE                                          ; $5346: $df

jr_071_5347:
	ldh [$66], a                                     ; $5347: $e0 $66
	cp [hl]                                          ; $5349: $be
	ld h, a                                          ; $534a: $67
	ld hl, sp-$21                                    ; $534b: $f8 $df
	ldh a, [$5f]                                     ; $534d: $f0 $5f
	ld d, [hl]                                       ; $534f: $56
	rst SubAFromDE                                          ; $5350: $df

jr_071_5351:
	ldh [$7d], a                                     ; $5351: $e0 $7d
	ld c, [hl]                                       ; $5353: $4e
	sub e                                            ; $5354: $93
	jr nc, jr_071_5347                               ; $5355: $30 $f0

	jr jr_071_5351                                   ; $5357: $18 $f8

	inc c                                            ; $5359: $0c
	db $fc                                           ; $535a: $fc
	inc b                                            ; $535b: $04
	db $fc                                           ; $535c: $fc
	ld e, $fe                                        ; $535d: $1e $fe
	ld [hl+], a                                      ; $535f: $22
	cp $75                                           ; $5360: $fe $75
	inc [hl]                                         ; $5362: $34
	ld a, b                                          ; $5363: $78
	and b                                            ; $5364: $a0
	inc de                                           ; $5365: $13
	cp $7c                                           ; $5366: $fe $7c
	ld l, [hl]                                       ; $5368: $6e
	ld [bc], a                                       ; $5369: $02
	cp $7e                                           ; $536a: $fe $7e
	call nc, $c09e                                   ; $536c: $d4 $9e $c0
	ld [hl], a                                       ; $536f: $77
	xor b                                            ; $5370: $a8
	ld a, h                                          ; $5371: $7c
	ldh a, [$7f]                                     ; $5372: $f0 $7f
	and [hl]                                         ; $5374: $a6
	ld a, [hl]                                       ; $5375: $7e
	ld a, [$a477]                                    ; $5376: $fa $77 $a4
	ld a, h                                          ; $5379: $7c
	ldh [$9e], a                                     ; $537a: $e0 $9e
	ld [bc], a                                       ; $537c: $02
	ld a, e                                          ; $537d: $7b
	cp $64                                           ; $537e: $fe $64
	ld b, b                                          ; $5380: $40
	jr nz, jr_071_5383                               ; $5381: $20 $00

jr_071_5383:
	sbc e                                            ; $5383: $9b
	call z, $8888                                    ; $5384: $cc $88 $88
	sbc c                                            ; $5387: $99
	ld [hl], a                                       ; $5388: $77
	db $fc                                           ; $5389: $fc
	sbc e                                            ; $538a: $9b
	ld b, h                                          ; $538b: $44
	adc b                                            ; $538c: $88
	nop                                              ; $538d: $00
	sbc c                                            ; $538e: $99
	ld l, e                                          ; $538f: $6b
	ei                                               ; $5390: $fb
	sbc [hl]                                         ; $5391: $9e
	add b                                            ; $5392: $80
	ld h, a                                          ; $5393: $67
	or $94                                           ; $5394: $f6 $94
	ld de, $dd88                                     ; $5396: $11 $88 $dd
	db $dd                                           ; $5399: $dd
	and d                                            ; $539a: $a2
	ld de, $99dd                                     ; $539b: $11 $dd $99

jr_071_539e:
	ld de, $9999                                     ; $539e: $11 $99 $99
	add d                                            ; $53a1: $82
	ld bc, $e480                                     ; $53a2: $01 $80 $e4
	rst $38                                          ; $53a5: $ff
	rst $38                                          ; $53a6: $ff
	sbc a                                            ; $53a7: $9f
	add l                                            ; $53a8: $85
	ld a, a                                          ; $53a9: $7f
	dec a                                            ; $53aa: $3d
	rst $38                                          ; $53ab: $ff
	rst FarCall                                          ; $53ac: $f7
	db $ed                                           ; $53ad: $ed
	ld a, l                                          ; $53ae: $7d
	push de                                          ; $53af: $d5
	ld l, l                                          ; $53b0: $6d
	db $dd                                           ; $53b1: $dd
	ld l, l                                          ; $53b2: $6d
	db $dd                                           ; $53b3: $dd
	ld h, a                                          ; $53b4: $67
	db $dd                                           ; $53b5: $dd
	or l                                             ; $53b6: $b5
	rst AddAOntoHL                                          ; $53b7: $ef
	cp l                                             ; $53b8: $bd
	rst SubAFromBC                                          ; $53b9: $e7
	ld e, a                                          ; $53ba: $5f
	ld [hl], e                                       ; $53bb: $73
	cpl                                              ; $53bc: $2f
	add hl, sp                                       ; $53bd: $39
	rla                                              ; $53be: $17
	dec e                                            ; $53bf: $1d
	rrca                                             ; $53c0: $0f
	inc c                                            ; $53c1: $0c
	rlca                                             ; $53c2: $07
	add b                                            ; $53c3: $80
	ld b, $03                                        ; $53c4: $06 $03
	ld [bc], a                                       ; $53c6: $02
	rlca                                             ; $53c7: $07
	rlca                                             ; $53c8: $07
	rrca                                             ; $53c9: $0f
	dec c                                            ; $53ca: $0d
	rra                                              ; $53cb: $1f
	inc d                                            ; $53cc: $14
	ld a, a                                          ; $53cd: $7f
	halt                                             ; $53ce: $76
	sbc a                                            ; $53cf: $9f
	di                                               ; $53d0: $f3
	ccf                                              ; $53d1: $3f
	pop af                                           ; $53d2: $f1
	ccf                                              ; $53d3: $3f
	ldh a, [$1f]                                     ; $53d4: $f0 $1f
	ldh a, [$1f]                                     ; $53d6: $f0 $1f
	ld hl, sp+$0f                                    ; $53d8: $f8 $0f
	ld hl, sp+$0f                                    ; $53da: $f8 $0f
	db $fc                                           ; $53dc: $fc
	add a                                            ; $53dd: $87
	cp $03                                           ; $53de: $fe $03
	rst $38                                          ; $53e0: $ff
	ld bc, $86ff                                     ; $53e1: $01 $ff $86
	nop                                              ; $53e4: $00
	rst $38                                          ; $53e5: $ff
	cp $ff                                           ; $53e6: $fe $ff
	rst $38                                          ; $53e8: $ff
	rlca                                             ; $53e9: $07
	rst $38                                          ; $53ea: $ff
	nop                                              ; $53eb: $00
	add c                                            ; $53ec: $81
	ld a, [hl]                                       ; $53ed: $7e
	rst $38                                          ; $53ee: $ff
	ld a, a                                          ; $53ef: $7f
	or c                                             ; $53f0: $b1
	ld sp, $1b9b                                     ; $53f1: $31 $9b $1b
	cp l                                             ; $53f4: $bd
	ccf                                              ; $53f5: $3f
	xor d                                            ; $53f6: $aa
	ld l, $e4                                        ; $53f7: $2e $e4
	inc h                                            ; $53f9: $24
	ld hl, sp+$18                                    ; $53fa: $f8 $18
	call c, $eabc                                    ; $53fc: $dc $bc $ea
	push af                                          ; $53ff: $f5
	ldh [$e0], a                                     ; $5400: $e0 $e0
	inc sp                                           ; $5402: $33
	adc l                                            ; $5403: $8d
	rst $38                                          ; $5404: $ff
	rst GetHLinHL                                          ; $5405: $cf
	db $fc                                           ; $5406: $fc
	ld sp, hl                                        ; $5407: $f9
	ld [hl], c                                       ; $5408: $71
	db $e3                                           ; $5409: $e3
	inc bc                                           ; $540a: $03
	ldh a, [rP1]                                     ; $540b: $f0 $00
	ldh a, [$80]                                     ; $540d: $f0 $80
	or b                                             ; $540f: $b0
	ret nz                                           ; $5410: $c0

	ldh a, [$c0]                                     ; $5411: $f0 $c0
	and b                                            ; $5413: $a0
	ret nz                                           ; $5414: $c0

	nop                                              ; $5415: $00
	cp a                                             ; $5416: $bf
	ld bc, $8001                                     ; $5417: $01 $01 $80
	ld bc, $0181                                     ; $541a: $01 $81 $01
	ld a, [de]                                       ; $541d: $1a
	inc bc                                           ; $541e: $03
	ld a, [hl-]                                      ; $541f: $3a
	ld [bc], a                                       ; $5420: $02
	add hl, sp                                       ; $5421: $39
	add hl, bc                                       ; $5422: $09
	db $db                                           ; $5423: $db
	ld [hl], c                                       ; $5424: $71
	or e                                             ; $5425: $b3
	pop hl                                           ; $5426: $e1
	pop hl                                           ; $5427: $e1
	pop bc                                           ; $5428: $c1
	add c                                            ; $5429: $81
	ld bc, $181d                                     ; $542a: $01 $1d $18
	jr jr_071_544b                                   ; $542d: $18 $1c

	ld a, $0c                                        ; $542f: $3e $0c
	ld a, h                                          ; $5431: $7c
	ld b, $fa                                        ; $5432: $06 $fa
	ld b, $11                                        ; $5434: $06 $11
	ldh [$f9], a                                     ; $5436: $e0 $f9
	ldh a, [$8b]                                     ; $5438: $f0 $8b
	dec sp                                           ; $543a: $3b
	add hl, sp                                       ; $543b: $39
	rst SubAFromDE                                          ; $543c: $df
	ei                                               ; $543d: $fb
	xor a                                            ; $543e: $af
	db $eb                                           ; $543f: $eb
	ld b, a                                          ; $5440: $47
	ld b, [hl]                                       ; $5441: $46
	adc a                                            ; $5442: $8f
	add [hl]                                         ; $5443: $86
	ei                                               ; $5444: $fb
	ld a, [bc]                                       ; $5445: $0a
	ei                                               ; $5446: $fb
	ld a, [de]                                       ; $5447: $1a
	rst FarCall                                          ; $5448: $f7
	dec [hl]                                         ; $5449: $35
	rst SubAFromBC                                          ; $544a: $e7

jr_071_544b:
	ld h, a                                          ; $544b: $67
	rst JumpTable                                          ; $544c: $c7
	push bc                                          ; $544d: $c5
	ld a, e                                          ; $544e: $7b
	ld a, d                                          ; $544f: $7a
	adc l                                            ; $5450: $8d
	dec d                                            ; $5451: $15
	sbc a                                            ; $5452: $9f
	sub h                                            ; $5453: $94
	halt                                             ; $5454: $76
	or $13                                           ; $5455: $f6 $13
	di                                               ; $5457: $f3
	add hl, bc                                       ; $5458: $09
	ld sp, hl                                        ; $5459: $f9
	ld c, $ff                                        ; $545a: $0e $ff
	inc d                                            ; $545c: $14
	rst $38                                          ; $545d: $ff
	ld d, $ff                                        ; $545e: $16 $ff
	ld [hl-], a                                      ; $5460: $32
	rst $38                                          ; $5461: $ff
	inc hl                                           ; $5462: $23
	ld l, e                                          ; $5463: $6b
	add b                                            ; $5464: $80
	ld a, a                                          ; $5465: $7f
	cp $98                                           ; $5466: $fe $98
	jp $fe7c                                         ; $5468: $c3 $7c $fe


	ld a, a                                          ; $546b: $7f
	db $d3                                           ; $546c: $d3
	ld d, e                                          ; $546d: $53
	cp a                                             ; $546e: $bf
	rla                                              ; $546f: $17
	add b                                            ; $5470: $80
	sbc b                                            ; $5471: $98
	nop                                              ; $5472: $00
	ld [hl], b                                       ; $5473: $70
	add b                                            ; $5474: $80
	ldh a, [$80]                                     ; $5475: $f0 $80
	ldh [$80], a                                     ; $5477: $e0 $80
	rlca                                             ; $5479: $07
	add b                                            ; $547a: $80
	sub c                                            ; $547b: $91
	pop af                                           ; $547c: $f1
	nop                                              ; $547d: $00
	reti                                             ; $547e: $d9


	ldh [$2b], a                                     ; $547f: $e0 $2b
	ld sp, $f3ff                                     ; $5481: $31 $ff $f3
	or a                                             ; $5484: $b7
	di                                               ; $5485: $f3
	ld d, a                                          ; $5486: $57
	ld d, [hl]                                       ; $5487: $56
	adc a                                            ; $5488: $8f
	add [hl]                                         ; $5489: $86
	ld h, a                                          ; $548a: $67
	and b                                            ; $548b: $a0
	ld a, a                                          ; $548c: $7f
	cp $95                                           ; $548d: $fe $95
	rst JumpTable                                          ; $548f: $c7
	ld a, b                                          ; $5490: $78
	db $fd                                           ; $5491: $fd
	ld a, [hl]                                       ; $5492: $7e
	cp [hl]                                          ; $5493: $be
	ccf                                              ; $5494: $3f
	xor e                                            ; $5495: $ab
	cpl                                              ; $5496: $2f
	push hl                                          ; $5497: $e5
	dec h                                            ; $5498: $25
	daa                                              ; $5499: $27
	and b                                            ; $549a: $a0
	ld [hl], a                                       ; $549b: $77
	cp $7f                                           ; $549c: $fe $7f
	xor $77                                          ; $549e: $ee $77
	and b                                            ; $54a0: $a0
	ld a, a                                          ; $54a1: $7f
	db $fd                                           ; $54a2: $fd
	rla                                              ; $54a3: $17
	and b                                            ; $54a4: $a0
	ld a, a                                          ; $54a5: $7f
	cp $9a                                           ; $54a6: $fe $9a
	db $d3                                           ; $54a8: $d3
	pop hl                                           ; $54a9: $e1
	db $eb                                           ; $54aa: $eb
	di                                               ; $54ab: $f3
	cp a                                             ; $54ac: $bf
	ld c, e                                          ; $54ad: $4b
	and b                                            ; $54ae: $a0
	ld [hl], a                                       ; $54af: $77
	cp $97                                           ; $54b0: $fe $97
	rst SubAFromDE                                          ; $54b2: $df
	ld h, b                                          ; $54b3: $60
	rst AddAOntoHL                                          ; $54b4: $ef
	ld [hl], b                                       ; $54b5: $70
	ei                                               ; $54b6: $fb
	inc a                                            ; $54b7: $3c
	cp $1e                                           ; $54b8: $fe $1e
	rlca                                             ; $54ba: $07
	and b                                            ; $54bb: $a0
	ld a, a                                          ; $54bc: $7f
	cp $99                                           ; $54bd: $fe $99
	add c                                            ; $54bf: $81
	nop                                              ; $54c0: $00
	ld a, [de]                                       ; $54c1: $1a
	inc bc                                           ; $54c2: $03
	dec sp                                           ; $54c3: $3b
	inc bc                                           ; $54c4: $03
	daa                                              ; $54c5: $27
	and b                                            ; $54c6: $a0
	sub l                                            ; $54c7: $95
	db $e3                                           ; $54c8: $e3
	ld bc, $03e3                                     ; $54c9: $01 $e3 $03
	rst JumpTable                                          ; $54cc: $c7
	inc bc                                           ; $54cd: $03
	daa                                              ; $54ce: $27
	add $ef                                          ; $54cf: $c6 $ef
	and $73                                          ; $54d1: $e6 $73
	jp z, $8092                                      ; $54d3: $ca $92 $80

	ld hl, sp-$40                                    ; $54d6: $f8 $c0
	ld hl, sp+$20                                    ; $54d8: $f8 $20
	db $fc                                           ; $54da: $fc
	db $10                                           ; $54db: $10
	cp $88                                           ; $54dc: $fe $88
	cp $66                                           ; $54de: $fe $66
	rst $38                                          ; $54e0: $ff
	dec de                                           ; $54e1: $1b
	ld e, e                                          ; $54e2: $5b
	sub b                                            ; $54e3: $90
	add b                                            ; $54e4: $80
	ret nz                                           ; $54e5: $c0

	rst $38                                          ; $54e6: $ff
	ldh a, [$98]                                     ; $54e7: $f0 $98
	adc b                                            ; $54e9: $88
	ld b, b                                          ; $54ea: $40
	ld b, b                                          ; $54eb: $40
	db $10                                           ; $54ec: $10
	db $10                                           ; $54ed: $10
	ld b, b                                          ; $54ee: $40
	ld b, b                                          ; $54ef: $40
	nop                                              ; $54f0: $00
	nop                                              ; $54f1: $00
	inc bc                                           ; $54f2: $03
	inc bc                                           ; $54f3: $03
	rrca                                             ; $54f4: $0f
	rrca                                             ; $54f5: $0f
	ld a, a                                          ; $54f6: $7f
	ld a, a                                          ; $54f7: $7f
	ldh a, [$bf]                                     ; $54f8: $f0 $bf
	ldh [rIE], a                                     ; $54fa: $e0 $ff
	ldh a, [$3f]                                     ; $54fc: $f0 $3f
	ld hl, sp+$3f                                    ; $54fe: $f8 $3f
	ld hl, sp+$2f                                    ; $5500: $f8 $2f
	db $fc                                           ; $5502: $fc
	rlca                                             ; $5503: $07
	ld [hl], a                                       ; $5504: $77
	cp $7f                                           ; $5505: $fe $7f
	ldh [$df], a                                     ; $5507: $e0 $df
	ret nz                                           ; $5509: $c0

	sbc h                                            ; $550a: $9c
	ldh a, [rSVBK]                                   ; $550b: $f0 $70
	ld h, b                                          ; $550d: $60
	cp a                                             ; $550e: $bf
	nop                                              ; $550f: $00
	inc bc                                           ; $5510: $03
	dec hl                                           ; $5511: $2b
	ldh [$9a], a                                     ; $5512: $e0 $9a
	ldh [$c0], a                                     ; $5514: $e0 $c0
	ldh a, [$f0]                                     ; $5516: $f0 $f0
	ldh [$7b], a                                     ; $5518: $e0 $7b
	rst SubAFromDE                                          ; $551a: $df
	inc de                                           ; $551b: $13
	ldh [$df], a                                     ; $551c: $e0 $df
	ldh [$9e], a                                     ; $551e: $e0 $9e
	ld b, b                                          ; $5520: $40
	cpl                                              ; $5521: $2f
	ldh [$9d], a                                     ; $5522: $e0 $9d
	ld bc, $e480                                     ; $5524: $01 $80 $e4
	rst $38                                          ; $5527: $ff
	rst $38                                          ; $5528: $ff
	sbc a                                            ; $5529: $9f
	add l                                            ; $552a: $85
	ld a, a                                          ; $552b: $7f
	dec a                                            ; $552c: $3d
	rst $38                                          ; $552d: $ff
	rst FarCall                                          ; $552e: $f7
	db $ed                                           ; $552f: $ed
	ld a, l                                          ; $5530: $7d
	push de                                          ; $5531: $d5
	ld l, l                                          ; $5532: $6d
	db $dd                                           ; $5533: $dd
	ld l, l                                          ; $5534: $6d
	db $dd                                           ; $5535: $dd
	ld h, a                                          ; $5536: $67
	db $dd                                           ; $5537: $dd
	or l                                             ; $5538: $b5
	rst AddAOntoHL                                          ; $5539: $ef
	cp l                                             ; $553a: $bd
	rst SubAFromBC                                          ; $553b: $e7
	ld e, a                                          ; $553c: $5f
	ld [hl], e                                       ; $553d: $73
	cpl                                              ; $553e: $2f
	add hl, sp                                       ; $553f: $39
	rla                                              ; $5540: $17
	dec e                                            ; $5541: $1d
	rrca                                             ; $5542: $0f
	inc c                                            ; $5543: $0c
	rlca                                             ; $5544: $07
	add b                                            ; $5545: $80
	ld b, $03                                        ; $5546: $06 $03
	ld [bc], a                                       ; $5548: $02
	rlca                                             ; $5549: $07
	rlca                                             ; $554a: $07
	rrca                                             ; $554b: $0f
	dec c                                            ; $554c: $0d
	rra                                              ; $554d: $1f
	inc d                                            ; $554e: $14
	ld a, a                                          ; $554f: $7f
	halt                                             ; $5550: $76
	sbc a                                            ; $5551: $9f
	di                                               ; $5552: $f3
	ccf                                              ; $5553: $3f
	pop af                                           ; $5554: $f1
	ccf                                              ; $5555: $3f
	ldh a, [$1f]                                     ; $5556: $f0 $1f
	ldh a, [$1f]                                     ; $5558: $f0 $1f
	ld hl, sp+$0f                                    ; $555a: $f8 $0f
	ld hl, sp+$0f                                    ; $555c: $f8 $0f
	db $fc                                           ; $555e: $fc
	add a                                            ; $555f: $87
	cp $03                                           ; $5560: $fe $03
	rst $38                                          ; $5562: $ff
	ld bc, $86ff                                     ; $5563: $01 $ff $86
	nop                                              ; $5566: $00
	rst $38                                          ; $5567: $ff
	cp $ff                                           ; $5568: $fe $ff
	rst $38                                          ; $556a: $ff
	rlca                                             ; $556b: $07
	rst $38                                          ; $556c: $ff
	nop                                              ; $556d: $00
	pop hl                                           ; $556e: $e1
	ld a, $ff                                        ; $556f: $3e $ff
	ccf                                              ; $5571: $3f
	pop de                                           ; $5572: $d1
	ld de, $1999                                     ; $5573: $11 $99 $19
	cp l                                             ; $5576: $bd
	ccf                                              ; $5577: $3f
	xor d                                            ; $5578: $aa
	ld a, $e4                                        ; $5579: $3e $e4
	inc h                                            ; $557b: $24
	ld hl, sp+$18                                    ; $557c: $f8 $18
	call c, $c0bc                                    ; $557e: $dc $bc $c0
	ldh [$e0], a                                     ; $5581: $e0 $e0
	ldh [$33], a                                     ; $5583: $e0 $33
	adc l                                            ; $5585: $8d
	rst $38                                          ; $5586: $ff
	rst GetHLinHL                                          ; $5587: $cf
	db $fc                                           ; $5588: $fc
	ld sp, hl                                        ; $5589: $f9
	ld [hl], c                                       ; $558a: $71
	db $e3                                           ; $558b: $e3
	inc bc                                           ; $558c: $03
	ldh a, [rP1]                                     ; $558d: $f0 $00
	ldh a, [$80]                                     ; $558f: $f0 $80
	or b                                             ; $5591: $b0
	ret nz                                           ; $5592: $c0

	ldh a, [$c0]                                     ; $5593: $f0 $c0
	and b                                            ; $5595: $a0
	ret nz                                           ; $5596: $c0

	nop                                              ; $5597: $00
	cp a                                             ; $5598: $bf
	ld bc, $de01                                     ; $5599: $01 $01 $de
	ld bc, $1a80                                     ; $559c: $01 $80 $1a
	inc bc                                           ; $559f: $03
	ld a, [hl-]                                      ; $55a0: $3a
	ld [bc], a                                       ; $55a1: $02
	add hl, sp                                       ; $55a2: $39
	add hl, bc                                       ; $55a3: $09
	db $db                                           ; $55a4: $db
	ld [hl], c                                       ; $55a5: $71
	or e                                             ; $55a6: $b3
	pop hl                                           ; $55a7: $e1
	pop hl                                           ; $55a8: $e1
	pop bc                                           ; $55a9: $c1
	adc l                                            ; $55aa: $8d
	ld bc, $0c1d                                     ; $55ab: $01 $1d $0c
	ld d, $0e                                        ; $55ae: $16 $0e
	ld a, [hl-]                                      ; $55b0: $3a
	ld b, $7a                                        ; $55b1: $06 $7a
	ld b, $fe                                        ; $55b3: $06 $fe
	nop                                              ; $55b5: $00
	ld de, $f9e0                                     ; $55b6: $11 $e0 $f9
	ldh a, [$3b]                                     ; $55b9: $f0 $3b
	add hl, sp                                       ; $55bb: $39
	cp a                                             ; $55bc: $bf
	adc [hl]                                         ; $55bd: $8e
	cp e                                             ; $55be: $bb
	and a                                            ; $55bf: $a7
	db $eb                                           ; $55c0: $eb
	ld b, a                                          ; $55c1: $47
	ld b, [hl]                                       ; $55c2: $46
	adc a                                            ; $55c3: $8f
	add [hl]                                         ; $55c4: $86
	ei                                               ; $55c5: $fb
	ld a, [bc]                                       ; $55c6: $0a
	ei                                               ; $55c7: $fb
	ld a, [de]                                       ; $55c8: $1a
	rst FarCall                                          ; $55c9: $f7
	dec [hl]                                         ; $55ca: $35
	rst SubAFromBC                                          ; $55cb: $e7
	ld h, a                                          ; $55cc: $67
	rst JumpTable                                          ; $55cd: $c7
	push bc                                          ; $55ce: $c5
	ld a, e                                          ; $55cf: $7b
	ld a, d                                          ; $55d0: $7a
	adc l                                            ; $55d1: $8d
	dec d                                            ; $55d2: $15
	sbc a                                            ; $55d3: $9f
	sub h                                            ; $55d4: $94
	halt                                             ; $55d5: $76
	or $13                                           ; $55d6: $f6 $13
	di                                               ; $55d8: $f3
	add hl, bc                                       ; $55d9: $09
	ld sp, hl                                        ; $55da: $f9
	ld c, $ff                                        ; $55db: $0e $ff
	inc d                                            ; $55dd: $14
	rst $38                                          ; $55de: $ff
	ld d, $ff                                        ; $55df: $16 $ff
	ld [hl-], a                                      ; $55e1: $32
	rst $38                                          ; $55e2: $ff
	inc hl                                           ; $55e3: $23
	ld l, e                                          ; $55e4: $6b
	add b                                            ; $55e5: $80
	ld a, a                                          ; $55e6: $7f
	cp $99                                           ; $55e7: $fe $99
	jp $fe7c                                         ; $55e9: $c3 $7c $fe


	ld a, a                                          ; $55ec: $7f
	db $d3                                           ; $55ed: $d3
	ld d, e                                          ; $55ee: $53
	inc de                                           ; $55ef: $13
	add b                                            ; $55f0: $80
	sbc b                                            ; $55f1: $98
	nop                                              ; $55f2: $00
	ld [hl], b                                       ; $55f3: $70
	add b                                            ; $55f4: $80
	ldh a, [$80]                                     ; $55f5: $f0 $80
	ldh [$80], a                                     ; $55f7: $e0 $80
	rlca                                             ; $55f9: $07
	add b                                            ; $55fa: $80
	sub c                                            ; $55fb: $91
	pop af                                           ; $55fc: $f1
	nop                                              ; $55fd: $00
	reti                                             ; $55fe: $d9


	ldh [$eb], a                                     ; $55ff: $e0 $eb
	pop af                                           ; $5601: $f1
	cp a                                             ; $5602: $bf
	or e                                             ; $5603: $b3
	or a                                             ; $5604: $b7
	di                                               ; $5605: $f3
	ld d, a                                          ; $5606: $57
	ld d, [hl]                                       ; $5607: $56
	adc a                                            ; $5608: $8f
	add [hl]                                         ; $5609: $86
	ld h, a                                          ; $560a: $67
	and b                                            ; $560b: $a0
	ld a, a                                          ; $560c: $7f
	cp $95                                           ; $560d: $fe $95
	rst JumpTable                                          ; $560f: $c7
	ld a, b                                          ; $5610: $78
	db $fd                                           ; $5611: $fd
	ld a, [hl]                                       ; $5612: $7e
	cp [hl]                                          ; $5613: $be
	ccf                                              ; $5614: $3f
	xor e                                            ; $5615: $ab
	ccf                                              ; $5616: $3f
	push hl                                          ; $5617: $e5
	dec h                                            ; $5618: $25
	daa                                              ; $5619: $27
	and b                                            ; $561a: $a0
	ld [hl], a                                       ; $561b: $77
	cp $7f                                           ; $561c: $fe $7f
	xor $77                                          ; $561e: $ee $77
	and b                                            ; $5620: $a0
	ld [hl], a                                       ; $5621: $77
	sbc a                                            ; $5622: $9f
	rra                                              ; $5623: $1f
	and b                                            ; $5624: $a0
	ld a, a                                          ; $5625: $7f
	cp $9a                                           ; $5626: $fe $9a
	db $d3                                           ; $5628: $d3
	pop hl                                           ; $5629: $e1
	db $eb                                           ; $562a: $eb
	di                                               ; $562b: $f3
	cp a                                             ; $562c: $bf
	ld c, e                                          ; $562d: $4b
	and b                                            ; $562e: $a0
	ld [hl], a                                       ; $562f: $77
	cp $97                                           ; $5630: $fe $97
	rst SubAFromDE                                          ; $5632: $df
	ld h, b                                          ; $5633: $60
	rst AddAOntoHL                                          ; $5634: $ef
	ld [hl], b                                       ; $5635: $70
	ei                                               ; $5636: $fb
	inc a                                            ; $5637: $3c
	cp $1e                                           ; $5638: $fe $1e
	rlca                                             ; $563a: $07
	and b                                            ; $563b: $a0
	ld [hl], a                                       ; $563c: $77
	cp $7f                                           ; $563d: $fe $7f
	and b                                            ; $563f: $a0
	sbc l                                            ; $5640: $9d
	dec sp                                           ; $5641: $3b
	inc bc                                           ; $5642: $03
	ld h, a                                          ; $5643: $67
	and b                                            ; $5644: $a0
	sub a                                            ; $5645: $97
	add c                                            ; $5646: $81
	ld bc, $1819                                     ; $5647: $01 $19 $18
	inc c                                            ; $564a: $0c
	inc e                                            ; $564b: $1c
	ld [hl], $0c                                     ; $564c: $36 $0c
	ld a, e                                          ; $564e: $7b
	and b                                            ; $564f: $a0
	sbc [hl]                                         ; $5650: $9e
	ld [bc], a                                       ; $5651: $02
	ld [hl], a                                       ; $5652: $77
	and b                                            ; $5653: $a0
	sub l                                            ; $5654: $95
	db $e3                                           ; $5655: $e3
	ld bc, $03e3                                     ; $5656: $01 $e3 $03
	rst JumpTable                                          ; $5659: $c7
	inc bc                                           ; $565a: $03
	daa                                              ; $565b: $27
	add $ef                                          ; $565c: $c6 $ef
	and $73                                          ; $565e: $e6 $73
	jp z, $8092                                      ; $5660: $ca $92 $80

	ld hl, sp-$40                                    ; $5663: $f8 $c0
	ld hl, sp+$20                                    ; $5665: $f8 $20
	db $fc                                           ; $5667: $fc
	db $10                                           ; $5668: $10
	cp $88                                           ; $5669: $fe $88
	cp $66                                           ; $566b: $fe $66
	rst $38                                          ; $566d: $ff
	dec de                                           ; $566e: $1b
	ld e, e                                          ; $566f: $5b
	sub b                                            ; $5670: $90
	add b                                            ; $5671: $80
	ret nz                                           ; $5672: $c0

	rst $38                                          ; $5673: $ff
	ldh a, [$98]                                     ; $5674: $f0 $98
	adc b                                            ; $5676: $88
	ret nz                                           ; $5677: $c0

	ret nz                                           ; $5678: $c0

	ld [hl], b                                       ; $5679: $70
	ld [hl], b                                       ; $567a: $70
	nop                                              ; $567b: $00
	nop                                              ; $567c: $00
	ret nz                                           ; $567d: $c0

	ld b, b                                          ; $567e: $40
	inc bc                                           ; $567f: $03
	inc bc                                           ; $5680: $03
	rrca                                             ; $5681: $0f
	rrca                                             ; $5682: $0f
	ld a, a                                          ; $5683: $7f
	ld a, a                                          ; $5684: $7f
	ldh a, [$bf]                                     ; $5685: $f0 $bf
	ldh [rIE], a                                     ; $5687: $e0 $ff
	ldh a, [$3f]                                     ; $5689: $f0 $3f
	ld hl, sp+$3f                                    ; $568b: $f8 $3f
	ld hl, sp+$2f                                    ; $568d: $f8 $2f
	db $fc                                           ; $568f: $fc
	rlca                                             ; $5690: $07
	ld [hl], a                                       ; $5691: $77
	cp $03                                           ; $5692: $fe $03
	ret nz                                           ; $5694: $c0

	ld a, e                                          ; $5695: $7b
	ret nz                                           ; $5696: $c0

	rst SubAFromDE                                          ; $5697: $df
	ldh a, [$9b]                                     ; $5698: $f0 $9b
	ldh [$60], a                                     ; $569a: $e0 $60
	nop                                              ; $569c: $00
	nop                                              ; $569d: $00
	inc bc                                           ; $569e: $03
	ret nz                                           ; $569f: $c0

	dec hl                                           ; $56a0: $2b
	ret nz                                           ; $56a1: $c0

	sbc [hl]                                         ; $56a2: $9e
	ldh [rPCM34], a                                  ; $56a3: $e0 $77
	ret nz                                           ; $56a5: $c0

	ld a, a                                          ; $56a6: $7f
	ei                                               ; $56a7: $fb
	dec hl                                           ; $56a8: $2b
	add b                                            ; $56a9: $80
	sbc l                                            ; $56aa: $9d
	pop af                                           ; $56ab: $f1
	ld bc, $fe7b                                     ; $56ac: $01 $7b $fe
	sbc e                                            ; $56af: $9b
	add c                                            ; $56b0: $81
	ld sp, hl                                        ; $56b1: $f9
	pop bc                                           ; $56b2: $c1
	ld sp, hl                                        ; $56b3: $f9
	daa                                              ; $56b4: $27
	ret nz                                           ; $56b5: $c0

	sbc [hl]                                         ; $56b6: $9e
	ld [$c077], sp                                   ; $56b7: $08 $77 $c0
	ld [hl], a                                       ; $56ba: $77
	cp a                                             ; $56bb: $bf
	sbc [hl]                                         ; $56bc: $9e
	jp $c033                                         ; $56bd: $c3 $33 $c0


	ld a, [hl]                                       ; $56c0: $7e
	ld bc, $e480                                     ; $56c1: $01 $80 $e4
	rst $38                                          ; $56c4: $ff
	rst $38                                          ; $56c5: $ff
	sbc a                                            ; $56c6: $9f
	add l                                            ; $56c7: $85
	ld a, a                                          ; $56c8: $7f
	dec a                                            ; $56c9: $3d
	rst $38                                          ; $56ca: $ff
	rst FarCall                                          ; $56cb: $f7
	db $ed                                           ; $56cc: $ed
	ld a, l                                          ; $56cd: $7d
	push de                                          ; $56ce: $d5
	ld l, l                                          ; $56cf: $6d
	db $dd                                           ; $56d0: $dd
	ld l, l                                          ; $56d1: $6d
	db $dd                                           ; $56d2: $dd
	ld h, a                                          ; $56d3: $67
	db $dd                                           ; $56d4: $dd
	or l                                             ; $56d5: $b5
	rst AddAOntoHL                                          ; $56d6: $ef
	cp l                                             ; $56d7: $bd
	rst SubAFromBC                                          ; $56d8: $e7
	ld e, a                                          ; $56d9: $5f
	ld [hl], e                                       ; $56da: $73
	cpl                                              ; $56db: $2f
	add hl, sp                                       ; $56dc: $39
	rla                                              ; $56dd: $17
	dec e                                            ; $56de: $1d
	rrca                                             ; $56df: $0f
	inc c                                            ; $56e0: $0c
	rlca                                             ; $56e1: $07
	add b                                            ; $56e2: $80
	ld b, $03                                        ; $56e3: $06 $03
	ld [bc], a                                       ; $56e5: $02
	rlca                                             ; $56e6: $07
	rlca                                             ; $56e7: $07
	rrca                                             ; $56e8: $0f
	dec c                                            ; $56e9: $0d
	rra                                              ; $56ea: $1f
	inc d                                            ; $56eb: $14
	ld a, a                                          ; $56ec: $7f
	halt                                             ; $56ed: $76
	sbc a                                            ; $56ee: $9f
	di                                               ; $56ef: $f3
	ccf                                              ; $56f0: $3f
	pop af                                           ; $56f1: $f1
	ccf                                              ; $56f2: $3f
	ldh a, [$1f]                                     ; $56f3: $f0 $1f
	ldh a, [$1f]                                     ; $56f5: $f0 $1f
	ld hl, sp+$0f                                    ; $56f7: $f8 $0f
	ld hl, sp+$0f                                    ; $56f9: $f8 $0f
	db $fc                                           ; $56fb: $fc
	add a                                            ; $56fc: $87
	cp $03                                           ; $56fd: $fe $03
	rst $38                                          ; $56ff: $ff
	ld bc, $82ff                                     ; $5700: $01 $ff $82
	nop                                              ; $5703: $00
	rst $38                                          ; $5704: $ff
	cp $ff                                           ; $5705: $fe $ff
	rst $38                                          ; $5707: $ff
	rlca                                             ; $5708: $07
	rst $38                                          ; $5709: $ff
	nop                                              ; $570a: $00
	add c                                            ; $570b: $81
	ld a, [hl]                                       ; $570c: $7e
	rst $38                                          ; $570d: $ff
	ld a, a                                          ; $570e: $7f
	or c                                             ; $570f: $b1
	ld sp, $1b9b                                     ; $5710: $31 $9b $1b
	cp l                                             ; $5713: $bd
	ccf                                              ; $5714: $3f
	xor d                                            ; $5715: $aa
	ld l, $e4                                        ; $5716: $2e $e4
	inc h                                            ; $5718: $24
	ld hl, sp+$18                                    ; $5719: $f8 $18
	call c, $c000                                    ; $571b: $dc $00 $c0
	nop                                              ; $571e: $00
	ldh [$73], a                                     ; $571f: $e0 $73
	cp $89                                           ; $5721: $fe $89
	inc sp                                           ; $5723: $33
	rst $38                                          ; $5724: $ff
	rst GetHLinHL                                          ; $5725: $cf
	db $fc                                           ; $5726: $fc
	ld sp, hl                                        ; $5727: $f9
	ld [hl], c                                       ; $5728: $71
	db $e3                                           ; $5729: $e3
	inc bc                                           ; $572a: $03
	ldh a, [rP1]                                     ; $572b: $f0 $00
	ldh a, [$80]                                     ; $572d: $f0 $80
	or b                                             ; $572f: $b0
	ret nz                                           ; $5730: $c0

	ldh a, [$c0]                                     ; $5731: $f0 $c0
	and b                                            ; $5733: $a0
	ret nz                                           ; $5734: $c0

	nop                                              ; $5735: $00
	nop                                              ; $5736: $00
	ld bc, $dd00                                     ; $5737: $01 $00 $dd
	ld bc, $1a80                                     ; $573a: $01 $80 $1a
	inc bc                                           ; $573d: $03
	ld a, [hl-]                                      ; $573e: $3a
	ld [bc], a                                       ; $573f: $02
	add hl, sp                                       ; $5740: $39
	add hl, bc                                       ; $5741: $09
	db $db                                           ; $5742: $db
	ld [hl], c                                       ; $5743: $71
	or e                                             ; $5744: $b3
	pop hl                                           ; $5745: $e1
	pop hl                                           ; $5746: $e1
	pop bc                                           ; $5747: $c1
	add c                                            ; $5748: $81
	ld bc, $1819                                     ; $5749: $01 $19 $18
	inc c                                            ; $574c: $0c
	inc e                                            ; $574d: $1c
	ld [hl], $0c                                     ; $574e: $36 $0c
	ld a, d                                          ; $5750: $7a
	ld b, $fe                                        ; $5751: $06 $fe
	ld [bc], a                                       ; $5753: $02
	ld de, $f9e0                                     ; $5754: $11 $e0 $f9
	ldh a, [$3b]                                     ; $5757: $f0 $3b
	add hl, sp                                       ; $5759: $39
	rst SubAFromDE                                          ; $575a: $df
	adc [hl]                                         ; $575b: $8e
	ei                                               ; $575c: $fb
	xor a                                            ; $575d: $af
	db $eb                                           ; $575e: $eb
	ld b, a                                          ; $575f: $47
	ld b, [hl]                                       ; $5760: $46
	adc a                                            ; $5761: $8f
	add [hl]                                         ; $5762: $86
	ei                                               ; $5763: $fb
	ld a, [bc]                                       ; $5764: $0a
	ei                                               ; $5765: $fb
	ld a, [de]                                       ; $5766: $1a
	rst FarCall                                          ; $5767: $f7
	dec [hl]                                         ; $5768: $35
	rst SubAFromBC                                          ; $5769: $e7
	ld h, a                                          ; $576a: $67
	rst JumpTable                                          ; $576b: $c7
	push bc                                          ; $576c: $c5
	ld a, e                                          ; $576d: $7b
	ld a, d                                          ; $576e: $7a
	adc l                                            ; $576f: $8d
	dec d                                            ; $5770: $15
	sbc a                                            ; $5771: $9f
	sub h                                            ; $5772: $94
	halt                                             ; $5773: $76
	or $13                                           ; $5774: $f6 $13
	di                                               ; $5776: $f3
	add hl, bc                                       ; $5777: $09
	ld sp, hl                                        ; $5778: $f9
	ld c, $ff                                        ; $5779: $0e $ff
	inc d                                            ; $577b: $14
	rst $38                                          ; $577c: $ff
	ld d, $ff                                        ; $577d: $16 $ff
	ld [hl-], a                                      ; $577f: $32
	rst $38                                          ; $5780: $ff
	inc hl                                           ; $5781: $23
	ld l, e                                          ; $5782: $6b
	add b                                            ; $5783: $80
	ld a, a                                          ; $5784: $7f
	cp $98                                           ; $5785: $fe $98
	jp $fe7c                                         ; $5787: $c3 $7c $fe


	ld a, a                                          ; $578a: $7f
	db $d3                                           ; $578b: $d3
	ld d, e                                          ; $578c: $53
	cp a                                             ; $578d: $bf
	rla                                              ; $578e: $17
	add b                                            ; $578f: $80
	sbc b                                            ; $5790: $98
	nop                                              ; $5791: $00
	ld [hl], b                                       ; $5792: $70
	add b                                            ; $5793: $80
	ldh a, [$80]                                     ; $5794: $f0 $80
	ldh [$80], a                                     ; $5796: $e0 $80
	rlca                                             ; $5798: $07
	add b                                            ; $5799: $80
	sub c                                            ; $579a: $91
	pop af                                           ; $579b: $f1
	nop                                              ; $579c: $00
	reti                                             ; $579d: $d9


	ldh [$2b], a                                     ; $579e: $e0 $2b
	ld sp, $f3ff                                     ; $57a0: $31 $ff $f3
	or a                                             ; $57a3: $b7
	di                                               ; $57a4: $f3
	ld d, a                                          ; $57a5: $57
	ld d, [hl]                                       ; $57a6: $56
	adc a                                            ; $57a7: $8f
	add [hl]                                         ; $57a8: $86
	ld h, a                                          ; $57a9: $67
	and b                                            ; $57aa: $a0
	ld a, a                                          ; $57ab: $7f
	cp $95                                           ; $57ac: $fe $95
	rst JumpTable                                          ; $57ae: $c7
	ld a, b                                          ; $57af: $78
	db $fd                                           ; $57b0: $fd
	ld a, [hl]                                       ; $57b1: $7e
	cp [hl]                                          ; $57b2: $be
	ccf                                              ; $57b3: $3f
	xor e                                            ; $57b4: $ab
	cpl                                              ; $57b5: $2f
	push hl                                          ; $57b6: $e5
	dec h                                            ; $57b7: $25
	daa                                              ; $57b8: $27
	and b                                            ; $57b9: $a0
	ld [hl], a                                       ; $57ba: $77
	cp $7f                                           ; $57bb: $fe $7f
	xor $77                                          ; $57bd: $ee $77
	and b                                            ; $57bf: $a0

Call_071_57c0:
Jump_071_57c0:
	ld [hl], a                                       ; $57c0: $77
	sbc a                                            ; $57c1: $9f
	rra                                              ; $57c2: $1f
	and b                                            ; $57c3: $a0
	ld a, a                                          ; $57c4: $7f
	cp $9a                                           ; $57c5: $fe $9a
	db $d3                                           ; $57c7: $d3
	pop hl                                           ; $57c8: $e1
	db $eb                                           ; $57c9: $eb
	di                                               ; $57ca: $f3
	cp a                                             ; $57cb: $bf
	ld c, e                                          ; $57cc: $4b
	and b                                            ; $57cd: $a0
	ld [hl], a                                       ; $57ce: $77
	cp $97                                           ; $57cf: $fe $97
	rst SubAFromDE                                          ; $57d1: $df
	ld h, b                                          ; $57d2: $60
	rst AddAOntoHL                                          ; $57d3: $ef
	ld [hl], b                                       ; $57d4: $70
	ei                                               ; $57d5: $fb
	inc a                                            ; $57d6: $3c
	cp $1e                                           ; $57d7: $fe $1e
	rlca                                             ; $57d9: $07
	and b                                            ; $57da: $a0
	ld [hl], a                                       ; $57db: $77
	cp $7f                                           ; $57dc: $fe $7f
	and b                                            ; $57de: $a0
	sbc l                                            ; $57df: $9d
	dec sp                                           ; $57e0: $3b
	inc bc                                           ; $57e1: $03
	daa                                              ; $57e2: $27
	and b                                            ; $57e3: $a0
	sub l                                            ; $57e4: $95
	db $e3                                           ; $57e5: $e3
	ld bc, $03e3                                     ; $57e6: $01 $e3 $03
	rst JumpTable                                          ; $57e9: $c7
	inc bc                                           ; $57ea: $03
	daa                                              ; $57eb: $27
	add $ef                                          ; $57ec: $c6 $ef
	and $73                                          ; $57ee: $e6 $73
	jp z, $8092                                      ; $57f0: $ca $92 $80

	ld hl, sp-$40                                    ; $57f3: $f8 $c0
	ld hl, sp+$20                                    ; $57f5: $f8 $20
	db $fc                                           ; $57f7: $fc
	db $10                                           ; $57f8: $10
	cp $88                                           ; $57f9: $fe $88
	cp $66                                           ; $57fb: $fe $66
	rst $38                                          ; $57fd: $ff
	dec de                                           ; $57fe: $1b
	ld e, e                                          ; $57ff: $5b
	sub b                                            ; $5800: $90
	add b                                            ; $5801: $80
	ret nz                                           ; $5802: $c0

	rst $38                                          ; $5803: $ff
	ldh a, [$98]                                     ; $5804: $f0 $98
	adc b                                            ; $5806: $88
	ld b, b                                          ; $5807: $40
	ld b, b                                          ; $5808: $40
	db $10                                           ; $5809: $10
	db $10                                           ; $580a: $10
	ld b, b                                          ; $580b: $40
	ld b, b                                          ; $580c: $40
	nop                                              ; $580d: $00
	nop                                              ; $580e: $00
	inc bc                                           ; $580f: $03
	inc bc                                           ; $5810: $03
	rrca                                             ; $5811: $0f
	rrca                                             ; $5812: $0f
	ld a, a                                          ; $5813: $7f
	ld a, a                                          ; $5814: $7f
	ldh a, [$bf]                                     ; $5815: $f0 $bf
	ldh [rIE], a                                     ; $5817: $e0 $ff
	ldh a, [$3f]                                     ; $5819: $f0 $3f
	ld hl, sp+$3f                                    ; $581b: $f8 $3f
	ld hl, sp+$2f                                    ; $581d: $f8 $2f
	db $fc                                           ; $581f: $fc
	rlca                                             ; $5820: $07
	ld [hl], a                                       ; $5821: $77
	cp $7f                                           ; $5822: $fe $7f
	ldh [$df], a                                     ; $5824: $e0 $df
	ret nz                                           ; $5826: $c0

	sbc h                                            ; $5827: $9c
	ldh a, [rSVBK]                                   ; $5828: $f0 $70
	ld h, b                                          ; $582a: $60
	cp $27                                           ; $582b: $fe $27
	ldh [$9a], a                                     ; $582d: $e0 $9a
	ldh [$c0], a                                     ; $582f: $e0 $c0
	ldh a, [$f0]                                     ; $5831: $f0 $f0
	ldh [$7b], a                                     ; $5833: $e0 $7b
	rst SubAFromDE                                          ; $5835: $df
	inc de                                           ; $5836: $13
	ldh [$df], a                                     ; $5837: $e0 $df
	ldh [$9e], a                                     ; $5839: $e0 $9e
	ld b, b                                          ; $583b: $40
	cpl                                              ; $583c: $2f
	ldh [$8b], a                                     ; $583d: $e0 $8b
	ld bc, $e480                                     ; $583f: $01 $80 $e4
	rst $38                                          ; $5842: $ff
	rst $38                                          ; $5843: $ff
	sbc a                                            ; $5844: $9f
	add l                                            ; $5845: $85
	ld a, a                                          ; $5846: $7f
	dec a                                            ; $5847: $3d
	rst $38                                          ; $5848: $ff
	rst FarCall                                          ; $5849: $f7
	db $ed                                           ; $584a: $ed
	ld a, l                                          ; $584b: $7d
	push de                                          ; $584c: $d5
	ld l, l                                          ; $584d: $6d
	db $dd                                           ; $584e: $dd
	ld l, l                                          ; $584f: $6d
	db $dd                                           ; $5850: $dd
	ld h, a                                          ; $5851: $67
	db $dd                                           ; $5852: $dd
	or l                                             ; $5853: $b5
	rst AddAOntoHL                                          ; $5854: $ef
	cp l                                             ; $5855: $bd
	rst SubAFromBC                                          ; $5856: $e7
	ld e, a                                          ; $5857: $5f
	ld [hl], e                                       ; $5858: $73
	cpl                                              ; $5859: $2f
	add hl, sp                                       ; $585a: $39
	rla                                              ; $585b: $17
	dec e                                            ; $585c: $1d
	rrca                                             ; $585d: $0f
	inc c                                            ; $585e: $0c
	rlca                                             ; $585f: $07
	add b                                            ; $5860: $80
	ld b, $03                                        ; $5861: $06 $03
	ld [bc], a                                       ; $5863: $02
	rlca                                             ; $5864: $07
	rlca                                             ; $5865: $07
	rrca                                             ; $5866: $0f
	dec c                                            ; $5867: $0d
	rra                                              ; $5868: $1f
	inc d                                            ; $5869: $14
	ld a, a                                          ; $586a: $7f
	halt                                             ; $586b: $76
	sbc a                                            ; $586c: $9f
	di                                               ; $586d: $f3
	ccf                                              ; $586e: $3f
	pop af                                           ; $586f: $f1
	ccf                                              ; $5870: $3f
	ldh a, [$1f]                                     ; $5871: $f0 $1f
	ldh a, [$1f]                                     ; $5873: $f0 $1f
	ld hl, sp+$0f                                    ; $5875: $f8 $0f
	ld hl, sp+$0f                                    ; $5877: $f8 $0f
	db $fc                                           ; $5879: $fc
	add a                                            ; $587a: $87
	cp $03                                           ; $587b: $fe $03
	rst $38                                          ; $587d: $ff
	ld bc, $86ff                                     ; $587e: $01 $ff $86
	nop                                              ; $5881: $00
	rst $38                                          ; $5882: $ff
	cp $ff                                           ; $5883: $fe $ff
	rst $38                                          ; $5885: $ff
	rlca                                             ; $5886: $07
	rst $38                                          ; $5887: $ff
	nop                                              ; $5888: $00
	add c                                            ; $5889: $81
	ld a, [hl]                                       ; $588a: $7e
	rst $38                                          ; $588b: $ff
	ld a, a                                          ; $588c: $7f
	or c                                             ; $588d: $b1
	ld sp, $1b9b                                     ; $588e: $31 $9b $1b
	cp l                                             ; $5891: $bd
	ccf                                              ; $5892: $3f
	xor d                                            ; $5893: $aa
	ld l, $e4                                        ; $5894: $2e $e4
	inc h                                            ; $5896: $24
	ld hl, sp+$18                                    ; $5897: $f8 $18
	call c, $c0bc                                    ; $5899: $dc $bc $c0
	ldh [$e0], a                                     ; $589c: $e0 $e0
	ldh [$33], a                                     ; $589e: $e0 $33
	adc l                                            ; $58a0: $8d
	rst $38                                          ; $58a1: $ff
	rst GetHLinHL                                          ; $58a2: $cf
	db $fc                                           ; $58a3: $fc
	ld sp, hl                                        ; $58a4: $f9
	ld [hl], c                                       ; $58a5: $71
	db $e3                                           ; $58a6: $e3
	inc bc                                           ; $58a7: $03
	ldh a, [rP1]                                     ; $58a8: $f0 $00
	ldh a, [$80]                                     ; $58aa: $f0 $80
	or b                                             ; $58ac: $b0
	ret nz                                           ; $58ad: $c0

	ldh a, [$c0]                                     ; $58ae: $f0 $c0
	and b                                            ; $58b0: $a0
	ret nz                                           ; $58b1: $c0

	nop                                              ; $58b2: $00
	cp a                                             ; $58b3: $bf
	ld bc, $de01                                     ; $58b4: $01 $01 $de
	ld bc, $1a80                                     ; $58b7: $01 $80 $1a
	inc bc                                           ; $58ba: $03
	ld a, [hl-]                                      ; $58bb: $3a
	ld [bc], a                                       ; $58bc: $02
	add hl, sp                                       ; $58bd: $39
	add hl, bc                                       ; $58be: $09
	db $db                                           ; $58bf: $db
	ld [hl], c                                       ; $58c0: $71
	or e                                             ; $58c1: $b3
	pop hl                                           ; $58c2: $e1
	pop hl                                           ; $58c3: $e1
	pop bc                                           ; $58c4: $c1
	add c                                            ; $58c5: $81
	ld bc, $0001                                     ; $58c6: $01 $01 $00
	inc e                                            ; $58c9: $1c
	jr jr_071_590a                                   ; $58ca: $18 $3e

	inc e                                            ; $58cc: $1c
	halt                                             ; $58cd: $76
	ld c, $fa                                        ; $58ce: $0e $fa
	ld b, $11                                        ; $58d0: $06 $11
	ldh [c], a                                       ; $58d2: $e2
	ld sp, hl                                        ; $58d3: $f9
	ldh a, [$3b]                                     ; $58d4: $f0 $3b
	add hl, sp                                       ; $58d6: $39
	rst SubAFromDE                                          ; $58d7: $df
	adc [hl]                                         ; $58d8: $8e
	ei                                               ; $58d9: $fb
	xor a                                            ; $58da: $af
	db $eb                                           ; $58db: $eb
	ld b, a                                          ; $58dc: $47
	ld b, [hl]                                       ; $58dd: $46
	adc a                                            ; $58de: $8f
	add [hl]                                         ; $58df: $86
	ei                                               ; $58e0: $fb
	ld a, [bc]                                       ; $58e1: $0a
	ei                                               ; $58e2: $fb
	ld a, [de]                                       ; $58e3: $1a
	rst FarCall                                          ; $58e4: $f7
	dec [hl]                                         ; $58e5: $35
	rst SubAFromBC                                          ; $58e6: $e7
	ld h, a                                          ; $58e7: $67
	rst JumpTable                                          ; $58e8: $c7
	push bc                                          ; $58e9: $c5
	ld a, e                                          ; $58ea: $7b
	ld a, d                                          ; $58eb: $7a
	adc l                                            ; $58ec: $8d
	dec d                                            ; $58ed: $15
	sbc a                                            ; $58ee: $9f
	sub h                                            ; $58ef: $94
	halt                                             ; $58f0: $76
	or $13                                           ; $58f1: $f6 $13
	di                                               ; $58f3: $f3
	add hl, bc                                       ; $58f4: $09
	ld sp, hl                                        ; $58f5: $f9
	ld c, $ff                                        ; $58f6: $0e $ff
	inc d                                            ; $58f8: $14
	rst $38                                          ; $58f9: $ff
	ld d, $ff                                        ; $58fa: $16 $ff
	ld [hl-], a                                      ; $58fc: $32
	rst $38                                          ; $58fd: $ff
	inc hl                                           ; $58fe: $23
	ld l, e                                          ; $58ff: $6b
	add b                                            ; $5900: $80
	ld a, a                                          ; $5901: $7f
	cp $98                                           ; $5902: $fe $98
	jp $fe7c                                         ; $5904: $c3 $7c $fe


	ld a, a                                          ; $5907: $7f
	db $d3                                           ; $5908: $d3
	ld d, e                                          ; $5909: $53

jr_071_590a:
	cp a                                             ; $590a: $bf
	rla                                              ; $590b: $17
	add b                                            ; $590c: $80
	sbc b                                            ; $590d: $98
	nop                                              ; $590e: $00
	ld [hl], b                                       ; $590f: $70
	add b                                            ; $5910: $80
	ldh a, [$80]                                     ; $5911: $f0 $80
	ldh [$80], a                                     ; $5913: $e0 $80
	rlca                                             ; $5915: $07
	add b                                            ; $5916: $80
	sub c                                            ; $5917: $91
	pop af                                           ; $5918: $f1
	ld [bc], a                                       ; $5919: $02
	reti                                             ; $591a: $d9


	ldh [$2b], a                                     ; $591b: $e0 $2b
	ld sp, $f3ff                                     ; $591d: $31 $ff $f3
	or a                                             ; $5920: $b7
	di                                               ; $5921: $f3
	ld d, a                                          ; $5922: $57
	ld d, [hl]                                       ; $5923: $56
	adc a                                            ; $5924: $8f
	add [hl]                                         ; $5925: $86
	ld h, a                                          ; $5926: $67
	and b                                            ; $5927: $a0
	ld a, a                                          ; $5928: $7f
	cp $95                                           ; $5929: $fe $95
	rst JumpTable                                          ; $592b: $c7
	ld a, b                                          ; $592c: $78
	db $fd                                           ; $592d: $fd
	ld a, [hl]                                       ; $592e: $7e
	cp [hl]                                          ; $592f: $be
	ccf                                              ; $5930: $3f
	xor e                                            ; $5931: $ab
	cpl                                              ; $5932: $2f
	push hl                                          ; $5933: $e5
	dec h                                            ; $5934: $25
	daa                                              ; $5935: $27
	and b                                            ; $5936: $a0
	ld [hl], a                                       ; $5937: $77
	cp $7f                                           ; $5938: $fe $7f
	xor $77                                          ; $593a: $ee $77
	and b                                            ; $593c: $a0
	ld [hl], a                                       ; $593d: $77
	sbc a                                            ; $593e: $9f
	rra                                              ; $593f: $1f
	and b                                            ; $5940: $a0
	sbc b                                            ; $5941: $98
	pop af                                           ; $5942: $f1
	nop                                              ; $5943: $00
	db $d3                                           ; $5944: $d3
	pop hl                                           ; $5945: $e1
	db $eb                                           ; $5946: $eb
	di                                               ; $5947: $f3
	cp a                                             ; $5948: $bf
	ld h, a                                          ; $5949: $67
	and b                                            ; $594a: $a0
	sbc [hl]                                         ; $594b: $9e
	rrca                                             ; $594c: $0f
	ld l, a                                          ; $594d: $6f
	and b                                            ; $594e: $a0
	ld [hl], a                                       ; $594f: $77
	cp $97                                           ; $5950: $fe $97
	rst SubAFromDE                                          ; $5952: $df
	ld h, b                                          ; $5953: $60
	rst AddAOntoHL                                          ; $5954: $ef
	ld [hl], b                                       ; $5955: $70
	ei                                               ; $5956: $fb
	inc a                                            ; $5957: $3c
	cp $1e                                           ; $5958: $fe $1e
	rlca                                             ; $595a: $07
	and b                                            ; $595b: $a0
	ld [hl], a                                       ; $595c: $77
	cp $7f                                           ; $595d: $fe $7f
	and b                                            ; $595f: $a0
	sbc l                                            ; $5960: $9d
	dec sp                                           ; $5961: $3b
	inc bc                                           ; $5962: $03
	ld d, e                                          ; $5963: $53
	and b                                            ; $5964: $a0
	sub a                                            ; $5965: $97
	nop                                              ; $5966: $00
	ld a, $18                                        ; $5967: $3e $18
	ld a, [hl]                                       ; $5969: $7e
	inc e                                            ; $596a: $1c
	or $0e                                           ; $596b: $f6 $0e
	di                                               ; $596d: $f3
	ld a, e                                          ; $596e: $7b
	sbc [hl]                                         ; $596f: $9e
	sub l                                            ; $5970: $95
	db $e3                                           ; $5971: $e3
	ld bc, $03e3                                     ; $5972: $01 $e3 $03
	rst JumpTable                                          ; $5975: $c7
	inc bc                                           ; $5976: $03
	daa                                              ; $5977: $27
	add $ef                                          ; $5978: $c6 $ef
	and $73                                          ; $597a: $e6 $73
	jp z, $8092                                      ; $597c: $ca $92 $80

	ld hl, sp-$40                                    ; $597f: $f8 $c0
	ld hl, sp+$20                                    ; $5981: $f8 $20
	db $fc                                           ; $5983: $fc
	db $10                                           ; $5984: $10
	cp $88                                           ; $5985: $fe $88
	cp $66                                           ; $5987: $fe $66
	rst $38                                          ; $5989: $ff
	dec de                                           ; $598a: $1b
	ld h, a                                          ; $598b: $67
	jr nc, jr_071_5a09                               ; $598c: $30 $7b

	cp $80                                           ; $598e: $fe $80
	ret nz                                           ; $5990: $c0

	rst $38                                          ; $5991: $ff
	ldh a, [rAUD2LOW]                                ; $5992: $f0 $18
	ld [$60e0], sp                                   ; $5994: $08 $e0 $60
	jr nc, jr_071_59a9                               ; $5997: $30 $10

	ret nz                                           ; $5999: $c0

	ld b, b                                          ; $599a: $40
	nop                                              ; $599b: $00
	nop                                              ; $599c: $00
	inc bc                                           ; $599d: $03
	inc bc                                           ; $599e: $03
	rrca                                             ; $599f: $0f
	rrca                                             ; $59a0: $0f
	ld a, a                                          ; $59a1: $7f
	ld a, a                                          ; $59a2: $7f
	ldh a, [$bf]                                     ; $59a3: $f0 $bf
	ldh [rIE], a                                     ; $59a5: $e0 $ff
	ldh a, [$3f]                                     ; $59a7: $f0 $3f

jr_071_59a9:
	ld hl, sp+$3f                                    ; $59a9: $f8 $3f
	ld hl, sp+$2f                                    ; $59ab: $f8 $2f
	db $fc                                           ; $59ad: $fc
	rlca                                             ; $59ae: $07
	ld [hl], a                                       ; $59af: $77
	cp $77                                           ; $59b0: $fe $77
	ldh [$99], a                                     ; $59b2: $e0 $99
	ld [hl], b                                       ; $59b4: $70
	jr nc, jr_071_59e7                               ; $59b5: $30 $30

	nop                                              ; $59b7: $00
	ret nz                                           ; $59b8: $c0

	ld b, b                                          ; $59b9: $40
	rra                                              ; $59ba: $1f
	ldh [$de], a                                     ; $59bb: $e0 $de
	ldh a, [$df]                                     ; $59bd: $f0 $df
	ldh [rIF], a                                     ; $59bf: $e0 $0f
	ldh [$7b], a                                     ; $59c1: $e0 $7b
	sbc $9d                                          ; $59c3: $de $9d
	db $e3                                           ; $59c5: $e3
	ld b, e                                          ; $59c6: $43
	scf                                              ; $59c7: $37
	ldh [$8a], a                                     ; $59c8: $e0 $8a
	ld bc, $e480                                     ; $59ca: $01 $80 $e4
	rst $38                                          ; $59cd: $ff
	rst $38                                          ; $59ce: $ff
	sbc a                                            ; $59cf: $9f
	add l                                            ; $59d0: $85
	ld a, a                                          ; $59d1: $7f
	dec a                                            ; $59d2: $3d
	rst $38                                          ; $59d3: $ff
	rst FarCall                                          ; $59d4: $f7
	db $ed                                           ; $59d5: $ed
	ld a, l                                          ; $59d6: $7d
	push de                                          ; $59d7: $d5
	ld l, l                                          ; $59d8: $6d
	db $dd                                           ; $59d9: $dd
	ld l, l                                          ; $59da: $6d
	db $dd                                           ; $59db: $dd
	ld h, a                                          ; $59dc: $67
	db $dd                                           ; $59dd: $dd
	or l                                             ; $59de: $b5
	rst AddAOntoHL                                          ; $59df: $ef
	cp l                                             ; $59e0: $bd
	rst SubAFromBC                                          ; $59e1: $e7
	ld e, a                                          ; $59e2: $5f
	ld [hl], e                                       ; $59e3: $73
	cpl                                              ; $59e4: $2f
	add hl, sp                                       ; $59e5: $39
	rla                                              ; $59e6: $17

jr_071_59e7:
	dec e                                            ; $59e7: $1d
	rrca                                             ; $59e8: $0f
	inc c                                            ; $59e9: $0c
	rlca                                             ; $59ea: $07
	add b                                            ; $59eb: $80
	ld b, $03                                        ; $59ec: $06 $03
	ld [bc], a                                       ; $59ee: $02
	rlca                                             ; $59ef: $07
	rlca                                             ; $59f0: $07
	rrca                                             ; $59f1: $0f
	dec c                                            ; $59f2: $0d
	rra                                              ; $59f3: $1f
	inc d                                            ; $59f4: $14
	ld a, a                                          ; $59f5: $7f
	halt                                             ; $59f6: $76
	sbc a                                            ; $59f7: $9f
	di                                               ; $59f8: $f3
	ccf                                              ; $59f9: $3f
	pop af                                           ; $59fa: $f1
	ccf                                              ; $59fb: $3f
	ldh a, [$1f]                                     ; $59fc: $f0 $1f
	ldh a, [$1f]                                     ; $59fe: $f0 $1f
	ld hl, sp+$0f                                    ; $5a00: $f8 $0f
	ld hl, sp+$0f                                    ; $5a02: $f8 $0f
	db $fc                                           ; $5a04: $fc
	add a                                            ; $5a05: $87
	cp $03                                           ; $5a06: $fe $03
	rst $38                                          ; $5a08: $ff

jr_071_5a09:
	ld bc, $86ff                                     ; $5a09: $01 $ff $86
	nop                                              ; $5a0c: $00
	rst $38                                          ; $5a0d: $ff
	cp $ff                                           ; $5a0e: $fe $ff
	rst $38                                          ; $5a10: $ff
	rlca                                             ; $5a11: $07
	rst $38                                          ; $5a12: $ff
	nop                                              ; $5a13: $00
	add e                                            ; $5a14: $83
	ld a, h                                          ; $5a15: $7c
	cp $7f                                           ; $5a16: $fe $7f
	or e                                             ; $5a18: $b3
	inc sp                                           ; $5a19: $33
	sbc c                                            ; $5a1a: $99
	add hl, de                                       ; $5a1b: $19
	cp l                                             ; $5a1c: $bd
	ccf                                              ; $5a1d: $3f
	xor d                                            ; $5a1e: $aa
	ld l, $e4                                        ; $5a1f: $2e $e4
	inc l                                            ; $5a21: $2c
	ld hl, sp+$18                                    ; $5a22: $f8 $18
	call c, $c0bc                                    ; $5a24: $dc $bc $c0
	ldh [$e0], a                                     ; $5a27: $e0 $e0
	ldh [$33], a                                     ; $5a29: $e0 $33
	adc l                                            ; $5a2b: $8d
	rst $38                                          ; $5a2c: $ff
	rst GetHLinHL                                          ; $5a2d: $cf
	db $fc                                           ; $5a2e: $fc
	ld sp, hl                                        ; $5a2f: $f9
	pop af                                           ; $5a30: $f1
	db $e3                                           ; $5a31: $e3
	ld h, e                                          ; $5a32: $63
	ldh a, [rP1]                                     ; $5a33: $f0 $00
	ld [hl], b                                       ; $5a35: $70
	add b                                            ; $5a36: $80
	ldh a, [$80]                                     ; $5a37: $f0 $80
	or b                                             ; $5a39: $b0
	ret nz                                           ; $5a3a: $c0

	ldh [$c0], a                                     ; $5a3b: $e0 $c0
	nop                                              ; $5a3d: $00
	cp a                                             ; $5a3e: $bf
	ld bc, $de01                                     ; $5a3f: $01 $01 $de
	ld bc, $1a90                                     ; $5a42: $01 $90 $1a
	inc bc                                           ; $5a45: $03
	ld a, [hl-]                                      ; $5a46: $3a
	ld [bc], a                                       ; $5a47: $02
	add hl, sp                                       ; $5a48: $39
	add hl, bc                                       ; $5a49: $09
	db $db                                           ; $5a4a: $db
	ld [hl], c                                       ; $5a4b: $71
	or e                                             ; $5a4c: $b3
	pop hl                                           ; $5a4d: $e1
	pop hl                                           ; $5a4e: $e1
	pop bc                                           ; $5a4f: $c1
	add c                                            ; $5a50: $81
	ld bc, $bf01                                     ; $5a51: $01 $01 $bf
	inc e                                            ; $5a54: $1c
	ld a, $82                                        ; $5a55: $3e $82
	ld a, $72                                        ; $5a57: $3e $72
	ld a, h                                          ; $5a59: $7c
	cp $00                                           ; $5a5a: $fe $00
	inc de                                           ; $5a5c: $13
	ldh [$f9], a                                     ; $5a5d: $e0 $f9
	ldh a, [$3b]                                     ; $5a5f: $f0 $3b
	add hl, sp                                       ; $5a61: $39
	rst SubAFromDE                                          ; $5a62: $df
	ei                                               ; $5a63: $fb
	xor a                                            ; $5a64: $af
	db $eb                                           ; $5a65: $eb
	ld b, a                                          ; $5a66: $47
	add $8f                                          ; $5a67: $c6 $8f
	add [hl]                                         ; $5a69: $86
	ei                                               ; $5a6a: $fb
	ld a, [bc]                                       ; $5a6b: $0a
	ei                                               ; $5a6c: $fb
	ld a, [de]                                       ; $5a6d: $1a
	rst FarCall                                          ; $5a6e: $f7
	dec [hl]                                         ; $5a6f: $35
	rst SubAFromBC                                          ; $5a70: $e7
	ld h, a                                          ; $5a71: $67
	rst JumpTable                                          ; $5a72: $c7
	push bc                                          ; $5a73: $c5
	ld a, e                                          ; $5a74: $7b
	ld a, d                                          ; $5a75: $7a
	adc l                                            ; $5a76: $8d
	dec d                                            ; $5a77: $15
	sbc a                                            ; $5a78: $9f
	sub h                                            ; $5a79: $94
	halt                                             ; $5a7a: $76
	or $13                                           ; $5a7b: $f6 $13
	di                                               ; $5a7d: $f3
	add hl, bc                                       ; $5a7e: $09
	ld sp, hl                                        ; $5a7f: $f9
	ld c, $ff                                        ; $5a80: $0e $ff
	inc d                                            ; $5a82: $14
	rst $38                                          ; $5a83: $ff
	ld d, $ff                                        ; $5a84: $16 $ff
	ld [hl-], a                                      ; $5a86: $32
	rst $38                                          ; $5a87: $ff
	inc hl                                           ; $5a88: $23
	ld l, e                                          ; $5a89: $6b
	add b                                            ; $5a8a: $80
	ld a, a                                          ; $5a8b: $7f
	cp $9e                                           ; $5a8c: $fe $9e
	jp Jump_071_7e7b                                 ; $5a8e: $c3 $7b $7e


	sbc h                                            ; $5a91: $9c
	db $d3                                           ; $5a92: $d3
	ld d, e                                          ; $5a93: $53
	cp a                                             ; $5a94: $bf
	dec de                                           ; $5a95: $1b
	add b                                            ; $5a96: $80
	ld l, a                                          ; $5a97: $6f
	ld a, [hl]                                       ; $5a98: $7e
	sbc l                                            ; $5a99: $9d
	ldh [$80], a                                     ; $5a9a: $e0 $80
	rlca                                             ; $5a9c: $07
	add b                                            ; $5a9d: $80
	sub c                                            ; $5a9e: $91
	di                                               ; $5a9f: $f3
	nop                                              ; $5aa0: $00
	reti                                             ; $5aa1: $d9


	ldh [$2b], a                                     ; $5aa2: $e0 $2b
	ld sp, $f3ff                                     ; $5aa4: $31 $ff $f3
	or a                                             ; $5aa7: $b7
	di                                               ; $5aa8: $f3
	ld d, a                                          ; $5aa9: $57
	sub $8f                                          ; $5aaa: $d6 $8f
	add [hl]                                         ; $5aac: $86
	ld h, a                                          ; $5aad: $67
	and b                                            ; $5aae: $a0
	ld a, a                                          ; $5aaf: $7f
	cp $95                                           ; $5ab0: $fe $95
	rst JumpTable                                          ; $5ab2: $c7
	ld a, b                                          ; $5ab3: $78
	db $fd                                           ; $5ab4: $fd
	ld a, [hl]                                       ; $5ab5: $7e
	cp [hl]                                          ; $5ab6: $be
	ccf                                              ; $5ab7: $3f
	xor e                                            ; $5ab8: $ab
	ccf                                              ; $5ab9: $3f
	push hl                                          ; $5aba: $e5
	dec l                                            ; $5abb: $2d
	daa                                              ; $5abc: $27
	and b                                            ; $5abd: $a0
	ld [hl], a                                       ; $5abe: $77
	cp $7f                                           ; $5abf: $fe $7f
	xor $77                                          ; $5ac1: $ee $77
	and b                                            ; $5ac3: $a0
	ld [hl], a                                       ; $5ac4: $77
	sbc a                                            ; $5ac5: $9f
	rra                                              ; $5ac6: $1f
	and b                                            ; $5ac7: $a0
	sbc b                                            ; $5ac8: $98
	pop af                                           ; $5ac9: $f1
	nop                                              ; $5aca: $00
	db $d3                                           ; $5acb: $d3
	pop hl                                           ; $5acc: $e1
	db $eb                                           ; $5acd: $eb
	di                                               ; $5ace: $f3
	cp a                                             ; $5acf: $bf
	ld e, a                                          ; $5ad0: $5f
	and b                                            ; $5ad1: $a0
	halt                                             ; $5ad2: $76
	or a                                             ; $5ad3: $b7
	cp [hl]                                          ; $5ad4: $be
	rst $38                                          ; $5ad5: $ff
	rst $38                                          ; $5ad6: $ff
	rst SubAFromDE                                          ; $5ad7: $df
	sbc b                                            ; $5ad8: $98
	ld h, b                                          ; $5ad9: $60
	rst AddAOntoHL                                          ; $5ada: $ef
	ld [hl], b                                       ; $5adb: $70
	ei                                               ; $5adc: $fb
	inc a                                            ; $5add: $3c
	cp $1e                                           ; $5ade: $fe $1e
	ld b, e                                          ; $5ae0: $43
	and b                                            ; $5ae1: $a0
	sbc h                                            ; $5ae2: $9c
	jp Jump_071_60f0                                 ; $5ae3: $c3 $f0 $60


	ld d, a                                          ; $5ae6: $57
	and b                                            ; $5ae7: $a0
	ld [hl], a                                       ; $5ae8: $77
	cp $7f                                           ; $5ae9: $fe $7f
	and b                                            ; $5aeb: $a0
	sbc l                                            ; $5aec: $9d
	dec sp                                           ; $5aed: $3b
	inc bc                                           ; $5aee: $03
	ld c, a                                          ; $5aef: $4f
	and b                                            ; $5af0: $a0
	sbc c                                            ; $5af1: $99
	inc a                                            ; $5af2: $3c
	nop                                              ; $5af3: $00
	ld a, [hl]                                       ; $5af4: $7e
	ld a, $f2                                        ; $5af5: $3e $f2
	ld a, h                                          ; $5af7: $7c
	ld [hl], a                                       ; $5af8: $77
	and b                                            ; $5af9: $a0
	sub l                                            ; $5afa: $95
	db $e3                                           ; $5afb: $e3
	ld bc, $03e3                                     ; $5afc: $01 $e3 $03
	rst JumpTable                                          ; $5aff: $c7
	inc bc                                           ; $5b00: $03
	daa                                              ; $5b01: $27
	add $ef                                          ; $5b02: $c6 $ef
	and $73                                          ; $5b04: $e6 $73
	jp z, $8092                                      ; $5b06: $ca $92 $80

	ld hl, sp-$40                                    ; $5b09: $f8 $c0
	ld hl, sp+$20                                    ; $5b0b: $f8 $20
	db $fc                                           ; $5b0d: $fc
	db $10                                           ; $5b0e: $10
	cp $88                                           ; $5b0f: $fe $88
	cp $66                                           ; $5b11: $fe $66
	rst $38                                          ; $5b13: $ff
	dec de                                           ; $5b14: $1b
	ld h, a                                          ; $5b15: $67
	jr nc, jr_071_5b93                               ; $5b16: $30 $7b

	cp $80                                           ; $5b18: $fe $80
	ret nz                                           ; $5b1a: $c0

	rst $38                                          ; $5b1b: $ff
	ldh a, [rAUD2LOW]                                ; $5b1c: $f0 $18
	ld [$60e0], sp                                   ; $5b1e: $08 $e0 $60
	jr nc, jr_071_5b33                               ; $5b21: $30 $10

	ret nz                                           ; $5b23: $c0

	ld b, b                                          ; $5b24: $40
	nop                                              ; $5b25: $00
	nop                                              ; $5b26: $00
	inc bc                                           ; $5b27: $03
	inc bc                                           ; $5b28: $03
	rrca                                             ; $5b29: $0f
	rrca                                             ; $5b2a: $0f
	ld a, a                                          ; $5b2b: $7f
	ld a, a                                          ; $5b2c: $7f
	ldh a, [$bf]                                     ; $5b2d: $f0 $bf
	ldh [rIE], a                                     ; $5b2f: $e0 $ff
	ldh a, [$3f]                                     ; $5b31: $f0 $3f

jr_071_5b33:
	ld hl, sp+$3f                                    ; $5b33: $f8 $3f
	ld hl, sp+$2f                                    ; $5b35: $f8 $2f
	db $fc                                           ; $5b37: $fc
	rlca                                             ; $5b38: $07
	ld [hl], a                                       ; $5b39: $77
	cp $77                                           ; $5b3a: $fe $77
	ldh [$99], a                                     ; $5b3c: $e0 $99
	ld [hl], b                                       ; $5b3e: $70
	jr nc, jr_071_5b71                               ; $5b3f: $30 $30

	nop                                              ; $5b41: $00
	ret nz                                           ; $5b42: $c0

	ld b, b                                          ; $5b43: $40
	rra                                              ; $5b44: $1f
	ldh [$de], a                                     ; $5b45: $e0 $de
	ldh a, [$df]                                     ; $5b47: $f0 $df
	ldh [rIF], a                                     ; $5b49: $e0 $0f
	ldh [$7b], a                                     ; $5b4b: $e0 $7b
	sbc $9d                                          ; $5b4d: $de $9d
	db $e3                                           ; $5b4f: $e3
	ld b, e                                          ; $5b50: $43
	scf                                              ; $5b51: $37
	ldh [$bc], a                                     ; $5b52: $e0 $bc
	add d                                            ; $5b54: $82
	ld a, [$019e]                                    ; $5b55: $fa $9e $01
	ld c, e                                          ; $5b58: $4b
	ld hl, sp-$1e                                    ; $5b59: $f8 $e2
	sbc l                                            ; $5b5b: $9d
	ld bc, $6703                                     ; $5b5c: $01 $03 $67
	ld hl, sp-$75                                    ; $5b5f: $f8 $8b
	ld b, $0b                                        ; $5b61: $06 $0b
	ld [$1f10], sp                                   ; $5b63: $08 $10 $1f
	scf                                              ; $5b66: $37
	inc l                                            ; $5b67: $2c
	ld d, a                                          ; $5b68: $57
	rlca                                             ; $5b69: $07
	inc c                                            ; $5b6a: $0c
	rrca                                             ; $5b6b: $0f
	rra                                              ; $5b6c: $1f
	rra                                              ; $5b6d: $1f
	jr c, jr_071_5ba3                                ; $5b6e: $38 $33

	ld l, a                                          ; $5b70: $6f

jr_071_5b71:
	ld l, d                                          ; $5b71: $6a
	ld [hl], l                                       ; $5b72: $75
	sbc $eb                                          ; $5b73: $de $eb
	db $dd                                           ; $5b75: $dd
	or $9b                                           ; $5b76: $f6 $9b
	ld e, l                                          ; $5b78: $5d
	ld e, e                                          ; $5b79: $5b
	or e                                             ; $5b7a: $b3
	or [hl]                                          ; $5b7b: $b6
	db $dd                                           ; $5b7c: $dd
	xor l                                            ; $5b7d: $ad
	rst SubAFromDE                                          ; $5b7e: $df
	or [hl]                                          ; $5b7f: $b6
	add b                                            ; $5b80: $80
	and [hl]                                         ; $5b81: $a6
	ld h, [hl]                                       ; $5b82: $66
	ld l, c                                          ; $5b83: $69
	ld c, c                                          ; $5b84: $49
	sub d                                            ; $5b85: $92
	and $ed                                          ; $5b86: $e6 $ed
	db $ed                                           ; $5b88: $ed
	db $fd                                           ; $5b89: $fd
	ld a, l                                          ; $5b8a: $7d
	ld a, a                                          ; $5b8b: $7f
	ld a, a                                          ; $5b8c: $7f
	rst $38                                          ; $5b8d: $ff
	rst $38                                          ; $5b8e: $ff
	cp [hl]                                          ; $5b8f: $be
	reti                                             ; $5b90: $d9


	adc a                                            ; $5b91: $8f
	dec e                                            ; $5b92: $1d

jr_071_5b93:
	inc sp                                           ; $5b93: $33
	inc l                                            ; $5b94: $2c
	ld d, e                                          ; $5b95: $53
	ld l, [hl]                                       ; $5b96: $6e
	rst $38                                          ; $5b97: $ff
	rst SubAFromDE                                          ; $5b98: $df
	adc c                                            ; $5b99: $89
	inc de                                           ; $5b9a: $13
	cpl                                              ; $5b9b: $2f
	inc a                                            ; $5b9c: $3c
	ld [hl], e                                       ; $5b9d: $73
	ld l, l                                          ; $5b9e: $6d
	ld e, a                                          ; $5b9f: $5f
	sub e                                            ; $5ba0: $93
	ld b, c                                          ; $5ba1: $41
	inc bc                                           ; $5ba2: $03

jr_071_5ba3:
	rlca                                             ; $5ba3: $07
	dec e                                            ; $5ba4: $1d
	ld a, [hl]                                       ; $5ba5: $7e
	nop                                              ; $5ba6: $00
	nop                                              ; $5ba7: $00
	ld e, a                                          ; $5ba8: $5f
	ld b, c                                          ; $5ba9: $41
	ld [bc], a                                       ; $5baa: $02
	inc b                                            ; $5bab: $04
	dec de                                           ; $5bac: $1b
	ld a, e                                          ; $5bad: $7b
	ld hl, sp+$33                                    ; $5bae: $f8 $33
	sub d                                            ; $5bb0: $92
	sbc $01                                          ; $5bb1: $de $01
	ld h, a                                          ; $5bb3: $67
	ld hl, sp-$21                                    ; $5bb4: $f8 $df
	ld bc, $d07f                                     ; $5bb6: $01 $7f $d0
	sub e                                            ; $5bb9: $93
	ld a, [bc]                                       ; $5bba: $0a
	dec c                                            ; $5bbb: $0d
	ld d, $13                                        ; $5bbc: $16 $13
	ld bc, $0201                                     ; $5bbe: $01 $01 $02

jr_071_5bc1:
	inc b                                            ; $5bc1: $04
	dec c                                            ; $5bc2: $0d
	dec bc                                           ; $5bc3: $0b
	add hl, de                                       ; $5bc4: $19
	inc e                                            ; $5bc5: $1c
	ldh a, [$80]                                     ; $5bc6: $f0 $80
	inc bc                                           ; $5bc8: $03
	ld c, $35                                        ; $5bc9: $0e $35
	ld e, d                                          ; $5bcb: $5a
	rst FarCall                                          ; $5bcc: $f7
	dec [hl]                                         ; $5bcd: $35
	ret z                                            ; $5bce: $c8

	nop                                              ; $5bcf: $00
	inc bc                                           ; $5bd0: $03
	dec c                                            ; $5bd1: $0d
	dec sp                                           ; $5bd2: $3b
	ld h, a                                          ; $5bd3: $67
	rst $38                                          ; $5bd4: $ff
	adc $ff                                          ; $5bd5: $ce $ff
	ld l, a                                          ; $5bd7: $6f
	ret c                                            ; $5bd8: $d8

	sub e                                            ; $5bd9: $93
	ld l, $f0                                        ; $5bda: $2e $f0
	rst SubAFromBC                                          ; $5bdc: $e7
	ld hl, $1fc0                                     ; $5bdd: $21 $c0 $1f
	ccf                                              ; $5be0: $3f
	ld a, h                                          ; $5be1: $7c
	rst $38                                          ; $5be2: $ff
	rst $38                                          ; $5be3: $ff

jr_071_5be4:
	jr c, jr_071_5be4                                ; $5be4: $38 $fe

	rst $38                                          ; $5be6: $ff
	adc a                                            ; $5be7: $8f
	add $53                                          ; $5be8: $c6 $53
	reti                                             ; $5bea: $d9


	sub l                                            ; $5beb: $95
	ld a, e                                          ; $5bec: $7b
	ld l, l                                          ; $5bed: $6d
	cp $f7                                           ; $5bee: $fe $f7
	ld sp, hl                                        ; $5bf0: $f9
	db $ec                                           ; $5bf1: $ec
	ld h, [hl]                                       ; $5bf2: $66
	ld l, d                                          ; $5bf3: $6a
	db $ed                                           ; $5bf4: $ed
	or $d7                                           ; $5bf5: $f6 $d7
	sbc e                                            ; $5bf7: $9b
	ldh [$c1], a                                     ; $5bf8: $e0 $c1
	rst SubAFromDE                                          ; $5bfa: $df
	inc bc                                           ; $5bfb: $03
	add e                                            ; $5bfc: $83
	inc c                                            ; $5bfd: $0c
	jr nc, jr_071_5bc1                               ; $5bfe: $30 $c1

	rlca                                             ; $5c00: $07
	rra                                              ; $5c01: $1f
	ld a, a                                          ; $5c02: $7f
	inc bc                                           ; $5c03: $03
	inc bc                                           ; $5c04: $03
	rrca                                             ; $5c05: $0f
	ccf                                              ; $5c06: $3f
	rst $38                                          ; $5c07: $ff
	rst $38                                          ; $5c08: $ff
	db $fd                                           ; $5c09: $fd
	pop af                                           ; $5c0a: $f1
	rst GetHLinHL                                          ; $5c0b: $cf
	rlca                                             ; $5c0c: $07
	ld [hl], e                                       ; $5c0d: $73
	db $fd                                           ; $5c0e: $fd
	adc a                                            ; $5c0f: $8f

jr_071_5c10:
	rst $38                                          ; $5c10: $ff
	rst $38                                          ; $5c11: $ff
	inc bc                                           ; $5c12: $03
	adc l                                            ; $5c13: $8d
	inc bc                                           ; $5c14: $03
	ld hl, $fc78                                     ; $5c15: $21 $78 $fc
	cp $3e                                           ; $5c18: $fe $3e
	or c                                             ; $5c1a: $b1
	add b                                            ; $5c1b: $80
	rst $38                                          ; $5c1c: $ff

jr_071_5c1d:
	db $e3                                           ; $5c1d: $e3
	add b                                            ; $5c1e: $80
	ld a, a                                          ; $5c1f: $7f
	ld sp, hl                                        ; $5c20: $f9
	ld a, h                                          ; $5c21: $7c
	rst JumpTable                                          ; $5c22: $c7
	ld sp, $fcff                                     ; $5c23: $31 $ff $fc
	rst $38                                          ; $5c26: $ff
	add b                                            ; $5c27: $80
	cp $83                                           ; $5c28: $fe $83
	nop                                              ; $5c2a: $00
	ret nz                                           ; $5c2b: $c0

	adc [hl]                                         ; $5c2c: $8e
	ld h, e                                          ; $5c2d: $63
	ld hl, sp-$71                                    ; $5c2e: $f8 $8f
	inc hl                                           ; $5c30: $23
	adc c                                            ; $5c31: $89
	inc h                                            ; $5c32: $24
	ld [de], a                                       ; $5c33: $12
	ldh a, [$fc]                                     ; $5c34: $f0 $fc
	rra                                              ; $5c36: $1f
	ld b, $c1                                        ; $5c37: $06 $c1
	ld [hl], b                                       ; $5c39: $70
	jr @-$70                                         ; $5c3a: $18 $8e

	adc h                                            ; $5c3c: $8c
	add hl, bc                                       ; $5c3d: $09
	add [hl]                                         ; $5c3e: $86
	ld h, e                                          ; $5c3f: $63
	or a                                             ; $5c40: $b7
	db $db                                           ; $5c41: $db
	db $fd                                           ; $5c42: $fd
	ldh a, [c]                                       ; $5c43: $f2
	ld sp, $63c6                                     ; $5c44: $31 $c6 $63
	ld sp, $0c18                                     ; $5c47: $31 $18 $0c
	add [hl]                                         ; $5c4a: $86
	ld c, a                                          ; $5c4b: $4f
	rst $38                                          ; $5c4c: $ff
	ldh [$c1], a                                     ; $5c4d: $e0 $c1
	add l                                            ; $5c4f: $85
	add l                                            ; $5c50: $85
	dec bc                                           ; $5c51: $0b
	dec de                                           ; $5c52: $1b
	ld a, e                                          ; $5c53: $7b
	rst SubAFromHL                                          ; $5c54: $d7
	adc $b8                                          ; $5c55: $ce $b8
	ld h, b                                          ; $5c57: $60
	db $fc                                           ; $5c58: $fc
	ld sp, hl                                        ; $5c59: $f9
	di                                               ; $5c5a: $f3
	ldh [c], a                                       ; $5c5b: $e2
	add l                                            ; $5c5c: $85
	rlca                                             ; $5c5d: $07
	ccf                                              ; $5c5e: $3f
	ccf                                              ; $5c5f: $3f
	ldh [$a0], a                                     ; $5c60: $e0 $a0
	ldh [$c0], a                                     ; $5c62: $e0 $c0
	ret nz                                           ; $5c64: $c0

	ld b, b                                          ; $5c65: $40
	ld b, b                                          ; $5c66: $40
	ret nz                                           ; $5c67: $c0

	ccf                                              ; $5c68: $3f
	ccf                                              ; $5c69: $3f
	ld a, d                                          ; $5c6a: $7a
	ld [hl], e                                       ; $5c6b: $73
	sbc $ff                                          ; $5c6c: $de $ff
	pop af                                           ; $5c6e: $f1
	add b                                            ; $5c6f: $80
	ldh a, [$ee]                                     ; $5c70: $f0 $ee
	rra                                              ; $5c72: $1f
	inc bc                                           ; $5c73: $03
	pop af                                           ; $5c74: $f1
	ld a, h                                          ; $5c75: $7c
	rrca                                             ; $5c76: $0f
	db $e3                                           ; $5c77: $e3
	ldh a, [rAUD3HIGH]                               ; $5c78: $f0 $1e
	pop hl                                           ; $5c7a: $e1
	db $fc                                           ; $5c7b: $fc
	ld c, $83                                        ; $5c7c: $0e $83
	ldh a, [rAUD3LEVEL]                              ; $5c7e: $f0 $1c
	jr c, jr_071_5c10                                ; $5c80: $38 $8e

	ld h, e                                          ; $5c82: $63
	add hl, de                                       ; $5c83: $19
	add $f6                                          ; $5c84: $c6 $f6
	db $dd                                           ; $5c86: $dd
	ld h, a                                          ; $5c87: $67
	rlca                                             ; $5c88: $07
	ld bc, $e080                                     ; $5c89: $01 $80 $e0
	jr c, jr_071_5c1d                                ; $5c8c: $38 $8f

	ld h, e                                          ; $5c8e: $63
	adc a                                            ; $5c8f: $8f
	jr c, @+$3e                                      ; $5c90: $38 $3c

	xor e                                            ; $5c92: $ab
	ld [hl], l                                       ; $5c93: $75
	sbc d                                            ; $5c94: $9a
	rst GetHLinHL                                          ; $5c95: $cf
	or e                                             ; $5c96: $b3
	ld e, h                                          ; $5c97: $5c
	add d                                            ; $5c98: $82
	ld e, $1f                                        ; $5c99: $1e $1f
	adc a                                            ; $5c9b: $8f
	rst SubAFromBC                                          ; $5c9c: $e7
	ld [hl], e                                       ; $5c9d: $73
	ld a, l                                          ; $5c9e: $7d
	cp a                                             ; $5c9f: $bf
	inc bc                                           ; $5ca0: $03
	ld h, b                                          ; $5ca1: $60
	pop hl                                           ; $5ca2: $e1
	sub h                                            ; $5ca3: $94
	cp $f8                                           ; $5ca4: $fe $f8
	ldh a, [$e0]                                     ; $5ca6: $f0 $e0
	add b                                            ; $5ca8: $80
	nop                                              ; $5ca9: $00
	nop                                              ; $5caa: $00
	db $10                                           ; $5cab: $10
	add a                                            ; $5cac: $87
	adc a                                            ; $5cad: $8f
	rra                                              ; $5cae: $1f
	ld [hl], e                                       ; $5caf: $73
	ld l, a                                          ; $5cb0: $6f

jr_071_5cb1:
	sbc [hl]                                         ; $5cb1: $9e
	db $10                                           ; $5cb2: $10
	sbc $20                                          ; $5cb3: $de $20
	rst SubAFromDE                                          ; $5cb5: $df
	ld b, c                                          ; $5cb6: $41
	rst SubAFromDE                                          ; $5cb7: $df
	ld b, d                                          ; $5cb8: $42
	reti                                             ; $5cb9: $d9


	rst $38                                          ; $5cba: $ff
	rst AddAOntoHL                                          ; $5cbb: $ef
	ld a, a                                          ; $5cbc: $7f
	ld a, b                                          ; $5cbd: $78
	sbc e                                            ; $5cbe: $9b
	ret nc                                           ; $5cbf: $d0

	cp b                                             ; $5cc0: $b8
	ld l, h                                          ; $5cc1: $6c
	sub [hl]                                         ; $5cc2: $96
	ld a, e                                          ; $5cc3: $7b
	ld hl, sp-$6e                                    ; $5cc4: $f8 $92
	ld h, b                                          ; $5cc6: $60
	jr nc, @-$36                                     ; $5cc7: $30 $c8

	db $f4                                           ; $5cc9: $f4
	ld a, d                                          ; $5cca: $7a
	db $eb                                           ; $5ccb: $eb
	ld [hl], l                                       ; $5ccc: $75
	jp c, $eef5                                      ; $5ccd: $da $f5 $ee

	ei                                               ; $5cd0: $fb
	cp l                                             ; $5cd1: $bd
	xor $7b                                          ; $5cd2: $ee $7b
	ld [hl], c                                       ; $5cd4: $71
	adc d                                            ; $5cd5: $8a
	dec sp                                           ; $5cd6: $3b
	dec e                                            ; $5cd7: $1d
	ld b, $c3                                        ; $5cd8: $06 $c3
	ld [hl], c                                       ; $5cda: $71
	ld a, e                                          ; $5cdb: $7b
	ld e, $c5                                        ; $5cdc: $1e $c5
	halt                                             ; $5cde: $76
	dec e                                            ; $5cdf: $1d
	or e                                             ; $5ce0: $b3
	xor $7d                                          ; $5ce1: $ee $7d
	inc e                                            ; $5ce3: $1c
	add a                                            ; $5ce4: $87
	db $e3                                           ; $5ce5: $e3
	ld sp, hl                                        ; $5ce6: $f9
	cp $cf                                           ; $5ce7: $fe $cf
	pop af                                           ; $5ce9: $f1
	cp $e0                                           ; $5cea: $fe $e0
	pop bc                                           ; $5cec: $c1
	sbc h                                            ; $5ced: $9c
	rrca                                             ; $5cee: $0f
	jr nc, jr_071_5cb1                               ; $5cef: $30 $c0

	ld [hl], l                                       ; $5cf1: $75
	xor h                                            ; $5cf2: $ac
	sbc [hl]                                         ; $5cf3: $9e
	jr @-$25                                         ; $5cf4: $18 $d9

	rst $38                                          ; $5cf6: $ff
	sbc h                                            ; $5cf7: $9c
	ld hl, $b84e                                     ; $5cf8: $21 $4e $b8
	ld [hl], a                                       ; $5cfb: $77
	ld d, b                                          ; $5cfc: $50
	ld a, [hl]                                       ; $5cfd: $7e
	jr c, jr_071_5d67                                ; $5cfe: $38 $67

	ld h, b                                          ; $5d00: $60
	sbc b                                            ; $5d01: $98
	add b                                            ; $5d02: $80
	rst $38                                          ; $5d03: $ff
	rst SubAFromDE                                          ; $5d04: $df
	add a                                            ; $5d05: $87
	ld a, a                                          ; $5d06: $7f
	ld b, e                                          ; $5d07: $43
	and b                                            ; $5d08: $a0
	ld a, e                                          ; $5d09: $7b
	ld hl, sp-$80                                    ; $5d0a: $f8 $80
	ldh [rIE], a                                     ; $5d0c: $e0 $ff
	jp $fffc                                         ; $5d0e: $c3 $fc $ff


	ld a, [hl]                                       ; $5d11: $7e
	cp a                                             ; $5d12: $bf
	cp a                                             ; $5d13: $bf
	ld h, b                                          ; $5d14: $60
	inc a                                            ; $5d15: $3c
	dec sp                                           ; $5d16: $3b
	rst $38                                          ; $5d17: $ff
	and e                                            ; $5d18: $a3
	rst $38                                          ; $5d19: $ff
	ld h, c                                          ; $5d1a: $61
	ldh [rIE], a                                     ; $5d1b: $e0 $ff
	rst $38                                          ; $5d1d: $ff
	rst SubAFromBC                                          ; $5d1e: $e7
	pop hl                                           ; $5d1f: $e1
	ld a, h                                          ; $5d20: $7c
	jr nc, @+$01                                     ; $5d21: $30 $ff

	sub $6b                                          ; $5d23: $d6 $6b
	halt                                             ; $5d25: $76
	db $db                                           ; $5d26: $db
	xor [hl]                                         ; $5d27: $ae
	xor l                                            ; $5d28: $ad
	rst $38                                          ; $5d29: $ff
	rst $38                                          ; $5d2a: $ff
	adc c                                            ; $5d2b: $89
	ld l, [hl]                                       ; $5d2c: $6e
	rst FarCall                                          ; $5d2d: $f7
	db $db                                           ; $5d2e: $db
	db $ed                                           ; $5d2f: $ed
	push af                                          ; $5d30: $f5
	or $ff                                           ; $5d31: $f6 $ff
	ld a, [hl]                                       ; $5d33: $7e
	ccf                                              ; $5d34: $3f
	or [hl]                                          ; $5d35: $b6
	ld d, [hl]                                       ; $5d36: $56
	jp nc, $fff2                                     ; $5d37: $d2 $f2 $ff

	or d                                             ; $5d3a: $b2
	sbc e                                            ; $5d3b: $9b
	db $db                                           ; $5d3c: $db
	sub $76                                          ; $5d3d: $d6 $76
	ldh a, [c]                                       ; $5d3f: $f2
	ld [hl-], a                                      ; $5d40: $32
	cp a                                             ; $5d41: $bf

jr_071_5d42:
	reti                                             ; $5d42: $d9


	rst $38                                          ; $5d43: $ff
	sub a                                            ; $5d44: $97
	xor c                                            ; $5d45: $a9
	inc b                                            ; $5d46: $04
	ld b, $05                                        ; $5d47: $06 $05
	inc b                                            ; $5d49: $04
	inc c                                            ; $5d4a: $0c
	dec de                                           ; $5d4b: $1b
	ld sp, $ffdc                                     ; $5d4c: $31 $dc $ff
	ld a, h                                          ; $5d4f: $7c
	and d                                            ; $5d50: $a2
	sbc c                                            ; $5d51: $99
	ldh [$72], a                                     ; $5d52: $e0 $72
	call z, Call_071_619a                            ; $5d54: $cc $9a $61
	db $fd                                           ; $5d57: $fd
	sbc $ff                                          ; $5d58: $de $ff
	sub a                                            ; $5d5a: $97
	ld hl, sp+$0e                                    ; $5d5b: $f8 $0e
	dec bc                                           ; $5d5d: $0b

jr_071_5d5e:
	ld a, [bc]                                       ; $5d5e: $0a
	ld [bc], a                                       ; $5d5f: $02
	ld hl, sp+$0e                                    ; $5d60: $f8 $0e
	inc bc                                           ; $5d62: $03
	reti                                             ; $5d63: $d9


	rst $38                                          ; $5d64: $ff
	sbc e                                            ; $5d65: $9b
	pop af                                           ; $5d66: $f1

jr_071_5d67:
	inc c                                            ; $5d67: $0c
	ld b, $03                                        ; $5d68: $06 $03
	ld [hl], l                                       ; $5d6a: $75
	xor d                                            ; $5d6b: $aa
	reti                                             ; $5d6c: $d9


	rst $38                                          ; $5d6d: $ff

jr_071_5d6e:
	sub e                                            ; $5d6e: $93
	db $10                                           ; $5d6f: $10
	ld [hl], b                                       ; $5d70: $70
	ldh [$c0], a                                     ; $5d71: $e0 $c0
	add b                                            ; $5d73: $80
	nop                                              ; $5d74: $00
	ret nz                                           ; $5d75: $c0

	ldh [rAUD1SWEEP], a                              ; $5d76: $e0 $10
	ld [hl], b                                       ; $5d78: $70
	and b                                            ; $5d79: $a0
	ld b, b                                          ; $5d7a: $40
	ld a, e                                          ; $5d7b: $7b
	ld hl, sp-$21                                    ; $5d7c: $f8 $df
	ld h, b                                          ; $5d7e: $60
	add b                                            ; $5d7f: $80
	or b                                             ; $5d80: $b0
	ldh a, [$78]                                     ; $5d81: $f0 $78
	inc e                                            ; $5d83: $1c
	or $8d                                           ; $5d84: $f6 $8d
	db $e3                                           ; $5d86: $e3
	and b                                            ; $5d87: $a0
	ret nc                                           ; $5d88: $d0

	ld [hl], b                                       ; $5d89: $70
	sbc b                                            ; $5d8a: $98
	db $e4                                           ; $5d8b: $e4
	ld a, [$638f]                                    ; $5d8c: $fa $8f $63
	pop af                                           ; $5d8f: $f1
	jr c, jr_071_5d5e                                ; $5d90: $38 $cc

	inc [hl]                                         ; $5d92: $34
	jp z, $fa36                                      ; $5d93: $ca $36 $fa

	add d                                            ; $5d96: $82
	ld de, $f4c8                                     ; $5d97: $11 $c8 $f4
	inc a                                            ; $5d9a: $3c
	adc $f6                                          ; $5d9b: $ce $f6
	ld a, [$7f82]                                    ; $5d9d: $fa $82 $7f
	sub $9e                                          ; $5da0: $d6 $9e
	ld hl, sp+$74                                    ; $5da2: $f8 $74
	sbc d                                            ; $5da4: $9a

jr_071_5da5:
	sbc e                                            ; $5da5: $9b
	add b                                            ; $5da6: $80
	ld b, b                                          ; $5da7: $40
	jr nz, jr_071_5d42                               ; $5da8: $20 $98

	ld [hl], e                                       ; $5daa: $73
	ld hl, sp-$80                                    ; $5dab: $f8 $80
	ldh [$30], a                                     ; $5dad: $e0 $30
	ld e, b                                          ; $5daf: $58
	ld l, h                                          ; $5db0: $6c
	inc [hl]                                         ; $5db1: $34
	ld d, [hl]                                       ; $5db2: $56
	db $ed                                           ; $5db3: $ed
	ld h, [hl]                                       ; $5db4: $66
	ld h, b                                          ; $5db5: $60
	ret nc                                           ; $5db6: $d0

	xor b                                            ; $5db7: $a8
	sub h                                            ; $5db8: $94
	call z, $13ae                                    ; $5db9: $cc $ae $13
	sbc c                                            ; $5dbc: $99
	sbc c                                            ; $5dbd: $99
	db $dd                                           ; $5dbe: $dd
	xor l                                            ; $5dbf: $ad
	ld [hl], c                                       ; $5dc0: $71
	cp d                                             ; $5dc1: $ba
	rst SubAFromHL                                          ; $5dc2: $d7
	rst SubAFromBC                                          ; $5dc3: $e7
	ccf                                              ; $5dc4: $3f
	ld h, [hl]                                       ; $5dc5: $66
	inc hl                                           ; $5dc6: $23
	ld d, d                                          ; $5dc7: $52
	adc [hl]                                         ; $5dc8: $8e
	ld b, l                                          ; $5dc9: $45
	jr z, jr_071_5da5                                ; $5dca: $28 $d9

	ld a, d                                          ; $5dcc: $7a
	add b                                            ; $5dcd: $80
	sbc c                                            ; $5dce: $99
	add b                                            ; $5dcf: $80
	ret nz                                           ; $5dd0: $c0

	ld h, b                                          ; $5dd1: $60
	jr nc, jr_071_5dec                               ; $5dd2: $30 $18

	inc c                                            ; $5dd4: $0c
	reti                                             ; $5dd5: $d9


	rst $38                                          ; $5dd6: $ff
	sub a                                            ; $5dd7: $97
	add h                                            ; $5dd8: $84
	jp nz, $2141                                     ; $5dd9: $c2 $41 $21

	jr nz, jr_071_5d6e                               ; $5ddc: $20 $90

	sub b                                            ; $5dde: $90
	ld d, b                                          ; $5ddf: $50
	ld c, [hl]                                       ; $5de0: $4e
	ld h, b                                          ; $5de1: $60
	ld a, a                                          ; $5de2: $7f
	call c, $f867                                    ; $5de3: $dc $67 $f8
	sbc [hl]                                         ; $5de6: $9e
	ldh [$7b], a                                     ; $5de7: $e0 $7b
	db $e3                                           ; $5de9: $e3
	sbc $88                                          ; $5dea: $de $88

jr_071_5dec:
	sbc d                                            ; $5dec: $9a
	ld [$e060], sp                                   ; $5ded: $08 $60 $e0
	ldh a, [$f0]                                     ; $5df0: $f0 $f0
	db $dd                                           ; $5df2: $dd
	ld hl, sp-$6a                                    ; $5df3: $f8 $96
	ld [$1010], sp                                   ; $5df5: $08 $10 $10
	jr nc, jr_071_5e22                               ; $5df8: $30 $28

	jr z, jr_071_5e04                                ; $5dfa: $28 $08

	ld [$def8], sp                                   ; $5dfc: $08 $f8 $de
	ldh a, [$73]                                     ; $5dff: $f0 $73
	ldh a, [$7f]                                     ; $5e01: $f0 $7f

jr_071_5e03:
	rst AddAOntoHL                                          ; $5e03: $ef

jr_071_5e04:
	rst SubAFromDE                                          ; $5e04: $df
	sub b                                            ; $5e05: $90
	rst $18                                          ; $5e06: $df
	ld h, b                                          ; $5e07: $60
	sbc l                                            ; $5e08: $9d
	jr nz, jr_071_5e03                               ; $5e09: $20 $f8

	ld [hl], a                                       ; $5e0b: $77
	rst AddAOntoHL                                          ; $5e0c: $ef
	sbc $e0                                          ; $5e0d: $de $e0
	ld [hl+], a                                      ; $5e0f: $22
	nop                                              ; $5e10: $00
	sbc l                                            ; $5e11: $9d
	call z, $dd88                                    ; $5e12: $cc $88 $dd
	call z, $8899                                    ; $5e15: $cc $99 $88
	nop                                              ; $5e18: $00
	sbc c                                            ; $5e19: $99
	sbc c                                            ; $5e1a: $99
	and d                                            ; $5e1b: $a2
	add b                                            ; $5e1c: $80
	ld a, e                                          ; $5e1d: $7b
	ei                                               ; $5e1e: $fb
	sbc [hl]                                         ; $5e1f: $9e
	ld h, [hl]                                       ; $5e20: $66
	ld [hl], a                                       ; $5e21: $77

jr_071_5e22:
	or $9e                                           ; $5e22: $f6 $9e
	ld [hl+], a                                      ; $5e24: $22
	ld l, a                                          ; $5e25: $6f
	ei                                               ; $5e26: $fb
	sbc l                                            ; $5e27: $9d
	adc b                                            ; $5e28: $88
	ld h, [hl]                                       ; $5e29: $66
	ld a, e                                          ; $5e2a: $7b
	db $fc                                           ; $5e2b: $fc
	sbc e                                            ; $5e2c: $9b
	db $dd                                           ; $5e2d: $dd
	ld [hl+], a                                      ; $5e2e: $22
	xor d                                            ; $5e2f: $aa
	xor d                                            ; $5e30: $aa
	sub d                                            ; $5e31: $92
	ld bc, $db80                                     ; $5e32: $01 $80 $db
	adc [hl]                                         ; $5e35: $8e
	call $8787                                       ; $5e36: $cd $87 $87
	add e                                            ; $5e39: $83
	add c                                            ; $5e3a: $81
	add b                                            ; $5e3b: $80
	cp b                                             ; $5e3c: $b8
	jr jr_071_5e57                                   ; $5e3d: $18 $18

	jr c, jr_071_5ebd                                ; $5e3f: $38 $7c

	jr nc, jr_071_5e81                               ; $5e41: $30 $3e

	ld h, b                                          ; $5e43: $60
	ld e, a                                          ; $5e44: $5f
	ld h, b                                          ; $5e45: $60

jr_071_5e46:
	adc b                                            ; $5e46: $88
	rlca                                             ; $5e47: $07
	sbc a                                            ; $5e48: $9f
	rrca                                             ; $5e49: $0f
	call c, $fb9c                                    ; $5e4a: $dc $9c $fb
	rst $18                                          ; $5e4d: $df
	push af                                          ; $5e4e: $f5
	rst SubAFromHL                                          ; $5e4f: $d7
	ld h, d                                          ; $5e50: $62
	ldh [c], a                                       ; $5e51: $e2
	pop af                                           ; $5e52: $f1
	adc h                                            ; $5e53: $8c
	and c                                            ; $5e54: $a1
	ld a, [hl]                                       ; $5e55: $7e
	or c                                             ; $5e56: $b1

jr_071_5e57:
	xor a                                            ; $5e57: $af
	ld a, b                                          ; $5e58: $78
	rst GetHLinHL                                          ; $5e59: $cf
	ld a, h                                          ; $5e5a: $7c
	ld a, a                                          ; $5e5b: $7f
	sbc $fb                                          ; $5e5c: $de $fb
	rst $18                                          ; $5e5e: $df
	ld l, c                                          ; $5e5f: $69
	ld l, a                                          ; $5e60: $6f
	ld l, [hl]                                       ; $5e61: $6e
	ld l, d                                          ; $5e62: $6a
	ld c, [hl]                                       ; $5e63: $4e
	ld c, d                                          ; $5e64: $4a
	ld c, d                                          ; $5e65: $4a
	ld c, [hl]                                       ; $5e66: $4e
	db $dd                                           ; $5e67: $dd
	inc b                                            ; $5e68: $04
	db $fd                                           ; $5e69: $fd
	rst $18                                          ; $5e6a: $df
	ld bc, $0288                                     ; $5e6b: $01 $88 $02
	inc bc                                           ; $5e6e: $03
	ld [bc], a                                       ; $5e6f: $02
	inc bc                                           ; $5e70: $03
	call z, $f3ff                                    ; $5e71: $cc $ff $f3
	ccf                                              ; $5e74: $3f
	sbc a                                            ; $5e75: $9f
	adc [hl]                                         ; $5e76: $8e
	rst JumpTable                                          ; $5e77: $c7
	ret nz                                           ; $5e78: $c0

	rrca                                             ; $5e79: $0f
	nop                                              ; $5e7a: $00

Jump_071_5e7b:
	rrca                                             ; $5e7b: $0f
	ld bc, $030d                                     ; $5e7c: $01 $0d $03
	rrca                                             ; $5e7f: $0f
	inc bc                                           ; $5e80: $03

jr_071_5e81:
	dec b                                            ; $5e81: $05
	inc bc                                           ; $5e82: $03
	nop                                              ; $5e83: $00
	cp a                                             ; $5e84: $bf
	add b                                            ; $5e85: $80
	add b                                            ; $5e86: $80
	add b                                            ; $5e87: $80
	add b                                            ; $5e88: $80
	add c                                            ; $5e89: $81
	add b                                            ; $5e8a: $80
	ld e, b                                          ; $5e8b: $58
	ret nz                                           ; $5e8c: $c0

	ld e, h                                          ; $5e8d: $5c
	ld b, b                                          ; $5e8e: $40
	call c, Call_071_7f90                            ; $5e8f: $dc $90 $7f
	rst $38                                          ; $5e92: $ff
	rst $38                                          ; $5e93: $ff
	ldh [rIE], a                                     ; $5e94: $e0 $ff
	nop                                              ; $5e96: $00
	add c                                            ; $5e97: $81
	ld a, [hl]                                       ; $5e98: $7e
	rst $38                                          ; $5e99: $ff
	cp $8d                                           ; $5e9a: $fe $8d
	adc h                                            ; $5e9c: $8c
	reti                                             ; $5e9d: $d9


	ret c                                            ; $5e9e: $d8

	cp l                                             ; $5e9f: $bd
	db $fc                                           ; $5ea0: $fc
	ld d, l                                          ; $5ea1: $55
	ld [hl], h                                       ; $5ea2: $74
	daa                                              ; $5ea3: $27
	inc h                                            ; $5ea4: $24
	rra                                              ; $5ea5: $1f
	jr jr_071_5e46                                   ; $5ea6: $18 $9e

	dec sp                                           ; $5ea8: $3b
	cp h                                             ; $5ea9: $bc
	ld d, a                                          ; $5eaa: $57
	xor a                                            ; $5eab: $af
	rlca                                             ; $5eac: $07
	rlca                                             ; $5ead: $07
	daa                                              ; $5eae: $27
	rst $18                                          ; $5eaf: $df
	rst $38                                          ; $5eb0: $ff
	add b                                            ; $5eb1: $80
	ld sp, hl                                        ; $5eb2: $f9
	and c                                            ; $5eb3: $a1
	cp $bc                                           ; $5eb4: $fe $bc
	rst $38                                          ; $5eb6: $ff
	rst AddAOntoHL                                          ; $5eb7: $ef
	or a                                             ; $5eb8: $b7
	cp [hl]                                          ; $5eb9: $be
	xor e                                            ; $5eba: $ab
	or [hl]                                          ; $5ebb: $b6
	cp e                                             ; $5ebc: $bb

jr_071_5ebd:
	or [hl]                                          ; $5ebd: $b6
	cp e                                             ; $5ebe: $bb
	and $bb                                          ; $5ebf: $e6 $bb
	xor l                                            ; $5ec1: $ad
	rst FarCall                                          ; $5ec2: $f7
	cp l                                             ; $5ec3: $bd
	rst SubAFromBC                                          ; $5ec4: $e7
	ld a, [$fcce]                                    ; $5ec5: $fa $ce $fc
	sbc h                                            ; $5ec8: $9c
	rst $38                                          ; $5ec9: $ff
	xor a                                            ; $5eca: $af
	rst $38                                          ; $5ecb: $ff
	inc h                                            ; $5ecc: $24
	rst $38                                          ; $5ecd: $ff
	ld [hl+], a                                      ; $5ece: $22
	rst $38                                          ; $5ecf: $ff
	ld b, c                                          ; $5ed0: $41
	add h                                            ; $5ed1: $84
	rst $18                                          ; $5ed2: $df
	pop bc                                           ; $5ed3: $c1
	sbc a                                            ; $5ed4: $9f
	add e                                            ; $5ed5: $83
	sbc a                                            ; $5ed6: $9f
	ld b, $1f                                        ; $5ed7: $06 $1f
	inc c                                            ; $5ed9: $0c
	ccf                                              ; $5eda: $3f
	jr @+$41                                         ; $5edb: $18 $3f

	jr nc, jr_071_5f5e                               ; $5edd: $30 $7f

	jr nz, @+$01                                     ; $5edf: $20 $ff

	ld b, b                                          ; $5ee1: $40
	rst $38                                          ; $5ee2: $ff
	add b                                            ; $5ee3: $80
	rst $38                                          ; $5ee4: $ff
	inc bc                                           ; $5ee5: $03
	rst $38                                          ; $5ee6: $ff
	inc c                                            ; $5ee7: $0c
	rst $38                                          ; $5ee8: $ff
	inc sp                                           ; $5ee9: $33
	db $fc                                           ; $5eea: $fc
	ld l, a                                          ; $5eeb: $6f
	ldh a, [$7b]                                     ; $5eec: $f0 $7b
	rst FarCall                                          ; $5eee: $f7
	ccf                                              ; $5eef: $3f
	ld b, b                                          ; $5ef0: $40
	sub c                                            ; $5ef1: $91
	adc a                                            ; $5ef2: $8f
	nop                                              ; $5ef3: $00
	sbc e                                            ; $5ef4: $9b
	rlca                                             ; $5ef5: $07
	call nc, $ff8c                                   ; $5ef6: $d4 $8c $ff
	rst GetHLinHL                                          ; $5ef9: $cf
	db $ed                                           ; $5efa: $ed
	rst GetHLinHL                                          ; $5efb: $cf
	ld l, d                                          ; $5efc: $6a
	ld [$a1f1], a                                    ; $5efd: $ea $f1 $a1
	ld e, e                                          ; $5f00: $5b
	ld h, b                                          ; $5f01: $60
	sbc b                                            ; $5f02: $98
	nop                                              ; $5f03: $00
	ld c, $01                                        ; $5f04: $0e $01
	rrca                                             ; $5f06: $0f
	ld bc, $0107                                     ; $5f07: $01 $07 $01
	scf                                              ; $5f0a: $37
	ld h, b                                          ; $5f0b: $60
	ld a, a                                          ; $5f0c: $7f
	cp $98                                           ; $5f0d: $fe $98
	jp $7f3e                                         ; $5f0f: $c3 $3e $7f


	cp $cb                                           ; $5f12: $fe $cb
	jp z, Jump_071_43fd                              ; $5f14: $ca $fd $43

	ld h, b                                          ; $5f17: $60
	scf                                              ; $5f18: $37
	and b                                            ; $5f19: $a0
	ld a, a                                          ; $5f1a: $7f
	cp $9a                                           ; $5f1b: $fe $9a
	res 0, a                                         ; $5f1d: $cb $87
	rst SubAFromHL                                          ; $5f1f: $d7
	rst GetHLinHL                                          ; $5f20: $cf
	db $fd                                           ; $5f21: $fd
	ld b, e                                          ; $5f22: $43
	and b                                            ; $5f23: $a0
	ld [hl], a                                       ; $5f24: $77
	cp $7f                                           ; $5f25: $fe $7f
	adc $77                                          ; $5f27: $ce $77
	and b                                            ; $5f29: $a0
	ld a, a                                          ; $5f2a: $7f
	db $fd                                           ; $5f2b: $fd
	ld b, a                                          ; $5f2c: $47
	and b                                            ; $5f2d: $a0
	ld a, a                                          ; $5f2e: $7f
	cp $95                                           ; $5f2f: $fe $95
	db $e3                                           ; $5f31: $e3
	ld e, $bf                                        ; $5f32: $1e $bf
	ld a, [hl]                                       ; $5f34: $7e
	ld a, l                                          ; $5f35: $7d
	db $fc                                           ; $5f36: $fc
	push de                                          ; $5f37: $d5
	db $f4                                           ; $5f38: $f4
	and a                                            ; $5f39: $a7
	and h                                            ; $5f3a: $a4
	inc bc                                           ; $5f3b: $03
	and b                                            ; $5f3c: $a0
	sub h                                            ; $5f3d: $94
	nop                                              ; $5f3e: $00
	rst JumpTable                                          ; $5f3f: $c7
	add b                                            ; $5f40: $80
	rst JumpTable                                          ; $5f41: $c7
	ret nz                                           ; $5f42: $c0

	db $e3                                           ; $5f43: $e3
	ret nz                                           ; $5f44: $c0

	ld h, h                                          ; $5f45: $64
	db $e3                                           ; $5f46: $e3
	rst FarCall                                          ; $5f47: $f7
	and a                                            ; $5f48: $a7
	cpl                                              ; $5f49: $2f
	and b                                            ; $5f4a: $a0
	ld a, a                                          ; $5f4b: $7f
	cp $99                                           ; $5f4c: $fe $99
	add c                                            ; $5f4e: $81
	nop                                              ; $5f4f: $00
	ld e, b                                          ; $5f50: $58
	ret nz                                           ; $5f51: $c0

	call c, Call_071_57c0                            ; $5f52: $dc $c0 $57
	and b                                            ; $5f55: $a0
	ld [hl], a                                       ; $5f56: $77
	cp $97                                           ; $5f57: $fe $97
	ei                                               ; $5f59: $fb
	ld b, $f7                                        ; $5f5a: $06 $f7
	ld c, $df                                        ; $5f5c: $0e $df

jr_071_5f5e:
	inc a                                            ; $5f5e: $3c
	ld a, a                                          ; $5f5f: $7f
	ld a, b                                          ; $5f60: $78
	ld e, a                                          ; $5f61: $5f
	and b                                            ; $5f62: $a0
	sbc c                                            ; $5f63: $99
	rst FarCall                                          ; $5f64: $f7
	add hl, de                                       ; $5f65: $19
	rst $38                                          ; $5f66: $ff
	ld [bc], a                                       ; $5f67: $02
	rst $38                                          ; $5f68: $ff
	ld [$fc7b], sp                                   ; $5f69: $08 $7b $fc
	add b                                            ; $5f6c: $80
	nop                                              ; $5f6d: $00
	cp a                                             ; $5f6e: $bf
	ret nz                                           ; $5f6f: $c0

	ld l, a                                          ; $5f70: $6f
	ld [hl], b                                       ; $5f71: $70
	dec e                                            ; $5f72: $1d
	ld e, $09                                        ; $5f73: $1e $09
	rrca                                             ; $5f75: $0f
	ld de, $231f                                     ; $5f76: $11 $1f $23
	ccf                                              ; $5f79: $3f
	ld b, l                                          ; $5f7a: $45
	ld a, a                                          ; $5f7b: $7f
	adc c                                            ; $5f7c: $89
	rst $38                                          ; $5f7d: $ff
	jr @+$01                                         ; $5f7e: $18 $ff

	inc l                                            ; $5f80: $2c
	rst $38                                          ; $5f81: $ff
	ld b, h                                          ; $5f82: $44
	rst $38                                          ; $5f83: $ff
	ldh a, [rIF]                                     ; $5f84: $f0 $0f
	ldh a, [rIF]                                     ; $5f86: $f0 $0f
	pop af                                           ; $5f88: $f1
	rrca                                             ; $5f89: $0f
	db $e3                                           ; $5f8a: $e3
	rra                                              ; $5f8b: $1f
	adc a                                            ; $5f8c: $8f
	and $1f                                          ; $5f8d: $e6 $1f
	call $db3e                                       ; $5f8f: $cd $3e $db
	inc a                                            ; $5f92: $3c
	or a                                             ; $5f93: $b7
	ld a, b                                          ; $5f94: $78
	set 1, h                                         ; $5f95: $cb $cc
	add h                                            ; $5f97: $84
	add a                                            ; $5f98: $87
	cpl                                              ; $5f99: $2f
	cpl                                              ; $5f9a: $2f
	inc a                                            ; $5f9b: $3c
	inc a                                            ; $5f9c: $3c
	ld a, e                                          ; $5f9d: $7b
	sbc d                                            ; $5f9e: $9a
	sbc d                                            ; $5f9f: $9a
	add b                                            ; $5fa0: $80
	ld b, b                                          ; $5fa1: $40
	pop bc                                           ; $5fa2: $c1
	ld b, c                                          ; $5fa3: $41
	rst JumpTable                                          ; $5fa4: $c7
	ld a, e                                          ; $5fa5: $7b
	ret nz                                           ; $5fa6: $c0

	sbc d                                            ; $5fa7: $9a
	inc bc                                           ; $5fa8: $03
	cp $0f                                           ; $5fa9: $fe $0f
	ld sp, hl                                        ; $5fab: $f9
	ld b, $27                                        ; $5fac: $06 $27
	ret nz                                           ; $5fae: $c0

	ld [hl], a                                       ; $5faf: $77
	ldh [$9b], a                                     ; $5fb0: $e0 $9b
	rst $38                                          ; $5fb2: $ff
	rrca                                             ; $5fb3: $0f
	cp $07                                           ; $5fb4: $fe $07
	daa                                              ; $5fb6: $27
	ldh [$9e], a                                     ; $5fb7: $e0 $9e
	or $73                                           ; $5fb9: $f6 $73
	ldh [$9b], a                                     ; $5fbb: $e0 $9b
	rst $38                                          ; $5fbd: $ff
	rlca                                             ; $5fbe: $07
	cp $03                                           ; $5fbf: $fe $03
	cpl                                              ; $5fc1: $2f
	ldh [$b1], a                                     ; $5fc2: $e0 $b1
	ld bc, $db80                                     ; $5fc4: $01 $80 $db
	adc [hl]                                         ; $5fc7: $8e
	call $8787                                       ; $5fc8: $cd $87 $87
	add e                                            ; $5fcb: $83
	or c                                             ; $5fcc: $b1
	add b                                            ; $5fcd: $80
	cp b                                             ; $5fce: $b8
	jr nc, jr_071_6039                               ; $5fcf: $30 $68

	ld [hl], b                                       ; $5fd1: $70
	ld e, h                                          ; $5fd2: $5c
	ld h, b                                          ; $5fd3: $60
	ld e, [hl]                                       ; $5fd4: $5e
	ld h, b                                          ; $5fd5: $60
	ld a, a                                          ; $5fd6: $7f
	nop                                              ; $5fd7: $00
	adc b                                            ; $5fd8: $88
	rlca                                             ; $5fd9: $07
	sbc a                                            ; $5fda: $9f
	rrca                                             ; $5fdb: $0f
	call c, $fd9c                                    ; $5fdc: $dc $9c $fd
	db $dd                                           ; $5fdf: $dd
	push hl                                          ; $5fe0: $e5
	rst SubAFromHL                                          ; $5fe1: $d7
	ld h, d                                          ; $5fe2: $62
	ldh [c], a                                       ; $5fe3: $e2
	pop af                                           ; $5fe4: $f1
	adc h                                            ; $5fe5: $8c
	and c                                            ; $5fe6: $a1
	ld a, [hl]                                       ; $5fe7: $7e
	or c                                             ; $5fe8: $b1
	xor a                                            ; $5fe9: $af
	ld a, b                                          ; $5fea: $78
	rst GetHLinHL                                          ; $5feb: $cf
	ld a, h                                          ; $5fec: $7c
	ld a, a                                          ; $5fed: $7f
	sbc $fb                                          ; $5fee: $de $fb
	rst $18                                          ; $5ff0: $df
	ld l, c                                          ; $5ff1: $69
	ld l, a                                          ; $5ff2: $6f
	ld l, [hl]                                       ; $5ff3: $6e
	ld l, d                                          ; $5ff4: $6a
	ld c, [hl]                                       ; $5ff5: $4e
	ld c, d                                          ; $5ff6: $4a
	ld c, d                                          ; $5ff7: $4a
	ld c, [hl]                                       ; $5ff8: $4e
	db $dd                                           ; $5ff9: $dd
	inc b                                            ; $5ffa: $04
	db $fd                                           ; $5ffb: $fd
	rst $18                                          ; $5ffc: $df
	ld bc, $0288                                     ; $5ffd: $01 $88 $02
	inc bc                                           ; $6000: $03
	ld [bc], a                                       ; $6001: $02
	inc bc                                           ; $6002: $03
	call z, $f3ff                                    ; $6003: $cc $ff $f3
	ccf                                              ; $6006: $3f
	sbc a                                            ; $6007: $9f
	adc [hl]                                         ; $6008: $8e
	rst JumpTable                                          ; $6009: $c7
	ret nz                                           ; $600a: $c0

	rrca                                             ; $600b: $0f
	nop                                              ; $600c: $00
	rrca                                             ; $600d: $0f
	ld bc, $030d                                     ; $600e: $01 $0d $03
	rrca                                             ; $6011: $0f
	inc bc                                           ; $6012: $03
	dec b                                            ; $6013: $05
	inc bc                                           ; $6014: $03
	nop                                              ; $6015: $00
	cp a                                             ; $6016: $bf
	add b                                            ; $6017: $80
	add b                                            ; $6018: $80
	sbc $80                                          ; $6019: $de $80
	add d                                            ; $601b: $82
	ld e, b                                          ; $601c: $58
	ret nz                                           ; $601d: $c0

	ld e, h                                          ; $601e: $5c
	ld b, b                                          ; $601f: $40
	call c, Call_071_7f90                            ; $6020: $dc $90 $7f
	rst $38                                          ; $6023: $ff
	rst $38                                          ; $6024: $ff
	ldh [rIE], a                                     ; $6025: $e0 $ff
	nop                                              ; $6027: $00
	add a                                            ; $6028: $87
	ld a, h                                          ; $6029: $7c
	rst $38                                          ; $602a: $ff
	db $fc                                           ; $602b: $fc
	adc e                                            ; $602c: $8b
	adc b                                            ; $602d: $88
	sbc c                                            ; $602e: $99
	sbc b                                            ; $602f: $98
	cp l                                             ; $6030: $bd
	db $fc                                           ; $6031: $fc
	ld d, l                                          ; $6032: $55
	ld a, h                                          ; $6033: $7c
	daa                                              ; $6034: $27
	inc h                                            ; $6035: $24
	rra                                              ; $6036: $1f
	jr jr_071_6074                                   ; $6037: $18 $3b

jr_071_6039:
	cp h                                             ; $6039: $bc
	inc bc                                           ; $603a: $03
	rlca                                             ; $603b: $07
	rlca                                             ; $603c: $07
	rlca                                             ; $603d: $07
	daa                                              ; $603e: $27

Jump_071_603f:
	rst $18                                          ; $603f: $df
	rst $38                                          ; $6040: $ff
	add b                                            ; $6041: $80
	ld sp, hl                                        ; $6042: $f9
	and c                                            ; $6043: $a1
	cp $bc                                           ; $6044: $fe $bc
	rst $38                                          ; $6046: $ff
	rst AddAOntoHL                                          ; $6047: $ef
	or a                                             ; $6048: $b7
	cp [hl]                                          ; $6049: $be
	xor e                                            ; $604a: $ab
	or [hl]                                          ; $604b: $b6
	cp e                                             ; $604c: $bb
	or [hl]                                          ; $604d: $b6
	cp e                                             ; $604e: $bb
	and $bb                                          ; $604f: $e6 $bb
	xor l                                            ; $6051: $ad
	rst FarCall                                          ; $6052: $f7
	cp l                                             ; $6053: $bd
	rst SubAFromBC                                          ; $6054: $e7
	ld a, [$fcce]                                    ; $6055: $fa $ce $fc
	sbc h                                            ; $6058: $9c
	rst $38                                          ; $6059: $ff
	xor a                                            ; $605a: $af
	rst $38                                          ; $605b: $ff
	inc h                                            ; $605c: $24
	rst $38                                          ; $605d: $ff
	ld [hl+], a                                      ; $605e: $22
	rst $38                                          ; $605f: $ff
	ld b, c                                          ; $6060: $41
	add h                                            ; $6061: $84
	rst $18                                          ; $6062: $df

Call_071_6063:
	pop bc                                           ; $6063: $c1
	sbc a                                            ; $6064: $9f
	add e                                            ; $6065: $83
	sbc a                                            ; $6066: $9f
	ld b, $1f                                        ; $6067: $06 $1f
	inc c                                            ; $6069: $0c
	ccf                                              ; $606a: $3f
	jr jr_071_60ac                                   ; $606b: $18 $3f

	jr nc, @+$81                                     ; $606d: $30 $7f

	jr nz, @+$01                                     ; $606f: $20 $ff

	ld b, b                                          ; $6071: $40
	rst $38                                          ; $6072: $ff
	add b                                            ; $6073: $80

jr_071_6074:
	rst $38                                          ; $6074: $ff
	inc bc                                           ; $6075: $03
	rst $38                                          ; $6076: $ff
	inc c                                            ; $6077: $0c
	rst $38                                          ; $6078: $ff
	inc sp                                           ; $6079: $33
	db $fc                                           ; $607a: $fc
	ld l, a                                          ; $607b: $6f
	ldh a, [$7b]                                     ; $607c: $f0 $7b
	rst FarCall                                          ; $607e: $f7
	ccf                                              ; $607f: $3f
	ld b, b                                          ; $6080: $40
	sub c                                            ; $6081: $91
	adc a                                            ; $6082: $8f
	nop                                              ; $6083: $00
	sbc e                                            ; $6084: $9b
	rlca                                             ; $6085: $07
	rst SubAFromHL                                          ; $6086: $d7
	adc a                                            ; $6087: $8f
	db $fd                                           ; $6088: $fd
	call $cfed                                       ; $6089: $cd $ed $cf
	ld l, d                                          ; $608c: $6a
	ld [$a1f1], a                                    ; $608d: $ea $f1 $a1
	ld e, e                                          ; $6090: $5b
	ld h, b                                          ; $6091: $60
	sbc b                                            ; $6092: $98
	nop                                              ; $6093: $00
	ld c, $01                                        ; $6094: $0e $01
	rrca                                             ; $6096: $0f
	ld bc, $0107                                     ; $6097: $01 $07 $01
	scf                                              ; $609a: $37
	ld h, b                                          ; $609b: $60
	ld a, a                                          ; $609c: $7f
	cp $99                                           ; $609d: $fe $99
	jp $7f3e                                         ; $609f: $c3 $3e $7f


	cp $cb                                           ; $60a2: $fe $cb
	jp z, Jump_071_603f                              ; $60a4: $ca $3f $60

	scf                                              ; $60a7: $37
	and b                                            ; $60a8: $a0
	ld a, a                                          ; $60a9: $7f
	cp $9a                                           ; $60aa: $fe $9a

jr_071_60ac:
	res 0, a                                         ; $60ac: $cb $87
	rst SubAFromHL                                          ; $60ae: $d7
	rst GetHLinHL                                          ; $60af: $cf
	db $fd                                           ; $60b0: $fd
	ld b, e                                          ; $60b1: $43
	and b                                            ; $60b2: $a0
	ld [hl], a                                       ; $60b3: $77
	cp $7f                                           ; $60b4: $fe $7f
	adc $77                                          ; $60b6: $ce $77
	and b                                            ; $60b8: $a0
	ld [hl], a                                       ; $60b9: $77
	sbc a                                            ; $60ba: $9f
	ld c, a                                          ; $60bb: $4f
	and b                                            ; $60bc: $a0
	ld a, a                                          ; $60bd: $7f
	cp $95                                           ; $60be: $fe $95
	db $e3                                           ; $60c0: $e3
	ld e, $bf                                        ; $60c1: $1e $bf
	ld a, [hl]                                       ; $60c3: $7e
	ld a, l                                          ; $60c4: $7d
	db $fc                                           ; $60c5: $fc
	push de                                          ; $60c6: $d5
	db $fc                                           ; $60c7: $fc
	and a                                            ; $60c8: $a7
	and h                                            ; $60c9: $a4
	ccf                                              ; $60ca: $3f
	and b                                            ; $60cb: $a0
	sub a                                            ; $60cc: $97
	add c                                            ; $60cd: $81
	add b                                            ; $60ce: $80
	sbc b                                            ; $60cf: $98
	jr jr_071_6102                                   ; $60d0: $18 $30

	jr c, jr_071_6140                                ; $60d2: $38 $6c

	jr nc, jr_071_6151                               ; $60d4: $30 $7b

	and b                                            ; $60d6: $a0
	sbc [hl]                                         ; $60d7: $9e
	ld b, b                                          ; $60d8: $40
	ld [hl], a                                       ; $60d9: $77
	and b                                            ; $60da: $a0
	sub l                                            ; $60db: $95
	rst JumpTable                                          ; $60dc: $c7
	add b                                            ; $60dd: $80
	rst JumpTable                                          ; $60de: $c7
	ret nz                                           ; $60df: $c0

	db $e3                                           ; $60e0: $e3
	ret nz                                           ; $60e1: $c0

	ld h, h                                          ; $60e2: $64
	db $e3                                           ; $60e3: $e3
	rst FarCall                                          ; $60e4: $f7
	and a                                            ; $60e5: $a7
	cpl                                              ; $60e6: $2f
	and b                                            ; $60e7: $a0
	ld [hl], a                                       ; $60e8: $77
	cp $7f                                           ; $60e9: $fe $7f
	and b                                            ; $60eb: $a0
	sbc l                                            ; $60ec: $9d
	call c, Call_071_57c0                            ; $60ed: $dc $c0 $57

Jump_071_60f0:
	and b                                            ; $60f0: $a0
	ld [hl], a                                       ; $60f1: $77
	cp $97                                           ; $60f2: $fe $97
	ei                                               ; $60f4: $fb
	ld b, $f7                                        ; $60f5: $06 $f7
	ld c, $df                                        ; $60f7: $0e $df
	inc a                                            ; $60f9: $3c
	ld a, a                                          ; $60fa: $7f
	ld a, b                                          ; $60fb: $78
	ld e, a                                          ; $60fc: $5f
	and b                                            ; $60fd: $a0
	sbc l                                            ; $60fe: $9d
	rst FarCall                                          ; $60ff: $f7
	add hl, de                                       ; $6100: $19

Jump_071_6101:
	ld a, d                                          ; $6101: $7a

jr_071_6102:
	db $db                                           ; $6102: $db
	add b                                            ; $6103: $80
	ld c, $ff                                        ; $6104: $0e $ff
	nop                                              ; $6106: $00
	cp $03                                           ; $6107: $fe $03
	cp a                                             ; $6109: $bf
	ret nz                                           ; $610a: $c0

	ld l, a                                          ; $610b: $6f
	ld [hl], b                                       ; $610c: $70
	dec e                                            ; $610d: $1d
	ld e, $09                                        ; $610e: $1e $09
	rrca                                             ; $6110: $0f
	ld de, $231f                                     ; $6111: $11 $1f $23
	ccf                                              ; $6114: $3f
	ld b, l                                          ; $6115: $45
	ld a, a                                          ; $6116: $7f
	adc c                                            ; $6117: $89
	rst $38                                          ; $6118: $ff
	jr @+$01                                         ; $6119: $18 $ff

	inc l                                            ; $611b: $2c
	rst $38                                          ; $611c: $ff
	ld b, h                                          ; $611d: $44
	rst $38                                          ; $611e: $ff
	ldh a, [rIF]                                     ; $611f: $f0 $0f
	ldh a, [rIF]                                     ; $6121: $f0 $0f
	adc e                                            ; $6123: $8b
	pop af                                           ; $6124: $f1
	rrca                                             ; $6125: $0f
	db $e3                                           ; $6126: $e3
	rra                                              ; $6127: $1f
	and $1f                                          ; $6128: $e6 $1f
	call $db3e                                       ; $612a: $cd $3e $db
	inc a                                            ; $612d: $3c
	or a                                             ; $612e: $b7
	ld a, b                                          ; $612f: $78
	set 1, h                                         ; $6130: $cb $cc
	add h                                            ; $6132: $84
	add a                                            ; $6133: $87
	cpl                                              ; $6134: $2f
	cpl                                              ; $6135: $2f
	inc a                                            ; $6136: $3c
	inc a                                            ; $6137: $3c
	ld [hl], a                                       ; $6138: $77
	dec a                                            ; $6139: $3d
	sbc e                                            ; $613a: $9b
	ld b, b                                          ; $613b: $40
	pop bc                                           ; $613c: $c1
	ld b, c                                          ; $613d: $41
	rst JumpTable                                          ; $613e: $c7
	ld [hl], e                                       ; $613f: $73

jr_071_6140:
	ret nz                                           ; $6140: $c0

	sbc d                                            ; $6141: $9a
	rrca                                             ; $6142: $0f
	cp $07                                           ; $6143: $fe $07
	rst $38                                          ; $6145: $ff
	nop                                              ; $6146: $00
	inc bc                                           ; $6147: $03
	ret nz                                           ; $6148: $c0

	dec de                                           ; $6149: $1b
	ret nz                                           ; $614a: $c0

	sbc l                                            ; $614b: $9d
	rst $38                                          ; $614c: $ff
	rlca                                             ; $614d: $07
	daa                                              ; $614e: $27
	add b                                            ; $614f: $80
	sub a                                            ; $6150: $97

jr_071_6151:
	ld [hl], b                                       ; $6151: $70
	adc a                                            ; $6152: $8f
	ld [hl], b                                       ; $6153: $70
	adc a                                            ; $6154: $8f
	ld [hl], c                                       ; $6155: $71
	adc a                                            ; $6156: $8f
	ld h, e                                          ; $6157: $63
	sbc a                                            ; $6158: $9f
	daa                                              ; $6159: $27
	ret nz                                           ; $615a: $c0

	sbc [hl]                                         ; $615b: $9e
	or $73                                           ; $615c: $f6 $73
	ret nz                                           ; $615e: $c0

	sbc c                                            ; $615f: $99
	rst FarCall                                          ; $6160: $f7
	rrca                                             ; $6161: $0f
	ei                                               ; $6162: $fb
	rlca                                             ; $6163: $07
	cp h                                             ; $6164: $bc
	jp $8033                                         ; $6165: $c3 $33 $80


	sub [hl]                                         ; $6168: $96
	adc a                                            ; $6169: $8f
	ldh a, [hDisp1_LCDC]                                     ; $616a: $f0 $8f
	pop af                                           ; $616c: $f1
	adc a                                            ; $616d: $8f
	db $e3                                           ; $616e: $e3
	sbc a                                            ; $616f: $9f
	ld h, [hl]                                       ; $6170: $66
	sbc a                                            ; $6171: $9f
	cpl                                              ; $6172: $2f
	ret nz                                           ; $6173: $c0

	adc h                                            ; $6174: $8c
	ld bc, $db80                                     ; $6175: $01 $80 $db
	adc [hl]                                         ; $6178: $8e
	call $8787                                       ; $6179: $cd $87 $87
	add e                                            ; $617c: $83
	add c                                            ; $617d: $81
	add b                                            ; $617e: $80
	sbc b                                            ; $617f: $98
	jr jr_071_61b2                                   ; $6180: $18 $30

	jr c, jr_071_61f0                                ; $6182: $38 $6c

	jr nc, jr_071_61e4                               ; $6184: $30 $5e

	ld h, b                                          ; $6186: $60
	ld a, a                                          ; $6187: $7f
	ld b, b                                          ; $6188: $40
	adc b                                            ; $6189: $88
	rlca                                             ; $618a: $07
	sbc a                                            ; $618b: $9f
	rrca                                             ; $618c: $0f
	call c, $fb9c                                    ; $618d: $dc $9c $fb
	rst $18                                          ; $6190: $df
	push af                                          ; $6191: $f5
	rst SubAFromHL                                          ; $6192: $d7
	ld h, d                                          ; $6193: $62
	ldh [c], a                                       ; $6194: $e2
	pop af                                           ; $6195: $f1
	adc h                                            ; $6196: $8c
	and c                                            ; $6197: $a1
	ld a, [hl]                                       ; $6198: $7e
	or c                                             ; $6199: $b1

Call_071_619a:
	xor a                                            ; $619a: $af
	ld a, b                                          ; $619b: $78
	rst GetHLinHL                                          ; $619c: $cf
	ld a, h                                          ; $619d: $7c
	ld a, a                                          ; $619e: $7f
	sbc $fb                                          ; $619f: $de $fb
	rst $18                                          ; $61a1: $df
	ld l, c                                          ; $61a2: $69
	ld l, a                                          ; $61a3: $6f
	ld l, [hl]                                       ; $61a4: $6e
	ld l, d                                          ; $61a5: $6a
	ld c, [hl]                                       ; $61a6: $4e
	ld c, d                                          ; $61a7: $4a
	ld c, d                                          ; $61a8: $4a
	ld c, [hl]                                       ; $61a9: $4e
	db $dd                                           ; $61aa: $dd
	inc b                                            ; $61ab: $04
	db $fd                                           ; $61ac: $fd
	rst $18                                          ; $61ad: $df
	ld bc, $0288                                     ; $61ae: $01 $88 $02
	inc bc                                           ; $61b1: $03

jr_071_61b2:
	ld [bc], a                                       ; $61b2: $02
	inc bc                                           ; $61b3: $03
	call z, $f3ff                                    ; $61b4: $cc $ff $f3
	ccf                                              ; $61b7: $3f
	sbc a                                            ; $61b8: $9f
	adc [hl]                                         ; $61b9: $8e
	rst JumpTable                                          ; $61ba: $c7
	ret nz                                           ; $61bb: $c0

	rrca                                             ; $61bc: $0f
	nop                                              ; $61bd: $00
	rrca                                             ; $61be: $0f
	ld bc, $030d                                     ; $61bf: $01 $0d $03
	rrca                                             ; $61c2: $0f
	inc bc                                           ; $61c3: $03
	dec b                                            ; $61c4: $05
	inc bc                                           ; $61c5: $03
	nop                                              ; $61c6: $00
	cp a                                             ; $61c7: $bf
	add b                                            ; $61c8: $80
	add b                                            ; $61c9: $80
	sbc $80                                          ; $61ca: $de $80
	add d                                            ; $61cc: $82
	ld e, b                                          ; $61cd: $58
	ret nz                                           ; $61ce: $c0

	ld e, h                                          ; $61cf: $5c
	ld b, b                                          ; $61d0: $40
	call c, Call_071_7f90                            ; $61d1: $dc $90 $7f
	rst $38                                          ; $61d4: $ff
	rst $38                                          ; $61d5: $ff
	ldh [rIE], a                                     ; $61d6: $e0 $ff
	nop                                              ; $61d8: $00
	add c                                            ; $61d9: $81
	ld a, [hl]                                       ; $61da: $7e
	rst $38                                          ; $61db: $ff
	cp $8d                                           ; $61dc: $fe $8d
	adc h                                            ; $61de: $8c
	reti                                             ; $61df: $d9


	ret c                                            ; $61e0: $d8

	cp l                                             ; $61e1: $bd
	db $fc                                           ; $61e2: $fc
	ld d, l                                          ; $61e3: $55

jr_071_61e4:
	ld [hl], h                                       ; $61e4: $74
	daa                                              ; $61e5: $27
	inc h                                            ; $61e6: $24
	rra                                              ; $61e7: $1f
	jr jr_071_6225                                   ; $61e8: $18 $3b

	cp h                                             ; $61ea: $bc
	inc bc                                           ; $61eb: $03
	rlca                                             ; $61ec: $07
	rlca                                             ; $61ed: $07
	rlca                                             ; $61ee: $07
	daa                                              ; $61ef: $27

jr_071_61f0:
	rst $18                                          ; $61f0: $df
	rst $38                                          ; $61f1: $ff
	add b                                            ; $61f2: $80
	ld sp, hl                                        ; $61f3: $f9
	and c                                            ; $61f4: $a1
	cp $bc                                           ; $61f5: $fe $bc
	rst $38                                          ; $61f7: $ff
	rst AddAOntoHL                                          ; $61f8: $ef
	or a                                             ; $61f9: $b7
	cp [hl]                                          ; $61fa: $be
	xor e                                            ; $61fb: $ab
	or [hl]                                          ; $61fc: $b6
	cp e                                             ; $61fd: $bb
	or [hl]                                          ; $61fe: $b6
	cp e                                             ; $61ff: $bb
	and $bb                                          ; $6200: $e6 $bb
	xor l                                            ; $6202: $ad
	rst FarCall                                          ; $6203: $f7
	cp l                                             ; $6204: $bd
	rst SubAFromBC                                          ; $6205: $e7
	ld a, [$fcce]                                    ; $6206: $fa $ce $fc
	sbc h                                            ; $6209: $9c
	rst $38                                          ; $620a: $ff
	xor a                                            ; $620b: $af
	rst $38                                          ; $620c: $ff
	inc h                                            ; $620d: $24
	rst $38                                          ; $620e: $ff
	ld [hl+], a                                      ; $620f: $22
	rst $38                                          ; $6210: $ff
	ld b, c                                          ; $6211: $41
	add h                                            ; $6212: $84
	rst $18                                          ; $6213: $df
	pop bc                                           ; $6214: $c1
	sbc a                                            ; $6215: $9f
	add e                                            ; $6216: $83
	sbc a                                            ; $6217: $9f
	ld b, $1f                                        ; $6218: $06 $1f
	inc c                                            ; $621a: $0c
	ccf                                              ; $621b: $3f
	jr @+$41                                         ; $621c: $18 $3f

	jr nc, jr_071_629f                               ; $621e: $30 $7f

	jr nz, @+$01                                     ; $6220: $20 $ff

	ld b, b                                          ; $6222: $40
	rst $38                                          ; $6223: $ff
	add b                                            ; $6224: $80

jr_071_6225:
	rst $38                                          ; $6225: $ff
	inc bc                                           ; $6226: $03
	rst $38                                          ; $6227: $ff
	inc c                                            ; $6228: $0c
	rst $38                                          ; $6229: $ff
	inc sp                                           ; $622a: $33
	db $fc                                           ; $622b: $fc
	ld l, a                                          ; $622c: $6f
	ldh a, [$7b]                                     ; $622d: $f0 $7b
	rst FarCall                                          ; $622f: $f7
	ccf                                              ; $6230: $3f
	ld b, b                                          ; $6231: $40
	sub c                                            ; $6232: $91
	adc a                                            ; $6233: $8f
	nop                                              ; $6234: $00
	sbc e                                            ; $6235: $9b
	rlca                                             ; $6236: $07
	call nc, $ff8c                                   ; $6237: $d4 $8c $ff
	rst GetHLinHL                                          ; $623a: $cf
	db $ed                                           ; $623b: $ed
	rst GetHLinHL                                          ; $623c: $cf
	ld l, d                                          ; $623d: $6a
	ld [$a1f1], a                                    ; $623e: $ea $f1 $a1
	ld e, e                                          ; $6241: $5b
	ld h, b                                          ; $6242: $60
	sbc b                                            ; $6243: $98
	nop                                              ; $6244: $00
	ld c, $01                                        ; $6245: $0e $01
	rrca                                             ; $6247: $0f
	ld bc, $0107                                     ; $6248: $01 $07 $01
	scf                                              ; $624b: $37
	ld h, b                                          ; $624c: $60
	ld a, a                                          ; $624d: $7f
	cp $98                                           ; $624e: $fe $98
	jp $7f3e                                         ; $6250: $c3 $3e $7f


	cp $cb                                           ; $6253: $fe $cb
	jp z, Jump_071_43fd                              ; $6255: $ca $fd $43

	ld h, b                                          ; $6258: $60
	scf                                              ; $6259: $37
	and b                                            ; $625a: $a0
	ld a, a                                          ; $625b: $7f
	cp $9a                                           ; $625c: $fe $9a
	res 0, a                                         ; $625e: $cb $87
	rst SubAFromHL                                          ; $6260: $d7
	rst GetHLinHL                                          ; $6261: $cf
	db $fd                                           ; $6262: $fd
	ld b, e                                          ; $6263: $43
	and b                                            ; $6264: $a0
	ld [hl], a                                       ; $6265: $77
	cp $7f                                           ; $6266: $fe $7f
	adc $77                                          ; $6268: $ce $77
	and b                                            ; $626a: $a0
	ld [hl], a                                       ; $626b: $77
	sbc a                                            ; $626c: $9f
	ld c, a                                          ; $626d: $4f
	and b                                            ; $626e: $a0
	ld a, a                                          ; $626f: $7f
	cp $95                                           ; $6270: $fe $95
	db $e3                                           ; $6272: $e3
	ld e, $bf                                        ; $6273: $1e $bf
	ld a, [hl]                                       ; $6275: $7e
	ld a, l                                          ; $6276: $7d
	db $fc                                           ; $6277: $fc
	push de                                          ; $6278: $d5
	db $f4                                           ; $6279: $f4
	and a                                            ; $627a: $a7
	and h                                            ; $627b: $a4
	inc bc                                           ; $627c: $03
	and b                                            ; $627d: $a0
	sub h                                            ; $627e: $94
	nop                                              ; $627f: $00
	rst JumpTable                                          ; $6280: $c7
	add b                                            ; $6281: $80
	rst JumpTable                                          ; $6282: $c7
	ret nz                                           ; $6283: $c0

	db $e3                                           ; $6284: $e3
	ret nz                                           ; $6285: $c0

	ld h, h                                          ; $6286: $64
	db $e3                                           ; $6287: $e3
	rst FarCall                                          ; $6288: $f7
	and a                                            ; $6289: $a7
	cpl                                              ; $628a: $2f
	and b                                            ; $628b: $a0
	ld [hl], a                                       ; $628c: $77
	cp $7f                                           ; $628d: $fe $7f
	and b                                            ; $628f: $a0
	sbc l                                            ; $6290: $9d
	call c, Call_071_57c0                            ; $6291: $dc $c0 $57
	and b                                            ; $6294: $a0
	ld [hl], a                                       ; $6295: $77
	cp $97                                           ; $6296: $fe $97
	ei                                               ; $6298: $fb
	ld b, $f7                                        ; $6299: $06 $f7
	ld c, $df                                        ; $629b: $0e $df
	inc a                                            ; $629d: $3c
	ld a, a                                          ; $629e: $7f

jr_071_629f:
	ld a, b                                          ; $629f: $78
	ld e, a                                          ; $62a0: $5f
	and b                                            ; $62a1: $a0
	sbc c                                            ; $62a2: $99
	rst FarCall                                          ; $62a3: $f7
	add hl, de                                       ; $62a4: $19
	rst $38                                          ; $62a5: $ff
	ld [bc], a                                       ; $62a6: $02
	rst $38                                          ; $62a7: $ff
	ld [$fc7b], sp                                   ; $62a8: $08 $7b $fc
	add b                                            ; $62ab: $80
	nop                                              ; $62ac: $00
	cp a                                             ; $62ad: $bf
	ret nz                                           ; $62ae: $c0

	ld l, a                                          ; $62af: $6f
	ld [hl], b                                       ; $62b0: $70
	dec e                                            ; $62b1: $1d
	ld e, $09                                        ; $62b2: $1e $09
	rrca                                             ; $62b4: $0f
	ld de, $231f                                     ; $62b5: $11 $1f $23
	ccf                                              ; $62b8: $3f
	ld b, l                                          ; $62b9: $45
	ld a, a                                          ; $62ba: $7f
	adc c                                            ; $62bb: $89
	rst $38                                          ; $62bc: $ff
	jr @+$01                                         ; $62bd: $18 $ff

	inc l                                            ; $62bf: $2c
	rst $38                                          ; $62c0: $ff
	ld b, h                                          ; $62c1: $44
	rst $38                                          ; $62c2: $ff
	ldh a, [rIF]                                     ; $62c3: $f0 $0f
	ldh a, [rIF]                                     ; $62c5: $f0 $0f
	pop af                                           ; $62c7: $f1
	rrca                                             ; $62c8: $0f
	db $e3                                           ; $62c9: $e3
	rra                                              ; $62ca: $1f
	adc a                                            ; $62cb: $8f
	and $1f                                          ; $62cc: $e6 $1f
	call $db3e                                       ; $62ce: $cd $3e $db
	inc a                                            ; $62d1: $3c
	or a                                             ; $62d2: $b7
	ld a, b                                          ; $62d3: $78
	set 1, h                                         ; $62d4: $cb $cc
	add h                                            ; $62d6: $84
	add a                                            ; $62d7: $87
	cpl                                              ; $62d8: $2f
	cpl                                              ; $62d9: $2f
	inc a                                            ; $62da: $3c
	inc a                                            ; $62db: $3c
	ld [hl], a                                       ; $62dc: $77
	dec a                                            ; $62dd: $3d
	sbc e                                            ; $62de: $9b
	ld b, b                                          ; $62df: $40
	pop bc                                           ; $62e0: $c1
	ld b, c                                          ; $62e1: $41
	rst JumpTable                                          ; $62e2: $c7
	ld a, e                                          ; $62e3: $7b
	ret nz                                           ; $62e4: $c0

	ld a, [hl]                                       ; $62e5: $7e
	sbc e                                            ; $62e6: $9b
	sbc [hl]                                         ; $62e7: $9e
	ld c, $77                                        ; $62e8: $0e $77
	and h                                            ; $62ea: $a4
	cpl                                              ; $62eb: $2f
	ret nz                                           ; $62ec: $c0

	ld [hl], e                                       ; $62ed: $73
	ldh [$9c], a                                     ; $62ee: $e0 $9c
	rrca                                             ; $62f0: $0f
	ld a, [$2707]                                    ; $62f1: $fa $07 $27
	ldh [$9e], a                                     ; $62f4: $e0 $9e
	or $73                                           ; $62f6: $f6 $73
	ldh [$9b], a                                     ; $62f8: $e0 $9b
	rst $38                                          ; $62fa: $ff
	rlca                                             ; $62fb: $07
	cp $03                                           ; $62fc: $fe $03
	cpl                                              ; $62fe: $2f
	ldh [$9a], a                                     ; $62ff: $e0 $9a
	ld bc, $db80                                     ; $6301: $01 $80 $db
	adc [hl]                                         ; $6304: $8e
	call $8787                                       ; $6305: $cd $87 $87
	add e                                            ; $6308: $83
	add c                                            ; $6309: $81
	add b                                            ; $630a: $80
	add b                                            ; $630b: $80
	nop                                              ; $630c: $00
	jr c, jr_071_6327                                ; $630d: $38 $18

	ld a, h                                          ; $630f: $7c
	jr c, jr_071_6380                                ; $6310: $38 $6e

	ld [hl], b                                       ; $6312: $70
	ld e, a                                          ; $6313: $5f
	ld h, b                                          ; $6314: $60
	adc b                                            ; $6315: $88
	ld b, a                                          ; $6316: $47
	sbc a                                            ; $6317: $9f
	rrca                                             ; $6318: $0f
	call c, $fb9c                                    ; $6319: $dc $9c $fb
	rst $18                                          ; $631c: $df
	push af                                          ; $631d: $f5
	rst SubAFromHL                                          ; $631e: $d7
	ld h, d                                          ; $631f: $62
	ldh [c], a                                       ; $6320: $e2
	pop af                                           ; $6321: $f1
	adc h                                            ; $6322: $8c
	and c                                            ; $6323: $a1
	ld a, [hl]                                       ; $6324: $7e
	or c                                             ; $6325: $b1
	xor a                                            ; $6326: $af

jr_071_6327:
	ld a, b                                          ; $6327: $78
	rst GetHLinHL                                          ; $6328: $cf
	ld a, h                                          ; $6329: $7c
	ld a, a                                          ; $632a: $7f
	sbc $fb                                          ; $632b: $de $fb
	rst $18                                          ; $632d: $df
	ld l, c                                          ; $632e: $69
	ld l, a                                          ; $632f: $6f
	ld l, [hl]                                       ; $6330: $6e
	ld l, d                                          ; $6331: $6a
	ld c, [hl]                                       ; $6332: $4e
	ld c, d                                          ; $6333: $4a
	ld c, d                                          ; $6334: $4a
	ld c, [hl]                                       ; $6335: $4e
	db $dd                                           ; $6336: $dd
	inc b                                            ; $6337: $04
	db $fd                                           ; $6338: $fd
	rst $18                                          ; $6339: $df
	ld bc, $0288                                     ; $633a: $01 $88 $02
	inc bc                                           ; $633d: $03
	ld [bc], a                                       ; $633e: $02
	inc bc                                           ; $633f: $03
	call z, $f3ff                                    ; $6340: $cc $ff $f3
	ccf                                              ; $6343: $3f
	sbc a                                            ; $6344: $9f
	adc [hl]                                         ; $6345: $8e
	rst JumpTable                                          ; $6346: $c7
	ret nz                                           ; $6347: $c0

	rrca                                             ; $6348: $0f
	nop                                              ; $6349: $00
	rrca                                             ; $634a: $0f
	ld bc, $030d                                     ; $634b: $01 $0d $03
	rrca                                             ; $634e: $0f
	inc bc                                           ; $634f: $03
	dec b                                            ; $6350: $05
	inc bc                                           ; $6351: $03
	nop                                              ; $6352: $00
	cp a                                             ; $6353: $bf
	add b                                            ; $6354: $80
	add b                                            ; $6355: $80
	sbc $80                                          ; $6356: $de $80
	add d                                            ; $6358: $82
	ld e, b                                          ; $6359: $58
	ret nz                                           ; $635a: $c0

	ld e, h                                          ; $635b: $5c
	ld b, b                                          ; $635c: $40
	call c, Call_071_7f90                            ; $635d: $dc $90 $7f
	rst $38                                          ; $6360: $ff
	rst $38                                          ; $6361: $ff
	ldh [rIE], a                                     ; $6362: $e0 $ff
	nop                                              ; $6364: $00
	add c                                            ; $6365: $81
	ld a, [hl]                                       ; $6366: $7e
	rst $38                                          ; $6367: $ff
	cp $8d                                           ; $6368: $fe $8d
	adc h                                            ; $636a: $8c
	reti                                             ; $636b: $d9


	ret c                                            ; $636c: $d8

	cp l                                             ; $636d: $bd
	db $fc                                           ; $636e: $fc
	ld d, l                                          ; $636f: $55
	ld [hl], h                                       ; $6370: $74
	daa                                              ; $6371: $27
	inc h                                            ; $6372: $24
	rra                                              ; $6373: $1f
	jr jr_071_63b1                                   ; $6374: $18 $3b

	cp h                                             ; $6376: $bc
	inc bc                                           ; $6377: $03
	rlca                                             ; $6378: $07
	rlca                                             ; $6379: $07
	rlca                                             ; $637a: $07
	daa                                              ; $637b: $27
	rst $18                                          ; $637c: $df
	rst $38                                          ; $637d: $ff
	add b                                            ; $637e: $80
	ld sp, hl                                        ; $637f: $f9

jr_071_6380:
	and c                                            ; $6380: $a1
	cp $bc                                           ; $6381: $fe $bc
	rst $38                                          ; $6383: $ff
	rst AddAOntoHL                                          ; $6384: $ef
	or a                                             ; $6385: $b7
	cp [hl]                                          ; $6386: $be
	xor e                                            ; $6387: $ab
	or [hl]                                          ; $6388: $b6
	cp e                                             ; $6389: $bb
	or [hl]                                          ; $638a: $b6
	cp e                                             ; $638b: $bb
	and $bb                                          ; $638c: $e6 $bb
	xor l                                            ; $638e: $ad
	rst FarCall                                          ; $638f: $f7
	cp l                                             ; $6390: $bd
	rst SubAFromBC                                          ; $6391: $e7
	ld a, [$fcce]                                    ; $6392: $fa $ce $fc
	sbc h                                            ; $6395: $9c
	rst $38                                          ; $6396: $ff
	xor a                                            ; $6397: $af
	rst $38                                          ; $6398: $ff
	inc h                                            ; $6399: $24
	rst $38                                          ; $639a: $ff
	ld [hl+], a                                      ; $639b: $22
	rst $38                                          ; $639c: $ff
	ld b, c                                          ; $639d: $41
	add h                                            ; $639e: $84
	rst $18                                          ; $639f: $df
	pop bc                                           ; $63a0: $c1
	sbc a                                            ; $63a1: $9f
	add e                                            ; $63a2: $83
	sbc a                                            ; $63a3: $9f
	ld b, $1f                                        ; $63a4: $06 $1f
	inc c                                            ; $63a6: $0c
	ccf                                              ; $63a7: $3f
	jr jr_071_63e9                                   ; $63a8: $18 $3f

	jr nc, jr_071_642b                               ; $63aa: $30 $7f

	jr nz, @+$01                                     ; $63ac: $20 $ff

	ld b, b                                          ; $63ae: $40
	rst $38                                          ; $63af: $ff
	add b                                            ; $63b0: $80

jr_071_63b1:
	rst $38                                          ; $63b1: $ff
	inc bc                                           ; $63b2: $03
	rst $38                                          ; $63b3: $ff
	inc c                                            ; $63b4: $0c
	rst $38                                          ; $63b5: $ff
	inc sp                                           ; $63b6: $33
	db $fc                                           ; $63b7: $fc
	ld l, a                                          ; $63b8: $6f
	ldh a, [$7b]                                     ; $63b9: $f0 $7b
	rst FarCall                                          ; $63bb: $f7
	ccf                                              ; $63bc: $3f
	ld b, b                                          ; $63bd: $40
	sub c                                            ; $63be: $91
	adc a                                            ; $63bf: $8f
	ld b, b                                          ; $63c0: $40
	sbc e                                            ; $63c1: $9b
	rlca                                             ; $63c2: $07
	call nc, $ff8c                                   ; $63c3: $d4 $8c $ff
	rst GetHLinHL                                          ; $63c6: $cf
	db $ed                                           ; $63c7: $ed
	rst GetHLinHL                                          ; $63c8: $cf
	ld l, d                                          ; $63c9: $6a
	ld [$a1f1], a                                    ; $63ca: $ea $f1 $a1
	ld e, e                                          ; $63cd: $5b
	ld h, b                                          ; $63ce: $60
	sbc b                                            ; $63cf: $98
	nop                                              ; $63d0: $00
	ld c, $01                                        ; $63d1: $0e $01
	rrca                                             ; $63d3: $0f
	ld bc, $0107                                     ; $63d4: $01 $07 $01
	scf                                              ; $63d7: $37
	ld h, b                                          ; $63d8: $60
	ld a, a                                          ; $63d9: $7f
	cp $98                                           ; $63da: $fe $98
	jp $7f3e                                         ; $63dc: $c3 $3e $7f


	cp $cb                                           ; $63df: $fe $cb
	jp z, Jump_071_43fd                              ; $63e1: $ca $fd $43

	ld h, b                                          ; $63e4: $60
	scf                                              ; $63e5: $37
	and b                                            ; $63e6: $a0
	sbc b                                            ; $63e7: $98
	adc a                                            ; $63e8: $8f

jr_071_63e9:
	nop                                              ; $63e9: $00
	res 0, a                                         ; $63ea: $cb $87
	rst SubAFromHL                                          ; $63ec: $d7
	rst GetHLinHL                                          ; $63ed: $cf
	db $fd                                           ; $63ee: $fd
	ld b, e                                          ; $63ef: $43
	and b                                            ; $63f0: $a0
	ld [hl], a                                       ; $63f1: $77
	cp $7f                                           ; $63f2: $fe $7f
	adc $77                                          ; $63f4: $ce $77
	and b                                            ; $63f6: $a0
	ld [hl], a                                       ; $63f7: $77
	sbc a                                            ; $63f8: $9f
	ld c, a                                          ; $63f9: $4f
	and b                                            ; $63fa: $a0
	ld a, a                                          ; $63fb: $7f
	cp $95                                           ; $63fc: $fe $95
	db $e3                                           ; $63fe: $e3
	ld e, $bf                                        ; $63ff: $1e $bf
	ld a, [hl]                                       ; $6401: $7e
	ld a, l                                          ; $6402: $7d
	db $fc                                           ; $6403: $fc
	push de                                          ; $6404: $d5
	db $f4                                           ; $6405: $f4
	and a                                            ; $6406: $a7
	and h                                            ; $6407: $a4
	dec hl                                           ; $6408: $2b
	and b                                            ; $6409: $a0
	sub a                                            ; $640a: $97
	nop                                              ; $640b: $00
	ld a, h                                          ; $640c: $7c
	jr @+$80                                         ; $640d: $18 $7e

	jr c, jr_071_6480                                ; $640f: $38 $6f

	ld [hl], b                                       ; $6411: $70
	rst GetHLinHL                                          ; $6412: $cf
	ld a, e                                          ; $6413: $7b
	sbc [hl]                                         ; $6414: $9e
	sub l                                            ; $6415: $95
	rst JumpTable                                          ; $6416: $c7
	add b                                            ; $6417: $80
	rst JumpTable                                          ; $6418: $c7
	ret nz                                           ; $6419: $c0

	db $e3                                           ; $641a: $e3
	ret nz                                           ; $641b: $c0

	ld h, h                                          ; $641c: $64
	db $e3                                           ; $641d: $e3
	rst FarCall                                          ; $641e: $f7
	and a                                            ; $641f: $a7
	cpl                                              ; $6420: $2f
	and b                                            ; $6421: $a0
	ld [hl], a                                       ; $6422: $77
	cp $7f                                           ; $6423: $fe $7f
	and b                                            ; $6425: $a0
	sbc l                                            ; $6426: $9d
	call c, Call_071_73c0                            ; $6427: $dc $c0 $73
	and b                                            ; $642a: $a0

jr_071_642b:
	ld a, [hl]                                       ; $642b: $7e
	ld sp, hl                                        ; $642c: $f9
	cp h                                             ; $642d: $bc
	rst $38                                          ; $642e: $ff
	rst $38                                          ; $642f: $ff
	rst $38                                          ; $6430: $ff
	rst $38                                          ; $6431: $ff
	ei                                               ; $6432: $fb
	sbc b                                            ; $6433: $98
	ld b, $f7                                        ; $6434: $06 $f7
	ld c, $df                                        ; $6436: $0e $df
	inc a                                            ; $6438: $3c
	ld a, a                                          ; $6439: $7f
	ld a, b                                          ; $643a: $78
	ld e, a                                          ; $643b: $5f

jr_071_643c:
	and b                                            ; $643c: $a0
	add b                                            ; $643d: $80
	rst FarCall                                          ; $643e: $f7
	jr jr_071_643c                                   ; $643f: $18 $fb

	rlca                                             ; $6441: $07
	ei                                               ; $6442: $fb
	inc c                                            ; $6443: $0c
	cp $03                                           ; $6444: $fe $03
	rst $38                                          ; $6446: $ff
	nop                                              ; $6447: $00
	cp a                                             ; $6448: $bf
	ret nz                                           ; $6449: $c0

	ld l, a                                          ; $644a: $6f
	ld [hl], b                                       ; $644b: $70
	dec e                                            ; $644c: $1d
	ld e, $09                                        ; $644d: $1e $09
	rrca                                             ; $644f: $0f
	ld de, $231f                                     ; $6450: $11 $1f $23
	ccf                                              ; $6453: $3f
	ld b, l                                          ; $6454: $45
	ld a, a                                          ; $6455: $7f
	adc c                                            ; $6456: $89
	rst $38                                          ; $6457: $ff
	jr @+$01                                         ; $6458: $18 $ff

	inc l                                            ; $645a: $2c
	rst $38                                          ; $645b: $ff
	ld b, h                                          ; $645c: $44
	ld a, a                                          ; $645d: $7f
	jp $0f88                                         ; $645e: $c3 $88 $0f


	ldh a, [rIF]                                     ; $6461: $f0 $0f
	pop af                                           ; $6463: $f1
	rrca                                             ; $6464: $0f
	db $e3                                           ; $6465: $e3
	rra                                              ; $6466: $1f
	and $1f                                          ; $6467: $e6 $1f
	call $db3e                                       ; $6469: $cd $3e $db
	inc a                                            ; $646c: $3c
	or a                                             ; $646d: $b7
	ld a, b                                          ; $646e: $78
	set 1, h                                         ; $646f: $cb $cc
	add h                                            ; $6471: $84
	add a                                            ; $6472: $87
	cpl                                              ; $6473: $2f
	cpl                                              ; $6474: $2f
	inc a                                            ; $6475: $3c
	inc a                                            ; $6476: $3c
	ld [hl], a                                       ; $6477: $77
	dec a                                            ; $6478: $3d
	sbc e                                            ; $6479: $9b
	ld b, b                                          ; $647a: $40
	pop bc                                           ; $647b: $c1
	ld b, c                                          ; $647c: $41
	rst JumpTable                                          ; $647d: $c7
	ld [hl], a                                       ; $647e: $77
	ret nz                                           ; $647f: $c0

jr_071_6480:
	sbc c                                            ; $6480: $99
	db $fd                                           ; $6481: $fd
	ld c, $ff                                        ; $6482: $0e $ff
	nop                                              ; $6484: $00
	cp $03                                           ; $6485: $fe $03
	cpl                                              ; $6487: $2f
	ret nz                                           ; $6488: $c0

	ld a, a                                          ; $6489: $7f
	ldh [$99], a                                     ; $648a: $e0 $99
	cp $07                                           ; $648c: $fe $07
	rst $38                                          ; $648e: $ff
	rrca                                             ; $648f: $0f
	ld sp, hl                                        ; $6490: $f9
	ld b, $27                                        ; $6491: $06 $27
	and b                                            ; $6493: $a0
	ld l, a                                          ; $6494: $6f
	ldh [$9e], a                                     ; $6495: $e0 $9e
	rst $38                                          ; $6497: $ff
	inc hl                                           ; $6498: $23
	ldh [$9a], a                                     ; $6499: $e0 $9a
	ld bc, $db96                                     ; $649b: $01 $96 $db
	adc [hl]                                         ; $649e: $8e
	call $8787                                       ; $649f: $cd $87 $87
	add e                                            ; $64a2: $83
	add c                                            ; $64a3: $81
	add b                                            ; $64a4: $80
	add b                                            ; $64a5: $80
	cp a                                             ; $64a6: $bf
	jr c, jr_071_6525                                ; $64a7: $38 $7c

	add b                                            ; $64a9: $80
	ld a, h                                          ; $64aa: $7c
	ld c, [hl]                                       ; $64ab: $4e
	ld a, $7f                                        ; $64ac: $3e $7f
	nop                                              ; $64ae: $00
	ret z                                            ; $64af: $c8

	rlca                                             ; $64b0: $07
	sbc a                                            ; $64b1: $9f
	rrca                                             ; $64b2: $0f
	call c, $fb9c                                    ; $64b3: $dc $9c $fb
	rst $18                                          ; $64b6: $df
	push af                                          ; $64b7: $f5
	rst SubAFromHL                                          ; $64b8: $d7
	ld h, d                                          ; $64b9: $62
	db $e3                                           ; $64ba: $e3
	pop af                                           ; $64bb: $f1
	and c                                            ; $64bc: $a1
	ld a, [hl]                                       ; $64bd: $7e
	or c                                             ; $64be: $b1
	xor a                                            ; $64bf: $af
	ld a, b                                          ; $64c0: $78
	rst GetHLinHL                                          ; $64c1: $cf
	ld a, h                                          ; $64c2: $7c
	ld a, a                                          ; $64c3: $7f
	sbc $fb                                          ; $64c4: $de $fb
	rst $18                                          ; $64c6: $df
	ld l, c                                          ; $64c7: $69
	ld l, a                                          ; $64c8: $6f
	sbc c                                            ; $64c9: $99
	ld l, [hl]                                       ; $64ca: $6e
	ld l, d                                          ; $64cb: $6a
	ld c, [hl]                                       ; $64cc: $4e
	ld c, d                                          ; $64cd: $4a

Call_071_64ce:
	ld c, d                                          ; $64ce: $4a
	ld c, [hl]                                       ; $64cf: $4e
	db $dd                                           ; $64d0: $dd
	inc b                                            ; $64d1: $04
	db $fd                                           ; $64d2: $fd
	rst $18                                          ; $64d3: $df
	ld bc, $0288                                     ; $64d4: $01 $88 $02
	inc bc                                           ; $64d7: $03
	ld [bc], a                                       ; $64d8: $02
	inc bc                                           ; $64d9: $03
	call z, $f3ff                                    ; $64da: $cc $ff $f3
	ccf                                              ; $64dd: $3f
	sbc a                                            ; $64de: $9f
	adc a                                            ; $64df: $8f
	rst JumpTable                                          ; $64e0: $c7
	add $0f                                          ; $64e1: $c6 $0f
	nop                                              ; $64e3: $00
	ld c, $01                                        ; $64e4: $0e $01
	rrca                                             ; $64e6: $0f
	ld bc, $030d                                     ; $64e7: $01 $0d $03
	rlca                                             ; $64ea: $07
	inc bc                                           ; $64eb: $03
	nop                                              ; $64ec: $00
	cp a                                             ; $64ed: $bf
	add b                                            ; $64ee: $80
	add b                                            ; $64ef: $80
	sbc $80                                          ; $64f0: $de $80
	add d                                            ; $64f2: $82
	ld e, b                                          ; $64f3: $58
	ret nz                                           ; $64f4: $c0

	ld e, h                                          ; $64f5: $5c
	ld b, b                                          ; $64f6: $40
	call c, Call_071_7f90                            ; $64f7: $dc $90 $7f
	rst $38                                          ; $64fa: $ff
	rst $38                                          ; $64fb: $ff
	ldh [rIE], a                                     ; $64fc: $e0 $ff
	nop                                              ; $64fe: $00
	pop bc                                           ; $64ff: $c1
	ld a, $7f                                        ; $6500: $3e $7f
	cp $cd                                           ; $6502: $fe $cd
	call z, $9899                                    ; $6504: $cc $99 $98
	cp l                                             ; $6507: $bd
	db $fc                                           ; $6508: $fc
	ld d, l                                          ; $6509: $55
	ld [hl], h                                       ; $650a: $74
	daa                                              ; $650b: $27
	inc [hl]                                         ; $650c: $34
	rra                                              ; $650d: $1f
	jr jr_071_654b                                   ; $650e: $18 $3b

	cp h                                             ; $6510: $bc
	inc bc                                           ; $6511: $03
	rlca                                             ; $6512: $07
	rlca                                             ; $6513: $07
	rlca                                             ; $6514: $07
	daa                                              ; $6515: $27
	rst $18                                          ; $6516: $df
	rst $38                                          ; $6517: $ff
	add b                                            ; $6518: $80
	ld sp, hl                                        ; $6519: $f9
	and c                                            ; $651a: $a1
	cp $bc                                           ; $651b: $fe $bc
	rst $38                                          ; $651d: $ff
	rst AddAOntoHL                                          ; $651e: $ef
	or a                                             ; $651f: $b7
	cp [hl]                                          ; $6520: $be
	xor e                                            ; $6521: $ab
	or [hl]                                          ; $6522: $b6
	cp e                                             ; $6523: $bb
	or [hl]                                          ; $6524: $b6

jr_071_6525:
	cp e                                             ; $6525: $bb
	and $bb                                          ; $6526: $e6 $bb
	xor l                                            ; $6528: $ad
	rst FarCall                                          ; $6529: $f7
	cp l                                             ; $652a: $bd
	rst SubAFromBC                                          ; $652b: $e7
	ld a, [$fcce]                                    ; $652c: $fa $ce $fc
	sbc h                                            ; $652f: $9c
	rst $38                                          ; $6530: $ff
	xor a                                            ; $6531: $af
	rst $38                                          ; $6532: $ff
	inc h                                            ; $6533: $24
	rst $38                                          ; $6534: $ff
	ld [hl+], a                                      ; $6535: $22
	rst $38                                          ; $6536: $ff
	ld b, c                                          ; $6537: $41
	add h                                            ; $6538: $84
	rst $18                                          ; $6539: $df
	pop bc                                           ; $653a: $c1
	sbc a                                            ; $653b: $9f
	add e                                            ; $653c: $83
	sbc a                                            ; $653d: $9f
	ld b, $1f                                        ; $653e: $06 $1f
	inc c                                            ; $6540: $0c
	ccf                                              ; $6541: $3f
	jr jr_071_6583                                   ; $6542: $18 $3f

	jr nc, jr_071_65c5                               ; $6544: $30 $7f

	jr nz, @+$01                                     ; $6546: $20 $ff

	ld b, b                                          ; $6548: $40
	rst $38                                          ; $6549: $ff
	add b                                            ; $654a: $80

jr_071_654b:
	rst $38                                          ; $654b: $ff
	inc bc                                           ; $654c: $03
	rst $38                                          ; $654d: $ff
	inc c                                            ; $654e: $0c
	rst $38                                          ; $654f: $ff
	inc sp                                           ; $6550: $33
	db $fc                                           ; $6551: $fc
	ld l, a                                          ; $6552: $6f
	ldh a, [$7b]                                     ; $6553: $f0 $7b
	rst FarCall                                          ; $6555: $f7
	ccf                                              ; $6556: $3f
	ld b, b                                          ; $6557: $40
	sub c                                            ; $6558: $91
	rst GetHLinHL                                          ; $6559: $cf
	nop                                              ; $655a: $00
	sbc e                                            ; $655b: $9b
	rlca                                             ; $655c: $07
	call nc, $ff8c                                   ; $655d: $d4 $8c $ff
	rst GetHLinHL                                          ; $6560: $cf
	db $ed                                           ; $6561: $ed
	rst GetHLinHL                                          ; $6562: $cf
	ld l, d                                          ; $6563: $6a
	db $eb                                           ; $6564: $eb
	pop af                                           ; $6565: $f1
	and c                                            ; $6566: $a1
	ld e, a                                          ; $6567: $5f
	ld h, b                                          ; $6568: $60
	ld l, a                                          ; $6569: $6f
	ld e, [hl]                                       ; $656a: $5e
	sbc l                                            ; $656b: $9d
	rlca                                             ; $656c: $07
	ld bc, $6037                                     ; $656d: $01 $37 $60
	ld a, a                                          ; $6570: $7f
	cp $9e                                           ; $6571: $fe $9e
	jp Jump_071_5e7b                                 ; $6573: $c3 $7b $5e


	sbc h                                            ; $6576: $9c
	set 1, d                                         ; $6577: $cb $ca
	db $fd                                           ; $6579: $fd
	ld b, e                                          ; $657a: $43
	ld h, b                                          ; $657b: $60
	scf                                              ; $657c: $37
	and b                                            ; $657d: $a0
	sbc b                                            ; $657e: $98
	adc a                                            ; $657f: $8f
	nop                                              ; $6580: $00
	res 0, a                                         ; $6581: $cb $87

jr_071_6583:
	rst SubAFromHL                                          ; $6583: $d7
	rst GetHLinHL                                          ; $6584: $cf
	db $fd                                           ; $6585: $fd
	ld b, e                                          ; $6586: $43
	and b                                            ; $6587: $a0
	ld [hl], a                                       ; $6588: $77
	cp $7f                                           ; $6589: $fe $7f
	adc $77                                          ; $658b: $ce $77
	and b                                            ; $658d: $a0
	ld [hl], a                                       ; $658e: $77
	sbc a                                            ; $658f: $9f
	ld c, a                                          ; $6590: $4f
	and b                                            ; $6591: $a0
	ld a, a                                          ; $6592: $7f
	cp $95                                           ; $6593: $fe $95
	db $e3                                           ; $6595: $e3
	ld e, $bf                                        ; $6596: $1e $bf
	ld a, [hl]                                       ; $6598: $7e
	ld a, l                                          ; $6599: $7d
	db $fc                                           ; $659a: $fc
	push de                                          ; $659b: $d5
	db $fc                                           ; $659c: $fc
	and a                                            ; $659d: $a7
	or h                                             ; $659e: $b4
	daa                                              ; $659f: $27
	and b                                            ; $65a0: $a0
	sbc c                                            ; $65a1: $99
	inc a                                            ; $65a2: $3c
	nop                                              ; $65a3: $00
	ld a, [hl]                                       ; $65a4: $7e
	ld a, h                                          ; $65a5: $7c
	ld c, a                                          ; $65a6: $4f
	ld a, $77                                        ; $65a7: $3e $77
	and b                                            ; $65a9: $a0
	sub l                                            ; $65aa: $95
	rst JumpTable                                          ; $65ab: $c7
	add b                                            ; $65ac: $80
	rst JumpTable                                          ; $65ad: $c7
	ret nz                                           ; $65ae: $c0

	db $e3                                           ; $65af: $e3
	ret nz                                           ; $65b0: $c0

	ld h, h                                          ; $65b1: $64
	db $e3                                           ; $65b2: $e3
	rst FarCall                                          ; $65b3: $f7
	and a                                            ; $65b4: $a7
	ld l, e                                          ; $65b5: $6b
	and b                                            ; $65b6: $a0
	sbc h                                            ; $65b7: $9c
	jp $060f                                         ; $65b8: $c3 $0f $06


	ld d, a                                          ; $65bb: $57
	and b                                            ; $65bc: $a0
	ld [hl], a                                       ; $65bd: $77
	cp $7f                                           ; $65be: $fe $7f
	and b                                            ; $65c0: $a0
	sbc l                                            ; $65c1: $9d
	call c, Call_071_6bc0                            ; $65c2: $dc $c0 $6b

jr_071_65c5:
	and b                                            ; $65c5: $a0
	ld a, [hl]                                       ; $65c6: $7e
	xor $bd                                          ; $65c7: $ee $bd
	rst $38                                          ; $65c9: $ff
	rst $38                                          ; $65ca: $ff
	rst $38                                          ; $65cb: $ff
	ei                                               ; $65cc: $fb
	sbc b                                            ; $65cd: $98
	ld b, $f7                                        ; $65ce: $06 $f7
	ld c, $df                                        ; $65d0: $0e $df
	inc a                                            ; $65d2: $3c
	ld a, a                                          ; $65d3: $7f
	ld a, b                                          ; $65d4: $78
	ld e, a                                          ; $65d5: $5f

jr_071_65d6:
	and b                                            ; $65d6: $a0
	add b                                            ; $65d7: $80
	rst FarCall                                          ; $65d8: $f7
	jr jr_071_65d6                                   ; $65d9: $18 $fb

	rlca                                             ; $65db: $07
	ei                                               ; $65dc: $fb
	inc c                                            ; $65dd: $0c
	cp $03                                           ; $65de: $fe $03
	rst $38                                          ; $65e0: $ff
	nop                                              ; $65e1: $00
	cp a                                             ; $65e2: $bf
	ret nz                                           ; $65e3: $c0

	ld l, a                                          ; $65e4: $6f
	ld [hl], b                                       ; $65e5: $70
	dec e                                            ; $65e6: $1d
	ld e, $09                                        ; $65e7: $1e $09
	rrca                                             ; $65e9: $0f
	ld de, $231f                                     ; $65ea: $11 $1f $23
	ccf                                              ; $65ed: $3f
	ld b, l                                          ; $65ee: $45
	ld a, a                                          ; $65ef: $7f
	adc c                                            ; $65f0: $89
	rst $38                                          ; $65f1: $ff
	jr @+$01                                         ; $65f2: $18 $ff

	inc l                                            ; $65f4: $2c
	rst $38                                          ; $65f5: $ff
	ld b, h                                          ; $65f6: $44
	add [hl]                                         ; $65f7: $86
	rst $38                                          ; $65f8: $ff
	ldh a, [rIF]                                     ; $65f9: $f0 $0f
	ldh a, [rIF]                                     ; $65fb: $f0 $0f
	pop af                                           ; $65fd: $f1
	rrca                                             ; $65fe: $0f
	db $e3                                           ; $65ff: $e3
	rra                                              ; $6600: $1f
	and $1f                                          ; $6601: $e6 $1f
	call $db3e                                       ; $6603: $cd $3e $db
	inc a                                            ; $6606: $3c
	or a                                             ; $6607: $b7
	ld a, b                                          ; $6608: $78
	set 1, h                                         ; $6609: $cb $cc
	add h                                            ; $660b: $84
	add a                                            ; $660c: $87
	cpl                                              ; $660d: $2f
	cpl                                              ; $660e: $2f
	inc a                                            ; $660f: $3c
	inc a                                            ; $6610: $3c
	ld [hl], a                                       ; $6611: $77
	dec a                                            ; $6612: $3d
	sbc e                                            ; $6613: $9b
	ld b, b                                          ; $6614: $40
	pop bc                                           ; $6615: $c1
	ld b, c                                          ; $6616: $41
	rst JumpTable                                          ; $6617: $c7
	ld [hl], a                                       ; $6618: $77
	ret nz                                           ; $6619: $c0

	sbc e                                            ; $661a: $9b
	rst $38                                          ; $661b: $ff
	rrca                                             ; $661c: $0f
	rst $38                                          ; $661d: $ff
	ld b, $27                                        ; $661e: $06 $27
	ret nz                                           ; $6620: $c0

	ld a, a                                          ; $6621: $7f
	ldh [$9e], a                                     ; $6622: $e0 $9e
	cp $7b                                           ; $6624: $fe $7b
	ldh [$9b], a                                     ; $6626: $e0 $9b
	rst FarCall                                          ; $6628: $f7
	rrca                                             ; $6629: $0f
	ei                                               ; $662a: $fb
	ld b, $17                                        ; $662b: $06 $17
	ldh [$7f], a                                     ; $662d: $e0 $7f
	cp $7f                                           ; $662f: $fe $7f
	ld a, [$e02f]                                    ; $6631: $fa $2f $e0
	db $f4                                           ; $6634: $f4
	ld [bc], a                                       ; $6635: $02
	push af                                          ; $6636: $f5
	reti                                             ; $6637: $d9


	ld bc, $039d                                     ; $6638: $01 $9d $03
	ld [bc], a                                       ; $663b: $02
	ld [hl], a                                       ; $663c: $77
	cp $80                                           ; $663d: $fe $80
	ld b, $05                                        ; $663f: $06 $05
	rlca                                             ; $6641: $07
	dec b                                            ; $6642: $05
	dec c                                            ; $6643: $0d
	dec bc                                           ; $6644: $0b
	ld d, $1f                                        ; $6645: $16 $1f
	dec sp                                           ; $6647: $3b
	dec sp                                           ; $6648: $3b
	dec b                                            ; $6649: $05
	ld b, $0e                                        ; $664a: $06 $0e
	add hl, bc                                       ; $664c: $09
	dec de                                           ; $664d: $1b
	rla                                              ; $664e: $17
	dec d                                            ; $664f: $15
	dec e                                            ; $6650: $1d
	dec hl                                           ; $6651: $2b
	ld a, [hl-]                                      ; $6652: $3a
	inc sp                                           ; $6653: $33
	ld [hl-], a                                      ; $6654: $32
	ld h, a                                          ; $6655: $67
	ld h, l                                          ; $6656: $65
	ld c, [hl]                                       ; $6657: $4e
	ld c, e                                          ; $6658: $4b
	inc de                                           ; $6659: $13
	ld e, $7d                                        ; $665a: $1e $7d
	ld a, [hl]                                       ; $665c: $7e
	ld b, $7f                                        ; $665d: $06 $7f
	db $eb                                           ; $665f: $eb
	ld a, e                                          ; $6660: $7b
	ldh [c], a                                       ; $6661: $e2
	ld [hl], a                                       ; $6662: $77
	cp $99                                           ; $6663: $fe $99
	ld c, $0a                                        ; $6665: $0e $0a
	ld a, [bc]                                       ; $6667: $0a
	ld c, $0a                                        ; $6668: $0e $0a
	ld c, $db                                        ; $666a: $0e $db
	inc b                                            ; $666c: $04
	rst SubAFromBC                                          ; $666d: $e7
	db $dd                                           ; $666e: $dd
	ld bc, $a977                                     ; $666f: $01 $77 $a9
	adc a                                            ; $6672: $8f
	inc b                                            ; $6673: $04
	rlca                                             ; $6674: $07
	inc b                                            ; $6675: $04
	rlca                                             ; $6676: $07
	ld [$0d0f], sp                                   ; $6677: $08 $0f $0d
	dec bc                                           ; $667a: $0b
	rla                                              ; $667b: $17
	add hl, de                                       ; $667c: $19
	dec e                                            ; $667d: $1d
	inc de                                           ; $667e: $13
	ld e, $13                                        ; $667f: $1e $13
	ld h, $3b                                        ; $6681: $26 $3b
	jp hl                                            ; $6683: $e9


	rst $18                                          ; $6684: $df
	inc bc                                           ; $6685: $03
	rst $18                                          ; $6686: $df
	rlca                                             ; $6687: $07
	adc e                                            ; $6688: $8b
	rra                                              ; $6689: $1f
	jr jr_071_66c7                                   ; $668a: $18 $3b

	scf                                              ; $668c: $37
	dec [hl]                                         ; $668d: $35
	ld l, $5f                                        ; $668e: $2e $5f
	ld l, b                                          ; $6690: $68
	ld a, l                                          ; $6691: $7d
	ld d, e                                          ; $6692: $53
	cp e                                             ; $6693: $bb
	sub $fb                                          ; $6694: $d6 $fb
	and [hl]                                         ; $6696: $a6
	rst FarCall                                          ; $6697: $f7
	xor h                                            ; $6698: $ac
	or [hl]                                          ; $6699: $b6
	ld l, l                                          ; $669a: $6d
	and $5d                                          ; $669b: $e6 $5d
	ldh [$b5], a                                     ; $669d: $e0 $b5
	rst $18                                          ; $669f: $df
	inc bc                                           ; $66a0: $03
	add b                                            ; $66a1: $80
	rrca                                             ; $66a2: $0f
	inc c                                            ; $66a3: $0c
	inc [hl]                                         ; $66a4: $34
	dec sp                                           ; $66a5: $3b
	ld c, h                                          ; $66a6: $4c
	ld [hl], e                                       ; $66a7: $73
	ret nz                                           ; $66a8: $c0

	rst $38                                          ; $66a9: $ff
	adc h                                            ; $66aa: $8c
	di                                               ; $66ab: $f3
	ld l, $f1                                        ; $66ac: $2e $f1
	daa                                              ; $66ae: $27
	ld hl, sp+$63                                    ; $66af: $f8 $63
	db $fd                                           ; $66b1: $fd
	ld c, a                                          ; $66b2: $4f
	pop af                                           ; $66b3: $f1
	ld c, l                                          ; $66b4: $4d
	di                                               ; $66b5: $f3
	ret                                              ; $66b6: $c9


	rst FarCall                                          ; $66b7: $f7
	pop bc                                           ; $66b8: $c1
	rst $38                                          ; $66b9: $ff
	and c                                            ; $66ba: $a1
	rst $18                                          ; $66bb: $df
	and c                                            ; $66bc: $a1
	rst $18                                          ; $66bd: $df
	ld [hl], e                                       ; $66be: $73
	adc l                                            ; $66bf: $8d
	ld [hl], a                                       ; $66c0: $77
	sbc h                                            ; $66c1: $9c
	adc c                                            ; $66c2: $89
	ld a, a                                          ; $66c3: $7f
	add c                                            ; $66c4: $81
	pop af                                           ; $66c5: $f1
	rst $18                                          ; $66c6: $df

jr_071_66c7:
	rlca                                             ; $66c7: $07
	add c                                            ; $66c8: $81
	jr jr_071_66ea                                   ; $66c9: $18 $1f

	ld a, h                                          ; $66cb: $7c
	ld h, e                                          ; $66cc: $63
	db $fd                                           ; $66cd: $fd
	rst $38                                          ; $66ce: $ff
	ld [hl], e                                       ; $66cf: $73
	adc a                                            ; $66d0: $8f
	add $ff                                          ; $66d1: $c6 $ff
	or $3f                                           ; $66d3: $f6 $3f
	xor c                                            ; $66d5: $a9
	rst $18                                          ; $66d6: $df
	ld d, h                                          ; $66d7: $54
	ld a, c                                          ; $66d8: $79
	ldh a, [c]                                       ; $66d9: $f2
	inc a                                            ; $66da: $3c
	call c, Call_071_7dee                            ; $66db: $dc $ee $7d
	ld h, $a3                                        ; $66de: $26 $a3
	halt                                             ; $66e0: $76
	halt                                             ; $66e1: $76
	db $d3                                           ; $66e2: $d3
	jp c, $d193                                      ; $66e3: $da $93 $d1

	sbc e                                            ; $66e6: $9b
	ldh [$bf], a                                     ; $66e7: $e0 $bf
	rst $18                                          ; $66e9: $df

jr_071_66ea:
	inc bc                                           ; $66ea: $03
	add b                                            ; $66eb: $80
	inc c                                            ; $66ec: $0c
	rrca                                             ; $66ed: $0f
	jr jr_071_670f                                   ; $66ee: $18 $1f

	db $10                                           ; $66f0: $10
	rra                                              ; $66f1: $1f
	ld h, c                                          ; $66f2: $61
	ld a, a                                          ; $66f3: $7f
	and a                                            ; $66f4: $a7
	ld sp, hl                                        ; $66f5: $f9
	cpl                                              ; $66f6: $2f
	di                                               ; $66f7: $f3
	ld b, d                                          ; $66f8: $42
	ldh [c], a                                       ; $66f9: $e2
	ld b, d                                          ; $66fa: $42
	add $46                                          ; $66fb: $c6 $46
	add $86                                          ; $66fd: $c6 $86
	add h                                            ; $66ff: $84
	add [hl]                                         ; $6700: $86
	sub h                                            ; $6701: $94
	add [hl]                                         ; $6702: $86
	db $f4                                           ; $6703: $f4
	rlca                                             ; $6704: $07
	db $fc                                           ; $6705: $fc
	rlca                                             ; $6706: $07
	db $fd                                           ; $6707: $fd
	rlca                                             ; $6708: $07
	rst $38                                          ; $6709: $ff
	ld b, $92                                        ; $670a: $06 $92
	rst $38                                          ; $670c: $ff
	inc c                                            ; $670d: $0c
	db $fd                                           ; $670e: $fd

jr_071_670f:
	jr @+$3a                                         ; $670f: $18 $38

	jr nc, jr_071_674b                               ; $6711: $30 $38

	ld h, b                                          ; $6713: $60
	db $fc                                           ; $6714: $fc
	ret nz                                           ; $6715: $c0

	ldh a, [c]                                       ; $6716: $f2
	add b                                            ; $6717: $80
	db $e3                                           ; $6718: $e3
	di                                               ; $6719: $f3
	rst $18                                          ; $671a: $df
	rra                                              ; $671b: $1f
	add b                                            ; $671c: $80
	ldh [rIE], a                                     ; $671d: $e0 $ff
	ld c, a                                          ; $671f: $4f
	ldh a, [$be]                                     ; $6720: $f0 $be
	rst $38                                          ; $6722: $ff
	ret nc                                           ; $6723: $d0

	ldh [$7f], a                                     ; $6724: $e0 $7f
	add b                                            ; $6726: $80
	adc [hl]                                         ; $6727: $8e
	ld a, a                                          ; $6728: $7f
	ld a, l                                          ; $6729: $7d
	di                                               ; $672a: $f3
	xor $99                                          ; $672b: $ee $99
	ld sp, hl                                        ; $672d: $f9
	call z, Call_071_64ce                            ; $672e: $cc $ce $64
	add h                                            ; $6731: $84
	ld h, [hl]                                       ; $6732: $66
	ld d, l                                          ; $6733: $55
	ld [hl+], a                                      ; $6734: $22
	ld b, b                                          ; $6735: $40
	inc sp                                           ; $6736: $33
	ld a, [hl+]                                      ; $6737: $2a
	ld de, $11a8                                     ; $6738: $11 $a8 $11
	dec b                                            ; $673b: $05
	sbc [hl]                                         ; $673c: $9e
	sbc b                                            ; $673d: $98
	ldh [$c1], a                                     ; $673e: $e0 $c1
	sbc b                                            ; $6740: $98
	rst SubAFromBC                                          ; $6741: $e7

Jump_071_6742:
	ld hl, sp-$02                                    ; $6742: $f8 $fe
	ret nz                                           ; $6744: $c0

	ld e, h                                          ; $6745: $5c
	ret nz                                           ; $6746: $c0

	ld b, b                                          ; $6747: $40
	call c, $8bc0                                    ; $6748: $dc $c0 $8b

jr_071_674b:
	add c                                            ; $674b: $81
	add b                                            ; $674c: $80
	inc bc                                           ; $674d: $03
	nop                                              ; $674e: $00
	rlca                                             ; $674f: $07
	ld bc, $030f                                     ; $6750: $01 $0f $03
	ld e, $07                                        ; $6753: $1e $07
	jr c, @+$10                                      ; $6755: $38 $0e

	ld [hl], b                                       ; $6757: $70
	ld e, $e0                                        ; $6758: $1e $e0
	ld a, a                                          ; $675a: $7f
	ret nz                                           ; $675b: $c0

	rst $38                                          ; $675c: $ff
	add b                                            ; $675d: $80
	rst $38                                          ; $675e: $ff
	cp a                                             ; $675f: $bf
	rst $38                                          ; $6760: $ff
	rst GetHLinHL                                          ; $6761: $cf
	sub e                                            ; $6762: $93
	ld bc, $0207                                     ; $6763: $01 $07 $02
	rrca                                             ; $6766: $0f
	inc b                                            ; $6767: $04
	rra                                              ; $6768: $1f
	ld [$10ff], sp                                   ; $6769: $08 $ff $10
	ccf                                              ; $676c: $3f
	jr nz, jr_071_67ae                               ; $676d: $20 $3f

	di                                               ; $676f: $f3
	rst $18                                          ; $6770: $df
	ldh a, [$80]                                     ; $6771: $f0 $80
	rrca                                             ; $6773: $0f
	rst $38                                          ; $6774: $ff
	add hl, bc                                       ; $6775: $09
	rlca                                             ; $6776: $07
	ld [hl-], a                                      ; $6777: $32
	pop bc                                           ; $6778: $c1
	call nz, $1938                                   ; $6779: $c4 $38 $19
	ld b, $66                                        ; $677c: $06 $66
	add c                                            ; $677e: $81
	add hl, bc                                       ; $677f: $09
	ldh a, [$e6]                                     ; $6780: $f0 $e6
	ld hl, sp-$6d                                    ; $6782: $f8 $93
	db $fc                                           ; $6784: $fc
	ld a, b                                          ; $6785: $78
	rst GetHLinHL                                          ; $6786: $cf
	call nz, $0c6f                                   ; $6787: $c4 $6f $0c
	ld h, a                                          ; $678a: $67
	ld d, e                                          ; $678b: $53
	ld h, $86                                        ; $678c: $26 $86
	inc sp                                           ; $678e: $33
	add hl, hl                                       ; $678f: $29
	sub e                                            ; $6790: $93
	ld b, e                                          ; $6791: $43
	sbc [hl]                                         ; $6792: $9e
	sbc c                                            ; $6793: $99
	ldh [$c1], a                                     ; $6794: $e0 $c1
	sub e                                            ; $6796: $93
	ccf                                              ; $6797: $3f
	ld bc, $033f                                     ; $6798: $01 $3f $03
	ld a, [hl]                                       ; $679b: $7e
	rlca                                             ; $679c: $07
	ld a, h                                          ; $679d: $7c

jr_071_679e:
	dec c                                            ; $679e: $0d
	ld hl, sp+$1b                                    ; $679f: $f8 $1b
	ldh a, [$3f]                                     ; $67a1: $f0 $3f
	ld a, e                                          ; $67a3: $7b
	ld l, [hl]                                       ; $67a4: $6e
	sbc b                                            ; $67a5: $98
	rst SubAFromBC                                          ; $67a6: $e7
	add b                                            ; $67a7: $80
	rst SubAFromBC                                          ; $67a8: $e7
	ld bc, $02ff                                     ; $67a9: $01 $ff $02
	adc a                                            ; $67ac: $8f
	ld a, c                                          ; $67ad: $79

jr_071_67ae:
	adc h                                            ; $67ae: $8c
	sub [hl]                                         ; $67af: $96
	add hl, bc                                       ; $67b0: $09
	db $10                                           ; $67b1: $10
	sbc b                                            ; $67b2: $98
	jr nz, @-$11                                     ; $67b3: $20 $ed

	jr nz, jr_071_679e                               ; $67b5: $20 $e7

	ld b, b                                          ; $67b7: $40
	rst SubAFromBC                                          ; $67b8: $e7
	ld [hl], e                                       ; $67b9: $73
	ld e, h                                          ; $67ba: $5c
	ld a, a                                          ; $67bb: $7f
	ld l, b                                          ; $67bc: $68
	ld a, a                                          ; $67bd: $7f
	cp $7f                                           ; $67be: $fe $7f
	ld a, [$e79e]                                    ; $67c0: $fa $9e $e7
	or a                                             ; $67c3: $b7
	rst SubAFromBC                                          ; $67c4: $e7
	nop                                              ; $67c5: $00
	nop                                              ; $67c6: $00
	nop                                              ; $67c7: $00
	nop                                              ; $67c8: $00
	nop                                              ; $67c9: $00
	nop                                              ; $67ca: $00
	nop                                              ; $67cb: $00
	nop                                              ; $67cc: $00
	nop                                              ; $67cd: $00
	rst $18                                          ; $67ce: $df
	ret nz                                           ; $67cf: $c0

	add b                                            ; $67d0: $80
	ld [hl], b                                       ; $67d1: $70
	ldh a, [$98]                                     ; $67d2: $f0 $98
	ld a, b                                          ; $67d4: $78
	db $ec                                           ; $67d5: $ec
	inc e                                            ; $67d6: $1c
	halt                                             ; $67d7: $76
	adc [hl]                                         ; $67d8: $8e
	sbc e                                            ; $67d9: $9b
	ld h, a                                          ; $67da: $67
	push bc                                          ; $67db: $c5
	dec sp                                           ; $67dc: $3b
	cp b                                             ; $67dd: $b8
	rra                                              ; $67de: $1f
	or $0f                                           ; $67df: $f6 $0f
	dec a                                            ; $67e1: $3d
	jp $f1ce                                         ; $67e2: $c3 $ce $f1


	or e                                             ; $67e5: $b3
	ld a, h                                          ; $67e6: $7c
	db $ec                                           ; $67e7: $ec
	rra                                              ; $67e8: $1f
	ld a, e                                          ; $67e9: $7b
	add a                                            ; $67ea: $87
	ld e, $e1                                        ; $67eb: $1e $e1
	rst JumpTable                                          ; $67ed: $c7
	ld hl, sp-$47                                    ; $67ee: $f8 $b9
	add b                                            ; $67f0: $80
	cp $86                                           ; $67f1: $fe $86
	rst $38                                          ; $67f3: $ff
	ld [hl], c                                       ; $67f4: $71
	rst GetHLinHL                                          ; $67f5: $cf
	ld e, h                                          ; $67f6: $5c
	db $e3                                           ; $67f7: $e3
	cpl                                              ; $67f8: $2f
	ldh a, [$33]                                     ; $67f9: $f0 $33

jr_071_67fb:
	db $fc                                           ; $67fb: $fc
	sbc h                                            ; $67fc: $9c
	rst $38                                          ; $67fd: $ff
	ld d, e                                          ; $67fe: $53
	rst $38                                          ; $67ff: $ff
	xor e                                            ; $6800: $ab
	db $fc                                           ; $6801: $fc
	call c, $81ff                                    ; $6802: $dc $ff $81
	rst $38                                          ; $6805: $ff
	rst $38                                          ; $6806: $ff
	cp $90                                           ; $6807: $fe $90
	rst $38                                          ; $6809: $ff
	jr c, jr_071_67fb                                ; $680a: $38 $ef

	ld a, c                                          ; $680c: $79
	rst GetHLinHL                                          ; $680d: $cf
	ld e, [hl]                                       ; $680e: $5e
	rst AddAOntoHL                                          ; $680f: $ef
	add b                                            ; $6810: $80
	ld e, b                                          ; $6811: $58
	rst AddAOntoHL                                          ; $6812: $ef
	ld [hl], c                                       ; $6813: $71
	rst $18                                          ; $6814: $df
	ld [hl], e                                       ; $6815: $73
	rst $18                                          ; $6816: $df
	ld l, a                                          ; $6817: $6f
	rst $38                                          ; $6818: $ff
	ld d, d                                          ; $6819: $52
	cp $66                                           ; $681a: $fe $66
	ld a, [$b4ac]                                    ; $681c: $fa $ac $b4
	inc a                                            ; $681f: $3c
	inc h                                            ; $6820: $24
	inc a                                            ; $6821: $3c
	inc h                                            ; $6822: $24
	inc e                                            ; $6823: $1c
	inc d                                            ; $6824: $14
	ld e, $12                                        ; $6825: $1e $12
	ld c, $0a                                        ; $6827: $0e $0a
	rlca                                             ; $6829: $07
	dec b                                            ; $682a: $05
	inc bc                                           ; $682b: $03
	inc bc                                           ; $682c: $03
	add b                                            ; $682d: $80
	add b                                            ; $682e: $80
	ld h, b                                          ; $682f: $60
	adc [hl]                                         ; $6830: $8e
	ldh [$30], a                                     ; $6831: $e0 $30
	ldh a, [rAUD2LOW]                                ; $6833: $f0 $18
	ld hl, sp+$1c                                    ; $6835: $f8 $1c
	db $ec                                           ; $6837: $ec
	sbc $2e                                          ; $6838: $de $2e
	ei                                               ; $683a: $fb
	rra                                              ; $683b: $1f
	ld [hl], b                                       ; $683c: $70
	cp a                                             ; $683d: $bf
	ldh [$5f], a                                     ; $683e: $e0 $5f
	add b                                            ; $6840: $80
	ei                                               ; $6841: $fb
	or e                                             ; $6842: $b3
	pop af                                           ; $6843: $f1
	db $e3                                           ; $6844: $e3
	ld sp, hl                                        ; $6845: $f9
	rst $38                                          ; $6846: $ff
	rst $38                                          ; $6847: $ff
	rst $38                                          ; $6848: $ff
	rst $38                                          ; $6849: $ff
	rst $38                                          ; $684a: $ff
	ld c, $84                                        ; $684b: $0e $84
	add h                                            ; $684d: $84
	ret nz                                           ; $684e: $c0

	ldh a, [$c1]                                     ; $684f: $f0 $c1
	sbc l                                            ; $6851: $9d
	ld bc, $e389                                     ; $6852: $01 $89 $e3
	db $dd                                           ; $6855: $dd
	add b                                            ; $6856: $80
	ld a, [hl]                                       ; $6857: $7e
	ld [hl], h                                       ; $6858: $74
	ld a, a                                          ; $6859: $7f
	cp $80                                           ; $685a: $fe $80
	and b                                            ; $685c: $a0
	ldh [$60], a                                     ; $685d: $e0 $60
	ldh [$a0], a                                     ; $685f: $e0 $a0
	ld h, b                                          ; $6861: $60
	db $10                                           ; $6862: $10
	ldh a, [$d0]                                     ; $6863: $f0 $d0
	ldh a, [$30]                                     ; $6865: $f0 $30
	ldh a, [hDisp1_SCY]                                     ; $6867: $f0 $90
	ld [hl], b                                       ; $6869: $70
	ld c, b                                          ; $686a: $48
	cp b                                             ; $686b: $b8
	adc b                                            ; $686c: $88
	ld hl, sp+$68                                    ; $686d: $f8 $68
	ld hl, sp+$1f                                    ; $686f: $f8 $1f
	rst $38                                          ; $6871: $ff
	call $0b3e                                       ; $6872: $cd $3e $0b
	rst $38                                          ; $6875: $ff
	ld a, [$c9fd]                                    ; $6876: $fa $fd $c9
	ld a, $1c                                        ; $6879: $3e $1c
	add b                                            ; $687b: $80
	rst $38                                          ; $687c: $ff
	di                                               ; $687d: $f3
	rst $38                                          ; $687e: $ff
	sbc l                                            ; $687f: $9d
	ld a, e                                          ; $6880: $7b
	ld a, [hl+]                                      ; $6881: $2a
	db $fd                                           ; $6882: $fd
	ld [hl], a                                       ; $6883: $77
	db $ec                                           ; $6884: $ec
	xor l                                            ; $6885: $ad
	or $6b                                           ; $6886: $f6 $6b
	or $a6                                           ; $6888: $f6 $a6
	ei                                               ; $688a: $fb
	ld d, l                                          ; $688b: $55
	cp e                                             ; $688c: $bb
	ld d, a                                          ; $688d: $57
	cp c                                             ; $688e: $b9
	inc sp                                           ; $688f: $33
	db $dd                                           ; $6890: $dd
	xor e                                            ; $6891: $ab
	db $dd                                           ; $6892: $dd
	cp e                                             ; $6893: $bb
	call z, $ee9d                                    ; $6894: $cc $9d $ee
	ld e, l                                          ; $6897: $5d
	ld l, [hl]                                       ; $6898: $6e
	ld e, l                                          ; $6899: $5d
	ld l, [hl]                                       ; $689a: $6e
	adc a                                            ; $689b: $8f
	ld e, d                                          ; $689c: $5a
	ld l, e                                          ; $689d: $6b
	ld c, d                                          ; $689e: $4a
	ld a, e                                          ; $689f: $7b
	ld d, d                                          ; $68a0: $52
	ld [hl], e                                       ; $68a1: $73
	ld d, d                                          ; $68a2: $52
	ld [hl], e                                       ; $68a3: $73
	pop hl                                           ; $68a4: $e1
	pop hl                                           ; $68a5: $e1
	ld h, c                                          ; $68a6: $61
	ld h, c                                          ; $68a7: $61
	ld b, c                                          ; $68a8: $41
	ld b, c                                          ; $68a9: $41
	ld b, b                                          ; $68aa: $40
	ld b, b                                          ; $68ab: $40
	ld h, a                                          ; $68ac: $67
	and h                                            ; $68ad: $a4
	rst $18                                          ; $68ae: $df
	ldh [$99], a                                     ; $68af: $e0 $99
	ld hl, sp+$78                                    ; $68b1: $f8 $78
	rrca                                             ; $68b3: $0f
	ccf                                              ; $68b4: $3f
	inc bc                                           ; $68b5: $03
	rst $38                                          ; $68b6: $ff
	cp h                                             ; $68b7: $bc
	di                                               ; $68b8: $f3
	pop hl                                           ; $68b9: $e1
	di                                               ; $68ba: $f3
	rst $38                                          ; $68bb: $ff
	rst $38                                          ; $68bc: $ff
	sub e                                            ; $68bd: $93
	db $10                                           ; $68be: $10
	rst $38                                          ; $68bf: $ff
	jr nz, @+$01                                     ; $68c0: $20 $ff

	jr nz, jr_071_6940                               ; $68c2: $20 $7c

	ld b, b                                          ; $68c4: $40
	ld a, h                                          ; $68c5: $7c
	ld b, b                                          ; $68c6: $40
	ld c, h                                          ; $68c7: $4c
	ld b, b                                          ; $68c8: $40
	adc $7a                                          ; $68c9: $ce $7a
	ld [de], a                                       ; $68cb: $12
	sbc h                                            ; $68cc: $9c
	cp [hl]                                          ; $68cd: $be
	add b                                            ; $68ce: $80
	ld hl, sp-$11                                    ; $68cf: $f8 $ef
	rst $18                                          ; $68d1: $df
	ld bc, $03df                                     ; $68d2: $01 $df $03
	rst $18                                          ; $68d5: $df
	ld c, $80                                        ; $68d6: $0e $80
	ld a, d                                          ; $68d8: $7a
	halt                                             ; $68d9: $76
	db $f4                                           ; $68da: $f4
	adc h                                            ; $68db: $8c
	ret c                                            ; $68dc: $d8

	jr c, @+$32                                      ; $68dd: $38 $30

	ldh a, [$c0]                                     ; $68df: $f0 $c0
	ret nz                                           ; $68e1: $c0

	ldh [$60], a                                     ; $68e2: $e0 $60
	ldh a, [$30]                                     ; $68e4: $f0 $30
	ld a, b                                          ; $68e6: $78
	sbc b                                            ; $68e7: $98
	cp b                                             ; $68e8: $b8
	ret z                                            ; $68e9: $c8

	call nc, $6aec                                   ; $68ea: $d4 $ec $6a
	or $da                                           ; $68ed: $f6 $da
	ld e, [hl]                                       ; $68ef: $5e
	xor l                                            ; $68f0: $ad
	ld l, a                                          ; $68f1: $6f
	rst SubAFromBC                                          ; $68f2: $e7
	daa                                              ; $68f3: $27
	ld d, e                                          ; $68f4: $53
	or e                                             ; $68f5: $b3
	or c                                             ; $68f6: $b1
	sub d                                            ; $68f7: $92
	pop de                                           ; $68f8: $d1
	ld l, b                                          ; $68f9: $68
	ld e, b                                          ; $68fa: $58
	ld c, b                                          ; $68fb: $48
	ld a, b                                          ; $68fc: $78
	xor b                                            ; $68fd: $a8
	cp b                                             ; $68fe: $b8
	and h                                            ; $68ff: $a4
	cp h                                             ; $6900: $bc
	sub h                                            ; $6901: $94
	sbc h                                            ; $6902: $9c
	sub h                                            ; $6903: $94
	sbc h                                            ; $6904: $9c
	db $dd                                           ; $6905: $dd
	adc h                                            ; $6906: $8c
	db $dd                                           ; $6907: $dd
	add h                                            ; $6908: $84
	rst $18                                          ; $6909: $df
	inc b                                            ; $690a: $04
	cpl                                              ; $690b: $2f
	inc e                                            ; $690c: $1c
	rst $18                                          ; $690d: $df
	ldh [rPCM12], a                                  ; $690e: $e0 $76
	call z, $0889                                    ; $6910: $cc $89 $08
	ld hl, sp+$0c                                    ; $6913: $f8 $0c
	db $fc                                           ; $6915: $fc
	inc b                                            ; $6916: $04
	db $fc                                           ; $6917: $fc
	inc c                                            ; $6918: $0c
	db $f4                                           ; $6919: $f4
	sbc h                                            ; $691a: $9c
	ld h, h                                          ; $691b: $64
	call c, $de24                                    ; $691c: $dc $24 $de
	ld h, $fa                                        ; $691f: $26 $fa
	ld b, $fe                                        ; $6921: $06 $fe

jr_071_6923:
	ld [bc], a                                       ; $6923: $02
	cp $02                                           ; $6924: $fe $02
	jp z, $2636                                      ; $6926: $ca $36 $26

	nop                                              ; $6929: $00
	adc l                                            ; $692a: $8d
	adc b                                            ; $692b: $88
	call z, $aa88                                    ; $692c: $cc $88 $aa
	adc b                                            ; $692f: $88
	call z, $8899                                    ; $6930: $cc $99 $88
	xor d                                            ; $6933: $aa
	call z, $9908                                    ; $6934: $cc $08 $99
	xor d                                            ; $6937: $aa
	inc sp                                           ; $6938: $33
	add b                                            ; $6939: $80
	ld [$8099], sp                                   ; $693a: $08 $99 $80
	ld [hl], a                                       ; $693d: $77
	ei                                               ; $693e: $fb
	sub a                                            ; $693f: $97

jr_071_6940:
	or e                                             ; $6940: $b3
	inc sp                                           ; $6941: $33
	adc b                                            ; $6942: $88
	nop                                              ; $6943: $00
	adc b                                            ; $6944: $88
	cp e                                             ; $6945: $bb
	inc sp                                           ; $6946: $33
	adc b                                            ; $6947: $88
	ld a, e                                          ; $6948: $7b
	ld a, [$fb7b]                                    ; $6949: $fa $7b $fb
	ld a, a                                          ; $694c: $7f
	db $e3                                           ; $694d: $e3
	pop de                                           ; $694e: $d1
	ld bc, $ed80                                     ; $694f: $01 $80 $ed
	ld e, e                                          ; $6952: $5b
	ld l, l                                          ; $6953: $6d
	db $db                                           ; $6954: $db
	ld l, e                                          ; $6955: $6b
	sbc $d3                                          ; $6956: $de $d3
	cp [hl]                                          ; $6958: $be
	rst SubAFromHL                                          ; $6959: $d7
	cp h                                             ; $695a: $bc
	rst SubAFromBC                                          ; $695b: $e7
	cp h                                             ; $695c: $bc
	ld l, $f9                                        ; $695d: $2e $f9
	ld e, l                                          ; $695f: $5d
	di                                               ; $6960: $f3
	rst $18                                          ; $6961: $df
	di                                               ; $6962: $f3
	ld a, l                                          ; $6963: $7d
	and $73                                          ; $6964: $e6 $73
	ld h, b                                          ; $6966: $60
	or c                                             ; $6967: $b1
	ldh [rSVBK], a                                   ; $6968: $e0 $70
	ld sp, $3373                                     ; $696a: $31 $73 $33
	rst FarCall                                          ; $696d: $f7
	ld d, a                                          ; $696e: $57
	push af                                          ; $696f: $f5
	add [hl]                                         ; $6970: $86
	sub c                                            ; $6971: $91
	xor c                                            ; $6972: $a9
	add hl, de                                       ; $6973: $19
	ld e, c                                          ; $6974: $59
	add hl, sp                                       ; $6975: $39
	cp h                                             ; $6976: $bc
	ld l, b                                          ; $6977: $68
	ld h, l                                          ; $6978: $65
	call z, $cc55                                    ; $6979: $cc $55 $cc
	sbc $8c                                          ; $697c: $de $8c
	xor d                                            ; $697e: $aa
	sbc [hl]                                         ; $697f: $9e
	cp e                                             ; $6980: $bb
	sbc [hl]                                         ; $6981: $9e
	rst $18                                          ; $6982: $df
	cp e                                             ; $6983: $bb
	rst AddAOntoHL                                          ; $6984: $ef
	xor e                                            ; $6985: $ab
	xor $aa                                          ; $6986: $ee $aa
	ld [$ddae], a                                    ; $6988: $ea $ae $dd
	ld h, h                                          ; $698b: $64
	rst $18                                          ; $698c: $df
	inc h                                            ; $698d: $24
	rst $18                                          ; $698e: $df
	jr nz, jr_071_6923                               ; $698f: $20 $92

	db $dd                                           ; $6991: $dd
	add hl, bc                                       ; $6992: $09
	adc b                                            ; $6993: $88
	dec c                                            ; $6994: $0d
	adc [hl]                                         ; $6995: $8e
	inc b                                            ; $6996: $04
	dec b                                            ; $6997: $05
	ld b, $02                                        ; $6998: $06 $02
	inc bc                                           ; $699a: $03
	jp Jump_071_6101                                 ; $699b: $c3 $01 $61


	sbc $e0                                          ; $699e: $de $e0
	add d                                            ; $69a0: $82
	ld [hl], b                                       ; $69a1: $70
	add b                                            ; $69a2: $80
	ld hl, sp+$00                                    ; $69a3: $f8 $00
	ld hl, sp+$00                                    ; $69a5: $f8 $00
	db $fc                                           ; $69a7: $fc
	nop                                              ; $69a8: $00
	db $fc                                           ; $69a9: $fc
	ldh [$bc], a                                     ; $69aa: $e0 $bc
	or b                                             ; $69ac: $b0
	sbc b                                            ; $69ad: $98
	sub b                                            ; $69ae: $90
	ld [hl], b                                       ; $69af: $70
	ldh a, [rSVBK]                                   ; $69b0: $f0 $70
	ldh a, [rHDMA1]                                  ; $69b2: $f0 $51
	ld [hl], b                                       ; $69b4: $70
	and e                                            ; $69b5: $a3
	and b                                            ; $69b6: $a0
	rst SubAFromBC                                          ; $69b7: $e7
	ldh [c], a                                       ; $69b8: $e2
	ld h, h                                          ; $69b9: $64
	rlca                                             ; $69ba: $07
	sub l                                            ; $69bb: $95
	ld b, $03                                        ; $69bc: $06 $03
	cp $9e                                           ; $69be: $fe $9e
	rst $38                                          ; $69c0: $ff
	ld [hl], a                                       ; $69c1: $77
	cp $80                                           ; $69c2: $fe $80
	add b                                            ; $69c4: $80
	ld a, a                                          ; $69c5: $7f
	ld b, b                                          ; $69c6: $40
	ccf                                              ; $69c7: $3f
	jr nz, jr_071_69e9                               ; $69c8: $20 $1f

	jr @+$09                                         ; $69ca: $18 $07

	ld b, $03                                        ; $69cc: $06 $03
	inc bc                                           ; $69ce: $03
	ld e, h                                          ; $69cf: $5c
	adc b                                            ; $69d0: $88
	adc d                                            ; $69d1: $8a
	call z, $cca6                                    ; $69d2: $cc $a6 $cc
	db $dd                                           ; $69d5: $dd
	and $6a                                          ; $69d6: $e6 $6a
	rst FarCall                                          ; $69d8: $f7
	ld [hl], e                                       ; $69d9: $73
	rst $18                                          ; $69da: $df
	cp c                                             ; $69db: $b9
	rst AddAOntoHL                                          ; $69dc: $ef
	sbc $77                                          ; $69dd: $de $77
	ld a, e                                          ; $69df: $7b
	dec sp                                           ; $69e0: $3b
	rlca                                             ; $69e1: $07
	nop                                              ; $69e2: $00
	adc b                                            ; $69e3: $88
	rrca                                             ; $69e4: $0f
	nop                                              ; $69e5: $00
	rra                                              ; $69e6: $1f
	inc bc                                           ; $69e7: $03
	ccf                                              ; $69e8: $3f

jr_071_69e9:
	rlca                                             ; $69e9: $07
	ccf                                              ; $69ea: $3f
	rlca                                             ; $69eb: $07
	ld a, [de]                                       ; $69ec: $1a
	inc bc                                           ; $69ed: $03
	ld a, [bc]                                       ; $69ee: $0a
	inc bc                                           ; $69ef: $03
	ld [bc], a                                       ; $69f0: $02
	ld [bc], a                                       ; $69f1: $02
	ld bc, $8301                                     ; $69f2: $01 $01 $83
	ld bc, $00c5                                     ; $69f5: $01 $c5 $00
	rlc b                                            ; $69f8: $cb $00
	add b                                            ; $69fa: $80
	db $f4                                           ; $69fb: $f4
	add b                                            ; $69fc: $80
	ld bc, $0300                                     ; $69fd: $01 $00 $03
	nop                                              ; $6a00: $00
	rrca                                             ; $6a01: $0f
	inc bc                                           ; $6a02: $03
	cp l                                             ; $6a03: $bd
	sbc [hl]                                         ; $6a04: $9e
	ld [de], a                                       ; $6a05: $12
	call $cc27                                       ; $6a06: $cd $27 $cc
	call $dd66                                       ; $6a09: $cd $66 $dd
	ld h, [hl]                                       ; $6a0c: $66
	xor d                                            ; $6a0d: $aa
	ld [hl], a                                       ; $6a0e: $77
	ld [hl+], a                                      ; $6a0f: $22
	rst $38                                          ; $6a10: $ff
	sub e                                            ; $6a11: $93
	rst $38                                          ; $6a12: $ff
	reti                                             ; $6a13: $d9


	rst $38                                          ; $6a14: $ff
	ld l, l                                          ; $6a15: $6d
	rst $38                                          ; $6a16: $ff
	cp $df                                           ; $6a17: $fe $df
	rst $38                                          ; $6a19: $ff
	ld bc, $89ef                                     ; $6a1a: $01 $ef $89
	ldh a, [rPCM34]                                  ; $6a1d: $f0 $77
	ld a, b                                          ; $6a1f: $78
	ccf                                              ; $6a20: $3f
	inc a                                            ; $6a21: $3c
	rst AddAOntoHL                                          ; $6a22: $ef
	jp hl                                            ; $6a23: $e9


	rst SubAFromBC                                          ; $6a24: $e7
	pop hl                                           ; $6a25: $e1
	xor a                                            ; $6a26: $af
	pop hl                                           ; $6a27: $e1
	ld e, a                                          ; $6a28: $5f
	ld b, c                                          ; $6a29: $41
	rst $38                                          ; $6a2a: $ff
	pop bc                                           ; $6a2b: $c1
	and a                                            ; $6a2c: $a7
	ld bc, $015f                                     ; $6a2d: $01 $5f $01
	rra                                              ; $6a30: $1f
	ld bc, $7b3f                                     ; $6a31: $01 $3f $7b
	cp $8f                                           ; $6a34: $fe $8f
	ld a, a                                          ; $6a36: $7f
	inc bc                                           ; $6a37: $03
	ld a, a                                          ; $6a38: $7f
	rlca                                             ; $6a39: $07
	rst $38                                          ; $6a3a: $ff
	rrca                                             ; $6a3b: $0f
	rst $38                                          ; $6a3c: $ff
	dec de                                           ; $6a3d: $1b
	rst $38                                          ; $6a3e: $ff
	inc sp                                           ; $6a3f: $33
	rst $38                                          ; $6a40: $ff
	jp $83ff                                         ; $6a41: $c3 $ff $83


	cp a                                             ; $6a44: $bf
	inc bc                                           ; $6a45: $03
	daa                                              ; $6a46: $27
	nop                                              ; $6a47: $00
	sub a                                            ; $6a48: $97
	ld [hl], c                                       ; $6a49: $71
	jr nc, jr_071_6abc                               ; $6a4a: $30 $70

	ld sp, $53f1                                     ; $6a4c: $31 $f1 $53
	rst FarCall                                          ; $6a4f: $f7
	sub a                                            ; $6a50: $97
	inc bc                                           ; $6a51: $03
	nop                                              ; $6a52: $00
	daa                                              ; $6a53: $27
	nop                                              ; $6a54: $00
	sbc c                                            ; $6a55: $99
	nop                                              ; $6a56: $00
	call c, $a8e0                                    ; $6a57: $dc $e0 $a8
	or b                                             ; $6a5a: $b0
	ldh a, [$03]                                     ; $6a5b: $f0 $03
	nop                                              ; $6a5d: $00
	dec hl                                           ; $6a5e: $2b
	nop                                              ; $6a5f: $00
	sbc b                                            ; $6a60: $98
	nop                                              ; $6a61: $00
	dec a                                            ; $6a62: $3d
	inc bc                                           ; $6a63: $03
	dec sp                                           ; $6a64: $3b
	rlca                                             ; $6a65: $07
	rra                                              ; $6a66: $1f
	rlca                                             ; $6a67: $07
	inc bc                                           ; $6a68: $03
	nop                                              ; $6a69: $00
	dec hl                                           ; $6a6a: $2b
	nop                                              ; $6a6b: $00
	ld a, a                                          ; $6a6c: $7f
	sbc h                                            ; $6a6d: $9c
	sub a                                            ; $6a6e: $97
	rst $18                                          ; $6a6f: $df
	ldh [$37], a                                     ; $6a70: $e0 $37
	jr c, @+$01                                      ; $6a72: $38 $ff

	db $fd                                           ; $6a74: $fd
	rst AddAOntoHL                                          ; $6a75: $ef
	jp hl                                            ; $6a76: $e9


	inc bc                                           ; $6a77: $03
	nop                                              ; $6a78: $00
	inc hl                                           ; $6a79: $23
	nop                                              ; $6a7a: $00
	ld a, a                                          ; $6a7b: $7f

jr_071_6a7c:
	cp $99                                           ; $6a7c: $fe $99
	ldh a, [$50]                                     ; $6a7e: $f0 $50
	di                                               ; $6a80: $f3
	sub c                                            ; $6a81: $91
	xor e                                            ; $6a82: $ab
	dec de                                           ; $6a83: $1b
	inc bc                                           ; $6a84: $03
	nop                                              ; $6a85: $00
	dec hl                                           ; $6a86: $2b
	nop                                              ; $6a87: $00
	ld a, a                                          ; $6a88: $7f
	cp $7b                                           ; $6a89: $fe $7b
	or $7f                                           ; $6a8b: $f6 $7f
	ldh a, [$03]                                     ; $6a8d: $f0 $03
	nop                                              ; $6a8f: $00
	cpl                                              ; $6a90: $2f
	nop                                              ; $6a91: $00
	sbc [hl]                                         ; $6a92: $9e
	ccf                                              ; $6a93: $3f
	ld a, e                                          ; $6a94: $7b
	cp $7d                                           ; $6a95: $fe $7d
	ld a, [$0e9d]                                    ; $6a97: $fa $9d $0e
	rlca                                             ; $6a9a: $07
	inc bc                                           ; $6a9b: $03
	nop                                              ; $6a9c: $00
	dec hl                                           ; $6a9d: $2b
	nop                                              ; $6a9e: $00
	ld [hl], e                                       ; $6a9f: $73
	cp $9a                                           ; $6aa0: $fe $9a
	pop af                                           ; $6aa2: $f1
	rst $38                                          ; $6aa3: $ff
	db $fd                                           ; $6aa4: $fd
	xor a                                            ; $6aa5: $af
	jp hl                                            ; $6aa6: $e9


	inc bc                                           ; $6aa7: $03
	nop                                              ; $6aa8: $00
	ld e, e                                          ; $6aa9: $5b
	nop                                              ; $6aaa: $00
	sub a                                            ; $6aab: $97
	ld e, h                                          ; $6aac: $5c
	di                                               ; $6aad: $f3
	db $dd                                           ; $6aae: $dd
	di                                               ; $6aaf: $f3
	ld a, e                                          ; $6ab0: $7b
	rst SubAFromBC                                          ; $6ab1: $e7
	ld [hl], l                                       ; $6ab2: $75
	ld h, [hl]                                       ; $6ab3: $66
	ld h, a                                          ; $6ab4: $67
	nop                                              ; $6ab5: $00
	sub l                                            ; $6ab6: $95
	ldh a, [hDisp1_SCY]                                     ; $6ab7: $f0 $90
	xor b                                            ; $6ab9: $a8
	jr jr_071_6b15                                   ; $6aba: $18 $59

jr_071_6abc:
	jr c, jr_071_6a7c                                ; $6abc: $38 $be

	ld l, e                                          ; $6abe: $6b
	ld h, l                                          ; $6abf: $65
	call $0003                                       ; $6ac0: $cd $03 $00
	ld a, e                                          ; $6ac3: $7b
	nop                                              ; $6ac4: $00
	sbc b                                            ; $6ac5: $98
	pop hl                                           ; $6ac6: $e1
	nop                                              ; $6ac7: $00
	ld h, b                                          ; $6ac8: $60
	ldh [$f0], a                                     ; $6ac9: $e0 $f0
	ldh [$78], a                                     ; $6acb: $e0 $78
	ld a, d                                          ; $6acd: $7a
	cp $63                                           ; $6ace: $fe $63
	nop                                              ; $6ad0: $00
	sbc b                                            ; $6ad1: $98
	nop                                              ; $6ad2: $00
	ldh a, [rP1]                                     ; $6ad3: $f0 $00
	pop af                                           ; $6ad5: $f1
	nop                                              ; $6ad6: $00
	ld d, e                                          ; $6ad7: $53
	jr nc, jr_071_6add                               ; $6ad8: $30 $03

	nop                                              ; $6ada: $00
	cpl                                              ; $6adb: $2f
	nop                                              ; $6adc: $00

jr_071_6add:
	ld a, e                                          ; $6add: $7b
	or $7f                                           ; $6ade: $f6 $7f
	ldh a, [c]                                       ; $6ae0: $f2
	ld a, a                                          ; $6ae1: $7f
	and h                                            ; $6ae2: $a4
	sbc l                                            ; $6ae3: $9d
	add e                                            ; $6ae4: $83
	inc bc                                           ; $6ae5: $03

jr_071_6ae6:
	inc bc                                           ; $6ae6: $03
	nop                                              ; $6ae7: $00
	cpl                                              ; $6ae8: $2f
	nop                                              ; $6ae9: $00
	ld a, a                                          ; $6aea: $7f
	ld hl, sp+$7b                                    ; $6aeb: $f8 $7b
	cp $9b                                           ; $6aed: $fe $9b
	ld e, a                                          ; $6aef: $5f
	add hl, sp                                       ; $6af0: $39
	rst $38                                          ; $6af1: $ff
	pop af                                           ; $6af2: $f1
	rra                                              ; $6af3: $1f
	nop                                              ; $6af4: $00
	pop af                                           ; $6af5: $f1
	rst $18                                          ; $6af6: $df
	ld bc, $98e5                                     ; $6af7: $01 $e5 $98
	ld h, b                                          ; $6afa: $60
	jr nz, @-$3e                                     ; $6afb: $20 $c0

	ld b, b                                          ; $6afd: $40
	nop                                              ; $6afe: $00
	nop                                              ; $6aff: $00
	ret nz                                           ; $6b00: $c0

	and $0f                                          ; $6b01: $e6 $0f
	ret nz                                           ; $6b03: $c0

	sbc l                                            ; $6b04: $9d
	ld b, b                                          ; $6b05: $40
	jr nz, jr_071_6ae6                               ; $6b06: $20 $de

	ldh [$df], a                                     ; $6b08: $e0 $df
	ret nz                                           ; $6b0a: $c0

	inc de                                           ; $6b0b: $13
	ret nz                                           ; $6b0c: $c0

	rla                                              ; $6b0d: $17
	cp [hl]                                          ; $6b0e: $be
	sbc l                                            ; $6b0f: $9d
	jr nz, jr_071_6b12                               ; $6b10: $20 $00

jr_071_6b12:
	call c, $1be0                                    ; $6b12: $dc $e0 $1b

jr_071_6b15:
	cp [hl]                                          ; $6b15: $be
	db $db                                           ; $6b16: $db
	ld bc, $7ae7                                     ; $6b17: $01 $e7 $7a
	ld e, a                                          ; $6b1a: $5f
	rst $18                                          ; $6b1b: $df
	ldh a, [$5b]                                     ; $6b1c: $f0 $5b
	cp [hl]                                          ; $6b1e: $be
	rst SubAFromHL                                          ; $6b1f: $d7
	ld bc, $ed80                                     ; $6b20: $01 $80 $ed
	ld e, e                                          ; $6b23: $5b
	ld l, l                                          ; $6b24: $6d
	db $db                                           ; $6b25: $db
	ld l, e                                          ; $6b26: $6b
	sbc $d3                                          ; $6b27: $de $d3
	cp [hl]                                          ; $6b29: $be
	rst SubAFromHL                                          ; $6b2a: $d7
	cp h                                             ; $6b2b: $bc
	rst SubAFromBC                                          ; $6b2c: $e7
	cp l                                             ; $6b2d: $bd
	cpl                                              ; $6b2e: $2f
	ei                                               ; $6b2f: $fb
	ld e, [hl]                                       ; $6b30: $5e
	rst FarCall                                          ; $6b31: $f7
	rst $18                                          ; $6b32: $df
	db $f4                                           ; $6b33: $f4
	ld a, a                                          ; $6b34: $7f
	ldh [$73], a                                     ; $6b35: $e0 $73
	ld h, b                                          ; $6b37: $60
	or c                                             ; $6b38: $b1
	ldh [rSVBK], a                                   ; $6b39: $e0 $70
	ld sp, $3373                                     ; $6b3b: $31 $73 $33
	rst FarCall                                          ; $6b3e: $f7
	ld d, a                                          ; $6b3f: $57
	push af                                          ; $6b40: $f5
	add [hl]                                         ; $6b41: $86
	sub c                                            ; $6b42: $91
	xor c                                            ; $6b43: $a9
	add hl, de                                       ; $6b44: $19
	ld e, c                                          ; $6b45: $59
	add hl, sp                                       ; $6b46: $39
	cp h                                             ; $6b47: $bc
	ld l, b                                          ; $6b48: $68
	ld h, l                                          ; $6b49: $65
	call z, $cc54                                    ; $6b4a: $cc $54 $cc
	sbc $8c                                          ; $6b4d: $de $8c
	xor d                                            ; $6b4f: $aa
	sbc [hl]                                         ; $6b50: $9e
	cp e                                             ; $6b51: $bb
	sbc [hl]                                         ; $6b52: $9e
	rst $18                                          ; $6b53: $df
	cp e                                             ; $6b54: $bb
	rst AddAOntoHL                                          ; $6b55: $ef
	xor e                                            ; $6b56: $ab
	xor $aa                                          ; $6b57: $ee $aa
	ld [$ddae], a                                    ; $6b59: $ea $ae $dd
	ld h, h                                          ; $6b5c: $64
	rst $18                                          ; $6b5d: $df
	inc h                                            ; $6b5e: $24
	rst $18                                          ; $6b5f: $df
	jr nz, @-$72                                     ; $6b60: $20 $8c

	db $dd                                           ; $6b62: $dd
	add hl, bc                                       ; $6b63: $09
	adc b                                            ; $6b64: $88
	dec c                                            ; $6b65: $0d
	adc [hl]                                         ; $6b66: $8e
	inc b                                            ; $6b67: $04
	dec b                                            ; $6b68: $05
	ld b, $02                                        ; $6b69: $06 $02
	inc bc                                           ; $6b6b: $03
	jp $a1c1                                         ; $6b6c: $c3 $c1 $a1


	ret nz                                           ; $6b6f: $c0

	ldh [rP1], a                                     ; $6b70: $e0 $00
	ldh a, [rP1]                                     ; $6b72: $f0 $00
	ld hl, sp+$7b                                    ; $6b74: $f8 $7b
	cp $88                                           ; $6b76: $fe $88
	db $fc                                           ; $6b78: $fc
	nop                                              ; $6b79: $00
	db $fc                                           ; $6b7a: $fc
	ldh [$9c], a                                     ; $6b7b: $e0 $9c
	sub b                                            ; $6b7d: $90
	sbc b                                            ; $6b7e: $98
	sub b                                            ; $6b7f: $90
	ld [hl], b                                       ; $6b80: $70
	ldh a, [rSVBK]                                   ; $6b81: $f0 $70
	ldh a, [rHDMA1]                                  ; $6b83: $f0 $51
	ld [hl], b                                       ; $6b85: $70
	and e                                            ; $6b86: $a3
	and b                                            ; $6b87: $a0
	rst SubAFromBC                                          ; $6b88: $e7
	ldh [c], a                                       ; $6b89: $e2
	inc b                                            ; $6b8a: $04
	rlca                                             ; $6b8b: $07
	dec b                                            ; $6b8c: $05
	ld b, $03                                        ; $6b8d: $06 $03
	cp $9e                                           ; $6b8f: $fe $9e
	rst $38                                          ; $6b91: $ff
	ld [hl], a                                       ; $6b92: $77
	cp $80                                           ; $6b93: $fe $80
	add b                                            ; $6b95: $80
	ld a, a                                          ; $6b96: $7f
	ld b, b                                          ; $6b97: $40
	ccf                                              ; $6b98: $3f
	jr nz, jr_071_6bba                               ; $6b99: $20 $1f

	jr @+$09                                         ; $6b9b: $18 $07

	ld b, $03                                        ; $6b9d: $06 $03
	inc bc                                           ; $6b9f: $03
	ld e, h                                          ; $6ba0: $5c
	adc b                                            ; $6ba1: $88
	adc d                                            ; $6ba2: $8a
	call z, $cca6                                    ; $6ba3: $cc $a6 $cc
	db $dd                                           ; $6ba6: $dd
	and $6a                                          ; $6ba7: $e6 $6a
	rst FarCall                                          ; $6ba9: $f7
	ld [hl], e                                       ; $6baa: $73
	rst $18                                          ; $6bab: $df
	cp c                                             ; $6bac: $b9
	rst AddAOntoHL                                          ; $6bad: $ef
	sbc $77                                          ; $6bae: $de $77
	ld a, e                                          ; $6bb0: $7b
	dec sp                                           ; $6bb1: $3b
	rlca                                             ; $6bb2: $07
	nop                                              ; $6bb3: $00
	adc b                                            ; $6bb4: $88
	rrca                                             ; $6bb5: $0f
	nop                                              ; $6bb6: $00
	rra                                              ; $6bb7: $1f
	inc bc                                           ; $6bb8: $03
	ccf                                              ; $6bb9: $3f

jr_071_6bba:
	rlca                                             ; $6bba: $07
	ccf                                              ; $6bbb: $3f
	rlca                                             ; $6bbc: $07
	ld a, [de]                                       ; $6bbd: $1a
	inc bc                                           ; $6bbe: $03
	ld a, [bc]                                       ; $6bbf: $0a

Call_071_6bc0:
	inc bc                                           ; $6bc0: $03
	ld [bc], a                                       ; $6bc1: $02
	ld [bc], a                                       ; $6bc2: $02
	ld bc, $8301                                     ; $6bc3: $01 $01 $83
	ld bc, $00c0                                     ; $6bc6: $01 $c0 $00
	ret nz                                           ; $6bc9: $c0

	nop                                              ; $6bca: $00
	add b                                            ; $6bcb: $80
	db $f4                                           ; $6bcc: $f4
	add b                                            ; $6bcd: $80
	ld bc, $0300                                     ; $6bce: $01 $00 $03
	nop                                              ; $6bd1: $00
	rrca                                             ; $6bd2: $0f
	inc bc                                           ; $6bd3: $03
	cp l                                             ; $6bd4: $bd
	sbc [hl]                                         ; $6bd5: $9e
	ld [de], a                                       ; $6bd6: $12
	call $cc27                                       ; $6bd7: $cd $27 $cc
	call $dd66                                       ; $6bda: $cd $66 $dd
	ld h, [hl]                                       ; $6bdd: $66
	xor d                                            ; $6bde: $aa
	ld [hl], a                                       ; $6bdf: $77
	ld [hl+], a                                      ; $6be0: $22
	rst $38                                          ; $6be1: $ff
	sub e                                            ; $6be2: $93
	rst $38                                          ; $6be3: $ff
	reti                                             ; $6be4: $d9


	rst $38                                          ; $6be5: $ff
	ld l, l                                          ; $6be6: $6d
	rst $38                                          ; $6be7: $ff
	cp $df                                           ; $6be8: $fe $df
	rst $38                                          ; $6bea: $ff
	ld bc, $89ef                                     ; $6beb: $01 $ef $89
	ldh a, [$37]                                     ; $6bee: $f0 $37
	jr c, jr_071_6c31                                ; $6bf0: $38 $3f

	inc a                                            ; $6bf2: $3c
	rst AddAOntoHL                                          ; $6bf3: $ef
	jp hl                                            ; $6bf4: $e9


	rst SubAFromBC                                          ; $6bf5: $e7
	pop hl                                           ; $6bf6: $e1
	xor a                                            ; $6bf7: $af
	pop hl                                           ; $6bf8: $e1
	ld e, a                                          ; $6bf9: $5f
	ld b, c                                          ; $6bfa: $41
	rst $38                                          ; $6bfb: $ff
	pop bc                                           ; $6bfc: $c1
	rlca                                             ; $6bfd: $07
	ld bc, $010f                                     ; $6bfe: $01 $0f $01
	rra                                              ; $6c01: $1f
	ld bc, $7b3f                                     ; $6c02: $01 $3f $7b
	cp $8f                                           ; $6c05: $fe $8f
	ld a, a                                          ; $6c07: $7f
	inc bc                                           ; $6c08: $03
	ld a, a                                          ; $6c09: $7f
	rlca                                             ; $6c0a: $07
	rst $38                                          ; $6c0b: $ff
	rrca                                             ; $6c0c: $0f
	rst $38                                          ; $6c0d: $ff
	dec de                                           ; $6c0e: $1b
	rst $38                                          ; $6c0f: $ff
	inc sp                                           ; $6c10: $33
	rst $38                                          ; $6c11: $ff
	jp $83ff                                         ; $6c12: $c3 $ff $83


	cp a                                             ; $6c15: $bf
	inc bc                                           ; $6c16: $03
	daa                                              ; $6c17: $27
	nop                                              ; $6c18: $00
	sub a                                            ; $6c19: $97
	ld [hl], c                                       ; $6c1a: $71
	jr nc, @+$72                                     ; $6c1b: $30 $70

	ld sp, $53f1                                     ; $6c1d: $31 $f1 $53
	rst FarCall                                          ; $6c20: $f7
	sub a                                            ; $6c21: $97
	inc bc                                           ; $6c22: $03
	nop                                              ; $6c23: $00
	daa                                              ; $6c24: $27
	nop                                              ; $6c25: $00
	sbc c                                            ; $6c26: $99
	nop                                              ; $6c27: $00
	call c, $a8e0                                    ; $6c28: $dc $e0 $a8
	or b                                             ; $6c2b: $b0
	ldh a, [$03]                                     ; $6c2c: $f0 $03
	nop                                              ; $6c2e: $00
	dec hl                                           ; $6c2f: $2b
	nop                                              ; $6c30: $00

jr_071_6c31:
	sbc b                                            ; $6c31: $98
	nop                                              ; $6c32: $00
	dec a                                            ; $6c33: $3d
	inc bc                                           ; $6c34: $03
	dec sp                                           ; $6c35: $3b
	rlca                                             ; $6c36: $07
	rra                                              ; $6c37: $1f
	rlca                                             ; $6c38: $07
	inc bc                                           ; $6c39: $03
	nop                                              ; $6c3a: $00
	dec hl                                           ; $6c3b: $2b
	nop                                              ; $6c3c: $00
	ld a, a                                          ; $6c3d: $7f
	sbc h                                            ; $6c3e: $9c
	sub a                                            ; $6c3f: $97
	rst $18                                          ; $6c40: $df
	ldh [$37], a                                     ; $6c41: $e0 $37
	jr c, @+$01                                      ; $6c43: $38 $ff

	db $fd                                           ; $6c45: $fd
	rst AddAOntoHL                                          ; $6c46: $ef
	jp hl                                            ; $6c47: $e9


	inc bc                                           ; $6c48: $03
	nop                                              ; $6c49: $00
	inc hl                                           ; $6c4a: $23
	nop                                              ; $6c4b: $00
	ld a, a                                          ; $6c4c: $7f
	cp $99                                           ; $6c4d: $fe $99
	ldh a, [$50]                                     ; $6c4f: $f0 $50
	di                                               ; $6c51: $f3
	sub c                                            ; $6c52: $91
	xor e                                            ; $6c53: $ab
	dec de                                           ; $6c54: $1b
	inc bc                                           ; $6c55: $03
	nop                                              ; $6c56: $00
	dec hl                                           ; $6c57: $2b
	nop                                              ; $6c58: $00
	ld a, a                                          ; $6c59: $7f
	cp $7b                                           ; $6c5a: $fe $7b
	or $7d                                           ; $6c5c: $f6 $7d
	cp b                                             ; $6c5e: $b8
	inc bc                                           ; $6c5f: $03
	nop                                              ; $6c60: $00
	cpl                                              ; $6c61: $2f
	nop                                              ; $6c62: $00
	sbc [hl]                                         ; $6c63: $9e
	ccf                                              ; $6c64: $3f
	ld a, e                                          ; $6c65: $7b
	cp $7d                                           ; $6c66: $fe $7d
	ld a, [$0e9d]                                    ; $6c68: $fa $9d $0e
	rlca                                             ; $6c6b: $07
	inc bc                                           ; $6c6c: $03
	nop                                              ; $6c6d: $00
	dec hl                                           ; $6c6e: $2b
	nop                                              ; $6c6f: $00
	ld [hl], e                                       ; $6c70: $73
	cp $9a                                           ; $6c71: $fe $9a
	pop af                                           ; $6c73: $f1
	rst $38                                          ; $6c74: $ff
	db $fd                                           ; $6c75: $fd
	xor a                                            ; $6c76: $af
	jp hl                                            ; $6c77: $e9


	inc bc                                           ; $6c78: $03
	nop                                              ; $6c79: $00
	ld h, a                                          ; $6c7a: $67
	nop                                              ; $6c7b: $00
	sub [hl]                                         ; $6c7c: $96
	cp h                                             ; $6c7d: $bc
	ld l, $f9                                        ; $6c7e: $2e $f9
	ld e, a                                          ; $6c80: $5f
	di                                               ; $6c81: $f3
	sbc $f7                                          ; $6c82: $de $f7
	ld a, a                                          ; $6c84: $7f
	db $e4                                           ; $6c85: $e4
	ld e, a                                          ; $6c86: $5f
	nop                                              ; $6c87: $00
	sub l                                            ; $6c88: $95
	ldh a, [hDisp1_SCY]                                     ; $6c89: $f0 $90
	xor b                                            ; $6c8b: $a8
	jr jr_071_6ce7                                   ; $6c8c: $18 $59

	jr c, @-$40                                      ; $6c8e: $38 $be

	ld l, e                                          ; $6c90: $6b
	ld h, l                                          ; $6c91: $65
	call $0003                                       ; $6c92: $cd $03 $00
	ld a, a                                          ; $6c95: $7f
	nop                                              ; $6c96: $00
	sbc d                                            ; $6c97: $9a
	ld bc, $e0e1                                     ; $6c98: $01 $e1 $e0
	ret nz                                           ; $6c9b: $c0

	ldh [rWX], a                                     ; $6c9c: $e0 $4b
	nop                                              ; $6c9e: $00
	ld a, d                                          ; $6c9f: $7a
	ldh a, [$9b]                                     ; $6ca0: $f0 $9b
	pop af                                           ; $6ca2: $f1
	nop                                              ; $6ca3: $00
	ld d, e                                          ; $6ca4: $53
	jr nc, jr_071_6caa                               ; $6ca5: $30 $03

	nop                                              ; $6ca7: $00
	cpl                                              ; $6ca8: $2f
	nop                                              ; $6ca9: $00

jr_071_6caa:
	ld a, e                                          ; $6caa: $7b
	or $7f                                           ; $6cab: $f6 $7f
	ldh a, [c]                                       ; $6cad: $f2
	ld a, a                                          ; $6cae: $7f
	ret z                                            ; $6caf: $c8

	sbc l                                            ; $6cb0: $9d
	add e                                            ; $6cb1: $83
	inc bc                                           ; $6cb2: $03
	inc bc                                           ; $6cb3: $03
	nop                                              ; $6cb4: $00
	cpl                                              ; $6cb5: $2f
	nop                                              ; $6cb6: $00
	ld a, a                                          ; $6cb7: $7f
	ld hl, sp+$7b                                    ; $6cb8: $f8 $7b
	cp $9b                                           ; $6cba: $fe $9b
	ld e, a                                          ; $6cbc: $5f
	add hl, sp                                       ; $6cbd: $39
	rst $38                                          ; $6cbe: $ff
	pop af                                           ; $6cbf: $f1
	rra                                              ; $6cc0: $1f
	nop                                              ; $6cc1: $00
	pop af                                           ; $6cc2: $f1
	rst $18                                          ; $6cc3: $df
	inc bc                                           ; $6cc4: $03

jr_071_6cc5:
	rst $18                                          ; $6cc5: $df
	ld bc, $98e7                                     ; $6cc6: $01 $e7 $98
	ld h, b                                          ; $6cc9: $60
	jr nz, @-$1e                                     ; $6cca: $20 $e0

jr_071_6ccc:
	ld h, b                                          ; $6ccc: $60
	ldh [$c0], a                                     ; $6ccd: $e0 $c0
	ret nz                                           ; $6ccf: $c0

	and $0f                                          ; $6cd0: $e6 $0f
	ret nz                                           ; $6cd2: $c0

	sbc l                                            ; $6cd3: $9d
	and b                                            ; $6cd4: $a0
	ld h, b                                          ; $6cd5: $60
	db $dd                                           ; $6cd6: $dd
	ldh [rAUD2ENV], a                                ; $6cd7: $e0 $17
	cp a                                             ; $6cd9: $bf
	rrca                                             ; $6cda: $0f
	ret nz                                           ; $6cdb: $c0

	sub l                                            ; $6cdc: $95
	or b                                             ; $6cdd: $b0
	ld h, b                                          ; $6cde: $60
	ldh [$f0], a                                     ; $6cdf: $e0 $f0
	ldh [$f0], a                                     ; $6ce1: $e0 $f0
	ldh a, [$e0]                                     ; $6ce3: $f0 $e0
	ret nz                                           ; $6ce5: $c0

	ld h, b                                          ; $6ce6: $60

jr_071_6ce7:
	rla                                              ; $6ce7: $17
	ret nz                                           ; $6ce8: $c0

	rra                                              ; $6ce9: $1f
	cp [hl]                                          ; $6cea: $be
	sbc l                                            ; $6ceb: $9d
	ld d, b                                          ; $6cec: $50
	jr nc, jr_071_6ccc                               ; $6ced: $30 $dd

	ldh a, [rPCM34]                                  ; $6cef: $f0 $77
	cp [hl]                                          ; $6cf1: $be
	sbc [hl]                                         ; $6cf2: $9e
	ld h, b                                          ; $6cf3: $60
	ld l, e                                          ; $6cf4: $6b
	ld a, h                                          ; $6cf5: $7c
	cp e                                             ; $6cf6: $bb
	ld bc, $ed80                                     ; $6cf7: $01 $80 $ed
	ld e, e                                          ; $6cfa: $5b
	ld l, l                                          ; $6cfb: $6d
	db $db                                           ; $6cfc: $db
	ld l, e                                          ; $6cfd: $6b
	sbc $d3                                          ; $6cfe: $de $d3
	cp [hl]                                          ; $6d00: $be
	rst SubAFromHL                                          ; $6d01: $d7
	cp h                                             ; $6d02: $bc
	rst SubAFromBC                                          ; $6d03: $e7
	cp h                                             ; $6d04: $bc
	ld l, $f9                                        ; $6d05: $2e $f9
	ld e, a                                          ; $6d07: $5f
	di                                               ; $6d08: $f3
	sbc $f7                                          ; $6d09: $de $f7
	ld a, a                                          ; $6d0b: $7f
	db $e4                                           ; $6d0c: $e4
	ld [hl], e                                       ; $6d0d: $73
	ld h, b                                          ; $6d0e: $60
	or c                                             ; $6d0f: $b1
	ldh [rSVBK], a                                   ; $6d10: $e0 $70
	ld sp, $3373                                     ; $6d12: $31 $73 $33
	rst FarCall                                          ; $6d15: $f7
	ld d, a                                          ; $6d16: $57
	push af                                          ; $6d17: $f5
	add [hl]                                         ; $6d18: $86
	sub c                                            ; $6d19: $91
	xor c                                            ; $6d1a: $a9
	add hl, de                                       ; $6d1b: $19
	ld e, c                                          ; $6d1c: $59
	add hl, sp                                       ; $6d1d: $39
	cp h                                             ; $6d1e: $bc
	ld l, b                                          ; $6d1f: $68
	ld h, l                                          ; $6d20: $65
	call z, $cc54                                    ; $6d21: $cc $54 $cc
	sbc $8c                                          ; $6d24: $de $8c
	xor d                                            ; $6d26: $aa
	sbc [hl]                                         ; $6d27: $9e
	cp e                                             ; $6d28: $bb
	sbc [hl]                                         ; $6d29: $9e
	rst $18                                          ; $6d2a: $df
	cp e                                             ; $6d2b: $bb
	rst AddAOntoHL                                          ; $6d2c: $ef
	xor e                                            ; $6d2d: $ab
	xor $aa                                          ; $6d2e: $ee $aa
	ld [$ddae], a                                    ; $6d30: $ea $ae $dd
	ld h, h                                          ; $6d33: $64
	rst $18                                          ; $6d34: $df
	inc h                                            ; $6d35: $24
	rst $18                                          ; $6d36: $df
	jr nz, jr_071_6cc5                               ; $6d37: $20 $8c

	db $dd                                           ; $6d39: $dd
	add hl, bc                                       ; $6d3a: $09
	adc b                                            ; $6d3b: $88
	dec c                                            ; $6d3c: $0d
	adc [hl]                                         ; $6d3d: $8e
	inc b                                            ; $6d3e: $04
	dec b                                            ; $6d3f: $05
	ld b, $02                                        ; $6d40: $06 $02
	inc bc                                           ; $6d42: $03
	jp $e101                                         ; $6d43: $c3 $01 $e1


	ldh [$c0], a                                     ; $6d46: $e0 $c0
	ldh [$f0], a                                     ; $6d48: $e0 $f0
	nop                                              ; $6d4a: $00
	ld hl, sp+$7b                                    ; $6d4b: $f8 $7b
	cp $88                                           ; $6d4d: $fe $88
	db $fc                                           ; $6d4f: $fc
	nop                                              ; $6d50: $00
	db $fc                                           ; $6d51: $fc
	ldh [$bc], a                                     ; $6d52: $e0 $bc
	or b                                             ; $6d54: $b0
	sbc b                                            ; $6d55: $98
	sub b                                            ; $6d56: $90
	ld [hl], b                                       ; $6d57: $70
	ldh a, [rSVBK]                                   ; $6d58: $f0 $70
	ldh a, [rHDMA1]                                  ; $6d5a: $f0 $51
	ld [hl], b                                       ; $6d5c: $70
	and e                                            ; $6d5d: $a3
	and b                                            ; $6d5e: $a0
	rst SubAFromBC                                          ; $6d5f: $e7
	ldh [c], a                                       ; $6d60: $e2
	inc b                                            ; $6d61: $04
	rlca                                             ; $6d62: $07
	dec b                                            ; $6d63: $05
	ld b, $03                                        ; $6d64: $06 $03
	cp $9e                                           ; $6d66: $fe $9e
	rst $38                                          ; $6d68: $ff
	ld [hl], a                                       ; $6d69: $77
	cp $80                                           ; $6d6a: $fe $80
	add b                                            ; $6d6c: $80
	ld a, a                                          ; $6d6d: $7f
	ld b, b                                          ; $6d6e: $40
	ccf                                              ; $6d6f: $3f
	jr nz, jr_071_6d91                               ; $6d70: $20 $1f

	jr @+$09                                         ; $6d72: $18 $07

	ld b, $03                                        ; $6d74: $06 $03
	inc bc                                           ; $6d76: $03
	ld e, h                                          ; $6d77: $5c
	adc b                                            ; $6d78: $88
	adc d                                            ; $6d79: $8a
	call z, $cca6                                    ; $6d7a: $cc $a6 $cc
	db $dd                                           ; $6d7d: $dd
	and $6a                                          ; $6d7e: $e6 $6a
	rst FarCall                                          ; $6d80: $f7
	ld [hl], e                                       ; $6d81: $73
	rst $18                                          ; $6d82: $df
	cp c                                             ; $6d83: $b9
	rst AddAOntoHL                                          ; $6d84: $ef
	sbc $77                                          ; $6d85: $de $77
	ld a, e                                          ; $6d87: $7b
	dec sp                                           ; $6d88: $3b
	rlca                                             ; $6d89: $07
	nop                                              ; $6d8a: $00
	adc b                                            ; $6d8b: $88
	rrca                                             ; $6d8c: $0f
	nop                                              ; $6d8d: $00
	rra                                              ; $6d8e: $1f
	inc bc                                           ; $6d8f: $03
	ccf                                              ; $6d90: $3f

jr_071_6d91:
	rlca                                             ; $6d91: $07
	ccf                                              ; $6d92: $3f
	rlca                                             ; $6d93: $07
	ld a, [de]                                       ; $6d94: $1a
	inc bc                                           ; $6d95: $03
	ld a, [bc]                                       ; $6d96: $0a
	inc bc                                           ; $6d97: $03
	ld [bc], a                                       ; $6d98: $02
	ld [bc], a                                       ; $6d99: $02
	ld bc, $8301                                     ; $6d9a: $01 $01 $83
	ld bc, $00c0                                     ; $6d9d: $01 $c0 $00
	ret nz                                           ; $6da0: $c0

	nop                                              ; $6da1: $00
	add b                                            ; $6da2: $80
	db $f4                                           ; $6da3: $f4
	add b                                            ; $6da4: $80
	ld bc, $0300                                     ; $6da5: $01 $00 $03
	nop                                              ; $6da8: $00
	rrca                                             ; $6da9: $0f
	inc bc                                           ; $6daa: $03
	cp l                                             ; $6dab: $bd
	sbc [hl]                                         ; $6dac: $9e
	ld [de], a                                       ; $6dad: $12
	call $cc27                                       ; $6dae: $cd $27 $cc
	call $dd66                                       ; $6db1: $cd $66 $dd
	ld h, [hl]                                       ; $6db4: $66
	xor d                                            ; $6db5: $aa
	ld [hl], a                                       ; $6db6: $77
	ld [hl+], a                                      ; $6db7: $22
	rst $38                                          ; $6db8: $ff
	sub e                                            ; $6db9: $93
	rst $38                                          ; $6dba: $ff
	reti                                             ; $6dbb: $d9


	rst $38                                          ; $6dbc: $ff
	ld l, l                                          ; $6dbd: $6d
	rst $38                                          ; $6dbe: $ff
	cp $df                                           ; $6dbf: $fe $df
	rst $38                                          ; $6dc1: $ff
	ld bc, $89ef                                     ; $6dc2: $01 $ef $89
	ldh a, [rPCM34]                                  ; $6dc5: $f0 $77
	ld a, b                                          ; $6dc7: $78
	ccf                                              ; $6dc8: $3f
	inc a                                            ; $6dc9: $3c
	rst AddAOntoHL                                          ; $6dca: $ef
	jp hl                                            ; $6dcb: $e9


	rst SubAFromBC                                          ; $6dcc: $e7
	pop hl                                           ; $6dcd: $e1
	xor a                                            ; $6dce: $af
	pop hl                                           ; $6dcf: $e1
	ld e, a                                          ; $6dd0: $5f
	ld b, c                                          ; $6dd1: $41
	rst $38                                          ; $6dd2: $ff
	pop bc                                           ; $6dd3: $c1
	rlca                                             ; $6dd4: $07
	ld bc, $010f                                     ; $6dd5: $01 $0f $01
	rra                                              ; $6dd8: $1f
	ld bc, $7b3f                                     ; $6dd9: $01 $3f $7b
	cp $8f                                           ; $6ddc: $fe $8f
	ld a, a                                          ; $6dde: $7f
	inc bc                                           ; $6ddf: $03
	ld a, a                                          ; $6de0: $7f
	rlca                                             ; $6de1: $07
	rst $38                                          ; $6de2: $ff
	rrca                                             ; $6de3: $0f
	rst $38                                          ; $6de4: $ff
	dec de                                           ; $6de5: $1b
	rst $38                                          ; $6de6: $ff
	inc sp                                           ; $6de7: $33
	rst $38                                          ; $6de8: $ff
	jp $83ff                                         ; $6de9: $c3 $ff $83


	cp a                                             ; $6dec: $bf
	inc bc                                           ; $6ded: $03
	daa                                              ; $6dee: $27
	nop                                              ; $6def: $00
	sub a                                            ; $6df0: $97
	ld [hl], c                                       ; $6df1: $71
	jr nc, jr_071_6e64                               ; $6df2: $30 $70

	ld sp, $53f1                                     ; $6df4: $31 $f1 $53
	rst FarCall                                          ; $6df7: $f7
	sub a                                            ; $6df8: $97
	inc bc                                           ; $6df9: $03
	nop                                              ; $6dfa: $00
	daa                                              ; $6dfb: $27
	nop                                              ; $6dfc: $00
	sbc c                                            ; $6dfd: $99
	nop                                              ; $6dfe: $00
	call c, $a8e0                                    ; $6dff: $dc $e0 $a8
	or b                                             ; $6e02: $b0
	ldh a, [$03]                                     ; $6e03: $f0 $03
	nop                                              ; $6e05: $00
	dec hl                                           ; $6e06: $2b
	nop                                              ; $6e07: $00
	sbc b                                            ; $6e08: $98
	nop                                              ; $6e09: $00
	dec a                                            ; $6e0a: $3d
	inc bc                                           ; $6e0b: $03
	dec sp                                           ; $6e0c: $3b
	rlca                                             ; $6e0d: $07
	rra                                              ; $6e0e: $1f
	rlca                                             ; $6e0f: $07
	inc bc                                           ; $6e10: $03
	nop                                              ; $6e11: $00
	dec hl                                           ; $6e12: $2b
	nop                                              ; $6e13: $00
	ld a, a                                          ; $6e14: $7f
	sbc h                                            ; $6e15: $9c
	sub a                                            ; $6e16: $97
	rst $18                                          ; $6e17: $df
	ldh [$37], a                                     ; $6e18: $e0 $37
	jr c, @+$01                                      ; $6e1a: $38 $ff

	db $fd                                           ; $6e1c: $fd
	rst AddAOntoHL                                          ; $6e1d: $ef
	jp hl                                            ; $6e1e: $e9


	inc bc                                           ; $6e1f: $03
	nop                                              ; $6e20: $00
	inc hl                                           ; $6e21: $23
	nop                                              ; $6e22: $00
	ld a, a                                          ; $6e23: $7f
	cp $99                                           ; $6e24: $fe $99
	ldh a, [$50]                                     ; $6e26: $f0 $50
	di                                               ; $6e28: $f3
	sub c                                            ; $6e29: $91
	xor e                                            ; $6e2a: $ab
	dec de                                           ; $6e2b: $1b
	inc bc                                           ; $6e2c: $03
	nop                                              ; $6e2d: $00
	dec hl                                           ; $6e2e: $2b
	nop                                              ; $6e2f: $00
	ld a, a                                          ; $6e30: $7f
	cp $7b                                           ; $6e31: $fe $7b
	or $7d                                           ; $6e33: $f6 $7d
	cp b                                             ; $6e35: $b8
	inc bc                                           ; $6e36: $03
	nop                                              ; $6e37: $00
	cpl                                              ; $6e38: $2f
	nop                                              ; $6e39: $00
	sbc [hl]                                         ; $6e3a: $9e
	ccf                                              ; $6e3b: $3f
	ld a, e                                          ; $6e3c: $7b
	cp $7d                                           ; $6e3d: $fe $7d
	ld a, [$0e9d]                                    ; $6e3f: $fa $9d $0e
	rlca                                             ; $6e42: $07
	inc bc                                           ; $6e43: $03
	nop                                              ; $6e44: $00
	dec hl                                           ; $6e45: $2b
	nop                                              ; $6e46: $00
	ld [hl], e                                       ; $6e47: $73
	cp $9a                                           ; $6e48: $fe $9a
	pop af                                           ; $6e4a: $f1
	rst $38                                          ; $6e4b: $ff
	db $fd                                           ; $6e4c: $fd
	xor a                                            ; $6e4d: $af
	jp hl                                            ; $6e4e: $e9


	inc bc                                           ; $6e4f: $03
	nop                                              ; $6e50: $00
	dec de                                           ; $6e51: $1b
	nop                                              ; $6e52: $00
	sub l                                            ; $6e53: $95
	ldh a, [hDisp1_SCY]                                     ; $6e54: $f0 $90
	xor b                                            ; $6e56: $a8
	jr @+$5b                                         ; $6e57: $18 $59

	jr c, @-$40                                      ; $6e59: $38 $be

	ld l, e                                          ; $6e5b: $6b
	ld h, l                                          ; $6e5c: $65
	call $0003                                       ; $6e5d: $cd $03 $00
	cpl                                              ; $6e60: $2f
	nop                                              ; $6e61: $00
	sbc b                                            ; $6e62: $98
	nop                                              ; $6e63: $00

jr_071_6e64:
	ldh a, [rP1]                                     ; $6e64: $f0 $00
	pop af                                           ; $6e66: $f1
	nop                                              ; $6e67: $00
	ld d, e                                          ; $6e68: $53
	jr nc, jr_071_6e6e                               ; $6e69: $30 $03

	nop                                              ; $6e6b: $00

jr_071_6e6c:
	cpl                                              ; $6e6c: $2f
	nop                                              ; $6e6d: $00

jr_071_6e6e:
	ld a, e                                          ; $6e6e: $7b
	or $7f                                           ; $6e6f: $f6 $7f
	ldh a, [c]                                       ; $6e71: $f2
	ld a, a                                          ; $6e72: $7f
	ret z                                            ; $6e73: $c8

jr_071_6e74:
	sbc l                                            ; $6e74: $9d
	add e                                            ; $6e75: $83
	inc bc                                           ; $6e76: $03
	inc bc                                           ; $6e77: $03
	nop                                              ; $6e78: $00
	cpl                                              ; $6e79: $2f
	nop                                              ; $6e7a: $00
	ld a, a                                          ; $6e7b: $7f
	ld hl, sp+$7b                                    ; $6e7c: $f8 $7b
	cp $9b                                           ; $6e7e: $fe $9b
	ld e, a                                          ; $6e80: $5f
	add hl, sp                                       ; $6e81: $39
	rst $38                                          ; $6e82: $ff
	pop af                                           ; $6e83: $f1
	rra                                              ; $6e84: $1f
	nop                                              ; $6e85: $00
	pop af                                           ; $6e86: $f1
	rst $18                                          ; $6e87: $df
	ld [bc], a                                       ; $6e88: $02
	push hl                                          ; $6e89: $e5
	rst $18                                          ; $6e8a: $df
	jr nz, jr_071_6e6c                               ; $6e8b: $20 $df

	ret nz                                           ; $6e8d: $c0

	rst $38                                          ; $6e8e: $ff
	ld a, e                                          ; $6e8f: $7b
	db $fd                                           ; $6e90: $fd
	add sp, -$21                                     ; $6e91: $e8 $df
	inc bc                                           ; $6e93: $03
	rst $18                                          ; $6e94: $df
	ld bc, $c017                                     ; $6e95: $01 $17 $c0
	sbc $e0                                          ; $6e98: $de $e0
	ld [hl], a                                       ; $6e9a: $77
	cp l                                             ; $6e9b: $bd
	inc bc                                           ; $6e9c: $03

jr_071_6e9d:
	ret nz                                           ; $6e9d: $c0

	db $eb                                           ; $6e9e: $eb
	sbc [hl]                                         ; $6e9f: $9e
	ld h, b                                          ; $6ea0: $60
	ld [hl], a                                       ; $6ea1: $77
	ret nz                                           ; $6ea2: $c0

	inc de                                           ; $6ea3: $13
	cp [hl]                                          ; $6ea4: $be
	ld [hl], a                                       ; $6ea5: $77
	ret nz                                           ; $6ea6: $c0

	rra                                              ; $6ea7: $1f
	cp [hl]                                          ; $6ea8: $be
	sbc d                                            ; $6ea9: $9a
	ld [hl], b                                       ; $6eaa: $70
	jr nz, jr_071_6e9d                               ; $6eab: $20 $f0

	ldh [$f0], a                                     ; $6ead: $e0 $f0
	ld d, e                                          ; $6eaf: $53
	cp [hl]                                          ; $6eb0: $be
	add $01                                          ; $6eb1: $c6 $01
	add b                                            ; $6eb3: $80
	db $ed                                           ; $6eb4: $ed
	ld e, e                                          ; $6eb5: $5b
	ld l, l                                          ; $6eb6: $6d
	db $db                                           ; $6eb7: $db
	ld l, e                                          ; $6eb8: $6b
	sbc $d3                                          ; $6eb9: $de $d3
	cp [hl]                                          ; $6ebb: $be
	rst SubAFromHL                                          ; $6ebc: $d7
	cp h                                             ; $6ebd: $bc
	rst SubAFromBC                                          ; $6ebe: $e7
	cp h                                             ; $6ebf: $bc
	ld l, $f9                                        ; $6ec0: $2e $f9
	ld e, l                                          ; $6ec2: $5d
	di                                               ; $6ec3: $f3
	jp c, Jump_071_7ff7                              ; $6ec4: $da $f7 $7f

	db $e4                                           ; $6ec7: $e4
	ld [hl], e                                       ; $6ec8: $73
	ld h, b                                          ; $6ec9: $60
	or c                                             ; $6eca: $b1
	ldh [rSVBK], a                                   ; $6ecb: $e0 $70
	ld sp, $3373                                     ; $6ecd: $31 $73 $33
	rst FarCall                                          ; $6ed0: $f7
	ld d, a                                          ; $6ed1: $57
	push af                                          ; $6ed2: $f5
	add [hl]                                         ; $6ed3: $86
	sub c                                            ; $6ed4: $91
	xor c                                            ; $6ed5: $a9
	add hl, de                                       ; $6ed6: $19
	ld e, c                                          ; $6ed7: $59
	add hl, sp                                       ; $6ed8: $39
	cp h                                             ; $6ed9: $bc
	ld l, b                                          ; $6eda: $68
	ld h, l                                          ; $6edb: $65
	call z, $cc54                                    ; $6edc: $cc $54 $cc
	sbc $8c                                          ; $6edf: $de $8c
	xor d                                            ; $6ee1: $aa
	sbc [hl]                                         ; $6ee2: $9e
	cp e                                             ; $6ee3: $bb
	sbc [hl]                                         ; $6ee4: $9e
	rst $18                                          ; $6ee5: $df
	cp e                                             ; $6ee6: $bb
	rst AddAOntoHL                                          ; $6ee7: $ef
	xor e                                            ; $6ee8: $ab
	xor $aa                                          ; $6ee9: $ee $aa
	ld [$ddae], a                                    ; $6eeb: $ea $ae $dd
	ld h, h                                          ; $6eee: $64
	rst $18                                          ; $6eef: $df
	inc h                                            ; $6ef0: $24
	rst $18                                          ; $6ef1: $df
	jr nz, jr_071_6e74                               ; $6ef2: $20 $80

	db $dd                                           ; $6ef4: $dd
	add hl, bc                                       ; $6ef5: $09

jr_071_6ef6:
	adc b                                            ; $6ef6: $88
	dec c                                            ; $6ef7: $0d
	adc [hl]                                         ; $6ef8: $8e
	inc b                                            ; $6ef9: $04
	dec b                                            ; $6efa: $05
	ld b, $02                                        ; $6efb: $06 $02
	inc bc                                           ; $6efd: $03
	jp $e101                                         ; $6efe: $c3 $01 $e1


	nop                                              ; $6f01: $00
	ldh [$f0], a                                     ; $6f02: $e0 $f0
	jr nc, jr_071_6ef6                               ; $6f04: $30 $f0

	ld hl, sp+$00                                    ; $6f06: $f8 $00
	ld hl, sp+$00                                    ; $6f08: $f8 $00
	db $fc                                           ; $6f0a: $fc
	nop                                              ; $6f0b: $00
	db $fc                                           ; $6f0c: $fc
	ldh [$bc], a                                     ; $6f0d: $e0 $bc
	or b                                             ; $6f0f: $b0
	sbc b                                            ; $6f10: $98
	sub b                                            ; $6f11: $90
	ld [hl], b                                       ; $6f12: $70
	sub c                                            ; $6f13: $91
	ldh a, [rSVBK]                                   ; $6f14: $f0 $70
	ldh a, [rHDMA1]                                  ; $6f16: $f0 $51
	ld [hl], b                                       ; $6f18: $70
	and e                                            ; $6f19: $a3
	and b                                            ; $6f1a: $a0
	rst SubAFromBC                                          ; $6f1b: $e7
	ldh [c], a                                       ; $6f1c: $e2
	inc b                                            ; $6f1d: $04
	rlca                                             ; $6f1e: $07
	dec b                                            ; $6f1f: $05
	ld b, $03                                        ; $6f20: $06 $03
	cp $9e                                           ; $6f22: $fe $9e
	rst $38                                          ; $6f24: $ff
	ld [hl], a                                       ; $6f25: $77
	cp $80                                           ; $6f26: $fe $80
	add b                                            ; $6f28: $80
	ld a, a                                          ; $6f29: $7f
	ld b, b                                          ; $6f2a: $40
	ccf                                              ; $6f2b: $3f
	jr nz, jr_071_6f4d                               ; $6f2c: $20 $1f

	jr @+$09                                         ; $6f2e: $18 $07

	ld b, $03                                        ; $6f30: $06 $03
	inc bc                                           ; $6f32: $03
	ld e, h                                          ; $6f33: $5c
	adc b                                            ; $6f34: $88
	adc d                                            ; $6f35: $8a
	call z, $cca6                                    ; $6f36: $cc $a6 $cc
	db $dd                                           ; $6f39: $dd
	and $6a                                          ; $6f3a: $e6 $6a
	rst FarCall                                          ; $6f3c: $f7
	ld [hl], e                                       ; $6f3d: $73
	rst $18                                          ; $6f3e: $df
	cp c                                             ; $6f3f: $b9
	rst AddAOntoHL                                          ; $6f40: $ef
	sbc $77                                          ; $6f41: $de $77
	ld a, e                                          ; $6f43: $7b
	dec sp                                           ; $6f44: $3b
	rlca                                             ; $6f45: $07
	nop                                              ; $6f46: $00
	adc b                                            ; $6f47: $88
	rrca                                             ; $6f48: $0f
	nop                                              ; $6f49: $00
	rra                                              ; $6f4a: $1f
	inc bc                                           ; $6f4b: $03
	ccf                                              ; $6f4c: $3f

jr_071_6f4d:
	rlca                                             ; $6f4d: $07
	ccf                                              ; $6f4e: $3f
	rlca                                             ; $6f4f: $07
	ld a, [de]                                       ; $6f50: $1a
	inc bc                                           ; $6f51: $03
	ld a, [bc]                                       ; $6f52: $0a
	inc bc                                           ; $6f53: $03
	ld [bc], a                                       ; $6f54: $02
	ld [bc], a                                       ; $6f55: $02
	ld bc, $8301                                     ; $6f56: $01 $01 $83
	ld bc, $00c0                                     ; $6f59: $01 $c0 $00
	ret nz                                           ; $6f5c: $c0

	nop                                              ; $6f5d: $00
	add b                                            ; $6f5e: $80
	db $f4                                           ; $6f5f: $f4
	add b                                            ; $6f60: $80
	ld bc, $0300                                     ; $6f61: $01 $00 $03
	nop                                              ; $6f64: $00
	rrca                                             ; $6f65: $0f
	inc bc                                           ; $6f66: $03
	cp l                                             ; $6f67: $bd
	sbc [hl]                                         ; $6f68: $9e
	ld [de], a                                       ; $6f69: $12
	call $cc27                                       ; $6f6a: $cd $27 $cc
	call $dd66                                       ; $6f6d: $cd $66 $dd
	ld h, [hl]                                       ; $6f70: $66
	xor d                                            ; $6f71: $aa
	ld [hl], a                                       ; $6f72: $77
	ld [hl+], a                                      ; $6f73: $22
	rst $38                                          ; $6f74: $ff
	sub e                                            ; $6f75: $93
	rst $38                                          ; $6f76: $ff
	reti                                             ; $6f77: $d9


	rst $38                                          ; $6f78: $ff
	ld l, l                                          ; $6f79: $6d
	rst $38                                          ; $6f7a: $ff
	cp $df                                           ; $6f7b: $fe $df
	rst $38                                          ; $6f7d: $ff
	ld bc, $89ef                                     ; $6f7e: $01 $ef $89
	ldh a, [rPCM34]                                  ; $6f81: $f0 $77
	ld a, b                                          ; $6f83: $78
	ccf                                              ; $6f84: $3f
	inc a                                            ; $6f85: $3c
	rst AddAOntoHL                                          ; $6f86: $ef
	jp hl                                            ; $6f87: $e9


	rst SubAFromBC                                          ; $6f88: $e7
	pop hl                                           ; $6f89: $e1
	xor a                                            ; $6f8a: $af
	pop hl                                           ; $6f8b: $e1
	ld e, a                                          ; $6f8c: $5f
	ld b, c                                          ; $6f8d: $41
	rst $38                                          ; $6f8e: $ff
	pop bc                                           ; $6f8f: $c1
	rlca                                             ; $6f90: $07
	ld bc, $010f                                     ; $6f91: $01 $0f $01
	rra                                              ; $6f94: $1f
	ld bc, $7b3f                                     ; $6f95: $01 $3f $7b
	cp $8f                                           ; $6f98: $fe $8f
	ld a, a                                          ; $6f9a: $7f
	inc bc                                           ; $6f9b: $03
	ld a, a                                          ; $6f9c: $7f
	rlca                                             ; $6f9d: $07
	rst $38                                          ; $6f9e: $ff
	rrca                                             ; $6f9f: $0f
	rst $38                                          ; $6fa0: $ff
	dec de                                           ; $6fa1: $1b
	rst $38                                          ; $6fa2: $ff
	inc sp                                           ; $6fa3: $33
	rst $38                                          ; $6fa4: $ff
	jp $83ff                                         ; $6fa5: $c3 $ff $83


	cp a                                             ; $6fa8: $bf
	inc bc                                           ; $6fa9: $03
	daa                                              ; $6faa: $27
	nop                                              ; $6fab: $00
	sub a                                            ; $6fac: $97
	ld [hl], c                                       ; $6fad: $71
	jr nc, jr_071_7020                               ; $6fae: $30 $70

	ld sp, $53f1                                     ; $6fb0: $31 $f1 $53
	rst FarCall                                          ; $6fb3: $f7
	sub a                                            ; $6fb4: $97
	inc bc                                           ; $6fb5: $03
	nop                                              ; $6fb6: $00
	daa                                              ; $6fb7: $27
	nop                                              ; $6fb8: $00
	sbc c                                            ; $6fb9: $99
	nop                                              ; $6fba: $00
	call c, $a8e0                                    ; $6fbb: $dc $e0 $a8
	or b                                             ; $6fbe: $b0
	ldh a, [$03]                                     ; $6fbf: $f0 $03
	nop                                              ; $6fc1: $00
	dec hl                                           ; $6fc2: $2b
	nop                                              ; $6fc3: $00
	sbc b                                            ; $6fc4: $98
	nop                                              ; $6fc5: $00
	dec a                                            ; $6fc6: $3d
	inc bc                                           ; $6fc7: $03
	dec sp                                           ; $6fc8: $3b
	rlca                                             ; $6fc9: $07
	rra                                              ; $6fca: $1f
	rlca                                             ; $6fcb: $07
	inc bc                                           ; $6fcc: $03
	nop                                              ; $6fcd: $00
	dec hl                                           ; $6fce: $2b
	nop                                              ; $6fcf: $00
	ld a, a                                          ; $6fd0: $7f
	sbc h                                            ; $6fd1: $9c
	sub a                                            ; $6fd2: $97
	rst $18                                          ; $6fd3: $df
	ldh [$37], a                                     ; $6fd4: $e0 $37
	jr c, @+$01                                      ; $6fd6: $38 $ff

	db $fd                                           ; $6fd8: $fd
	rst AddAOntoHL                                          ; $6fd9: $ef
	jp hl                                            ; $6fda: $e9


	inc bc                                           ; $6fdb: $03
	nop                                              ; $6fdc: $00
	inc hl                                           ; $6fdd: $23
	nop                                              ; $6fde: $00
	ld a, a                                          ; $6fdf: $7f

jr_071_6fe0:
	cp $99                                           ; $6fe0: $fe $99
	ldh a, [$50]                                     ; $6fe2: $f0 $50
	di                                               ; $6fe4: $f3
	sub c                                            ; $6fe5: $91
	xor e                                            ; $6fe6: $ab
	dec de                                           ; $6fe7: $1b
	inc bc                                           ; $6fe8: $03
	nop                                              ; $6fe9: $00
	dec hl                                           ; $6fea: $2b
	nop                                              ; $6feb: $00
	ld a, a                                          ; $6fec: $7f
	cp $7b                                           ; $6fed: $fe $7b
	or $7d                                           ; $6fef: $f6 $7d
	cp b                                             ; $6ff1: $b8
	inc bc                                           ; $6ff2: $03
	nop                                              ; $6ff3: $00
	cpl                                              ; $6ff4: $2f
	nop                                              ; $6ff5: $00
	sbc [hl]                                         ; $6ff6: $9e
	ccf                                              ; $6ff7: $3f
	ld a, e                                          ; $6ff8: $7b
	cp $7d                                           ; $6ff9: $fe $7d
	ld a, [$0e9d]                                    ; $6ffb: $fa $9d $0e
	rlca                                             ; $6ffe: $07
	inc bc                                           ; $6fff: $03
	nop                                              ; $7000: $00
	dec hl                                           ; $7001: $2b
	nop                                              ; $7002: $00
	ld [hl], e                                       ; $7003: $73
	cp $9a                                           ; $7004: $fe $9a
	pop af                                           ; $7006: $f1
	rst $38                                          ; $7007: $ff
	db $fd                                           ; $7008: $fd
	xor a                                            ; $7009: $af
	jp hl                                            ; $700a: $e9


	inc bc                                           ; $700b: $03
	nop                                              ; $700c: $00
	ld e, e                                          ; $700d: $5b
	nop                                              ; $700e: $00
	sub a                                            ; $700f: $97
	ld e, h                                          ; $7010: $5c
	di                                               ; $7011: $f3
	db $dd                                           ; $7012: $dd
	di                                               ; $7013: $f3
	ld a, e                                          ; $7014: $7b
	and $77                                          ; $7015: $e6 $77
	ld h, h                                          ; $7017: $64
	ld h, a                                          ; $7018: $67
	nop                                              ; $7019: $00
	sub l                                            ; $701a: $95
	ldh a, [hDisp1_SCY]                                     ; $701b: $f0 $90
	xor b                                            ; $701d: $a8
	jr jr_071_7079                                   ; $701e: $18 $59

jr_071_7020:
	jr c, jr_071_6fe0                                ; $7020: $38 $be

	ld l, e                                          ; $7022: $6b
	ld h, l                                          ; $7023: $65
	call $0003                                       ; $7024: $cd $03 $00
	ld [hl], e                                       ; $7027: $73
	nop                                              ; $7028: $00
	sbc [hl]                                         ; $7029: $9e
	ldh a, [$7a]                                     ; $702a: $f0 $7a
	cp $9d                                           ; $702c: $fe $9d
	cp b                                             ; $702e: $b8
	ld [hl], b                                       ; $702f: $70
	ld e, e                                          ; $7030: $5b
	nop                                              ; $7031: $00
	ld a, e                                          ; $7032: $7b
	xor $9b                                          ; $7033: $ee $9b
	pop af                                           ; $7035: $f1
	nop                                              ; $7036: $00
	ld d, e                                          ; $7037: $53
	jr nc, jr_071_703d                               ; $7038: $30 $03

jr_071_703a:
	nop                                              ; $703a: $00
	cpl                                              ; $703b: $2f
	nop                                              ; $703c: $00

jr_071_703d:
	ld a, e                                          ; $703d: $7b
	or $7f                                           ; $703e: $f6 $7f
	ldh a, [c]                                       ; $7040: $f2
	ld a, a                                          ; $7041: $7f
	ret z                                            ; $7042: $c8

	sbc l                                            ; $7043: $9d
	add e                                            ; $7044: $83
	inc bc                                           ; $7045: $03
	inc bc                                           ; $7046: $03
	nop                                              ; $7047: $00
	cpl                                              ; $7048: $2f
	nop                                              ; $7049: $00
	ld a, a                                          ; $704a: $7f
	ld hl, sp+$7b                                    ; $704b: $f8 $7b
	cp $9b                                           ; $704d: $fe $9b
	ld e, a                                          ; $704f: $5f
	add hl, sp                                       ; $7050: $39
	rst $38                                          ; $7051: $ff
	pop af                                           ; $7052: $f1
	rra                                              ; $7053: $1f
	nop                                              ; $7054: $00
	rst AddAOntoHL                                          ; $7055: $ef
	rst $18                                          ; $7056: $df
	ld bc, $dfe5                                     ; $7057: $01 $e5 $df
	ret nz                                           ; $705a: $c0

	ld a, e                                          ; $705b: $7b
	db $fc                                           ; $705c: $fc
	db $e4                                           ; $705d: $e4
	rrca                                             ; $705e: $0f
	ret nz                                           ; $705f: $c0

	sbc $e0                                          ; $7060: $de $e0
	rrca                                             ; $7062: $0f
	pop bc                                           ; $7063: $c1
	dec bc                                           ; $7064: $0b
	ret nz                                           ; $7065: $c0

	sbc l                                            ; $7066: $9d
	ldh a, [$e0]                                     ; $7067: $f0 $e0
	sbc $f0                                          ; $7069: $de $f0
	sbc l                                            ; $706b: $9d
	ldh [$60], a                                     ; $706c: $e0 $60
	inc bc                                           ; $706e: $03
	ret nz                                           ; $706f: $c0

	inc de                                           ; $7070: $13
	ret nz                                           ; $7071: $c0

	rst $18                                          ; $7072: $df
	ldh a, [$df]                                     ; $7073: $f0 $df
	ld h, b                                          ; $7075: $60
	ld a, [$01d1]                                    ; $7076: $fa $d1 $01

jr_071_7079:
	add b                                            ; $7079: $80
	db $ed                                           ; $707a: $ed
	ld e, e                                          ; $707b: $5b
	ld l, l                                          ; $707c: $6d
	db $db                                           ; $707d: $db
	ld l, e                                          ; $707e: $6b
	sbc $d3                                          ; $707f: $de $d3
	cp [hl]                                          ; $7081: $be
	rst SubAFromHL                                          ; $7082: $d7
	cp h                                             ; $7083: $bc
	rst SubAFromBC                                          ; $7084: $e7
	cp h                                             ; $7085: $bc
	ld l, $f9                                        ; $7086: $2e $f9
	ld e, l                                          ; $7088: $5d
	di                                               ; $7089: $f3
	rst $18                                          ; $708a: $df
	ldh a, [$7f]                                     ; $708b: $f0 $7f
	ldh [$73], a                                     ; $708d: $e0 $73
	ld h, b                                          ; $708f: $60
	or c                                             ; $7090: $b1
	ldh [rSVBK], a                                   ; $7091: $e0 $70
	ld sp, $3373                                     ; $7093: $31 $73 $33
	rst FarCall                                          ; $7096: $f7
	ld d, a                                          ; $7097: $57
	push af                                          ; $7098: $f5
	add [hl]                                         ; $7099: $86
	sub c                                            ; $709a: $91
	xor c                                            ; $709b: $a9
	add hl, de                                       ; $709c: $19
	ld e, c                                          ; $709d: $59
	add hl, sp                                       ; $709e: $39
	cp h                                             ; $709f: $bc
	ld l, b                                          ; $70a0: $68
	ld h, l                                          ; $70a1: $65
	call z, $cc54                                    ; $70a2: $cc $54 $cc
	sbc $8c                                          ; $70a5: $de $8c
	xor d                                            ; $70a7: $aa
	sbc [hl]                                         ; $70a8: $9e
	cp e                                             ; $70a9: $bb
	sbc [hl]                                         ; $70aa: $9e
	rst $18                                          ; $70ab: $df
	cp e                                             ; $70ac: $bb
	rst AddAOntoHL                                          ; $70ad: $ef
	xor e                                            ; $70ae: $ab
	xor $aa                                          ; $70af: $ee $aa
	ld [$ddae], a                                    ; $70b1: $ea $ae $dd
	ld h, h                                          ; $70b4: $64
	rst $18                                          ; $70b5: $df
	inc h                                            ; $70b6: $24
	rst $18                                          ; $70b7: $df
	jr nz, jr_071_703a                               ; $70b8: $20 $80

	db $dd                                           ; $70ba: $dd
	add hl, bc                                       ; $70bb: $09
	adc b                                            ; $70bc: $88
	dec c                                            ; $70bd: $0d
	adc [hl]                                         ; $70be: $8e
	inc b                                            ; $70bf: $04
	dec b                                            ; $70c0: $05
	ld b, $02                                        ; $70c1: $06 $02
	inc bc                                           ; $70c3: $03
	jp $e101                                         ; $70c4: $c3 $01 $e1


	nop                                              ; $70c7: $00
	or b                                             ; $70c8: $b0
	ret nz                                           ; $70c9: $c0

	ld h, b                                          ; $70ca: $60
	ldh a, [$b8]                                     ; $70cb: $f0 $b8
	ld a, b                                          ; $70cd: $78
	ld hl, sp+$18                                    ; $70ce: $f8 $18
	db $fc                                           ; $70d0: $fc
	nop                                              ; $70d1: $00
	call c, $ece0                                    ; $70d2: $dc $e0 $ec
	ldh a, [$98]                                     ; $70d5: $f0 $98
	sub b                                            ; $70d7: $90
	ld [hl], b                                       ; $70d8: $70
	sub c                                            ; $70d9: $91
	ldh a, [rSVBK]                                   ; $70da: $f0 $70
	ldh a, [rHDMA1]                                  ; $70dc: $f0 $51
	ld [hl], b                                       ; $70de: $70
	and e                                            ; $70df: $a3
	and b                                            ; $70e0: $a0
	rst SubAFromBC                                          ; $70e1: $e7
	ldh [c], a                                       ; $70e2: $e2
	inc b                                            ; $70e3: $04
	rlca                                             ; $70e4: $07
	dec b                                            ; $70e5: $05
	ld b, $03                                        ; $70e6: $06 $03
	cp l                                             ; $70e8: $bd
	nop                                              ; $70e9: $00
	rst $38                                          ; $70ea: $ff
	rst $38                                          ; $70eb: $ff
	rst $38                                          ; $70ec: $ff
	add b                                            ; $70ed: $80
	add b                                            ; $70ee: $80
	ld a, a                                          ; $70ef: $7f
	ld b, b                                          ; $70f0: $40
	ccf                                              ; $70f1: $3f
	jr nz, jr_071_7113                               ; $70f2: $20 $1f

	jr @+$09                                         ; $70f4: $18 $07

	ld b, $03                                        ; $70f6: $06 $03
	inc bc                                           ; $70f8: $03
	ld e, h                                          ; $70f9: $5c
	adc b                                            ; $70fa: $88
	adc d                                            ; $70fb: $8a
	call z, $cca6                                    ; $70fc: $cc $a6 $cc
	db $dd                                           ; $70ff: $dd
	and $6a                                          ; $7100: $e6 $6a
	rst FarCall                                          ; $7102: $f7
	ld [hl], e                                       ; $7103: $73
	rst $18                                          ; $7104: $df
	cp c                                             ; $7105: $b9
	rst AddAOntoHL                                          ; $7106: $ef
	sbc $77                                          ; $7107: $de $77
	ld a, e                                          ; $7109: $7b
	dec sp                                           ; $710a: $3b
	rrca                                             ; $710b: $0f
	rrca                                             ; $710c: $0f
	adc h                                            ; $710d: $8c
	dec c                                            ; $710e: $0d
	ld c, $1f                                        ; $710f: $0e $1f
	inc bc                                           ; $7111: $03
	ccf                                              ; $7112: $3f

jr_071_7113:
	rlca                                             ; $7113: $07
	ccf                                              ; $7114: $3f
	rrca                                             ; $7115: $0f
	ld a, [de]                                       ; $7116: $1a
	inc bc                                           ; $7117: $03
	ld a, [bc]                                       ; $7118: $0a
	inc bc                                           ; $7119: $03
	ld [bc], a                                       ; $711a: $02
	ld [bc], a                                       ; $711b: $02
	ld bc, $8301                                     ; $711c: $01 $01 $83
	ld bc, $b6c0                                     ; $711f: $01 $c0 $b6
	ret nz                                           ; $7122: $c0

	add b                                            ; $7123: $80
	nop                                              ; $7124: $00
	nop                                              ; $7125: $00
	nop                                              ; $7126: $00
	nop                                              ; $7127: $00
	nop                                              ; $7128: $00
	nop                                              ; $7129: $00
	ld bc, $0f03                                     ; $712a: $01 $03 $0f
	add b                                            ; $712d: $80
	inc bc                                           ; $712e: $03
	cp l                                             ; $712f: $bd
	sbc [hl]                                         ; $7130: $9e
	ld [de], a                                       ; $7131: $12
	call $cc27                                       ; $7132: $cd $27 $cc
	call $dd66                                       ; $7135: $cd $66 $dd
	ld h, [hl]                                       ; $7138: $66
	xor d                                            ; $7139: $aa
	ld [hl], a                                       ; $713a: $77
	ld [hl+], a                                      ; $713b: $22
	rst $38                                          ; $713c: $ff
	sub e                                            ; $713d: $93
	rst $38                                          ; $713e: $ff
	reti                                             ; $713f: $d9


	rst $38                                          ; $7140: $ff
	ld l, l                                          ; $7141: $6d
	rst $38                                          ; $7142: $ff
	cp $df                                           ; $7143: $fe $df
	rst $38                                          ; $7145: $ff
	ld bc, $e0df                                     ; $7146: $01 $df $e0
	rst FarCall                                          ; $7149: $f7
	ld hl, sp+$3f                                    ; $714a: $f8 $3f
	inc a                                            ; $714c: $3c
	adc [hl]                                         ; $714d: $8e
	rst AddAOntoHL                                          ; $714e: $ef
	jp hl                                            ; $714f: $e9


	rst SubAFromBC                                          ; $7150: $e7
	pop hl                                           ; $7151: $e1
	xor a                                            ; $7152: $af
	pop hl                                           ; $7153: $e1
	ld e, a                                          ; $7154: $5f
	ld b, c                                          ; $7155: $41
	rst $38                                          ; $7156: $ff
	pop bc                                           ; $7157: $c1
	rlca                                             ; $7158: $07
	ld bc, $010f                                     ; $7159: $01 $0f $01
	rra                                              ; $715c: $1f
	ld bc, $7b3f                                     ; $715d: $01 $3f $7b
	cp $8f                                           ; $7160: $fe $8f
	ld a, a                                          ; $7162: $7f
	inc bc                                           ; $7163: $03
	ld a, a                                          ; $7164: $7f
	rlca                                             ; $7165: $07
	rst $38                                          ; $7166: $ff
	rrca                                             ; $7167: $0f
	rst $38                                          ; $7168: $ff
	dec de                                           ; $7169: $1b
	rst $38                                          ; $716a: $ff
	inc sp                                           ; $716b: $33
	rst $38                                          ; $716c: $ff
	jp $83ff                                         ; $716d: $c3 $ff $83


	cp a                                             ; $7170: $bf
	inc bc                                           ; $7171: $03
	daa                                              ; $7172: $27
	nop                                              ; $7173: $00
	sub a                                            ; $7174: $97
	ld [hl], c                                       ; $7175: $71
	jr nc, jr_071_71e8                               ; $7176: $30 $70

	ld sp, $53f1                                     ; $7178: $31 $f1 $53
	rst FarCall                                          ; $717b: $f7
	sub a                                            ; $717c: $97
	inc bc                                           ; $717d: $03
	nop                                              ; $717e: $00
	dec hl                                           ; $717f: $2b
	nop                                              ; $7180: $00
	halt                                             ; $7181: $76
	cp $9c                                           ; $7182: $fe $9c
	xor b                                            ; $7184: $a8
	or b                                             ; $7185: $b0
	ldh a, [$03]                                     ; $7186: $f0 $03
	nop                                              ; $7188: $00
	dec hl                                           ; $7189: $2b
	nop                                              ; $718a: $00
	sbc b                                            ; $718b: $98
	nop                                              ; $718c: $00
	dec a                                            ; $718d: $3d
	inc bc                                           ; $718e: $03
	dec sp                                           ; $718f: $3b
	rlca                                             ; $7190: $07
	rra                                              ; $7191: $1f
	rlca                                             ; $7192: $07
	inc bc                                           ; $7193: $03
	nop                                              ; $7194: $00
	dec hl                                           ; $7195: $2b
	nop                                              ; $7196: $00
	ld a, a                                          ; $7197: $7f
	sbc h                                            ; $7198: $9c
	ld a, [hl]                                       ; $7199: $7e
	cp $99                                           ; $719a: $fe $99
	ld [hl], a                                       ; $719c: $77
	ld a, b                                          ; $719d: $78
	rst $38                                          ; $719e: $ff
	db $fd                                           ; $719f: $fd
	rst AddAOntoHL                                          ; $71a0: $ef
	jp hl                                            ; $71a1: $e9


	inc bc                                           ; $71a2: $03
	nop                                              ; $71a3: $00

jr_071_71a4:
	inc hl                                           ; $71a4: $23
	nop                                              ; $71a5: $00
	ld a, a                                          ; $71a6: $7f
	cp $99                                           ; $71a7: $fe $99
	ldh a, [$50]                                     ; $71a9: $f0 $50
	di                                               ; $71ab: $f3
	sub c                                            ; $71ac: $91
	xor e                                            ; $71ad: $ab
	dec de                                           ; $71ae: $1b
	inc bc                                           ; $71af: $03
	nop                                              ; $71b0: $00
	dec hl                                           ; $71b1: $2b
	nop                                              ; $71b2: $00
	ld a, a                                          ; $71b3: $7f
	cp $9b                                           ; $71b4: $fe $9b
	ld hl, sp+$00                                    ; $71b6: $f8 $00
	ld hl, sp-$20                                    ; $71b8: $f8 $e0
	inc bc                                           ; $71ba: $03
	nop                                              ; $71bb: $00
	dec hl                                           ; $71bc: $2b
	nop                                              ; $71bd: $00
	sbc [hl]                                         ; $71be: $9e
	ccf                                              ; $71bf: $3f
	cp a                                             ; $71c0: $bf
	ccf                                              ; $71c1: $3f
	rra                                              ; $71c2: $1f
	sbc h                                            ; $71c3: $9c
	inc bc                                           ; $71c4: $03
	ld c, $07                                        ; $71c5: $0e $07
	inc bc                                           ; $71c7: $03
	nop                                              ; $71c8: $00
	dec hl                                           ; $71c9: $2b
	nop                                              ; $71ca: $00
	ld [hl], e                                       ; $71cb: $73
	cp $9a                                           ; $71cc: $fe $9a
	pop af                                           ; $71ce: $f1
	rst $38                                          ; $71cf: $ff
	db $fd                                           ; $71d0: $fd
	xor a                                            ; $71d1: $af
	jp hl                                            ; $71d2: $e9


	inc bc                                           ; $71d3: $03
	nop                                              ; $71d4: $00
	ld e, e                                          ; $71d5: $5b
	nop                                              ; $71d6: $00
	sbc e                                            ; $71d7: $9b
	ld e, h                                          ; $71d8: $5c
	di                                               ; $71d9: $f3
	sbc $f1                                          ; $71da: $de $f1
	ld d, a                                          ; $71dc: $57
	nop                                              ; $71dd: $00
	sub l                                            ; $71de: $95
	ldh a, [hDisp1_SCY]                                     ; $71df: $f0 $90

Jump_071_71e1:
	xor b                                            ; $71e1: $a8
	jr jr_071_723d                                   ; $71e2: $18 $59

jr_071_71e4:
	jr c, jr_071_71a4                                ; $71e4: $38 $be

	ld l, e                                          ; $71e6: $6b
	ld h, l                                          ; $71e7: $65

jr_071_71e8:
	call $0003                                       ; $71e8: $cd $03 $00
	ld [hl], e                                       ; $71eb: $73
	nop                                              ; $71ec: $00
	sub [hl]                                         ; $71ed: $96
	ldh a, [rP1]                                     ; $71ee: $f0 $00
	ret nc                                           ; $71f0: $d0

	ldh [$f8], a                                     ; $71f1: $e0 $f8
	ld [hl], b                                       ; $71f3: $70
	ld hl, sp+$38                                    ; $71f4: $f8 $38
	db $fc                                           ; $71f6: $fc
	ld [hl], d                                       ; $71f7: $72
	cp $7b                                           ; $71f8: $fe $7b
	nop                                              ; $71fa: $00
	cp [hl]                                          ; $71fb: $be
	ldh a, [$f1]                                     ; $71fc: $f0 $f1
	ld d, e                                          ; $71fe: $53
	sbc [hl]                                         ; $71ff: $9e
	jr nc, jr_071_7205                               ; $7200: $30 $03

	nop                                              ; $7202: $00
	ld e, e                                          ; $7203: $5b
	nop                                              ; $7204: $00

jr_071_7205:
	rst $18                                          ; $7205: $df
	rlca                                             ; $7206: $07
	sbc e                                            ; $7207: $9b
	ld c, $0f                                        ; $7208: $0e $0f
	rra                                              ; $720a: $1f
	inc c                                            ; $720b: $0c
	ld [hl], e                                       ; $720c: $73
	nop                                              ; $720d: $00
	cp [hl]                                          ; $720e: $be
	rrca                                             ; $720f: $0f
	rlca                                             ; $7210: $07
	dec b                                            ; $7211: $05
	sbc h                                            ; $7212: $9c
	ld b, $83                                        ; $7213: $06 $83
	inc bc                                           ; $7215: $03
	inc bc                                           ; $7216: $03
	nop                                              ; $7217: $00
	cpl                                              ; $7218: $2f
	nop                                              ; $7219: $00
	ld a, a                                          ; $721a: $7f
	ld hl, sp+$7b                                    ; $721b: $f8 $7b
	cp $9b                                           ; $721d: $fe $9b
	ld e, a                                          ; $721f: $5f
	add hl, sp                                       ; $7220: $39
	rst $38                                          ; $7221: $ff
	pop af                                           ; $7222: $f1
	rra                                              ; $7223: $1f
	nop                                              ; $7224: $00
	rst AddAOntoHL                                          ; $7225: $ef
	rst $18                                          ; $7226: $df
	ld bc, $dfe5                                     ; $7227: $01 $e5 $df
	ldh [rIE], a                                     ; $722a: $e0 $ff
	ld a, a                                          ; $722c: $7f
	ld [hl], h                                       ; $722d: $74
	push hl                                          ; $722e: $e5
	rlca                                             ; $722f: $07
	ret nz                                           ; $7230: $c0

	sbc [hl]                                         ; $7231: $9e
	ldh [rIF], a                                     ; $7232: $e0 $0f
	pop bc                                           ; $7234: $c1
	dec bc                                           ; $7235: $0b
	ret nz                                           ; $7236: $c0

	sbc l                                            ; $7237: $9d
	ldh a, [$e0]                                     ; $7238: $f0 $e0
	sbc $f0                                          ; $723a: $de $f0
	sbc l                                            ; $723c: $9d

jr_071_723d:
	ldh [$60], a                                     ; $723d: $e0 $60
	inc bc                                           ; $723f: $03
	ret nz                                           ; $7240: $c0

jr_071_7241:
	inc de                                           ; $7241: $13
	ret nz                                           ; $7242: $c0

	rst $18                                          ; $7243: $df
	ldh a, [$df]                                     ; $7244: $f0 $df
	ld h, b                                          ; $7246: $60
	ld a, [$0334]                                    ; $7247: $fa $34 $03
	db $fd                                           ; $724a: $fd
	db $dd                                           ; $724b: $dd
	ld bc, $029c                                     ; $724c: $01 $9c $02
	inc bc                                           ; $724f: $03
	ld [bc], a                                       ; $7250: $02
	call c, $dd03                                    ; $7251: $dc $03 $dd
	ld [bc], a                                       ; $7254: $02
	rst SubAFromBC                                          ; $7255: $e7
	db $db                                           ; $7256: $db
	ld bc, $d477                                     ; $7257: $01 $77 $d4
	ld l, a                                          ; $725a: $6f
	cp $df                                           ; $725b: $fe $df
	inc bc                                           ; $725d: $03
	di                                               ; $725e: $f3
	rst $18                                          ; $725f: $df
	jr nz, jr_071_7241                               ; $7260: $20 $df

	jr c, jr_071_71e4                                ; $7262: $38 $80

	cpl                                              ; $7264: $2f
	scf                                              ; $7265: $37
	rla                                              ; $7266: $17
	jr jr_071_7275                                   ; $7267: $18 $0c

	rrca                                             ; $7269: $0f
	inc bc                                           ; $726a: $03
	inc bc                                           ; $726b: $03
	rrca                                             ; $726c: $0f
	inc c                                            ; $726d: $0c
	dec e                                            ; $726e: $1d
	ld [de], a                                       ; $726f: $12
	jr c, jr_071_7299                                ; $7270: $38 $27

	ld [hl], e                                       ; $7272: $73
	ld c, a                                          ; $7273: $4f
	rst JumpTable                                          ; $7274: $c7

jr_071_7275:
	cp [hl]                                          ; $7275: $be
	sbc a                                            ; $7276: $9f
	ld a, h                                          ; $7277: $7c
	cpl                                              ; $7278: $2f
	add sp, $5c                                      ; $7279: $e8 $5c
	db $d3                                           ; $727b: $d3
	sbc c                                            ; $727c: $99
	sub a                                            ; $727d: $97
	ld [hl-], a                                      ; $727e: $32
	cpl                                              ; $727f: $2f
	inc sp                                           ; $7280: $33
	ld l, $65                                        ; $7281: $2e $65
	adc [hl]                                         ; $7283: $8e
	ld e, [hl]                                       ; $7284: $5e
	ld c, a                                          ; $7285: $4f
	ld a, h                                          ; $7286: $7c
	sub a                                            ; $7287: $97
	db $f4                                           ; $7288: $f4
	xor h                                            ; $7289: $ac
	db $eb                                           ; $728a: $eb
	xor h                                            ; $728b: $ac
	db $eb                                           ; $728c: $eb
	call $c9cb                                       ; $728d: $cd $cb $c9
	rst GetHLinHL                                          ; $7290: $cf
	adc d                                            ; $7291: $8a
	adc [hl]                                         ; $7292: $8e
	adc d                                            ; $7293: $8a
	adc [hl]                                         ; $7294: $8e
	db $db                                           ; $7295: $db

jr_071_7296:
	inc b                                            ; $7296: $04
	db $eb                                           ; $7297: $eb
	rst $18                                          ; $7298: $df

jr_071_7299:
	inc bc                                           ; $7299: $03
	add b                                            ; $729a: $80
	inc b                                            ; $729b: $04
	rlca                                             ; $729c: $07
	inc c                                            ; $729d: $0c
	rrca                                             ; $729e: $0f
	jr jr_071_72c0                                   ; $729f: $18 $1f

	jr nc, @+$41                                     ; $72a1: $30 $3f

	ld h, b                                          ; $72a3: $60
	ld a, a                                          ; $72a4: $7f
	ret nz                                           ; $72a5: $c0

	rst $38                                          ; $72a6: $ff
	ret nz                                           ; $72a7: $c0

	cp a                                             ; $72a8: $bf
	ldh [$df], a                                     ; $72a9: $e0 $df
	ld [hl], b                                       ; $72ab: $70
	rst GetHLinHL                                          ; $72ac: $cf
	jr c, jr_071_7296                                ; $72ad: $38 $e7

	inc e                                            ; $72af: $1c
	di                                               ; $72b0: $f3
	rrca                                             ; $72b1: $0f
	ld sp, hl                                        ; $72b2: $f9
	rlca                                             ; $72b3: $07
	db $fd                                           ; $72b4: $fd
	inc bc                                           ; $72b5: $03
	rst $38                                          ; $72b6: $ff
	inc bc                                           ; $72b7: $03
	rst $38                                          ; $72b8: $ff
	ld bc, $ff9e                                     ; $72b9: $01 $9e $ff
	rra                                              ; $72bc: $1f
	ld d, [hl]                                       ; $72bd: $56
	rst $18                                          ; $72be: $df
	inc bc                                           ; $72bf: $03

jr_071_72c0:
	add b                                            ; $72c0: $80
	ld b, $07                                        ; $72c1: $06 $07
	dec b                                            ; $72c3: $05
	ld b, $0b                                        ; $72c4: $06 $0b
	inc c                                            ; $72c6: $0c
	ld c, $09                                        ; $72c7: $0e $09
	dec d                                            ; $72c9: $15
	ld a, [de]                                       ; $72ca: $1a
	dec de                                           ; $72cb: $1b
	inc d                                            ; $72cc: $14
	dec de                                           ; $72cd: $1b
	inc d                                            ; $72ce: $14
	ld [hl], $29                                     ; $72cf: $36 $29
	ld [hl], $29                                     ; $72d1: $36 $29
	dec a                                            ; $72d3: $3d
	ld a, [hl+]                                      ; $72d4: $2a
	db $fc                                           ; $72d5: $fc
	ld a, [$eafc]                                    ; $72d6: $fa $fc $ea
	adc $4a                                          ; $72d9: $ce $4a
	adc $ca                                          ; $72db: $ce $ca
	ld a, a                                          ; $72dd: $7f
	jp c, $807d                                      ; $72de: $da $7d $80

	or $6f                                           ; $72e1: $f6 $6f
	push af                                          ; $72e3: $f5
	sbc e                                            ; $72e4: $9b
	db $ed                                           ; $72e5: $ed
	or $fb                                           ; $72e6: $f6 $fb
	db $fd                                           ; $72e8: $fd
	ld a, a                                          ; $72e9: $7f
	ld e, a                                          ; $72ea: $5f
	rst SubAFromBC                                          ; $72eb: $e7
	rst AddAOntoHL                                          ; $72ec: $ef
	pop af                                           ; $72ed: $f1
	and c                                            ; $72ee: $a1
	rst $38                                          ; $72ef: $ff
	ld d, a                                          ; $72f0: $57
	cp c                                             ; $72f1: $b9
	db $db                                           ; $72f2: $db
	ccf                                              ; $72f3: $3f
	call $973f                                       ; $72f4: $cd $3f $97
	ld a, h                                          ; $72f7: $7c
	cpl                                              ; $72f8: $2f
	push af                                          ; $72f9: $f5
	ld l, [hl]                                       ; $72fa: $6e
	push af                                          ; $72fb: $f5
	db $db                                           ; $72fc: $db
	and $fb                                          ; $72fd: $e6 $fb
	rst JumpTable                                          ; $72ff: $c7
	sub c                                            ; $7300: $91
	ld [hl], l                                       ; $7301: $75
	ld c, l                                          ; $7302: $4d
	ld [hl], l                                       ; $7303: $75
	ld c, l                                          ; $7304: $4d
	dec [hl]                                         ; $7305: $35
	dec l                                            ; $7306: $2d
	dec a                                            ; $7307: $3d
	dec h                                            ; $7308: $25
	dec a                                            ; $7309: $3d
	dec h                                            ; $730a: $25
	dec e                                            ; $730b: $1d
	dec d                                            ; $730c: $15
	inc e                                            ; $730d: $1c
	inc d                                            ; $730e: $14
	db $dd                                           ; $730f: $dd
	inc c                                            ; $7310: $0c
	rst $18                                          ; $7311: $df
	ld b, $6e                                        ; $7312: $06 $6e
	db $e4                                           ; $7314: $e4
	ld l, [hl]                                       ; $7315: $6e
	db $fc                                           ; $7316: $fc
	sub d                                            ; $7317: $92
	ld a, $3f                                        ; $7318: $3e $3f
	add $ff                                          ; $731a: $c6 $ff
	ld c, $ff                                        ; $731c: $0e $ff
	ld a, [bc]                                       ; $731e: $0a
	rst $38                                          ; $731f: $ff
	db $10                                           ; $7320: $10
	rst $38                                          ; $7321: $ff
	ld de, $21ff                                     ; $7322: $11 $ff $21
	ld a, e                                          ; $7325: $7b
	cp $98                                           ; $7326: $fe $98
	ld b, e                                          ; $7328: $43
	cp $43                                           ; $7329: $fe $43
	rst $38                                          ; $732b: $ff
	ld b, d                                          ; $732c: $42
	rst $38                                          ; $732d: $ff
	add b                                            ; $732e: $80
	ld [hl], e                                       ; $732f: $73
	cp $95                                           ; $7330: $fe $95
	nop                                              ; $7332: $00
	ld hl, sp+$03                                    ; $7333: $f8 $03
	db $e3                                           ; $7335: $e3
	rra                                              ; $7336: $1f
	sbc h                                            ; $7337: $9c
	ld a, a                                          ; $7338: $7f
	ld [hl], b                                       ; $7339: $70
	rst $18                                          ; $733a: $df
	rst $18                                          ; $733b: $df
	ccf                                              ; $733c: $3f
	ld l, b                                          ; $733d: $68
	add b                                            ; $733e: $80
	rlca                                             ; $733f: $07

jr_071_7340:
	ld b, $0c                                        ; $7340: $06 $0c
	rrca                                             ; $7342: $0f
	ld a, e                                          ; $7343: $7b
	ld a, h                                          ; $7344: $7c
	xor c                                            ; $7345: $a9
	rst $18                                          ; $7346: $df
	ld e, $ff                                        ; $7347: $1e $ff
	db $ec                                           ; $7349: $ec
	rra                                              ; $734a: $1f
	adc e                                            ; $734b: $8b
	ld a, a                                          ; $734c: $7f
	db $fd                                           ; $734d: $fd
	ld e, $8b                                        ; $734e: $1e $8b
	rrca                                             ; $7350: $0f
	rra                                              ; $7351: $1f
	inc c                                            ; $7352: $0c
	xor c                                            ; $7353: $a9
	ld e, [hl]                                       ; $7354: $5e
	rra                                              ; $7355: $1f
	adc a                                            ; $7356: $8f
	dec h                                            ; $7357: $25
	ld e, $4a                                        ; $7358: $1e $4a
	inc b                                            ; $735a: $04
	sub h                                            ; $735b: $94
	ld c, $a6                                        ; $735c: $0e $a6
	sub b                                            ; $735e: $90
	ld e, $2b                                        ; $735f: $1e $2b
	sbc [hl]                                         ; $7361: $9e
	ld c, [hl]                                       ; $7362: $4e
	cp e                                             ; $7363: $bb
	db $db                                           ; $7364: $db
	or c                                             ; $7365: $b1
	pop de                                           ; $7366: $d1
	or c                                             ; $7367: $b1
	ldh a, [$a0]                                     ; $7368: $f0 $a0
	ld h, b                                          ; $736a: $60
	and b                                            ; $736b: $a0
	rst $38                                          ; $736c: $ff
	ld a, a                                          ; $736d: $7f
	ldh [$c1], a                                     ; $736e: $e0 $c1
	sbc e                                            ; $7370: $9b
	db $fc                                           ; $7371: $fc
	add [hl]                                         ; $7372: $86
	cp $83                                           ; $7373: $fe $83
	halt                                             ; $7375: $76
	reti                                             ; $7376: $d9


	ld a, e                                          ; $7377: $7b
	cp $9d                                           ; $7378: $fe $9d
	ld a, h                                          ; $737a: $7c
	add e                                            ; $737b: $83
	ld [hl], e                                       ; $737c: $73
	ld sp, hl                                        ; $737d: $f9
	ld a, e                                          ; $737e: $7b
	cp $7f                                           ; $737f: $fe $7f
	db $fd                                           ; $7381: $fd
	rst $18                                          ; $7382: $df
	rst $38                                          ; $7383: $ff
	ld h, a                                          ; $7384: $67
	push af                                          ; $7385: $f5
	db $f4                                           ; $7386: $f4
	rst $18                                          ; $7387: $df
	ccf                                              ; $7388: $3f
	add b                                            ; $7389: $80
	rst GetHLinHL                                          ; $738a: $cf
	ldh a, [rP1]                                     ; $738b: $f0 $00
	rst $38                                          ; $738d: $ff
	cp $01                                           ; $738e: $fe $01
	ld a, c                                          ; $7390: $79
	cp $fe                                           ; $7391: $fe $fe
	add c                                            ; $7393: $81
	add e                                            ; $7394: $83
	nop                                              ; $7395: $00
	db $f4                                           ; $7396: $f4
	ld hl, sp-$12                                    ; $7397: $f8 $ee
	inc e                                            ; $7399: $1c
	adc e                                            ; $739a: $8b
	ld b, $e7                                        ; $739b: $06 $e7
	ret nz                                           ; $739d: $c0

	db $eb                                           ; $739e: $eb
	jr nc, jr_071_73d2                               ; $739f: $30 $31

	jr jr_071_7340                                   ; $73a1: $18 $9d

	ld [$84cc], sp                                   ; $73a3: $08 $cc $84
	xor $44                                          ; $73a6: $ee $44
	dec [hl]                                         ; $73a8: $35
	adc a                                            ; $73a9: $8f
	ld b, d                                          ; $73aa: $42
	ld d, l                                          ; $73ab: $55
	ld [hl+], a                                      ; $73ac: $22
	ld a, [hl-]                                      ; $73ad: $3a
	ld hl, $31ea                                     ; $73ae: $21 $ea $31
	ld d, a                                          ; $73b1: $57
	cp b                                             ; $73b2: $b8
	ld a, e                                          ; $73b3: $7b
	sbc h                                            ; $73b4: $9c
	or h                                             ; $73b5: $b4
	rst $18                                          ; $73b6: $df
	jp c, $ef6f                                      ; $73b7: $da $6f $ef

	ld [hl+], a                                      ; $73ba: $22
	add b                                            ; $73bb: $80
	ldh [$d9], a                                     ; $73bc: $e0 $d9
	sbc l                                            ; $73be: $9d
	ld b, d                                          ; $73bf: $42

Call_071_73c0:
	ld h, d                                          ; $73c0: $62
	sbc $02                                          ; $73c1: $de $02
	rst $18                                          ; $73c3: $df
	jp nz, $f287                                     ; $73c4: $c2 $87 $f2

	ldh [c], a                                       ; $73c7: $e2
	ld a, $fe                                        ; $73c8: $3e $fe
	ld e, $ff                                        ; $73ca: $1e $ff
	add l                                            ; $73cc: $85
	ld a, [hl]                                       ; $73cd: $7e
	ldh [c], a                                       ; $73ce: $e2
	rra                                              ; $73cf: $1f
	ld sp, hl                                        ; $73d0: $f9
	rlca                                             ; $73d1: $07

jr_071_73d2:
	rst $38                                          ; $73d2: $ff
	nop                                              ; $73d3: $00
	ccf                                              ; $73d4: $3f
	add c                                            ; $73d5: $81
	add a                                            ; $73d6: $87
	pop af                                           ; $73d7: $f1
	pop af                                           ; $73d8: $f1
	cp $1e                                           ; $73d9: $fe $1e
	cp $02                                           ; $73db: $fe $02
	rst $38                                          ; $73dd: $ff
	ld c, c                                          ; $73de: $49
	and b                                            ; $73df: $a0
	rst $18                                          ; $73e0: $df
	ldh a, [$80]                                     ; $73e1: $f0 $80
	rst AddAOntoHL                                          ; $73e3: $ef
	rra                                              ; $73e4: $1f
	ld b, [hl]                                       ; $73e5: $46
	add c                                            ; $73e6: $81
	ld l, c                                          ; $73e7: $69
	ldh a, [$db]                                     ; $73e8: $f0 $db
	inc a                                            ; $73ea: $3c
	halt                                             ; $73eb: $76
	adc a                                            ; $73ec: $8f
	dec de                                           ; $73ed: $1b
	rst SubAFromBC                                          ; $73ee: $e7
	or [hl]                                          ; $73ef: $b6
	ld e, c                                          ; $73f0: $59
	ld e, d                                          ; $73f1: $5a
	inc l                                            ; $73f2: $2c
	dec l                                            ; $73f3: $2d
	ld d, $96                                        ; $73f4: $16 $96
	dec bc                                           ; $73f6: $0b
	ld b, a                                          ; $73f7: $47
	adc e                                            ; $73f8: $8b
	ld c, e                                          ; $73f9: $4b
	add l                                            ; $73fa: $85
	and e                                            ; $73fb: $a3
	ld b, h                                          ; $73fc: $44
	or l                                             ; $73fd: $b5
	ld b, d                                          ; $73fe: $42
	ld d, [hl]                                       ; $73ff: $56
	inc hl                                           ; $7400: $23
	dec e                                            ; $7401: $1d
	adc a                                            ; $7402: $8f
	inc hl                                           ; $7403: $23
	cp a                                             ; $7404: $bf
	ld de, $19f6                                     ; $7405: $11 $f6 $19
	rst $38                                          ; $7408: $ff
	sbc b                                            ; $7409: $98
	xor e                                            ; $740a: $ab
	call c, $ee5d                                    ; $740b: $dc $5d $ee
	ld h, [hl]                                       ; $740e: $66
	rst $38                                          ; $740f: $ff
	inc sp                                           ; $7410: $33
	rst $38                                          ; $7411: $ff
	add hl, hl                                       ; $7412: $29
	inc bc                                           ; $7413: $03
	ld h, b                                          ; $7414: $60
	pop hl                                           ; $7415: $e1
	add b                                            ; $7416: $80
	add h                                            ; $7417: $84
	add [hl]                                         ; $7418: $86
	add c                                            ; $7419: $81
	add c                                            ; $741a: $81
	add e                                            ; $741b: $83
	add e                                            ; $741c: $83
	adc a                                            ; $741d: $8f
	adc h                                            ; $741e: $8c
	cp a                                             ; $741f: $bf
	ldh a, [rIE]                                     ; $7420: $f0 $ff
	db $e3                                           ; $7422: $e3
	rst $38                                          ; $7423: $ff
	ld b, a                                          ; $7424: $47
	ld sp, hl                                        ; $7425: $f9
	adc e                                            ; $7426: $8b
	ldh a, [$97]                                     ; $7427: $f0 $97
	ldh [$af], a                                     ; $7429: $e0 $af
	ret nz                                           ; $742b: $c0

	rst $18                                          ; $742c: $df
	add c                                            ; $742d: $81
	cp a                                             ; $742e: $bf
	ld [bc], a                                       ; $742f: $02
	ld a, [hl]                                       ; $7430: $7e
	dec h                                            ; $7431: $25
	db $fd                                           ; $7432: $fd
	ld c, e                                          ; $7433: $4b
	ei                                               ; $7434: $fb
	sub a                                            ; $7435: $97
	sbc [hl]                                         ; $7436: $9e
	or $ef                                           ; $7437: $f6 $ef
	rst $18                                          ; $7439: $df
	ret nz                                           ; $743a: $c0

	add b                                            ; $743b: $80
	or b                                             ; $743c: $b0
	ld [hl], b                                       ; $743d: $70
	add sp, $18                                      ; $743e: $e8 $18
	db $f4                                           ; $7440: $f4
	inc c                                            ; $7441: $0c
	cp d                                             ; $7442: $ba
	add $e3                                          ; $7443: $c6 $e3
	rst $38                                          ; $7445: $ff
	cp c                                             ; $7446: $b9
	ld a, a                                          ; $7447: $7f
	rlca                                             ; $7448: $07
	ccf                                              ; $7449: $3f
	nop                                              ; $744a: $00
	rst GetHLinHL                                          ; $744b: $cf
	ldh [rIE], a                                     ; $744c: $e0 $ff
	inc e                                            ; $744e: $1c
	rst $38                                          ; $744f: $ff
	add e                                            ; $7450: $83
	rst $38                                          ; $7451: $ff
	ld h, b                                          ; $7452: $60
	rst $38                                          ; $7453: $ff
	ld a, h                                          ; $7454: $7c
	rst $38                                          ; $7455: $ff
	ccf                                              ; $7456: $3f
	db $e3                                           ; $7457: $e3
	rra                                              ; $7458: $1f
	ldh a, [hDisp1_LCDC]                                     ; $7459: $f0 $8f
	sbc c                                            ; $745b: $99
	ld hl, sp-$39                                    ; $745c: $f8 $c7
	db $fc                                           ; $745e: $fc
	ld b, e                                          ; $745f: $43
	cp $21                                           ; $7460: $fe $21
	ld a, e                                          ; $7462: $7b
	db $ec                                           ; $7463: $ec
	sbc h                                            ; $7464: $9c
	dec bc                                           ; $7465: $0b
	rst $38                                          ; $7466: $ff

jr_071_7467:
	add h                                            ; $7467: $84
	inc bc                                           ; $7468: $03
	ld h, b                                          ; $7469: $60
	pop hl                                           ; $746a: $e1
	ld a, h                                          ; $746b: $7c
	db $eb                                           ; $746c: $eb
	ld a, c                                          ; $746d: $79
	sub c                                            ; $746e: $91
	sbc e                                            ; $746f: $9b

jr_071_7470:
	rlca                                             ; $7470: $07
	ld hl, sp+$3f                                    ; $7471: $f8 $3f
	ret nz                                           ; $7473: $c0

	ld a, d                                          ; $7474: $7a
	inc sp                                           ; $7475: $33
	ld a, [hl]                                       ; $7476: $7e
	add $95                                          ; $7477: $c6 $95
	sbc b                                            ; $7479: $98
	ld hl, sp-$1d                                    ; $747a: $f8 $e3
	db $e3                                           ; $747c: $e3
	ld c, a                                          ; $747d: $4f
	call z, $b8bf                                    ; $747e: $cc $bf $b8
	ld a, a                                          ; $7481: $7f
	ld h, b                                          ; $7482: $60
	ld [hl], e                                       ; $7483: $73
	add sp, $7a                                      ; $7484: $e8 $7a
	jr nz, jr_071_7467                               ; $7486: $20 $df

	add b                                            ; $7488: $80
	add b                                            ; $7489: $80
	ld b, b                                          ; $748a: $40
	ret nz                                           ; $748b: $c0

	ld b, b                                          ; $748c: $40
	ret nz                                           ; $748d: $c0

	jr nz, jr_071_7470                               ; $748e: $20 $e0

	and b                                            ; $7490: $a0
	ldh [rSVBK], a                                   ; $7491: $e0 $70
	ldh a, [rAUD1SWEEP]                              ; $7493: $f0 $10
	ldh a, [$d0]                                     ; $7495: $f0 $d0
	ldh a, [$f0]                                     ; $7497: $f0 $f0
	jr nc, @+$01                                     ; $7499: $30 $ff

	rrca                                             ; $749b: $0f
	ld hl, sp+$0f                                    ; $749c: $f8 $0f
	db $fc                                           ; $749e: $fc
	rrca                                             ; $749f: $0f
	ei                                               ; $74a0: $fb
	rrca                                             ; $74a1: $0f
	ld hl, sp-$31                                    ; $74a2: $f8 $cf
	ld hl, sp-$01                                    ; $74a4: $f8 $ff
	inc c                                            ; $74a6: $0c
	rst $38                                          ; $74a7: $ff
	ld a, [de]                                       ; $74a8: $1a
	add e                                            ; $74a9: $83
	rst $38                                          ; $74aa: $ff
	jp hl                                            ; $74ab: $e9


	rst $38                                          ; $74ac: $ff
	sbc b                                            ; $74ad: $98
	rst $38                                          ; $74ae: $ff
	add hl, de                                       ; $74af: $19
	cp $34                                           ; $74b0: $fe $34
	rst $38                                          ; $74b2: $ff
	ld a, [hl+]                                      ; $74b3: $2a
	rst FarCall                                          ; $74b4: $f7
	ld h, l                                          ; $74b5: $65
	ei                                               ; $74b6: $fb
	rst JumpTable                                          ; $74b7: $c7
	ld sp, hl                                        ; $74b8: $f9
	and d                                            ; $74b9: $a2
	db $fd                                           ; $74ba: $fd
	sub e                                            ; $74bb: $93
	db $fc                                           ; $74bc: $fc
	add hl, de                                       ; $74bd: $19
	cp $0d                                           ; $74be: $fe $0d
	cp $2d                                           ; $74c0: $fe $2d
	sbc $2a                                          ; $74c2: $de $2a
	db $db                                           ; $74c4: $db
	xor d                                            ; $74c5: $aa
	ld a, c                                          ; $74c6: $79
	ld a, c                                          ; $74c7: $79
	sbc d                                            ; $74c8: $9a
	sub b                                            ; $74c9: $90
	ldh a, [hDisp1_SCY]                                     ; $74ca: $f0 $90
	ldh a, [$a0]                                     ; $74cc: $f0 $a0
	ld a, e                                          ; $74ce: $7b
	jp nz, $c0df                                     ; $74cf: $c2 $df $c0

	db $db                                           ; $74d2: $db
	add b                                            ; $74d3: $80
	rst $18                                          ; $74d4: $df
	ret nz                                           ; $74d5: $c0

	sbc d                                            ; $74d6: $9a
	ld h, b                                          ; $74d7: $60
	ldh [$7f], a                                     ; $74d8: $e0 $7f
	rst $38                                          ; $74da: $ff
	ld sp, $0a79                                     ; $74db: $31 $79 $0a
	sub h                                            ; $74de: $94
	jr @+$01                                         ; $74df: $18 $ff

	inc d                                            ; $74e1: $14
	rst $38                                          ; $74e2: $ff
	add [hl]                                         ; $74e3: $86
	rst $38                                          ; $74e4: $ff
	jp $c1ff                                         ; $74e5: $c3 $ff $c1


	ld a, a                                          ; $74e8: $7f
	ldh [$7b], a                                     ; $74e9: $e0 $7b
	sub a                                            ; $74eb: $97
	sub e                                            ; $74ec: $93
	rrca                                             ; $74ed: $0f
	rst $38                                          ; $74ee: $ff
	ldh a, [$f0]                                     ; $74ef: $f0 $f0
	rrca                                             ; $74f1: $0f
	rrca                                             ; $74f2: $0f
	ld sp, hl                                        ; $74f3: $f9
	ld sp, hl                                        ; $74f4: $f9
	db $fd                                           ; $74f5: $fd
	dec c                                            ; $74f6: $0d
	db $fc                                           ; $74f7: $fc
	inc b                                            ; $74f8: $04
	ld a, d                                          ; $74f9: $7a
	ld b, [hl]                                       ; $74fa: $46
	sbc d                                            ; $74fb: $9a
	halt                                             ; $74fc: $76
	rst $38                                          ; $74fd: $ff
	call $19ff                                       ; $74fe: $cd $ff $19
	ld a, e                                          ; $7501: $7b
	reti                                             ; $7502: $d9


	ldh a, [c]                                       ; $7503: $f2
	rst $18                                          ; $7504: $df
	db $10                                           ; $7505: $10
	rst $18                                          ; $7506: $df
	ld [hl], b                                       ; $7507: $70
	sbc c                                            ; $7508: $99
	ret nc                                           ; $7509: $d0

	or b                                             ; $750a: $b0
	and b                                            ; $750b: $a0
	ld h, b                                          ; $750c: $60
	ret nz                                           ; $750d: $c0

	ret nz                                           ; $750e: $c0

	halt                                             ; $750f: $76
	ret c                                            ; $7510: $d8

	add b                                            ; $7511: $80
	ldh [rAUD4LEN], a                                ; $7512: $e0 $20
	ld [hl], b                                       ; $7514: $70
	sub b                                            ; $7515: $90
	jr c, @-$36                                      ; $7516: $38 $c8

	adc h                                            ; $7518: $8c
	db $f4                                           ; $7519: $f4
	and $fa                                          ; $751a: $e6 $fa
	ld d, d                                          ; $751c: $52
	sbc $a9                                          ; $751d: $de $a9
	ld l, a                                          ; $751f: $6f
	push hl                                          ; $7520: $e5
	daa                                              ; $7521: $27
	ld d, e                                          ; $7522: $53
	or e                                             ; $7523: $b3
	inc sp                                           ; $7524: $33
	db $d3                                           ; $7525: $d3
	cp c                                             ; $7526: $b9
	ret                                              ; $7527: $c9


	reti                                             ; $7528: $d9


	jp hl                                            ; $7529: $e9


	or h                                             ; $752a: $b4
	xor h                                            ; $752b: $ac
	ld d, h                                          ; $752c: $54
	call c, $dc54                                    ; $752d: $dc $54 $dc
	ld c, h                                          ; $7530: $4c
	sbc b                                            ; $7531: $98
	call z, $cc4c                                    ; $7532: $cc $4c $cc
	ld b, h                                          ; $7535: $44
	call nz, $8484                                   ; $7536: $c4 $84 $84
	db $dd                                           ; $7539: $dd

jr_071_753a:
	add b                                            ; $753a: $80
	ld a, $9c                                        ; $753b: $3e $9c
	ld a, a                                          ; $753d: $7f
	ld [hl-], a                                      ; $753e: $32
	sub [hl]                                         ; $753f: $96
	jr jr_071_753a                                   ; $7540: $18 $f8

	inc c                                            ; $7542: $0c
	db $fc                                           ; $7543: $fc
	ld b, $fe                                        ; $7544: $06 $fe
	inc bc                                           ; $7546: $03
	rst $38                                          ; $7547: $ff
	add c                                            ; $7548: $81
	ld a, e                                          ; $7549: $7b
	dec d                                            ; $754a: $15
	ld a, a                                          ; $754b: $7f
	ld de, $617e                                     ; $754c: $11 $7e $61
	adc d                                            ; $754f: $8a
	jr jr_071_7571                                   ; $7550: $18 $1f

	db $fc                                           ; $7552: $fc
	cp $00                                           ; $7553: $fe $00
	db $fc                                           ; $7555: $fc
	ld bc, $83f9                                     ; $7556: $01 $f9 $83
	di                                               ; $7559: $f3
	add [hl]                                         ; $755a: $86
	rst SubAFromBC                                          ; $755b: $e7
	ld c, h                                          ; $755c: $4c
	ld c, a                                          ; $755d: $4f
	ld e, b                                          ; $755e: $58
	ld e, a                                          ; $755f: $5f
	or b                                             ; $7560: $b0
	cp a                                             ; $7561: $bf
	ldh [$7f], a                                     ; $7562: $e0 $7f
	ldh [$78], a                                     ; $7564: $e0 $78
	ret nz                                           ; $7566: $c0

	ld [hl], e                                       ; $7567: $73
	ld c, h                                          ; $7568: $4c
	ld a, b                                          ; $7569: $78
	or h                                             ; $756a: $b4
	sub a                                            ; $756b: $97
	ldh a, [rSVBK]                                   ; $756c: $f0 $70
	ret nc                                           ; $756e: $d0

	ld [hl], b                                       ; $756f: $70
	sub b                                            ; $7570: $90

jr_071_7571:
	ldh a, [$08]                                     ; $7571: $f0 $08
	ld hl, sp+$67                                    ; $7573: $f8 $67
	cp $7e                                           ; $7575: $fe $7e
	ldh a, [c]                                       ; $7577: $f2
	sbc [hl]                                         ; $7578: $9e
	jr c, jr_071_75f6                                ; $7579: $38 $7b

	ld a, [$0023]                                    ; $757b: $fa $23 $00
	sbc l                                            ; $757e: $9d
	adc b                                            ; $757f: $88
	call z, $88de                                    ; $7580: $cc $de $88
	sub e                                            ; $7583: $93
	cp e                                             ; $7584: $bb
	adc b                                            ; $7585: $88
	add b                                            ; $7586: $80
	adc b                                            ; $7587: $88
	call z, $8811                                    ; $7588: $cc $11 $88
	nop                                              ; $758b: $00
	sbc c                                            ; $758c: $99
	sbc c                                            ; $758d: $99
	ld de, $6380                                     ; $758e: $11 $80 $63
	ei                                               ; $7591: $fb
	sbc l                                            ; $7592: $9d
	adc b                                            ; $7593: $88
	ld h, [hl]                                       ; $7594: $66
	ld a, e                                          ; $7595: $7b
	ei                                               ; $7596: $fb
	sbc [hl]                                         ; $7597: $9e
	xor $77                                          ; $7598: $ee $77
	add sp, $7b                                      ; $759a: $e8 $7b
	db $fc                                           ; $759c: $fc
	sbc [hl]                                         ; $759d: $9e
	cp e                                             ; $759e: $bb
	sbc $01                                          ; $759f: $de $01
	add b                                            ; $75a1: $80
	rst FarCall                                          ; $75a2: $f7
	rst GetHLinHL                                          ; $75a3: $cf
	rst AddAOntoHL                                          ; $75a4: $ef
	sbc h                                            ; $75a5: $9c
	rst FarCall                                          ; $75a6: $f7
	jr c, jr_071_75e8                                ; $75a7: $38 $3f

	nop                                              ; $75a9: $00
	inc c                                            ; $75aa: $0c
	inc bc                                           ; $75ab: $03
	dec de                                           ; $75ac: $1b
	rlca                                             ; $75ad: $07
	sbc [hl]                                         ; $75ae: $9e
	ld c, $bc                                        ; $75af: $0e $bc
	inc a                                            ; $75b1: $3c
	sub a                                            ; $75b2: $97
	sub a                                            ; $75b3: $97
	push bc                                          ; $75b4: $c5
	add a                                            ; $75b5: $87
	push bc                                          ; $75b6: $c5
	add l                                            ; $75b7: $85
	ld b, d                                          ; $75b8: $42
	jp nz, Jump_071_47eb                             ; $75b9: $c2 $eb $47

	ldh [$c0], a                                     ; $75bc: $e0 $c0
	ld h, l                                          ; $75be: $65
	ldh [$f2], a                                     ; $75bf: $e0 $f2
	add b                                            ; $75c1: $80
	ld h, b                                          ; $75c2: $60
	rst $38                                          ; $75c3: $ff
	ld [hl], b                                       ; $75c4: $70
	rst $18                                          ; $75c5: $df
	ld e, b                                          ; $75c6: $58
	rst GetHLinHL                                          ; $75c7: $cf
	ld c, h                                          ; $75c8: $4c
	add a                                            ; $75c9: $87
	add [hl]                                         ; $75ca: $86
	add e                                            ; $75cb: $83
	add e                                            ; $75cc: $83
	adc a                                            ; $75cd: $8f
	adc a                                            ; $75ce: $8f
	ld sp, $473f                                     ; $75cf: $31 $3f $47
	ld a, [hl]                                       ; $75d2: $7e
	adc a                                            ; $75d3: $8f
	db $fd                                           ; $75d4: $fd
	adc a                                            ; $75d5: $8f
	ld hl, sp+$1f                                    ; $75d6: $f8 $1f
	ld hl, sp+$23                                    ; $75d8: $f8 $23
	db $e4                                           ; $75da: $e4
	dec l                                            ; $75db: $2d
	xor $4a                                          ; $75dc: $ee $4a
	rst GetHLinHL                                          ; $75de: $cf
	ld c, e                                          ; $75df: $4b
	call $8798                                       ; $75e0: $cd $98 $87
	add h                                            ; $75e3: $84
	sub l                                            ; $75e4: $95
	inc e                                            ; $75e5: $1c
	ld c, $0e                                        ; $75e6: $0e $0e

jr_071_75e8:
	ret nz                                           ; $75e8: $c0

	cp a                                             ; $75e9: $bf
	ldh [rSVBK], a                                   ; $75ea: $e0 $70
	add b                                            ; $75ec: $80
	add b                                            ; $75ed: $80
	ldh a, [$c0]                                     ; $75ee: $f0 $c0
	ld [hl], b                                       ; $75f0: $70
	ld h, b                                          ; $75f1: $60
	ldh a, [$e0]                                     ; $75f2: $f0 $e0
	ldh a, [$c0]                                     ; $75f4: $f0 $c0

jr_071_75f6:
	ld b, b                                          ; $75f6: $40
	ret nz                                           ; $75f7: $c0

	ld b, b                                          ; $75f8: $40
	ld b, b                                          ; $75f9: $40
	add d                                            ; $75fa: $82
	add b                                            ; $75fb: $80
	ld b, e                                          ; $75fc: $43
	add b                                            ; $75fd: $80
	rlca                                             ; $75fe: $07
	ld [bc], a                                       ; $75ff: $02
	ld h, a                                          ; $7600: $67
	ld [bc], a                                       ; $7601: $02
	add e                                            ; $7602: $83
	nop                                              ; $7603: $00
	sbc h                                            ; $7604: $9c
	rst FarCall                                          ; $7605: $f7
	ld l, [hl]                                       ; $7606: $6e
	ld a, e                                          ; $7607: $7b
	rra                                              ; $7608: $1f
	dec e                                            ; $7609: $1d
	rra                                              ; $760a: $1f
	nop                                              ; $760b: $00
	adc h                                            ; $760c: $8c
	jr c, jr_071_7616                                ; $760d: $38 $07

	ld a, a                                          ; $760f: $7f
	rrca                                             ; $7610: $0f
	ld a, c                                          ; $7611: $79
	add hl, de                                       ; $7612: $19
	ld a, h                                          ; $7613: $7c
	inc e                                            ; $7614: $1c
	ccf                                              ; $7615: $3f

jr_071_7616:
	rrca                                             ; $7616: $0f
	ld a, [bc]                                       ; $7617: $0a
	rrca                                             ; $7618: $0f
	ld a, [bc]                                       ; $7619: $0a
	ld a, [bc]                                       ; $761a: $0a
	dec b                                            ; $761b: $05
	dec b                                            ; $761c: $05
	dec bc                                           ; $761d: $0b
	rlca                                             ; $761e: $07
	adc e                                            ; $761f: $8b
	cp [hl]                                          ; $7620: $be
	sub h                                            ; $7621: $94
	ld bc, $80e2                                     ; $7622: $01 $e2 $80
	rst $38                                          ; $7625: $ff
	ld a, c                                          ; $7626: $79
	rst $18                                          ; $7627: $df
	cp a                                             ; $7628: $bf
	rst SubAFromBC                                          ; $7629: $e7
	cp $73                                           ; $762a: $fe $73
	cp $03                                           ; $762c: $fe $03
	ld a, [hl]                                       ; $762e: $7e
	add e                                            ; $762f: $83
	rst $38                                          ; $7630: $ff
	jp $f2ff                                         ; $7631: $c3 $ff $f2


	cp l                                             ; $7634: $bd
	and [hl]                                         ; $7635: $a6
	cp l                                             ; $7636: $bd
	add [hl]                                         ; $7637: $86
	cp a                                             ; $7638: $bf
	add l                                            ; $7639: $85
	ld a, l                                          ; $763a: $7d
	dec bc                                           ; $763b: $0b
	ld a, e                                          ; $763c: $7b
	adc a                                            ; $763d: $8f
	rst AddAOntoHL                                          ; $763e: $ef
	rra                                              ; $763f: $1f
	ei                                               ; $7640: $fb
	rra                                              ; $7641: $1f
	rst $18                                          ; $7642: $df
	dec sp                                           ; $7643: $3b
	add b                                            ; $7644: $80
	cp $3a                                           ; $7645: $fe $3a
	xor $6a                                          ; $7647: $ee $6a
	adc $ca                                          ; $7649: $ce $ca
	add h                                            ; $764b: $84
	add h                                            ; $764c: $84
	db $fc                                           ; $764d: $fc
	db $fc                                           ; $764e: $fc
	ld c, $fe                                        ; $764f: $0e $fe
	inc bc                                           ; $7651: $03
	rst $38                                          ; $7652: $ff
	pop bc                                           ; $7653: $c1
	rst $38                                          ; $7654: $ff
	ldh [$7f], a                                     ; $7655: $e0 $7f
	ldh a, [$3f]                                     ; $7657: $f0 $3f
	ld hl, sp+$2f                                    ; $7659: $f8 $2f
	db $fc                                           ; $765b: $fc
	ld b, a                                          ; $765c: $47
	cp $e7                                           ; $765d: $fe $e7
	cp $e3                                           ; $765f: $fe $e3
	rst $38                                          ; $7661: $ff
	and c                                            ; $7662: $a1
	rst $38                                          ; $7663: $ff
	sbc [hl]                                         ; $7664: $9e
	ld b, c                                          ; $7665: $41
	ld h, a                                          ; $7666: $67
	ld b, b                                          ; $7667: $40
	sbc [hl]                                         ; $7668: $9e
	rrca                                             ; $7669: $0f
	cp a                                             ; $766a: $bf
	rra                                              ; $766b: $1f
	sub e                                            ; $766c: $93
	sbc b                                            ; $766d: $98
	rrca                                             ; $766e: $0f
	xor h                                            ; $766f: $ac
	inc e                                            ; $7670: $1c
	cp a                                             ; $7671: $bf
	cp a                                             ; $7672: $bf
	push de                                          ; $7673: $d5
	sub a                                            ; $7674: $97
	ld d, a                                          ; $7675: $57
	ld b, b                                          ; $7676: $40
	ld h, a                                          ; $7677: $67
	ld h, b                                          ; $7678: $60
	sbc [hl]                                         ; $7679: $9e
	ldh a, [$bf]                                     ; $767a: $f0 $bf
	ldh a, [$b0]                                     ; $767c: $f0 $b0
	sbc d                                            ; $767e: $9a
	ret nz                                           ; $767f: $c0

	ret nc                                           ; $7680: $d0

	ldh [$f0], a                                     ; $7681: $e0 $f0
	ldh [$2f], a                                     ; $7683: $e0 $2f
	ld h, b                                          ; $7685: $60
	ld a, a                                          ; $7686: $7f
	cp [hl]                                          ; $7687: $be
	sub a                                            ; $7688: $97
	ld a, a                                          ; $7689: $7f
	nop                                              ; $768a: $00
	ld [hl], a                                       ; $768b: $77
	rrca                                             ; $768c: $0f
	ld l, h                                          ; $768d: $6c
	inc e                                            ; $768e: $1c
	ccf                                              ; $768f: $3f
	rra                                              ; $7690: $1f
	daa                                              ; $7691: $27
	ld h, b                                          ; $7692: $60
	ld a, a                                          ; $7693: $7f
	cp $97                                           ; $7694: $fe $97
	ccf                                              ; $7696: $3f
	jp $e2df                                         ; $7697: $c3 $df $e2


	db $fd                                           ; $769a: $fd
	or $bd                                           ; $769b: $f6 $bd
	and [hl]                                         ; $769d: $a6
	ld d, a                                          ; $769e: $57
	ld h, b                                          ; $769f: $60
	ld l, a                                          ; $76a0: $6f
	add b                                            ; $76a1: $80
	ld a, a                                          ; $76a2: $7f
	ret nz                                           ; $76a3: $c0

	ld a, a                                          ; $76a4: $7f
	add b                                            ; $76a5: $80
	ld a, a                                          ; $76a6: $7f
	cp $9e                                           ; $76a7: $fe $9e
	adc a                                            ; $76a9: $8f
	cp a                                             ; $76aa: $bf
	sbc a                                            ; $76ab: $9f
	cp a                                             ; $76ac: $bf
	ld a, [hl]                                       ; $76ad: $7e
	rst $18                                          ; $76ae: $df
	ld a, a                                          ; $76af: $7f
	ld a, [hl]                                       ; $76b0: $7e
	sbc [hl]                                         ; $76b1: $9e
	sub l                                            ; $76b2: $95
	cpl                                              ; $76b3: $2f
	add b                                            ; $76b4: $80
	ld l, a                                          ; $76b5: $6f
	ld a, h                                          ; $76b6: $7c
	sbc l                                            ; $76b7: $9d
	ld [hl], b                                       ; $76b8: $70
	ldh [$27], a                                     ; $76b9: $e0 $27
	add b                                            ; $76bb: $80
	ld [hl], a                                       ; $76bc: $77
	cp $9b                                           ; $76bd: $fe $9b
	cpl                                              ; $76bf: $2f
	rra                                              ; $76c0: $1f
	ld a, [hl-]                                      ; $76c1: $3a
	ccf                                              ; $76c2: $3f
	daa                                              ; $76c3: $27
	add b                                            ; $76c4: $80
	sub l                                            ; $76c5: $95
	rst $38                                          ; $76c6: $ff
	inc bc                                           ; $76c7: $03
	rst $38                                          ; $76c8: $ff
	ld [bc], a                                       ; $76c9: $02
	db $fd                                           ; $76ca: $fd
	add $fd                                          ; $76cb: $c6 $fd
	or $bf                                           ; $76cd: $f6 $bf
	and l                                            ; $76cf: $a5
	ld e, a                                          ; $76d0: $5f
	add b                                            ; $76d1: $80
	sub [hl]                                         ; $76d2: $96
	ei                                               ; $76d3: $fb
	rst JumpTable                                          ; $76d4: $c7
	rst FarCall                                          ; $76d5: $f7
	adc a                                            ; $76d6: $8f
	rst AddAOntoHL                                          ; $76d7: $ef
	inc e                                            ; $76d8: $1c
	ccf                                              ; $76d9: $3f
	jr nc, jr_071_76eb                               ; $76da: $30 $0f

	cp l                                             ; $76dc: $bd
	rlca                                             ; $76dd: $07
	add a                                            ; $76de: $87
	add a                                            ; $76df: $87
	add a                                            ; $76e0: $87
	sub [hl]                                         ; $76e1: $96
	add b                                            ; $76e2: $80
	rst GetHLinHL                                          ; $76e3: $cf
	add b                                            ; $76e4: $80
	rst $18                                          ; $76e5: $df
	add b                                            ; $76e6: $80
	ld e, d                                          ; $76e7: $5a
	call c, Call_071_4fef                            ; $76e8: $dc $ef $4f

jr_071_76eb:
	ld l, a                                          ; $76eb: $6f
	add b                                            ; $76ec: $80
	sbc h                                            ; $76ed: $9c
	dec d                                            ; $76ee: $15
	sbc h                                            ; $76ef: $9c
	adc [hl]                                         ; $76f0: $8e
	ld d, e                                          ; $76f1: $53
	add b                                            ; $76f2: $80
	ld [hl], a                                       ; $76f3: $77
	cp $7f                                           ; $76f4: $fe $7f
	ldh a, [c]                                       ; $76f6: $f2
	sbc e                                            ; $76f7: $9b
	and d                                            ; $76f8: $a2
	ld h, b                                          ; $76f9: $60
	jp $2fc0                                         ; $76fa: $c3 $c0 $2f


	add b                                            ; $76fd: $80
	ld a, a                                          ; $76fe: $7f
	ld hl, sp+$7f                                    ; $76ff: $f8 $7f
	cp $7f                                           ; $7701: $fe $7f
	ldh a, [c]                                       ; $7703: $f2
	sbc e                                            ; $7704: $9b
	dec d                                            ; $7705: $15
	jr jr_071_7717                                   ; $7706: $18 $0f

	rrca                                             ; $7708: $0f
	dec hl                                           ; $7709: $2b
	add b                                            ; $770a: $80
	sub [hl]                                         ; $770b: $96
	ld b, $fd                                        ; $770c: $06 $fd
	ld b, $ff                                        ; $770e: $06 $ff
	dec b                                            ; $7710: $05
	ld a, l                                          ; $7711: $7d
	db $eb                                           ; $7712: $eb
	ei                                               ; $7713: $fb
	rst GetHLinHL                                          ; $7714: $cf
	ld l, a                                          ; $7715: $6f
	add b                                            ; $7716: $80

jr_071_7717:
	rst $38                                          ; $7717: $ff
	sbc h                                            ; $7718: $9c
	rlca                                             ; $7719: $07
	inc b                                            ; $771a: $04
	nop                                              ; $771b: $00
	cp [hl]                                          ; $771c: $be
	inc bc                                           ; $771d: $03
	add b                                            ; $771e: $80
	ldh [hDisp1_SCY], a                                     ; $771f: $e0 $90
	ret nz                                           ; $7721: $c0

	ld hl, sp-$20                                    ; $7722: $f8 $e0
	rst $38                                          ; $7724: $ff
	sbc b                                            ; $7725: $98
	rst $38                                          ; $7726: $ff
	rst JumpTable                                          ; $7727: $c7

jr_071_7728:
	rst $38                                          ; $7728: $ff
	ldh [$1f], a                                     ; $7729: $e0 $1f
	rst $38                                          ; $772b: $ff
	ld [bc], a                                       ; $772c: $02
	rra                                              ; $772d: $1f
	ld [bc], a                                       ; $772e: $02
	rlca                                             ; $772f: $07
	ld a, e                                          ; $7730: $7b
	cp $80                                           ; $7731: $fe $80
	add [hl]                                         ; $7733: $86
	add d                                            ; $7734: $82
	add $03                                          ; $7735: $c6 $03
	nop                                              ; $7737: $00
	add e                                            ; $7738: $83
	add b                                            ; $7739: $80
	rlca                                             ; $773a: $07
	nop                                              ; $773b: $00
	rrca                                             ; $773c: $0f
	ld bc, $031f                                     ; $773d: $01 $1f $03
	ccf                                              ; $7740: $3f
	rrca                                             ; $7741: $0f
	rst $38                                          ; $7742: $ff
	dec de                                           ; $7743: $1b
	cp $63                                           ; $7744: $fe $63
	rst $38                                          ; $7746: $ff
	add a                                            ; $7747: $87
	cp $0f                                           ; $7748: $fe $0f
	ldh a, [$fe]                                     ; $774a: $f0 $fe
	add b                                            ; $774c: $80
	ldh a, [$80]                                     ; $774d: $f0 $80
	ret nz                                           ; $774f: $c0

	add b                                            ; $7750: $80
	pop bc                                           ; $7751: $c1
	sbc e                                            ; $7752: $9b
	add c                                            ; $7753: $81
	jp $c783                                         ; $7754: $c3 $83 $c7


	ld a, e                                          ; $7757: $7b
	ret nz                                           ; $7758: $c0

	rst $18                                          ; $7759: $df
	rlca                                             ; $775a: $07
	ld a, a                                          ; $775b: $7f
	db $db                                           ; $775c: $db
	inc de                                           ; $775d: $13
	ret nz                                           ; $775e: $c0

	ld a, a                                          ; $775f: $7f
	ld a, [hl+]                                      ; $7760: $2a
	dec bc                                           ; $7761: $0b
	ret nz                                           ; $7762: $c0

	ld a, a                                          ; $7763: $7f
	cp a                                             ; $7764: $bf
	sbc [hl]                                         ; $7765: $9e
	inc bc                                           ; $7766: $03
	inc de                                           ; $7767: $13
	ret nz                                           ; $7768: $c0

	sbc [hl]                                         ; $7769: $9e
	add b                                            ; $776a: $80
	rla                                              ; $776b: $17
	ret nz                                           ; $776c: $c0

	sbc [hl]                                         ; $776d: $9e
	rrca                                             ; $776e: $0f
	ld [hl], e                                       ; $776f: $73
	cp a                                             ; $7770: $bf
	ld a, [hl]                                       ; $7771: $7e
	or $27                                           ; $7772: $f6 $27
	ret nz                                           ; $7774: $c0

	sbc [hl]                                         ; $7775: $9e
	jp $c07b                                         ; $7776: $c3 $7b $c0


	sbc [hl]                                         ; $7779: $9e
	adc a                                            ; $777a: $8f
	inc hl                                           ; $777b: $23
	ret nz                                           ; $777c: $c0

	ret c                                            ; $777d: $d8

	ld bc, $fb9a                                     ; $777e: $01 $9a $fb
	call c, $b0df                                    ; $7781: $dc $df $b0
	rst $38                                          ; $7784: $ff
	cp a                                             ; $7785: $bf
	ccf                                              ; $7786: $3f
	rrca                                             ; $7787: $0f
	add b                                            ; $7788: $80
	inc bc                                           ; $7789: $03
	rra                                              ; $778a: $1f
	rrca                                             ; $778b: $0f
	cp h                                             ; $778c: $bc
	inc a                                            ; $778d: $3c
	sbc b                                            ; $778e: $98
	jr jr_071_7728                                   ; $778f: $18 $97

	add a                                            ; $7791: $87
	push bc                                          ; $7792: $c5
	add a                                            ; $7793: $87
	push bc                                          ; $7794: $c5
	add l                                            ; $7795: $85
	ld b, d                                          ; $7796: $42
	jp nz, Jump_071_47eb                             ; $7797: $c2 $eb $47

	ldh [$c0], a                                     ; $779a: $e0 $c0
	ld h, b                                          ; $779c: $60
	ldh [$f0], a                                     ; $779d: $e0 $f0
	ld h, b                                          ; $779f: $60
	rst $38                                          ; $77a0: $ff
	ld [hl], b                                       ; $77a1: $70
	rst $18                                          ; $77a2: $df
	ld e, b                                          ; $77a3: $58
	rst GetHLinHL                                          ; $77a4: $cf
	ld c, h                                          ; $77a5: $4c
	add a                                            ; $77a6: $87
	add [hl]                                         ; $77a7: $86
	rst $18                                          ; $77a8: $df
	add e                                            ; $77a9: $83
	rst $18                                          ; $77aa: $df
	adc a                                            ; $77ab: $8f
	add [hl]                                         ; $77ac: $86
	ld sp, $473f                                     ; $77ad: $31 $3f $47
	ld a, [hl]                                       ; $77b0: $7e
	adc a                                            ; $77b1: $8f
	db $fd                                           ; $77b2: $fd
	adc a                                            ; $77b3: $8f
	ld hl, sp+$1f                                    ; $77b4: $f8 $1f
	ld hl, sp+$23                                    ; $77b6: $f8 $23
	db $e4                                           ; $77b8: $e4
	dec l                                            ; $77b9: $2d
	xor $4a                                          ; $77ba: $ee $4a
	rst GetHLinHL                                          ; $77bc: $cf
	ld c, e                                          ; $77bd: $4b
	call $8487                                       ; $77be: $cd $87 $84
	sub l                                            ; $77c1: $95
	inc e                                            ; $77c2: $1c
	ld c, $0e                                        ; $77c3: $0e $0e
	ret nz                                           ; $77c5: $c0

	cp a                                             ; $77c6: $bf
	ldh [$f0], a                                     ; $77c7: $e0 $f0
	add b                                            ; $77c9: $80
	add b                                            ; $77ca: $80
	ldh a, [$c0]                                     ; $77cb: $f0 $c0
	ld [hl], b                                       ; $77cd: $70
	ld h, b                                          ; $77ce: $60
	ldh a, [$e0]                                     ; $77cf: $f0 $e0
	ldh a, [$c0]                                     ; $77d1: $f0 $c0
	ld b, b                                          ; $77d3: $40
	ret nz                                           ; $77d4: $c0

	ld b, b                                          ; $77d5: $40
	ld b, b                                          ; $77d6: $40
	add d                                            ; $77d7: $82
	add b                                            ; $77d8: $80
	ld b, e                                          ; $77d9: $43
	add b                                            ; $77da: $80
	rlca                                             ; $77db: $07
	ld [bc], a                                       ; $77dc: $02
	rlca                                             ; $77dd: $07
	ld [bc], a                                       ; $77de: $02
	inc bc                                           ; $77df: $03
	nop                                              ; $77e0: $00
	sbc h                                            ; $77e1: $9c
	rst FarCall                                          ; $77e2: $f7
	ld l, [hl]                                       ; $77e3: $6e
	ld a, e                                          ; $77e4: $7b
	rra                                              ; $77e5: $1f
	dec e                                            ; $77e6: $1d
	rra                                              ; $77e7: $1f
	nop                                              ; $77e8: $00
	adc h                                            ; $77e9: $8c
	ccf                                              ; $77ea: $3f
	rlca                                             ; $77eb: $07
	ld a, a                                          ; $77ec: $7f
	rrca                                             ; $77ed: $0f
	ld a, b                                          ; $77ee: $78
	jr jr_071_786d                                   ; $77ef: $18 $7c

	inc e                                            ; $77f1: $1c
	ccf                                              ; $77f2: $3f

Call_071_77f3:
	rrca                                             ; $77f3: $0f
	ld a, [bc]                                       ; $77f4: $0a
	rrca                                             ; $77f5: $0f
	ld a, [bc]                                       ; $77f6: $0a
	ld a, [bc]                                       ; $77f7: $0a
	dec b                                            ; $77f8: $05
	dec b                                            ; $77f9: $05
	dec bc                                           ; $77fa: $0b
	rlca                                             ; $77fb: $07
	add c                                            ; $77fc: $81
	cp [hl]                                          ; $77fd: $be

Jump_071_77fe:
	add b                                            ; $77fe: $80
	ld bc, $80e2                                     ; $77ff: $01 $e2 $80
	rst $38                                          ; $7802: $ff
	ld a, c                                          ; $7803: $79
	rst $18                                          ; $7804: $df
	cp a                                             ; $7805: $bf
	rst SubAFromBC                                          ; $7806: $e7
	cp $73                                           ; $7807: $fe $73
	cp $03                                           ; $7809: $fe $03
	cp $c3                                           ; $780b: $fe $c3
	rst $38                                          ; $780d: $ff
	di                                               ; $780e: $f3
	ld a, a                                          ; $780f: $7f
	ld h, d                                          ; $7810: $62
	cp l                                             ; $7811: $bd
	add [hl]                                         ; $7812: $86
	cp l                                             ; $7813: $bd
	add [hl]                                         ; $7814: $86
	cp a                                             ; $7815: $bf
	add l                                            ; $7816: $85
	ld a, l                                          ; $7817: $7d
	dec bc                                           ; $7818: $0b
	ld a, e                                          ; $7819: $7b
	adc a                                            ; $781a: $8f
	rst AddAOntoHL                                          ; $781b: $ef
	rra                                              ; $781c: $1f
	ei                                               ; $781d: $fb
	rra                                              ; $781e: $1f
	rst $18                                          ; $781f: $df
	dec sp                                           ; $7820: $3b
	add b                                            ; $7821: $80
	cp $3a                                           ; $7822: $fe $3a
	xor $6a                                          ; $7824: $ee $6a
	adc $ca                                          ; $7826: $ce $ca
	add h                                            ; $7828: $84
	add h                                            ; $7829: $84
	db $fc                                           ; $782a: $fc
	db $fc                                           ; $782b: $fc
	ld c, $fe                                        ; $782c: $0e $fe
	inc bc                                           ; $782e: $03
	rst $38                                          ; $782f: $ff
	pop bc                                           ; $7830: $c1
	rst $38                                          ; $7831: $ff
	ldh [$7f], a                                     ; $7832: $e0 $7f
	ldh a, [$3f]                                     ; $7834: $f0 $3f
	ld hl, sp+$2f                                    ; $7836: $f8 $2f
	db $fc                                           ; $7838: $fc
	ld b, a                                          ; $7839: $47
	cp $e7                                           ; $783a: $fe $e7
	cp $e3                                           ; $783c: $fe $e3
	rst $38                                          ; $783e: $ff
	and c                                            ; $783f: $a1
	rst $38                                          ; $7840: $ff
	sbc [hl]                                         ; $7841: $9e
	ld b, c                                          ; $7842: $41
	ld h, e                                          ; $7843: $63
	ld b, b                                          ; $7844: $40
	cp a                                             ; $7845: $bf
	rra                                              ; $7846: $1f
	sub a                                            ; $7847: $97
	sbc b                                            ; $7848: $98
	rrca                                             ; $7849: $0f
	xor h                                            ; $784a: $ac
	inc e                                            ; $784b: $1c
	cp a                                             ; $784c: $bf
	cp a                                             ; $784d: $bf
	push de                                          ; $784e: $d5
	sub a                                            ; $784f: $97
	ld d, a                                          ; $7850: $57
	ld b, b                                          ; $7851: $40
	ld h, e                                          ; $7852: $63
	ld h, b                                          ; $7853: $60
	cp a                                             ; $7854: $bf
	ldh a, [$b0]                                     ; $7855: $f0 $b0
	sbc d                                            ; $7857: $9a
	ret nz                                           ; $7858: $c0

	ret nc                                           ; $7859: $d0

	ldh [$f0], a                                     ; $785a: $e0 $f0
	ldh [$2b], a                                     ; $785c: $e0 $2b
	ld h, b                                          ; $785e: $60
	cp a                                             ; $785f: $bf
	ld a, a                                          ; $7860: $7f
	ld [hl], a                                       ; $7861: $77
	sbc d                                            ; $7862: $9a
	rrca                                             ; $7863: $0f
	ld l, h                                          ; $7864: $6c
	inc e                                            ; $7865: $1c
	ccf                                              ; $7866: $3f
	rra                                              ; $7867: $1f
	inc hl                                           ; $7868: $23
	ld h, b                                          ; $7869: $60
	sub [hl]                                         ; $786a: $96
	inc bc                                           ; $786b: $03
	cp a                                             ; $786c: $bf

jr_071_786d:
	jp $e2df                                         ; $786d: $c3 $df $e2


	db $fd                                           ; $7870: $fd
	or $bd                                           ; $7871: $f6 $bd
	and [hl]                                         ; $7873: $a6
	ld d, a                                          ; $7874: $57
	ld h, b                                          ; $7875: $60
	ld l, a                                          ; $7876: $6f
	add b                                            ; $7877: $80
	ld a, a                                          ; $7878: $7f
	ret nz                                           ; $7879: $c0

	ld a, a                                          ; $787a: $7f
	add b                                            ; $787b: $80
	ld a, a                                          ; $787c: $7f
	cp $9e                                           ; $787d: $fe $9e
	adc a                                            ; $787f: $8f
	cp a                                             ; $7880: $bf
	sbc a                                            ; $7881: $9f
	cp a                                             ; $7882: $bf
	ld a, [hl]                                       ; $7883: $7e
	rst $18                                          ; $7884: $df
	ld a, a                                          ; $7885: $7f
	ld a, [hl]                                       ; $7886: $7e
	sbc [hl]                                         ; $7887: $9e
	sub l                                            ; $7888: $95
	cpl                                              ; $7889: $2f
	add b                                            ; $788a: $80
	ld l, a                                          ; $788b: $6f
	ld a, h                                          ; $788c: $7c
	sbc l                                            ; $788d: $9d
	ld [hl], b                                       ; $788e: $70
	ldh [$27], a                                     ; $788f: $e0 $27
	add b                                            ; $7891: $80
	ld [hl], a                                       ; $7892: $77
	cp $9b                                           ; $7893: $fe $9b
	cpl                                              ; $7895: $2f
	rra                                              ; $7896: $1f
	ld a, [hl-]                                      ; $7897: $3a
	ccf                                              ; $7898: $3f
	daa                                              ; $7899: $27
	add b                                            ; $789a: $80
	sub l                                            ; $789b: $95
	rst $38                                          ; $789c: $ff
	inc bc                                           ; $789d: $03
	rst $38                                          ; $789e: $ff
	ld [bc], a                                       ; $789f: $02
	db $fd                                           ; $78a0: $fd
	add $fd                                          ; $78a1: $c6 $fd
	or $bf                                           ; $78a3: $f6 $bf
	and l                                            ; $78a5: $a5
	ld e, a                                          ; $78a6: $5f
	add b                                            ; $78a7: $80
	sbc c                                            ; $78a8: $99
	xor $df                                          ; $78a9: $ee $df
	rst SubAFromHL                                          ; $78ab: $d7
	cp b                                             ; $78ac: $b8
	rst AddAOntoHL                                          ; $78ad: $ef
	jr nc, jr_071_7927                               ; $78ae: $30 $77

	add b                                            ; $78b0: $80
	sbc [hl]                                         ; $78b1: $9e
	rlca                                             ; $78b2: $07
	cp [hl]                                          ; $78b3: $be
	add a                                            ; $78b4: $87
	add a                                            ; $78b5: $87
	add a                                            ; $78b6: $87
	sub [hl]                                         ; $78b7: $96
	add b                                            ; $78b8: $80
	rst GetHLinHL                                          ; $78b9: $cf
	add b                                            ; $78ba: $80
	rst $18                                          ; $78bb: $df
	add b                                            ; $78bc: $80
	ld e, d                                          ; $78bd: $5a
	call c, Call_071_4fef                            ; $78be: $dc $ef $4f
	cpl                                              ; $78c1: $2f
	add b                                            ; $78c2: $80
	ld [hl], a                                       ; $78c3: $77
	cp $7f                                           ; $78c4: $fe $7f
	ldh a, [c]                                       ; $78c6: $f2
	sbc e                                            ; $78c7: $9b
	and d                                            ; $78c8: $a2
	ld h, b                                          ; $78c9: $60
	jp $2fc0                                         ; $78ca: $c3 $c0 $2f


	add b                                            ; $78cd: $80
	ld a, a                                          ; $78ce: $7f
	ld hl, sp+$7f                                    ; $78cf: $f8 $7f
	cp $7f                                           ; $78d1: $fe $7f
	ldh a, [c]                                       ; $78d3: $f2
	sbc e                                            ; $78d4: $9b
	dec d                                            ; $78d5: $15
	jr jr_071_78e7                                   ; $78d6: $18 $0f

	rrca                                             ; $78d8: $0f
	dec hl                                           ; $78d9: $2b
	add b                                            ; $78da: $80
	sub [hl]                                         ; $78db: $96
	ld b, $fd                                        ; $78dc: $06 $fd
	ld b, $ff                                        ; $78de: $06 $ff
	dec b                                            ; $78e0: $05
	ld a, l                                          ; $78e1: $7d
	db $eb                                           ; $78e2: $eb
	ei                                               ; $78e3: $fb
	rst GetHLinHL                                          ; $78e4: $cf
	ld l, a                                          ; $78e5: $6f
	add b                                            ; $78e6: $80

jr_071_78e7:
	rst $38                                          ; $78e7: $ff
	sbc h                                            ; $78e8: $9c
	rlca                                             ; $78e9: $07
	inc b                                            ; $78ea: $04
	nop                                              ; $78eb: $00
	cp [hl]                                          ; $78ec: $be
	inc bc                                           ; $78ed: $03
	add b                                            ; $78ee: $80
	ldh [hDisp1_BGP], a                                     ; $78ef: $e0 $92
	ret nz                                           ; $78f1: $c0

	ld hl, sp-$20                                    ; $78f2: $f8 $e0
	rst $38                                          ; $78f4: $ff
	sbc b                                            ; $78f5: $98
	rst $38                                          ; $78f6: $ff
	rst JumpTable                                          ; $78f7: $c7
	rst $38                                          ; $78f8: $ff
	ldh [$1f], a                                     ; $78f9: $e0 $1f
	rst $38                                          ; $78fb: $ff
	ld [bc], a                                       ; $78fc: $02
	rra                                              ; $78fd: $1f
	ld a, e                                          ; $78fe: $7b
	and e                                            ; $78ff: $a3
	ld a, a                                          ; $7900: $7f
	cp $80                                           ; $7901: $fe $80
	add [hl]                                         ; $7903: $86
	add d                                            ; $7904: $82
	add $43                                          ; $7905: $c6 $43
	ld b, b                                          ; $7907: $40
	add e                                            ; $7908: $83
	add b                                            ; $7909: $80
	rlca                                             ; $790a: $07
	nop                                              ; $790b: $00
	rrca                                             ; $790c: $0f
	ld bc, $031f                                     ; $790d: $01 $1f $03
	ccf                                              ; $7910: $3f
	rrca                                             ; $7911: $0f
	rst $38                                          ; $7912: $ff
	dec de                                           ; $7913: $1b
	cp $63                                           ; $7914: $fe $63
	rst $38                                          ; $7916: $ff
	add a                                            ; $7917: $87
	cp $0f                                           ; $7918: $fe $0f
	ldh a, [$fe]                                     ; $791a: $f0 $fe
	add b                                            ; $791c: $80
	ldh a, [$80]                                     ; $791d: $f0 $80
	ret nz                                           ; $791f: $c0

	add b                                            ; $7920: $80
	pop bc                                           ; $7921: $c1
	sbc e                                            ; $7922: $9b
	add c                                            ; $7923: $81
	jp $c783                                         ; $7924: $c3 $83 $c7


jr_071_7927:
	ld a, e                                          ; $7927: $7b
	ret nz                                           ; $7928: $c0

	rst $18                                          ; $7929: $df
	rlca                                             ; $792a: $07
	ld a, a                                          ; $792b: $7f
	pop bc                                           ; $792c: $c1
	dec de                                           ; $792d: $1b
	ret nz                                           ; $792e: $c0

	sbc h                                            ; $792f: $9c
	jp $8780                                         ; $7930: $c3 $80 $87


	inc bc                                           ; $7933: $03
	ret nz                                           ; $7934: $c0

	dec de                                           ; $7935: $1b
	add b                                            ; $7936: $80
	sbc c                                            ; $7937: $99
	nop                                              ; $7938: $00
	jp $c7c0                                         ; $7939: $c3 $c0 $c7


	add b                                            ; $793c: $80
	adc a                                            ; $793d: $8f
	dec de                                           ; $793e: $1b
	ret nz                                           ; $793f: $c0

	sbc [hl]                                         ; $7940: $9e
	rrca                                             ; $7941: $0f
	db $dd                                           ; $7942: $dd
	rlca                                             ; $7943: $07
	sbc l                                            ; $7944: $9d
	inc bc                                           ; $7945: $03
	add e                                            ; $7946: $83
	dec hl                                           ; $7947: $2b
	ret nz                                           ; $7948: $c0

	sub [hl]                                         ; $7949: $96
	ld h, e                                          ; $794a: $63
	nop                                              ; $794b: $00
	db $e3                                           ; $794c: $e3
	ret nz                                           ; $794d: $c0

	rst JumpTable                                          ; $794e: $c7
	ret nz                                           ; $794f: $c0

	rst GetHLinHL                                          ; $7950: $cf
	add c                                            ; $7951: $81
	sbc a                                            ; $7952: $9f
	dec hl                                           ; $7953: $2b
	ret nz                                           ; $7954: $c0

	ret                                              ; $7955: $c9


	ld bc, $ee80                                     ; $7956: $01 $80 $ee
	rst $18                                          ; $7959: $df
	rst SubAFromHL                                          ; $795a: $d7
	cp b                                             ; $795b: $b8
	rst AddAOntoHL                                          ; $795c: $ef
	jr nc, jr_071_799e                               ; $795d: $30 $3f

	nop                                              ; $795f: $00
	inc c                                            ; $7960: $0c
	inc bc                                           ; $7961: $03
	rla                                              ; $7962: $17
	rrca                                             ; $7963: $0f
	cp h                                             ; $7964: $bc
	inc e                                            ; $7965: $1c
	cp h                                             ; $7966: $bc
	inc a                                            ; $7967: $3c
	sub a                                            ; $7968: $97
	sub a                                            ; $7969: $97
	push de                                          ; $796a: $d5
	add a                                            ; $796b: $87
	push bc                                          ; $796c: $c5
	add l                                            ; $796d: $85
	ld b, d                                          ; $796e: $42
	jp nz, Jump_071_47eb                             ; $796f: $c2 $eb $47

	ldh [$c0], a                                     ; $7972: $e0 $c0
	ld h, b                                          ; $7974: $60
	ldh [$f0], a                                     ; $7975: $e0 $f0
	add b                                            ; $7977: $80
	ld h, b                                          ; $7978: $60
	rst $38                                          ; $7979: $ff
	ld [hl], b                                       ; $797a: $70
	rst $18                                          ; $797b: $df
	ld e, b                                          ; $797c: $58
	rst GetHLinHL                                          ; $797d: $cf
	ld c, h                                          ; $797e: $4c
	add a                                            ; $797f: $87
	add [hl]                                         ; $7980: $86
	add e                                            ; $7981: $83
	add e                                            ; $7982: $83
	adc a                                            ; $7983: $8f
	adc a                                            ; $7984: $8f
	ld sp, $473f                                     ; $7985: $31 $3f $47
	ld a, [hl]                                       ; $7988: $7e
	adc a                                            ; $7989: $8f
	db $fd                                           ; $798a: $fd
	adc a                                            ; $798b: $8f
	ld hl, sp+$1f                                    ; $798c: $f8 $1f
	ld hl, sp+$23                                    ; $798e: $f8 $23
	db $e4                                           ; $7990: $e4
	dec l                                            ; $7991: $2d
	xor $4a                                          ; $7992: $ee $4a
	rst GetHLinHL                                          ; $7994: $cf
	ld c, e                                          ; $7995: $4b
	call $8798                                       ; $7996: $cd $98 $87
	add h                                            ; $7999: $84
	sub l                                            ; $799a: $95
	inc e                                            ; $799b: $1c
	ld c, $0e                                        ; $799c: $0e $0e

jr_071_799e:
	ret nz                                           ; $799e: $c0

	cp a                                             ; $799f: $bf
	ldh [rSVBK], a                                   ; $79a0: $e0 $70
	add b                                            ; $79a2: $80
	add b                                            ; $79a3: $80
	ldh a, [$c0]                                     ; $79a4: $f0 $c0
	ld [hl], b                                       ; $79a6: $70
	ld h, b                                          ; $79a7: $60
	ldh a, [$e0]                                     ; $79a8: $f0 $e0
	ldh a, [$c0]                                     ; $79aa: $f0 $c0
	ld b, b                                          ; $79ac: $40
	ret nz                                           ; $79ad: $c0

	ld b, b                                          ; $79ae: $40
	ld b, b                                          ; $79af: $40
	add d                                            ; $79b0: $82
	add b                                            ; $79b1: $80
	ld b, e                                          ; $79b2: $43
	add b                                            ; $79b3: $80
	rlca                                             ; $79b4: $07
	ld [bc], a                                       ; $79b5: $02
	rlca                                             ; $79b6: $07
	ld [bc], a                                       ; $79b7: $02
	inc bc                                           ; $79b8: $03
	nop                                              ; $79b9: $00
	sbc h                                            ; $79ba: $9c
	rst FarCall                                          ; $79bb: $f7
	ld l, [hl]                                       ; $79bc: $6e
	ld a, e                                          ; $79bd: $7b
	rra                                              ; $79be: $1f
	dec e                                            ; $79bf: $1d
	rra                                              ; $79c0: $1f
	nop                                              ; $79c1: $00
	adc h                                            ; $79c2: $8c
	jr c, jr_071_79cc                                ; $79c3: $38 $07

	ld a, a                                          ; $79c5: $7f
	rrca                                             ; $79c6: $0f
	ld a, b                                          ; $79c7: $78
	jr jr_071_7a46                                   ; $79c8: $18 $7c

	inc e                                            ; $79ca: $1c
	ccf                                              ; $79cb: $3f

jr_071_79cc:
	rrca                                             ; $79cc: $0f
	ld a, [bc]                                       ; $79cd: $0a
	rrca                                             ; $79ce: $0f
	ld a, [bc]                                       ; $79cf: $0a
	ld a, [bc]                                       ; $79d0: $0a
	dec b                                            ; $79d1: $05
	dec b                                            ; $79d2: $05
	dec bc                                           ; $79d3: $0b
	rlca                                             ; $79d4: $07
	add c                                            ; $79d5: $81
	cp [hl]                                          ; $79d6: $be
	add b                                            ; $79d7: $80
	ld bc, $80e2                                     ; $79d8: $01 $e2 $80
	rst $38                                          ; $79db: $ff
	ld a, c                                          ; $79dc: $79
	rst $18                                          ; $79dd: $df
	cp a                                             ; $79de: $bf
	rst SubAFromBC                                          ; $79df: $e7
	cp $73                                           ; $79e0: $fe $73
	cp $03                                           ; $79e2: $fe $03
	cp [hl]                                          ; $79e4: $be
	jp $e3ff                                         ; $79e5: $c3 $ff $e3


	rst $38                                          ; $79e8: $ff
	ldh a, [c]                                       ; $79e9: $f2
	cp l                                             ; $79ea: $bd
	and [hl]                                         ; $79eb: $a6
	cp l                                             ; $79ec: $bd
	add [hl]                                         ; $79ed: $86
	cp a                                             ; $79ee: $bf
	add l                                            ; $79ef: $85
	ld a, l                                          ; $79f0: $7d
	dec bc                                           ; $79f1: $0b
	ld a, e                                          ; $79f2: $7b
	adc a                                            ; $79f3: $8f
	rst AddAOntoHL                                          ; $79f4: $ef
	rra                                              ; $79f5: $1f
	ei                                               ; $79f6: $fb
	rra                                              ; $79f7: $1f
	rst $18                                          ; $79f8: $df
	dec sp                                           ; $79f9: $3b
	add b                                            ; $79fa: $80
	cp $3a                                           ; $79fb: $fe $3a
	xor $6a                                          ; $79fd: $ee $6a
	adc $ca                                          ; $79ff: $ce $ca
	add h                                            ; $7a01: $84
	add h                                            ; $7a02: $84
	db $fc                                           ; $7a03: $fc
	db $fc                                           ; $7a04: $fc
	ld c, $fe                                        ; $7a05: $0e $fe
	inc bc                                           ; $7a07: $03
	rst $38                                          ; $7a08: $ff
	pop bc                                           ; $7a09: $c1
	rst $38                                          ; $7a0a: $ff
	ldh [$7f], a                                     ; $7a0b: $e0 $7f
	ldh a, [$3f]                                     ; $7a0d: $f0 $3f
	ld hl, sp+$2f                                    ; $7a0f: $f8 $2f
	db $fc                                           ; $7a11: $fc
	ld b, a                                          ; $7a12: $47
	cp $e7                                           ; $7a13: $fe $e7
	cp $e3                                           ; $7a15: $fe $e3
	rst $38                                          ; $7a17: $ff
	and c                                            ; $7a18: $a1
	rst $38                                          ; $7a19: $ff
	sbc [hl]                                         ; $7a1a: $9e
	ld b, c                                          ; $7a1b: $41
	ld h, a                                          ; $7a1c: $67
	ld b, b                                          ; $7a1d: $40
	sbc [hl]                                         ; $7a1e: $9e
	rrca                                             ; $7a1f: $0f
	cp a                                             ; $7a20: $bf
	rra                                              ; $7a21: $1f
	sub a                                            ; $7a22: $97
	sbc b                                            ; $7a23: $98
	rrca                                             ; $7a24: $0f
	xor h                                            ; $7a25: $ac
	inc e                                            ; $7a26: $1c
	cp a                                             ; $7a27: $bf
	cp a                                             ; $7a28: $bf
	push de                                          ; $7a29: $d5
	sub a                                            ; $7a2a: $97
	ld d, a                                          ; $7a2b: $57
	ld b, b                                          ; $7a2c: $40
	ld h, a                                          ; $7a2d: $67
	ld h, b                                          ; $7a2e: $60
	sbc [hl]                                         ; $7a2f: $9e
	ldh a, [$bf]                                     ; $7a30: $f0 $bf
	ldh a, [$b0]                                     ; $7a32: $f0 $b0
	sbc d                                            ; $7a34: $9a
	ret nz                                           ; $7a35: $c0

	ret nc                                           ; $7a36: $d0

	ldh [$f0], a                                     ; $7a37: $e0 $f0
	ldh [$2f], a                                     ; $7a39: $e0 $2f
	ld h, b                                          ; $7a3b: $60
	ld a, a                                          ; $7a3c: $7f
	cp [hl]                                          ; $7a3d: $be
	sub a                                            ; $7a3e: $97
	ld a, a                                          ; $7a3f: $7f
	nop                                              ; $7a40: $00
	ld [hl], a                                       ; $7a41: $77
	rrca                                             ; $7a42: $0f
	ld l, h                                          ; $7a43: $6c
	inc e                                            ; $7a44: $1c
	ccf                                              ; $7a45: $3f

jr_071_7a46:
	rra                                              ; $7a46: $1f
	daa                                              ; $7a47: $27
	ld h, b                                          ; $7a48: $60
	ld a, a                                          ; $7a49: $7f
	cp $97                                           ; $7a4a: $fe $97
	cp a                                             ; $7a4c: $bf
	jp $e2df                                         ; $7a4d: $c3 $df $e2


	db $fd                                           ; $7a50: $fd
	or $bd                                           ; $7a51: $f6 $bd
	and [hl]                                         ; $7a53: $a6
	ld d, a                                          ; $7a54: $57
	ld h, b                                          ; $7a55: $60
	ld l, a                                          ; $7a56: $6f
	add b                                            ; $7a57: $80
	ld a, a                                          ; $7a58: $7f
	ret nz                                           ; $7a59: $c0

	ld a, a                                          ; $7a5a: $7f
	add b                                            ; $7a5b: $80
	ld a, a                                          ; $7a5c: $7f
	cp $9e                                           ; $7a5d: $fe $9e
	adc a                                            ; $7a5f: $8f
	cp a                                             ; $7a60: $bf
	sbc a                                            ; $7a61: $9f
	cp a                                             ; $7a62: $bf
	ld a, [hl]                                       ; $7a63: $7e
	rst $18                                          ; $7a64: $df
	ld a, a                                          ; $7a65: $7f
	ld a, [hl]                                       ; $7a66: $7e
	sbc [hl]                                         ; $7a67: $9e
	sub l                                            ; $7a68: $95
	cpl                                              ; $7a69: $2f
	add b                                            ; $7a6a: $80
	ld l, a                                          ; $7a6b: $6f
	ld a, h                                          ; $7a6c: $7c
	sbc l                                            ; $7a6d: $9d
	ld [hl], b                                       ; $7a6e: $70
	ldh [$27], a                                     ; $7a6f: $e0 $27
	add b                                            ; $7a71: $80
	ld [hl], a                                       ; $7a72: $77
	cp $9b                                           ; $7a73: $fe $9b
	cpl                                              ; $7a75: $2f
	rra                                              ; $7a76: $1f
	ld a, [hl-]                                      ; $7a77: $3a
	ccf                                              ; $7a78: $3f
	daa                                              ; $7a79: $27
	add b                                            ; $7a7a: $80
	sub l                                            ; $7a7b: $95
	rst $38                                          ; $7a7c: $ff
	inc bc                                           ; $7a7d: $03
	rst $38                                          ; $7a7e: $ff
	ld [bc], a                                       ; $7a7f: $02
	db $fd                                           ; $7a80: $fd
	add $fd                                          ; $7a81: $c6 $fd
	or $bf                                           ; $7a83: $f6 $bf
	and l                                            ; $7a85: $a5
	scf                                              ; $7a86: $37
	add b                                            ; $7a87: $80
	sbc [hl]                                         ; $7a88: $9e
	rlca                                             ; $7a89: $07
	cp [hl]                                          ; $7a8a: $be
	add a                                            ; $7a8b: $87
	add a                                            ; $7a8c: $87
	add a                                            ; $7a8d: $87
	sub [hl]                                         ; $7a8e: $96
	add b                                            ; $7a8f: $80
	rst GetHLinHL                                          ; $7a90: $cf
	add b                                            ; $7a91: $80
	rst $18                                          ; $7a92: $df
	add b                                            ; $7a93: $80
	ld e, d                                          ; $7a94: $5a
	call c, Call_071_4fef                            ; $7a95: $dc $ef $4f
	cpl                                              ; $7a98: $2f
	add b                                            ; $7a99: $80
	ld [hl], a                                       ; $7a9a: $77
	cp $7f                                           ; $7a9b: $fe $7f
	ldh a, [c]                                       ; $7a9d: $f2
	sbc e                                            ; $7a9e: $9b
	and d                                            ; $7a9f: $a2
	ld h, b                                          ; $7aa0: $60
	jp $2fc0                                         ; $7aa1: $c3 $c0 $2f


	add b                                            ; $7aa4: $80
	ld a, a                                          ; $7aa5: $7f
	ld hl, sp+$7f                                    ; $7aa6: $f8 $7f
	cp $7f                                           ; $7aa8: $fe $7f
	ldh a, [c]                                       ; $7aaa: $f2
	sbc e                                            ; $7aab: $9b
	dec d                                            ; $7aac: $15
	jr jr_071_7abe                                   ; $7aad: $18 $0f

	rrca                                             ; $7aaf: $0f
	dec hl                                           ; $7ab0: $2b
	add b                                            ; $7ab1: $80
	sub [hl]                                         ; $7ab2: $96
	ld b, $fd                                        ; $7ab3: $06 $fd
	ld b, $ff                                        ; $7ab5: $06 $ff
	dec b                                            ; $7ab7: $05
	ld a, l                                          ; $7ab8: $7d
	db $eb                                           ; $7ab9: $eb
	ei                                               ; $7aba: $fb
	rst GetHLinHL                                          ; $7abb: $cf
	ld l, a                                          ; $7abc: $6f
	add b                                            ; $7abd: $80

jr_071_7abe:
	rst $38                                          ; $7abe: $ff
	sbc h                                            ; $7abf: $9c
	rlca                                             ; $7ac0: $07
	dec b                                            ; $7ac1: $05
	nop                                              ; $7ac2: $00
	cp [hl]                                          ; $7ac3: $be
	inc bc                                           ; $7ac4: $03
	add b                                            ; $7ac5: $80
	ldh [hDisp1_BGP], a                                     ; $7ac6: $e0 $92
	ret nz                                           ; $7ac8: $c0

	ld hl, sp-$20                                    ; $7ac9: $f8 $e0
	rst $38                                          ; $7acb: $ff
	sbc b                                            ; $7acc: $98
	rst $38                                          ; $7acd: $ff
	rst JumpTable                                          ; $7ace: $c7
	rst $38                                          ; $7acf: $ff
	ldh [$1f], a                                     ; $7ad0: $e0 $1f
	rst $38                                          ; $7ad2: $ff
	ld [bc], a                                       ; $7ad3: $02
	rra                                              ; $7ad4: $1f
	ld a, e                                          ; $7ad5: $7b
	and e                                            ; $7ad6: $a3
	ld a, a                                          ; $7ad7: $7f
	cp $80                                           ; $7ad8: $fe $80
	add [hl]                                         ; $7ada: $86
	add d                                            ; $7adb: $82
	add $43                                          ; $7adc: $c6 $43
	ld b, b                                          ; $7ade: $40
	add e                                            ; $7adf: $83
	add b                                            ; $7ae0: $80
	rlca                                             ; $7ae1: $07
	nop                                              ; $7ae2: $00
	rrca                                             ; $7ae3: $0f
	ld bc, $031f                                     ; $7ae4: $01 $1f $03
	ccf                                              ; $7ae7: $3f
	rrca                                             ; $7ae8: $0f
	rst $38                                          ; $7ae9: $ff
	dec de                                           ; $7aea: $1b
	cp $63                                           ; $7aeb: $fe $63
	rst $38                                          ; $7aed: $ff
	add a                                            ; $7aee: $87
	cp $0f                                           ; $7aef: $fe $0f
	ldh a, [$fe]                                     ; $7af1: $f0 $fe
	add b                                            ; $7af3: $80
	ldh a, [$80]                                     ; $7af4: $f0 $80
	ret nz                                           ; $7af6: $c0

	add b                                            ; $7af7: $80
	pop bc                                           ; $7af8: $c1
	sbc e                                            ; $7af9: $9b
	add c                                            ; $7afa: $81
	jp $c783                                         ; $7afb: $c3 $83 $c7


	ld a, e                                          ; $7afe: $7b
	ret nz                                           ; $7aff: $c0

	rst $18                                          ; $7b00: $df
	rlca                                             ; $7b01: $07
	ld a, a                                          ; $7b02: $7f
	pop bc                                           ; $7b03: $c1
	dec de                                           ; $7b04: $1b
	ret nz                                           ; $7b05: $c0

	sbc h                                            ; $7b06: $9c
	jp $8780                                         ; $7b07: $c3 $80 $87


	inc bc                                           ; $7b0a: $03
	ret nz                                           ; $7b0b: $c0

	rla                                              ; $7b0c: $17
	add b                                            ; $7b0d: $80
	ld a, a                                          ; $7b0e: $7f
	ld d, $7e                                        ; $7b0f: $16 $7e
	db $ec                                           ; $7b11: $ec
	inc bc                                           ; $7b12: $03
	ret nz                                           ; $7b13: $c0

	sbc [hl]                                         ; $7b14: $9e
	ld bc, $c017                                     ; $7b15: $01 $17 $c0
	sbc h                                            ; $7b18: $9c
	rst JumpTable                                          ; $7b19: $c7
	add b                                            ; $7b1a: $80
	adc a                                            ; $7b1b: $8f
	inc hl                                           ; $7b1c: $23
	ret nz                                           ; $7b1d: $c0

	db $dd                                           ; $7b1e: $dd
	ld bc, $f080                                     ; $7b1f: $01 $80 $f0
	rst GetHLinHL                                          ; $7b22: $cf
	rst $18                                          ; $7b23: $df
	cp a                                             ; $7b24: $bf
	rst FarCall                                          ; $7b25: $f7
	add hl, sp                                       ; $7b26: $39
	ccf                                              ; $7b27: $3f
	nop                                              ; $7b28: $00
	inc c                                            ; $7b29: $0c
	inc bc                                           ; $7b2a: $03
	rla                                              ; $7b2b: $17
	rrca                                             ; $7b2c: $0f
	cp h                                             ; $7b2d: $bc
	inc e                                            ; $7b2e: $1c
	cp h                                             ; $7b2f: $bc
	inc a                                            ; $7b30: $3c
	sub a                                            ; $7b31: $97
	sub a                                            ; $7b32: $97
	push de                                          ; $7b33: $d5
	add a                                            ; $7b34: $87
	push bc                                          ; $7b35: $c5
	add l                                            ; $7b36: $85
	ld b, d                                          ; $7b37: $42
	jp nz, Jump_071_47eb                             ; $7b38: $c2 $eb $47

	ldh [$c0], a                                     ; $7b3b: $e0 $c0
	ld h, b                                          ; $7b3d: $60
	ldh [$f0], a                                     ; $7b3e: $e0 $f0
	add b                                            ; $7b40: $80
	ld h, b                                          ; $7b41: $60
	rst $38                                          ; $7b42: $ff
	ld [hl], b                                       ; $7b43: $70
	rst $18                                          ; $7b44: $df
	ld e, b                                          ; $7b45: $58
	rst GetHLinHL                                          ; $7b46: $cf
	ld c, h                                          ; $7b47: $4c
	add a                                            ; $7b48: $87
	add [hl]                                         ; $7b49: $86
	add e                                            ; $7b4a: $83
	add e                                            ; $7b4b: $83
	adc a                                            ; $7b4c: $8f
	adc a                                            ; $7b4d: $8f
	ld sp, $473f                                     ; $7b4e: $31 $3f $47
	ld a, [hl]                                       ; $7b51: $7e
	adc a                                            ; $7b52: $8f
	db $fd                                           ; $7b53: $fd
	adc a                                            ; $7b54: $8f
	ld hl, sp+$1f                                    ; $7b55: $f8 $1f
	ld hl, sp+$23                                    ; $7b57: $f8 $23
	db $e4                                           ; $7b59: $e4
	dec l                                            ; $7b5a: $2d
	xor $4a                                          ; $7b5b: $ee $4a
	rst GetHLinHL                                          ; $7b5d: $cf
	ld c, e                                          ; $7b5e: $4b
	call $8780                                       ; $7b5f: $cd $80 $87
	add h                                            ; $7b62: $84
	dec d                                            ; $7b63: $15
	inc e                                            ; $7b64: $1c
	adc [hl]                                         ; $7b65: $8e
	adc [hl]                                         ; $7b66: $8e
	ret nz                                           ; $7b67: $c0

	add b                                            ; $7b68: $80
	ldh [rP1], a                                     ; $7b69: $e0 $00
	ld [hl], b                                       ; $7b6b: $70
	add b                                            ; $7b6c: $80
	ldh a, [$c0]                                     ; $7b6d: $f0 $c0
	ld [hl], b                                       ; $7b6f: $70
	ld h, b                                          ; $7b70: $60
	ldh a, [$e0]                                     ; $7b71: $f0 $e0
	ldh a, [$c0]                                     ; $7b73: $f0 $c0
	ld b, b                                          ; $7b75: $40
	ret nz                                           ; $7b76: $c0

	ld b, b                                          ; $7b77: $40
	ld b, b                                          ; $7b78: $40
	add d                                            ; $7b79: $82
	add b                                            ; $7b7a: $80
	ld b, e                                          ; $7b7b: $43
	add b                                            ; $7b7c: $80
	rlca                                             ; $7b7d: $07
	ld [bc], a                                       ; $7b7e: $02
	rlca                                             ; $7b7f: $07
	add c                                            ; $7b80: $81
	ld [bc], a                                       ; $7b81: $02
	inc bc                                           ; $7b82: $03
	nop                                              ; $7b83: $00
	sbc h                                            ; $7b84: $9c
	rst FarCall                                          ; $7b85: $f7
	ld l, [hl]                                       ; $7b86: $6e
	ld a, e                                          ; $7b87: $7b
	rra                                              ; $7b88: $1f
	dec e                                            ; $7b89: $1d
	rra                                              ; $7b8a: $1f
	nop                                              ; $7b8b: $00
	jr c, jr_071_7b95                                ; $7b8c: $38 $07

	ld a, a                                          ; $7b8e: $7f
	rrca                                             ; $7b8f: $0f
	ld a, b                                          ; $7b90: $78
	jr jr_071_7c0f                                   ; $7b91: $18 $7c

	inc e                                            ; $7b93: $1c
	ccf                                              ; $7b94: $3f

jr_071_7b95:
	rrca                                             ; $7b95: $0f
	ld a, [bc]                                       ; $7b96: $0a
	rrca                                             ; $7b97: $0f
	ld a, [bc]                                       ; $7b98: $0a
	ld a, [bc]                                       ; $7b99: $0a
	dec b                                            ; $7b9a: $05
	dec b                                            ; $7b9b: $05
	dec bc                                           ; $7b9c: $0b
	rlca                                             ; $7b9d: $07
	add c                                            ; $7b9e: $81
	cp [hl]                                          ; $7b9f: $be
	add b                                            ; $7ba0: $80
	ld bc, $80e2                                     ; $7ba1: $01 $e2 $80
	rst $38                                          ; $7ba4: $ff
	ld a, c                                          ; $7ba5: $79
	rst $18                                          ; $7ba6: $df
	cp a                                             ; $7ba7: $bf
	rst SubAFromBC                                          ; $7ba8: $e7
	cp $73                                           ; $7ba9: $fe $73
	cp $03                                           ; $7bab: $fe $03
	cp [hl]                                          ; $7bad: $be
	jp $e3ff                                         ; $7bae: $c3 $ff $e3


	rst $38                                          ; $7bb1: $ff
	ldh a, [c]                                       ; $7bb2: $f2
	cp l                                             ; $7bb3: $bd
	and [hl]                                         ; $7bb4: $a6
	cp l                                             ; $7bb5: $bd
	add [hl]                                         ; $7bb6: $86
	cp a                                             ; $7bb7: $bf
	add l                                            ; $7bb8: $85
	ld a, l                                          ; $7bb9: $7d
	dec bc                                           ; $7bba: $0b
	ld a, e                                          ; $7bbb: $7b
	adc a                                            ; $7bbc: $8f
	rst AddAOntoHL                                          ; $7bbd: $ef
	rra                                              ; $7bbe: $1f
	ei                                               ; $7bbf: $fb
	rra                                              ; $7bc0: $1f
	rst $18                                          ; $7bc1: $df
	dec sp                                           ; $7bc2: $3b
	add b                                            ; $7bc3: $80
	cp $3a                                           ; $7bc4: $fe $3a
	xor $6a                                          ; $7bc6: $ee $6a
	adc $ca                                          ; $7bc8: $ce $ca
	add h                                            ; $7bca: $84
	add h                                            ; $7bcb: $84
	db $fc                                           ; $7bcc: $fc
	db $fc                                           ; $7bcd: $fc
	ld c, $fe                                        ; $7bce: $0e $fe
	inc bc                                           ; $7bd0: $03
	rst $38                                          ; $7bd1: $ff
	pop bc                                           ; $7bd2: $c1
	rst $38                                          ; $7bd3: $ff
	ldh [$7f], a                                     ; $7bd4: $e0 $7f
	ldh a, [$3f]                                     ; $7bd6: $f0 $3f
	ld hl, sp+$2f                                    ; $7bd8: $f8 $2f
	db $fc                                           ; $7bda: $fc
	ld b, a                                          ; $7bdb: $47
	cp $e7                                           ; $7bdc: $fe $e7
	cp $e3                                           ; $7bde: $fe $e3
	rst $38                                          ; $7be0: $ff
	and c                                            ; $7be1: $a1
	rst $38                                          ; $7be2: $ff
	sbc [hl]                                         ; $7be3: $9e
	ld b, c                                          ; $7be4: $41
	ld h, a                                          ; $7be5: $67
	ld b, b                                          ; $7be6: $40
	sbc [hl]                                         ; $7be7: $9e
	rrca                                             ; $7be8: $0f
	cp a                                             ; $7be9: $bf
	rra                                              ; $7bea: $1f
	sub a                                            ; $7beb: $97
	sbc b                                            ; $7bec: $98
	rrca                                             ; $7bed: $0f
	xor h                                            ; $7bee: $ac
	inc e                                            ; $7bef: $1c
	cp a                                             ; $7bf0: $bf
	cp a                                             ; $7bf1: $bf
	push de                                          ; $7bf2: $d5
	sub a                                            ; $7bf3: $97
	ld d, a                                          ; $7bf4: $57
	ld b, b                                          ; $7bf5: $40
	ld h, a                                          ; $7bf6: $67
	ld h, b                                          ; $7bf7: $60
	sbc [hl]                                         ; $7bf8: $9e
	ldh a, [$bf]                                     ; $7bf9: $f0 $bf
	ldh a, [$b0]                                     ; $7bfb: $f0 $b0
	sbc d                                            ; $7bfd: $9a
	ret nz                                           ; $7bfe: $c0

	ret nc                                           ; $7bff: $d0

	ldh [$f0], a                                     ; $7c00: $e0 $f0
	ldh [$2f], a                                     ; $7c02: $e0 $2f
	ld h, b                                          ; $7c04: $60
	ld a, a                                          ; $7c05: $7f
	cp [hl]                                          ; $7c06: $be
	sub a                                            ; $7c07: $97
	ld a, a                                          ; $7c08: $7f
	nop                                              ; $7c09: $00
	ld [hl], a                                       ; $7c0a: $77
	rrca                                             ; $7c0b: $0f
	ld l, h                                          ; $7c0c: $6c
	inc e                                            ; $7c0d: $1c
	ccf                                              ; $7c0e: $3f

jr_071_7c0f:
	rra                                              ; $7c0f: $1f
	daa                                              ; $7c10: $27
	ld h, b                                          ; $7c11: $60
	ld a, a                                          ; $7c12: $7f
	cp $97                                           ; $7c13: $fe $97
	cp a                                             ; $7c15: $bf
	jp $e2df                                         ; $7c16: $c3 $df $e2


	db $fd                                           ; $7c19: $fd
	or $bd                                           ; $7c1a: $f6 $bd
	and [hl]                                         ; $7c1c: $a6
	ld d, a                                          ; $7c1d: $57
	ld h, b                                          ; $7c1e: $60
	ld l, a                                          ; $7c1f: $6f
	add b                                            ; $7c20: $80
	ld a, a                                          ; $7c21: $7f
	ret nz                                           ; $7c22: $c0

	ld a, a                                          ; $7c23: $7f
	add b                                            ; $7c24: $80
	ld a, a                                          ; $7c25: $7f
	cp $9e                                           ; $7c26: $fe $9e
	adc a                                            ; $7c28: $8f
	cp a                                             ; $7c29: $bf
	sbc a                                            ; $7c2a: $9f
	cp a                                             ; $7c2b: $bf
	ld a, [hl]                                       ; $7c2c: $7e
	rst $18                                          ; $7c2d: $df
	ld a, a                                          ; $7c2e: $7f
	ld a, [hl]                                       ; $7c2f: $7e
	sbc [hl]                                         ; $7c30: $9e
	sub l                                            ; $7c31: $95
	cpl                                              ; $7c32: $2f
	add b                                            ; $7c33: $80
	ld l, a                                          ; $7c34: $6f
	ld a, h                                          ; $7c35: $7c
	sbc l                                            ; $7c36: $9d
	ld [hl], b                                       ; $7c37: $70
	ldh [$27], a                                     ; $7c38: $e0 $27
	add b                                            ; $7c3a: $80
	ld [hl], a                                       ; $7c3b: $77
	cp $9b                                           ; $7c3c: $fe $9b
	cpl                                              ; $7c3e: $2f
	rra                                              ; $7c3f: $1f
	ld a, [hl-]                                      ; $7c40: $3a
	ccf                                              ; $7c41: $3f
	daa                                              ; $7c42: $27
	add b                                            ; $7c43: $80
	sub l                                            ; $7c44: $95
	rst $38                                          ; $7c45: $ff
	inc bc                                           ; $7c46: $03
	rst $38                                          ; $7c47: $ff
	ld [bc], a                                       ; $7c48: $02
	db $fd                                           ; $7c49: $fd
	add $fd                                          ; $7c4a: $c6 $fd
	or $bf                                           ; $7c4c: $f6 $bf
	and l                                            ; $7c4e: $a5
	ld e, d                                          ; $7c4f: $5a
	ldh [$97], a                                     ; $7c50: $e0 $97
	ret nz                                           ; $7c52: $c0

	cp $9f                                           ; $7c53: $fe $9f
	rst SubAFromBC                                          ; $7c55: $e7
	ccf                                              ; $7c56: $3f
	rra                                              ; $7c57: $1f
	ld bc, $bd0f                                     ; $7c58: $01 $0f $bd
	rlca                                             ; $7c5b: $07
	add a                                            ; $7c5c: $87
	add a                                            ; $7c5d: $87
	add a                                            ; $7c5e: $87
	sub [hl]                                         ; $7c5f: $96
	add b                                            ; $7c60: $80
	rst GetHLinHL                                          ; $7c61: $cf
	add b                                            ; $7c62: $80
	rst $18                                          ; $7c63: $df
	add b                                            ; $7c64: $80
	ld e, d                                          ; $7c65: $5a
	call c, Call_071_4fef                            ; $7c66: $dc $ef $4f
	ld h, e                                          ; $7c69: $63
	add b                                            ; $7c6a: $80
	sbc d                                            ; $7c6b: $9a
	ld c, $40                                        ; $7c6c: $0e $40
	add b                                            ; $7c6e: $80
	ldh [$80], a                                     ; $7c6f: $e0 $80
	ld h, a                                          ; $7c71: $67
	add b                                            ; $7c72: $80
	ld [hl], a                                       ; $7c73: $77
	cp $7f                                           ; $7c74: $fe $7f
	ld [hl], d                                       ; $7c76: $72
	sbc e                                            ; $7c77: $9b
	and d                                            ; $7c78: $a2
	ld h, b                                          ; $7c79: $60
	jp $2fc0                                         ; $7c7a: $c3 $c0 $2f


	add b                                            ; $7c7d: $80
	ld a, a                                          ; $7c7e: $7f
	ld hl, sp+$7f                                    ; $7c7f: $f8 $7f
	cp $7f                                           ; $7c81: $fe $7f
	ldh a, [c]                                       ; $7c83: $f2
	sbc e                                            ; $7c84: $9b
	dec d                                            ; $7c85: $15
	jr jr_071_7c97                                   ; $7c86: $18 $0f

	rrca                                             ; $7c88: $0f
	dec hl                                           ; $7c89: $2b
	add b                                            ; $7c8a: $80
	sub [hl]                                         ; $7c8b: $96
	ld b, $fd                                        ; $7c8c: $06 $fd
	ld b, $ff                                        ; $7c8e: $06 $ff
	dec b                                            ; $7c90: $05
	ld a, l                                          ; $7c91: $7d
	db $eb                                           ; $7c92: $eb
	ei                                               ; $7c93: $fb
	rst GetHLinHL                                          ; $7c94: $cf
	ld l, a                                          ; $7c95: $6f
	add b                                            ; $7c96: $80

jr_071_7c97:
	rst $38                                          ; $7c97: $ff
	sbc d                                            ; $7c98: $9a
	rlca                                             ; $7c99: $07
	inc bc                                           ; $7c9a: $03
	ld b, $06                                        ; $7c9b: $06 $06
	nop                                              ; $7c9d: $00
	cp a                                             ; $7c9e: $bf
	add b                                            ; $7c9f: $80
	ldh [hDisp1_BGP], a                                     ; $7ca0: $e0 $92
	ret nz                                           ; $7ca2: $c0

	ld hl, sp-$20                                    ; $7ca3: $f8 $e0
	rst $38                                          ; $7ca5: $ff
	sbc b                                            ; $7ca6: $98
	rst $38                                          ; $7ca7: $ff
	rst JumpTable                                          ; $7ca8: $c7
	rst $38                                          ; $7ca9: $ff
	ldh [$1f], a                                     ; $7caa: $e0 $1f
	rst $38                                          ; $7cac: $ff
	ld [bc], a                                       ; $7cad: $02
	rra                                              ; $7cae: $1f
	ld a, e                                          ; $7caf: $7b
	and e                                            ; $7cb0: $a3
	ld a, a                                          ; $7cb1: $7f
	cp $80                                           ; $7cb2: $fe $80
	add [hl]                                         ; $7cb4: $86
	add d                                            ; $7cb5: $82
	add $03                                          ; $7cb6: $c6 $03
	nop                                              ; $7cb8: $00
	jp $0780                                         ; $7cb9: $c3 $80 $07


	nop                                              ; $7cbc: $00
	rrca                                             ; $7cbd: $0f
	ld bc, $031f                                     ; $7cbe: $01 $1f $03
	ccf                                              ; $7cc1: $3f
	rrca                                             ; $7cc2: $0f
	rst $38                                          ; $7cc3: $ff
	dec de                                           ; $7cc4: $1b
	cp $63                                           ; $7cc5: $fe $63
	rst $38                                          ; $7cc7: $ff
	add a                                            ; $7cc8: $87
	cp $0f                                           ; $7cc9: $fe $0f
	ldh a, [$fe]                                     ; $7ccb: $f0 $fe
	add b                                            ; $7ccd: $80
	ldh a, [$80]                                     ; $7cce: $f0 $80
	ret nz                                           ; $7cd0: $c0

	add b                                            ; $7cd1: $80
	pop bc                                           ; $7cd2: $c1
	sbc e                                            ; $7cd3: $9b
	add c                                            ; $7cd4: $81
	jp $c783                                         ; $7cd5: $c3 $83 $c7


	ld [hl], a                                       ; $7cd8: $77
	ret nz                                           ; $7cd9: $c0

	sbc [hl]                                         ; $7cda: $9e
	rlca                                             ; $7cdb: $07
	dec bc                                           ; $7cdc: $0b
	ret nz                                           ; $7cdd: $c0

	ld a, a                                          ; $7cde: $7f
	ld a, [hl+]                                      ; $7cdf: $2a
	dec bc                                           ; $7ce0: $0b
	ret nz                                           ; $7ce1: $c0

	rst $18                                          ; $7ce2: $df
	rlca                                             ; $7ce3: $07
	sbc [hl]                                         ; $7ce4: $9e
	inc bc                                           ; $7ce5: $03
	rra                                              ; $7ce6: $1f
	ret nz                                           ; $7ce7: $c0

	sbc [hl]                                         ; $7ce8: $9e
	add e                                            ; $7ce9: $83
	ld a, d                                          ; $7cea: $7a
	db $ec                                           ; $7ceb: $ec
	sbc [hl]                                         ; $7cec: $9e
	adc a                                            ; $7ced: $8f
	rlca                                             ; $7cee: $07
	ret nz                                           ; $7cef: $c0

	sbc h                                            ; $7cf0: $9c
	rlca                                             ; $7cf1: $07
	add a                                            ; $7cf2: $87
	inc bc                                           ; $7cf3: $03
	inc de                                           ; $7cf4: $13
	ret nz                                           ; $7cf5: $c0

	sbc l                                            ; $7cf6: $9d
	add c                                            ; $7cf7: $81
	sbc a                                            ; $7cf8: $9f
	dec hl                                           ; $7cf9: $2b
	ret nz                                           ; $7cfa: $c0

	ret c                                            ; $7cfb: $d8

	ld bc, $fc80                                     ; $7cfc: $01 $80 $fc
	ret nz                                           ; $7cff: $c0

	rst $38                                          ; $7d00: $ff
	sbc a                                            ; $7d01: $9f
	di                                               ; $7d02: $f3
	rrca                                             ; $7d03: $0f
	ld a, $01                                        ; $7d04: $3e $01
	rrca                                             ; $7d06: $0f
	nop                                              ; $7d07: $00
	rla                                              ; $7d08: $17
	rrca                                             ; $7d09: $0f
	cp h                                             ; $7d0a: $bc
	inc e                                            ; $7d0b: $1c
	cp c                                             ; $7d0c: $b9
	add hl, sp                                       ; $7d0d: $39
	sub a                                            ; $7d0e: $97
	sub a                                            ; $7d0f: $97
	push de                                          ; $7d10: $d5
	add a                                            ; $7d11: $87
	push bc                                          ; $7d12: $c5
	add l                                            ; $7d13: $85
	ld b, d                                          ; $7d14: $42
	jp nz, Jump_071_47eb                             ; $7d15: $c2 $eb $47

	ldh [$c0], a                                     ; $7d18: $e0 $c0
	ld h, b                                          ; $7d1a: $60
	ldh [$f0], a                                     ; $7d1b: $e0 $f0
	add b                                            ; $7d1d: $80
	ld h, b                                          ; $7d1e: $60
	rst $38                                          ; $7d1f: $ff
	ld [hl], b                                       ; $7d20: $70
	rst $18                                          ; $7d21: $df
	ld e, b                                          ; $7d22: $58
	rst GetHLinHL                                          ; $7d23: $cf
	ld c, h                                          ; $7d24: $4c
	add a                                            ; $7d25: $87
	add [hl]                                         ; $7d26: $86
	add e                                            ; $7d27: $83
	add e                                            ; $7d28: $83
	adc a                                            ; $7d29: $8f
	adc a                                            ; $7d2a: $8f
	ld sp, $473f                                     ; $7d2b: $31 $3f $47
	ld a, [hl]                                       ; $7d2e: $7e
	adc a                                            ; $7d2f: $8f
	db $fd                                           ; $7d30: $fd
	adc a                                            ; $7d31: $8f
	ld hl, sp+$1f                                    ; $7d32: $f8 $1f
	ld hl, sp+$23                                    ; $7d34: $f8 $23
	db $e4                                           ; $7d36: $e4
	dec l                                            ; $7d37: $2d
	xor $4a                                          ; $7d38: $ee $4a
	rst GetHLinHL                                          ; $7d3a: $cf
	ld c, e                                          ; $7d3b: $4b
	call $8799                                       ; $7d3c: $cd $99 $87
	add h                                            ; $7d3f: $84
	dec d                                            ; $7d40: $15
	inc e                                            ; $7d41: $1c
	ld c, $8e                                        ; $7d42: $0e $8e
	sbc $c0                                          ; $7d44: $de $c0
	ld a, a                                          ; $7d46: $7f
	sub $80                                          ; $7d47: $d6 $80
	nop                                              ; $7d49: $00
	ld [hl], b                                       ; $7d4a: $70
	add b                                            ; $7d4b: $80
	ret nc                                           ; $7d4c: $d0

	ldh [$f0], a                                     ; $7d4d: $e0 $f0
	ldh [$f0], a                                     ; $7d4f: $e0 $f0
	ret nz                                           ; $7d51: $c0

	ld b, b                                          ; $7d52: $40
	ret nz                                           ; $7d53: $c0

	ld b, b                                          ; $7d54: $40
	ld b, b                                          ; $7d55: $40
	add d                                            ; $7d56: $82
	add b                                            ; $7d57: $80
	ld b, e                                          ; $7d58: $43
	add b                                            ; $7d59: $80
	rlca                                             ; $7d5a: $07
	ld [bc], a                                       ; $7d5b: $02
	rlca                                             ; $7d5c: $07
	ld [bc], a                                       ; $7d5d: $02
	inc bc                                           ; $7d5e: $03
	nop                                              ; $7d5f: $00
	sbc h                                            ; $7d60: $9c
	rst FarCall                                          ; $7d61: $f7
	ld l, [hl]                                       ; $7d62: $6e
	ld a, e                                          ; $7d63: $7b
	rra                                              ; $7d64: $1f
	rra                                              ; $7d65: $1f
	dec c                                            ; $7d66: $0d
	ld e, $8c                                        ; $7d67: $1e $8c
	ccf                                              ; $7d69: $3f
	nop                                              ; $7d6a: $00
	ld [hl], a                                       ; $7d6b: $77
	rrca                                             ; $7d6c: $0f
	ld l, c                                          ; $7d6d: $69
	add hl, de                                       ; $7d6e: $19
	ld a, h                                          ; $7d6f: $7c
	inc e                                            ; $7d70: $1c
	ccf                                              ; $7d71: $3f
	rrca                                             ; $7d72: $0f
	ld a, [bc]                                       ; $7d73: $0a
	rrca                                             ; $7d74: $0f
	ld a, [bc]                                       ; $7d75: $0a
	ld a, [bc]                                       ; $7d76: $0a
	dec b                                            ; $7d77: $05
	dec b                                            ; $7d78: $05
	dec bc                                           ; $7d79: $0b
	rlca                                             ; $7d7a: $07
	add c                                            ; $7d7b: $81
	cp [hl]                                          ; $7d7c: $be
	add b                                            ; $7d7d: $80
	ld bc, $80e2                                     ; $7d7e: $01 $e2 $80
	rst $38                                          ; $7d81: $ff
	ld a, c                                          ; $7d82: $79
	rst $18                                          ; $7d83: $df
	cp a                                             ; $7d84: $bf
	rst SubAFromBC                                          ; $7d85: $e7
	cp $73                                           ; $7d86: $fe $73
	cp $03                                           ; $7d88: $fe $03
	cp [hl]                                          ; $7d8a: $be
	jp $e3ff                                         ; $7d8b: $c3 $ff $e3


	rst $38                                          ; $7d8e: $ff
	ldh a, [c]                                       ; $7d8f: $f2
	cp l                                             ; $7d90: $bd
	and [hl]                                         ; $7d91: $a6
	cp l                                             ; $7d92: $bd
	add [hl]                                         ; $7d93: $86
	cp a                                             ; $7d94: $bf
	add l                                            ; $7d95: $85
	ld a, l                                          ; $7d96: $7d
	dec bc                                           ; $7d97: $0b
	ld a, e                                          ; $7d98: $7b
	adc a                                            ; $7d99: $8f
	rst AddAOntoHL                                          ; $7d9a: $ef
	rra                                              ; $7d9b: $1f
	ei                                               ; $7d9c: $fb
	rra                                              ; $7d9d: $1f
	rst $18                                          ; $7d9e: $df
	dec sp                                           ; $7d9f: $3b
	add b                                            ; $7da0: $80
	cp $3a                                           ; $7da1: $fe $3a
	xor $6a                                          ; $7da3: $ee $6a
	adc $ca                                          ; $7da5: $ce $ca
	add h                                            ; $7da7: $84
	add h                                            ; $7da8: $84
	db $fc                                           ; $7da9: $fc
	db $fc                                           ; $7daa: $fc
	ld c, $fe                                        ; $7dab: $0e $fe
	inc bc                                           ; $7dad: $03
	rst $38                                          ; $7dae: $ff
	pop bc                                           ; $7daf: $c1
	rst $38                                          ; $7db0: $ff
	ldh [$7f], a                                     ; $7db1: $e0 $7f
	ldh a, [$3f]                                     ; $7db3: $f0 $3f
	ld hl, sp+$2f                                    ; $7db5: $f8 $2f
	db $fc                                           ; $7db7: $fc
	ld b, a                                          ; $7db8: $47
	cp $e7                                           ; $7db9: $fe $e7
	cp $e3                                           ; $7dbb: $fe $e3
	rst $38                                          ; $7dbd: $ff
	and c                                            ; $7dbe: $a1
	rst $38                                          ; $7dbf: $ff
	sbc [hl]                                         ; $7dc0: $9e
	ld b, c                                          ; $7dc1: $41
	ld e, a                                          ; $7dc2: $5f
	ld b, b                                          ; $7dc3: $40
	sub l                                            ; $7dc4: $95
	rra                                              ; $7dc5: $1f
	nop                                              ; $7dc6: $00
	sub a                                            ; $7dc7: $97
	rrca                                             ; $7dc8: $0f
	xor h                                            ; $7dc9: $ac
	inc e                                            ; $7dca: $1c
	cp a                                             ; $7dcb: $bf
	cp a                                             ; $7dcc: $bf
	push de                                          ; $7dcd: $d5
	sub a                                            ; $7dce: $97
	ld d, a                                          ; $7dcf: $57
	ld b, b                                          ; $7dd0: $40
	ld e, a                                          ; $7dd1: $5f
	ld h, b                                          ; $7dd2: $60
	ld a, a                                          ; $7dd3: $7f
	cp $9d                                           ; $7dd4: $fe $9d
	or b                                             ; $7dd6: $b0
	ret nz                                           ; $7dd7: $c0

	ld [hl], a                                       ; $7dd8: $77
	ld e, [hl]                                       ; $7dd9: $5e
	daa                                              ; $7dda: $27
	ld h, b                                          ; $7ddb: $60
	sbc [hl]                                         ; $7ddc: $9e
	ld a, a                                          ; $7ddd: $7f
	ld a, e                                          ; $7dde: $7b
	ld e, [hl]                                       ; $7ddf: $5e
	sbc e                                            ; $7de0: $9b
	ld l, h                                          ; $7de1: $6c
	inc e                                            ; $7de2: $1c
	ccf                                              ; $7de3: $3f
	rra                                              ; $7de4: $1f
	daa                                              ; $7de5: $27
	ld h, b                                          ; $7de6: $60
	ld a, a                                          ; $7de7: $7f
	cp $97                                           ; $7de8: $fe $97
	cp a                                             ; $7dea: $bf
	jp $e2df                                         ; $7deb: $c3 $df $e2


Call_071_7dee:
	db $fd                                           ; $7dee: $fd
	or $bd                                           ; $7def: $f6 $bd
	and [hl]                                         ; $7df1: $a6
	ld d, a                                          ; $7df2: $57
	ld h, b                                          ; $7df3: $60
	ld l, a                                          ; $7df4: $6f
	add b                                            ; $7df5: $80
	sbc [hl]                                         ; $7df6: $9e
	ld e, $7b                                        ; $7df7: $1e $7b
	add b                                            ; $7df9: $80
	ld a, a                                          ; $7dfa: $7f
	cp $9e                                           ; $7dfb: $fe $9e
	adc a                                            ; $7dfd: $8f
	cp a                                             ; $7dfe: $bf
	sbc a                                            ; $7dff: $9f
	cp a                                             ; $7e00: $bf
	ld a, [hl]                                       ; $7e01: $7e
	rst $18                                          ; $7e02: $df
	ld a, a                                          ; $7e03: $7f
	ld a, [hl]                                       ; $7e04: $7e
	sbc [hl]                                         ; $7e05: $9e
	sub l                                            ; $7e06: $95
	cpl                                              ; $7e07: $2f
	add b                                            ; $7e08: $80
	ld l, a                                          ; $7e09: $6f
	ld a, h                                          ; $7e0a: $7c
	sbc l                                            ; $7e0b: $9d
	ld [hl], b                                       ; $7e0c: $70
	ldh [$27], a                                     ; $7e0d: $e0 $27
	add b                                            ; $7e0f: $80
	ld [hl], a                                       ; $7e10: $77
	cp $9b                                           ; $7e11: $fe $9b
	cpl                                              ; $7e13: $2f
	rra                                              ; $7e14: $1f
	ld a, [hl-]                                      ; $7e15: $3a
	ccf                                              ; $7e16: $3f
	daa                                              ; $7e17: $27
	add b                                            ; $7e18: $80
	sub l                                            ; $7e19: $95
	rst $38                                          ; $7e1a: $ff
	inc bc                                           ; $7e1b: $03
	rst $38                                          ; $7e1c: $ff
	ld [bc], a                                       ; $7e1d: $02
	db $fd                                           ; $7e1e: $fd
	add $fd                                          ; $7e1f: $c6 $fd
	or $bf                                           ; $7e21: $f6 $bf
	and l                                            ; $7e23: $a5
	ld d, e                                          ; $7e24: $53
	add b                                            ; $7e25: $80
	ld a, a                                          ; $7e26: $7f
	cp l                                             ; $7e27: $bd
	sbc c                                            ; $7e28: $99
	rrca                                             ; $7e29: $0f
	add hl, bc                                       ; $7e2a: $09
	rlca                                             ; $7e2b: $07
	ld c, $01                                        ; $7e2c: $0e $01
	rlca                                             ; $7e2e: $07
	cp [hl]                                          ; $7e2f: $be
	add a                                            ; $7e30: $87
	add a                                            ; $7e31: $87
	add a                                            ; $7e32: $87
	sub [hl]                                         ; $7e33: $96
	add b                                            ; $7e34: $80
	rst GetHLinHL                                          ; $7e35: $cf
	add b                                            ; $7e36: $80
	rst $18                                          ; $7e37: $df
	add b                                            ; $7e38: $80
	ld e, d                                          ; $7e39: $5a
	call c, Call_071_4fef                            ; $7e3a: $dc $ef $4f
	ld h, a                                          ; $7e3d: $67
	add b                                            ; $7e3e: $80
	sub a                                            ; $7e3f: $97
	adc [hl]                                         ; $7e40: $8e
	ld c, $40                                        ; $7e41: $0e $40
	add b                                            ; $7e43: $80
	ldh [$c0], a                                     ; $7e44: $e0 $c0
	ldh a, [$c0]                                     ; $7e46: $f0 $c0
	ld h, a                                          ; $7e48: $67
	ld a, [hl]                                       ; $7e49: $7e
	ld a, a                                          ; $7e4a: $7f
	cp $99                                           ; $7e4b: $fe $99
	ldh [rP1], a                                     ; $7e4d: $e0 $00
	and d                                            ; $7e4f: $a2
	ld h, b                                          ; $7e50: $60
	jp Jump_071_57c0                                 ; $7e51: $c3 $c0 $57


	add b                                            ; $7e54: $80
	sbc e                                            ; $7e55: $9b
	ld e, $0f                                        ; $7e56: $1e $0f
	dec a                                            ; $7e58: $3d
	ld c, $6f                                        ; $7e59: $0e $6f
	add b                                            ; $7e5b: $80
	ld a, a                                          ; $7e5c: $7f
	ld a, b                                          ; $7e5d: $78
	ld a, a                                          ; $7e5e: $7f
	cp $7e                                           ; $7e5f: $fe $7e
	or [hl]                                          ; $7e61: $b6
	sbc e                                            ; $7e62: $9b
	dec d                                            ; $7e63: $15
	jr jr_071_7e75                                   ; $7e64: $18 $0f

	rrca                                             ; $7e66: $0f
	dec hl                                           ; $7e67: $2b
	add b                                            ; $7e68: $80
	sub [hl]                                         ; $7e69: $96
	ld b, $fd                                        ; $7e6a: $06 $fd
	ld b, $ff                                        ; $7e6c: $06 $ff
	dec b                                            ; $7e6e: $05
	ld a, l                                          ; $7e6f: $7d
	db $eb                                           ; $7e70: $eb
	ei                                               ; $7e71: $fb
	rst GetHLinHL                                          ; $7e72: $cf
	ld l, a                                          ; $7e73: $6f
	add b                                            ; $7e74: $80

jr_071_7e75:
	rst $38                                          ; $7e75: $ff
	sbc d                                            ; $7e76: $9a
	rlca                                             ; $7e77: $07
	inc bc                                           ; $7e78: $03
	rlca                                             ; $7e79: $07
	inc b                                            ; $7e7a: $04

Jump_071_7e7b:
	nop                                              ; $7e7b: $00
	cp a                                             ; $7e7c: $bf
	add b                                            ; $7e7d: $80
	ldh [hDisp1_BGP], a                                     ; $7e7e: $e0 $92
	ret nz                                           ; $7e80: $c0

	ld hl, sp-$20                                    ; $7e81: $f8 $e0
	rst $38                                          ; $7e83: $ff
	sbc b                                            ; $7e84: $98
	rst $38                                          ; $7e85: $ff
	rst JumpTable                                          ; $7e86: $c7
	rst $38                                          ; $7e87: $ff
	ldh [$1f], a                                     ; $7e88: $e0 $1f
	rst $38                                          ; $7e8a: $ff
	ld [bc], a                                       ; $7e8b: $02
	rra                                              ; $7e8c: $1f
	ld a, e                                          ; $7e8d: $7b
	and e                                            ; $7e8e: $a3
	ld a, a                                          ; $7e8f: $7f
	cp $9b                                           ; $7e90: $fe $9b
	add [hl]                                         ; $7e92: $86
	add d                                            ; $7e93: $82
	add $03                                          ; $7e94: $c6 $03
	cp a                                             ; $7e96: $bf
	add e                                            ; $7e97: $83
	add a                                            ; $7e98: $87
	add h                                            ; $7e99: $84
	add b                                            ; $7e9a: $80
	rrca                                             ; $7e9b: $0f
	ld bc, $031f                                     ; $7e9c: $01 $1f $03
	ccf                                              ; $7e9f: $3f
	rrca                                             ; $7ea0: $0f
	rst $38                                          ; $7ea1: $ff
	dec de                                           ; $7ea2: $1b
	cp $63                                           ; $7ea3: $fe $63
	rst $38                                          ; $7ea5: $ff
	add a                                            ; $7ea6: $87
	cp $0f                                           ; $7ea7: $fe $0f
	ldh a, [$fe]                                     ; $7ea9: $f0 $fe
	add b                                            ; $7eab: $80
	ldh a, [$80]                                     ; $7eac: $f0 $80
	ret nz                                           ; $7eae: $c0

	add b                                            ; $7eaf: $80
	pop bc                                           ; $7eb0: $c1
	add c                                            ; $7eb1: $81
	jp $c783                                         ; $7eb2: $c3 $83 $c7


	ld [hl], e                                       ; $7eb5: $73
	ret nz                                           ; $7eb6: $c0

	ld a, a                                          ; $7eb7: $7f
	ld b, l                                          ; $7eb8: $45
	inc bc                                           ; $7eb9: $03
	ret nz                                           ; $7eba: $c0

	rrca                                             ; $7ebb: $0f
	ret nz                                           ; $7ebc: $c0

	ld a, a                                          ; $7ebd: $7f
	db $fc                                           ; $7ebe: $fc
	rrca                                             ; $7ebf: $0f
	ret nz                                           ; $7ec0: $c0

	sbc [hl]                                         ; $7ec1: $9e
	adc a                                            ; $7ec2: $8f
	rlca                                             ; $7ec3: $07
	ret nz                                           ; $7ec4: $c0

	sbc d                                            ; $7ec5: $9a
	rlca                                             ; $7ec6: $07
	add a                                            ; $7ec7: $87
	rlca                                             ; $7ec8: $07
	rst SubAFromBC                                          ; $7ec9: $e7
	jp $c01b                                         ; $7eca: $c3 $1b $c0


	sbc h                                            ; $7ecd: $9c
	add c                                            ; $7ece: $81
	sbc a                                            ; $7ecf: $9f
	add e                                            ; $7ed0: $83
	cpl                                              ; $7ed1: $2f
	ret nz                                           ; $7ed2: $c0

	and d                                            ; $7ed3: $a2
	ld [bc], a                                       ; $7ed4: $02
	ld sp, hl                                        ; $7ed5: $f9
	rst $18                                          ; $7ed6: $df
	ld bc, $03df                                     ; $7ed7: $01 $df $03
	db $fd                                           ; $7eda: $fd
	rst $18                                          ; $7edb: $df
	inc bc                                           ; $7edc: $03
	add b                                            ; $7edd: $80
	rrca                                             ; $7ede: $0f
	inc c                                            ; $7edf: $0c
	inc e                                            ; $7ee0: $1c
	dec de                                           ; $7ee1: $1b
	add hl, sp                                       ; $7ee2: $39
	scf                                              ; $7ee3: $37
	scf                                              ; $7ee4: $37
	ld l, $4e                                        ; $7ee5: $2e $4e
	ld a, l                                          ; $7ee7: $7d
	ld e, l                                          ; $7ee8: $5d
	ld a, e                                          ; $7ee9: $7b
	xor l                                            ; $7eea: $ad
	db $eb                                           ; $7eeb: $eb
	db $db                                           ; $7eec: $db
	sub $9b                                          ; $7eed: $d6 $9b
	sub [hl]                                         ; $7eef: $96
	and [hl]                                         ; $7ef0: $a6
	cp l                                             ; $7ef1: $bd
	ld h, $3d                                        ; $7ef2: $26 $3d
	ld e, c                                          ; $7ef4: $59
	ld a, a                                          ; $7ef5: $7f
	ld l, e                                          ; $7ef6: $6b
	ld l, a                                          ; $7ef7: $6f
	ld c, e                                          ; $7ef8: $4b
	ld c, a                                          ; $7ef9: $4f
	ld c, l                                          ; $7efa: $4d
	ld c, l                                          ; $7efb: $4d
	dec c                                            ; $7efc: $0d
	sbc [hl]                                         ; $7efd: $9e
	dec c                                            ; $7efe: $0d
	db $dd                                           ; $7eff: $dd
	add hl, bc                                       ; $7f00: $09
	rst $18                                          ; $7f01: $df
	ld [$dbed], sp                                   ; $7f02: $08 $ed $db
	ld bc, $0298                                     ; $7f05: $01 $98 $02
	inc bc                                           ; $7f08: $03
	ld [bc], a                                       ; $7f09: $02
	inc bc                                           ; $7f0a: $03
	ld b, $07                                        ; $7f0b: $06 $07
	inc b                                            ; $7f0d: $04
	ld a, e                                          ; $7f0e: $7b
	cp $80                                           ; $7f0f: $fe $80
	ld [$080f], sp                                   ; $7f11: $08 $0f $08
	rrca                                             ; $7f14: $0f
	inc bc                                           ; $7f15: $03
	inc bc                                           ; $7f16: $03
	rlca                                             ; $7f17: $07
	inc b                                            ; $7f18: $04
	rrca                                             ; $7f19: $0f
	inc c                                            ; $7f1a: $0c
	ld a, a                                          ; $7f1b: $7f
	ld a, d                                          ; $7f1c: $7a
	rst $38                                          ; $7f1d: $ff
	adc d                                            ; $7f1e: $8a
	rst $38                                          ; $7f1f: $ff
	ret                                              ; $7f20: $c9


	ccf                                              ; $7f21: $3f
	dec [hl]                                         ; $7f22: $35
	rst AddAOntoHL                                          ; $7f23: $ef
	db $fc                                           ; $7f24: $fc
	inc bc                                           ; $7f25: $03
	cp $1f                                           ; $7f26: $fe $1f
	rst $38                                          ; $7f28: $ff
	ldh [rIE], a                                     ; $7f29: $e0 $ff
	inc hl                                           ; $7f2b: $23
	rst $38                                          ; $7f2c: $ff
	ld c, h                                          ; $7f2d: $4c
	rst $38                                          ; $7f2e: $ff
	sbc b                                            ; $7f2f: $98
	adc e                                            ; $7f30: $8b
	rst $38                                          ; $7f31: $ff
	ld sp, $23ff                                     ; $7f32: $31 $ff $23
	cp $47                                           ; $7f35: $fe $47
	db $fc                                           ; $7f37: $fc
	ld c, a                                          ; $7f38: $4f
	db $fd                                           ; $7f39: $fd
	adc a                                            ; $7f3a: $8f
	ld sp, hl                                        ; $7f3b: $f9
	sbc a                                            ; $7f3c: $9f
	ld a, [$fa1f]                                    ; $7f3d: $fa $1f $fa
	rla                                              ; $7f40: $17
	db $fc                                           ; $7f41: $fc
	daa                                              ; $7f42: $27
	db $fc                                           ; $7f43: $fc
	inc hl                                           ; $7f44: $23
	ld a, e                                          ; $7f45: $7b
	xor $7f                                          ; $7f46: $ee $7f
	cp $7f                                           ; $7f48: $fe $7f
	ld hl, sp-$6f                                    ; $7f4a: $f8 $91
	xor a                                            ; $7f4c: $af
	db $fc                                           ; $7f4d: $fc
	xor a                                            ; $7f4e: $af
	ld hl, sp+$5f                                    ; $7f4f: $f8 $5f
	ld d, d                                          ; $7f51: $52
	ld a, a                                          ; $7f52: $7f
	ld a, a                                          ; $7f53: $7f
	ld d, d                                          ; $7f54: $52
	ld e, [hl]                                       ; $7f55: $5e
	ld c, d                                          ; $7f56: $4a
	ld c, [hl]                                       ; $7f57: $4e
	ld c, d                                          ; $7f58: $4a
	ld c, [hl]                                       ; $7f59: $4e
	db $dd                                           ; $7f5a: $dd
	ld b, $dd                                        ; $7f5b: $06 $dd
	ld [bc], a                                       ; $7f5d: $02
	ld c, a                                          ; $7f5e: $4f
	sub h                                            ; $7f5f: $94
	ld a, a                                          ; $7f60: $7f
	sbc h                                            ; $7f61: $9c
	sub b                                            ; $7f62: $90
	inc c                                            ; $7f63: $0c
	rrca                                             ; $7f64: $0f
	rra                                              ; $7f65: $1f
	rra                                              ; $7f66: $1f
	ld sp, $203f                                     ; $7f67: $31 $3f $20
	ccf                                              ; $7f6a: $3f
	ld h, b                                          ; $7f6b: $60
	ld a, a                                          ; $7f6c: $7f
	ld b, b                                          ; $7f6d: $40
	ld a, a                                          ; $7f6e: $7f
	ret nz                                           ; $7f6f: $c0

	rst $38                                          ; $7f70: $ff
	add b                                            ; $7f71: $80
	ld a, e                                          ; $7f72: $7b
	cp $9e                                           ; $7f73: $fe $9e
	nop                                              ; $7f75: $00
	ccf                                              ; $7f76: $3f
	cp $ea                                           ; $7f77: $fe $ea
	ld [hl], a                                       ; $7f79: $77
	db $10                                           ; $7f7a: $10
	ld [hl], a                                       ; $7f7b: $77
	cp [hl]                                          ; $7f7c: $be
	sub [hl]                                         ; $7f7d: $96
	ld sp, hl                                        ; $7f7e: $f9
	ld a, a                                          ; $7f7f: $7f
	or d                                             ; $7f80: $b2
	sbc a                                            ; $7f81: $9f
	dec d                                            ; $7f82: $15
	rra                                              ; $7f83: $1f
	ei                                               ; $7f84: $fb
	rrca                                             ; $7f85: $0f
	db $fc                                           ; $7f86: $fc
	ld a, e                                          ; $7f87: $7b
	ld d, h                                          ; $7f88: $54
	ld a, a                                          ; $7f89: $7f
	cp $96                                           ; $7f8a: $fe $96
	ld sp, hl                                        ; $7f8c: $f9
	adc a                                            ; $7f8d: $8f
	cp $af                                           ; $7f8e: $fe $af

Call_071_7f90:
	ld hl, sp-$51                                    ; $7f90: $f8 $af
	ld hl, sp-$01                                    ; $7f92: $f8 $ff
	ld hl, sp-$22                                    ; $7f94: $f8 $de
	rst GetHLinHL                                          ; $7f96: $cf
	ld a, e                                          ; $7f97: $7b
	ld a, [$af9a]                                    ; $7f98: $fa $9a $af
	cp $af                                           ; $7f9b: $fe $af
	ld sp, hl                                        ; $7f9d: $f9
	adc a                                            ; $7f9e: $8f
	ld [hl], a                                       ; $7f9f: $77
	add sp, -$80                                     ; $7fa0: $e8 $80
	ld hl, sp+$0f                                    ; $7fa2: $f8 $0f
	cp $0f                                           ; $7fa4: $fe $0f
	add hl, de                                       ; $7fa6: $19
	rra                                              ; $7fa7: $1f
	ld hl, sp-$61                                    ; $7fa8: $f8 $9f
	ld hl, sp+$7f                                    ; $7faa: $f8 $7f
	db $f4                                           ; $7fac: $f4
	scf                                              ; $7fad: $37
	db $f4                                           ; $7fae: $f4
	scf                                              ; $7faf: $37
	ldh a, [c]                                       ; $7fb0: $f2
	inc sp                                           ; $7fb1: $33
	pop de                                           ; $7fb2: $d1
	ld [hl], c                                       ; $7fb3: $71
	pop de                                           ; $7fb4: $d1
	ld [hl], c                                       ; $7fb5: $71
	sub b                                            ; $7fb6: $90
	ldh a, [$c8]                                     ; $7fb7: $f0 $c8
	ld hl, sp+$68                                    ; $7fb9: $f8 $68
	ld a, b                                          ; $7fbb: $78
	inc [hl]                                         ; $7fbc: $34
	inc a                                            ; $7fbd: $3c
	inc d                                            ; $7fbe: $14
	inc e                                            ; $7fbf: $1c

Call_071_7fc0:
	inc c                                            ; $7fc0: $0c
	sbc h                                            ; $7fc1: $9c
	inc c                                            ; $7fc2: $0c
	ld b, $06                                        ; $7fc3: $06 $06
	ld e, a                                          ; $7fc5: $5f
	xor b                                            ; $7fc6: $a8
	rst $18                                          ; $7fc7: $df
	rlca                                             ; $7fc8: $07
	sub [hl]                                         ; $7fc9: $96
	inc e                                            ; $7fca: $1c
	rra                                              ; $7fcb: $1f
	ld h, b                                          ; $7fcc: $60
	ld a, a                                          ; $7fcd: $7f
	ld hl, sp-$01                                    ; $7fce: $f8 $ff
	ld b, $ff                                        ; $7fd0: $06 $ff
	ld bc, $807b                                     ; $7fd2: $01 $7b $80
	ld a, a                                          ; $7fd5: $7f
	ld l, h                                          ; $7fd6: $6c
	ld a, a                                          ; $7fd7: $7f
	ld h, [hl]                                       ; $7fd8: $66
	sub h                                            ; $7fd9: $94
	ld h, b                                          ; $7fda: $60
	rst $38                                          ; $7fdb: $ff
	jr nc, @+$01                                     ; $7fdc: $30 $ff

	jr @+$01                                         ; $7fde: $18 $ff

	ld [$0cff], sp                                   ; $7fe0: $08 $ff $0c
	rst $38                                          ; $7fe3: $ff
	inc b                                            ; $7fe4: $04
	ld a, e                                          ; $7fe5: $7b
	ld [$029e], a                                    ; $7fe6: $ea $9e $02
	ld [hl], e                                       ; $7fe9: $73
	cp $9e                                           ; $7fea: $fe $9e
	inc bc                                           ; $7fec: $03
	ld a, e                                          ; $7fed: $7b
	ldh [c], a                                       ; $7fee: $e2
	ld [hl], a                                       ; $7fef: $77
	cp $f1                                           ; $7ff0: $fe $f1
	rst $18                                          ; $7ff2: $df
	inc bc                                           ; $7ff3: $03
	ld a, a                                          ; $7ff4: $7f
	ld l, h                                          ; $7ff5: $6c
	add a                                            ; $7ff6: $87

Jump_071_7ff7:
	inc sp                                           ; $7ff7: $33
	inc a                                            ; $7ff8: $3c
	ret                                              ; $7ff9: $c9


	rst FarCall                                          ; $7ffa: $f7
	add [hl]                                         ; $7ffb: $86
	rst $38                                          ; $7ffc: $ff
	add hl, de                                       ; $7ffd: $19
	cp $66                                           ; $7ffe: $fe $66
