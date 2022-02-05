; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $041", ROMX[$4000], BANK[$41]

	adc a                                            ; $4000: $8f
	cpl                                              ; $4001: $2f
	cpl                                              ; $4002: $2f
	add a                                            ; $4003: $87
	add a                                            ; $4004: $87
	db $dd                                           ; $4005: $dd
	rrca                                             ; $4006: $0f
	sbc [hl]                                         ; $4007: $9e
	rlca                                             ; $4008: $07
	sbc $87                                          ; $4009: $de $87
	sub a                                            ; $400b: $97
	ld b, $46                                        ; $400c: $06 $46
	add [hl]                                         ; $400e: $86
	add $c3                                          ; $400f: $c6 $c3
	jp z, $c3c3                                      ; $4011: $ca $c3 $c3

	db $dd                                           ; $4014: $dd
	ld sp, hl                                        ; $4015: $f9
	db $dd                                           ; $4016: $dd
	db $fd                                           ; $4017: $fd
	ld a, e                                          ; $4018: $7b
	add e                                            ; $4019: $83
	ld a, e                                          ; $401a: $7b
	jp nz, $1f9d                                     ; $401b: $c2 $9d $1f

	sbc a                                            ; $401e: $9f
	db $fc                                           ; $401f: $fc
	sbc h                                            ; $4020: $9c
	add b                                            ; $4021: $80
	ldh [$60], a                                     ; $4022: $e0 $60
	cp $7d                                           ; $4024: $fe $7d
	di                                               ; $4026: $f3
	sbc h                                            ; $4027: $9c
	dec b                                            ; $4028: $05
	dec bc                                           ; $4029: $0b
	ld d, $de                                        ; $402a: $16 $de
	rst $38                                          ; $402c: $ff
	sbc d                                            ; $402d: $9a
	cp $fd                                           ; $402e: $fe $fd
	ei                                               ; $4030: $fb
	rst FarCall                                          ; $4031: $f7
	rst AddAOntoHL                                          ; $4032: $ef
	ld a, e                                          ; $4033: $7b
	ld e, l                                          ; $4034: $5d
	ld [hl], e                                       ; $4035: $73
	and h                                            ; $4036: $a4
	sbc e                                            ; $4037: $9b
	rst GetHLinHL                                          ; $4038: $cf
	cp b                                             ; $4039: $b8
	ld [hl], b                                       ; $403a: $70
	ldh [rPCM12], a                                  ; $403b: $e0 $76
	dec [hl]                                         ; $403d: $35
	ret c                                            ; $403e: $d8

	rst $38                                          ; $403f: $ff
	ld h, a                                          ; $4040: $67
	rrca                                             ; $4041: $0f
	sbc [hl]                                         ; $4042: $9e
	ld d, b                                          ; $4043: $50
	call c, $9cff                                    ; $4044: $dc $ff $9c
	db $fc                                           ; $4047: $fc
	rst $38                                          ; $4048: $ff
	xor a                                            ; $4049: $af
	ld l, e                                          ; $404a: $6b
	ldh a, [$9e]                                     ; $404b: $f0 $9e
	inc b                                            ; $404d: $04
	db $dd                                           ; $404e: $dd
	rst $38                                          ; $404f: $ff
	sbc e                                            ; $4050: $9b
	ld a, [$ff00]                                    ; $4051: $fa $00 $ff
	ei                                               ; $4054: $fb
	ld e, d                                          ; $4055: $5a
	ld a, b                                          ; $4056: $78
	ld a, b                                          ; $4057: $78
	ld b, d                                          ; $4058: $42
	ld h, e                                          ; $4059: $63
	ret nc                                           ; $405a: $d0

	ld l, e                                          ; $405b: $6b
	jp $f063                                         ; $405c: $c3 $63 $f0


	sbc [hl]                                         ; $405f: $9e
	sub l                                            ; $4060: $95
	db $dd                                           ; $4061: $dd
	rst $38                                          ; $4062: $ff
	ld a, l                                          ; $4063: $7d
	add c                                            ; $4064: $81
	sbc l                                            ; $4065: $9d
	rst $38                                          ; $4066: $ff
	ld l, d                                          ; $4067: $6a
	dec hl                                           ; $4068: $2b
	ldh [$7e], a                                     ; $4069: $e0 $7e

jr_041_406b:
	dec e                                            ; $406b: $1d
	sbc $ff                                          ; $406c: $de $ff
	sbc e                                            ; $406e: $9b
	ccf                                              ; $406f: $3f
	ld bc, $1fff                                     ; $4070: $01 $ff $1f
	ld a, e                                          ; $4073: $7b
	dec bc                                           ; $4074: $0b
	ld [hl], a                                       ; $4075: $77
	ldh a, [$9a]                                     ; $4076: $f0 $9a
	sbc a                                            ; $4078: $9f
	rra                                              ; $4079: $1f
	ld [bc], a                                       ; $407a: $02
	add b                                            ; $407b: $80
	ldh [$74], a                                     ; $407c: $e0 $74
	ld e, c                                          ; $407e: $59
	ld [hl], a                                       ; $407f: $77
	ld c, c                                          ; $4080: $49
	sub l                                            ; $4081: $95
	rlca                                             ; $4082: $07
	ld bc, $cafa                                     ; $4083: $01 $fa $ca
	ld c, d                                          ; $4086: $4a
	inc e                                            ; $4087: $1c
	inc e                                            ; $4088: $1c
	ld e, $38                                        ; $4089: $1e $38
	jr nz, jr_041_406b                               ; $408b: $20 $de

	ld hl, sp-$22                                    ; $408d: $f8 $de
	add sp, -$68                                     ; $408f: $e8 $98
	db $ec                                           ; $4091: $ec
	ld hl, sp+$7c                                    ; $4092: $f8 $7c
	ld a, a                                          ; $4094: $7f
	ld a, a                                          ; $4095: $7f
	nop                                              ; $4096: $00
	jr nz, jr_041_4113                               ; $4097: $20 $7a

	jp $f39a                                         ; $4099: $c3 $9a $f3


	ld hl, sp+$3f                                    ; $409c: $f8 $3f
	ld a, a                                          ; $409e: $7f
	ld e, a                                          ; $409f: $5f
	ld a, e                                          ; $40a0: $7b
	db $f4                                           ; $40a1: $f4
	ld a, a                                          ; $40a2: $7f
	inc l                                            ; $40a3: $2c
	ld a, a                                          ; $40a4: $7f
	or [hl]                                          ; $40a5: $b6
	sbc e                                            ; $40a6: $9b
	jr nc, jr_041_40a9                               ; $40a7: $30 $00

jr_041_40a9:
	nop                                              ; $40a9: $00
	db $fd                                           ; $40aa: $fd
	halt                                             ; $40ab: $76
	sbc $9e                                          ; $40ac: $de $9e
	rst GetHLinHL                                          ; $40ae: $cf
	ld [hl], a                                       ; $40af: $77
	sub a                                            ; $40b0: $97
	sbc [hl]                                         ; $40b1: $9e
	dec b                                            ; $40b2: $05
	ld [hl], e                                       ; $40b3: $73
	and [hl]                                         ; $40b4: $a6
	ld a, e                                          ; $40b5: $7b
	ld e, l                                          ; $40b6: $5d
	ld h, a                                          ; $40b7: $67
	sub a                                            ; $40b8: $97
	ld l, e                                          ; $40b9: $6b
	ldh a, [rBCPS]                                   ; $40ba: $f0 $68
	dec hl                                           ; $40bc: $2b
	ld a, e                                          ; $40bd: $7b
	reti                                             ; $40be: $d9


	ld a, e                                          ; $40bf: $7b
	ld d, d                                          ; $40c0: $52
	ld a, a                                          ; $40c1: $7f
	di                                               ; $40c2: $f3
	sbc h                                            ; $40c3: $9c
	add e                                            ; $40c4: $83
	dec bc                                           ; $40c5: $0b
	rst $38                                          ; $40c6: $ff
	ld [hl], a                                       ; $40c7: $77
	sbc h                                            ; $40c8: $9c
	adc l                                            ; $40c9: $8d
	nop                                              ; $40ca: $00
	rst SubAFromHL                                          ; $40cb: $d7
	db $d3                                           ; $40cc: $d3
	sub a                                            ; $40cd: $97
	sub d                                            ; $40ce: $92
	jp nz, $c3e3                                     ; $40cf: $c2 $e3 $c3

	pop bc                                           ; $40d2: $c1
	add a                                            ; $40d3: $87
	add a                                            ; $40d4: $87
	jp Jump_041_43c3                                 ; $40d5: $c3 $c3 $43


	ld b, c                                          ; $40d8: $41
	ld hl, $ff21                                     ; $40d9: $21 $21 $ff
	ld a, d                                          ; $40dc: $7a
	add [hl]                                         ; $40dd: $86
	sbc e                                            ; $40de: $9b
	rrca                                             ; $40df: $0f
	ld c, $1c                                        ; $40e0: $0e $1c
	jr c, jr_041_415f                                ; $40e2: $38 $7b

	dec c                                            ; $40e4: $0d
	sub [hl]                                         ; $40e5: $96
	ld hl, sp-$10                                    ; $40e6: $f8 $f0
	ldh a, [$e0]                                     ; $40e8: $f0 $e0
	ret nz                                           ; $40ea: $c0

	rst $38                                          ; $40eb: $ff
	ld c, $ff                                        ; $40ec: $0e $ff
	cp $75                                           ; $40ee: $fe $75
	ldh [c], a                                       ; $40f0: $e2
	sbc l                                            ; $40f1: $9d
	rst $38                                          ; $40f2: $ff
	ldh a, [$fb]                                     ; $40f3: $f0 $fb
	add hl, sp                                       ; $40f5: $39
	nop                                              ; $40f6: $00
	sbc [hl]                                         ; $40f7: $9e
	ld h, l                                          ; $40f8: $65
	db $dd                                           ; $40f9: $dd
	ld b, h                                          ; $40fa: $44
	sbc d                                            ; $40fb: $9a
	ld b, [hl]                                       ; $40fc: $46
	ld h, [hl]                                       ; $40fd: $66
	ld h, [hl]                                       ; $40fe: $66
	ld b, h                                          ; $40ff: $44
	ld b, h                                          ; $4100: $44
	ld l, a                                          ; $4101: $6f
	or $9d                                           ; $4102: $f6 $9d
	ld h, l                                          ; $4104: $65
	ld d, l                                          ; $4105: $55
	ld b, e                                          ; $4106: $43
	or $9e                                           ; $4107: $f6 $9e
	ld b, l                                          ; $4109: $45
	ld [hl], a                                       ; $410a: $77
	or $7b                                           ; $410b: $f6 $7b
	db $fd                                           ; $410d: $fd
	ld a, e                                          ; $410e: $7b
	or $df                                           ; $410f: $f6 $df
	ld d, l                                          ; $4111: $55
	rst SubAFromDE                                          ; $4112: $df

jr_041_4113:
	ld b, h                                          ; $4113: $44
	sbc [hl]                                         ; $4114: $9e
	ld d, a                                          ; $4115: $57
	db $dd                                           ; $4116: $dd
	inc sp                                           ; $4117: $33
	sub h                                            ; $4118: $94
	scf                                              ; $4119: $37
	ld [hl], a                                       ; $411a: $77
	ld [hl], a                                       ; $411b: $77
	inc sp                                           ; $411c: $33
	inc sp                                           ; $411d: $33
	ld d, a                                          ; $411e: $57
	inc sp                                           ; $411f: $33
	ld h, [hl]                                       ; $4120: $66
	ld h, [hl]                                       ; $4121: $66
	ld h, e                                          ; $4122: $63
	inc sp                                           ; $4123: $33
	cpl                                              ; $4124: $2f
	or $9e                                           ; $4125: $f6 $9e
	ld [hl], e                                       ; $4127: $73
	ld d, e                                          ; $4128: $53
	or $dd                                           ; $4129: $f6 $dd
	inc sp                                           ; $412b: $33
	ld [hl], a                                       ; $412c: $77
	or $fd                                           ; $412d: $f6 $fd
	add [hl]                                         ; $412f: $86
	sbc h                                            ; $4130: $9c
	nop                                              ; $4131: $00
	rst $38                                          ; $4132: $ff
	rst $38                                          ; $4133: $ff
	db $fc                                           ; $4134: $fc
	ld a, e                                          ; $4135: $7b
	ld a, [$f66f]                                    ; $4136: $fa $6f $f6
	ld a, e                                          ; $4139: $7b
	ld a, [$039b]                                    ; $413a: $fa $9b $03
	inc b                                            ; $413d: $04
	dec b                                            ; $413e: $05
	inc b                                            ; $413f: $04
	ld [hl], e                                       ; $4140: $73
	ldh a, [$de]                                     ; $4141: $f0 $de
	inc bc                                           ; $4143: $03
	ld [hl], a                                       ; $4144: $77
	ldh a, [$9e]                                     ; $4145: $f0 $9e
	add b                                            ; $4147: $80
	ld h, a                                          ; $4148: $67
	ldh [$de], a                                     ; $4149: $e0 $de
	add b                                            ; $414b: $80
	scf                                              ; $414c: $37
	ret nc                                           ; $414d: $d0

	inc bc                                           ; $414e: $03
	ldh a, [$03]                                     ; $414f: $f0 $03
	ldh a, [$03]                                     ; $4151: $f0 $03
	ldh a, [$03]                                     ; $4153: $f0 $03
	ldh a, [rAUD1LOW]                                ; $4155: $f0 $13
	ldh a, [$9d]                                     ; $4157: $f0 $9d
	ld bc, $4f02                                     ; $4159: $01 $02 $4f
	ldh a, [$9c]                                     ; $415c: $f0 $9c
	ld e, a                                          ; $415e: $5f

jr_041_415f:
	xor e                                            ; $415f: $ab
	ld d, l                                          ; $4160: $55
	ld d, a                                          ; $4161: $57
	ldh a, [$9b]                                     ; $4162: $f0 $9b
	ld [bc], a                                       ; $4164: $02
	push hl                                          ; $4165: $e5
	db $e3                                           ; $4166: $e3
	push hl                                          ; $4167: $e5
	ld [hl], e                                       ; $4168: $73
	ldh a, [$de]                                     ; $4169: $f0 $de
	ld c, $73                                        ; $416b: $0e $73
	ld [$7f9c], a                                    ; $416d: $ea $9c $7f
	ld a, [hl]                                       ; $4170: $7e
	ld a, l                                          ; $4171: $7d
	ld d, e                                          ; $4172: $53
	ret nc                                           ; $4173: $d0

	sbc l                                            ; $4174: $9d
	rst $38                                          ; $4175: $ff
	xor d                                            ; $4176: $aa
	ld d, e                                          ; $4177: $53
	ret nc                                           ; $4178: $d0

	ld d, a                                          ; $4179: $57
	ldh a, [$d9]                                     ; $417a: $f0 $d9
	add b                                            ; $417c: $80
	ld h, a                                          ; $417d: $67
	rst FarCall                                          ; $417e: $f7
	ld a, [hl]                                       ; $417f: $7e
	add $6f                                          ; $4180: $c6 $6f
	cp $d9                                           ; $4182: $fe $d9
	inc bc                                           ; $4184: $03
	ld sp, hl                                        ; $4185: $f9
	ld h, e                                          ; $4186: $63
	ret c                                            ; $4187: $d8

	db $fd                                           ; $4188: $fd
	ld h, a                                          ; $4189: $67
	add sp, -$62                                     ; $418a: $e8 $9e
	ld bc, $fe7b                                     ; $418c: $01 $7b $fe
	ld l, a                                          ; $418f: $6f
	xor h                                            ; $4190: $ac
	ld l, a                                          ; $4191: $6f
	add sp, -$64                                     ; $4192: $e8 $9c
	ld d, l                                          ; $4194: $55
	xor d                                            ; $4195: $aa
	ld a, a                                          ; $4196: $7f
	ld l, e                                          ; $4197: $6b
	ldh a, [$fb]                                     ; $4198: $f0 $fb
	sbc l                                            ; $419a: $9d
	ld d, l                                          ; $419b: $55
	xor e                                            ; $419c: $ab
	ld l, e                                          ; $419d: $6b
	inc sp                                           ; $419e: $33
	ld l, e                                          ; $419f: $6b
	ldh a, [$9e]                                     ; $41a0: $f0 $9e
	ld e, a                                          ; $41a2: $5f
	ld h, a                                          ; $41a3: $67
	inc hl                                           ; $41a4: $23
	ld l, e                                          ; $41a5: $6b
	ldh a, [$de]                                     ; $41a6: $f0 $de
	rst $38                                          ; $41a8: $ff
	ld l, e                                          ; $41a9: $6b
	ld hl, sp-$62                                    ; $41aa: $f8 $9e
	rlca                                             ; $41ac: $07
	ld d, e                                          ; $41ad: $53
	ldh a, [$f5]                                     ; $41ae: $f0 $f5
	rst SubAFromDE                                          ; $41b0: $df
	rst $38                                          ; $41b1: $ff
	sbc $c0                                          ; $41b2: $de $c0
	rst SubAFromDE                                          ; $41b4: $df
	pop bc                                           ; $41b5: $c1
	ld h, a                                          ; $41b6: $67
	ld a, a                                          ; $41b7: $7f
	ld l, a                                          ; $41b8: $6f
	call nz, $d863                                   ; $41b9: $c4 $63 $d8
	ld a, a                                          ; $41bc: $7f
	sub b                                            ; $41bd: $90
	ld c, a                                          ; $41be: $4f
	ldh a, [$7f]                                     ; $41bf: $f0 $7f
	ld hl, sp+$33                                    ; $41c1: $f8 $33
	ldh a, [$df]                                     ; $41c3: $f0 $df
	db $fc                                           ; $41c5: $fc
	ld a, [$f89b]                                    ; $41c6: $fa $9b $f8
	nop                                              ; $41c9: $00
	ld hl, sp-$08                                    ; $41ca: $f8 $f8
	call c, $f918                                    ; $41cc: $dc $18 $f9
	sbc d                                            ; $41cf: $9a
	db $e3                                           ; $41d0: $e3
	ld b, l                                          ; $41d1: $45
	and e                                            ; $41d2: $a3
	ld b, l                                          ; $41d3: $45
	inc hl                                           ; $41d4: $23
	ld a, e                                          ; $41d5: $7b
	cp $d9                                           ; $41d6: $fe $d9
	ld c, $7e                                        ; $41d8: $0e $7e
	add $73                                          ; $41da: $c6 $73
	cp $9e                                           ; $41dc: $fe $9e
	ld a, h                                          ; $41de: $7c
	or $dc                                           ; $41df: $f6 $dc
	ld a, a                                          ; $41e1: $7f
	cp $9a                                           ; $41e2: $fe $9a
	ret nz                                           ; $41e4: $c0

	rst $38                                          ; $41e5: $ff
	ret nz                                           ; $41e6: $c0

	call nz, Call_041_6fcd                           ; $41e7: $c4 $cd $6f
	ld e, d                                          ; $41ea: $5a
	ld l, d                                          ; $41eb: $6a
	or l                                             ; $41ec: $b5
	sbc l                                            ; $41ed: $9d
	nop                                              ; $41ee: $00
	xor d                                            ; $41ef: $aa
	ld [hl], l                                       ; $41f0: $75
	xor l                                            ; $41f1: $ad
	call nc, Call_041_7a80                           ; $41f2: $d4 $80 $7a
	call nz, $069e                                   ; $41f5: $c4 $9e $06
	ld a, e                                          ; $41f8: $7b
	cp $22                                           ; $41f9: $fe $22
	ret nz                                           ; $41fb: $c0

	reti                                             ; $41fc: $d9


	inc bc                                           ; $41fd: $03
	reti                                             ; $41fe: $d9


	ld bc, $80d9                                     ; $41ff: $01 $d9 $80
	reti                                             ; $4202: $d9


	rst $38                                          ; $4203: $ff
	ld [hl], d                                       ; $4204: $72
	xor c                                            ; $4205: $a9
	sbc $01                                          ; $4206: $de $01
	db $db                                           ; $4208: $db
	rst $38                                          ; $4209: $ff
	rst SubAFromDE                                          ; $420a: $df
	cp $ff                                           ; $420b: $fe $ff
	sbc l                                            ; $420d: $9d
	ld [hl], h                                       ; $420e: $74
	db $fc                                           ; $420f: $fc
	db $dd                                           ; $4210: $dd
	ld hl, sp-$21                                    ; $4211: $f8 $df
	rst $38                                          ; $4213: $ff
	sbc h                                            ; $4214: $9c
	rst AddAOntoHL                                          ; $4215: $ef
	rst SubAFromBC                                          ; $4216: $e7
	rst JumpTable                                          ; $4217: $c7
	sbc $07                                          ; $4218: $de $07
	ld e, [hl]                                       ; $421a: $5e
	jp hl                                            ; $421b: $e9


	db $db                                           ; $421c: $db
	rst $38                                          ; $421d: $ff
	reti                                             ; $421e: $d9


	rlca                                             ; $421f: $07
	ld d, a                                          ; $4220: $57
	ret nz                                           ; $4221: $c0

	push af                                          ; $4222: $f5
	reti                                             ; $4223: $d9


	pop bc                                           ; $4224: $c1
	reti                                             ; $4225: $d9


	add b                                            ; $4226: $80
	reti                                             ; $4227: $d9


	ret nz                                           ; $4228: $c0

	reti                                             ; $4229: $d9


	ld a, a                                          ; $422a: $7f
	cp $9d                                           ; $422b: $fe $9d
	ld [bc], a                                       ; $422d: $02
	ld b, $6f                                        ; $422e: $06 $6f
	or b                                             ; $4230: $b0
	sbc l                                            ; $4231: $9d
	db $fd                                           ; $4232: $fd
	ld sp, hl                                        ; $4233: $f9
	ld a, e                                          ; $4234: $7b
	db $fc                                           ; $4235: $fc
	ld [hl], a                                       ; $4236: $77
	ldh a, [$fe]                                     ; $4237: $f0 $fe
	sbc [hl]                                         ; $4239: $9e
	ld l, a                                          ; $423a: $6f
	ld [hl], a                                       ; $423b: $77
	ldh a, [$99]                                     ; $423c: $f0 $99
	rst SubAFromDE                                          ; $423e: $df
	sbc a                                            ; $423f: $9f
	rst $38                                          ; $4240: $ff
	rst $38                                          ; $4241: $ff
	inc c                                            ; $4242: $0c
	inc b                                            ; $4243: $04
	ld [hl], a                                       ; $4244: $77
	cp $df                                           ; $4245: $fe $df
	ld b, h                                          ; $4247: $44

jr_041_4248:
	db $db                                           ; $4248: $db
	ld hl, sp-$21                                    ; $4249: $f8 $df
	cp b                                             ; $424b: $b8
	reti                                             ; $424c: $d9


	jr jr_041_4248                                   ; $424d: $18 $f9

	sbc d                                            ; $424f: $9a
	ld h, e                                          ; $4250: $63
	ld h, l                                          ; $4251: $65
	inc hl                                           ; $4252: $23
	ld h, l                                          ; $4253: $65
	ld h, e                                          ; $4254: $63
	ld a, e                                          ; $4255: $7b
	cp $62                                           ; $4256: $fe $62
	ret nz                                           ; $4258: $c0

	jp c, $f97e                                      ; $4259: $da $7e $f9

	reti                                             ; $425c: $d9


	ld a, [hl]                                       ; $425d: $7e
	sbc l                                            ; $425e: $9d
	call nc, Call_041_7bcc                           ; $425f: $d4 $cc $7b
	cp $9a                                           ; $4262: $fe $9a
	db $ec                                           ; $4264: $ec
	call nc, $00ec                                   ; $4265: $d4 $ec $00
	inc a                                            ; $4268: $3c
	db $dd                                           ; $4269: $dd
	rst $38                                          ; $426a: $ff
	sbc l                                            ; $426b: $9d
	pop af                                           ; $426c: $f1
	ldh a, [$fb]                                     ; $426d: $f0 $fb
	sbc l                                            ; $426f: $9d
	ld c, $0f                                        ; $4270: $0e $0f
	ld a, [hl-]                                      ; $4272: $3a
	ret nz                                           ; $4273: $c0

	ld de, $3e80                                     ; $4274: $11 $80 $3e
	ret nz                                           ; $4277: $c0

	sbc l                                            ; $4278: $9d
	add c                                            ; $4279: $81
	and b                                            ; $427a: $a0
	ld a, e                                          ; $427b: $7b
	ld a, [hl+]                                      ; $427c: $2a
	ld a, d                                          ; $427d: $7a
	ret nz                                           ; $427e: $c0

	sub [hl]                                         ; $427f: $96
	cp $d5                                           ; $4280: $fe $d5
	ld [$aad5], a                                    ; $4282: $ea $d5 $aa
	push de                                          ; $4285: $d5
	ld bc, $4000                                     ; $4286: $01 $00 $40
	db $fc                                           ; $4289: $fc
	sbc [hl]                                         ; $428a: $9e
	cp $79                                           ; $428b: $fe $79
	inc e                                            ; $428d: $1c
	sbc c                                            ; $428e: $99
	adc b                                            ; $428f: $88
	ld d, l                                          ; $4290: $55
	xor d                                            ; $4291: $aa
	ld d, l                                          ; $4292: $55
	ldh a, [$e0]                                     ; $4293: $f0 $e0
	ld l, l                                          ; $4295: $6d
	ld e, l                                          ; $4296: $5d
	sbc d                                            ; $4297: $9a
	rrca                                             ; $4298: $0f
	rra                                              ; $4299: $1f
	xor d                                            ; $429a: $aa
	ld d, l                                          ; $429b: $55
	ld a, [hl+]                                      ; $429c: $2a
	ld a, e                                          ; $429d: $7b
	ldh a, [$5a]                                     ; $429e: $f0 $5a
	ret nz                                           ; $42a0: $c0

	ld a, e                                          ; $42a1: $7b
	ldh a, [c]                                       ; $42a2: $f2
	sbc l                                            ; $42a3: $9d
	ld a, [bc]                                       ; $42a4: $0a
	ld d, l                                          ; $42a5: $55
	sbc $07                                          ; $42a6: $de $07
	sbc d                                            ; $42a8: $9a
	add a                                            ; $42a9: $87

jr_041_42aa:
	rla                                              ; $42aa: $17
	rlca                                             ; $42ab: $07
	rlca                                             ; $42ac: $07
	rrca                                             ; $42ad: $0f
	sbc $ff                                          ; $42ae: $de $ff
	sbc d                                            ; $42b0: $9a
	ld a, a                                          ; $42b1: $7f
	xor a                                            ; $42b2: $af
	ld e, a                                          ; $42b3: $5f
	xor a                                            ; $42b4: $af
	ld d, a                                          ; $42b5: $57
	ld [bc], a                                       ; $42b6: $02
	ret nz                                           ; $42b7: $c0

	rst SubAFromDE                                          ; $42b8: $df
	ret nz                                           ; $42b9: $c0

	rst SubAFromDE                                          ; $42ba: $df
	add b                                            ; $42bb: $80
	sbc [hl]                                         ; $42bc: $9e
	or b                                             ; $42bd: $b0
	ld a, e                                          ; $42be: $7b
	db $d3                                           ; $42bf: $d3
	sbc d                                            ; $42c0: $9a
	ld a, a                                          ; $42c1: $7f
	ld a, l                                          ; $42c2: $7d
	ld l, d                                          ; $42c3: $6a
	ld d, l                                          ; $42c4: $55
	ld a, [bc]                                       ; $42c5: $0a
	halt                                             ; $42c6: $76
	ld d, e                                          ; $42c7: $53
	ld a, a                                          ; $42c8: $7f
	ld d, h                                          ; $42c9: $54
	rst SubAFromDE                                          ; $42ca: $df
	inc b                                            ; $42cb: $04
	sub h                                            ; $42cc: $94
	dec c                                            ; $42cd: $0d
	cp $eb                                           ; $42ce: $fe $eb
	rst $38                                          ; $42d0: $ff
	ld [hl], e                                       ; $42d1: $73
	ei                                               ; $42d2: $fb
	push de                                          ; $42d3: $d5
	xor [hl]                                         ; $42d4: $ae
	ld d, b                                          ; $42d5: $50
	ld bc, $7b86                                     ; $42d6: $01 $86 $7b
	ld d, l                                          ; $42d9: $55
	sbc e                                            ; $42da: $9b
	and c                                            ; $42db: $a1
	rst $38                                          ; $42dc: $ff
	ccf                                              ; $42dd: $3f
	ccf                                              ; $42de: $3f
	call c, $94ff                                    ; $42df: $dc $ff $94
	ld a, a                                          ; $42e2: $7f
	rst $38                                          ; $42e3: $ff
	ccf                                              ; $42e4: $3f
	add h                                            ; $42e5: $84
	add h                                            ; $42e6: $84
	call nz, $8484                                   ; $42e7: $c4 $84 $84
	ld a, h                                          ; $42ea: $7c

jr_041_42eb:
	db $fc                                           ; $42eb: $fc
	ld a, h                                          ; $42ec: $7c
	sbc $f8                                          ; $42ed: $de $f8
	sbc l                                            ; $42ef: $9d
	add sp, -$38                                     ; $42f0: $e8 $c8
	ld a, b                                          ; $42f2: $78
	sbc d                                            ; $42f3: $9a
	ld a, $c0                                        ; $42f4: $3e $c0
	rst SubAFromDE                                          ; $42f6: $df
	ld h, l                                          ; $42f7: $65
	sbc e                                            ; $42f8: $9b
	dec h                                            ; $42f9: $25
	ld h, c                                          ; $42fa: $61
	ld h, l                                          ; $42fb: $65
	ld h, c                                          ; $42fc: $61
	ld h, d                                          ; $42fd: $62
	ret nz                                           ; $42fe: $c0

	sbc e                                            ; $42ff: $9b
	cp $7e                                           ; $4300: $fe $7e
	ld a, [hl]                                       ; $4302: $7e
	cp $7b                                           ; $4303: $fe $7b
	db $fc                                           ; $4305: $fc
	ld b, [hl]                                       ; $4306: $46
	ret nz                                           ; $4307: $c0

	sbc l                                            ; $4308: $9d
	call c, $ddfc                                    ; $4309: $dc $fc $dd
	db $fd                                           ; $430c: $fd
	ld l, d                                          ; $430d: $6a
	jr nz, jr_041_42aa                               ; $430e: $20 $9a

	add hl, de                                       ; $4310: $19
	inc a                                            ; $4311: $3c
	ld a, [hl]                                       ; $4312: $7e
	cp $fc                                           ; $4313: $fe $fc
	db $db                                           ; $4315: $db
	rst $38                                          ; $4316: $ff
	call c, $9c80                                    ; $4317: $dc $80 $9c
	add c                                            ; $431a: $81
	jp z, $d9d5                                      ; $431b: $ca $d5 $d9

	add b                                            ; $431e: $80
	sbc $04                                          ; $431f: $de $04
	ld a, a                                          ; $4321: $7f
	ld l, a                                          ; $4322: $6f
	sbc h                                            ; $4323: $9c
	ld d, l                                          ; $4324: $55
	and h                                            ; $4325: $a4
	ld d, l                                          ; $4326: $55
	ld c, [hl]                                       ; $4327: $4e
	ret nz                                           ; $4328: $c0

	sbc l                                            ; $4329: $9d
	dec d                                            ; $432a: $15
	ld a, [hl+]                                      ; $432b: $2a
	ld d, d                                          ; $432c: $52
	ret nz                                           ; $432d: $c0

	ld l, c                                          ; $432e: $69
	sbc h                                            ; $432f: $9c
	rst SubAFromDE                                          ; $4330: $df
	ld bc, $a872                                     ; $4331: $01 $72 $a8
	ld [hl], e                                       ; $4334: $73
	xor e                                            ; $4335: $ab
	sbc l                                            ; $4336: $9d
	xor d                                            ; $4337: $aa
	call nc, $c261                                   ; $4338: $d4 $61 $c2
	ld l, a                                          ; $433b: $6f
	ldh a, [$71]                                     ; $433c: $f0 $71
	sbc [hl]                                         ; $433e: $9e
	dec de                                           ; $433f: $1b
	ldh a, [$9d]                                     ; $4340: $f0 $9d
	ld bc, $73e0                                     ; $4342: $01 $e0 $73
	ldh a, [$75]                                     ; $4345: $f0 $75
	add l                                            ; $4347: $85
	ld a, c                                          ; $4348: $79
	ld e, e                                          ; $4349: $5b
	sbc e                                            ; $434a: $9b
	nop                                              ; $434b: $00
	adc a                                            ; $434c: $8f
	ld d, a                                          ; $434d: $57
	cpl                                              ; $434e: $2f
	ld a, d                                          ; $434f: $7a
	ld a, l                                          ; $4350: $7d
	rst AddAOntoHL                                          ; $4351: $ef
	ld b, [hl]                                       ; $4352: $46
	ret nz                                           ; $4353: $c0

	ld [hl], c                                       ; $4354: $71
	ld a, [hl+]                                      ; $4355: $2a
	sbc l                                            ; $4356: $9d
	ldh a, [$fc]                                     ; $4357: $f0 $fc
	ld l, l                                          ; $4359: $6d
	jr jr_041_42eb                                   ; $435a: $18 $8f

	rrca                                             ; $435c: $0f
	inc bc                                           ; $435d: $03
	nop                                              ; $435e: $00
	db $fc                                           ; $435f: $fc
	rst FarCall                                          ; $4360: $f7
	db $fc                                           ; $4361: $fc
	cp $7e                                           ; $4362: $fe $7e
	inc a                                            ; $4364: $3c
	ld a, [hl]                                       ; $4365: $7e
	ld a, a                                          ; $4366: $7f
	inc bc                                           ; $4367: $03
	rrca                                             ; $4368: $0f
	rra                                              ; $4369: $1f
	ccf                                              ; $436a: $3f
	cp a                                             ; $436b: $bf
	halt                                             ; $436c: $76
	call $8f9c                                       ; $436d: $cd $9c $8f
	ccf                                              ; $4370: $3f
	ld a, a                                          ; $4371: $7f
	push de                                          ; $4372: $d5
	rst $38                                          ; $4373: $ff
	sbc e                                            ; $4374: $9b
	cp h                                             ; $4375: $bc
	db $e4                                           ; $4376: $e4
	db $fc                                           ; $4377: $fc
	cp $dd                                           ; $4378: $fe $dd
	rst $38                                          ; $437a: $ff
	sbc l                                            ; $437b: $9d
	ret nz                                           ; $437c: $c0

	ld hl, sp+$73                                    ; $437d: $f8 $73
	ld sp, hl                                        ; $437f: $f9
	sbc [hl]                                         ; $4380: $9e
	rst $38                                          ; $4381: $ff
	ld b, [hl]                                       ; $4382: $46
	ret nz                                           ; $4383: $c0

	ld a, [hl]                                       ; $4384: $7e
	add $99                                          ; $4385: $c6 $99
	ld h, l                                          ; $4387: $65
	ld b, l                                          ; $4388: $45
	dec h                                            ; $4389: $25
	ld b, c                                          ; $438a: $41
	dec h                                            ; $438b: $25
	ld bc, $8021                                     ; $438c: $01 $21 $80
	sbc [hl]                                         ; $438f: $9e
	ld a, a                                          ; $4390: $7f
	call c, $5f7e                                    ; $4391: $dc $7e $5f
	xor h                                            ; $4394: $ac
	sbc l                                            ; $4395: $9d
	cp $3e                                           ; $4396: $fe $3e
	ld [hl], h                                       ; $4398: $74
	inc hl                                           ; $4399: $23
	ld a, h                                          ; $439a: $7c
	or d                                             ; $439b: $b2
	sbc $c1                                          ; $439c: $de $c1
	sub a                                            ; $439e: $97
	jp $e0ff                                         ; $439f: $c3 $ff $e0


	rst $38                                          ; $43a2: $ff
	jp z, $dfff                                      ; $43a3: $ca $ff $df

	rst SubAFromDE                                          ; $43a6: $df
	ld [hl], a                                       ; $43a7: $77
	db $e3                                           ; $43a8: $e3
	call c, $fe80                                    ; $43a9: $dc $80 $fe
	sub a                                            ; $43ac: $97
	and h                                            ; $43ad: $a4
	push de                                          ; $43ae: $d5
	db $e4                                           ; $43af: $e4
	push af                                          ; $43b0: $f5
	db $f4                                           ; $43b1: $f4
	db $f4                                           ; $43b2: $f4
	db $fd                                           ; $43b3: $fd
	db $fc                                           ; $43b4: $fc
	reti                                             ; $43b5: $d9


	inc bc                                           ; $43b6: $03
	ld a, [hl]                                       ; $43b7: $7e
	add $9c                                          ; $43b8: $c6 $9c
	dec d                                            ; $43ba: $15
	ccf                                              ; $43bb: $3f
	dec e                                            ; $43bc: $1d
	sbc $3f                                          ; $43bd: $de $3f
	reti                                             ; $43bf: $d9


	add b                                            ; $43c0: $80
	sbc d                                            ; $43c1: $9a
	ld d, h                                          ; $43c2: $54

Jump_041_43c3:
	xor d                                            ; $43c3: $aa
	ld d, l                                          ; $43c4: $55
	ld [$54bd], a                                    ; $43c5: $ea $bd $54
	sbc b                                            ; $43c8: $98
	sbc b                                            ; $43c9: $98
	add b                                            ; $43ca: $80
	ld d, b                                          ; $43cb: $50
	xor d                                            ; $43cc: $aa
	ld d, l                                          ; $43cd: $55
	xor d                                            ; $43ce: $aa
	push de                                          ; $43cf: $d5
	xor $f6                                          ; $43d0: $ee $f6
	ld a, l                                          ; $43d2: $7d
	xor e                                            ; $43d3: $ab
	ld a, a                                          ; $43d4: $7f
	xor $9e                                          ; $43d5: $ee $9e
	cp [hl]                                          ; $43d7: $be
	push af                                          ; $43d8: $f5
	sbc [hl]                                         ; $43d9: $9e
	ld b, l                                          ; $43da: $45
	ld a, e                                          ; $43db: $7b
	sbc $f6                                          ; $43dc: $de $f6
	ld [hl], l                                       ; $43de: $75
	ld l, c                                          ; $43df: $69
	ld d, a                                          ; $43e0: $57
	ldh a, [rIE]                                     ; $43e1: $f0 $ff
	sbc l                                            ; $43e3: $9d
	add d                                            ; $43e4: $82
	dec d                                            ; $43e5: $15
	ld c, a                                          ; $43e6: $4f
	ldh a, [$7e]                                     ; $43e7: $f0 $7e
	and $63                                          ; $43e9: $e6 $63
	ldh a, [$dc]                                     ; $43eb: $f0 $dc
	ret nz                                           ; $43ed: $c0

	ld a, e                                          ; $43ee: $7b
	sub d                                            ; $43ef: $92
	db $db                                           ; $43f0: $db
	add b                                            ; $43f1: $80
	sbc [hl]                                         ; $43f2: $9e
	ccf                                              ; $43f3: $3f
	ld l, c                                          ; $43f4: $69
	ld b, e                                          ; $43f5: $43
	ld h, c                                          ; $43f6: $61
	ld a, [hl-]                                      ; $43f7: $3a
	sub e                                            ; $43f8: $93
	nop                                              ; $43f9: $00
	ld a, a                                          ; $43fa: $7f
	ccf                                              ; $43fb: $3f
	rra                                              ; $43fc: $1f
	inc bc                                           ; $43fd: $03
	inc bc                                           ; $43fe: $03
	ei                                               ; $43ff: $fb
	ld [bc], a                                       ; $4400: $02
	inc b                                            ; $4401: $04
	ld a, a                                          ; $4402: $7f
	ld a, a                                          ; $4403: $7f
	ccf                                              ; $4404: $3f
	halt                                             ; $4405: $76
	ld [hl], l                                       ; $4406: $75
	ld a, a                                          ; $4407: $7f
	cp $c2                                           ; $4408: $fe $c2
	rst $38                                          ; $440a: $ff
	call c, $9e18                                    ; $440b: $dc $18 $9e
	ld hl, sp-$07                                    ; $440e: $f8 $f9
	ld a, h                                          ; $4410: $7c
	ld a, c                                          ; $4411: $79
	sub a                                            ; $4412: $97
	dec b                                            ; $4413: $05
	add c                                            ; $4414: $81
	ld b, l                                          ; $4415: $45
	and c                                            ; $4416: $a1
	ld h, l                                          ; $4417: $65
	and c                                            ; $4418: $a1
	ld [hl], l                                       ; $4419: $75
	or c                                             ; $441a: $b1
	reti                                             ; $441b: $d9


	ld c, $7e                                        ; $441c: $0e $7e
	ld [hl], e                                       ; $441e: $73
	sbc h                                            ; $441f: $9c
	ld a, l                                          ; $4420: $7d

jr_041_4421:
	cp $fd                                           ; $4421: $fe $fd
	ld a, e                                          ; $4423: $7b
	cp $f9                                           ; $4424: $fe $f9
	sbc $7f                                          ; $4426: $de $7f
	ld h, h                                          ; $4428: $64
	ret nc                                           ; $4429: $d0

	ld [hl], e                                       ; $442a: $73
	add e                                            ; $442b: $83
	ld e, l                                          ; $442c: $5d
	ei                                               ; $442d: $fb
	ld l, a                                          ; $442e: $6f
	rst FarCall                                          ; $442f: $f7
	db $dd                                           ; $4430: $dd
	rst $38                                          ; $4431: $ff
	sbc [hl]                                         ; $4432: $9e
	rst AddAOntoHL                                          ; $4433: $ef
	ld e, [hl]                                       ; $4434: $5e
	pop af                                           ; $4435: $f1
	sbc e                                            ; $4436: $9b
	rst $38                                          ; $4437: $ff
	db $fd                                           ; $4438: $fd
	db $f4                                           ; $4439: $f4
	push af                                          ; $443a: $f5
	ld a, e                                          ; $443b: $7b
	cp $9d                                           ; $443c: $fe $9d
	db $fd                                           ; $443e: $fd
	nop                                              ; $443f: $00
	jp c, Jump_041_7e03                              ; $4440: $da $03 $7e

	jr nc, jr_041_4421                               ; $4443: $30 $dc

	ccf                                              ; $4445: $3f
	ld l, [hl]                                       ; $4446: $6e
	and c                                            ; $4447: $a1
	ld l, d                                          ; $4448: $6a
	ld bc, $b761                                     ; $4449: $01 $61 $b7
	ld [hl], e                                       ; $444c: $73
	pop bc                                           ; $444d: $c1
	sbc [hl]                                         ; $444e: $9e
	cp d                                             ; $444f: $ba
	ld a, c                                          ; $4450: $79
	dec hl                                           ; $4451: $2b
	ld e, e                                          ; $4452: $5b
	ldh a, [$99]                                     ; $4453: $f0 $99
	ld e, a                                          ; $4455: $5f
	cp a                                             ; $4456: $bf
	rst $38                                          ; $4457: $ff
	xor d                                            ; $4458: $aa
	rst $38                                          ; $4459: $ff
	xor a                                            ; $445a: $af
	ld e, a                                          ; $445b: $5f
	ldh a, [$9b]                                     ; $445c: $f0 $9b
	ld d, l                                          ; $445e: $55
	xor a                                            ; $445f: $af
	ld d, e                                          ; $4460: $53
	xor a                                            ; $4461: $af
	ld d, a                                          ; $4462: $57
	ldh [$99], a                                     ; $4463: $e0 $99
	rst SubAFromDE                                          ; $4465: $df
	cp $ff                                           ; $4466: $fe $ff
	cp $f5                                           ; $4468: $fe $f5
	jp c, $f05f                                      ; $446a: $da $5f $f0

	sbc c                                            ; $446d: $99
	ld d, a                                          ; $446e: $57
	xor d                                            ; $446f: $aa
	ld [hl], l                                       ; $4470: $75
	xor d                                            ; $4471: $aa
	ld d, l                                          ; $4472: $55
	xor e                                            ; $4473: $ab
	ld e, e                                          ; $4474: $5b
	ret nc                                           ; $4475: $d0

	ld a, d                                          ; $4476: $7a
	and h                                            ; $4477: $a4
	sbc e                                            ; $4478: $9b
	ld d, l                                          ; $4479: $55
	cp a                                             ; $447a: $bf
	rst $38                                          ; $447b: $ff
	ldh [rHDMA3], a                                  ; $447c: $e0 $53
	ldh a, [$7f]                                     ; $447e: $f0 $7f
	xor [hl]                                         ; $4480: $ae
	ld c, a                                          ; $4481: $4f
	ldh [$9e], a                                     ; $4482: $e0 $9e
	ld [$f05f], a                                    ; $4484: $ea $5f $f0
	sbc h                                            ; $4487: $9c
	ld d, h                                          ; $4488: $54
	xor h                                            ; $4489: $ac
	ld e, h                                          ; $448a: $5c
	ld a, e                                          ; $448b: $7b
	cp $9e                                           ; $448c: $fe $9e
	db $fc                                           ; $448e: $fc
	reti                                             ; $448f: $d9


	rlca                                             ; $4490: $07
	ld a, b                                          ; $4491: $78
	ld c, l                                          ; $4492: $4d
	adc $ff                                          ; $4493: $ce $ff
	sbc [hl]                                         ; $4495: $9e
	cp $69                                           ; $4496: $fe $69
	add e                                            ; $4498: $83
	ld a, a                                          ; $4499: $7f
	rst FarCall                                          ; $449a: $f7
	sbc e                                            ; $449b: $9b
	di                                               ; $449c: $f3
	sub l                                            ; $449d: $95
	xor d                                            ; $449e: $aa
	push de                                          ; $449f: $d5
	ld d, e                                          ; $44a0: $53
	ld d, b                                          ; $44a1: $50
	sub a                                            ; $44a2: $97
	ld [hl], l                                       ; $44a3: $75
	pop af                                           ; $44a4: $f1
	push af                                          ; $44a5: $f5
	pop af                                           ; $44a6: $f1
	push af                                          ; $44a7: $f5
	ld sp, hl                                        ; $44a8: $f9
	push hl                                          ; $44a9: $e5
	ld [$0eda], sp                                   ; $44aa: $08 $da $0e
	ld a, a                                          ; $44ad: $7f
	nop                                              ; $44ae: $00
	ld a, [hl]                                       ; $44af: $7e
	call nz, $3a75                                   ; $44b0: $c4 $75 $3a
	ld e, e                                          ; $44b3: $5b
	sub b                                            ; $44b4: $90
	ld c, a                                          ; $44b5: $4f
	db $10                                           ; $44b6: $10
	ld b, a                                          ; $44b7: $47
	ldh a, [$62]                                     ; $44b8: $f0 $62
	or e                                             ; $44ba: $b3
	ld l, e                                          ; $44bb: $6b
	jp hl                                            ; $44bc: $e9


	ld l, [hl]                                       ; $44bd: $6e
	jp z, $ffdf                                      ; $44be: $ca $df $ff

	ld a, l                                          ; $44c1: $7d
	ld a, [hl]                                       ; $44c2: $7e
	ld [hl], a                                       ; $44c3: $77
	cp $7c                                           ; $44c4: $fe $7c
	ld e, a                                          ; $44c6: $5f
	ld d, d                                          ; $44c7: $52
	jp z, $b97a                                      ; $44c8: $ca $7a $b9

	ld b, a                                          ; $44cb: $47
	ret nc                                           ; $44cc: $d0

	inc bc                                           ; $44cd: $03
	ldh a, [$03]                                     ; $44ce: $f0 $03
	ldh a, [$57]                                     ; $44d0: $f0 $57
	ldh a, [$7f]                                     ; $44d2: $f0 $7f
	sub b                                            ; $44d4: $90
	sbc h                                            ; $44d5: $9c
	ldh [rLCDC], a                                   ; $44d6: $e0 $40
	and b                                            ; $44d8: $a0
	ld a, e                                          ; $44d9: $7b
	cp $76                                           ; $44da: $fe $76
	ld a, c                                          ; $44dc: $79
	call c, Call_041_6aff                            ; $44dd: $dc $ff $6a
	cp b                                             ; $44e0: $b8
	rra                                              ; $44e1: $1f
	cp a                                             ; $44e2: $bf
	sbc $03                                          ; $44e3: $de $03
	halt                                             ; $44e5: $76
	ret                                              ; $44e6: $c9


	ld [hl], d                                       ; $44e7: $72
	db $e3                                           ; $44e8: $e3
	sbc $fe                                          ; $44e9: $de $fe
	sbc [hl]                                         ; $44eb: $9e
	ld b, $d2                                        ; $44ec: $06 $d2
	rst $38                                          ; $44ee: $ff
	sbc h                                            ; $44ef: $9c
	di                                               ; $44f0: $f3
	ldh a, [c]                                       ; $44f1: $f2
	db $fc                                           ; $44f2: $fc
	db $dd                                           ; $44f3: $dd
	ld hl, sp-$28                                    ; $44f4: $f8 $d8
	rst $38                                          ; $44f6: $ff
	ld l, c                                          ; $44f7: $69
	add [hl]                                         ; $44f8: $86
	ld e, a                                          ; $44f9: $5f
	ret nz                                           ; $44fa: $c0

	call c, $9e0e                                    ; $44fb: $dc $0e $9e
	ld e, $7b                                        ; $44fe: $1e $7b
	db $10                                           ; $4500: $10
	sbc [hl]                                         ; $4501: $9e
	ld sp, hl                                        ; $4502: $f9
	ld [hl], e                                       ; $4503: $73
	cp $9e                                           ; $4504: $fe $9e
	ld [$4f03], sp                                   ; $4506: $08 $03 $4f
	ld c, e                                          ; $4509: $4b
	ldh a, [$80]                                     ; $450a: $f0 $80
	ld d, l                                          ; $450c: $55
	xor b                                            ; $450d: $a8
	ld d, l                                          ; $450e: $55
	xor b                                            ; $450f: $a8
	rst $38                                          ; $4510: $ff

jr_041_4511:
	ld a, [$aa55]                                    ; $4511: $fa $55 $aa
	xor d                                            ; $4514: $aa
	ld d, a                                          ; $4515: $57
	xor d                                            ; $4516: $aa
	ld d, a                                          ; $4517: $57
	nop                                              ; $4518: $00
	dec b                                            ; $4519: $05
	xor d                                            ; $451a: $aa
	ld d, l                                          ; $451b: $55
	ld b, b                                          ; $451c: $40
	and c                                            ; $451d: $a1
	ld d, h                                          ; $451e: $54
	dec b                                            ; $451f: $05
	db $fc                                           ; $4520: $fc
	or l                                             ; $4521: $b5
	ld c, c                                          ; $4522: $49
	and [hl]                                         ; $4523: $a6
	cp a                                             ; $4524: $bf
	ld e, a                                          ; $4525: $5f
	xor e                                            ; $4526: $ab
	ei                                               ; $4527: $fb
	inc bc                                           ; $4528: $03
	ld c, e                                          ; $4529: $4b
	or b                                             ; $452a: $b0
	adc [hl]                                         ; $452b: $8e
	ld d, e                                          ; $452c: $53
	xor d                                            ; $452d: $aa
	add l                                            ; $452e: $85
	xor d                                            ; $452f: $aa
	add h                                            ; $4530: $84
	cp e                                             ; $4531: $bb
	ld [hl], l                                       ; $4532: $75
	adc d                                            ; $4533: $8a
	add l                                            ; $4534: $85
	push de                                          ; $4535: $d5
	ld a, [$fbd5]                                    ; $4536: $fa $d5 $fb
	call nz, $d58a                                   ; $4539: $c4 $8a $d5
	ld a, [$0176]                                    ; $453c: $fa $76 $01
	ld [hl], l                                       ; $453f: $75
	ei                                               ; $4540: $fb
	ld [hl], b                                       ; $4541: $70
	ld a, h                                          ; $4542: $7c
	ld a, e                                          ; $4543: $7b
	db $fc                                           ; $4544: $fc
	ld a, a                                          ; $4545: $7f
	pop bc                                           ; $4546: $c1
	ld l, a                                          ; $4547: $6f
	ldh a, [$7f]                                     ; $4548: $f0 $7f
	pop bc                                           ; $454a: $c1
	ld l, a                                          ; $454b: $6f
	ldh a, [rIE]                                     ; $454c: $f0 $ff
	sbc h                                            ; $454e: $9c
	xor d                                            ; $454f: $aa
	ld d, c                                          ; $4550: $51
	cp $77                                           ; $4551: $fe $77
	db $ec                                           ; $4553: $ec
	ld a, a                                          ; $4554: $7f
	db $eb                                           ; $4555: $eb
	sbc l                                            ; $4556: $9d
	xor [hl]                                         ; $4557: $ae
	ld bc, $f07b                                     ; $4558: $01 $7b $f0
	rst SubAFromDE                                          ; $455b: $df
	db $10                                           ; $455c: $10
	sbc l                                            ; $455d: $9d
	sub b                                            ; $455e: $90
	db $10                                           ; $455f: $10
	ld a, c                                          ; $4560: $79
	sbc l                                            ; $4561: $9d
	sub [hl]                                         ; $4562: $96
	ld [hl], l                                       ; $4563: $75
	rst AddAOntoHL                                          ; $4564: $ef
	rst AddAOntoHL                                          ; $4565: $ef
	ld l, a                                          ; $4566: $6f
	rst AddAOntoHL                                          ; $4567: $ef
	ld b, l                                          ; $4568: $45
	adc d                                            ; $4569: $8a
	ld d, l                                          ; $456a: $55
	adc d                                            ; $456b: $8a
	db $fd                                           ; $456c: $fd
	sbc [hl]                                         ; $456d: $9e
	cp d                                             ; $456e: $ba
	ld [hl], e                                       ; $456f: $73
	ldh [$df], a                                     ; $4570: $e0 $df
	rst $38                                          ; $4572: $ff
	ld h, h                                          ; $4573: $64
	jr z, jr_041_4511                                ; $4574: $28 $9b

	xor d                                            ; $4576: $aa
	ld d, h                                          ; $4577: $54
	and b                                            ; $4578: $a0
	ld d, b                                          ; $4579: $50
	db $dd                                           ; $457a: $dd
	rst $38                                          ; $457b: $ff
	ld a, l                                          ; $457c: $7d
	ld a, b                                          ; $457d: $78
	adc l                                            ; $457e: $8d
	ld e, a                                          ; $457f: $5f
	xor a                                            ; $4580: $af
	nop                                              ; $4581: $00
	nop                                              ; $4582: $00
	ld [bc], a                                       ; $4583: $02
	nop                                              ; $4584: $00
	xor d                                            ; $4585: $aa
	dec b                                            ; $4586: $05
	nop                                              ; $4587: $00
	dec b                                            ; $4588: $05
	rst $38                                          ; $4589: $ff
	rst $38                                          ; $458a: $ff
	db $fc                                           ; $458b: $fc
	rst $38                                          ; $458c: $ff
	ld d, l                                          ; $458d: $55
	ld a, [$faff]                                    ; $458e: $fa $ff $fa
	ld a, e                                          ; $4591: $7b
	ldh [c], a                                       ; $4592: $e2
	sbc l                                            ; $4593: $9d
	push de                                          ; $4594: $d5
	sbc [hl]                                         ; $4595: $9e
	ld l, a                                          ; $4596: $6f
	or b                                             ; $4597: $b0
	sbc d                                            ; $4598: $9a
	ld a, [hl+]                                      ; $4599: $2a
	nop                                              ; $459a: $00
	adc d                                            ; $459b: $8a
	ld b, l                                          ; $459c: $45

Jump_041_459d:
	and d                                            ; $459d: $a2
	ld a, e                                          ; $459e: $7b
	ldh a, [$9d]                                     ; $459f: $f0 $9d
	ld d, l                                          ; $45a1: $55
	dec bc                                           ; $45a2: $0b
	ld l, a                                          ; $45a3: $6f
	ldh a, [$73]                                     ; $45a4: $f0 $73
	sub b                                            ; $45a6: $90
	sbc b                                            ; $45a7: $98
	ld b, $07                                        ; $45a8: $06 $07
	and a                                            ; $45aa: $a7
	ld d, a                                          ; $45ab: $57
	rst FarCall                                          ; $45ac: $f7
	ld d, a                                          ; $45ad: $57
	and l                                            ; $45ae: $a5
	ld a, e                                          ; $45af: $7b
	ldh a, [$7f]                                     ; $45b0: $f0 $7f
	call nz, $0f91                                   ; $45b2: $c4 $91 $0f
	xor a                                            ; $45b5: $af
	ld e, a                                          ; $45b6: $5f
	xor a                                            ; $45b7: $af
	di                                               ; $45b8: $f3
	ei                                               ; $45b9: $fb
	db $e3                                           ; $45ba: $e3
	pop hl                                           ; $45bb: $e1
	db $ed                                           ; $45bc: $ed
	jp hl                                            ; $45bd: $e9


	push hl                                          ; $45be: $e5
	ld [$f7ff], a                                    ; $45bf: $ea $ff $f7
	ld a, d                                          ; $45c2: $7a
	jp $f794                                         ; $45c3: $c3 $94 $f7


	ei                                               ; $45c6: $fb
	push af                                          ; $45c7: $f5
	ld hl, sp-$08                                    ; $45c8: $f8 $f8
	ldh a, [$f0]                                     ; $45ca: $f0 $f0
	push af                                          ; $45cc: $f5
	ld a, [$fafb]                                    ; $45cd: $fa $fb $fa
	db $dd                                           ; $45d0: $dd
	rst $38                                          ; $45d1: $ff
	sbc [hl]                                         ; $45d2: $9e
	ld a, [$ed79]                                    ; $45d3: $fa $79 $ed
	db $fd                                           ; $45d6: $fd
	sbc e                                            ; $45d7: $9b
	ld d, l                                          ; $45d8: $55
	and b                                            ; $45d9: $a0
	ld b, l                                          ; $45da: $45
	push hl                                          ; $45db: $e5
	db $dd                                           ; $45dc: $dd
	rst $38                                          ; $45dd: $ff
	sub e                                            ; $45de: $93
	xor d                                            ; $45df: $aa
	ld e, a                                          ; $45e0: $5f
	cp d                                             ; $45e1: $ba
	rra                                              ; $45e2: $1f
	add hl, bc                                       ; $45e3: $09
	dec bc                                           ; $45e4: $0b
	add hl, bc                                       ; $45e5: $09
	ld a, [de]                                       ; $45e6: $1a
	ld e, c                                          ; $45e7: $59
	ld a, [bc]                                       ; $45e8: $0a
	push de                                          ; $45e9: $d5
	ld e, b                                          ; $45ea: $58
	sbc $fc                                          ; $45eb: $de $fc
	sub c                                            ; $45ed: $91
	db $fd                                           ; $45ee: $fd
	cp [hl]                                          ; $45ef: $be
	db $fd                                           ; $45f0: $fd

jr_041_45f1:
	jr c, jr_041_45f1                                ; $45f1: $38 $fe

	inc d                                            ; $45f3: $14
	ld [bc], a                                       ; $45f4: $02
	nop                                              ; $45f5: $00
	nop                                              ; $45f6: $00
	push de                                          ; $45f7: $d5
	nop                                              ; $45f8: $00
	nop                                              ; $45f9: $00
	and b                                            ; $45fa: $a0
	db $eb                                           ; $45fb: $eb
	ld a, c                                          ; $45fc: $79
	ld a, c                                          ; $45fd: $79
	sbc [hl]                                         ; $45fe: $9e
	ld a, [hl+]                                      ; $45ff: $2a
	ld a, e                                          ; $4600: $7b
	xor e                                            ; $4601: $ab
	rst $38                                          ; $4602: $ff
	sbc h                                            ; $4603: $9c
	ld b, b                                          ; $4604: $40
	ld [bc], a                                       ; $4605: $02
	ld d, l                                          ; $4606: $55
	ld [hl], d                                       ; $4607: $72
	adc $9d                                          ; $4608: $ce $9d
	cp a                                             ; $460a: $bf
	db $fd                                           ; $460b: $fd
	ld [hl], l                                       ; $460c: $75
	add l                                            ; $460d: $85
	db $fd                                           ; $460e: $fd
	sbc [hl]                                         ; $460f: $9e
	ld d, b                                          ; $4610: $50
	ld a, d                                          ; $4611: $7a
	sbc d                                            ; $4612: $9a
	db $dd                                           ; $4613: $dd
	rst $38                                          ; $4614: $ff
	sbc [hl]                                         ; $4615: $9e
	xor a                                            ; $4616: $af
	ld a, e                                          ; $4617: $7b
	sbc h                                            ; $4618: $9c
	ld l, h                                          ; $4619: $6c
	ldh [$9d], a                                     ; $461a: $e0 $9d
	ld [bc], a                                       ; $461c: $02
	db $f4                                           ; $461d: $f4
	ld [hl], e                                       ; $461e: $73
	ld sp, hl                                        ; $461f: $f9
	ld a, a                                          ; $4620: $7f
	rst SubAFromHL                                          ; $4621: $d7
	add b                                            ; $4622: $80
	ld [$a74d], sp                                   ; $4623: $08 $4d $a7
	ld c, e                                          ; $4626: $4b
	or e                                             ; $4627: $b3
	ld h, [hl]                                       ; $4628: $66
	call z, $509b                                    ; $4629: $cc $9b $50
	or e                                             ; $462c: $b3
	ld d, c                                          ; $462d: $51
	and a                                            ; $462e: $a7
	ld c, a                                          ; $462f: $4f
	sbc a                                            ; $4630: $9f
	ccf                                              ; $4631: $3f
	ld a, h                                          ; $4632: $7c
	rst $38                                          ; $4633: $ff
	ldh [c], a                                       ; $4634: $e2
	push bc                                          ; $4635: $c5
	adc d                                            ; $4636: $8a
	dec d                                            ; $4637: $15
	dec hl                                           ; $4638: $2b
	rla                                              ; $4639: $17
	ldh [$3e], a                                     ; $463a: $e0 $3e
	db $fd                                           ; $463c: $fd
	ld a, [$eaf5]                                    ; $463d: $fa $f5 $ea
	call nc, $9ce8                                   ; $4640: $d4 $e8 $9c
	nop                                              ; $4643: $00
	ret nz                                           ; $4644: $c0

	xor a                                            ; $4645: $af
	ld [hl], b                                       ; $4646: $70
	rst SubAFromDE                                          ; $4647: $df
	ld a, a                                          ; $4648: $7f
	dec de                                           ; $4649: $1b
	sbc [hl]                                         ; $464a: $9e
	ld d, b                                          ; $464b: $50
	ld l, l                                          ; $464c: $6d
	halt                                             ; $464d: $76
	sbc [hl]                                         ; $464e: $9e
	nop                                              ; $464f: $00
	ld l, h                                          ; $4650: $6c
	rst SubAFromBC                                          ; $4651: $e7
	sbc h                                            ; $4652: $9c
	rlca                                             ; $4653: $07
	xor a                                            ; $4654: $af
	ld bc, $9bfa                                     ; $4655: $01 $fa $9b
	ld [$fafd], a                                    ; $4658: $ea $fd $fa
	rst $38                                          ; $465b: $ff
	ld [hl], a                                       ; $465c: $77
	db $ec                                           ; $465d: $ec
	sbc e                                            ; $465e: $9b
	dec d                                            ; $465f: $15
	ld [bc], a                                       ; $4660: $02
	dec b                                            ; $4661: $05
	nop                                              ; $4662: $00
	ld [hl], a                                       ; $4663: $77
	db $ec                                           ; $4664: $ec
	sbc l                                            ; $4665: $9d
	cp d                                             ; $4666: $ba
	ld [hl], l                                       ; $4667: $75
	ld [hl], a                                       ; $4668: $77
	cp $9b                                           ; $4669: $fe $9b
	adc a                                            ; $466b: $8f
	ld b, l                                          ; $466c: $45
	ld b, l                                          ; $466d: $45
	adc d                                            ; $466e: $8a
	ld [hl], a                                       ; $466f: $77
	cp $9d                                           ; $4670: $fe $9d
	ld b, b                                          ; $4672: $40
	adc d                                            ; $4673: $8a
	ld [hl], e                                       ; $4674: $73
	sbc b                                            ; $4675: $98
	sbc l                                            ; $4676: $9d
	ld [hl], l                                       ; $4677: $75
	rst $38                                          ; $4678: $ff
	ld [hl], d                                       ; $4679: $72
	add b                                            ; $467a: $80
	ld a, d                                          ; $467b: $7a
	or d                                             ; $467c: $b2
	ld a, [hl]                                       ; $467d: $7e
	add b                                            ; $467e: $80
	sbc h                                            ; $467f: $9c
	ld d, h                                          ; $4680: $54
	xor d                                            ; $4681: $aa
	ld d, h                                          ; $4682: $54
	ld a, b                                          ; $4683: $78
	xor l                                            ; $4684: $ad
	sbc d                                            ; $4685: $9a
	db $fd                                           ; $4686: $fd
	ld d, a                                          ; $4687: $57
	xor e                                            ; $4688: $ab
	ld d, l                                          ; $4689: $55
	xor e                                            ; $468a: $ab
	ld a, d                                          ; $468b: $7a
	sbc $df                                          ; $468c: $de $df
	ld [bc], a                                       ; $468e: $02
	sbc b                                            ; $468f: $98
	dec b                                            ; $4690: $05
	ld a, [bc]                                       ; $4691: $0a
	dec d                                            ; $4692: $15
	dec bc                                           ; $4693: $0b
	rla                                              ; $4694: $17
	cp a                                             ; $4695: $bf
	rla                                              ; $4696: $17
	ld [hl], a                                       ; $4697: $77
	sub b                                            ; $4698: $90
	sbc e                                            ; $4699: $9b
	db $f4                                           ; $469a: $f4
	add sp, $40                                      ; $469b: $e8 $40
	add sp, $78                                      ; $469d: $e8 $78
	ld d, e                                          ; $469f: $53
	ld a, h                                          ; $46a0: $7c
	xor l                                            ; $46a1: $ad
	sbc $ff                                          ; $46a2: $de $ff
	sbc e                                            ; $46a4: $9b
	ld d, c                                          ; $46a5: $51
	xor b                                            ; $46a6: $a8
	inc d                                            ; $46a7: $14
	ld [bc], a                                       ; $46a8: $02
	ld [hl], a                                       ; $46a9: $77
	or b                                             ; $46aa: $b0
	ld a, a                                          ; $46ab: $7f
	call nz, $827e                                   ; $46ac: $c4 $7e $82
	adc h                                            ; $46af: $8c
	adc [hl]                                         ; $46b0: $8e
	ld e, l                                          ; $46b1: $5d
	rst SubAFromBC                                          ; $46b2: $e7
	rst FarCall                                          ; $46b3: $f7
	ld d, l                                          ; $46b4: $55
	adc d                                            ; $46b5: $8a
	ld b, l                                          ; $46b6: $45
	ld a, [hl+]                                      ; $46b7: $2a
	ld de, $0082                                     ; $46b8: $11 $82 $00
	nop                                              ; $46bb: $00
	and l                                            ; $46bc: $a5
	ld d, l                                          ; $46bd: $55
	or l                                             ; $46be: $b5
	ld [hl], l                                       ; $46bf: $75
	db $ed                                           ; $46c0: $ed
	rst $38                                          ; $46c1: $ff
	rst GetHLinHL                                          ; $46c2: $cf
	ld a, d                                          ; $46c3: $7a
	jp nz, Jump_041_4f82                             ; $46c4: $c2 $82 $4f

	adc a                                            ; $46c7: $8f
	rra                                              ; $46c8: $1f
	rrca                                             ; $46c9: $0f
	rra                                              ; $46ca: $1f
	rrca                                             ; $46cb: $0f
	db $ec                                           ; $46cc: $ec
	ld [$eeec], a                                    ; $46cd: $ea $ec $ee
	rst $38                                          ; $46d0: $ff
	cp $e3                                           ; $46d1: $fe $e3
	adc $f3                                          ; $46d3: $ce $f3
	push af                                          ; $46d5: $f5

jr_041_46d6:
	di                                               ; $46d6: $f3
	pop af                                           ; $46d7: $f1
	ldh [$e1], a                                     ; $46d8: $e0 $e1
	ldh [$e1], a                                     ; $46da: $e0 $e1
	cp c                                             ; $46dc: $b9
	cp [hl]                                          ; $46dd: $be
	cp l                                             ; $46de: $bd
	cp [hl]                                          ; $46df: $be
	cp l                                             ; $46e0: $bd
	rst $38                                          ; $46e1: $ff
	db $fd                                           ; $46e2: $fd
	ld a, b                                          ; $46e3: $78
	ld l, c                                          ; $46e4: $69
	ld a, e                                          ; $46e5: $7b
	cp $82                                           ; $46e6: $fe $82
	db $fc                                           ; $46e8: $fc
	cp $fe                                           ; $46e9: $fe $fe
	ld d, e                                          ; $46eb: $53
	xor d                                            ; $46ec: $aa
	ld d, b                                          ; $46ed: $50
	xor b                                            ; $46ee: $a8
	ld d, b                                          ; $46ef: $50
	xor b                                            ; $46f0: $a8
	ld b, e                                          ; $46f1: $43
	ld [$55af], a                                    ; $46f2: $ea $af $55
	xor a                                            ; $46f5: $af
	ld d, a                                          ; $46f6: $57
	xor a                                            ; $46f7: $af
	ld d, a                                          ; $46f8: $57
	nop                                              ; $46f9: $00
	dec d                                            ; $46fa: $15
	ld a, [$be7c]                                    ; $46fb: $fa $7c $be
	adc a                                            ; $46fe: $8f
	ld b, c                                          ; $46ff: $41
	jr z, jr_041_46d6                                ; $4700: $28 $d4

	nop                                              ; $4702: $00
	db $fc                                           ; $4703: $fc
	rst $38                                          ; $4704: $ff
	ld [hl], a                                       ; $4705: $77
	daa                                              ; $4706: $27
	ld a, [hl]                                       ; $4707: $7e
	adc $8f                                          ; $4708: $ce $8f
	ld [$4ad5], sp                                   ; $470a: $08 $d5 $4a
	dec h                                            ; $470d: $25
	call nc, Call_041_5c73                           ; $470e: $d4 $73 $5c
	db $10                                           ; $4711: $10
	ld [hl], a                                       ; $4712: $77
	ld a, [hl+]                                      ; $4713: $2a
	sub l                                            ; $4714: $95
	jp z, $fce3                                      ; $4715: $ca $e3 $fc

	inc a                                            ; $4718: $3c
	rst AddAOntoHL                                          ; $4719: $ef
	ld a, d                                          ; $471a: $7a
	or l                                             ; $471b: $b5
	sbc e                                            ; $471c: $9b
	ld b, h                                          ; $471d: $44
	nop                                              ; $471e: $00
	ld d, l                                          ; $471f: $55
	ld a, $7a                                        ; $4720: $3e $7a
	ret nc                                           ; $4722: $d0

	sbc d                                            ; $4723: $9a
	ld e, a                                          ; $4724: $5f
	cp e                                             ; $4725: $bb
	rst $38                                          ; $4726: $ff
	xor d                                            ; $4727: $aa
	ld bc, $7f6d                                     ; $4728: $01 $6d $7f
	ld a, a                                          ; $472b: $7f
	ld l, h                                          ; $472c: $6c
	ld l, l                                          ; $472d: $6d
	ld a, [hl]                                       ; $472e: $7e
	sub a                                            ; $472f: $97
	xor d                                            ; $4730: $aa
	dec d                                            ; $4731: $15
	rst $38                                          ; $4732: $ff
	xor c                                            ; $4733: $a9
	db $d3                                           ; $4734: $d3
	xor a                                            ; $4735: $af
	sbc a                                            ; $4736: $9f
	ccf                                              ; $4737: $3f
	ld a, e                                          ; $4738: $7b
	push bc                                          ; $4739: $c5
	sbc h                                            ; $473a: $9c
	ld d, b                                          ; $473b: $50
	jr nz, @+$42                                     ; $473c: $20 $40

	db $fc                                           ; $473e: $fc
	sbc h                                            ; $473f: $9c
	ret nz                                           ; $4740: $c0

	and b                                            ; $4741: $a0
	call nc, Call_041_4f77                           ; $4742: $d4 $77 $4f
	sbc d                                            ; $4745: $9a
	cp $3f                                           ; $4746: $fe $3f
	ld e, a                                          ; $4748: $5f
	dec hl                                           ; $4749: $2b
	dec d                                            ; $474a: $15
	ld a, e                                          ; $474b: $7b
	ld c, a                                          ; $474c: $4f

jr_041_474d:
	sub h                                            ; $474d: $94
	ld bc, $2a1d                                     ; $474e: $01 $1d $2a
	ld e, h                                          ; $4751: $5c
	cp d                                             ; $4752: $ba
	ld d, h                                          ; $4753: $54
	cp b                                             ; $4754: $b8
	ld d, h                                          ; $4755: $54
	cp b                                             ; $4756: $b8
	ldh [$d0], a                                     ; $4757: $e0 $d0
	ld [hl], h                                       ; $4759: $74
	xor b                                            ; $475a: $a8
	ld a, a                                          ; $475b: $7f
	cp $9e                                           ; $475c: $fe $9e
	ld c, c                                          ; $475e: $49
	ld [hl], d                                       ; $475f: $72
	ld [$7ff7], a                                    ; $4760: $ea $f7 $7f
	ld c, b                                          ; $4763: $48
	ld a, h                                          ; $4764: $7c
	sub l                                            ; $4765: $95
	sbc e                                            ; $4766: $9b
	rra                                              ; $4767: $1f
	ccf                                              ; $4768: $3f
	ld e, a                                          ; $4769: $5f
	ccf                                              ; $476a: $3f
	ld sp, hl                                        ; $476b: $f9
	ld [hl], b                                       ; $476c: $70
	or a                                             ; $476d: $b7
	ld l, d                                          ; $476e: $6a
	ld e, b                                          ; $476f: $58
	ld [hl], a                                       ; $4770: $77
	sub $7f                                          ; $4771: $d6 $7f
	add hl, de                                       ; $4773: $19
	sbc c                                            ; $4774: $99
	sbc d                                            ; $4775: $9a
	ld d, l                                          ; $4776: $55
	db $db                                           ; $4777: $db
	ld d, a                                          ; $4778: $57
	rst SubAFromDE                                          ; $4779: $df
	ld d, l                                          ; $477a: $55
	halt                                             ; $477b: $76
	jp nz, $0498                                     ; $477c: $c2 $98 $04

	adc b                                            ; $477f: $88
	nop                                              ; $4780: $00
	adc d                                            ; $4781: $8a
	xor e                                            ; $4782: $ab
	rst SubAFromDE                                          ; $4783: $df
	rst AddAOntoHL                                          ; $4784: $ef
	call c, $9cff                                    ; $4785: $dc $ff $9c
	ld d, h                                          ; $4788: $54
	jr nz, jr_041_479b                               ; $4789: $20 $10

	ld l, d                                          ; $478b: $6a
	add b                                            ; $478c: $80
	ld l, a                                          ; $478d: $6f
	cp $7b                                           ; $478e: $fe $7b
	sub l                                            ; $4790: $95
	ld [hl], e                                       ; $4791: $73
	cp $94                                           ; $4792: $fe $94
	cpl                                              ; $4794: $2f
	rra                                              ; $4795: $1f
	xor a                                            ; $4796: $af
	ld e, a                                          ; $4797: $5f
	or h                                             ; $4798: $b4
	ld e, d                                          ; $4799: $5a
	cp l                                             ; $479a: $bd

jr_041_479b:
	ld a, d                                          ; $479b: $7a
	ret nc                                           ; $479c: $d0

	ldh [$50], a                                     ; $479d: $e0 $50
	ld [hl], a                                       ; $479f: $77
	sub c                                            ; $47a0: $91
	sbc [hl]                                         ; $47a1: $9e
	add b                                            ; $47a2: $80
	db $dd                                           ; $47a3: $dd
	rst $38                                          ; $47a4: $ff
	ld a, a                                          ; $47a5: $7f
	ld b, d                                          ; $47a6: $42
	rst FarCall                                          ; $47a7: $f7
	sub a                                            ; $47a8: $97
	ei                                               ; $47a9: $fb
	db $fd                                           ; $47aa: $fd
	cp $fe                                           ; $47ab: $fe $fe
	ld e, l                                          ; $47ad: $5d
	dec bc                                           ; $47ae: $0b
	dec d                                            ; $47af: $15
	ld a, [bc]                                       ; $47b0: $0a
	ld sp, hl                                        ; $47b1: $f9
	ld a, a                                          ; $47b2: $7f
	or d                                             ; $47b3: $b2
	add b                                            ; $47b4: $80
	push hl                                          ; $47b5: $e5
	ld b, b                                          ; $47b6: $40
	and b                                            ; $47b7: $a0
	ld e, e                                          ; $47b8: $5b
	cp a                                             ; $47b9: $bf
	ld d, l                                          ; $47ba: $55
	rra                                              ; $47bb: $1f
	ccf                                              ; $47bc: $3f
	ld b, e                                          ; $47bd: $43
	ld h, e                                          ; $47be: $63
	jr nc, jr_041_474d                               ; $47bf: $30 $8c

	ld b, a                                          ; $47c1: $47
	xor d                                            ; $47c2: $aa
	rst $38                                          ; $47c3: $ff
	rst SubAFromDE                                          ; $47c4: $df
	xor e                                            ; $47c5: $ab
	ld b, c                                          ; $47c6: $41
	ret nz                                           ; $47c7: $c0

	ld b, c                                          ; $47c8: $41
	add b                                            ; $47c9: $80
	dec d                                            ; $47ca: $15
	ret nz                                           ; $47cb: $c0

	ldh [$d4], a                                     ; $47cc: $e0 $d4
	cp $7f                                           ; $47ce: $fe $7f
	cp $ff                                           ; $47d0: $fe $ff
	ld [$80ff], a                                    ; $47d2: $ea $ff $80
	rst $38                                          ; $47d5: $ff
	ld a, l                                          ; $47d6: $7d
	and d                                            ; $47d7: $a2
	rst JumpTable                                          ; $47d8: $c7
	ld c, [hl]                                       ; $47d9: $4e
	cp d                                             ; $47da: $ba
	ld d, h                                          ; $47db: $54
	db $fc                                           ; $47dc: $fc
	db $fc                                           ; $47dd: $fc
	cp $db                                           ; $47de: $fe $db
	add d                                            ; $47e0: $82
	push bc                                          ; $47e1: $c5
	ld a, l                                          ; $47e2: $7d
	xor e                                            ; $47e3: $ab
	push de                                          ; $47e4: $d5
	ld [$fad5], a                                    ; $47e5: $ea $d5 $fa
	ld d, l                                          ; $47e8: $55
	ld a, [bc]                                       ; $47e9: $0a
	dec d                                            ; $47ea: $15
	ld a, [bc]                                       ; $47eb: $0a
	ld a, [hl+]                                      ; $47ec: $2a
	dec d                                            ; $47ed: $15
	ld a, [hl+]                                      ; $47ee: $2a
	dec b                                            ; $47ef: $05
	xor d                                            ; $47f0: $aa
	push af                                          ; $47f1: $f5
	ld [$79f5], a                                    ; $47f2: $ea $f5 $79
	ld sp, hl                                        ; $47f5: $f9
	sbc d                                            ; $47f6: $9a
	dec b                                            ; $47f7: $05
	ld [bc], a                                       ; $47f8: $02
	add l                                            ; $47f9: $85
	ld [bc], a                                       ; $47fa: $02
	adc l                                            ; $47fb: $8d
	ld a, d                                          ; $47fc: $7a
	db $fd                                           ; $47fd: $fd
	ld a, l                                          ; $47fe: $7d
	ld h, c                                          ; $47ff: $61
	sbc h                                            ; $4800: $9c
	ld a, d                                          ; $4801: $7a
	db $fd                                           ; $4802: $fd
	ld [hl], d                                       ; $4803: $72
	ld a, d                                          ; $4804: $7a
	ld b, b                                          ; $4805: $40
	ld [hl], d                                       ; $4806: $72
	dec h                                            ; $4807: $25
	ld a, d                                          ; $4808: $7a
	ld b, b                                          ; $4809: $40
	ld [hl], d                                       ; $480a: $72
	dec d                                            ; $480b: $15
	ld a, d                                          ; $480c: $7a
	ld b, b                                          ; $480d: $40
	sbc h                                            ; $480e: $9c
	ld d, h                                          ; $480f: $54
	xor [hl]                                         ; $4810: $ae
	ld d, c                                          ; $4811: $51
	ld [hl], h                                       ; $4812: $74
	sub b                                            ; $4813: $90
	adc c                                            ; $4814: $89
	dec d                                            ; $4815: $15
	xor e                                            ; $4816: $ab
	ld d, c                                          ; $4817: $51
	xor [hl]                                         ; $4818: $ae
	ld d, l                                          ; $4819: $55
	xor d                                            ; $481a: $aa
	add b                                            ; $481b: $80
	ld b, h                                          ; $481c: $44
	and b                                            ; $481d: $a0
	ld b, b                                          ; $481e: $40
	ld [$98c4], sp                                   ; $481f: $08 $c4 $98
	dec d                                            ; $4822: $15
	ld a, a                                          ; $4823: $7f
	cp e                                             ; $4824: $bb
	ld e, a                                          ; $4825: $5f
	cp a                                             ; $4826: $bf

jr_041_4827:
	rst FarCall                                          ; $4827: $f7
	dec sp                                           ; $4828: $3b
	rlca                                             ; $4829: $07
	ldh [c], a                                       ; $482a: $e2
	ld [hl-], a                                      ; $482b: $32
	nop                                              ; $482c: $00
	sub $55                                          ; $482d: $d6 $55
	sbc e                                            ; $482f: $9b
	ld d, [hl]                                       ; $4830: $56
	ld h, [hl]                                       ; $4831: $66
	ld h, [hl]                                       ; $4832: $66
	ld h, l                                          ; $4833: $65
	sbc $66                                          ; $4834: $de $66
	sbc l                                            ; $4836: $9d
	ld d, l                                          ; $4837: $55
	ld h, [hl]                                       ; $4838: $66
	ld l, a                                          ; $4839: $6f
	or $7f                                           ; $483a: $f6 $7f
	cp $9d                                           ; $483c: $fe $9d
	ld d, l                                          ; $483e: $55
	ld h, l                                          ; $483f: $65
	ld l, a                                          ; $4840: $6f
	or $9d                                           ; $4841: $f6 $9d
	ld b, a                                          ; $4843: $47
	ld b, [hl]                                       ; $4844: $46
	ld h, a                                          ; $4845: $67
	db $ec                                           ; $4846: $ec
	sbc [hl]                                         ; $4847: $9e
	ld b, l                                          ; $4848: $45
	ld [hl], a                                       ; $4849: $77

jr_041_484a:
	or $dd                                           ; $484a: $f6 $dd
	ld d, l                                          ; $484c: $55
	ld a, a                                          ; $484d: $7f
	or $9e                                           ; $484e: $f6 $9e
	ld d, [hl]                                       ; $4850: $56
	ld l, e                                          ; $4851: $6b
	or $9a                                           ; $4852: $f6 $9a
	ld d, l                                          ; $4854: $55
	ld d, e                                          ; $4855: $53
	ld b, l                                          ; $4856: $45
	ld d, l                                          ; $4857: $55
	ld d, l                                          ; $4858: $55
	rst SubAFromHL                                          ; $4859: $d7
	ld [hl], a                                       ; $485a: $77
	jp Jump_041_7433                                 ; $485b: $c3 $33 $74


	adc d                                            ; $485e: $8a
	adc a                                            ; $485f: $8f
	adc a                                            ; $4860: $8f
	ld c, e                                          ; $4861: $4b
	ld c, l                                          ; $4862: $4d
	ld a, e                                          ; $4863: $7b
	ld [hl], e                                       ; $4864: $73
	rra                                              ; $4865: $1f
	rst SubAFromHL                                          ; $4866: $d7
	adc e                                            ; $4867: $8b
	ld h, b                                          ; $4868: $60
	add h                                            ; $4869: $84
	or [hl]                                          ; $486a: $b6
	db $e4                                           ; $486b: $e4
	add b                                            ; $486c: $80
	ldh a, [$38]                                     ; $486d: $f0 $38
	jr jr_041_484a                                   ; $486f: $18 $d9

	rst $38                                          ; $4871: $ff
	ld sp, hl                                        ; $4872: $f9
	sbc $ff                                          ; $4873: $de $ff
	sbc d                                            ; $4875: $9a
	ld a, [$f0ff]                                    ; $4876: $fa $ff $f0
	cp a                                             ; $4879: $bf
	cp $fe                                           ; $487a: $fe $fe
	sbc d                                            ; $487c: $9a
	dec b                                            ; $487d: $05
	rra                                              ; $487e: $1f
	ccf                                              ; $487f: $3f
	ld a, a                                          ; $4880: $7f
	ccf                                              ; $4881: $3f
	sbc $ff                                          ; $4882: $de $ff
	sbc d                                            ; $4884: $9a
	ld a, a                                          ; $4885: $7f
	cp a                                             ; $4886: $bf
	ld a, [hl]                                       ; $4887: $7e
	rst $38                                          ; $4888: $ff
	ld e, a                                          ; $4889: $5f
	cp $9d                                           ; $488a: $fe $9d
	add b                                            ; $488c: $80
	ret nz                                           ; $488d: $c0

	sbc $e1                                          ; $488e: $de $e1
	sbc $ff                                          ; $4890: $de $ff
	sbc d                                            ; $4892: $9a
	db $fc                                           ; $4893: $fc
	sbc b                                            ; $4894: $98
	jr jr_041_4827                                   ; $4895: $18 $90

	inc l                                            ; $4897: $2c
	db $fd                                           ; $4898: $fd
	sbc e                                            ; $4899: $9b
	inc bc                                           ; $489a: $03
	rst SubAFromBC                                          ; $489b: $e7
	rst SubAFromBC                                          ; $489c: $e7
	rst JumpTable                                          ; $489d: $c7
	db $dd                                           ; $489e: $dd
	rst $38                                          ; $489f: $ff
	sbc e                                            ; $48a0: $9b
	ld a, l                                          ; $48a1: $7d
	adc d                                            ; $48a2: $8a
	nop                                              ; $48a3: $00
	add sp, -$04                                     ; $48a4: $e8 $fc
	add b                                            ; $48a6: $80
	ld bc, $feff                                     ; $48a7: $01 $ff $fe
	ld hl, sp-$05                                    ; $48aa: $f8 $fb
	or $fe                                           ; $48ac: $f6 $fe
	jr c, jr_041_48f2                                ; $48ae: $38 $42

	dec b                                            ; $48b0: $05
	ld [bc], a                                       ; $48b1: $02
	nop                                              ; $48b2: $00
	nop                                              ; $48b3: $00
	add hl, bc                                       ; $48b4: $09
	nop                                              ; $48b5: $00
	add h                                            ; $48b6: $84
	adc l                                            ; $48b7: $8d
	jp nz, $0004                                     ; $48b8: $c2 $04 $00

	push de                                          ; $48bb: $d5
	xor b                                            ; $48bc: $a8
	ld d, h                                          ; $48bd: $54
	ld l, d                                          ; $48be: $6a
	db $f4                                           ; $48bf: $f4
	xor $a5                                          ; $48c0: $ee $a5
	rst $38                                          ; $48c2: $ff
	ld a, [hl]                                       ; $48c3: $7e
	ld a, a                                          ; $48c4: $7f
	ld a, a                                          ; $48c5: $7f
	adc e                                            ; $48c6: $8b
	cp a                                             ; $48c7: $bf
	rra                                              ; $48c8: $1f
	rrca                                             ; $48c9: $0f
	rlca                                             ; $48ca: $07
	nop                                              ; $48cb: $00
	ld h, b                                          ; $48cc: $60
	adc b                                            ; $48cd: $88
	jr nz, jr_041_4910                               ; $48ce: $20 $40

	ld b, [hl]                                       ; $48d0: $46
	adc c                                            ; $48d1: $89
	rla                                              ; $48d2: $17
	ld sp, hl                                        ; $48d3: $f9
	rra                                              ; $48d4: $1f
	rra                                              ; $48d5: $1f
	sbc a                                            ; $48d6: $9f
	sbc a                                            ; $48d7: $9f
	sbc c                                            ; $48d8: $99
	ccf                                              ; $48d9: $3f
	cpl                                              ; $48da: $2f
	db $fc                                           ; $48db: $fc
	sbc c                                            ; $48dc: $99
	and c                                            ; $48dd: $a1
	ret nc                                           ; $48de: $d0

jr_041_48df:
	adc c                                            ; $48df: $89
	jp $f3e3                                         ; $48e0: $c3 $e3 $f3


	ld [hl], a                                       ; $48e3: $77

jr_041_48e4:
	sub l                                            ; $48e4: $95
	sub [hl]                                         ; $48e5: $96
	sbc a                                            ; $48e6: $9f
	rrca                                             ; $48e7: $0f
	ld c, a                                          ; $48e8: $4f
	xor a                                            ; $48e9: $af
	ld c, a                                          ; $48ea: $4f
	xor a                                            ; $48eb: $af
	ld e, a                                          ; $48ec: $5f
	xor a                                            ; $48ed: $af
	ld b, b                                          ; $48ee: $40
	jp c, $dff0                                      ; $48ef: $da $f0 $df

jr_041_48f2:
	rst $38                                          ; $48f2: $ff
	sub [hl]                                         ; $48f3: $96
	ldh a, [$d5]                                     ; $48f4: $f0 $d5
	ld [$f4f5], a                                    ; $48f6: $ea $f5 $f4
	cp a                                             ; $48f9: $bf
	stop                                             ; $48fa: $10 $00
	rrca                                             ; $48fc: $0f
	sbc $3f                                          ; $48fd: $de $3f
	adc a                                            ; $48ff: $8f
	ld a, e                                          ; $4900: $7b
	ld [hl], b                                       ; $4901: $70
	rst $38                                          ; $4902: $ff
	rst FarCall                                          ; $4903: $f7
	rst FarCall                                          ; $4904: $f7
	scf                                              ; $4905: $37
	sub a                                            ; $4906: $97
	rst SubAFromHL                                          ; $4907: $d7
	rst SubAFromBC                                          ; $4908: $e7
	ld b, a                                          ; $4909: $47
	and a                                            ; $490a: $a7
	rrca                                             ; $490b: $0f
	rrca                                             ; $490c: $0f

jr_041_490d:
	rst GetHLinHL                                          ; $490d: $cf
	rst AddAOntoHL                                          ; $490e: $ef
	rst AddAOntoHL                                          ; $490f: $ef

jr_041_4910:
	sbc $ff                                          ; $4910: $de $ff
	sbc l                                            ; $4912: $9d
	xor d                                            ; $4913: $aa
	ld d, l                                          ; $4914: $55
	ld a, e                                          ; $4915: $7b
	cp $9c                                           ; $4916: $fe $9c
	ld d, c                                          ; $4918: $51
	ld [hl+], a                                      ; $4919: $22
	ld de, $ffd9                                     ; $491a: $11 $d9 $ff
	ld a, a                                          ; $491d: $7f
	ldh a, [c]                                       ; $491e: $f2
	sbc c                                            ; $491f: $99
	adc d                                            ; $4920: $8a
	ld b, l                                          ; $4921: $45
	adc d                                            ; $4922: $8a
	ld b, h                                          ; $4923: $44
	add d                                            ; $4924: $82
	ld b, b                                          ; $4925: $40
	ld h, e                                          ; $4926: $63
	ldh a, [$9c]                                     ; $4927: $f0 $9c
	dec d                                            ; $4929: $15
	ld a, [bc]                                       ; $492a: $0a
	inc b                                            ; $492b: $04
	ld a, e                                          ; $492c: $7b
	ld [hl], e                                       ; $492d: $73
	ld [hl], a                                       ; $492e: $77
	jr z, jr_041_490d                                ; $492f: $28 $dc

	rst $38                                          ; $4931: $ff
	sbc d                                            ; $4932: $9a
	xor b                                            ; $4933: $a8
	ld d, b                                          ; $4934: $50
	and b                                            ; $4935: $a0
	ld b, b                                          ; $4936: $40
	and b                                            ; $4937: $a0
	ld e, e                                          ; $4938: $5b
	ldh a, [$9b]                                     ; $4939: $f0 $9b
	xor d                                            ; $493b: $aa
	ld d, h                                          ; $493c: $54
	jr nz, jr_041_497f                               ; $493d: $20 $40

	ld l, e                                          ; $493f: $6b
	ld [$e06b], sp                                   ; $4940: $08 $6b $e0
	sbc h                                            ; $4943: $9c
	jr nz, jr_041_4996                               ; $4944: $20 $50

	jr nz, jr_041_499f                               ; $4946: $20 $57

	ldh [$98], a                                     ; $4948: $e0 $98
	ld d, l                                          ; $494a: $55
	ld a, [hl-]                                      ; $494b: $3a
	ld [hl], h                                       ; $494c: $74
	jr c, jr_041_499f                                ; $494d: $38 $50

	jr c, jr_041_4961                                ; $494f: $38 $10

	reti                                             ; $4951: $d9


	rst $38                                          ; $4952: $ff
	add b                                            ; $4953: $80
	ld c, a                                          ; $4954: $4f
	rst $38                                          ; $4955: $ff
	rra                                              ; $4956: $1f
	adc a                                            ; $4957: $8f
	ld b, e                                          ; $4958: $43
	di                                               ; $4959: $f3
	pop af                                           ; $495a: $f1
	ld h, c                                          ; $495b: $61

jr_041_495c:
	sbc b                                            ; $495c: $98
	jr nc, jr_041_48df                               ; $495d: $30 $80

	ldh a, [$b0]                                     ; $495f: $f0 $b0

jr_041_4961:
	nop                                              ; $4961: $00
	jr nz, jr_041_48e4                               ; $4962: $20 $80

	rst SubAFromHL                                          ; $4964: $d7
	add a                                            ; $4965: $87
	ld d, a                                          ; $4966: $57
	xor h                                            ; $4967: $ac
	ld a, c                                          ; $4968: $79
	cpl                                              ; $4969: $2f
	ld l, e                                          ; $496a: $6b
	add hl, sp                                       ; $496b: $39
	jr nz, jr_041_49e6                               ; $496c: $20 $78

	ldh [$7e], a                                     ; $496e: $e0 $7e
	ret nz                                           ; $4970: $c0

	call nc, $80f1                                   ; $4971: $d4 $f1 $80
	set 2, c                                         ; $4974: $cb $d1
	rst SubAFromBC                                          ; $4976: $e7
	rst $38                                          ; $4977: $ff
	and $e6                                          ; $4978: $e6 $e6
	push bc                                          ; $497a: $c5
	nop                                              ; $497b: $00
	inc [hl]                                         ; $497c: $34
	ld a, $18                                        ; $497d: $3e $18

jr_041_497f:
	ld [$3119], sp                                   ; $497f: $08 $19 $31
	ldh a, [c]                                       ; $4982: $f2
	sbc a                                            ; $4983: $9f
	add hl, bc                                       ; $4984: $09
	ld e, a                                          ; $4985: $5f
	ld a, l                                          ; $4986: $7d
	ld a, l                                          ; $4987: $7d
	cp a                                             ; $4988: $bf
	ld l, a                                          ; $4989: $6f
	dec hl                                           ; $498a: $2b
	adc a                                            ; $498b: $8f
	daa                                              ; $498c: $27
	pop hl                                           ; $498d: $e1
	jp $c383                                         ; $498e: $c3 $83 $c3


	di                                               ; $4991: $f3
	rst SubAFromDE                                          ; $4992: $df
	sub d                                            ; $4993: $92
	ld b, a                                          ; $4994: $47
	inc de                                           ; $4995: $13

jr_041_4996:
	nop                                              ; $4996: $00
	nop                                              ; $4997: $00
	ld [$1848], sp                                   ; $4998: $08 $48 $18
	jr nc, jr_041_49b1                               ; $499b: $30 $14

	db $10                                           ; $499d: $10
	rst GetHLinHL                                          ; $499e: $cf

jr_041_499f:
	adc $ce                                          ; $499f: $ce $ce
	sbc $9c                                          ; $49a1: $de $9c
	add h                                            ; $49a3: $84
	cp b                                             ; $49a4: $b8
	jr c, jr_041_4a0b                                ; $49a5: $38 $64

	ld h, a                                          ; $49a7: $67
	ld [de], a                                       ; $49a8: $12
	ld e, $30                                        ; $49a9: $1e $30
	ld [hl], c                                       ; $49ab: $71
	adc c                                            ; $49ac: $89
	adc c                                            ; $49ad: $89
	ld a, $36                                        ; $49ae: $3e $36
	scf                                              ; $49b0: $37

jr_041_49b1:
	inc sp                                           ; $49b1: $33
	dec de                                           ; $49b2: $1b
	dec de                                           ; $49b3: $1b
	ld e, e                                          ; $49b4: $5b
	ld e, e                                          ; $49b5: $5b
	ld c, d                                          ; $49b6: $4a
	ld b, h                                          ; $49b7: $44
	ld d, l                                          ; $49b8: $55
	dec d                                            ; $49b9: $15
	nop                                              ; $49ba: $00
	jr nz, @+$2a                                     ; $49bb: $20 $28

	jr nz, @+$06                                     ; $49bd: $20 $04

	sbc $08                                          ; $49bf: $de $08
	add h                                            ; $49c1: $84
	jr jr_041_495c                                   ; $49c2: $18 $98

	sub b                                            ; $49c4: $90
	sub b                                            ; $49c5: $90
	dec bc                                           ; $49c6: $0b
	add hl, bc                                       ; $49c7: $09
	ld b, $21                                        ; $49c8: $06 $21
	nop                                              ; $49ca: $00
	rra                                              ; $49cb: $1f
	ld bc, $0320                                     ; $49cc: $01 $20 $03
	inc de                                           ; $49cf: $13
	ld a, e                                          ; $49d0: $7b
	ld e, $3f                                        ; $49d1: $1e $3f
	nop                                              ; $49d3: $00
	rra                                              ; $49d4: $1f
	rra                                              ; $49d5: $1f
	xor l                                            ; $49d6: $ad
	ld a, d                                          ; $49d7: $7a
	db $fd                                           ; $49d8: $fd
	ld l, [hl]                                       ; $49d9: $6e
	ld d, h                                          ; $49da: $54
	nop                                              ; $49db: $00
	rst $38                                          ; $49dc: $ff
	ld a, e                                          ; $49dd: $7b
	ld h, b                                          ; $49de: $60
	sbc h                                            ; $49df: $9c
	cp $ff                                           ; $49e0: $fe $ff
	ld a, [hl]                                       ; $49e2: $7e
	ld a, e                                          ; $49e3: $7b
	ld hl, sp-$62                                    ; $49e4: $f8 $9e

jr_041_49e6:
	ret nz                                           ; $49e6: $c0

	db $fd                                           ; $49e7: $fd
	adc d                                            ; $49e8: $8a
	ret nz                                           ; $49e9: $c0

	rst $38                                          ; $49ea: $ff
	nop                                              ; $49eb: $00
	push af                                          ; $49ec: $f5
	ld h, d                                          ; $49ed: $62
	dec b                                            ; $49ee: $05
	ld [bc], a                                       ; $49ef: $02
	ld bc, $ff3f                                     ; $49f0: $01 $3f $ff
	nop                                              ; $49f3: $00
	ld a, a                                          ; $49f4: $7f
	ld b, b                                          ; $49f5: $40
	rst SubAFromDE                                          ; $49f6: $df
	db $dd                                           ; $49f7: $dd
	ld e, l                                          ; $49f8: $5d
	sbc l                                            ; $49f9: $9d
	adc h                                            ; $49fa: $8c
	xor [hl]                                         ; $49fb: $ae
	add b                                            ; $49fc: $80
	add b                                            ; $49fd: $80
	halt                                             ; $49fe: $76
	ld c, a                                          ; $49ff: $4f
	sub [hl]                                         ; $4a00: $96
	pop bc                                           ; $4a01: $c1
	ld b, c                                          ; $4a02: $41
	rst $38                                          ; $4a03: $ff
	nop                                              ; $4a04: $00
	ldh a, [$36]                                     ; $4a05: $f0 $36
	ld b, $22                                        ; $4a07: $06 $22
	ld [de], a                                       ; $4a09: $12
	db $fd                                           ; $4a0a: $fd

jr_041_4a0b:
	sub d                                            ; $4a0b: $92
	call z, $ccec                                    ; $4a0c: $cc $ec $cc
	call z, $e7ce                                    ; $4a0f: $cc $ce $e7
	rrca                                             ; $4a12: $0f
	adc a                                            ; $4a13: $8f
	rrca                                             ; $4a14: $0f
	xor e                                            ; $4a15: $ab
	and e                                            ; $4a16: $a3
	and a                                            ; $4a17: $a7
	and e                                            ; $4a18: $a3
	sbc $1f                                          ; $4a19: $de $1f
	rst SubAFromDE                                          ; $4a1b: $df
	dec de                                           ; $4a1c: $1b
	rst SubAFromDE                                          ; $4a1d: $df
	inc de                                           ; $4a1e: $13
	sbc d                                            ; $4a1f: $9a
	rra                                              ; $4a20: $1f
	nop                                              ; $4a21: $00
	inc de                                           ; $4a22: $13
	ld [hl+], a                                      ; $4a23: $22
	inc bc                                           ; $4a24: $03
	ld a, e                                          ; $4a25: $7b
	cp $9e                                           ; $4a26: $fe $9e
	rla                                              ; $4a28: $17
	reti                                             ; $4a29: $d9


	rst $38                                          ; $4a2a: $ff
	sub a                                            ; $4a2b: $97
	add b                                            ; $4a2c: $80
	ld b, b                                          ; $4a2d: $40
	add d                                            ; $4a2e: $82
	ld b, c                                          ; $4a2f: $41
	add d                                            ; $4a30: $82
	ld b, l                                          ; $4a31: $45
	and d                                            ; $4a32: $a2
	ld b, l                                          ; $4a33: $45
	ld h, c                                          ; $4a34: $61
	add sp, $7e                                      ; $4a35: $e8 $7e
	ld a, $9a                                        ; $4a37: $3e $9a
	inc b                                            ; $4a39: $04
	adc b                                            ; $4a3a: $88
	dec b                                            ; $4a3b: $05
	and d                                            ; $4a3c: $a2
	ld d, c                                          ; $4a3d: $51
	db $db                                           ; $4a3e: $db
	rst $38                                          ; $4a3f: $ff
	rst SubAFromDE                                          ; $4a40: $df
	di                                               ; $4a41: $f3
	db $fd                                           ; $4a42: $fd
	sbc e                                            ; $4a43: $9b
	ld [bc], a                                       ; $4a44: $02

Call_041_4a45:
	add b                                            ; $4a45: $80
	ld [hl+], a                                      ; $4a46: $22
	dec [hl]                                         ; $4a47: $35
	call c, Call_041_7dff                            ; $4a48: $dc $ff $7d
	pop hl                                           ; $4a4b: $e1
	ld a, a                                          ; $4a4c: $7f
	ret nz                                           ; $4a4d: $c0

	ld a, a                                          ; $4a4e: $7f
	ld d, e                                          ; $4a4f: $53
	sbc d                                            ; $4a50: $9a
	ld bc, $4522                                     ; $4a51: $01 $22 $45
	ld a, [hl+]                                      ; $4a54: $2a
	ld d, l                                          ; $4a55: $55
	ld c, l                                          ; $4a56: $4d
	cp b                                             ; $4a57: $b8
	sbc l                                            ; $4a58: $9d
	jr nz, jr_041_4a6f                               ; $4a59: $20 $14

	reti                                             ; $4a5b: $d9


	rst $38                                          ; $4a5c: $ff
	ld a, [hl]                                       ; $4a5d: $7e
	call nz, $289e                                   ; $4a5e: $c4 $9e $28
	ld a, e                                          ; $4a61: $7b
	cp $9e                                           ; $4a62: $fe $9e
	add sp, $7a                                      ; $4a64: $e8 $7a
	scf                                              ; $4a66: $37
	db $db                                           ; $4a67: $db
	rst $38                                          ; $4a68: $ff
	sub h                                            ; $4a69: $94
	sub c                                            ; $4a6a: $91
	add c                                            ; $4a6b: $81
	add c                                            ; $4a6c: $81
	add e                                            ; $4a6d: $83
	add e                                            ; $4a6e: $83

jr_041_4a6f:
	add h                                            ; $4a6f: $84
	add d                                            ; $4a70: $82
	add c                                            ; $4a71: $81
	ldh [$f0], a                                     ; $4a72: $e0 $f0
	ld hl, sp+$79                                    ; $4a74: $f8 $79
	or h                                             ; $4a76: $b4
	add b                                            ; $4a77: $80
	pop hl                                           ; $4a78: $e1
	db $e3                                           ; $4a79: $e3
	add hl, bc                                       ; $4a7a: $09
	inc bc                                           ; $4a7b: $03

jr_041_4a7c:
	rla                                              ; $4a7c: $17
	sub c                                            ; $4a7d: $91
	dec b                                            ; $4a7e: $05

Call_041_4a7f:
	dec e                                            ; $4a7f: $1d
	ld [hl], $00                                     ; $4a80: $36 $00
	di                                               ; $4a82: $f3
	db $fd                                           ; $4a83: $fd
	ld sp, hl                                        ; $4a84: $f9
	ldh [$fe], a                                     ; $4a85: $e0 $fe
	cp $f9                                           ; $4a87: $fe $f9
	rst $38                                          ; $4a89: $ff
	inc [hl]                                         ; $4a8a: $34
	xor c                                            ; $4a8b: $a9
	rst AddAOntoHL                                          ; $4a8c: $ef
	rst FarCall                                          ; $4a8d: $f7
	adc l                                            ; $4a8e: $8d
	ld bc, $fddb                                     ; $4a8f: $01 $db $fd
	dec c                                            ; $4a92: $0d

jr_041_4a93:
	rla                                              ; $4a93: $17
	or b                                             ; $4a94: $b0
	ld hl, sp-$39                                    ; $4a95: $f8 $c7
	add e                                            ; $4a97: $83
	ret nz                                           ; $4a98: $c0

	ldh [rIE], a                                     ; $4a99: $e0 $ff
	ld h, $7a                                        ; $4a9b: $26 $7a
	rst JumpTable                                          ; $4a9d: $c7
	ld d, a                                          ; $4a9e: $57
	inc d                                            ; $4a9f: $14
	ld c, $ae                                        ; $4aa0: $0e $ae
	ret                                              ; $4aa2: $c9


	ei                                               ; $4aa3: $fb
	add a                                            ; $4aa4: $87
	ld a, $fe                                        ; $4aa5: $3e $fe
	sbc [hl]                                         ; $4aa7: $9e
	inc [hl]                                         ; $4aa8: $34
	ld l, h                                          ; $4aa9: $6c
	db $ec                                           ; $4aaa: $ec
	jr nc, jr_041_4add                               ; $4aab: $30 $30

	jr nz, jr_041_4acf                               ; $4aad: $20 $20

	ldh a, [rLY]                                     ; $4aaf: $f0 $44
	rst JumpTable                                          ; $4ab1: $c7
	db $e4                                           ; $4ab2: $e4
	jr c, jr_041_4a93                                ; $4ab3: $38 $de

	ld [hl], b                                       ; $4ab5: $70
	adc a                                            ; $4ab6: $8f
	ld h, b                                          ; $4ab7: $60
	ldh [$e0], a                                     ; $4ab8: $e0 $e0
	ret nz                                           ; $4aba: $c0

	ret                                              ; $4abb: $c9


	adc l                                            ; $4abc: $8d
	ret                                              ; $4abd: $c9


	ret c                                            ; $4abe: $d8

	ret                                              ; $4abf: $c9


	call $e6e4                                       ; $4ac0: $cd $e4 $e6
	dec de                                           ; $4ac3: $1b
	ld e, c                                          ; $4ac4: $59
	dec e                                            ; $4ac5: $1d
	dec c                                            ; $4ac6: $0d
	db $dd                                           ; $4ac7: $dd
	inc c                                            ; $4ac8: $0c
	rst $38                                          ; $4ac9: $ff
	adc a                                            ; $4aca: $8f
	pop de                                           ; $4acb: $d1
	and l                                            ; $4acc: $a5
	sbc b                                            ; $4acd: $98
	ret nz                                           ; $4ace: $c0

jr_041_4acf:
	push af                                          ; $4acf: $f5
	ld a, a                                          ; $4ad0: $7f
	or b                                             ; $4ad1: $b0
	or b                                             ; $4ad2: $b0
	and b                                            ; $4ad3: $a0
	jp nz, $ffe7                                     ; $4ad4: $c2 $e7 $ff

	ret nz                                           ; $4ad7: $c0

	rst $38                                          ; $4ad8: $ff
	ld e, a                                          ; $4ad9: $5f
	ld e, a                                          ; $4ada: $5f
	ld a, e                                          ; $4adb: $7b
	ld e, l                                          ; $4adc: $5d

jr_041_4add:
	ld a, [hl]                                       ; $4add: $7e
	ld d, h                                          ; $4ade: $54
	sbc [hl]                                         ; $4adf: $9e
	cp $de                                           ; $4ae0: $fe $de
	jr nz, jr_041_4b62                               ; $4ae2: $20 $7e

	ldh [c], a                                       ; $4ae4: $e2
	sub d                                            ; $4ae5: $92
	pop bc                                           ; $4ae6: $c1
	ld a, a                                          ; $4ae7: $7f
	rst $38                                          ; $4ae8: $ff
	ld sp, hl                                        ; $4ae9: $f9
	rst $38                                          ; $4aea: $ff
	rst SubAFromDE                                          ; $4aeb: $df
	ld [hl], c                                       ; $4aec: $71
	ld h, e                                          ; $4aed: $63
	ld a, e                                          ; $4aee: $7b
	db $eb                                           ; $4aef: $eb
	pop af                                           ; $4af0: $f1

jr_041_4af1:
	nop                                              ; $4af1: $00
	nop                                              ; $4af2: $00
	ld a, c                                          ; $4af3: $79
	dec h                                            ; $4af4: $25
	sbc h                                            ; $4af5: $9c
	db $fc                                           ; $4af6: $fc
	db $f4                                           ; $4af7: $f4
	ldh [$75], a                                     ; $4af8: $e0 $75
	jr z, jr_041_4a7c                                ; $4afa: $28 $80

	ldh [$7b], a                                     ; $4afc: $e0 $7b
	ld a, a                                          ; $4afe: $7f
	ld a, a                                          ; $4aff: $7f
	nop                                              ; $4b00: $00
	nop                                              ; $4b01: $00
	cp a                                             ; $4b02: $bf
	rst $38                                          ; $4b03: $ff
	ret nz                                           ; $4b04: $c0

	rst SubAFromBC                                          ; $4b05: $e7
	rst $38                                          ; $4b06: $ff
	rst $38                                          ; $4b07: $ff
	ld [$00ea], a                                    ; $4b08: $ea $ea $00
	jr nz, jr_041_4af1                               ; $4b0b: $20 $e4

	db $e4                                           ; $4b0d: $e4
	ldh [$e9], a                                     ; $4b0e: $e0 $e9
	ld bc, $c301                                     ; $4b10: $01 $01 $c3
	jp $c303                                         ; $4b13: $c3 $03 $c3


	rst JumpTable                                          ; $4b16: $c7
	add $40                                          ; $4b17: $c6 $40
	ld b, c                                          ; $4b19: $41
	ld [hl], e                                       ; $4b1a: $73
	sbc d                                            ; $4b1b: $9a
	ld d, a                                          ; $4b1c: $57
	ld d, e                                          ; $4b1d: $53
	ldh a, [$a0]                                     ; $4b1e: $f0 $a0
	call nz, $8ede                                   ; $4b20: $c4 $de $8e
	sbc c                                            ; $4b23: $99
	cp d                                             ; $4b24: $ba
	or [hl]                                          ; $4b25: $b6
	daa                                              ; $4b26: $27
	ld h, a                                          ; $4b27: $67
	ld h, e                                          ; $4b28: $63
	xor a                                            ; $4b29: $af
	jp c, $d92f                                      ; $4b2a: $da $2f $d9

	rra                                              ; $4b2d: $1f
	sbc d                                            ; $4b2e: $9a
	ld a, [hl+]                                      ; $4b2f: $2a
	ld d, e                                          ; $4b30: $53
	cpl                                              ; $4b31: $2f
	ld d, a                                          ; $4b32: $57
	xor a                                            ; $4b33: $af
	ld a, e                                          ; $4b34: $7b
	cp $d9                                           ; $4b35: $fe $d9
	rst $38                                          ; $4b37: $ff
	sub a                                            ; $4b38: $97
	and d                                            ; $4b39: $a2
	push bc                                          ; $4b3a: $c5
	xor d                                            ; $4b3b: $aa
	push bc                                          ; $4b3c: $c5
	xor d                                            ; $4b3d: $aa
	push de                                          ; $4b3e: $d5
	xor d                                            ; $4b3f: $aa
	call nc, $ffda                                   ; $4b40: $d4 $da $ff
	sub [hl]                                         ; $4b43: $96
	cp $a2                                           ; $4b44: $fe $a2
	ld b, c                                          ; $4b46: $41
	and d                                            ; $4b47: $a2
	ld b, c                                          ; $4b48: $41
	or d                                             ; $4b49: $b2
	ld b, l                                          ; $4b4a: $45
	ld b, $00                                        ; $4b4b: $06 $00
	db $dd                                           ; $4b4d: $dd
	di                                               ; $4b4e: $f3
	rst SubAFromDE                                          ; $4b4f: $df
	db $e3                                           ; $4b50: $e3
	sub l                                            ; $4b51: $95
	ld [hl], e                                       ; $4b52: $73
	nop                                              ; $4b53: $00
	and d                                            ; $4b54: $a2
	dec d                                            ; $4b55: $15
	ld a, [bc]                                       ; $4b56: $0a
	inc d                                            ; $4b57: $14
	jp c, $8a04                                      ; $4b58: $da $04 $8a

	jr nz, @+$7b                                     ; $4b5b: $20 $79

	ld [bc], a                                       ; $4b5d: $02
	rst SubAFromDE                                          ; $4b5e: $df
	adc a                                            ; $4b5f: $8f
	rst SubAFromDE                                          ; $4b60: $df
	rst GetHLinHL                                          ; $4b61: $cf

jr_041_4b62:
	sbc e                                            ; $4b62: $9b
	ld [$55aa], sp                                   ; $4b63: $08 $aa $55
	ld a, [hl+]                                      ; $4b66: $2a
	ld a, e                                          ; $4b67: $7b
	cp $9e                                           ; $4b68: $fe $9e
	xor e                                            ; $4b6a: $ab
	ld [hl], d                                       ; $4b6b: $72
	add b                                            ; $4b6c: $80
	db $dd                                           ; $4b6d: $dd
	cp $97                                           ; $4b6e: $fe $97
	jr z, @+$56                                      ; $4b70: $28 $54

	xor b                                            ; $4b72: $a8
	sbc l                                            ; $4b73: $9d
	rlca                                             ; $4b74: $07
	rst $38                                          ; $4b75: $ff
	sub a                                            ; $4b76: $97
	inc bc                                           ; $4b77: $03
	sbc $ff                                          ; $4b78: $de $ff
	sbc l                                            ; $4b7a: $9d
	rlca                                             ; $4b7b: $07
	inc bc                                           ; $4b7c: $03
	sbc $01                                          ; $4b7d: $de $01
	sbc l                                            ; $4b7f: $9d
	add sp, -$0c                                     ; $4b80: $e8 $f4
	ld [hl], a                                       ; $4b82: $77
	cp $9d                                           ; $4b83: $fe $9d
	ld [$d9fd], a                                    ; $4b85: $ea $fd $d9
	rst $38                                          ; $4b88: $ff
	sub e                                            ; $4b89: $93
	add c                                            ; $4b8a: $81
	add d                                            ; $4b8b: $82
	inc bc                                           ; $4b8c: $03
	rlca                                             ; $4b8d: $07
	inc bc                                           ; $4b8e: $03
	inc bc                                           ; $4b8f: $03
	rlca                                             ; $4b90: $07
	ld [de], a                                       ; $4b91: $12
	ldh [$e1], a                                     ; $4b92: $e0 $e1
	db $e3                                           ; $4b94: $e3
	db $e3                                           ; $4b95: $e3
	sbc $e7                                          ; $4b96: $de $e7
	sbc h                                            ; $4b98: $9c
	db $e4                                           ; $4b99: $e4
	and b                                            ; $4b9a: $a0
	add c                                            ; $4b9b: $81
	db $dd                                           ; $4b9c: $dd
	rst $38                                          ; $4b9d: $ff
	sbc e                                            ; $4b9e: $9b
	ld hl, sp+$3e                                    ; $4b9f: $f8 $3e
	nop                                              ; $4ba1: $00
	ld a, a                                          ; $4ba2: $7f
	call c, $9eff                                    ; $4ba3: $dc $ff $9e
	ld bc, $f977                                     ; $4ba6: $01 $77 $f9
	ld a, h                                          ; $4ba9: $7c
	sbc b                                            ; $4baa: $98
	rst SubAFromDE                                          ; $4bab: $df
	add hl, de                                       ; $4bac: $19
	jp c, $86ff                                      ; $4bad: $da $ff $86

	db $fd                                           ; $4bb0: $fd
	push af                                          ; $4bb1: $f5
	ldh [$e8], a                                     ; $4bb2: $e0 $e8
	set 4, c                                         ; $4bb4: $cb $e1
	ldh a, [rIE]                                     ; $4bb6: $f0 $ff
	db $eb                                           ; $4bb8: $eb
	ret z                                            ; $4bb9: $c8

	reti                                             ; $4bba: $d9


	pop de                                           ; $4bbb: $d1

jr_041_4bbc:
	pop af                                           ; $4bbc: $f1
	di                                               ; $4bbd: $f3
	db $e3                                           ; $4bbe: $e3
	ld hl, sp-$09                                    ; $4bbf: $f8 $f7
	add h                                            ; $4bc1: $84
	add h                                            ; $4bc2: $84
	add b                                            ; $4bc3: $80
	ld [$6a01], sp                                   ; $4bc4: $08 $01 $6a
	ld d, b                                          ; $4bc7: $50
	nop                                              ; $4bc8: $00
	sbc $c0                                          ; $4bc9: $de $c0
	rst SubAFromDE                                          ; $4bcb: $df
	add b                                            ; $4bcc: $80
	ld a, a                                          ; $4bcd: $7f
	dec c                                            ; $4bce: $0d
	sub l                                            ; $4bcf: $95
	rst $38                                          ; $4bd0: $ff
	call nz, $258c                                   ; $4bd1: $c4 $8c $25
	inc b                                            ; $4bd4: $04
	sub $a6                                          ; $4bd5: $d6 $a6
	ld [bc], a                                       ; $4bd7: $02
	ld [bc], a                                       ; $4bd8: $02
	ld c, $de                                        ; $4bd9: $0e $de
	ld b, $7a                                        ; $4bdb: $06 $7a
	xor $7e                                          ; $4bdd: $ee $7e
	dec l                                            ; $4bdf: $2d
	rst SubAFromDE                                          ; $4be0: $df
	rst $38                                          ; $4be1: $ff
	sbc d                                            ; $4be2: $9a
	inc bc                                           ; $4be3: $03
	jr jr_041_4c16                                   ; $4be4: $18 $30

	jr z, jr_041_4c10                                ; $4be6: $28 $28

	sbc $ff                                          ; $4be8: $de $ff
	sbc [hl]                                         ; $4bea: $9e
	db $fc                                           ; $4beb: $fc
	sbc $ff                                          ; $4bec: $de $ff
	sub [hl]                                         ; $4bee: $96
	ldh a, [$fe]                                     ; $4bef: $f0 $fe
	db $fc                                           ; $4bf1: $fc
	ret nz                                           ; $4bf2: $c0

	pop bc                                           ; $4bf3: $c1
	adc l                                            ; $4bf4: $8d
	add b                                            ; $4bf5: $80
	add c                                            ; $4bf6: $81
	ld bc, $ffde                                     ; $4bf7: $01 $de $ff
	ld a, e                                          ; $4bfa: $7b
	pop hl                                           ; $4bfb: $e1
	rst SubAFromDE                                          ; $4bfc: $df
	ld [bc], a                                       ; $4bfd: $02
	add h                                            ; $4bfe: $84
	db $eb                                           ; $4bff: $eb
	cp $fc                                           ; $4c00: $fe $fc
	and $9b                                          ; $4c02: $e6 $9b
	sbc b                                            ; $4c04: $98
	ld [bc], a                                       ; $4c05: $02
	ld b, l                                          ; $4c06: $45
	ldh a, [$f1]                                     ; $4c07: $f0 $f1
	di                                               ; $4c09: $f3
	ldh a, [$e4]                                     ; $4c0a: $f0 $e4
	ld bc, $0a01                                     ; $4c0c: $01 $01 $0a
	ld a, h                                          ; $4c0f: $7c

jr_041_4c10:
	rst SubAFromDE                                          ; $4c10: $df
	sub c                                            ; $4c11: $91
	jr nc, jr_041_4bbc                               ; $4c12: $30 $a8

	xor b                                            ; $4c14: $a8
	ld a, e                                          ; $4c15: $7b

jr_041_4c16:
	ld e, a                                          ; $4c16: $5f
	rst $38                                          ; $4c17: $ff
	ldh [$3f], a                                     ; $4c18: $e0 $3f
	sbc $1f                                          ; $4c1a: $de $1f
	rst SubAFromDE                                          ; $4c1c: $df
	adc a                                            ; $4c1d: $8f
	rst SubAFromDE                                          ; $4c1e: $df
	ret nz                                           ; $4c1f: $c0

	ld a, b                                          ; $4c20: $78
	ld sp, $0194                                     ; $4c21: $31 $94 $01
	pop hl                                           ; $4c24: $e1
	db $e3                                           ; $4c25: $e3
	ld b, $04                                        ; $4c26: $06 $04
	ld hl, sp-$03                                    ; $4c28: $f8 $fd
	ld e, c                                          ; $4c2a: $59
	ld sp, hl                                        ; $4c2b: $f9
	di                                               ; $4c2c: $f3
	di                                               ; $4c2d: $f3
	sbc $40                                          ; $4c2e: $de $40
	sub l                                            ; $4c30: $95
	add sp, -$02                                     ; $4c31: $e8 $fe
	db $e4                                           ; $4c33: $e4
	add $e4                                          ; $4c34: $c6 $e4
	jp $bf83                                         ; $4c36: $c3 $83 $bf


	rst SubAFromHL                                          ; $4c39: $d7
	add c                                            ; $4c3a: $81
	sbc $e7                                          ; $4c3b: $de $e7
	adc c                                            ; $4c3d: $89
	rra                                              ; $4c3e: $1f
	rlca                                             ; $4c3f: $07
	rlca                                             ; $4c40: $07
	rra                                              ; $4c41: $1f
	rst $38                                          ; $4c42: $ff
	rst $38                                          ; $4c43: $ff
	push hl                                          ; $4c44: $e5
	ld b, d                                          ; $4c45: $42
	rrca                                             ; $4c46: $0f
	rrca                                             ; $4c47: $0f
	rst $38                                          ; $4c48: $ff
	db $eb                                           ; $4c49: $eb
	sub a                                            ; $4c4a: $97
	set 1, a                                         ; $4c4b: $cb $cf
	rst JumpTable                                          ; $4c4d: $c7
	xor a                                            ; $4c4e: $af
	ld d, h                                          ; $4c4f: $54
	xor h                                            ; $4c50: $ac
	ld d, l                                          ; $4c51: $55
	xor [hl]                                         ; $4c52: $ae
	ld a, l                                          ; $4c53: $7d
	ld [hl], h                                       ; $4c54: $74
	ld [hl], $68                                     ; $4c55: $36 $68
	sub b                                            ; $4c57: $90
	ld a, [hl]                                       ; $4c58: $7e
	jp nz, Jump_041_459d                             ; $4c59: $c2 $9d $45

	xor d                                            ; $4c5c: $aa
	ld h, c                                          ; $4c5d: $61
	or d                                             ; $4c5e: $b2
	rst SubAFromDE                                          ; $4c5f: $df
	rst $38                                          ; $4c60: $ff
	add l                                            ; $4c61: $85
	ld h, c                                          ; $4c62: $61
	jp nz, $a0a3                                     ; $4c63: $c2 $a3 $a0

	and c                                            ; $4c66: $a1
	ld hl, $2425                                     ; $4c67: $21 $25 $24
	ld e, $3d                                        ; $4c6a: $1e $3d
	inc e                                            ; $4c6c: $1c
	dec e                                            ; $4c6d: $1d
	dec e                                            ; $4c6e: $1d
	sbc l                                            ; $4c6f: $9d
	sbc e                                            ; $4c70: $9b
	sbc e                                            ; $4c71: $9b
	ld c, h                                          ; $4c72: $4c
	and a                                            ; $4c73: $a7
	rst SubAFromBC                                          ; $4c74: $e7
	rst SubAFromBC                                          ; $4c75: $e7
	daa                                              ; $4c76: $27
	ld sp, $73b3                                     ; $4c77: $31 $b3 $73
	ld hl, sp-$24                                    ; $4c7a: $f8 $dc
	sbc $9c                                          ; $4c7c: $de $9c
	sub a                                            ; $4c7e: $97
	adc [hl]                                         ; $4c7f: $8e
	ld c, $0e                                        ; $4c80: $0e $0e
	ld a, [hl]                                       ; $4c82: $7e
	ld a, a                                          ; $4c83: $7f
	ccf                                              ; $4c84: $3f
	ccf                                              ; $4c85: $3f
	ld a, $db                                        ; $4c86: $3e $db
	ccf                                              ; $4c88: $3f
	add e                                            ; $4c89: $83
	ld a, $3c                                        ; $4c8a: $3e $3c
	ld [$1700], sp                                   ; $4c8c: $08 $00 $17
	ld bc, $cf01                                     ; $4c8f: $01 $01 $cf
	db $fd                                           ; $4c92: $fd
	ei                                               ; $4c93: $fb
	rlca                                             ; $4c94: $07
	rlca                                             ; $4c95: $07
	rst GetHLinHL                                          ; $4c96: $cf
	add a                                            ; $4c97: $87
	rst GetHLinHL                                          ; $4c98: $cf
	ld b, c                                          ; $4c99: $41

jr_041_4c9a:
	nop                                              ; $4c9a: $00
	nop                                              ; $4c9b: $00
	ld [hl], b                                       ; $4c9c: $70
	ld [hl], b                                       ; $4c9d: $70
	jr nc, jr_041_4c9a                               ; $4c9e: $30 $fa

	push af                                          ; $4ca0: $f5

Call_041_4ca1:
	ld [$2a75], a                                    ; $4ca1: $ea $75 $2a
	dec [hl]                                         ; $4ca4: $35
	ld a, [hl+]                                      ; $4ca5: $2a
	ld l, l                                          ; $4ca6: $6d
	ld d, b                                          ; $4ca7: $50
	halt                                             ; $4ca8: $76
	rst SubAFromDE                                          ; $4ca9: $df
	sbc [hl]                                         ; $4caa: $9e
	dec bc                                           ; $4cab: $0b
	sbc $13                                          ; $4cac: $de $13
	adc l                                            ; $4cae: $8d
	ld d, $13                                        ; $4caf: $16 $13
	inc de                                           ; $4cb1: $13
	ldh [$e7], a                                     ; $4cb2: $e0 $e7
	rst AddAOntoHL                                          ; $4cb4: $ef
	rst AddAOntoHL                                          ; $4cb5: $ef
	xor $ec                                          ; $4cb6: $ee $ec
	xor $ec                                          ; $4cb8: $ee $ec
	sbc a                                            ; $4cba: $9f
	adc c                                            ; $4cbb: $89
	ld bc, $7f01                                     ; $4cbc: $01 $01 $7f
	ret nz                                           ; $4cbf: $c0

	ld bc, $9076                                     ; $4cc0: $01 $76 $90
	call c, $96ff                                    ; $4cc3: $dc $ff $96
	inc e                                            ; $4cc6: $1c
	sbc b                                            ; $4cc7: $98
	sbc b                                            ; $4cc8: $98
	cp e                                             ; $4cc9: $bb
	db $fc                                           ; $4cca: $fc
	ldh a, [$30]                                     ; $4ccb: $f0 $30
	ld a, a                                          ; $4ccd: $7f
	db $fd                                           ; $4cce: $fd
	sbc $fc                                          ; $4ccf: $de $fc
	rst SubAFromDE                                          ; $4cd1: $df
	ld hl, sp+$7d                                    ; $4cd2: $f8 $7d
	jp nc, $be7e                                     ; $4cd4: $d2 $7e $be

	sbc c                                            ; $4cd7: $99
	ei                                               ; $4cd8: $fb
	cp $3b                                           ; $4cd9: $fe $3b
	dec sp                                           ; $4cdb: $3b
	ld a, e                                          ; $4cdc: $7b
	rst FarCall                                          ; $4cdd: $f7
	sbc $fd                                          ; $4cde: $de $fd
	sbc h                                            ; $4ce0: $9c
	ld a, c                                          ; $4ce1: $79
	ei                                               ; $4ce2: $fb
	db $db                                           ; $4ce3: $db
	ld a, c                                          ; $4ce4: $79
	nop                                              ; $4ce5: $00
	sbc e                                            ; $4ce6: $9b
	rra                                              ; $4ce7: $1f
	ldh [rP1], a                                     ; $4ce8: $e0 $00
	inc bc                                           ; $4cea: $03
	halt                                             ; $4ceb: $76
	rst SubAFromHL                                          ; $4cec: $d7
	jp c, $97ff                                      ; $4ced: $da $ff $97

	ld d, a                                          ; $4cf0: $57
	ldh [rDIV], a                                    ; $4cf1: $e0 $04
	ld [$c0f0], sp                                   ; $4cf3: $08 $f0 $c0
	ret nz                                           ; $4cf6: $c0

	ld h, b                                          ; $4cf7: $60
	ld a, d                                          ; $4cf8: $7a
	ld a, h                                          ; $4cf9: $7c
	sbc [hl]                                         ; $4cfa: $9e
	ldh a, [$de]                                     ; $4cfb: $f0 $de

jr_041_4cfd:
	ldh [$99], a                                     ; $4cfd: $e0 $99
	ret nz                                           ; $4cff: $c0

	ret z                                            ; $4d00: $c8

	add [hl]                                         ; $4d01: $86
	nop                                              ; $4d02: $00
	nop                                              ; $4d03: $00
	inc d                                            ; $4d04: $14
	cp $9a                                           ; $4d05: $fe $9a
	ldh [$c1], a                                     ; $4d07: $e0 $c1
	rlca                                             ; $4d09: $07
	rrca                                             ; $4d0a: $0f
	ld [$80fe], sp                                   ; $4d0b: $08 $fe $80
	ld [de], a                                       ; $4d0e: $12
	ld [bc], a                                       ; $4d0f: $02
	ld a, [bc]                                       ; $4d10: $0a
	inc b                                            ; $4d11: $04
	ld [bc], a                                       ; $4d12: $02
	ld bc, $0000                                     ; $4d13: $01 $00 $00
	ld a, [bc]                                       ; $4d16: $0a
	cp $fe                                           ; $4d17: $fe $fe
	ld c, $06                                        ; $4d19: $0e $06
	inc bc                                           ; $4d1b: $03
	inc bc                                           ; $4d1c: $03
	nop                                              ; $4d1d: $00
	xor e                                            ; $4d1e: $ab
	and [hl]                                         ; $4d1f: $a6
	cp h                                             ; $4d20: $bc
	ld de, $55ea                                     ; $4d21: $11 $ea $55
	cp b                                             ; $4d24: $b8
	ret nz                                           ; $4d25: $c0

	ld b, h                                          ; $4d26: $44
	ld e, c                                          ; $4d27: $59
	ld b, d                                          ; $4d28: $42
	ld [$a211], sp                                   ; $4d29: $08 $11 $a2
	ld b, h                                          ; $4d2c: $44
	sub d                                            ; $4d2d: $92
	nop                                              ; $4d2e: $00
	or e                                             ; $4d2f: $b3
	ld a, [hl+]                                      ; $4d30: $2a
	ld d, b                                          ; $4d31: $50
	and d                                            ; $4d32: $a2
	jp nz, $0202                                     ; $4d33: $c2 $02 $02

	nop                                              ; $4d36: $00
	rrca                                             ; $4d37: $0f
	ld de, $4020                                     ; $4d38: $11 $20 $40
	db $fd                                           ; $4d3b: $fd
	sub h                                            ; $4d3c: $94
	ei                                               ; $4d3d: $fb
	rst SubAFromDE                                          ; $4d3e: $df
	ld bc, $0810                                     ; $4d3f: $01 $10 $08
	inc b                                            ; $4d42: $04
	ld [bc], a                                       ; $4d43: $02
	ld [bc], a                                       ; $4d44: $02
	rst SubAFromBC                                          ; $4d45: $e7
	rst SubAFromBC                                          ; $4d46: $e7
	rst $38                                          ; $4d47: $ff
	ld a, e                                          ; $4d48: $7b
	jp z, $97ff                                      ; $4d49: $ca $ff $97

	ld b, d                                          ; $4d4c: $42
	and l                                            ; $4d4d: $a5
	ld c, [hl]                                       ; $4d4e: $4e
	db $ed                                           ; $4d4f: $ed
	add $2f                                          ; $4d50: $c6 $2f
	ld b, d                                          ; $4d52: $42
	dec b                                            ; $4d53: $05
	sbc $e7                                          ; $4d54: $de $e7
	sub d                                            ; $4d56: $92
	rst JumpTable                                          ; $4d57: $c7
	rlca                                             ; $4d58: $07
	rlca                                             ; $4d59: $07
	ccf                                              ; $4d5a: $3f
	inc bc                                           ; $4d5b: $03
	pop bc                                           ; $4d5c: $c1
	ld h, d                                          ; $4d5d: $62
	ld h, c                                          ; $4d5e: $61
	ld a, d                                          ; $4d5f: $7a
	ld h, c                                          ; $4d60: $61
	and d                                            ; $4d61: $a2
	dec l                                            ; $4d62: $2d
	cp b                                             ; $4d63: $b8
	call c, $9de7                                    ; $4d64: $dc $e7 $9d
	ld h, a                                          ; $4d67: $67
	rst SubAFromBC                                          ; $4d68: $e7
	ld l, [hl]                                       ; $4d69: $6e
	ld a, [bc]                                       ; $4d6a: $0a
	ld a, l                                          ; $4d6b: $7d
	ld a, [hl+]                                      ; $4d6c: $2a
	halt                                             ; $4d6d: $76
	ld h, b                                          ; $4d6e: $60
	sub $ff                                          ; $4d6f: $d6 $ff
	rst SubAFromDE                                          ; $4d71: $df
	db $fc                                           ; $4d72: $fc
	ld h, b                                          ; $4d73: $60
	jr nc, jr_041_4cfd                               ; $4d74: $30 $87

	adc e                                            ; $4d76: $8b
	add e                                            ; $4d77: $83
	jp nz, $9e94                                     ; $4d78: $c2 $94 $9e

	inc de                                           ; $4d7b: $13
	ld e, b                                          ; $4d7c: $58
	cp e                                             ; $4d7d: $bb
	or d                                             ; $4d7e: $b2
	or [hl]                                          ; $4d7f: $b6
	or [hl]                                          ; $4d80: $b6
	and $e4                                          ; $4d81: $e6 $e4
	db $ec                                           ; $4d83: $ec
	rst AddAOntoHL                                          ; $4d84: $ef
	ld [hl], d                                       ; $4d85: $72
	ld a, d                                          ; $4d86: $7a
	ld a, c                                          ; $4d87: $79
	add hl, de                                       ; $4d88: $19
	ld de, $7d01                                     ; $4d89: $11 $01 $7d
	add hl, sp                                       ; $4d8c: $39
	rrca                                             ; $4d8d: $0f
	call c, $9507                                    ; $4d8e: $dc $07 $95
	add e                                            ; $4d91: $83
	rst $38                                          ; $4d92: $ff
	ccf                                              ; $4d93: $3f
	scf                                              ; $4d94: $37
	ld [de], a                                       ; $4d95: $12
	inc c                                            ; $4d96: $0c
	inc c                                            ; $4d97: $0c
	adc h                                            ; $4d98: $8c
	sbc a                                            ; $4d99: $9f
	rrca                                             ; $4d9a: $0f
	db $dd                                           ; $4d9b: $dd
	rra                                              ; $4d9c: $1f
	sbc h                                            ; $4d9d: $9c
	jr jr_041_4dbb                                   ; $4d9e: $18 $1b

	add b                                            ; $4da0: $80
	ld [hl], b                                       ; $4da1: $70
	ld e, b                                          ; $4da2: $58
	ld [hl], a                                       ; $4da3: $77
	xor e                                            ; $4da4: $ab
	sub a                                            ; $4da5: $97
	add b                                            ; $4da6: $80
	and b                                            ; $4da7: $a0
	add c                                            ; $4da8: $81
	inc bc                                           ; $4da9: $03
	inc a                                            ; $4daa: $3c
	add b                                            ; $4dab: $80
	ld bc, $de0f                                     ; $4dac: $01 $0f $de
	rst $38                                          ; $4daf: $ff
	sbc [hl]                                         ; $4db0: $9e

jr_041_4db1:
	ld e, a                                          ; $4db1: $5f
	ld a, c                                          ; $4db2: $79
	jr nc, jr_041_4e17                               ; $4db3: $30 $62

	ld l, [hl]                                       ; $4db5: $6e
	sub a                                            ; $4db6: $97
	nop                                              ; $4db7: $00
	inc b                                            ; $4db8: $04
	sbc [hl]                                         ; $4db9: $9e
	adc [hl]                                         ; $4dba: $8e

jr_041_4dbb:
	adc [hl]                                         ; $4dbb: $8e
	add $c6                                          ; $4dbc: $c6 $c6
	and $d9                                          ; $4dbe: $e6 $d9
	rst $38                                          ; $4dc0: $ff
	ld [hl], e                                       ; $4dc1: $73
	ld a, a                                          ; $4dc2: $7f
	sbc [hl]                                         ; $4dc3: $9e
	rst SubAFromDE                                          ; $4dc4: $df
	ld a, c                                          ; $4dc5: $79
	or a                                             ; $4dc6: $b7
	ret c                                            ; $4dc7: $d8

	rst $38                                          ; $4dc8: $ff
	sbc h                                            ; $4dc9: $9c
	cp $ff                                           ; $4dca: $fe $ff
	ld [$d05b], a                                    ; $4dcc: $ea $5b $d0
	rst SubAFromDE                                          ; $4dcf: $df
	rst $38                                          ; $4dd0: $ff
	sub a                                            ; $4dd1: $97
	and a                                            ; $4dd2: $a7
	ld l, a                                          ; $4dd3: $6f
	ld h, [hl]                                       ; $4dd4: $66
	ldh [$df], a                                     ; $4dd5: $e0 $df
	cpl                                              ; $4dd7: $2f
	rst FarCall                                          ; $4dd8: $f7
	rst FarCall                                          ; $4dd9: $f7
	ld a, d                                          ; $4dda: $7a
	sbc $79                                          ; $4ddb: $de $79
	adc l                                            ; $4ddd: $8d
	ld a, a                                          ; $4dde: $7f
	and $9a                                          ; $4ddf: $e6 $9a
	xor d                                            ; $4de1: $aa
	ld h, b                                          ; $4de2: $60
	nop                                              ; $4de3: $00
	inc b                                            ; $4de4: $04
	ldh [$73], a                                     ; $4de5: $e0 $73
	ld h, l                                          ; $4de7: $65
	db $fd                                           ; $4de8: $fd
	ld a, a                                          ; $4de9: $7f
	db $ed                                           ; $4dea: $ed
	ld a, l                                          ; $4deb: $7d
	and b                                            ; $4dec: $a0
	sbc e                                            ; $4ded: $9b
	ld h, c                                          ; $4dee: $61
	inc hl                                           ; $4def: $23
	dec sp                                           ; $4df0: $3b
	cp h                                             ; $4df1: $bc
	sbc $c0                                          ; $4df2: $de $c0
	sub d                                            ; $4df4: $92
	ld h, b                                          ; $4df5: $60
	jr nc, jr_041_4e14                               ; $4df6: $30 $1c

	rlca                                             ; $4df8: $07
	nop                                              ; $4df9: $00
	nop                                              ; $4dfa: $00
	ld bc, $0002                                     ; $4dfb: $01 $02 $00
	jr nz, jr_041_4e74                               ; $4dfe: $20 $74

	cp $0d                                           ; $4e00: $fe $0d
	ld a, e                                          ; $4e02: $7b
	rst FarCall                                          ; $4e03: $f7
	ld a, a                                          ; $4e04: $7f
	db $e4                                           ; $4e05: $e4
	sub e                                            ; $4e06: $93
	ld hl, sp-$01                                    ; $4e07: $f8 $ff
	inc bc                                           ; $4e09: $03
	sub b                                            ; $4e0a: $90
	ld c, [hl]                                       ; $4e0b: $4e
	inc b                                            ; $4e0c: $04
	inc c                                            ; $4e0d: $0c
	inc d                                            ; $4e0e: $14
	ld b, $64                                        ; $4e0f: $06 $64
	ldh a, [c]                                       ; $4e11: $f2
	ld h, c                                          ; $4e12: $61
	ld a, e                                          ; $4e13: $7b

jr_041_4e14:
	jp nc, $089b                                     ; $4e14: $d2 $9b $08

jr_041_4e17:
	jr jr_041_4db1                                   ; $4e17: $18 $98

	db $ec                                           ; $4e19: $ec
	cp $7d                                           ; $4e1a: $fe $7d
	ld d, h                                          ; $4e1c: $54
	sbc h                                            ; $4e1d: $9c
	jr c, jr_041_4e20                                ; $4e1e: $38 $00

jr_041_4e20:
	jr @+$7d                                         ; $4e20: $18 $7b

	pop af                                           ; $4e22: $f1
	ld [hl], d                                       ; $4e23: $72
	ldh [hDisp1_SCX], a                                     ; $4e24: $e0 $91
	ld [$9814], sp                                   ; $4e26: $08 $14 $98
	ld h, c                                          ; $4e29: $61
	ld b, $0a                                        ; $4e2a: $06 $0a
	jr c, jr_041_4e8e                                ; $4e2c: $38 $60

	inc b                                            ; $4e2e: $04
	ld [$8060], sp                                   ; $4e2f: $08 $60 $80
	nop                                              ; $4e32: $00
	inc b                                            ; $4e33: $04
	db $fc                                           ; $4e34: $fc
	sbc [hl]                                         ; $4e35: $9e
	ld [bc], a                                       ; $4e36: $02
	ld a, e                                          ; $4e37: $7b
	ld sp, hl                                        ; $4e38: $f9
	ld a, [hl]                                       ; $4e39: $7e
	sub a                                            ; $4e3a: $97
	ld a, [$339e]                                    ; $4e3b: $fa $9e $33
	ld a, e                                          ; $4e3e: $7b
	or $9b                                           ; $4e3f: $f6 $9b
	ld d, b                                          ; $4e41: $50
	ret nc                                           ; $4e42: $d0

	and b                                            ; $4e43: $a0
	ldh [c], a                                       ; $4e44: $e2
	ld a, b                                          ; $4e45: $78
	or e                                             ; $4e46: $b3
	ld a, e                                          ; $4e47: $7b
	adc $7c                                          ; $4e48: $ce $7c
	rst JumpTable                                          ; $4e4a: $c7
	sub c                                            ; $4e4b: $91
	jr nc, jr_041_4e8d                               ; $4e4c: $30 $3f

	ld c, h                                          ; $4e4e: $4c
	ld e, b                                          ; $4e4f: $58
	ldh a, [c]                                       ; $4e50: $f2
	ld [$f33f], sp                                   ; $4e51: $08 $3f $f3
	rst $38                                          ; $4e54: $ff
	rst $38                                          ; $4e55: $ff
	add e                                            ; $4e56: $83
	jr nz, jr_041_4e65                               ; $4e57: $20 $0c

	rst FarCall                                          ; $4e59: $f7
	db $fd                                           ; $4e5a: $fd
	sbc d                                            ; $4e5b: $9a
	ccf                                              ; $4e5c: $3f
	jr jr_041_4e5f                                   ; $4e5d: $18 $00

jr_041_4e5f:
	rst $38                                          ; $4e5f: $ff
	ld e, $75                                        ; $4e60: $1e $75
	ld a, a                                          ; $4e62: $7f
	ld a, e                                          ; $4e63: $7b
	add e                                            ; $4e64: $83

jr_041_4e65:
	sub l                                            ; $4e65: $95
	ldh [rAUD1SWEEP], a                              ; $4e66: $e0 $10
	dec b                                            ; $4e68: $05
	ld [bc], a                                       ; $4e69: $02
	add l                                            ; $4e6a: $85
	ld a, [$e07c]                                    ; $4e6b: $fa $7c $e0
	rst $38                                          ; $4e6e: $ff
	ret nz                                           ; $4e6f: $c0

	db $dd                                           ; $4e70: $dd
	rst $38                                          ; $4e71: $ff
	ld [hl], a                                       ; $4e72: $77
	cp e                                             ; $4e73: $bb

jr_041_4e74:
	sub d                                            ; $4e74: $92
	dec [hl]                                         ; $4e75: $35

Call_041_4e76:
	cp d                                             ; $4e76: $ba
	ld h, l                                          ; $4e77: $65
	ld [$3c50], a                                    ; $4e78: $ea $50 $3c
	ldh [rVBK], a                                    ; $4e7b: $e0 $4f
	rst GetHLinHL                                          ; $4e7d: $cf
	rst GetHLinHL                                          ; $4e7e: $cf
	sbc a                                            ; $4e7f: $9f
	sbc a                                            ; $4e80: $9f
	cp a                                             ; $4e81: $bf
	ld [hl], a                                       ; $4e82: $77
	rst AddAOntoHL                                          ; $4e83: $ef
	sbc b                                            ; $4e84: $98
	xor b                                            ; $4e85: $a8
	ld d, l                                          ; $4e86: $55
	xor b                                            ; $4e87: $a8
	ld d, $00                                        ; $4e88: $16 $00
	add b                                            ; $4e8a: $80
	ld l, h                                          ; $4e8b: $6c
	ld [hl], h                                       ; $4e8c: $74

jr_041_4e8d:
	ld d, d                                          ; $4e8d: $52

jr_041_4e8e:
	ld a, e                                          ; $4e8e: $7b
	ld [bc], a                                       ; $4e8f: $02
	sub d                                            ; $4e90: $92
	add hl, sp                                       ; $4e91: $39
	rlca                                             ; $4e92: $07
	ld bc, $5008                                     ; $4e93: $01 $08 $50
	jr z, @+$56                                      ; $4e96: $28 $54

	cpl                                              ; $4e98: $2f
	ld a, [hl-]                                      ; $4e99: $3a
	ld hl, sp-$30                                    ; $4e9a: $f8 $d0
	ldh a, [$f8]                                     ; $4e9c: $f0 $f8
	db $dd                                           ; $4e9e: $dd
	db $fc                                           ; $4e9f: $fc
	sub h                                            ; $4ea0: $94
	ld hl, sp-$13                                    ; $4ea1: $f8 $ed
	jp nc, Jump_041_566f                             ; $4ea3: $d2 $6f $56

	ld l, a                                          ; $4ea6: $6f
	call nc, $3faf                                   ; $4ea7: $d4 $af $3f
	dec sp                                           ; $4eaa: $3b
	db $fd                                           ; $4eab: $fd
	sbc $b9                                          ; $4eac: $de $b9
	sbc l                                            ; $4eae: $9d
	dec sp                                           ; $4eaf: $3b
	ld a, a                                          ; $4eb0: $7f
	ld a, e                                          ; $4eb1: $7b
	db $10                                           ; $4eb2: $10
	sbc e                                            ; $4eb3: $9b
	ld d, l                                          ; $4eb4: $55
	add b                                            ; $4eb5: $80
	ld a, b                                          ; $4eb6: $78
	ret nz                                           ; $4eb7: $c0

	ld [hl], e                                       ; $4eb8: $73
	or b                                             ; $4eb9: $b0
	ld a, h                                          ; $4eba: $7c
	ld b, e                                          ; $4ebb: $43
	sub l                                            ; $4ebc: $95
	add c                                            ; $4ebd: $81
	ret nz                                           ; $4ebe: $c0

	rst SubAFromBC                                          ; $4ebf: $e7
	rst SubAFromBC                                          ; $4ec0: $e7
	ld [hl+], a                                      ; $4ec1: $22
	inc sp                                           ; $4ec2: $33
	or c                                             ; $4ec3: $b1
	ld sp, hl                                        ; $4ec4: $f9
	ld sp, hl                                        ; $4ec5: $f9
	ld hl, sp-$27                                    ; $4ec6: $f8 $d9
	rst $38                                          ; $4ec8: $ff
	sbc c                                            ; $4ec9: $99
	cp [hl]                                          ; $4eca: $be
	ld l, e                                          ; $4ecb: $6b
	and d                                            ; $4ecc: $a2

jr_041_4ecd:
	ld [hl], e                                       ; $4ecd: $73
	cp a                                             ; $4ece: $bf
	rst SubAFromHL                                          ; $4ecf: $d7
	ld a, d                                          ; $4ed0: $7a
	cp c                                             ; $4ed1: $b9
	sbc [hl]                                         ; $4ed2: $9e
	rst FarCall                                          ; $4ed3: $f7
	ld a, d                                          ; $4ed4: $7a
	ld c, $de                                        ; $4ed5: $0e $de
	rst $38                                          ; $4ed7: $ff
	sub a                                            ; $4ed8: $97
	xor [hl]                                         ; $4ed9: $ae
	ld a, h                                          ; $4eda: $7c
	rst $38                                          ; $4edb: $ff
	or $f9                                           ; $4edc: $f6 $f9
	push af                                          ; $4ede: $f5
	ldh [c], a                                       ; $4edf: $e2
	jp nc, $a07b                                     ; $4ee0: $d2 $7b $a0

	ld [hl], l                                       ; $4ee3: $75
	ld a, a                                          ; $4ee4: $7f
	sub l                                            ; $4ee5: $95
	ldh a, [$f9]                                     ; $4ee6: $f0 $f9
	ld l, b                                          ; $4ee8: $68
	ret z                                            ; $4ee9: $c8

	call c, $1d5d                                    ; $4eea: $dc $5d $1d
	rra                                              ; $4eed: $1f
	rla                                              ; $4eee: $17
	ld b, $de                                        ; $4eef: $06 $de
	rlca                                             ; $4ef1: $07
	rst SubAFromDE                                          ; $4ef2: $df
	ld b, $7e                                        ; $4ef3: $06 $7e
	db $f4                                           ; $4ef5: $f4
	sub e                                            ; $4ef6: $93
	ld l, $4e                                        ; $4ef7: $2e $4e
	db $f4                                           ; $4ef9: $f4
	rst FarCall                                          ; $4efa: $f7
	and $e6                                          ; $4efb: $e6 $e6
	rst GetHLinHL                                          ; $4efd: $cf
	rst GetHLinHL                                          ; $4efe: $cf
	pop de                                           ; $4eff: $d1
	or c                                             ; $4f00: $b1
	inc bc                                           ; $4f01: $03
	nop                                              ; $4f02: $00
	db $dd                                           ; $4f03: $dd
	ld bc, $7492                                     ; $4f04: $01 $92 $74
	ld c, d                                          ; $4f07: $4a
	ld e, [hl]                                       ; $4f08: $5e
	add a                                            ; $4f09: $87
	rst SubAFromDE                                          ; $4f0a: $df
	sbc l                                            ; $4f0b: $9d
	sbc l                                            ; $4f0c: $9d
	sbc c                                            ; $4f0d: $99
	ret z                                            ; $4f0e: $c8

	call z, $d8c8                                    ; $4f0f: $cc $c8 $d8
	add b                                            ; $4f12: $80
	halt                                             ; $4f13: $76
	db $eb                                           ; $4f14: $eb
	sbc b                                            ; $4f15: $98
	ldh a, [c]                                       ; $4f16: $f2
	db $fc                                           ; $4f17: $fc
	ldh a, [c]                                       ; $4f18: $f2
	ldh a, [c]                                       ; $4f19: $f2
	or $f7                                           ; $4f1a: $f6 $f7
	rst FarCall                                          ; $4f1c: $f7
	ld a, e                                          ; $4f1d: $7b
	inc d                                            ; $4f1e: $14
	sbc $01                                          ; $4f1f: $de $01
	rst $38                                          ; $4f21: $ff
	add l                                            ; $4f22: $85
	ld b, $c0                                        ; $4f23: $06 $c0
	ld bc, $2858                                     ; $4f25: $01 $58 $28
	sbc $73                                          ; $4f28: $de $73
	cp [hl]                                          ; $4f2a: $be
	ldh [rP1], a                                     ; $4f2b: $e0 $00
	nop                                              ; $4f2d: $00
	ld hl, $f9f1                                     ; $4f2e: $21 $f1 $f9
	adc a                                            ; $4f31: $8f
	ld bc, $a150                                     ; $4f32: $01 $50 $a1
	ld b, b                                          ; $4f35: $40
	ld b, b                                          ; $4f36: $40
	ld l, b                                          ; $4f37: $68
	dec b                                            ; $4f38: $05
	add b                                            ; $4f39: $80
	ret nc                                           ; $4f3a: $d0

	jr nz, jr_041_4f7d                               ; $4f3b: $20 $40

	reti                                             ; $4f3d: $d9


	add b                                            ; $4f3e: $80
	ld [hl], l                                       ; $4f3f: $75
	ld d, e                                          ; $4f40: $53
	sbc l                                            ; $4f41: $9d
	sbc $c8                                          ; $4f42: $de $c8
	ei                                               ; $4f44: $fb
	adc d                                            ; $4f45: $8a
	jr nz, jr_041_4f78                               ; $4f46: $20 $30

	jr nz, jr_041_4ecd                               ; $4f48: $20 $83

	dec b                                            ; $4f4a: $05
	rlca                                             ; $4f4b: $07
	ld a, [bc]                                       ; $4f4c: $0a
	nop                                              ; $4f4d: $00
	sbc b                                            ; $4f4e: $98
	db $db                                           ; $4f4f: $db
	rra                                              ; $4f50: $1f
	ld a, a                                          ; $4f51: $7f
	inc bc                                           ; $4f52: $03
	ld [bc], a                                       ; $4f53: $02
	inc b                                            ; $4f54: $04
	ld [$3010], sp                                   ; $4f55: $08 $10 $30
	rrca                                             ; $4f58: $0f
	pop hl                                           ; $4f59: $e1

jr_041_4f5a:
	jr nc, jr_041_4f5a                               ; $4f5a: $30 $fe

	sbc e                                            ; $4f5c: $9b
	ld [hl], b                                       ; $4f5d: $70
	ldh [rIE], a                                     ; $4f5e: $e0 $ff
	cp $78                                           ; $4f60: $fe $78
	daa                                              ; $4f62: $27
	cp $7f                                           ; $4f63: $fe $7f
	ld hl, sp+$72                                    ; $4f65: $f8 $72
	sbc l                                            ; $4f67: $9d
	sbc [hl]                                         ; $4f68: $9e
	ld d, $6d                                        ; $4f69: $16 $6d
	ld h, d                                          ; $4f6b: $62
	ld a, l                                          ; $4f6c: $7d
	ld c, c                                          ; $4f6d: $49
	sbc l                                            ; $4f6e: $9d
	sub b                                            ; $4f6f: $90
	ld [de], a                                       ; $4f70: $12
	ld a, e                                          ; $4f71: $7b
	adc h                                            ; $4f72: $8c
	sbc e                                            ; $4f73: $9b
	dec de                                           ; $4f74: $1b
	db $d3                                           ; $4f75: $d3
	inc de                                           ; $4f76: $13

Call_041_4f77:
	rst $38                                          ; $4f77: $ff

jr_041_4f78:
	halt                                             ; $4f78: $76
	ld h, [hl]                                       ; $4f79: $66
	sub h                                            ; $4f7a: $94
	inc b                                            ; $4f7b: $04
	ld l, h                                          ; $4f7c: $6c

jr_041_4f7d:
	db $ec                                           ; $4f7d: $ec
	nop                                              ; $4f7e: $00
	ld bc, $7905                                     ; $4f7f: $01 $05 $79

Jump_041_4f82:
	sub c                                            ; $4f82: $91
	sub l                                            ; $4f83: $95
	sub l                                            ; $4f84: $95
	sub h                                            ; $4f85: $94
	ld a, e                                          ; $4f86: $7b
	call c, $069e                                    ; $4f87: $dc $9e $06
	db $dd                                           ; $4f8a: $dd
	ld h, [hl]                                       ; $4f8b: $66
	sbc l                                            ; $4f8c: $9d
	ld a, $9f                                        ; $4f8d: $3e $9f
	db $db                                           ; $4f8f: $db
	cp a                                             ; $4f90: $bf
	sbc [hl]                                         ; $4f91: $9e
	ld bc, $60da                                     ; $4f92: $01 $da $60
	sub l                                            ; $4f95: $95
	sub [hl]                                         ; $4f96: $96
	xor e                                            ; $4f97: $ab
	or l                                             ; $4f98: $b5
	cp [hl]                                          ; $4f99: $be
	cp a                                             ; $4f9a: $bf
	cp a                                             ; $4f9b: $bf
	rst $38                                          ; $4f9c: $ff
	xor $3c                                          ; $4f9d: $ee $3c
	ld a, $db                                        ; $4f9f: $3e $db
	rra                                              ; $4fa1: $1f
	sbc l                                            ; $4fa2: $9d
	dec h                                            ; $4fa3: $25
	ld [de], a                                       ; $4fa4: $12
	sbc $1f                                          ; $4fa5: $de $1f
	sbc e                                            ; $4fa7: $9b
	cp a                                             ; $4fa8: $bf
	db $fd                                           ; $4fa9: $fd
	ld a, [$6af8]                                    ; $4faa: $fa $f8 $6a
	xor $95                                          ; $4fad: $ee $95
	ld e, [hl]                                       ; $4faf: $5e
	rst $38                                          ; $4fb0: $ff
	db $fd                                           ; $4fb1: $fd
	ld a, [$abd5]                                    ; $4fb2: $fa $d5 $ab
	ld d, l                                          ; $4fb5: $55
	xor e                                            ; $4fb6: $ab
	ld a, $7e                                        ; $4fb7: $3e $7e
	db $db                                           ; $4fb9: $db
	rst $38                                          ; $4fba: $ff
	rst SubAFromDE                                          ; $4fbb: $df
	ldh [$9c], a                                     ; $4fbc: $e0 $9c
	and b                                            ; $4fbe: $a0
	nop                                              ; $4fbf: $00
	jr nz, @-$20                                     ; $4fc0: $20 $de

	or b                                             ; $4fc2: $b0
	sbc $40                                          ; $4fc3: $de $40
	call c, $dee0                                    ; $4fc5: $dc $e0 $de
	db $fc                                           ; $4fc8: $fc
	sbc $fe                                          ; $4fc9: $de $fe
	push de                                          ; $4fcb: $d5
	rst $38                                          ; $4fcc: $ff
	sbc $7f                                          ; $4fcd: $de $7f
	sbc h                                            ; $4fcf: $9c
	ld a, $3d                                        ; $4fd0: $3e $3d
	ld a, $d9                                        ; $4fd2: $3e $d9
	rst $38                                          ; $4fd4: $ff
	sbc h                                            ; $4fd5: $9c
	xor b                                            ; $4fd6: $a8
	call nc, $fc82                                   ; $4fd7: $d4 $82 $fc
	ld h, h                                          ; $4fda: $64
	cp $9b                                           ; $4fdb: $fe $9b
	dec de                                           ; $4fdd: $1b
	rrca                                             ; $4fde: $0f
	call nz, $fd1f                                   ; $4fdf: $c4 $1f $fd
	ld a, l                                          ; $4fe2: $7d
	db $ec                                           ; $4fe3: $ec
	sbc [hl]                                         ; $4fe4: $9e
	jr c, jr_041_505a                                ; $4fe5: $38 $73

	jp z, $8a99                                      ; $4fe7: $ca $99 $8a

	add hl, bc                                       ; $4fea: $09
	nop                                              ; $4feb: $00
	ld [bc], a                                       ; $4fec: $02
	ld b, h                                          ; $4fed: $44
	ld c, e                                          ; $4fee: $4b
	ld [hl], l                                       ; $4fef: $75
	sbc c                                            ; $4ff0: $99
	ld a, a                                          ; $4ff1: $7f
	ld hl, $809e                                     ; $4ff2: $21 $9e $80
	ld a, c                                          ; $4ff5: $79
	ld l, h                                          ; $4ff6: $6c
	sbc b                                            ; $4ff7: $98
	ld de, $2131                                     ; $4ff8: $11 $31 $21
	inc hl                                           ; $4ffb: $23
	inc bc                                           ; $4ffc: $03
	ld a, h                                          ; $4ffd: $7c
	ccf                                              ; $4ffe: $3f
	ei                                               ; $4fff: $fb
	ld a, h                                          ; $5000: $7c
	pop af                                           ; $5001: $f1
	sub a                                            ; $5002: $97
	rst $38                                          ; $5003: $ff
	di                                               ; $5004: $f3
	rst SubAFromBC                                          ; $5005: $e7
	rst SubAFromBC                                          ; $5006: $e7

jr_041_5007:
	ldh [c], a                                       ; $5007: $e2
	jp nz, $ccc0                                     ; $5008: $c2 $c0 $cc

	ld l, a                                          ; $500b: $6f
	inc de                                           ; $500c: $13
	rst SubAFromDE                                          ; $500d: $df
	add b                                            ; $500e: $80
	sbc l                                            ; $500f: $9d
	ldh [$9e], a                                     ; $5010: $e0 $9e
	sbc $1f                                          ; $5012: $de $1f
	sbc e                                            ; $5014: $9b
	cpl                                              ; $5015: $2f
	daa                                              ; $5016: $27
	ld l, e                                          ; $5017: $6b
	ld [hl], e                                       ; $5018: $73
	ld l, a                                          ; $5019: $6f
	ld de, $807e                                     ; $501a: $11 $7e $80
	add e                                            ; $501d: $83
	sub b                                            ; $501e: $90
	ld [hl], b                                       ; $501f: $70
	jp nz, $bffb                                     ; $5020: $c2 $fb $bf

	rst SubAFromDE                                          ; $5023: $df
	pop bc                                           ; $5024: $c1
	pop bc                                           ; $5025: $c1
	ret nz                                           ; $5026: $c0

	ret nz                                           ; $5027: $c0

	ld h, c                                          ; $5028: $61
	ld h, a                                          ; $5029: $67
	ld a, b                                          ; $502a: $78
	jr nz, jr_041_502d                               ; $502b: $20 $00

jr_041_502d:
	nop                                              ; $502d: $00
	ld c, b                                          ; $502e: $48
	ret z                                            ; $502f: $c8

	ld bc, $ff98                                     ; $5030: $01 $98 $ff
	ld hl, sp-$48                                    ; $5033: $f8 $b8
	cp b                                             ; $5035: $b8
	jr nc, jr_041_5068                               ; $5036: $30 $30

	ld hl, sp-$01                                    ; $5038: $f8 $ff
	db $fd                                           ; $503a: $fd
	add h                                            ; $503b: $84
	reti                                             ; $503c: $d9


	adc l                                            ; $503d: $8d
	db $10                                           ; $503e: $10
	add d                                            ; $503f: $82
	adc c                                            ; $5040: $89
	call Call_041_4a45                               ; $5041: $cd $45 $4a
	ld [hl-], a                                      ; $5044: $32
	ld [hl-], a                                      ; $5045: $32
	and $64                                          ; $5046: $e6 $64
	ld b, h                                          ; $5048: $44
	nop                                              ; $5049: $00
	ld [$fd01], sp                                   ; $504a: $08 $01 $fd
	jr nz, @-$7a                                     ; $504d: $20 $84

	adc h                                            ; $504f: $8c
	cp l                                             ; $5050: $bd
	sub h                                            ; $5051: $94
	sub l                                            ; $5052: $95
	add l                                            ; $5053: $85
	ld b, $0f                                        ; $5054: $06 $0f
	dec bc                                           ; $5056: $0b
	call c, $9603                                    ; $5057: $dc $03 $96

jr_041_505a:
	ldh [$b4], a                                     ; $505a: $e0 $b4
	inc [hl]                                         ; $505c: $34
	or h                                             ; $505d: $b4
	ld [hl], h                                       ; $505e: $74
	or h                                             ; $505f: $b4
	ld [hl], b                                       ; $5060: $70
	ld [hl], b                                       ; $5061: $70
	rra                                              ; $5062: $1f
	jp c, $dfcf                                      ; $5063: $da $cf $df

	sub e                                            ; $5066: $93
	db $dd                                           ; $5067: $dd

jr_041_5068:
	sbc e                                            ; $5068: $9b
	sbc e                                            ; $5069: $9b
	ld a, [de]                                       ; $506a: $1a
	ld d, [hl]                                       ; $506b: $56
	ld l, h                                          ; $506c: $6c
	ld l, h                                          ; $506d: $6c
	call c, $9d64                                    ; $506e: $dc $64 $9d
	jr nz, jr_041_5007                               ; $5071: $20 $94

	sbc $96                                          ; $5073: $de $96
	sbc d                                            ; $5075: $9a
	or [hl]                                          ; $5076: $b6
	and d                                            ; $5077: $a2
	ldh [c], a                                       ; $5078: $e2
	jp nz, $de66                                     ; $5079: $c2 $66 $de

	ld h, h                                          ; $507c: $64
	rst SubAFromDE                                          ; $507d: $df
	ld b, h                                          ; $507e: $44
	rst SubAFromDE                                          ; $507f: $df
	inc b                                            ; $5080: $04
	ld a, [hl]                                       ; $5081: $7e
	push de                                          ; $5082: $d5
	sbc b                                            ; $5083: $98
	ld sp, hl                                        ; $5084: $f9
	ld a, c                                          ; $5085: $79
	add hl, sp                                       ; $5086: $39
	add hl, de                                       ; $5087: $19
	dec hl                                           ; $5088: $2b
	ld a, a                                          ; $5089: $7f
	ld h, b                                          ; $508a: $60
	sbc $20                                          ; $508b: $de $20
	sbc e                                            ; $508d: $9b
	ld h, b                                          ; $508e: $60
	ld h, c                                          ; $508f: $61

jr_041_5090:
	ld b, a                                          ; $5090: $47
	rra                                              ; $5091: $1f
	ld a, b                                          ; $5092: $78
	sub h                                            ; $5093: $94
	sbc d                                            ; $5094: $9a
	ccf                                              ; $5095: $3f
	ld e, a                                          ; $5096: $5f
	cpl                                              ; $5097: $2f
	ld e, a                                          ; $5098: $5f
	xor a                                            ; $5099: $af
	sbc $1f                                          ; $509a: $de $1f
	ld [hl], b                                       ; $509c: $70
	add l                                            ; $509d: $85
	ld a, l                                          ; $509e: $7d
	and c                                            ; $509f: $a1
	sbc c                                            ; $50a0: $99
	push de                                          ; $50a1: $d5
	db $eb                                           ; $50a2: $eb
	rst SubAFromHL                                          ; $50a3: $d7
	ld [$faf5], a                                    ; $50a4: $ea $f5 $fa
	reti                                             ; $50a7: $d9


jr_041_50a8:
	rst $38                                          ; $50a8: $ff
	sbc b                                            ; $50a9: $98
	ld d, a                                          ; $50aa: $57
	cp e                                             ; $50ab: $bb
	ld [hl], a                                       ; $50ac: $77
	xor e                                            ; $50ad: $ab
	ld d, a                                          ; $50ae: $57
	xor a                                            ; $50af: $af
	ld a, a                                          ; $50b0: $7f
	ld [hl], l                                       ; $50b1: $75
	jr nc, jr_041_5090                               ; $50b2: $30 $dc

	rst $38                                          ; $50b4: $ff

jr_041_50b5:
	sub a                                            ; $50b5: $97
	and b                                            ; $50b6: $a0
	sub b                                            ; $50b7: $90
	sub b                                            ; $50b8: $90
	sbc b                                            ; $50b9: $98
	sbc b                                            ; $50ba: $98
	ret nz                                           ; $50bb: $c0

	ret z                                            ; $50bc: $c8

	call z, $f0dc                                    ; $50bd: $cc $dc $f0
	sbc $f8                                          ; $50c0: $de $f8
	pop de                                           ; $50c2: $d1
	rst $38                                          ; $50c3: $ff
	ld a, [hl]                                       ; $50c4: $7e
	sub d                                            ; $50c5: $92
	ld l, a                                          ; $50c6: $6f
	cp $d9                                           ; $50c7: $fe $d9
	rst $38                                          ; $50c9: $ff
	sub a                                            ; $50ca: $97
	ld [bc], a                                       ; $50cb: $02
	add h                                            ; $50cc: $84
	nop                                              ; $50cd: $00
	nop                                              ; $50ce: $00
	ld d, h                                          ; $50cf: $54
	xor d                                            ; $50d0: $aa
	ld b, b                                          ; $50d1: $40
	add b                                            ; $50d2: $80
	reti                                             ; $50d3: $d9


	rst $38                                          ; $50d4: $ff
	sbc [hl]                                         ; $50d5: $9e
	ld b, b                                          ; $50d6: $40
	db $fc                                           ; $50d7: $fc
	sbc l                                            ; $50d8: $9d
	inc bc                                           ; $50d9: $03
	jr c, jr_041_50b5                                ; $50da: $38 $d9

	rst $38                                          ; $50dc: $ff
	db $fc                                           ; $50dd: $fc
	sbc h                                            ; $50de: $9c
	ld [hl], b                                       ; $50df: $70
	add b                                            ; $50e0: $80
	nop                                              ; $50e1: $00
	ld e, a                                          ; $50e2: $5f
	ldh a, [$99]                                     ; $50e3: $f0 $99
	ld [bc], a                                       ; $50e5: $02
	jr nc, jr_041_50eb                               ; $50e6: $30 $03

jr_041_50e8:
	ld bc, $7a0f                                     ; $50e8: $01 $0f $7a

jr_041_50eb:
	ld h, e                                          ; $50eb: $63
	ret nz                                           ; $50ec: $c0

	ld l, b                                          ; $50ed: $68
	add [hl]                                         ; $50ee: $86
	ld l, d                                          ; $50ef: $6a
	add c                                            ; $50f0: $81
	sbc e                                            ; $50f1: $9b
	rst $38                                          ; $50f2: $ff
	rra                                              ; $50f3: $1f
	sbc [hl]                                         ; $50f4: $9e
	ld a, a                                          ; $50f5: $7f
	ei                                               ; $50f6: $fb
	sbc [hl]                                         ; $50f7: $9e
	pop hl                                           ; $50f8: $e1
	db $db                                           ; $50f9: $db
	rst $38                                          ; $50fa: $ff
	sbc e                                            ; $50fb: $9b
	jp $a003                                         ; $50fc: $c3 $03 $a0


	ld [hl], b                                       ; $50ff: $70
	ld [hl], d                                       ; $5100: $72
	sub d                                            ; $5101: $92
	sbc [hl]                                         ; $5102: $9e
	add b                                            ; $5103: $80
	ld l, h                                          ; $5104: $6c
	db $ed                                           ; $5105: $ed
	rst SubAFromDE                                          ; $5106: $df
	jr nc, jr_041_50e8                               ; $5107: $30 $df

	jr nz, jr_041_50a8                               ; $5109: $20 $9d

	ldh [$33], a                                     ; $510b: $e0 $33
	ld a, b                                          ; $510d: $78
	add l                                            ; $510e: $85
	rst $38                                          ; $510f: $ff
	sbc l                                            ; $5110: $9d
	ret nz                                           ; $5111: $c0

	ldh [$7b], a                                     ; $5112: $e0 $7b
	res 2, [hl]                                      ; $5114: $cb $96
	ld c, [hl]                                       ; $5116: $4e
	ld c, $0d                                        ; $5117: $0e $0d
	dec e                                            ; $5119: $1d
	dec e                                            ; $511a: $1d
	ld c, $87                                        ; $511b: $0e $87
	ccf                                              ; $511d: $3f
	ld bc, $5f7a                                     ; $511e: $01 $7a $5f
	sbc b                                            ; $5121: $98
	ld [bc], a                                       ; $5122: $02
	nop                                              ; $5123: $00
	cp $ff                                           ; $5124: $fe $ff
	add a                                            ; $5126: $87
	add [hl]                                         ; $5127: $86
	dec b                                            ; $5128: $05
	sbc $07                                          ; $5129: $de $07
	sbc e                                            ; $512b: $9b
	dec b                                            ; $512c: $05
	ldh a, [c]                                       ; $512d: $f2
	ld bc, $dd03                                     ; $512e: $01 $03 $dd
	ld [bc], a                                       ; $5131: $02
	sub d                                            ; $5132: $92
	ld h, [hl]                                       ; $5133: $66
	db $fc                                           ; $5134: $fc
	ld [hl], d                                       ; $5135: $72
	ld a, [$7b78]                                    ; $5136: $fa $78 $7b
	ld a, e                                          ; $5139: $7b
	jr c, jr_041_5161                                ; $513a: $38 $25

	daa                                              ; $513c: $27
	rst GetHLinHL                                          ; $513d: $cf
	ld b, a                                          ; $513e: $47
	ld b, a                                          ; $513f: $47
	sbc $46                                          ; $5140: $de $46
	sbc h                                            ; $5142: $9c
	ld b, d                                          ; $5143: $42
	rrca                                             ; $5144: $0f
	ld b, [hl]                                       ; $5145: $46
	sbc $66                                          ; $5146: $de $66
	sbc e                                            ; $5148: $9b
	ld h, $05                                        ; $5149: $26 $05
	xor d                                            ; $514b: $aa
	ld d, l                                          ; $514c: $55
	ld a, d                                          ; $514d: $7a
	ld [hl], l                                       ; $514e: $75
	ld a, a                                          ; $514f: $7f
	ld e, d                                          ; $5150: $5a
	sub a                                            ; $5151: $97
	rrca                                             ; $5152: $0f
	ld a, a                                          ; $5153: $7f
	rst $38                                          ; $5154: $ff
	add $44                                          ; $5155: $c6 $44
	ld [bc], a                                       ; $5157: $02
	inc d                                            ; $5158: $14
	jr nc, jr_041_51d0                               ; $5159: $30 $75

	inc l                                            ; $515b: $2c
	sbc h                                            ; $515c: $9c
	inc bc                                           ; $515d: $03
	rlca                                             ; $515e: $07
	cpl                                              ; $515f: $2f
	db $dd                                           ; $5160: $dd

jr_041_5161:
	rst $38                                          ; $5161: $ff
	sbc b                                            ; $5162: $98
	ld a, h                                          ; $5163: $7c
	ldh a, [$c5]                                     ; $5164: $f0 $c5
	ld [bc], a                                       ; $5166: $02
	rlca                                             ; $5167: $07
	ld e, $71                                        ; $5168: $1e $71
	ld l, a                                          ; $516a: $6f
	sub e                                            ; $516b: $93
	halt                                             ; $516c: $76
	ldh [$98], a                                     ; $516d: $e0 $98
	xor a                                            ; $516f: $af
	ld [hl], a                                       ; $5170: $77
	rst AddAOntoHL                                          ; $5171: $ef
	rst SubAFromHL                                          ; $5172: $d7
	xor a                                            ; $5173: $af
	ld e, a                                          ; $5174: $5f
	cp a                                             ; $5175: $bf
	ld h, e                                          ; $5176: $63
	nop                                              ; $5177: $00
	ld d, c                                          ; $5178: $51
	or h                                             ; $5179: $b4
	rst SubAFromDE                                          ; $517a: $df
	rst $38                                          ; $517b: $ff
	ld a, a                                          ; $517c: $7f
	db $e4                                           ; $517d: $e4
	sbc [hl]                                         ; $517e: $9e
	rst SubAFromDE                                          ; $517f: $df
	call nc, Call_041_7eff                           ; $5180: $d4 $ff $7e
	add $7d                                          ; $5183: $c6 $7d
	db $f4                                           ; $5185: $f4
	sbc e                                            ; $5186: $9b
	and h                                            ; $5187: $a4
	add $a6                                          ; $5188: $c6 $a6
	ld h, h                                          ; $518a: $64
	sbc $f8                                          ; $518b: $de $f8
	db $dd                                           ; $518d: $dd
	db $fc                                           ; $518e: $fc
	ld c, e                                          ; $518f: $4b
	jp nc, $c076                                     ; $5190: $d2 $76 $c0

	sbc [hl]                                         ; $5193: $9e
	rst $38                                          ; $5194: $ff
	halt                                             ; $5195: $76
	ret nz                                           ; $5196: $c0

Call_041_5197:
	ret c                                            ; $5197: $d8

	rst $38                                          ; $5198: $ff
	sub a                                            ; $5199: $97
	ld b, e                                          ; $519a: $43
	db $fc                                           ; $519b: $fc
	ld h, b                                          ; $519c: $60
	and b                                            ; $519d: $a0
	ld d, h                                          ; $519e: $54
	xor a                                            ; $519f: $af
	ld a, b                                          ; $51a0: $78
	add sp, -$27                                     ; $51a1: $e8 $d9
	rst $38                                          ; $51a3: $ff
	ld a, a                                          ; $51a4: $7f
	ld [hl], l                                       ; $51a5: $75
	sbc d                                            ; $51a6: $9a
	ld bc, $e11c                                     ; $51a7: $01 $1c $e1
	ld [bc], a                                       ; $51aa: $02
	dec b                                            ; $51ab: $05
	ld [hl], e                                       ; $51ac: $73
	ld [hl], h                                       ; $51ad: $74
	db $dd                                           ; $51ae: $dd
	rst $38                                          ; $51af: $ff
	sub a                                            ; $51b0: $97
	dec b                                            ; $51b1: $05
	ld a, d                                          ; $51b2: $7a
	db $fd                                           ; $51b3: $fd
	xor e                                            ; $51b4: $ab
	ld d, a                                          ; $51b5: $57
	cp a                                             ; $51b6: $bf
	db $fd                                           ; $51b7: $fd
	ld [$ffd9], a                                    ; $51b8: $ea $d9 $ff
	ld a, [hl]                                       ; $51bb: $7e
	ld b, b                                          ; $51bc: $40
	sbc e                                            ; $51bd: $9b
	ld d, a                                          ; $51be: $57
	cp $f5                                           ; $51bf: $fe $f5
	xor e                                            ; $51c1: $ab
	ld e, a                                          ; $51c2: $5f
	ld [hl], b                                       ; $51c3: $70
	sbc c                                            ; $51c4: $99
	ld e, a                                          ; $51c5: $5f
	ld a, [$bad5]                                    ; $51c6: $fa $d5 $ba
	ld [hl], a                                       ; $51c9: $77
	cp $5e                                           ; $51ca: $fe $5e
	ld [hl], b                                       ; $51cc: $70
	sub a                                            ; $51cd: $97
	nop                                              ; $51ce: $00
	and b                                            ; $51cf: $a0

jr_041_51d0:
	ld b, h                                          ; $51d0: $44
	ldh a, [$c0]                                     ; $51d1: $f0 $c0
	and c                                            ; $51d3: $a1
	ld c, [hl]                                       ; $51d4: $4e
	or b                                             ; $51d5: $b0
	ld e, [hl]                                       ; $51d6: $5e
	sub b                                            ; $51d7: $90
	sbc h                                            ; $51d8: $9c
	ld bc, $3806                                     ; $51d9: $01 $06 $38
	ld a, c                                          ; $51dc: $79
	ld h, d                                          ; $51dd: $62
	reti                                             ; $51de: $d9


	rst $38                                          ; $51df: $ff
	sbc [hl]                                         ; $51e0: $9e
	inc b                                            ; $51e1: $04
	ld [hl], a                                       ; $51e2: $77
	di                                               ; $51e3: $f3
	ld a, e                                          ; $51e4: $7b
	db $ed                                           ; $51e5: $ed
	reti                                             ; $51e6: $d9


	rst $38                                          ; $51e7: $ff
	sub a                                            ; $51e8: $97
	dec hl                                           ; $51e9: $2b
	dec d                                            ; $51ea: $15
	cpl                                              ; $51eb: $2f
	rra                                              ; $51ec: $1f
	ld a, [hl+]                                      ; $51ed: $2a
	rst SubAFromHL                                          ; $51ee: $d7
	dec bc                                           ; $51ef: $0b
	dec b                                            ; $51f0: $05
	rst SubAFromHL                                          ; $51f1: $d7
	rst $38                                          ; $51f2: $ff
	sbc h                                            ; $51f3: $9c
	cp a                                             ; $51f4: $bf
	ld a, a                                          ; $51f5: $7f
	cp a                                             ; $51f6: $bf
	ld [hl], c                                       ; $51f7: $71
	sub $6b                                          ; $51f8: $d6 $6b
	ld d, b                                          ; $51fa: $50
	sbc c                                            ; $51fb: $99
	ei                                               ; $51fc: $fb
	rst FarCall                                          ; $51fd: $f7
	ld [$e8f4], a                                    ; $51fe: $ea $f4 $e8
	rst FarCall                                          ; $5201: $f7
	ld h, c                                          ; $5202: $61
	ldh [$98], a                                     ; $5203: $e0 $98
	ld a, c                                          ; $5205: $79
	rst $38                                          ; $5206: $ff
	jr jr_041_521c                                   ; $5207: $18 $13

	ld e, $70                                        ; $5209: $1e $70
	ret nz                                           ; $520b: $c0

	ld h, e                                          ; $520c: $63
	or b                                             ; $520d: $b0
	sbc h                                            ; $520e: $9c
	ld c, $58                                        ; $520f: $0e $58
	ldh [$7a], a                                     ; $5211: $e0 $7a
	call nz, $0e9e                                   ; $5213: $c4 $9e $0e
	ld h, e                                          ; $5216: $63
	or b                                             ; $5217: $b0
	ld a, [hl]                                       ; $5218: $7e
	adc b                                            ; $5219: $88
	sbc c                                            ; $521a: $99
	rlca                                             ; $521b: $07

jr_041_521c:
	jr c, @-$1d                                      ; $521c: $38 $e1

	add b                                            ; $521e: $80
	nop                                              ; $521f: $00
	inc bc                                           ; $5220: $03
	reti                                             ; $5221: $d9


	rst $38                                          ; $5222: $ff
	sub a                                            ; $5223: $97
	rst FarCall                                          ; $5224: $f7
	db $eb                                           ; $5225: $eb
	ld d, a                                          ; $5226: $57
	xor e                                            ; $5227: $ab
	ld e, l                                          ; $5228: $5d
	cp e                                             ; $5229: $bb
	push af                                          ; $522a: $f5
	xor e                                            ; $522b: $ab
	ret z                                            ; $522c: $c8

	rst $38                                          ; $522d: $ff
	call c, $dffe                                    ; $522e: $dc $fe $df
	db $fd                                           ; $5231: $fd
	reti                                             ; $5232: $d9


	rst $38                                          ; $5233: $ff
	rst SubAFromDE                                          ; $5234: $df
	halt                                             ; $5235: $76
	rst SubAFromDE                                          ; $5236: $df
	or $9e                                           ; $5237: $f6 $9e
	di                                               ; $5239: $f3
	sbc $fb                                          ; $523a: $de $fb
	ret                                              ; $523c: $c9


	rst $38                                          ; $523d: $ff
	ld a, [hl]                                       ; $523e: $7e
	add b                                            ; $523f: $80
	ld a, d                                          ; $5240: $7a
	ld a, [hl]                                       ; $5241: $7e
	ld [hl], a                                       ; $5242: $77
	cp $5e                                           ; $5243: $fe $5e
	ldh a, [$9a]                                     ; $5245: $f0 $9a
	cp d                                             ; $5247: $ba
	push de                                          ; $5248: $d5
	xor d                                            ; $5249: $aa
	ld d, l                                          ; $524a: $55
	db $eb                                           ; $524b: $eb
	reti                                             ; $524c: $d9


	rst $38                                          ; $524d: $ff
	sbc l                                            ; $524e: $9d
	ld e, l                                          ; $524f: $5d
	ld [$ee7b], a                                    ; $5250: $ea $7b $ee
	sbc h                                            ; $5253: $9c
	xor a                                            ; $5254: $af
	ld [hl], l                                       ; $5255: $75
	xor a                                            ; $5256: $af
	ld h, e                                          ; $5257: $63
	ldh [$7d], a                                     ; $5258: $e0 $7d
	inc h                                            ; $525a: $24
	call nz, $7bff                                   ; $525b: $c4 $ff $7b
	add a                                            ; $525e: $87
	ld d, d                                          ; $525f: $52
	ld [hl], b                                       ; $5260: $70
	sub a                                            ; $5261: $97
	ldh a, [$fc]                                     ; $5262: $f0 $fc
	ld d, b                                          ; $5264: $50
	and b                                            ; $5265: $a0
	ld d, e                                          ; $5266: $53
	cp h                                             ; $5267: $bc
	add sp, -$30                                     ; $5268: $e8 $d0
	ld h, d                                          ; $526a: $62
	ret nz                                           ; $526b: $c0

	sbc h                                            ; $526c: $9c
	inc bc                                           ; $526d: $03
	inc e                                            ; $526e: $1c
	ld h, b                                          ; $526f: $60
	ld a, c                                          ; $5270: $79
	pop hl                                           ; $5271: $e1
	ld h, e                                          ; $5272: $63
	jr nc, jr_041_52ef                               ; $5273: $30 $7a

	jp nz, $ed7b                                     ; $5275: $c2 $7b $ed

	ld a, a                                          ; $5278: $7f
	inc c                                            ; $5279: $0c
	reti                                             ; $527a: $d9


	rst $38                                          ; $527b: $ff
	sub a                                            ; $527c: $97
	dec bc                                           ; $527d: $0b
	rrca                                             ; $527e: $0f
	ld a, [de]                                       ; $527f: $1a
	push hl                                          ; $5280: $e5
	ld [bc], a                                       ; $5281: $02
	ld bc, $0d03                                     ; $5282: $01 $03 $0d
	reti                                             ; $5285: $d9


	rst $38                                          ; $5286: $ff
	sbc h                                            ; $5287: $9c
	rst AddAOntoHL                                          ; $5288: $ef
	ld e, a                                          ; $5289: $5f
	rst AddAOntoHL                                          ; $528a: $ef
	ld a, d                                          ; $528b: $7a
	ld h, e                                          ; $528c: $63
	sbc l                                            ; $528d: $9d
	xor a                                            ; $528e: $af
	ld d, a                                          ; $528f: $57
	reti                                             ; $5290: $d9


	rst $38                                          ; $5291: $ff
	ld a, [hl]                                       ; $5292: $7e
	call nz, $f59d                                   ; $5293: $c4 $9d $f5
	ld [$8e74], a                                    ; $5296: $ea $74 $8e
	ld e, a                                          ; $5299: $5f
	or b                                             ; $529a: $b0
	sbc c                                            ; $529b: $99
	rlca                                             ; $529c: $07
	sbc a                                            ; $529d: $9f
	ld h, c                                          ; $529e: $61
	add e                                            ; $529f: $83
	ld b, d                                          ; $52a0: $42
	and c                                            ; $52a1: $a1
	ld h, e                                          ; $52a2: $63
	sub b                                            ; $52a3: $90
	ld a, a                                          ; $52a4: $7f
	and e                                            ; $52a5: $a3
	sbc e                                            ; $52a6: $9b
	pop af                                           ; $52a7: $f1
	ccf                                              ; $52a8: $3f
	inc a                                            ; $52a9: $3c
	ld [hl], c                                       ; $52aa: $71
	ld h, e                                          ; $52ab: $63
	ldh [$9b], a                                     ; $52ac: $e0 $9b
	ld b, $19                                        ; $52ae: $06 $19
	ld h, c                                          ; $52b0: $61
	add d                                            ; $52b1: $82
	ld a, c                                          ; $52b2: $79
	ld h, c                                          ; $52b3: $61
	sbc [hl]                                         ; $52b4: $9e
	xor d                                            ; $52b5: $aa
	ld h, e                                          ; $52b6: $63
	ld b, b                                          ; $52b7: $40
	ld a, [hl]                                       ; $52b8: $7e
	ld [bc], a                                       ; $52b9: $02
	ld a, b                                          ; $52ba: $78
	ld h, b                                          ; $52bb: $60
	ld a, a                                          ; $52bc: $7f
	cp $23                                           ; $52bd: $fe $23
	ld b, b                                          ; $52bf: $40
	sbc e                                            ; $52c0: $9b
	ld sp, hl                                        ; $52c1: $f9
	ei                                               ; $52c2: $fb
	ei                                               ; $52c3: $fb
	di                                               ; $52c4: $f3
	sbc $f7                                          ; $52c5: $de $f7
	reti                                             ; $52c7: $d9


	rst $38                                          ; $52c8: $ff
	sbc $f9                                          ; $52c9: $de $f9
	db $dd                                           ; $52cb: $dd
	db $fd                                           ; $52cc: $fd
	ld h, h                                          ; $52cd: $64
	or c                                             ; $52ce: $b1
	sbc [hl]                                         ; $52cf: $9e
	rst $38                                          ; $52d0: $ff
	ld b, a                                          ; $52d1: $47
	nop                                              ; $52d2: $00
	db $dd                                           ; $52d3: $dd
	ld d, l                                          ; $52d4: $55
	sbc h                                            ; $52d5: $9c
	ld [hl], a                                       ; $52d6: $77
	ld d, l                                          ; $52d7: $55
	ld d, h                                          ; $52d8: $54
	sbc $44                                          ; $52d9: $de $44
	ld c, a                                          ; $52db: $4f
	or $9e                                           ; $52dc: $f6 $9e
	ld d, a                                          ; $52de: $57
	ld l, a                                          ; $52df: $6f
	or $9e                                           ; $52e0: $f6 $9e
	ld b, l                                          ; $52e2: $45
	ld [hl], a                                       ; $52e3: $77
	db $eb                                           ; $52e4: $eb
	adc [hl]                                         ; $52e5: $8e
	ld [hl], h                                       ; $52e6: $74
	ld b, l                                          ; $52e7: $45
	ld d, a                                          ; $52e8: $57
	ld [hl], h                                       ; $52e9: $74
	ld [hl], e                                       ; $52ea: $73
	ld b, a                                          ; $52eb: $47
	ld d, l                                          ; $52ec: $55
	ld h, [hl]                                       ; $52ed: $66
	ld d, l                                          ; $52ee: $55

jr_041_52ef:
	ld d, a                                          ; $52ef: $57
	ld [hl], e                                       ; $52f0: $73
	dec [hl]                                         ; $52f1: $35
	ld d, a                                          ; $52f2: $57
	ld [hl], a                                       ; $52f3: $77
	scf                                              ; $52f4: $37
	ld [hl], l                                       ; $52f5: $75
	ld d, [hl]                                       ; $52f6: $56
	sbc $66                                          ; $52f7: $de $66
	ld a, e                                          ; $52f9: $7b
	sbc $9d                                          ; $52fa: $de $9d
	ld [hl], l                                       ; $52fc: $75
	dec [hl]                                         ; $52fd: $35
	ld [hl], a                                       ; $52fe: $77
	rst FarCall                                          ; $52ff: $f7
	ld [hl], e                                       ; $5300: $73
	db $f4                                           ; $5301: $f4
	sbc h                                            ; $5302: $9c
	inc sp                                           ; $5303: $33
	ld d, l                                          ; $5304: $55
	ld d, l                                          ; $5305: $55
	call c, $9d66                                    ; $5306: $dc $66 $9d
	ld d, e                                          ; $5309: $53
	dec [hl]                                         ; $530a: $35
	sbc $33                                          ; $530b: $de $33
	rst SubAFromDE                                          ; $530d: $df
	ld d, l                                          ; $530e: $55
	sbc e                                            ; $530f: $9b
	ld d, [hl]                                       ; $5310: $56
	ld h, l                                          ; $5311: $65
	ld d, e                                          ; $5312: $53
	inc sp                                           ; $5313: $33
	ld [hl], a                                       ; $5314: $77
	or $d0                                           ; $5315: $f6 $d0
	inc sp                                           ; $5317: $33
	add a                                            ; $5318: $87
	add hl, bc                                       ; $5319: $09
	cp l                                             ; $531a: $bd
	rst $38                                          ; $531b: $ff
	rst $38                                          ; $531c: $ff
	rst $38                                          ; $531d: $ff
	rst $38                                          ; $531e: $ff
	ld [hl], a                                       ; $531f: $77
	ei                                               ; $5320: $fb
	cp e                                             ; $5321: $bb
	rst $38                                          ; $5322: $ff
	rst $38                                          ; $5323: $ff
	rst $38                                          ; $5324: $ff
	rst $38                                          ; $5325: $ff
	rst $38                                          ; $5326: $ff
	rst $38                                          ; $5327: $ff
	inc bc                                           ; $5328: $03
	ldh a, [$03]                                     ; $5329: $f0 $03
	ldh a, [$03]                                     ; $532b: $f0 $03
	ldh a, [$03]                                     ; $532d: $f0 $03
	ldh a, [$03]                                     ; $532f: $f0 $03
	ldh a, [$03]                                     ; $5331: $f0 $03
	ldh a, [$03]                                     ; $5333: $f0 $03
	ldh a, [$03]                                     ; $5335: $f0 $03
	ldh a, [rTAC]                                    ; $5337: $f0 $07
	ldh a, [$dd]                                     ; $5339: $f0 $dd
	rst $38                                          ; $533b: $ff
	sub [hl]                                         ; $533c: $96
	ld b, b                                          ; $533d: $40
	rst $38                                          ; $533e: $ff
	rrca                                             ; $533f: $0f
	ldh a, [$98]                                     ; $5340: $f0 $98
	ld h, b                                          ; $5342: $60
	sbc b                                            ; $5343: $98
	ld h, b                                          ; $5344: $60
	sbc c                                            ; $5345: $99
	ld a, e                                          ; $5346: $7b
	db $fc                                           ; $5347: $fc
	db $dd                                           ; $5348: $dd
	rst $38                                          ; $5349: $ff
	sub [hl]                                         ; $534a: $96
	db $10                                           ; $534b: $10
	rst $38                                          ; $534c: $ff
	add a                                            ; $534d: $87
	ld a, b                                          ; $534e: $78
	adc $30                                          ; $534f: $ce $30
	adc $30                                          ; $5351: $ce $30
	call z, $fe7b                                    ; $5353: $cc $7b $fe
	db $dd                                           ; $5356: $dd
	rst $38                                          ; $5357: $ff
	sub e                                            ; $5358: $93
	jr @+$01                                         ; $5359: $18 $ff

	jp Jump_041_673c                                 ; $535b: $c3 $3c $67


	jr jr_041_53df                                   ; $535e: $18 $7f

	ld [$08f7], sp                                   ; $5360: $08 $f7 $08
	ld [hl], a                                       ; $5363: $77
	ld [$ffdd], sp                                   ; $5364: $08 $dd $ff
	sub a                                            ; $5367: $97
	inc b                                            ; $5368: $04
	rst $38                                          ; $5369: $ff
	ldh a, [rIF]                                     ; $536a: $f0 $0f
	add hl, de                                       ; $536c: $19
	ld b, $39                                        ; $536d: $06 $39
	ld b, $77                                        ; $536f: $06 $77
	db $fc                                           ; $5371: $fc
	db $dd                                           ; $5372: $dd
	rst $38                                          ; $5373: $ff
	sbc c                                            ; $5374: $99
	ld [bc], a                                       ; $5375: $02
	rst $38                                          ; $5376: $ff
	ld hl, sp+$07                                    ; $5377: $f8 $07
	sbc h                                            ; $5379: $9c
	inc bc                                           ; $537a: $03
	ld l, a                                          ; $537b: $6f
	cp $dd                                           ; $537c: $fe $dd
	rst $38                                          ; $537e: $ff
	ld a, a                                          ; $537f: $7f
	xor d                                            ; $5380: $aa
	sbc d                                            ; $5381: $9a
	ld a, h                                          ; $5382: $7c
	add e                                            ; $5383: $83
	xor $01                                          ; $5384: $ee $01
	rst GetHLinHL                                          ; $5386: $cf
	cp [hl]                                          ; $5387: $be
	rst GetHLinHL                                          ; $5388: $cf
	rst AddAOntoHL                                          ; $5389: $ef
	rst $38                                          ; $538a: $ff
	sbc $ff                                          ; $538b: $de $ff
	sbc c                                            ; $538d: $99
	add b                                            ; $538e: $80
	rst $38                                          ; $538f: $ff
	rra                                              ; $5390: $1f
	ldh [$33], a                                     ; $5391: $e0 $33
	ret nz                                           ; $5393: $c0

	ld l, a                                          ; $5394: $6f
	cp $6f                                           ; $5395: $fe $6f
	ldh [$7f], a                                     ; $5397: $e0 $7f
	sub b                                            ; $5399: $90

Call_041_539a:
jr_041_539a:
	ld a, a                                          ; $539a: $7f
	sub h                                            ; $539b: $94
	ld l, a                                          ; $539c: $6f
	cp $6f                                           ; $539d: $fe $6f
	ldh a, [$7f]                                     ; $539f: $f0 $7f
	sub b                                            ; $53a1: $90
	ld [hl], a                                       ; $53a2: $77
	sub h                                            ; $53a3: $94
	ld h, a                                          ; $53a4: $67
	sub b                                            ; $53a5: $90
	ld a, a                                          ; $53a6: $7f
	ldh a, [$98]                                     ; $53a7: $f0 $98
	rst JumpTable                                          ; $53a9: $c7
	jr c, jr_041_539a                                ; $53aa: $38 $ee

	db $10                                           ; $53ac: $10
	xor $10                                          ; $53ad: $ee $10
	rst AddAOntoHL                                          ; $53af: $ef
	ld a, e                                          ; $53b0: $7b
	db $fc                                           ; $53b1: $fc
	ld l, a                                          ; $53b2: $6f
	ldh a, [$9a]                                     ; $53b3: $f0 $9a
	pop hl                                           ; $53b5: $e1
	ld e, $7b                                        ; $53b6: $1e $7b
	inc c                                            ; $53b8: $0c
	ld [hl], e                                       ; $53b9: $73
	ld a, e                                          ; $53ba: $7b
	cp $9d                                           ; $53bb: $fe $9d
	inc sp                                           ; $53bd: $33
	inc c                                            ; $53be: $0c
	ld l, a                                          ; $53bf: $6f
	ldh a, [$7f]                                     ; $53c0: $f0 $7f
	add b                                            ; $53c2: $80
	ld a, a                                          ; $53c3: $7f
	add [hl]                                         ; $53c4: $86
	sbc [hl]                                         ; $53c5: $9e
	sbc c                                            ; $53c6: $99
	ld a, e                                          ; $53c7: $7b
	add b                                            ; $53c8: $80
	ld a, a                                          ; $53c9: $7f
	db $fc                                           ; $53ca: $fc
	ld l, a                                          ; $53cb: $6f
	ldh a, [$7f]                                     ; $53cc: $f0 $7f
	add b                                            ; $53ce: $80
	sbc l                                            ; $53cf: $9d
	call z, Call_041_6f03                            ; $53d0: $cc $03 $6f
	cp $6f                                           ; $53d3: $fe $6f
	ldh a, [$9c]                                     ; $53d5: $f0 $9c
	ld a, [hl]                                       ; $53d7: $7e
	add c                                            ; $53d8: $81
	rst FarCall                                          ; $53d9: $f7
	cp l                                             ; $53da: $bd
	rst SubAFromBC                                          ; $53db: $e7
	rst FarCall                                          ; $53dc: $f7
	rst SubAFromBC                                          ; $53dd: $e7
	rst $38                                          ; $53de: $ff

jr_041_53df:
	ld [hl], e                                       ; $53df: $73
	ldh a, [$7f]                                     ; $53e0: $f0 $7f
	add b                                            ; $53e2: $80
	sbc l                                            ; $53e3: $9d
	add hl, sp                                       ; $53e4: $39
	ret nz                                           ; $53e5: $c0

	ld l, a                                          ; $53e6: $6f
	cp $dd                                           ; $53e7: $fe $dd
	rst $38                                          ; $53e9: $ff
	sbc [hl]                                         ; $53ea: $9e
	jr nz, jr_041_5460                               ; $53eb: $20 $73

	add b                                            ; $53ed: $80
	sbc [hl]                                         ; $53ee: $9e
	sbc h                                            ; $53ef: $9c
	ld a, e                                          ; $53f0: $7b
	ld [de], a                                       ; $53f1: $12
	ld a, a                                          ; $53f2: $7f
	db $fc                                           ; $53f3: $fc
	ld h, a                                          ; $53f4: $67
	add b                                            ; $53f5: $80
	ld [hl], a                                       ; $53f6: $77
	db $10                                           ; $53f7: $10
	ld [hl], a                                       ; $53f8: $77
	cp $67                                           ; $53f9: $fe $67
	sub b                                            ; $53fb: $90
	ld [hl], a                                       ; $53fc: $77
	sub d                                            ; $53fd: $92
	ld [hl], a                                       ; $53fe: $77
	cp $5f                                           ; $53ff: $fe $5f
	sub b                                            ; $5401: $90
	sbc [hl]                                         ; $5402: $9e
	cp c                                             ; $5403: $b9
	ld d, e                                          ; $5404: $53
	sub b                                            ; $5405: $90
	sbc [hl]                                         ; $5406: $9e
	call c, $906b                                    ; $5407: $dc $6b $90
	ld a, a                                          ; $540a: $7f
	cp h                                             ; $540b: $bc

jr_041_540c:
	ld a, a                                          ; $540c: $7f
	or h                                             ; $540d: $b4
	adc b                                            ; $540e: $88
	ld b, b                                          ; $540f: $40
	db $fd                                           ; $5410: $fd
	jr nz, jr_041_540c                               ; $5411: $20 $f9

	ldh a, [$f9]                                     ; $5413: $f0 $f9
	ldh a, [rIE]                                     ; $5415: $f0 $ff
	db $eb                                           ; $5417: $eb
	rst $38                                          ; $5418: $ff
	ld d, l                                          ; $5419: $55
	rst $38                                          ; $541a: $ff
	adc $30                                          ; $541b: $ce $30
	rst SubAFromHL                                          ; $541d: $d7
	jr c, jr_041_5440                                ; $541e: $38 $20

	db $fd                                           ; $5420: $fd
	db $10                                           ; $5421: $10
	cp $78                                           ; $5422: $fe $78
	db $fc                                           ; $5424: $fc
	db $fc                                           ; $5425: $fc
	sbc $ff                                          ; $5426: $de $ff
	ld a, a                                          ; $5428: $7f
	ldh a, [$7e]                                     ; $5429: $f0 $7e
	adc $94                                          ; $542b: $ce $94
	db $e3                                           ; $542d: $e3
	inc e                                            ; $542e: $1c
	ld [$047f], sp                                   ; $542f: $08 $7f $04
	cp $2a                                           ; $5432: $fe $2a
	ld a, a                                          ; $5434: $7f
	ld a, l                                          ; $5435: $7d
	rst $38                                          ; $5436: $ff
	ei                                               ; $5437: $fb
	ld a, e                                          ; $5438: $7b
	ldh a, [$7f]                                     ; $5439: $f0 $7f
	cp h                                             ; $543b: $bc
	ld a, a                                          ; $543c: $7f
	or h                                             ; $543d: $b4
	sbc b                                            ; $543e: $98
	inc b                                            ; $543f: $04

jr_041_5440:
	ld a, a                                          ; $5440: $7f
	ld [bc], a                                       ; $5441: $02
	ccf                                              ; $5442: $3f
	rrca                                             ; $5443: $0f
	ccf                                              ; $5444: $3f
	rra                                              ; $5445: $1f
	ld [hl], e                                       ; $5446: $73
	ldh [hDisp1_BGP], a                                     ; $5447: $e0 $92
	adc h                                            ; $5449: $8c
	inc bc                                           ; $544a: $03
	ld hl, sp+$07                                    ; $544b: $f8 $07
	ld [bc], a                                       ; $544d: $02
	rst SubAFromDE                                          ; $544e: $df
	ld bc, $039f                                     ; $544f: $01 $9f $03
	rst SubAFromDE                                          ; $5452: $df
	add a                                            ; $5453: $87
	rst $38                                          ; $5454: $ff
	ld a, [$f07b]                                    ; $5455: $fa $7b $f0
	sbc e                                            ; $5458: $9b
	jp $7e00                                         ; $5459: $c3 $00 $7e


	add c                                            ; $545c: $81
	cp a                                             ; $545d: $bf
	rst SubAFromHL                                          ; $545e: $d7
	rst AddAOntoHL                                          ; $545f: $ef

jr_041_5460:
	sbc d                                            ; $5460: $9a
	ld b, d                                          ; $5461: $42
	rst SubAFromBC                                          ; $5462: $e7
	push hl                                          ; $5463: $e5
	rst $38                                          ; $5464: $ff
	rst AddAOntoHL                                          ; $5465: $ef
	ld a, e                                          ; $5466: $7b
	ldh a, [hDisp1_OBP1]                                     ; $5467: $f0 $94
	ld sp, $3fc0                                     ; $5469: $31 $c0 $3f
	ret nz                                           ; $546c: $c0

	add b                                            ; $546d: $80
	pop af                                           ; $546e: $f1
	ld b, b                                          ; $546f: $40
	db $e3                                           ; $5470: $e3
	and b                                            ; $5471: $a0
	pop af                                           ; $5472: $f1
	pop af                                           ; $5473: $f1
	ld [hl], e                                       ; $5474: $73
	ldh [rPCM34], a                                  ; $5475: $e0 $77
	sub b                                            ; $5477: $90
	sbc b                                            ; $5478: $98
	and b                                            ; $5479: $a0
	db $fd                                           ; $547a: $fd
	ld d, b                                          ; $547b: $50
	ld sp, hl                                        ; $547c: $f9
	add sp, -$03                                     ; $547d: $e8 $fd
	db $fc                                           ; $547f: $fc
	ld l, e                                          ; $5480: $6b
	sub b                                            ; $5481: $90
	sub [hl]                                         ; $5482: $96
	sub a                                            ; $5483: $97
	ld a, b                                          ; $5484: $78
	jr nz, @+$01                                     ; $5485: $20 $ff

	db $10                                           ; $5487: $10
	db $fc                                           ; $5488: $fc

jr_041_5489:
	jr c, jr_041_5489                                ; $5489: $38 $fe

	db $fc                                           ; $548b: $fc
	ld [hl], e                                       ; $548c: $73
	ldh [hDisp1_OBP1], a                                     ; $548d: $e0 $94
	inc l                                            ; $548f: $2c
	db $10                                           ; $5490: $10
	rst SubAFromBC                                          ; $5491: $e7
	jr jr_041_549c                                   ; $5492: $18 $08

	ld a, [hl]                                       ; $5494: $7e
	db $10                                           ; $5495: $10
	rst $38                                          ; $5496: $ff
	jr jr_041_5517                                   ; $5497: $18 $7e

	ld a, [hl]                                       ; $5499: $7e
	ld [hl], e                                       ; $549a: $73
	and b                                            ; $549b: $a0

jr_041_549c:
	sbc l                                            ; $549c: $9d
	ld [hl+], a                                      ; $549d: $22
	inc e                                            ; $549e: $1c
	ld a, e                                          ; $549f: $7b
	add b                                            ; $54a0: $80
	sbc e                                            ; $54a1: $9b
	cp a                                             ; $54a2: $bf
	inc d                                            ; $54a3: $14
	ld a, a                                          ; $54a4: $7f
	ld a, [bc]                                       ; $54a5: $0a
	ld a, e                                          ; $54a6: $7b
	sub b                                            ; $54a7: $90
	sbc [hl]                                         ; $54a8: $9e
	cp a                                             ; $54a9: $bf
	ld [hl], e                                       ; $54aa: $73
	add b                                            ; $54ab: $80
	sub d                                            ; $54ac: $92
	db $f4                                           ; $54ad: $f4
	rrca                                             ; $54ae: $0f
	ld [bc], a                                       ; $54af: $02
	ld e, a                                          ; $54b0: $5f
	inc b                                            ; $54b1: $04
	sbc a                                            ; $54b2: $9f
	rrca                                             ; $54b3: $0f
	rra                                              ; $54b4: $1f
	rla                                              ; $54b5: $17
	rst $38                                          ; $54b6: $ff
	xor a                                            ; $54b7: $af
	rst $38                                          ; $54b8: $ff
	ld b, l                                          ; $54b9: $45
	ld a, e                                          ; $54ba: $7b
	add b                                            ; $54bb: $80
	sbc l                                            ; $54bc: $9d
	db $fc                                           ; $54bd: $fc
	inc bc                                           ; $54be: $03
	ld a, e                                          ; $54bf: $7b
	add b                                            ; $54c0: $80
	sbc e                                            ; $54c1: $9b
	rst GetHLinHL                                          ; $54c2: $cf
	inc bc                                           ; $54c3: $03
	rst GetHLinHL                                          ; $54c4: $cf
	rst JumpTable                                          ; $54c5: $c7
	ld [hl], e                                       ; $54c6: $73
	ld h, b                                          ; $54c7: $60
	sbc [hl]                                         ; $54c8: $9e
	rst JumpTable                                          ; $54c9: $c7
	ld a, e                                          ; $54ca: $7b
	add b                                            ; $54cb: $80
	ld a, [hl]                                       ; $54cc: $7e
	ld d, b                                          ; $54cd: $50
	sbc d                                            ; $54ce: $9a
	ld bc, $82e7                                     ; $54cf: $01 $e7 $82
	db $e3                                           ; $54d2: $e3
	jp $8073                                         ; $54d3: $c3 $73 $80


	sbc l                                            ; $54d6: $9d
	ld [hl], c                                       ; $54d7: $71
	add b                                            ; $54d8: $80
	ld a, e                                          ; $54d9: $7b
	add b                                            ; $54da: $80
	sbc c                                            ; $54db: $99
	ei                                               ; $54dc: $fb
	ld b, b                                          ; $54dd: $40
	pop af                                           ; $54de: $f1
	and b                                            ; $54df: $a0
	ei                                               ; $54e0: $fb
	ld sp, hl                                        ; $54e1: $f9
	sbc $ff                                          ; $54e2: $de $ff
	sbc [hl]                                         ; $54e4: $9e
	ld d, a                                          ; $54e5: $57
	ld a, e                                          ; $54e6: $7b
	add b                                            ; $54e7: $80
	sbc b                                            ; $54e8: $98
	ld c, a                                          ; $54e9: $4f
	ldh a, [rAUD4LEN]                                ; $54ea: $f0 $20
	cp $40                                           ; $54ec: $fe $40
	db $fc                                           ; $54ee: $fc
	ldh [$7b], a                                     ; $54ef: $e0 $7b
	jr nz, jr_041_556a                               ; $54f1: $20 $77

	ldh [$7f], a                                     ; $54f3: $e0 $7f
	add b                                            ; $54f5: $80
	ld a, [hl]                                       ; $54f6: $7e
	call nz, $0898                                   ; $54f7: $c4 $98 $08
	cp $00                                           ; $54fa: $fe $00
	rst $38                                          ; $54fc: $ff

jr_041_54fd:
	jr c, jr_041_54fd                                ; $54fd: $38 $fe

	ld a, h                                          ; $54ff: $7c
	ld [hl], e                                       ; $5500: $73
	ret nz                                           ; $5501: $c0

	ld [hl], e                                       ; $5502: $73
	db $10                                           ; $5503: $10
	ld a, l                                          ; $5504: $7d
	sbc $9b                                          ; $5505: $de $9b
	ccf                                              ; $5507: $3f
	ld a, [bc]                                       ; $5508: $0a
	ld a, a                                          ; $5509: $7f
	rra                                              ; $550a: $1f
	ld a, e                                          ; $550b: $7b
	and b                                            ; $550c: $a0
	ld a, a                                          ; $550d: $7f
	ldh a, [$7e]                                     ; $550e: $f0 $7e
	ret z                                            ; $5510: $c8

	ld a, a                                          ; $5511: $7f
	db $10                                           ; $5512: $10
	sbc b                                            ; $5513: $98
	ld [bc], a                                       ; $5514: $02
	cp a                                             ; $5515: $bf
	inc b                                            ; $5516: $04

jr_041_5517:
	rra                                              ; $5517: $1f
	ld c, $9f                                        ; $5518: $0e $9f
	rra                                              ; $551a: $1f
	ld [hl], e                                       ; $551b: $73
	ldh [rPCM34], a                                  ; $551c: $e0 $77
	sub b                                            ; $551e: $90
	adc e                                            ; $551f: $8b
	ld bc, $02df                                     ; $5520: $01 $df $02
	rst GetHLinHL                                          ; $5523: $cf
	rlca                                             ; $5524: $07
	rst JumpTable                                          ; $5525: $c7
	ld c, a                                          ; $5526: $4f
	rst $38                                          ; $5527: $ff
	add a                                            ; $5528: $87
	rst $38                                          ; $5529: $ff
	ld d, [hl]                                       ; $552a: $56
	rst $38                                          ; $552b: $ff
	db $f4                                           ; $552c: $f4
	ei                                               ; $552d: $fb
	cp a                                             ; $552e: $bf
	ld [hl], b                                       ; $552f: $70
	ld [hl], l                                       ; $5530: $75
	cp b                                             ; $5531: $b8
	ld a, [$7730]                                    ; $5532: $fa $30 $77
	db $fc                                           ; $5535: $fc
	sbc h                                            ; $5536: $9c
	db $fd                                           ; $5537: $fd
	jr nc, @-$16                                     ; $5538: $30 $e8

	ld a, d                                          ; $553a: $7a
	add b                                            ; $553b: $80
	sub l                                            ; $553c: $95
	ld l, l                                          ; $553d: $6d
	di                                               ; $553e: $f3
	ld [hl], a                                       ; $553f: $77
	db $e3                                           ; $5540: $e3
	rst AddAOntoHL                                          ; $5541: $ef
	ld [hl], e                                       ; $5542: $73
	ld h, a                                          ; $5543: $67
	di                                               ; $5544: $f3
	rst AddAOntoHL                                          ; $5545: $ef
	ld [hl], e                                       ; $5546: $73
	ld [hl], a                                       ; $5547: $77
	ld hl, sp+$7e                                    ; $5548: $f8 $7e
	xor d                                            ; $554a: $aa
	sub d                                            ; $554b: $92
	scf                                              ; $554c: $37
	ld hl, sp+$76                                    ; $554d: $f8 $76
	cp b                                             ; $554f: $b8
	or l                                             ; $5550: $b5
	ld a, b                                          ; $5551: $78
	cp $30                                           ; $5552: $fe $30
	xor l                                            ; $5554: $ad
	ld [hl], b                                       ; $5555: $70
	add sp, $30                                      ; $5556: $e8 $30
	cp l                                             ; $5558: $bd
	ld a, d                                          ; $5559: $7a
	ld d, b                                          ; $555a: $50
	sbc e                                            ; $555b: $9b
	daa                                              ; $555c: $27
	ei                                               ; $555d: $fb

jr_041_555e:
	xor e                                            ; $555e: $ab
	ld [hl], a                                       ; $555f: $77
	ld [hl], a                                       ; $5560: $77
	ldh [c], a                                       ; $5561: $e2
	ld [hl], a                                       ; $5562: $77

jr_041_5563:
	db $fc                                           ; $5563: $fc
	adc h                                            ; $5564: $8c
	ld l, a                                          ; $5565: $6f
	di                                               ; $5566: $f3
	ldh a, [rIE]                                     ; $5567: $f0 $ff
	dec b                                            ; $5569: $05

jr_041_556a:
	ld a, [$b857]                                    ; $556a: $fa $57 $b8
	push af                                          ; $556d: $f5
	jr c, jr_041_55ea                                ; $556e: $38 $7a

	or b                                             ; $5570: $b0
	db $fd                                           ; $5571: $fd
	jr nc, jr_041_555e                               ; $5572: $30 $ea

	jr nc, jr_041_5563                               ; $5574: $30 $ed

	jr nc, @-$03                                     ; $5576: $30 $fb

	ld a, e                                          ; $5578: $7b
	ret nz                                           ; $5579: $c0

	ld [hl], a                                       ; $557a: $77
	add $9d                                          ; $557b: $c6 $9d
	rst $38                                          ; $557d: $ff
	ld h, e                                          ; $557e: $63
	ld l, a                                          ; $557f: $6f
	db $fc                                           ; $5580: $fc
	ld a, a                                          ; $5581: $7f
	ldh [$8c], a                                     ; $5582: $e0 $8c
	ld b, $f9                                        ; $5584: $06 $f9
	ld b, a                                          ; $5586: $47
	cp b                                             ; $5587: $b8
	cp e                                             ; $5588: $bb
	ld [hl], b                                       ; $5589: $70
	ld a, l                                          ; $558a: $7d
	or b                                             ; $558b: $b0
	ld hl, sp+$30                                    ; $558c: $f8 $30
	ld l, l                                          ; $558e: $6d
	or b                                             ; $558f: $b0
	add sp, $30                                      ; $5590: $e8 $30
	ld h, e                                          ; $5592: $63
	rst $38                                          ; $5593: $ff
	dec hl                                           ; $5594: $2b
	rst FarCall                                          ; $5595: $f7
	dec l                                            ; $5596: $2d
	ld a, e                                          ; $5597: $7b
	sbc [hl]                                         ; $5598: $9e
	ld a, a                                          ; $5599: $7f
	add $9d                                          ; $559a: $c6 $9d
	rst FarCall                                          ; $559c: $f7
	ld h, e                                          ; $559d: $63
	ld [hl], a                                       ; $559e: $77
	db $fc                                           ; $559f: $fc
	ld a, a                                          ; $55a0: $7f
	add b                                            ; $55a1: $80
	ld a, [hl]                                       ; $55a2: $7e
	or b                                             ; $55a3: $b0
	sbc d                                            ; $55a4: $9a
	ld d, l                                          ; $55a5: $55
	cp b                                             ; $55a6: $b8
	ldh a, [c]                                       ; $55a7: $f2
	jr c, @+$7f                                      ; $55a8: $38 $7d

	ld a, e                                          ; $55aa: $7b
	db $e4                                           ; $55ab: $e4
	ld a, a                                          ; $55ac: $7f
	jp nz, Jump_041_6895                             ; $55ad: $c2 $95 $68

	jr nc, jr_041_5630                               ; $55b0: $30 $7e

	rst $38                                          ; $55b2: $ff
	ld a, e                                          ; $55b3: $7b
	db $fc                                           ; $55b4: $fc
	ld a, e                                          ; $55b5: $7b
	db $fc                                           ; $55b6: $fc
	ld a, [$777c]                                    ; $55b7: $fa $7c $77
	db $fc                                           ; $55ba: $fc
	adc [hl]                                         ; $55bb: $8e
	ld l, e                                          ; $55bc: $6b
	db $fc                                           ; $55bd: $fc
	ld [$3f7c], a                                    ; $55be: $ea $7c $3f
	rst $38                                          ; $55c1: $ff
	rst SubAFromDE                                          ; $55c2: $df
	ccf                                              ; $55c3: $3f
	ld e, a                                          ; $55c4: $5f
	ccf                                              ; $55c5: $3f
	rst $38                                          ; $55c6: $ff
	rra                                              ; $55c7: $1f
	ld d, a                                          ; $55c8: $57
	ccf                                              ; $55c9: $3f
	or a                                             ; $55ca: $b7
	rra                                              ; $55cb: $1f
	ld b, a                                          ; $55cc: $47
	ld a, e                                          ; $55cd: $7b
	db $fc                                           ; $55ce: $fc
	add b                                            ; $55cf: $80
	sub [hl]                                         ; $55d0: $96
	rst AddAOntoHL                                          ; $55d1: $ef
	ld a, d                                          ; $55d2: $7a
	add a                                            ; $55d3: $87
	ld e, e                                          ; $55d4: $5b
	add [hl]                                         ; $55d5: $86
	ld l, d                                          ; $55d6: $6a
	add a                                            ; $55d7: $87
	ld e, c                                          ; $55d8: $59
	add [hl]                                         ; $55d9: $86
	adc b                                            ; $55da: $88
	rlca                                             ; $55db: $07
	ld e, a                                          ; $55dc: $5f
	add d                                            ; $55dd: $82
	adc d                                            ; $55de: $8a
	rlca                                             ; $55df: $07
	db $e3                                           ; $55e0: $e3
	rst $38                                          ; $55e1: $ff
	cp $63                                           ; $55e2: $fe $63
	ld l, d                                          ; $55e4: $6a
	rst FarCall                                          ; $55e5: $f7
	rst $38                                          ; $55e6: $ff
	ld h, e                                          ; $55e7: $63
	ld a, [bc]                                       ; $55e8: $0a
	rst FarCall                                          ; $55e9: $f7

jr_041_55ea:
	sbc [hl]                                         ; $55ea: $9e
	ld h, e                                          ; $55eb: $63
	xor d                                            ; $55ec: $aa
	ld [hl], a                                       ; $55ed: $77
	xor a                                            ; $55ee: $af
	sub c                                            ; $55ef: $91
	ld [hl], e                                       ; $55f0: $73
	ld c, a                                          ; $55f1: $4f
	cp a                                             ; $55f2: $bf
	push af                                          ; $55f3: $f5
	ld c, $56                                        ; $55f4: $0e $56
	adc a                                            ; $55f6: $8f
	xor a                                            ; $55f7: $af
	ld b, $5b                                        ; $55f8: $06 $5b
	add [hl]                                         ; $55fa: $86
	adc d                                            ; $55fb: $8a
	rlca                                             ; $55fc: $07
	ld d, e                                          ; $55fd: $53
	ld a, e                                          ; $55fe: $7b
	db $fc                                           ; $55ff: $fc
	ld a, a                                          ; $5600: $7f
	ldh [hDisp1_OBP1], a                                     ; $5601: $e0 $94
	ld e, a                                          ; $5603: $5f
	db $e3                                           ; $5604: $e3
	db $eb                                           ; $5605: $eb
	ld [hl], a                                       ; $5606: $77
	rst $38                                          ; $5607: $ff
	ld h, e                                          ; $5608: $63
	xor e                                            ; $5609: $ab
	ld [hl], a                                       ; $560a: $77
	or a                                             ; $560b: $b7
	ld h, e                                          ; $560c: $63
	dec hl                                           ; $560d: $2b
	ld a, e                                          ; $560e: $7b
	db $fc                                           ; $560f: $fc
	sub h                                            ; $5610: $94
	daa                                              ; $5611: $27
	rst SubAFromDE                                          ; $5612: $df
	ld a, a                                          ; $5613: $7f
	add [hl]                                         ; $5614: $86
	ld d, [hl]                                       ; $5615: $56
	adc a                                            ; $5616: $8f
	ld l, a                                          ; $5617: $6f
	add [hl]                                         ; $5618: $86
	ld e, e                                          ; $5619: $5b
	add [hl]                                         ; $561a: $86
	ld c, e                                          ; $561b: $4b
	ld [hl], e                                       ; $561c: $73
	db $fc                                           ; $561d: $fc
	ld a, a                                          ; $561e: $7f
	push bc                                          ; $561f: $c5
	sbc l                                            ; $5620: $9d
	ld [hl], a                                       ; $5621: $77
	db $eb                                           ; $5622: $eb
	ld [hl], a                                       ; $5623: $77
	ldh [$6f], a                                     ; $5624: $e0 $6f
	call c, $3d95                                    ; $5626: $dc $95 $3d
	ld h, e                                          ; $5629: $63

jr_041_562a:
	ld d, a                                          ; $562a: $57
	xor a                                            ; $562b: $af
	ld a, b                                          ; $562c: $78
	add a                                            ; $562d: $87
	ld d, d                                          ; $562e: $52
	adc a                                            ; $562f: $8f

jr_041_5630:
	ld [$7707], a                                    ; $5630: $ea $07 $77
	ret nz                                           ; $5633: $c0

	sbc h                                            ; $5634: $9c
	ld b, a                                          ; $5635: $47
	add d                                            ; $5636: $82
	jp z, $c07b                                      ; $5637: $ca $7b $c0

	adc d                                            ; $563a: $8a
	dec bc                                           ; $563b: $0b
	rst FarCall                                          ; $563c: $f7
	inc bc                                           ; $563d: $03
	rst $38                                          ; $563e: $ff
	xor e                                            ; $563f: $ab
	ld [hl], a                                       ; $5640: $77
	db $eb                                           ; $5641: $eb
	scf                                              ; $5642: $37
	xor e                                            ; $5643: $ab
	ld [hl], a                                       ; $5644: $77
	ld l, e                                          ; $5645: $6b
	scf                                              ; $5646: $37
	and e                                            ; $5647: $a3
	ld a, a                                          ; $5648: $7f
	ld d, a                                          ; $5649: $57

jr_041_564a:
	xor a                                            ; $564a: $af
	ld hl, sp+$07                                    ; $564b: $f8 $07
	ld d, d                                          ; $564d: $52
	adc a                                            ; $564e: $8f
	rst AddAOntoHL                                          ; $564f: $ef
	ld a, e                                          ; $5650: $7b
	and b                                            ; $5651: $a0
	sbc [hl]                                         ; $5652: $9e
	adc e                                            ; $5653: $8b
	ld [hl], e                                       ; $5654: $73
	db $fc                                           ; $5655: $fc
	ld a, a                                          ; $5656: $7f
	ld c, h                                          ; $5657: $4c
	ld a, a                                          ; $5658: $7f
	ld c, b                                          ; $5659: $48
	halt                                             ; $565a: $76
	and $9d                                          ; $565b: $e6 $9d
	or c                                             ; $565d: $b1
	ld h, b                                          ; $565e: $60
	ld l, a                                          ; $565f: $6f
	db $fc                                           ; $5660: $fc
	adc h                                            ; $5661: $8c
	halt                                             ; $5662: $76
	db $e3                                           ; $5663: $e3
	xor $73                                          ; $5664: $ee $73
	ld h, [hl]                                       ; $5666: $66
	di                                               ; $5667: $f3
	ld [$7677], a                                    ; $5668: $ea $77 $76
	db $e3                                           ; $566b: $e3
	ld [$6277], a                                    ; $566c: $ea $77 $62

Jump_041_566f:
	rst FarCall                                          ; $566f: $f7
	ld [$e877], a                                    ; $5670: $ea $77 $e8
	jr nc, jr_041_562a                               ; $5673: $30 $b5

	ld a, e                                          ; $5675: $7b

jr_041_5676:
	ld [$719d], a                                    ; $5676: $ea $9d $71
	jr nz, jr_041_56f2                               ; $5679: $20 $77

	db $fc                                           ; $567b: $fc
	sub a                                            ; $567c: $97
	ret c                                            ; $567d: $d8

	jr nz, jr_041_56d1                               ; $567e: $20 $51

	jr nz, @+$01                                     ; $5680: $20 $ff

	ld [hl], e                                       ; $5682: $73
	ld a, a                                          ; $5683: $7f
	di                                               ; $5684: $f3
	ld l, a                                          ; $5685: $6f
	db $fc                                           ; $5686: $fc
	sub [hl]                                         ; $5687: $96
	ld a, e                                          ; $5688: $7b
	rst FarCall                                          ; $5689: $f7
	rst $38                                          ; $568a: $ff
	ld [hl], e                                       ; $568b: $73
	ld a, d                                          ; $568c: $7a
	rst FarCall                                          ; $568d: $f7
	ld l, b                                          ; $568e: $68
	jr nc, jr_041_5676                               ; $568f: $30 $e5

	ld a, e                                          ; $5691: $7b
	cp [hl]                                          ; $5692: $be
	sub c                                            ; $5693: $91
	push af                                          ; $5694: $f5
	jr nz, jr_041_56ff                               ; $5695: $20 $68

	jr nc, jr_041_564a                               ; $5697: $30 $b1

	jr nz, jr_041_56e3                               ; $5699: $20 $48

	jr nc, jr_041_56ae                               ; $569b: $30 $11

	jr nz, @-$03                                     ; $569d: $20 $fb

	ld h, a                                          ; $569f: $67
	ld [hl], a                                       ; $56a0: $77
	db $e3                                           ; $56a1: $e3
	ld [hl], a                                       ; $56a2: $77
	db $fc                                           ; $56a3: $fc

jr_041_56a4:
	sub [hl]                                         ; $56a4: $96
	db $eb                                           ; $56a5: $eb
	ld h, a                                          ; $56a6: $67
	ld a, e                                          ; $56a7: $7b
	rst SubAFromBC                                          ; $56a8: $e7
	rst $38                                          ; $56a9: $ff
	ld h, a                                          ; $56aa: $67
	ld a, a                                          ; $56ab: $7f
	rst SubAFromBC                                          ; $56ac: $e7
	push af                                          ; $56ad: $f5

jr_041_56ae:
	ld a, e                                          ; $56ae: $7b
	add $9e                                          ; $56af: $c6 $9e
	pop af                                           ; $56b1: $f1
	ld [hl], e                                       ; $56b2: $73
	db $fc                                           ; $56b3: $fc
	sbc c                                            ; $56b4: $99
	xor b                                            ; $56b5: $a8
	jr nc, jr_041_5709                               ; $56b6: $30 $51

	jr nz, jr_041_564a                               ; $56b8: $20 $90

	jr nz, jr_041_5732                               ; $56ba: $20 $76

	call z, Call_041_7f9d                            ; $56bc: $cc $9d $7f
	db $e3                                           ; $56bf: $e3
	ld l, a                                          ; $56c0: $6f
	db $fc                                           ; $56c1: $fc
	ld a, a                                          ; $56c2: $7f
	sbc $9d                                          ; $56c3: $de $9d
	di                                               ; $56c5: $f3
	ld h, a                                          ; $56c6: $67
	halt                                             ; $56c7: $76
	call z, $017d                                    ; $56c8: $cc $7d $01
	ld a, a                                          ; $56cb: $7f
	db $fc                                           ; $56cc: $fc
	sub a                                            ; $56cd: $97
	push de                                          ; $56ce: $d5
	jr nz, jr_041_5729                               ; $56cf: $20 $58

jr_041_56d1:
	jr nz, jr_041_56a4                               ; $56d1: $20 $d1

	jr nz, jr_041_574d                               ; $56d3: $20 $78

	nop                                              ; $56d5: $00
	halt                                             ; $56d6: $76
	call z, $fc7f                                    ; $56d7: $cc $7f $fc
	sbc e                                            ; $56da: $9b
	xor $7c                                          ; $56db: $ee $7c
	ld l, l                                          ; $56dd: $6d
	cp $77                                           ; $56de: $fe $77
	db $fc                                           ; $56e0: $fc
	sub [hl]                                         ; $56e1: $96
	db $ed                                           ; $56e2: $ed

jr_041_56e3:
	ld a, [hl]                                       ; $56e3: $7e
	ld b, a                                          ; $56e4: $47
	ccf                                              ; $56e5: $3f
	and a                                            ; $56e6: $a7
	rra                                              ; $56e7: $1f
	ld l, a                                          ; $56e8: $6f
	rla                                              ; $56e9: $17
	daa                                              ; $56ea: $27
	ld a, e                                          ; $56eb: $7b
	db $fc                                           ; $56ec: $fc
	sub b                                            ; $56ed: $90
	scf                                              ; $56ee: $37
	rrca                                             ; $56ef: $0f
	cpl                                              ; $56f0: $2f
	rla                                              ; $56f1: $17

jr_041_56f2:
	ccf                                              ; $56f2: $3f
	rlca                                             ; $56f3: $07
	ld d, l                                          ; $56f4: $55
	add d                                            ; $56f5: $82
	adc h                                            ; $56f6: $8c
	inc bc                                           ; $56f7: $03
	ld d, l                                          ; $56f8: $55
	add d                                            ; $56f9: $82
	adc l                                            ; $56fa: $8d
	ld [bc], a                                       ; $56fb: $02
	ld b, l                                          ; $56fc: $45
	ld [hl], e                                       ; $56fd: $73
	db $fc                                           ; $56fe: $fc

jr_041_56ff:
	sbc h                                            ; $56ff: $9c
	adc e                                            ; $5700: $8b
	nop                                              ; $5701: $00
	ld l, e                                          ; $5702: $6b
	ld a, e                                          ; $5703: $7b
	jr z, jr_041_56a4                                ; $5704: $28 $9e

	ld l, d                                          ; $5706: $6a
	ld a, e                                          ; $5707: $7b
	db $fc                                           ; $5708: $fc

jr_041_5709:
	sbc l                                            ; $5709: $9d
	inc hl                                           ; $570a: $23
	ld a, a                                          ; $570b: $7f
	ld l, a                                          ; $570c: $6f
	db $fc                                           ; $570d: $fc
	sub [hl]                                         ; $570e: $96
	ld d, a                                          ; $570f: $57
	add d                                            ; $5710: $82
	xor [hl]                                         ; $5711: $ae
	inc bc                                           ; $5712: $03
	ld d, a                                          ; $5713: $57
	add d                                            ; $5714: $82
	adc [hl]                                         ; $5715: $8e
	inc bc                                           ; $5716: $03
	ld b, a                                          ; $5717: $47
	ld l, e                                          ; $5718: $6b
	ldh [$98], a                                     ; $5719: $e0 $98
	cpl                                              ; $571b: $2f
	ld [hl], e                                       ; $571c: $73
	or a                                             ; $571d: $b7
	ld h, e                                          ; $571e: $63
	cpl                                              ; $571f: $2f
	ld [hl], e                                       ; $5720: $73
	scf                                              ; $5721: $37
	ld a, e                                          ; $5722: $7b
	db $fc                                           ; $5723: $fc
	ld a, a                                          ; $5724: $7f
	cp $92                                           ; $5725: $fe $92
	dec hl                                           ; $5727: $2b
	ld [hl], e                                       ; $5728: $73

jr_041_5729:
	db $fd                                           ; $5729: $fd
	inc sp                                           ; $572a: $33
	ld d, [hl]                                       ; $572b: $56
	add e                                            ; $572c: $83
	ld c, a                                          ; $572d: $4f
	add d                                            ; $572e: $82
	rlca                                             ; $572f: $07
	add d                                            ; $5730: $82
	ld c, l                                          ; $5731: $4d

jr_041_5732:
	add d                                            ; $5732: $82

Jump_041_5733:
	ld b, l                                          ; $5733: $45
	ld a, e                                          ; $5734: $7b
	db $fc                                           ; $5735: $fc
	sbc b                                            ; $5736: $98
	ld b, [hl]                                       ; $5737: $46
	add b                                            ; $5738: $80
	ld b, a                                          ; $5739: $47
	add b                                            ; $573a: $80
	xor e                                            ; $573b: $ab
	ld [hl], a                                       ; $573c: $77
	ccf                                              ; $573d: $3f
	ld [hl], d                                       ; $573e: $72
	ret z                                            ; $573f: $c8

	ld [hl], a                                       ; $5740: $77
	ldh [$7e], a                                     ; $5741: $e0 $7e
	add d                                            ; $5743: $82
	sbc [hl]                                         ; $5744: $9e
	dec sp                                           ; $5745: $3b
	ld a, e                                          ; $5746: $7b
	ret nz                                           ; $5747: $c0

	sbc h                                            ; $5748: $9c
	ld c, [hl]                                       ; $5749: $4e
	add e                                            ; $574a: $83
	ld b, a                                          ; $574b: $47
	ld [hl], e                                       ; $574c: $73

jr_041_574d:
	ldh [hDisp1_SCY], a                                     ; $574d: $e0 $90
	ld c, a                                          ; $574f: $4f
	add b                                            ; $5750: $80
	push bc                                          ; $5751: $c5
	ld [bc], a                                       ; $5752: $02
	ld b, e                                          ; $5753: $43
	add b                                            ; $5754: $80
	ld l, e                                          ; $5755: $6b
	scf                                              ; $5756: $37
	inc hl                                           ; $5757: $23
	ld a, a                                          ; $5758: $7f
	dec hl                                           ; $5759: $2b
	ld [hl], a                                       ; $575a: $77
	or e                                             ; $575b: $b3
	ld a, a                                          ; $575c: $7f
	dec sp                                           ; $575d: $3b
	ld a, e                                          ; $575e: $7b
	db $fc                                           ; $575f: $fc
	sbc e                                            ; $5760: $9b
	cp e                                             ; $5761: $bb
	ld [hl], a                                       ; $5762: $77
	or a                                             ; $5763: $b7
	ld a, e                                          ; $5764: $7b
	ld [hl], a                                       ; $5765: $77
	and h                                            ; $5766: $a4
	ld e, a                                          ; $5767: $5f
	and b                                            ; $5768: $a0
	adc h                                            ; $5769: $8c
	adc a                                            ; $576a: $8f
	nop                                              ; $576b: $00
	sub c                                            ; $576c: $91
	ld h, b                                          ; $576d: $60
	sbc b                                            ; $576e: $98
	ld h, b                                          ; $576f: $60
	sub c                                            ; $5770: $91
	ld h, b                                          ; $5771: $60

jr_041_5772:
	sub b                                            ; $5772: $90
	ld h, b                                          ; $5773: $60
	ld sp, $90c0                                     ; $5774: $31 $c0 $90
	ld h, b                                          ; $5777: $60
	ld hl, $10c0                                     ; $5778: $21 $c0 $10
	ldh [rOCPS], a                                   ; $577b: $e0 $6a
	ld a, d                                          ; $577d: $7a
	call z, $fc7f                                    ; $577e: $cc $7f $fc
	sbc [hl]                                         ; $5781: $9e
	xor $7b                                          ; $5782: $ee $7b
	db $fc                                           ; $5784: $fc
	ld [hl], a                                       ; $5785: $77
	ld hl, sp+$7f                                    ; $5786: $f8 $7f
	db $fc                                           ; $5788: $fc
	sbc [hl]                                         ; $5789: $9e
	ldh a, [$bf]                                     ; $578a: $f0 $bf
	ld h, c                                          ; $578c: $61
	ret nc                                           ; $578d: $d0

	sbc l                                            ; $578e: $9d
	jr nz, jr_041_5772                               ; $578f: $20 $e1

	cp a                                             ; $5791: $bf
	ldh a, [$61]                                     ; $5792: $f0 $61
	sub b                                            ; $5794: $90
	add b                                            ; $5795: $80
	or b                                             ; $5796: $b0
	ld b, b                                          ; $5797: $40
	ld h, c                                          ; $5798: $61
	add b                                            ; $5799: $80
	ld a, [$7277]                                    ; $579a: $fa $77 $72
	rst $38                                          ; $579d: $ff
	rst $38                                          ; $579e: $ff
	halt                                             ; $579f: $76
	halt                                             ; $57a0: $76
	rst $38                                          ; $57a1: $ff
	rst FarCall                                          ; $57a2: $f7
	ld a, [hl]                                       ; $57a3: $7e
	ld l, a                                          ; $57a4: $6f
	db $fc                                           ; $57a5: $fc
	ld a, a                                          ; $57a6: $7f
	ld a, [bc]                                       ; $57a7: $0a
	sbc [hl]                                         ; $57a8: $9e
	sub c                                            ; $57a9: $91
	ld a, e                                          ; $57aa: $7b

jr_041_57ab:
	ld b, $9e                                        ; $57ab: $06 $9e
	pop af                                           ; $57ad: $f1
	cp [hl]                                          ; $57ae: $be
	ldh [$f1], a                                     ; $57af: $e0 $f1
	ld h, b                                          ; $57b1: $60
	ld a, h                                          ; $57b2: $7c
	ld d, a                                          ; $57b3: $57
	ld a, h                                          ; $57b4: $7c
	rst FarCall                                          ; $57b5: $f7
	sbc h                                            ; $57b6: $9c
	ld h, a                                          ; $57b7: $67
	ld l, a                                          ; $57b8: $6f
	rst FarCall                                          ; $57b9: $f7
	ld [hl], a                                       ; $57ba: $77
	db $fc                                           ; $57bb: $fc
	sbc e                                            ; $57bc: $9b
	rst AddAOntoHL                                          ; $57bd: $ef
	ld [hl], a                                       ; $57be: $77
	ld h, a                                          ; $57bf: $67
	rst $38                                          ; $57c0: $ff
	ld [hl], a                                       ; $57c1: $77
	db $fc                                           ; $57c2: $fc
	ld a, [hl]                                       ; $57c3: $7e
	call z, $b096                                    ; $57c4: $cc $96 $b0
	nop                                              ; $57c7: $00
	pop de                                           ; $57c8: $d1
	jr nz, jr_041_57ab                               ; $57c9: $20 $e0

	nop                                              ; $57cb: $00
	ld d, c                                          ; $57cc: $51
	and b                                            ; $57cd: $a0
	and b                                            ; $57ce: $a0
	ld a, e                                          ; $57cf: $7b
	jp nz, $209d                                     ; $57d0: $c2 $9d $20

	ret nz                                           ; $57d3: $c0

	halt                                             ; $57d4: $76
	call z, Call_041_7a99                            ; $57d5: $cc $99 $7a
	rst SubAFromBC                                          ; $57d8: $e7
	ldh a, [c]                                       ; $57d9: $f2
	ld h, a                                          ; $57da: $67
	ld l, d                                          ; $57db: $6a
	rst FarCall                                          ; $57dc: $f7
	ld l, a                                          ; $57dd: $6f
	db $fc                                           ; $57de: $fc
	ld a, a                                          ; $57df: $7f
	db $e4                                           ; $57e0: $e4
	sub l                                            ; $57e1: $95
	cp b                                             ; $57e2: $b8
	ld b, b                                          ; $57e3: $40
	ld d, c                                          ; $57e4: $51
	and b                                            ; $57e5: $a0
	ldh a, [rP1]                                     ; $57e6: $f0 $00
	ld hl, $70c0                                     ; $57e8: $21 $c0 $70
	add b                                            ; $57eb: $80
	ld [hl], a                                       ; $57ec: $77
	db $fc                                           ; $57ed: $fc
	ld a, [hl]                                       ; $57ee: $7e
	call z, $e59c                                    ; $57ef: $cc $9c $e5
	ld a, [hl]                                       ; $57f2: $7e
	ld h, l                                          ; $57f3: $65
	ld a, e                                          ; $57f4: $7b
	db $fc                                           ; $57f5: $fc
	sbc h                                            ; $57f6: $9c
	ld [hl], l                                       ; $57f7: $75
	cp $e7                                           ; $57f8: $fe $e7
	ld a, e                                          ; $57fa: $7b
	and d                                            ; $57fb: $a2
	ld a, a                                          ; $57fc: $7f
	sub [hl]                                         ; $57fd: $96
	sub h                                            ; $57fe: $94
	dec de                                           ; $57ff: $1b
	rlca                                             ; $5800: $07
	dec sp                                           ; $5801: $3b
	rlca                                             ; $5802: $07
	dec de                                           ; $5803: $1b
	rlca                                             ; $5804: $07
	cpl                                              ; $5805: $2f
	rlca                                             ; $5806: $07
	sbc e                                            ; $5807: $9b
	rlca                                             ; $5808: $07
	dec hl                                           ; $5809: $2b
	ld [hl], e                                       ; $580a: $73
	db $fc                                           ; $580b: $fc
	ld a, a                                          ; $580c: $7f
	ld c, $7e                                        ; $580d: $0e $7e
	db $ec                                           ; $580f: $ec
	ld l, a                                          ; $5810: $6f
	db $fc                                           ; $5811: $fc
	sbc h                                            ; $5812: $9c
	add e                                            ; $5813: $83
	nop                                              ; $5814: $00
	ld b, l                                          ; $5815: $45
	ld a, e                                          ; $5816: $7b
	db $fc                                           ; $5817: $fc
	ld a, l                                          ; $5818: $7d
	xor $7a                                          ; $5819: $ee $7a
	ret z                                            ; $581b: $c8

	ld a, c                                          ; $581c: $79
	ldh [$97], a                                     ; $581d: $e0 $97
	ld h, e                                          ; $581f: $63
	cp a                                             ; $5820: $bf
	adc e                                            ; $5821: $8b
	ld [hl], a                                       ; $5822: $77
	ld b, e                                          ; $5823: $43
	cp a                                             ; $5824: $bf
	add e                                            ; $5825: $83
	ld a, a                                          ; $5826: $7f
	ld [hl], a                                       ; $5827: $77
	add sp, $67                                      ; $5828: $e8 $67
	db $e4                                           ; $582a: $e4
	ld [hl], a                                       ; $582b: $77
	db $fc                                           ; $582c: $fc
	sub e                                            ; $582d: $93
	cp c                                             ; $582e: $b9
	ld [hl], e                                       ; $582f: $73
	rst $38                                          ; $5830: $ff
	inc sp                                           ; $5831: $33
	cp e                                             ; $5832: $bb
	ld [hl], e                                       ; $5833: $73
	ld a, a                                          ; $5834: $7f
	or e                                             ; $5835: $b3
	cp a                                             ; $5836: $bf
	ld [hl], e                                       ; $5837: $73

jr_041_5838:
	ld [hl], a                                       ; $5838: $77
	cp e                                             ; $5839: $bb
	ld [hl], a                                       ; $583a: $77
	db $fc                                           ; $583b: $fc
	ld a, a                                          ; $583c: $7f
	db $e4                                           ; $583d: $e4
	ld a, [hl]                                       ; $583e: $7e
	db $ec                                           ; $583f: $ec
	ld a, a                                          ; $5840: $7f
	add sp, $5f                                      ; $5841: $e8 $5f
	db $fc                                           ; $5843: $fc
	ld a, [hl]                                       ; $5844: $7e
	xor $7e                                          ; $5845: $ee $7e
	ld [$e87f], a                                    ; $5847: $ea $7f $e8
	sub c                                            ; $584a: $91
	ld a, e                                          ; $584b: $7b
	or a                                             ; $584c: $b7
	or a                                             ; $584d: $b7
	ld a, e                                          ; $584e: $7b
	ld [hl], e                                       ; $584f: $73
	cp a                                             ; $5850: $bf
	or a                                             ; $5851: $b7
	ld a, e                                          ; $5852: $7b

jr_041_5853:
	inc sp                                           ; $5853: $33
	rst $38                                          ; $5854: $ff
	rst JumpTable                                          ; $5855: $c7
	nop                                              ; $5856: $00
	ld b, e                                          ; $5857: $43
	add b                                            ; $5858: $80
	ld [hl], a                                       ; $5859: $77
	db $fc                                           ; $585a: $fc
	sbc [hl]                                         ; $585b: $9e
	add l                                            ; $585c: $85
	ld l, e                                          ; $585d: $6b
	db $fc                                           ; $585e: $fc
	sbc b                                            ; $585f: $98
	dec sp                                           ; $5860: $3b
	rst FarCall                                          ; $5861: $f7
	and a                                            ; $5862: $a7
	ld a, e                                          ; $5863: $7b
	dec sp                                           ; $5864: $3b
	rst FarCall                                          ; $5865: $f7
	or a                                             ; $5866: $b7
	ld a, e                                          ; $5867: $7b
	db $fc                                           ; $5868: $fc
	ld a, [hl]                                       ; $5869: $7e
	ret nz                                           ; $586a: $c0

	ld a, a                                          ; $586b: $7f
	ldh [c], a                                       ; $586c: $e2
	ld a, a                                          ; $586d: $7f
	ld hl, sp+$67                                    ; $586e: $f8 $67
	add h                                            ; $5870: $84
	ld h, a                                          ; $5871: $67
	sbc h                                            ; $5872: $9c
	ld a, a                                          ; $5873: $7f
	ld c, h                                          ; $5874: $4c
	sbc l                                            ; $5875: $9d
	jr nc, jr_041_5838                               ; $5876: $30 $c0

	ld l, a                                          ; $5878: $6f
	ld b, h                                          ; $5879: $44
	add l                                            ; $587a: $85
	ld b, b                                          ; $587b: $40
	add b                                            ; $587c: $80
	ld h, c                                          ; $587d: $61
	add b                                            ; $587e: $80
	ld b, b                                          ; $587f: $40
	add b                                            ; $5880: $80
	ld h, [hl]                                       ; $5881: $66
	rst $38                                          ; $5882: $ff
	xor $77                                          ; $5883: $ee $77
	ld h, [hl]                                       ; $5885: $66
	rst $38                                          ; $5886: $ff
	and $7f                                          ; $5887: $e6 $7f
	ld h, [hl]                                       ; $5889: $66
	rst $38                                          ; $588a: $ff
	push hl                                          ; $588b: $e5
	ld a, [hl]                                       ; $588c: $7e
	ld h, [hl]                                       ; $588d: $66
	rst $38                                          ; $588e: $ff
	rst SubAFromBC                                          ; $588f: $e7
	ld a, [hl]                                       ; $5890: $7e
	jr nc, jr_041_5853                               ; $5891: $30 $c0

	ld h, c                                          ; $5893: $61
	add b                                            ; $5894: $80
	ld [hl], a                                       ; $5895: $77
	ld b, $77                                        ; $5896: $06 $77
	db $fc                                           ; $5898: $fc
	sbc [hl]                                         ; $5899: $9e
	nop                                              ; $589a: $00
	ld a, e                                          ; $589b: $7b
	db $f4                                           ; $589c: $f4
	sub [hl]                                         ; $589d: $96
	rst $38                                          ; $589e: $ff
	ld a, [hl]                                       ; $589f: $7e
	ld a, l                                          ; $58a0: $7d
	cp $fd                                           ; $58a1: $fe $fd
	ld a, [hl]                                       ; $58a3: $7e
	ld a, a                                          ; $58a4: $7f
	db $fc                                           ; $58a5: $fc
	db $fd                                           ; $58a6: $fd
	ld [hl], e                                       ; $58a7: $73
	ld hl, sp+$7f                                    ; $58a8: $f8 $7f
	db $fc                                           ; $58aa: $fc
	halt                                             ; $58ab: $76
	call z, $fc6f                                    ; $58ac: $cc $6f $fc
	sbc [hl]                                         ; $58af: $9e
	pop de                                           ; $58b0: $d1
	ld a, e                                          ; $58b1: $7b
	db $fc                                           ; $58b2: $fc
	sbc l                                            ; $58b3: $9d
	pop bc                                           ; $58b4: $c1
	nop                                              ; $58b5: $00
	ld [hl], a                                       ; $58b6: $77
	add $77                                          ; $58b7: $c6 $77
	db $fc                                           ; $58b9: $fc
	sbc h                                            ; $58ba: $9c
	or $7f                                           ; $58bb: $f6 $7f
	halt                                             ; $58bd: $76
	ld a, e                                          ; $58be: $7b
	db $fc                                           ; $58bf: $fc
	ld a, h                                          ; $58c0: $7c
	ld [hl], d                                       ; $58c1: $72
	halt                                             ; $58c2: $76
	call z, $fc77                                    ; $58c3: $cc $77 $fc
	sbc [hl]                                         ; $58c6: $9e
	ld b, c                                          ; $58c7: $41
	ld l, e                                          ; $58c8: $6b
	db $fc                                           ; $58c9: $fc
	ld l, [hl]                                       ; $58ca: $6e
	and d                                            ; $58cb: $a2
	ld [hl], a                                       ; $58cc: $77
	sbc h                                            ; $58cd: $9c
	ld l, a                                          ; $58ce: $6f
	sbc b                                            ; $58cf: $98
	ld a, a                                          ; $58d0: $7f
	adc b                                            ; $58d1: $88
	sbc [hl]                                         ; $58d2: $9e
	ld d, b                                          ; $58d3: $50
	ld [hl], e                                       ; $58d4: $73
	add h                                            ; $58d5: $84
	ld a, a                                          ; $58d6: $7f
	db $fc                                           ; $58d7: $fc
	ld a, a                                          ; $58d8: $7f
	jp nz, $fc77                                     ; $58d9: $c2 $77 $fc

	ld a, a                                          ; $58dc: $7f
	jp z, $5e76                                      ; $58dd: $ca $76 $5e

	ld a, a                                          ; $58e0: $7f
	db $fc                                           ; $58e1: $fc
	sbc h                                            ; $58e2: $9c
	ld [hl], b                                       ; $58e3: $70
	rst $38                                          ; $58e4: $ff
	ld hl, sp+$73                                    ; $58e5: $f8 $73
	ld hl, sp+$7e                                    ; $58e7: $f8 $7e
	call z, $0b9e                                    ; $58e9: $cc $9e $0b
	ld a, d                                          ; $58ec: $7a
	ret z                                            ; $58ed: $c8

	sbc [hl]                                         ; $58ee: $9e
	adc e                                            ; $58ef: $8b
	ld h, e                                          ; $58f0: $63
	db $fc                                           ; $58f1: $fc
	ld h, [hl]                                       ; $58f2: $66
	add sp, $6f                                      ; $58f3: $e8 $6f
	db $fc                                           ; $58f5: $fc
	sbc l                                            ; $58f6: $9d
	and e                                            ; $58f7: $a3
	nop                                              ; $58f8: $00
	halt                                             ; $58f9: $76
	call z, Call_041_539a                            ; $58fa: $cc $9a $53
	cp a                                             ; $58fd: $bf
	or e                                             ; $58fe: $b3
	ld e, a                                          ; $58ff: $5f
	ld d, e                                          ; $5900: $53
	ld [hl], e                                       ; $5901: $73
	ld hl, sp-$63                                    ; $5902: $f8 $9d
	sub e                                            ; $5904: $93
	ld a, a                                          ; $5905: $7f
	ld d, a                                          ; $5906: $57
	ldh [$7f], a                                     ; $5907: $e0 $7f
	sub b                                            ; $5909: $90
	ld a, a                                          ; $590a: $7f
	ldh [$99], a                                     ; $590b: $e0 $99
	sbc a                                            ; $590d: $9f
	ld [hl], e                                       ; $590e: $73
	ld d, a                                          ; $590f: $57
	cp e                                             ; $5910: $bb
	sub a                                            ; $5911: $97
	ld a, e                                          ; $5912: $7b
	ld [hl], a                                       ; $5913: $77
	db $fc                                           ; $5914: $fc
	ld a, a                                          ; $5915: $7f
	ldh [c], a                                       ; $5916: $e2
	ld [hl], a                                       ; $5917: $77
	db $fc                                           ; $5918: $fc
	ld a, a                                          ; $5919: $7f
	add sp, -$62                                     ; $591a: $e8 $9e
	inc bc                                           ; $591c: $03
	ld a, d                                          ; $591d: $7a
	ret z                                            ; $591e: $c8

	ld [hl], a                                       ; $591f: $77
	db $e4                                           ; $5920: $e4
	ld l, a                                          ; $5921: $6f
	ldh [$7f], a                                     ; $5922: $e0 $7f
	db $ec                                           ; $5924: $ec
	sbc l                                            ; $5925: $9d
	inc de                                           ; $5926: $13
	rst $38                                          ; $5927: $ff
	ld d, a                                          ; $5928: $57
	db $fc                                           ; $5929: $fc
	halt                                             ; $592a: $76
	call z, $3a7f                                    ; $592b: $cc $7f $3a
	ld l, a                                          ; $592e: $6f
	db $fc                                           ; $592f: $fc
	sbc [hl]                                         ; $5930: $9e
	add c                                            ; $5931: $81
	ld a, e                                          ; $5932: $7b
	db $fc                                           ; $5933: $fc
	ld a, [hl]                                       ; $5934: $7e
	call z, $e257                                    ; $5935: $cc $57 $e2
	ld c, a                                          ; $5938: $4f
	and b                                            ; $5939: $a0
	ld [hl], a                                       ; $593a: $77
	db $fc                                           ; $593b: $fc
	ld a, l                                          ; $593c: $7d
	and [hl]                                         ; $593d: $a6
	ld a, a                                          ; $593e: $7f
	ld b, h                                          ; $593f: $44
	ld a, a                                          ; $5940: $7f
	call nc, $fc67                                   ; $5941: $d4 $67 $fc
	ld a, a                                          ; $5944: $7f
	cp $98                                           ; $5945: $fe $98
	ld [hl], h                                       ; $5947: $74
	rst $38                                          ; $5948: $ff
	push af                                          ; $5949: $f5
	ld a, [hl]                                       ; $594a: $7e
	ld a, h                                          ; $594b: $7c
	rst $38                                          ; $594c: $ff
	db $fd                                           ; $594d: $fd
	ld [hl], e                                       ; $594e: $73
	db $fc                                           ; $594f: $fc
	sbc e                                            ; $5950: $9b
	ld a, [hl]                                       ; $5951: $7e
	db $fd                                           ; $5952: $fd
	db $fd                                           ; $5953: $fd
	ld a, [hl]                                       ; $5954: $7e
	ld l, [hl]                                       ; $5955: $6e
	xor d                                            ; $5956: $aa
	ld a, a                                          ; $5957: $7f
	sub [hl]                                         ; $5958: $96
	ld [hl], a                                       ; $5959: $77
	db $fc                                           ; $595a: $fc
	ld a, [hl]                                       ; $595b: $7e
	cp a                                             ; $595c: $bf
	ld a, a                                          ; $595d: $7f
	db $fc                                           ; $595e: $fc
	ld e, a                                          ; $595f: $5f
	and $6f                                          ; $5960: $e6 $6f
	db $fc                                           ; $5962: $fc
	halt                                             ; $5963: $76
	call z, $fc57                                    ; $5964: $cc $57 $fc
	sbc [hl]                                         ; $5967: $9e
	cp $7a                                           ; $5968: $fe $7a
	call z, $fc9c                                    ; $596a: $cc $9c $fc
	ld a, a                                          ; $596d: $7f
	ld a, h                                          ; $596e: $7c
	ld h, e                                          ; $596f: $63
	db $fc                                           ; $5970: $fc
	ld l, [hl]                                       ; $5971: $6e
	ret z                                            ; $5972: $c8

	ld l, a                                          ; $5973: $6f
	cp [hl]                                          ; $5974: $be
	ld [hl], a                                       ; $5975: $77
	ld l, h                                          ; $5976: $6c
	sbc b                                            ; $5977: $98
	ld h, h                                          ; $5978: $64
	rst $38                                          ; $5979: $ff
	db $e4                                           ; $597a: $e4
	ld a, a                                          ; $597b: $7f
	ld h, h                                          ; $597c: $64
	rst $38                                          ; $597d: $ff
	db $f4                                           ; $597e: $f4
	ld h, e                                          ; $597f: $63
	sbc $7f                                          ; $5980: $de $7f
	add sp, $7f                                      ; $5982: $e8 $7f
	jp z, $fc6f                                      ; $5984: $ca $6f $fc

	ld a, l                                          ; $5987: $7d
	ld e, h                                          ; $5988: $5c
	ld [hl], a                                       ; $5989: $77
	db $fc                                           ; $598a: $fc
	ld a, l                                          ; $598b: $7d
	pop de                                           ; $598c: $d1
	sbc l                                            ; $598d: $9d
	ei                                               ; $598e: $fb
	ld [hl], a                                       ; $598f: $77
	ld d, a                                          ; $5990: $57
	db $fc                                           ; $5991: $fc
	halt                                             ; $5992: $76
	call z, $039d                                    ; $5993: $cc $9d $03
	add a                                            ; $5996: $87
	ld l, a                                          ; $5997: $6f
	db $fc                                           ; $5998: $fc
	sbc e                                            ; $5999: $9b
	rlca                                             ; $599a: $07
	add a                                            ; $599b: $87
	rrca                                             ; $599c: $0f
	add a                                            ; $599d: $87
	ld [hl], a                                       ; $599e: $77
	inc c                                            ; $599f: $0c
	ld l, a                                          ; $59a0: $6f
	db $fc                                           ; $59a1: $fc
	sbc [hl]                                         ; $59a2: $9e
	and c                                            ; $59a3: $a1
	ld a, e                                          ; $59a4: $7b
	db $fc                                           ; $59a5: $fc
	sub l                                            ; $59a6: $95
	and d                                            ; $59a7: $a2
	nop                                              ; $59a8: $00
	ld d, a                                          ; $59a9: $57
	cp a                                             ; $59aa: $bf
	sbc a                                            ; $59ab: $9f
	ld a, a                                          ; $59ac: $7f
	ld e, a                                          ; $59ad: $5f
	cp a                                             ; $59ae: $bf
	cp a                                             ; $59af: $bf
	ld e, a                                          ; $59b0: $5f
	ld [hl], a                                       ; $59b1: $77
	db $fc                                           ; $59b2: $fc
	sbc e                                            ; $59b3: $9b
	rst GetHLinHL                                          ; $59b4: $cf
	ccf                                              ; $59b5: $3f
	xor a                                            ; $59b6: $af
	ld e, a                                          ; $59b7: $5f
	ld l, a                                          ; $59b8: $6f
	db $e4                                           ; $59b9: $e4
	ld a, a                                          ; $59ba: $7f
	ld b, $77                                        ; $59bb: $06 $77
	db $fc                                           ; $59bd: $fc
	halt                                             ; $59be: $76
	cp $66                                           ; $59bf: $fe $66
	ret z                                            ; $59c1: $c8

	ld a, a                                          ; $59c2: $7f
	db $fc                                           ; $59c3: $fc
	sbc l                                            ; $59c4: $9d
	rla                                              ; $59c5: $17
	ei                                               ; $59c6: $fb
	halt                                             ; $59c7: $76
	cp $6e                                           ; $59c8: $fe $6e
	ret z                                            ; $59ca: $c8

	ld a, a                                          ; $59cb: $7f
	db $fc                                           ; $59cc: $fc
	sbc l                                            ; $59cd: $9d
	ld b, b                                          ; $59ce: $40
	add c                                            ; $59cf: $81
	ld [hl], a                                       ; $59d0: $77
	ret c                                            ; $59d1: $d8

	sub [hl]                                         ; $59d2: $96
	db $e3                                           ; $59d3: $e3
	nop                                              ; $59d4: $00
	sub e                                            ; $59d5: $93
	ld a, a                                          ; $59d6: $7f
	dec de                                           ; $59d7: $1b
	rst $38                                          ; $59d8: $ff
	sbc a                                            ; $59d9: $9f
	ld a, a                                          ; $59da: $7f
	rra                                              ; $59db: $1f
	ld l, e                                          ; $59dc: $6b
	db $fc                                           ; $59dd: $fc
	ld a, a                                          ; $59de: $7f
	cp $77                                           ; $59df: $fe $77
	jp z, $a67f                                      ; $59e1: $ca $7f $a6

	ld a, a                                          ; $59e4: $7f
	db $fc                                           ; $59e5: $fc
	ld a, [hl]                                       ; $59e6: $7e
	add sp, $6e                                      ; $59e7: $e8 $6e
	ret nz                                           ; $59e9: $c0

	ld a, a                                          ; $59ea: $7f
	and b                                            ; $59eb: $a0
	sbc [hl]                                         ; $59ec: $9e
	sub a                                            ; $59ed: $97
	ld a, e                                          ; $59ee: $7b
	and b                                            ; $59ef: $a0
	ld [hl], a                                       ; $59f0: $77
	sbc h                                            ; $59f1: $9c
	ld l, a                                          ; $59f2: $6f
	sbc b                                            ; $59f3: $98
	ld h, a                                          ; $59f4: $67
	ret nz                                           ; $59f5: $c0

	ld a, a                                          ; $59f6: $7f
	db $fc                                           ; $59f7: $fc
	sbc [hl]                                         ; $59f8: $9e
	jp $fc73                                         ; $59f9: $c3 $73 $fc


	ld a, a                                          ; $59fc: $7f
	call c, $fc6f                                    ; $59fd: $dc $6f $fc
	sub a                                            ; $5a00: $97
	add a                                            ; $5a01: $87
	nop                                              ; $5a02: $00
	ld b, d                                          ; $5a03: $42
	add c                                            ; $5a04: $81
	xor d                                            ; $5a05: $aa
	push de                                          ; $5a06: $d5
	nop                                              ; $5a07: $00
	nop                                              ; $5a08: $00
	ld l, [hl]                                       ; $5a09: $6e
	ld [$a87d], a                                    ; $5a0a: $ea $7d $a8
	ld a, a                                          ; $5a0d: $7f
	inc h                                            ; $5a0e: $24
	rst SubAFromDE                                          ; $5a0f: $df
	rst $38                                          ; $5a10: $ff
	sbc h                                            ; $5a11: $9c
	xor c                                            ; $5a12: $a9
	ld d, a                                          ; $5a13: $57
	nop                                              ; $5a14: $00
	cp h                                             ; $5a15: $bc
	add d                                            ; $5a16: $82
	pop bc                                           ; $5a17: $c1
	add e                                            ; $5a18: $83
	pop bc                                           ; $5a19: $c1
	ldh [c], a                                       ; $5a1a: $e2
	sbc b                                            ; $5a1b: $98
	ld bc, $8345                                     ; $5a1c: $01 $45 $83
	ret z                                            ; $5a1f: $c8

	rst FarCall                                          ; $5a20: $f7
	nop                                              ; $5a21: $00
	nop                                              ; $5a22: $00
	ld l, a                                          ; $5a23: $6f
	ldh [c], a                                       ; $5a24: $e2
	sbc b                                            ; $5a25: $98
	db $fc                                           ; $5a26: $fc
	rst $38                                          ; $5a27: $ff
	db $fd                                           ; $5a28: $fd
	cp $fe                                           ; $5a29: $fe $fe
	rst $38                                          ; $5a2b: $ff
	xor e                                            ; $5a2c: $ab
	ld a, e                                          ; $5a2d: $7b
	ldh [rPCM12], a                                  ; $5a2e: $e0 $76
	call z, $0a7f                                    ; $5a30: $cc $7f $0a
	ld a, a                                          ; $5a33: $7f
	db $fc                                           ; $5a34: $fc
	ld a, a                                          ; $5a35: $7f
	sub b                                            ; $5a36: $90
	ld a, a                                          ; $5a37: $7f
	ret nz                                           ; $5a38: $c0

	sbc e                                            ; $5a39: $9b
	dec e                                            ; $5a3a: $1d
	ldh [c], a                                       ; $5a3b: $e2
	nop                                              ; $5a3c: $00
	nop                                              ; $5a3d: $00
	ld l, [hl]                                       ; $5a3e: $6e
	ld [$bc7e], a                                    ; $5a3f: $ea $7e $bc
	ld a, a                                          ; $5a42: $7f
	cp $df                                           ; $5a43: $fe $df
	rst $38                                          ; $5a45: $ff
	sbc [hl]                                         ; $5a46: $9e
	add hl, bc                                       ; $5a47: $09
	ld a, e                                          ; $5a48: $7b
	ret nc                                           ; $5a49: $d0

	ld a, a                                          ; $5a4a: $7f
	and h                                            ; $5a4b: $a4
	sbc [hl]                                         ; $5a4c: $9e
	jp nz, $81bf                                     ; $5a4d: $c2 $bf $81

	ld b, c                                          ; $5a50: $41
	ld a, e                                          ; $5a51: $7b
	ld d, [hl]                                       ; $5a52: $56
	sbc c                                            ; $5a53: $99
	ld b, [hl]                                       ; $5a54: $46
	add c                                            ; $5a55: $81
	jp z, $00f5                                      ; $5a56: $ca $f5 $00

	nop                                              ; $5a59: $00
	ld h, [hl]                                       ; $5a5a: $66
	ret z                                            ; $5a5b: $c8

	ld a, a                                          ; $5a5c: $7f
	ldh [$9e], a                                     ; $5a5d: $e0 $9e
	ld a, a                                          ; $5a5f: $7f
	ld [hl], e                                       ; $5a60: $73
	and b                                            ; $5a61: $a0
	ld a, a                                          ; $5a62: $7f
	and $7f                                          ; $5a63: $e6 $7f
	call nz, Call_041_7e6f                           ; $5a65: $c4 $6f $7e
	sbc [hl]                                         ; $5a68: $9e
	ld h, [hl]                                       ; $5a69: $66
	ld [hl], e                                       ; $5a6a: $73
	ldh [$7e], a                                     ; $5a6b: $e0 $7e
	call z, $7b98                                    ; $5a6d: $cc $98 $7b
	rst FarCall                                          ; $5a70: $f7
	ld [hl], e                                       ; $5a71: $73
	rst $38                                          ; $5a72: $ff
	ld [hl], e                                       ; $5a73: $73
	rst $38                                          ; $5a74: $ff
	ld [hl], a                                       ; $5a75: $77
	sbc $ff                                          ; $5a76: $de $ff
	ld a, a                                          ; $5a78: $7f
	ld d, d                                          ; $5a79: $52
	rst $38                                          ; $5a7a: $ff
	ld a, [hl]                                       ; $5a7b: $7e
	call z, $c876                                    ; $5a7c: $cc $76 $c8
	sub a                                            ; $5a7f: $97
	adc a                                            ; $5a80: $8f
	rlca                                             ; $5a81: $07
	ld d, a                                          ; $5a82: $57
	adc a                                            ; $5a83: $8f
	rst GetHLinHL                                          ; $5a84: $cf
	rst $38                                          ; $5a85: $ff
	ld a, d                                          ; $5a86: $7a
	db $fd                                           ; $5a87: $fd
	ld [hl], a                                       ; $5a88: $77
	ret nc                                           ; $5a89: $d0

	ld a, [hl]                                       ; $5a8a: $7e
	call z, $946e                                    ; $5a8b: $cc $6e $94
	sbc c                                            ; $5a8e: $99
	and e                                            ; $5a8f: $a3
	ret nz                                           ; $5a90: $c0

	call nc, $002b                                   ; $5a91: $d4 $2b $00
	nop                                              ; $5a94: $00
	halt                                             ; $5a95: $76
	call z, $fc7f                                    ; $5a96: $cc $7f $fc
	ld a, a                                          ; $5a99: $7f
	sub $98                                          ; $5a9a: $d6 $98
	rst SubAFromDE                                          ; $5a9c: $df
	ccf                                              ; $5a9d: $3f
	cp a                                             ; $5a9e: $bf
	ld a, a                                          ; $5a9f: $7f
	db $eb                                           ; $5aa0: $eb
	db $f4                                           ; $5aa1: $f4
	nop                                              ; $5aa2: $00
	ld l, e                                          ; $5aa3: $6b
	ld a, [bc]                                       ; $5aa4: $0a
	ld a, a                                          ; $5aa5: $7f
	db $fc                                           ; $5aa6: $fc
	ld a, a                                          ; $5aa7: $7f
	ld [hl], d                                       ; $5aa8: $72
	sbc d                                            ; $5aa9: $9a
	scf                                              ; $5aaa: $37
	ret nz                                           ; $5aab: $c0

	ret                                              ; $5aac: $c9


	scf                                              ; $5aad: $37
	nop                                              ; $5aae: $00
	ld [hl], c                                       ; $5aaf: $71
	and b                                            ; $5ab0: $a0
	ld a, [hl]                                       ; $5ab1: $7e
	call c, $fc7f                                    ; $5ab2: $dc $7f $fc
	sbc [hl]                                         ; $5ab5: $9e
	ccf                                              ; $5ab6: $3f
	ld a, e                                          ; $5ab7: $7b
	sub b                                            ; $5ab8: $90
	sbc l                                            ; $5ab9: $9d
	push bc                                          ; $5aba: $c5
	ei                                               ; $5abb: $fb
	ld [hl], a                                       ; $5abc: $77
	ret nz                                           ; $5abd: $c0

	ld h, [hl]                                       ; $5abe: $66
	ld d, b                                          ; $5abf: $50
	sbc l                                            ; $5ac0: $9d
	and b                                            ; $5ac1: $a0
	ret nz                                           ; $5ac2: $c0

	ld [hl], a                                       ; $5ac3: $77
	db $10                                           ; $5ac4: $10
	ld a, [hl]                                       ; $5ac5: $7e
	ld [$c67f], a                                    ; $5ac6: $ea $7f $c6
	ld [hl], a                                       ; $5ac9: $77
	db $fc                                           ; $5aca: $fc
	sbc d                                            ; $5acb: $9a
	cp [hl]                                          ; $5acc: $be
	ld a, a                                          ; $5acd: $7f
	cp a                                             ; $5ace: $bf
	ld a, a                                          ; $5acf: $7f
	ld [$807b], a                                    ; $5ad0: $ea $7b $80
	ld a, a                                          ; $5ad3: $7f
	add $7e                                          ; $5ad4: $c6 $7e
	jr jr_041_5b3f                                   ; $5ad6: $18 $67

	db $fc                                           ; $5ad8: $fc
	sbc e                                            ; $5ad9: $9b
	xor d                                            ; $5ada: $aa
	ld d, l                                          ; $5adb: $55
	nop                                              ; $5adc: $00
	nop                                              ; $5add: $00
	ld a, e                                          ; $5ade: $7b
	xor b                                            ; $5adf: $a8
	sbc c                                            ; $5ae0: $99
	ld e, a                                          ; $5ae1: $5f
	sbc $3f                                          ; $5ae2: $de $3f
	sbc [hl]                                         ; $5ae4: $9e
	ld a, a                                          ; $5ae5: $7f
	sbc $7b                                          ; $5ae6: $de $7b
	sbc $9e                                          ; $5ae8: $de $9e
	ldh [c], a                                       ; $5aea: $e2
	ld [hl], e                                       ; $5aeb: $73
	add b                                            ; $5aec: $80
	halt                                             ; $5aed: $76
	call nz, $b67d                                   ; $5aee: $c4 $7d $b6
	ld [hl], a                                       ; $5af1: $77
	ldh [$9c], a                                     ; $5af2: $e0 $9c
	cp d                                             ; $5af4: $ba
	ld b, l                                          ; $5af5: $45
	nop                                              ; $5af6: $00
	cp a                                             ; $5af7: $bf
	rst $38                                          ; $5af8: $ff
	ld d, l                                          ; $5af9: $55
	sbc e                                            ; $5afa: $9b
	rst $38                                          ; $5afb: $ff
	xor d                                            ; $5afc: $aa
	rst $38                                          ; $5afd: $ff
	nop                                              ; $5afe: $00
	sbc $ff                                          ; $5aff: $de $ff
	ld a, a                                          ; $5b01: $7f
	ld hl, sp-$65                                    ; $5b02: $f8 $9b
	cp [hl]                                          ; $5b04: $be
	rst $38                                          ; $5b05: $ff
	ld d, a                                          ; $5b06: $57
	rst $38                                          ; $5b07: $ff
	ld e, a                                          ; $5b08: $5f
	ldh a, [$7f]                                     ; $5b09: $f0 $7f
	db $f4                                           ; $5b0b: $f4
	sbc h                                            ; $5b0c: $9c
	cp e                                             ; $5b0d: $bb
	rst $38                                          ; $5b0e: $ff
	db $fd                                           ; $5b0f: $fd
	ld e, e                                          ; $5b10: $5b
	ldh a, [$9c]                                     ; $5b11: $f0 $9c
	xor e                                            ; $5b13: $ab
	rst $38                                          ; $5b14: $ff
	rst SubAFromDE                                          ; $5b15: $df
	db $dd                                           ; $5b16: $dd
	rst $38                                          ; $5b17: $ff
	ld h, e                                          ; $5b18: $63
	ldh a, [$9e]                                     ; $5b19: $f0 $9e
	db $eb                                           ; $5b1b: $eb
	db $db                                           ; $5b1c: $db
	rst $38                                          ; $5b1d: $ff
	ld h, e                                          ; $5b1e: $63
	ldh a, [$9c]                                     ; $5b1f: $f0 $9c
	ld [$f7ff], a                                    ; $5b21: $ea $ff $f7
	ld d, e                                          ; $5b24: $53
	ldh a, [$7f]                                     ; $5b25: $f0 $7f
	ret nc                                           ; $5b27: $d0

	ld c, a                                          ; $5b28: $4f
	ldh [$9c], a                                     ; $5b29: $e0 $9c
	push af                                          ; $5b2b: $f5
	rst $38                                          ; $5b2c: $ff
	ei                                               ; $5b2d: $fb
	ld d, e                                          ; $5b2e: $53
	ldh a, [$73]                                     ; $5b2f: $f0 $73
	jp nc, $b01b                                     ; $5b31: $d2 $1b $b0

	ld a, a                                          ; $5b34: $7f
	add h                                            ; $5b35: $84
	ld a, [hl]                                       ; $5b36: $7e
	ld e, [hl]                                       ; $5b37: $5e
	ld d, a                                          ; $5b38: $57
	ldh a, [$9c]                                     ; $5b39: $f0 $9c
	ld e, a                                          ; $5b3b: $5f
	rst $38                                          ; $5b3c: $ff
	cp l                                             ; $5b3d: $bd
	ld a, e                                          ; $5b3e: $7b

jr_041_5b3f:
	db $fc                                           ; $5b3f: $fc
	ld d, a                                          ; $5b40: $57
	and b                                            ; $5b41: $a0
	sbc [hl]                                         ; $5b42: $9e
	ld a, l                                          ; $5b43: $7d

jr_041_5b44:
	ld [hl], a                                       ; $5b44: $77
	call z, $f063                                    ; $5b45: $cc $63 $f0
	ld a, a                                          ; $5b48: $7f
	jp nc, $ae7f                                     ; $5b49: $d2 $7f $ae

	sbc [hl]                                         ; $5b4c: $9e
	rst AddAOntoHL                                          ; $5b4d: $ef
	ld e, e                                          ; $5b4e: $5b
	ldh a, [$9a]                                     ; $5b4f: $f0 $9a
	and c                                            ; $5b51: $a1
	rst $38                                          ; $5b52: $ff
	ret nz                                           ; $5b53: $c0

	rst $38                                          ; $5b54: $ff
	db $fc                                           ; $5b55: $fc
	ld e, e                                          ; $5b56: $5b
	ldh a, [$9e]                                     ; $5b57: $f0 $9e
	ld a, d                                          ; $5b59: $7a
	ld c, e                                          ; $5b5a: $4b
	and b                                            ; $5b5b: $a0
	sbc h                                            ; $5b5c: $9c
	dec b                                            ; $5b5d: $05
	rst $38                                          ; $5b5e: $ff
	ld b, d                                          ; $5b5f: $42
	ld [hl], a                                       ; $5b60: $77
	ld a, h                                          ; $5b61: $7c
	ld h, e                                          ; $5b62: $63
	ldh a, [$9a]                                     ; $5b63: $f0 $9a
	dec bc                                           ; $5b65: $0b
	rst $38                                          ; $5b66: $ff
	rlca                                             ; $5b67: $07
	rst $38                                          ; $5b68: $ff
	add [hl]                                         ; $5b69: $86
	ld d, e                                          ; $5b6a: $53
	ld [hl], b                                       ; $5b6b: $70
	ld a, [hl]                                       ; $5b6c: $7e
	adc [hl]                                         ; $5b6d: $8e
	sbc [hl]                                         ; $5b6e: $9e
	xor [hl]                                         ; $5b6f: $ae
	ld e, e                                          ; $5b70: $5b
	ldh a, [$da]                                     ; $5b71: $f0 $da
	rst $38                                          ; $5b73: $ff
	ld c, e                                          ; $5b74: $4b
	ldh a, [$7f]                                     ; $5b75: $f0 $7f
	ld a, d                                          ; $5b77: $7a
	sbc d                                            ; $5b78: $9a
	rst JumpTable                                          ; $5b79: $c7
	rst $38                                          ; $5b7a: $ff
	rst $38                                          ; $5b7b: $ff
	ld bc, $bc13                                     ; $5b7c: $01 $13 $bc
	rrca                                             ; $5b7f: $0f
	rrca                                             ; $5b80: $0f
	rra                                              ; $5b81: $1f
	ld a, a                                          ; $5b82: $7f
	rst $38                                          ; $5b83: $ff
	ld [hl], a                                       ; $5b84: $77
	ld b, [hl]                                       ; $5b85: $46
	sub h                                            ; $5b86: $94
	cp $7d                                           ; $5b87: $fe $7d
	ld hl, sp-$0e                                    ; $5b89: $f8 $f2
	ld a, b                                          ; $5b8b: $78
	or h                                             ; $5b8c: $b4
	ld [hl], b                                       ; $5b8d: $70
	ld [$e530], a                                    ; $5b8e: $ea $30 $e5
	jr nc, jr_041_5c0a                               ; $5b91: $30 $77

	sbc b                                            ; $5b93: $98
	sbc d                                            ; $5b94: $9a
	sbc d                                            ; $5b95: $9a
	ld a, a                                          ; $5b96: $7f
	ld d, a                                          ; $5b97: $57
	jr c, jr_041_5b44                                ; $5b98: $38 $aa

	cp l                                             ; $5b9a: $bd
	ld bc, $ffab                                     ; $5b9b: $01 $ab $ff

Jump_041_5b9e:
	rst $38                                          ; $5b9e: $ff
	adc e                                            ; $5b9f: $8b
	rst $38                                          ; $5ba0: $ff
	ld a, [hl-]                                      ; $5ba1: $3a
	rst $38                                          ; $5ba2: $ff
	dec d                                            ; $5ba3: $15
	rst $38                                          ; $5ba4: $ff
	jp c, $ed3f                                      ; $5ba5: $da $3f $ed

	rra                                              ; $5ba8: $1f
	and $1f                                          ; $5ba9: $e6 $1f
	push de                                          ; $5bab: $d5
	ccf                                              ; $5bac: $3f
	db $d3                                           ; $5bad: $d3
	ccf                                              ; $5bae: $3f
	db $fd                                           ; $5baf: $fd
	rst $38                                          ; $5bb0: $ff
	ld a, [$5dff]                                    ; $5bb1: $fa $ff $5d
	ld a, e                                          ; $5bb4: $7b
	sbc b                                            ; $5bb5: $98
	ld a, a                                          ; $5bb6: $7f
	ld h, $98                                        ; $5bb7: $26 $98
	adc [hl]                                         ; $5bb9: $8e
	rst $38                                          ; $5bba: $ff
	rla                                              ; $5bbb: $17
	rst $38                                          ; $5bbc: $ff
	ld a, $f3                                        ; $5bbd: $3e $f3
	ld a, a                                          ; $5bbf: $7f
	ld a, e                                          ; $5bc0: $7b
	xor [hl]                                         ; $5bc1: $ae
	ld [hl], a                                       ; $5bc2: $77
	sbc [hl]                                         ; $5bc3: $9e
	ld a, a                                          ; $5bc4: $7f
	db $fc                                           ; $5bc5: $fc
	ld a, a                                          ; $5bc6: $7f
	ld hl, sp-$62                                    ; $5bc7: $f8 $9e
	push de                                          ; $5bc9: $d5
	ld a, e                                          ; $5bca: $7b
	db $fc                                           ; $5bcb: $fc
	sbc d                                            ; $5bcc: $9a
	cp a                                             ; $5bcd: $bf
	rst $38                                          ; $5bce: $ff
	rst GetHLinHL                                          ; $5bcf: $cf
	rst $38                                          ; $5bd0: $ff
	ld [hl], l                                       ; $5bd1: $75
	ld [hl], d                                       ; $5bd2: $72
	or $7e                                           ; $5bd3: $f6 $7e
	and b                                            ; $5bd5: $a0
	ld a, a                                          ; $5bd6: $7f
	ldh a, [rPCM34]                                  ; $5bd7: $f0 $77
	ret c                                            ; $5bd9: $d8

	ld a, a                                          ; $5bda: $7f
	inc e                                            ; $5bdb: $1c
	ld a, l                                          ; $5bdc: $7d
	and h                                            ; $5bdd: $a4
	sbc [hl]                                         ; $5bde: $9e
	xor a                                            ; $5bdf: $af
	ld a, d                                          ; $5be0: $7a
	ld h, d                                          ; $5be1: $62
	sbc [hl]                                         ; $5be2: $9e
	and e                                            ; $5be3: $a3
	ld a, e                                          ; $5be4: $7b
	db $fc                                           ; $5be5: $fc
	ld a, [hl]                                       ; $5be6: $7e
	ld c, [hl]                                       ; $5be7: $4e
	ld a, a                                          ; $5be8: $7f
	db $ec                                           ; $5be9: $ec
	ld a, a                                          ; $5bea: $7f
	ret nz                                           ; $5beb: $c0

	ld a, [hl]                                       ; $5bec: $7e
	and [hl]                                         ; $5bed: $a6
	ld a, a                                          ; $5bee: $7f
	ret nc                                           ; $5bef: $d0

	ld [hl], d                                       ; $5bf0: $72
	ld h, h                                          ; $5bf1: $64
	sbc $ff                                          ; $5bf2: $de $ff
	sbc d                                            ; $5bf4: $9a
	sbc $ff                                          ; $5bf5: $de $ff
	db $ed                                           ; $5bf7: $ed
	rst $38                                          ; $5bf8: $ff
	ld e, b                                          ; $5bf9: $58
	sbc $ff                                          ; $5bfa: $de $ff
	ld a, a                                          ; $5bfc: $7f
	call z, $ba9a                                    ; $5bfd: $cc $9a $ba
	rst $38                                          ; $5c00: $ff
	ld d, l                                          ; $5c01: $55
	cp $ea                                           ; $5c02: $fe $ea
	ld a, e                                          ; $5c04: $7b
	ret nz                                           ; $5c05: $c0

	sub h                                            ; $5c06: $94
	ld [hl], a                                       ; $5c07: $77
	ld hl, sp-$55                                    ; $5c08: $f8 $ab

jr_041_5c0a:
	ret nz                                           ; $5c0a: $c0

	rst SubAFromDE                                          ; $5c0b: $df
	add b                                            ; $5c0c: $80
	cp l                                             ; $5c0d: $bd
	inc bc                                           ; $5c0e: $03
	ld a, [hl]                                       ; $5c0f: $7e
	ld bc, $bfbf                                     ; $5c10: $01 $bf $bf
	ld e, a                                          ; $5c13: $5f
	push af                                          ; $5c14: $f5
	ld a, e                                          ; $5c15: $7b
	add b                                            ; $5c16: $80
	sub d                                            ; $5c17: $92
	rst FarCall                                          ; $5c18: $f7
	rrca                                             ; $5c19: $0f
	ld a, [$7b07]                                    ; $5c1a: $fa $07 $7b
	add e                                            ; $5c1d: $83
	ld a, l                                          ; $5c1e: $7d
	add e                                            ; $5c1f: $83
	ld sp, hl                                        ; $5c20: $f9
	inc bc                                           ; $5c21: $03
	push af                                          ; $5c22: $f5
	inc bc                                           ; $5c23: $03
	rst SubAFromDE                                          ; $5c24: $df
	ld a, e                                          ; $5c25: $7b
	or b                                             ; $5c26: $b0
	sbc [hl]                                         ; $5c27: $9e
	ld e, [hl]                                       ; $5c28: $5e
	ld a, d                                          ; $5c29: $7a
	jp $af8c                                         ; $5c2a: $c3 $8c $af


	cp $5f                                           ; $5c2d: $fe $5f
	cp $ab                                           ; $5c2f: $fe $ab
	cp $54                                           ; $5c31: $fe $54
	rst FarCall                                          ; $5c33: $f7
	ld sp, hl                                        ; $5c34: $f9
	add a                                            ; $5c35: $87
	rst FarCall                                          ; $5c36: $f7
	rrca                                             ; $5c37: $0f
	db $fd                                           ; $5c38: $fd
	rra                                              ; $5c39: $1f
	jp c, $f53f                                      ; $5c3a: $da $3f $f5

	ccf                                              ; $5c3d: $3f
	ld a, [$fc7b]                                    ; $5c3e: $fa $7b $fc
	sbc [hl]                                         ; $5c41: $9e
	db $db                                           ; $5c42: $db
	ld [hl], e                                       ; $5c43: $73
	ld h, b                                          ; $5c44: $60
	rst SubAFromDE                                          ; $5c45: $df
	rst $38                                          ; $5c46: $ff
	sub d                                            ; $5c47: $92
	or b                                             ; $5c48: $b0
	rst $38                                          ; $5c49: $ff
	ld c, d                                          ; $5c4a: $4a
	ldh [$97], a                                     ; $5c4b: $e0 $97
	ret nz                                           ; $5c4d: $c0

	ld a, a                                          ; $5c4e: $7f
	add b                                            ; $5c4f: $80
	push af                                          ; $5c50: $f5
	nop                                              ; $5c51: $00
	ld a, a                                          ; $5c52: $7f
	rst $38                                          ; $5c53: $ff
	sbc e                                            ; $5c54: $9b
	ld a, d                                          ; $5c55: $7a
	jp z, $fa7f                                      ; $5c56: $ca $7f $fa

	ld a, a                                          ; $5c59: $7f
	jp c, $f780                                      ; $5c5a: $da $80 $f7

	inc bc                                           ; $5c5d: $03
	xor e                                            ; $5c5e: $ab
	ld bc, $0154                                     ; $5c5f: $01 $54 $01
	ldh [c], a                                       ; $5c62: $e2
	rst $38                                          ; $5c63: $ff
	db $fd                                           ; $5c64: $fd
	ld hl, sp-$06                                    ; $5c65: $f8 $fa
	ldh a, [$e5]                                     ; $5c67: $f0 $e5
	ldh a, [rIE]                                     ; $5c69: $f0 $ff
	db $e4                                           ; $5c6b: $e4
	db $eb                                           ; $5c6c: $eb
	db $fc                                           ; $5c6d: $fc
	cp $f9                                           ; $5c6e: $fe $f9
	db $fd                                           ; $5c70: $fd
	ld sp, hl                                        ; $5c71: $f9
	dec [hl]                                         ; $5c72: $35

Call_041_5c73:
	rst $38                                          ; $5c73: $ff
	ld d, [hl]                                       ; $5c74: $56
	rrca                                             ; $5c75: $0f
	xor e                                            ; $5c76: $ab
	rlca                                             ; $5c77: $07
	rst FarCall                                          ; $5c78: $f7
	inc bc                                           ; $5c79: $03
	db $fd                                           ; $5c7a: $fd
	sbc c                                            ; $5c7b: $99
	inc bc                                           ; $5c7c: $03
	rst $38                                          ; $5c7d: $ff
	inc bc                                           ; $5c7e: $03
	db $e3                                           ; $5c7f: $e3
	rra                                              ; $5c80: $1f
	rra                                              ; $5c81: $1f
	ld a, e                                          ; $5c82: $7b
	sub $7f                                          ; $5c83: $d6 $7f
	ld a, [hl]                                       ; $5c85: $7e
	ld a, a                                          ; $5c86: $7f
	db $fc                                           ; $5c87: $fc
	ld a, a                                          ; $5c88: $7f
	ld d, b                                          ; $5c89: $50
	ld a, b                                          ; $5c8a: $78
	ld [hl], b                                       ; $5c8b: $70
	sbc d                                            ; $5c8c: $9a
	ldh a, [$f5]                                     ; $5c8d: $f0 $f5
	ret nz                                           ; $5c8f: $c0

	ld l, d                                          ; $5c90: $6a
	add b                                            ; $5c91: $80
	halt                                             ; $5c92: $76
	ld a, [hl+]                                      ; $5c93: $2a
	ld [hl], a                                       ; $5c94: $77
	db $fc                                           ; $5c95: $fc
	sub a                                            ; $5c96: $97
	db $dd                                           ; $5c97: $dd
	rst $38                                          ; $5c98: $ff
	cp $03                                           ; $5c99: $fe $03
	rst FarCall                                          ; $5c9b: $f7
	ld bc, $01aa                                     ; $5c9c: $01 $aa $01
	ld c, $00                                        ; $5c9f: $0e $00
	rst SubAFromHL                                          ; $5ca1: $d7
	inc sp                                           ; $5ca2: $33
	rst SubAFromHL                                          ; $5ca3: $d7
	ld h, [hl]                                       ; $5ca4: $66
	rst SubAFromHL                                          ; $5ca5: $d7
	ld d, l                                          ; $5ca6: $55
	pop bc                                           ; $5ca7: $c1
	ld [hl], a                                       ; $5ca8: $77
	push bc                                          ; $5ca9: $c5
	ld [hl], a                                       ; $5caa: $77
	call $9e44                                       ; $5cab: $cd $44 $9e
	add a                                            ; $5cae: $87
	call c, $f6ff                                    ; $5caf: $dc $ff $f6
	inc bc                                           ; $5cb2: $03
	ldh a, [$dd]                                     ; $5cb3: $f0 $dd
	rst $38                                          ; $5cb5: $ff
	sbc $7f                                          ; $5cb6: $de $7f
	ld a, [$409e]                                    ; $5cb8: $fa $9e $40
	jp c, $9eff                                      ; $5cbb: $da $ff $9e

	push de                                          ; $5cbe: $d5
	ld d, e                                          ; $5cbf: $53
	ldh [$9c], a                                     ; $5cc0: $e0 $9c
	rst $38                                          ; $5cc2: $ff
	xor d                                            ; $5cc3: $aa
	ld d, l                                          ; $5cc4: $55
	ld d, e                                          ; $5cc5: $53
	ldh a, [$9e]                                     ; $5cc6: $f0 $9e
	push de                                          ; $5cc8: $d5
	ld c, e                                          ; $5cc9: $4b
	ldh a, [$9e]                                     ; $5cca: $f0 $9e
	ld d, l                                          ; $5ccc: $55
	ld c, a                                          ; $5ccd: $4f
	ldh a, [$9e]                                     ; $5cce: $f0 $9e
	cp $4b                                           ; $5cd0: $fe $4b
	ldh a, [$7f]                                     ; $5cd2: $f0 $7f
	ldh a, [c]                                       ; $5cd4: $f2
	inc bc                                           ; $5cd5: $03
	ldh a, [$03]                                     ; $5cd6: $f0 $03
	ldh a, [$03]                                     ; $5cd8: $f0 $03
	ldh a, [$5b]                                     ; $5cda: $f0 $5b
	ldh a, [$9e]                                     ; $5cdc: $f0 $9e
	xor e                                            ; $5cde: $ab
	ld b, e                                          ; $5cdf: $43
	ld [hl], b                                       ; $5ce0: $70
	sbc l                                            ; $5ce1: $9d
	xor e                                            ; $5ce2: $ab
	ld d, h                                          ; $5ce3: $54
	ld a, [$039e]                                    ; $5ce4: $fa $9e $03
	ld l, a                                          ; $5ce7: $6f
	ret nc                                           ; $5ce8: $d0

	sbc l                                            ; $5ce9: $9d
	ld a, [hl+]                                      ; $5cea: $2a
	dec a                                            ; $5ceb: $3d
	ei                                               ; $5cec: $fb
	rst SubAFromDE                                          ; $5ced: $df
	ret nz                                           ; $5cee: $c0

	db $dd                                           ; $5cef: $dd
	rst $38                                          ; $5cf0: $ff
	sbc e                                            ; $5cf1: $9b
	cp a                                             ; $5cf2: $bf
	ld d, a                                          ; $5cf3: $57
	xor e                                            ; $5cf4: $ab
	ld d, a                                          ; $5cf5: $57
	db $fd                                           ; $5cf6: $fd
	sbc [hl]                                         ; $5cf7: $9e
	ld bc, $03de                                     ; $5cf8: $01 $de $03
	db $ed                                           ; $5cfb: $ed
	db $dd                                           ; $5cfc: $dd
	ld bc, $f85f                                     ; $5cfd: $01 $5f $f8
	sbc c                                            ; $5d00: $99
	ld b, b                                          ; $5d01: $40
	ldh a, [$f0]                                     ; $5d02: $f0 $f0
	add sp, -$10                                     ; $5d04: $e8 $f0
	ldh a, [$fe]                                     ; $5d06: $f0 $fe
	add l                                            ; $5d08: $85
	ld [hl], b                                       ; $5d09: $70
	ldh a, [$f8]                                     ; $5d0a: $f0 $f8
	ld hl, sp-$10                                    ; $5d0c: $f8 $f0
	ld a, e                                          ; $5d0e: $7b
	ld [hl], l                                       ; $5d0f: $75
	ld h, c                                          ; $5d10: $61
	ld l, h                                          ; $5d11: $6c
	ld h, b                                          ; $5d12: $60
	ld [hl], b                                       ; $5d13: $70
	ld h, b                                          ; $5d14: $60
	ld h, h                                          ; $5d15: $64
	ld b, h                                          ; $5d16: $44
	ld c, d                                          ; $5d17: $4a
	ld a, [hl]                                       ; $5d18: $7e

jr_041_5d19:
	ld [hl], e                                       ; $5d19: $73
	ld a, a                                          ; $5d1a: $7f
	ld a, a                                          ; $5d1b: $7f
	ld e, a                                          ; $5d1c: $5f
	ld a, a                                          ; $5d1d: $7f
	adc d                                            ; $5d1e: $8a
	push af                                          ; $5d1f: $f5
	ldh [c], a                                       ; $5d20: $e2
	dec b                                            ; $5d21: $05
	ld a, [bc]                                       ; $5d22: $0a
	cp $99                                           ; $5d23: $fe $99
	ld h, b                                          ; $5d25: $60
	nop                                              ; $5d26: $00
	jr jr_041_5d19                                   ; $5d27: $18 $f0

	db $e4                                           ; $5d29: $e4
	db $fd                                           ; $5d2a: $fd
	ld a, e                                          ; $5d2b: $7b
	sub h                                            ; $5d2c: $94
	sbc d                                            ; $5d2d: $9a
	ld d, b                                          ; $5d2e: $50
	xor b                                            ; $5d2f: $a8
	nop                                              ; $5d30: $00
	add b                                            ; $5d31: $80
	db $10                                           ; $5d32: $10
	ld a, e                                          ; $5d33: $7b
	call nz, $07df                                   ; $5d34: $c4 $df $07
	rst SubAFromDE                                          ; $5d37: $df
	ld a, a                                          ; $5d38: $7f
	sbc $ff                                          ; $5d39: $de $ff
	sbc [hl]                                         ; $5d3b: $9e
	ld b, d                                          ; $5d3c: $42
	ld [hl], a                                       ; $5d3d: $77
	cp h                                             ; $5d3e: $bc
	ld a, e                                          ; $5d3f: $7b
	cp d                                             ; $5d40: $ba
	sbc [hl]                                         ; $5d41: $9e
	cp h                                             ; $5d42: $bc
	sbc $fe                                          ; $5d43: $de $fe
	ld h, a                                          ; $5d45: $67
	ld b, h                                          ; $5d46: $44
	ld a, e                                          ; $5d47: $7b
	ld [hl], b                                       ; $5d48: $70
	sbc [hl]                                         ; $5d49: $9e
	dec d                                            ; $5d4a: $15
	db $fc                                           ; $5d4b: $fc
	sbc h                                            ; $5d4c: $9c
	add b                                            ; $5d4d: $80
	ret nz                                           ; $5d4e: $c0

	ldh [$6f], a                                     ; $5d4f: $e0 $6f
	ldh a, [$9d]                                     ; $5d51: $f0 $9d
	ld a, [$f9fd]                                    ; $5d53: $fa $fd $f9
	ld l, a                                          ; $5d56: $6f
	ldh a, [$9d]                                     ; $5d57: $f0 $9d
	xor d                                            ; $5d59: $aa
	ld [hl], l                                       ; $5d5a: $75
	ld c, e                                          ; $5d5b: $4b
	ldh a, [$63]                                     ; $5d5c: $f0 $63
	jr nz, jr_041_5ddf                               ; $5d5e: $20 $7f

	or $99                                           ; $5d60: $f6 $99
	and b                                            ; $5d62: $a0
	ld d, b                                          ; $5d63: $50
	and b                                            ; $5d64: $a0
	ld b, b                                          ; $5d65: $40
	and b                                            ; $5d66: $a0
	ld b, b                                          ; $5d67: $40
	ld e, a                                          ; $5d68: $5f
	ldh a, [$9e]                                     ; $5d69: $f0 $9e
	ld [bc], a                                       ; $5d6b: $02
	ld [hl], e                                       ; $5d6c: $73
	and b                                            ; $5d6d: $a0
	ld h, e                                          ; $5d6e: $63
	ldh a, [$9b]                                     ; $5d6f: $f0 $9b
	ld d, h                                          ; $5d71: $54
	xor d                                            ; $5d72: $aa
	ld d, h                                          ; $5d73: $54
	and b                                            ; $5d74: $a0
	ld e, e                                          ; $5d75: $5b
	ret nc                                           ; $5d76: $d0

	sbc [hl]                                         ; $5d77: $9e
	add b                                            ; $5d78: $80
	ei                                               ; $5d79: $fb
	sbc [hl]                                         ; $5d7a: $9e
	ld d, b                                          ; $5d7b: $50
	ld sp, hl                                        ; $5d7c: $f9
	sbc [hl]                                         ; $5d7d: $9e
	ld [bc], a                                       ; $5d7e: $02
	db $fd                                           ; $5d7f: $fd
	sbc h                                            ; $5d80: $9c
	ld a, [bc]                                       ; $5d81: $0a
	sub b                                            ; $5d82: $90
	ld a, b                                          ; $5d83: $78
	ld h, e                                          ; $5d84: $63
	ret nc                                           ; $5d85: $d0

	ld a, e                                          ; $5d86: $7b
	jp nz, $0f9c                                     ; $5d87: $c2 $9c $0f

	xor h                                            ; $5d8a: $ac
	ld [$4e7b], sp                                   ; $5d8b: $08 $7b $4e
	halt                                             ; $5d8e: $76
	jp nc, $079c                                     ; $5d8f: $d2 $9c $07

	rrca                                             ; $5d92: $0f
	ld hl, sp+$77                                    ; $5d93: $f8 $77
	adc $9a                                          ; $5d95: $ce $9a
	ld d, b                                          ; $5d97: $50
	jr c, jr_041_5e0a                                ; $5d98: $38 $70

	rlca                                             ; $5d9a: $07
	rst $38                                          ; $5d9b: $ff
	ld [hl], a                                       ; $5d9c: $77
	ld b, d                                          ; $5d9d: $42
	rst SubAFromDE                                          ; $5d9e: $df
	rst $38                                          ; $5d9f: $ff
	sbc d                                            ; $5da0: $9a
	ld d, $03                                        ; $5da1: $16 $03
	ld [bc], a                                       ; $5da3: $02
	inc bc                                           ; $5da4: $03
	nop                                              ; $5da5: $00
	ld a, d                                          ; $5da6: $7a
	jp c, $e89e                                      ; $5da7: $da $9e $e8

	sbc $fc                                          ; $5daa: $de $fc
	sub e                                            ; $5dac: $93
	rst $38                                          ; $5dad: $ff
	db $fc                                           ; $5dae: $fc
	rst $38                                          ; $5daf: $ff
	rst $38                                          ; $5db0: $ff
	xor a                                            ; $5db1: $af
	ld e, [hl]                                       ; $5db2: $5e
	or a                                             ; $5db3: $b7
	ld a, e                                          ; $5db4: $7b
	cp e                                             ; $5db5: $bb
	rst $38                                          ; $5db6: $ff
	cp a                                             ; $5db7: $bf
	ld a, a                                          ; $5db8: $7f
	sbc $0f                                          ; $5db9: $de $0f
	rst SubAFromDE                                          ; $5dbb: $df
	ccf                                              ; $5dbc: $3f
	rst SubAFromDE                                          ; $5dbd: $df
	rra                                              ; $5dbe: $1f
	sbc [hl]                                         ; $5dbf: $9e
	adc a                                            ; $5dc0: $8f
	ld a, [hl-]                                      ; $5dc1: $3a
	jp $fb6f                                         ; $5dc2: $c3 $6f $fb


	ld l, d                                          ; $5dc5: $6a
	cp l                                             ; $5dc6: $bd
	add a                                            ; $5dc7: $87
	ld hl, sp+$10                                    ; $5dc8: $f8 $10
	add b                                            ; $5dca: $80
	ldh a, [rLCDC]                                   ; $5dcb: $f0 $40
	ld h, b                                          ; $5dcd: $60
	nop                                              ; $5dce: $00
	add b                                            ; $5dcf: $80
	ld hl, sp-$78                                    ; $5dd0: $f8 $88
	ldh a, [$f0]                                     ; $5dd2: $f0 $f0
	ret nz                                           ; $5dd4: $c0

	ldh [$a0], a                                     ; $5dd5: $e0 $a0
	add b                                            ; $5dd7: $80
	ld a, h                                          ; $5dd8: $7c
	ld l, h                                          ; $5dd9: $6c
	ld h, a                                          ; $5dda: $67
	ld h, e                                          ; $5ddb: $63
	ld h, e                                          ; $5ddc: $63
	ld a, a                                          ; $5ddd: $7f
	ld a, a                                          ; $5dde: $7f

jr_041_5ddf:
	ld [hl], a                                       ; $5ddf: $77
	halt                                             ; $5de0: $76
	call nz, Call_041_7fde                           ; $5de1: $c4 $de $7f
	sbc b                                            ; $5de4: $98
	ld l, a                                          ; $5de5: $6f
	add e                                            ; $5de6: $83
	ld b, e                                          ; $5de7: $43
	ccf                                              ; $5de8: $3f
	ld a, $3e                                        ; $5de9: $3e $3e
	sbc a                                            ; $5deb: $9f
	rst SubAFromHL                                          ; $5dec: $d7
	rst $38                                          ; $5ded: $ff
	sbc b                                            ; $5dee: $98
	ret nz                                           ; $5def: $c0

	jp z, $dfce                                      ; $5df0: $ca $ce $df

	ld hl, $f8e3                                     ; $5df3: $21 $e3 $f8
	ld a, e                                          ; $5df6: $7b
	sub [hl]                                         ; $5df7: $96
	sbc l                                            ; $5df8: $9d
	rst $38                                          ; $5df9: $ff

jr_041_5dfa:
	ccf                                              ; $5dfa: $3f
	ld l, c                                          ; $5dfb: $69
	ld b, l                                          ; $5dfc: $45
	sbc d                                            ; $5dfd: $9a
	jr @-$76                                         ; $5dfe: $18 $88

	sbc b                                            ; $5e00: $98
	dec e                                            ; $5e01: $1d
	ldh a, [$d9]                                     ; $5e02: $f0 $d9
	rst $38                                          ; $5e04: $ff
	sbc l                                            ; $5e05: $9d
	nop                                              ; $5e06: $00
	inc b                                            ; $5e07: $04
	ld a, e                                          ; $5e08: $7b
	ld e, c                                          ; $5e09: $59

jr_041_5e0a:
	adc a                                            ; $5e0a: $8f
	ld [bc], a                                       ; $5e0b: $02
	pop bc                                           ; $5e0c: $c1
	ld bc, $f8f0                                     ; $5e0d: $01 $f0 $f8
	db $fc                                           ; $5e10: $fc
	db $fc                                           ; $5e11: $fc
	db $fd                                           ; $5e12: $fd
	db $fc                                           ; $5e13: $fc
	ld sp, hl                                        ; $5e14: $f9
	ld hl, sp+$0b                                    ; $5e15: $f8 $0b
	dec b                                            ; $5e17: $05
	ld a, [bc]                                       ; $5e18: $0a
	dec d                                            ; $5e19: $15
	xor d                                            ; $5e1a: $aa
	ld a, d                                          ; $5e1b: $7a
	add hl, bc                                       ; $5e1c: $09
	sub a                                            ; $5e1d: $97
	ld [$0e0c], sp                                   ; $5e1e: $08 $0c $0e
	rrca                                             ; $5e21: $0f
	add b                                            ; $5e22: $80
	nop                                              ; $5e23: $00
	rst $38                                          ; $5e24: $ff
	or [hl]                                          ; $5e25: $b6
	ld a, d                                          ; $5e26: $7a
	call nc, $f79e                                   ; $5e27: $d4 $9e $f7
	ld [hl], a                                       ; $5e2a: $77
	ldh a, [rBCPD]                                   ; $5e2b: $f0 $69
	ldh a, [c]                                       ; $5e2d: $f2
	sbc [hl]                                         ; $5e2e: $9e
	db $db                                           ; $5e2f: $db
	ld [hl], d                                       ; $5e30: $72
	jp nz, $f05f                                     ; $5e31: $c2 $5f $f0

	sub l                                            ; $5e34: $95
	ld l, l                                          ; $5e35: $6d
	add b                                            ; $5e36: $80
	ld b, l                                          ; $5e37: $45
	add l                                            ; $5e38: $85
	ld b, l                                          ; $5e39: $45
	add l                                            ; $5e3a: $85
	push bc                                          ; $5e3b: $c5
	dec b                                            ; $5e3c: $05
	push bc                                          ; $5e3d: $c5
	dec c                                            ; $5e3e: $0d
	call c, $df08                                    ; $5e3f: $dc $08 $df
	adc b                                            ; $5e42: $88
	sbc [hl]                                         ; $5e43: $9e
	nop                                              ; $5e44: $00
	reti                                             ; $5e45: $d9


	ld d, h                                          ; $5e46: $54
	jp c, Jump_041_7604                              ; $5e47: $da $04 $76

	add h                                            ; $5e4a: $84
	ld a, a                                          ; $5e4b: $7f
	cp b                                             ; $5e4c: $b8
	sbc [hl]                                         ; $5e4d: $9e

jr_041_5e4e:
	add b                                            ; $5e4e: $80
	ld l, e                                          ; $5e4f: $6b
	ret nc                                           ; $5e50: $d0

	sbc e                                            ; $5e51: $9b
	ld a, a                                          ; $5e52: $7f
	ld e, e                                          ; $5e53: $5b
	add b                                            ; $5e54: $80
	ld d, h                                          ; $5e55: $54
	ld [hl], d                                       ; $5e56: $72
	or h                                             ; $5e57: $b4
	ld h, e                                          ; $5e58: $63
	ret nz                                           ; $5e59: $c0

	sub h                                            ; $5e5a: $94
	db $10                                           ; $5e5b: $10
	jr jr_041_5e4e                                   ; $5e5c: $18 $f0

	ret c                                            ; $5e5e: $d8

	dec d                                            ; $5e5f: $15
	sbc a                                            ; $5e60: $9f
	db $e3                                           ; $5e61: $e3
	ld a, [$6060]                                    ; $5e62: $fa $60 $60
	nop                                              ; $5e65: $00
	sbc $60                                          ; $5e66: $de $60
	sbc b                                            ; $5e68: $98
	or $e0                                           ; $5e69: $f6 $e0
	jr @+$0b                                         ; $5e6b: $18 $09

	rra                                              ; $5e6d: $1f
	add hl, bc                                       ; $5e6e: $09
	ld l, a                                          ; $5e6f: $6f
	ld a, c                                          ; $5e70: $79
	xor l                                            ; $5e71: $ad
	sbc [hl]                                         ; $5e72: $9e
	rrca                                             ; $5e73: $0f
	call c, $961f                                    ; $5e74: $dc $1f $96
	adc a                                            ; $5e77: $8f
	jr jr_041_5dfa                                   ; $5e78: $18 $80

	add b                                            ; $5e7a: $80
	ldh [$e0], a                                     ; $5e7b: $e0 $e0
	add b                                            ; $5e7d: $80
	jp $d9e7                                         ; $5e7e: $c3 $e7 $d9


	rst $38                                          ; $5e81: $ff
	sbc b                                            ; $5e82: $98
	ccf                                              ; $5e83: $3f
	ld [bc], a                                       ; $5e84: $02
	rrca                                             ; $5e85: $0f
	stop                                             ; $5e86: $10 $00
	ld b, $0e                                        ; $5e88: $06 $0e
	ld e, a                                          ; $5e8a: $5f
	rra                                              ; $5e8b: $1f
	ld a, a                                          ; $5e8c: $7f
	add hl, bc                                       ; $5e8d: $09
	sub [hl]                                         ; $5e8e: $96
	scf                                              ; $5e8f: $37
	inc bc                                           ; $5e90: $03
	nop                                              ; $5e91: $00
	ld [$f3d3], sp                                   ; $5e92: $08 $d3 $f3
	cp a                                             ; $5e95: $bf
	sbc a                                            ; $5e96: $9f
	rst GetHLinHL                                          ; $5e97: $cf
	ld h, h                                          ; $5e98: $64
	ld h, l                                          ; $5e99: $65
	sbc d                                            ; $5e9a: $9a
	db $10                                           ; $5e9b: $10
	ld [hl-], a                                      ; $5e9c: $32
	inc hl                                           ; $5e9d: $23
	ld h, a                                          ; $5e9e: $67
	rrca                                             ; $5e9f: $0f
	cp $9a                                           ; $5ea0: $fe $9a
	ld [de], a                                       ; $5ea2: $12
	rra                                              ; $5ea3: $1f
	scf                                              ; $5ea4: $37
	inc sp                                           ; $5ea5: $33
	scf                                              ; $5ea6: $37
	ld [hl], l                                       ; $5ea7: $75
	pop de                                           ; $5ea8: $d1
	ld a, d                                          ; $5ea9: $7a
	ld a, [hl]                                       ; $5eaa: $7e
	sbc [hl]                                         ; $5eab: $9e
	add c                                            ; $5eac: $81
	ld [hl], a                                       ; $5ead: $77
	ld hl, sp-$7e                                    ; $5eae: $f8 $82
	ret nz                                           ; $5eb0: $c0

	add b                                            ; $5eb1: $80
	nop                                              ; $5eb2: $00
	pop bc                                           ; $5eb3: $c1
	ldh a, [$9c]                                     ; $5eb4: $f0 $9c
	ld [$f01c], sp                                   ; $5eb6: $08 $1c $f0

jr_041_5eb9:
	ldh a, [$30]                                     ; $5eb9: $f0 $30
	jr nz, @-$06                                     ; $5ebb: $20 $f8

	ret z                                            ; $5ebd: $c8

	adc h                                            ; $5ebe: $8c
	jr jr_041_5eb9                                   ; $5ebf: $18 $f8

	ldh [rAUD4LEN], a                                ; $5ec1: $e0 $20
	or b                                             ; $5ec3: $b0
	ld a, a                                          ; $5ec4: $7f
	ld c, a                                          ; $5ec5: $4f
	ld l, a                                          ; $5ec6: $6f
	ld c, a                                          ; $5ec7: $4f
	ld l, h                                          ; $5ec8: $6c
	ld a, h                                          ; $5ec9: $7c
	ld a, a                                          ; $5eca: $7f
	ld b, e                                          ; $5ecb: $43
	ld [hl], a                                       ; $5ecc: $77
	db $dd                                           ; $5ecd: $dd
	ld c, a                                          ; $5ece: $4f
	rst SubAFromDE                                          ; $5ecf: $df
	ld a, a                                          ; $5ed0: $7f
	ld a, b                                          ; $5ed1: $78
	ld b, b                                          ; $5ed2: $40
	sbc h                                            ; $5ed3: $9c
	ld hl, sp-$60                                    ; $5ed4: $f8 $a0
	ld [hl], $d7                                     ; $5ed6: $36 $d7
	rst $38                                          ; $5ed8: $ff
	ld a, [hl]                                       ; $5ed9: $7e
	ld c, e                                          ; $5eda: $4b
	sbc e                                            ; $5edb: $9b
	ei                                               ; $5edc: $fb
	rst $38                                          ; $5edd: $ff
	rst $38                                          ; $5ede: $ff
	ld a, h                                          ; $5edf: $7c
	ld a, b                                          ; $5ee0: $78
	db $fd                                           ; $5ee1: $fd
	reti                                             ; $5ee2: $d9


	rst $38                                          ; $5ee3: $ff
	sbc [hl]                                         ; $5ee4: $9e
	db $fc                                           ; $5ee5: $fc
	ld a, c                                          ; $5ee6: $79
	adc c                                            ; $5ee7: $89
	sbc e                                            ; $5ee8: $9b
	add hl, de                                       ; $5ee9: $19
	db $10                                           ; $5eea: $10
	jr nc, @+$70                                     ; $5eeb: $30 $6e

	reti                                             ; $5eed: $d9


	rst $38                                          ; $5eee: $ff
	sub [hl]                                         ; $5eef: $96
	ld [$0302], sp                                   ; $5ef0: $08 $02 $03
	rst GetHLinHL                                          ; $5ef3: $cf
	rst GetHLinHL                                          ; $5ef4: $cf
	rst AddAOntoHL                                          ; $5ef5: $ef
	db $d3                                           ; $5ef6: $d3
	nop                                              ; $5ef7: $00
	ldh a, [$7b]                                     ; $5ef8: $f0 $7b
	rst SubAFromBC                                          ; $5efa: $e7
	adc c                                            ; $5efb: $89
	cp $fc                                           ; $5efc: $fe $fc
	ldh a, [$c0]                                     ; $5efe: $f0 $c0
	ld a, a                                          ; $5f00: $7f
	ld d, $00                                        ; $5f01: $16 $00
	add b                                            ; $5f03: $80
	and b                                            ; $5f04: $a0
	or a                                             ; $5f05: $b7
	scf                                              ; $5f06: $37
	ld d, [hl]                                       ; $5f07: $56
	ld [hl], $0b                                     ; $5f08: $36 $0b
	add b                                            ; $5f0a: $80
	ld h, b                                          ; $5f0b: $60
	ld e, a                                          ; $5f0c: $5f
	ld c, [hl]                                       ; $5f0d: $4e
	adc $0f                                          ; $5f0e: $ce $0f
	rst $38                                          ; $5f10: $ff
	db $db                                           ; $5f11: $db
	ld [hl], b                                       ; $5f12: $70
	cp e                                             ; $5f13: $bb
	rst SubAFromDE                                          ; $5f14: $df
	db $db                                           ; $5f15: $db
	ld a, e                                          ; $5f16: $7b
	ld h, [hl]                                       ; $5f17: $66
	ld [hl], a                                       ; $5f18: $77
	ld a, [$0e7f]                                    ; $5f19: $fa $7f $0e
	rst SubAFromDE                                          ; $5f1c: $df
	ld [bc], a                                       ; $5f1d: $02
	sbc [hl]                                         ; $5f1e: $9e
	ld bc, $fa7b                                     ; $5f1f: $01 $7b $fa
	sbc e                                            ; $5f22: $9b
	ld l, l                                          ; $5f23: $6d
	rst $38                                          ; $5f24: $ff
	ld bc, $7701                                     ; $5f25: $01 $01 $77
	ld a, [$c47a]                                    ; $5f28: $fa $7a $c4
	ld a, d                                          ; $5f2b: $7a
	ret nz                                           ; $5f2c: $c0

	sbc l                                            ; $5f2d: $9d
	add l                                            ; $5f2e: $85
	and b                                            ; $5f2f: $a0
	jp c, $9e88                                      ; $5f30: $da $88 $9e

	ret nz                                           ; $5f33: $c0

	jp c, Jump_041_7e54                              ; $5f34: $da $54 $7e

	ld l, c                                          ; $5f37: $69
	db $db                                           ; $5f38: $db
	inc b                                            ; $5f39: $04
	ld a, e                                          ; $5f3a: $7b
	call z, $c276                                    ; $5f3b: $cc $76 $c2
	sbc e                                            ; $5f3e: $9b
	rst $38                                          ; $5f3f: $ff
	ld e, e                                          ; $5f40: $5b
	ld e, e                                          ; $5f41: $5b
	ld a, a                                          ; $5f42: $7f
	halt                                             ; $5f43: $76
	jp nz, Jump_041_5b9e                             ; $5f44: $c2 $9e $5b

	ld a, e                                          ; $5f47: $7b
	add $73                                          ; $5f48: $c6 $73
	or b                                             ; $5f4a: $b0
	ld a, e                                          ; $5f4b: $7b
	add $76                                          ; $5f4c: $c6 $76
	jp nz, $fa7f                                     ; $5f4e: $c2 $7f $fa

	ld a, [hl]                                       ; $5f51: $7e
	ld c, b                                          ; $5f52: $48
	sbc c                                            ; $5f53: $99
	db $10                                           ; $5f54: $10
	sbc a                                            ; $5f55: $9f
	rst FarCall                                          ; $5f56: $f7
	ld a, [$eff2]                                    ; $5f57: $fa $f2 $ef
	sbc $e0                                          ; $5f5a: $de $e0
	sub a                                            ; $5f5c: $97
	ld h, b                                          ; $5f5d: $60
	ldh [$e0], a                                     ; $5f5e: $e0 $e0
	pop hl                                           ; $5f60: $e1
	rst $38                                          ; $5f61: $ff
	inc a                                            ; $5f62: $3c
	rst $38                                          ; $5f63: $ff
	db $fd                                           ; $5f64: $fd

jr_041_5f65:
	ld a, e                                          ; $5f65: $7b
	cp $88                                           ; $5f66: $fe $88
	ret nz                                           ; $5f68: $c0

	ld [$ff38], a                                    ; $5f69: $ea $38 $ff
	ld sp, hl                                        ; $5f6c: $f9
	rst $38                                          ; $5f6d: $ff
	ld hl, sp-$01                                    ; $5f6e: $f8 $ff
	ret nz                                           ; $5f70: $c0

	ret nz                                           ; $5f71: $c0

	ld l, a                                          ; $5f72: $6f
	jp $e781                                         ; $5f73: $c3 $81 $e7


	ld a, l                                          ; $5f76: $7d
	rst $38                                          ; $5f77: $ff
	nop                                              ; $5f78: $00
	xor d                                            ; $5f79: $aa
	ld h, [hl]                                       ; $5f7a: $66
	add c                                            ; $5f7b: $81
	nop                                              ; $5f7c: $00
	jp Jump_041_7b24                                 ; $5f7d: $c3 $24 $7b


	call z, Call_041_6e9a                            ; $5f80: $cc $9a $6e
	add e                                            ; $5f83: $83
	jp Jump_041_7ef7                                 ; $5f84: $c3 $f7 $7e


	ld a, e                                          ; $5f87: $7b
	ldh a, [$9a]                                     ; $5f88: $f0 $9a
	ld h, h                                          ; $5f8a: $64
	jp $c381                                         ; $5f8b: $c3 $81 $c3


	inc a                                            ; $5f8e: $3c
	ld a, e                                          ; $5f8f: $7b
	ldh a, [$9e]                                     ; $5f90: $f0 $9e
	ld [hl], e                                       ; $5f92: $73
	ld a, e                                          ; $5f93: $7b
	dec e                                            ; $5f94: $1d
	sbc d                                            ; $5f95: $9a
	ld a, a                                          ; $5f96: $7f
	ret nz                                           ; $5f97: $c0

	nop                                              ; $5f98: $00
	xor d                                            ; $5f99: $aa
	ccf                                              ; $5f9a: $3f
	ld a, c                                          ; $5f9b: $79
	pop hl                                           ; $5f9c: $e1
	ld a, a                                          ; $5f9d: $7f
	cp $ff                                           ; $5f9e: $fe $ff
	sbc l                                            ; $5fa0: $9d
	dec de                                           ; $5fa1: $1b
	inc de                                           ; $5fa2: $13
	ei                                               ; $5fa3: $fb
	sbc h                                            ; $5fa4: $9c
	ccf                                              ; $5fa5: $3f
	inc sp                                           ; $5fa6: $33
	inc sp                                           ; $5fa7: $33
	db $fc                                           ; $5fa8: $fc
	ld a, l                                          ; $5fa9: $7d
	and $df                                          ; $5faa: $e6 $df
	ld bc, $03df                                     ; $5fac: $01 $df $03
	ld a, [hl]                                       ; $5faf: $7e
	call nz, $c19e                                   ; $5fb0: $c4 $9e $c1
	ld a, c                                          ; $5fb3: $79
	ld a, a                                          ; $5fb4: $7f
	ld a, a                                          ; $5fb5: $7f
	ld sp, hl                                        ; $5fb6: $f9
	ld a, a                                          ; $5fb7: $7f
	ld hl, sp+$7d                                    ; $5fb8: $f8 $7d
	reti                                             ; $5fba: $d9


	adc c                                            ; $5fbb: $89
	adc b                                            ; $5fbc: $88
	call z, $dcc8                                    ; $5fbd: $cc $c8 $dc
	jr nc, jr_041_5fc2                               ; $5fc0: $30 $00

jr_041_5fc2:
	ldh a, [$f8]                                     ; $5fc2: $f0 $f8
	db $ec                                           ; $5fc4: $ec
	db $ec                                           ; $5fc5: $ec
	ld c, h                                          ; $5fc6: $4c
	ret z                                            ; $5fc7: $c8

	cp b                                             ; $5fc8: $b8
	nop                                              ; $5fc9: $00
	ld e, a                                          ; $5fca: $5f
	ld a, [hl-]                                      ; $5fcb: $3a
	ld e, a                                          ; $5fcc: $5f
	ld l, e                                          ; $5fcd: $6b
	ld b, b                                          ; $5fce: $40
	ld e, a                                          ; $5fcf: $5f
	ld d, l                                          ; $5fd0: $55
	ld h, c                                          ; $5fd1: $61
	db $fc                                           ; $5fd2: $fc
	rst SubAFromDE                                          ; $5fd3: $df
	jr nz, jr_041_5f65                               ; $5fd4: $20 $8f

	nop                                              ; $5fd6: $00
	rst SubAFromDE                                          ; $5fd7: $df
	and [hl]                                         ; $5fd8: $a6
	rst FarCall                                          ; $5fd9: $f7
	ei                                               ; $5fda: $fb
	dec b                                            ; $5fdb: $05
	ld d, l                                          ; $5fdc: $55
	ld l, e                                          ; $5fdd: $6b
	adc l                                            ; $5fde: $8d
	rrca                                             ; $5fdf: $0f
	rrca                                             ; $5fe0: $0f
	rlca                                             ; $5fe1: $07
	rlca                                             ; $5fe2: $07
	inc bc                                           ; $5fe3: $03
	inc bc                                           ; $5fe4: $03
	rst $38                                          ; $5fe5: $ff
	ld a, e                                          ; $5fe6: $7b
	rrca                                             ; $5fe7: $0f
	call c, $9eff                                    ; $5fe8: $dc $ff $9e
	cp a                                             ; $5feb: $bf
	call c, $9dff                                    ; $5fec: $dc $ff $9d
	rst FarCall                                          ; $5fef: $f7
	rst $38                                          ; $5ff0: $ff
	halt                                             ; $5ff1: $76
	or c                                             ; $5ff2: $b1
	ld a, l                                          ; $5ff3: $7d
	sbc e                                            ; $5ff4: $9b
	sbc l                                            ; $5ff5: $9d
	ldh a, [$e3]                                     ; $5ff6: $f0 $e3
	ld h, d                                          ; $5ff8: $62
	cpl                                              ; $5ff9: $2f
	add b                                            ; $5ffa: $80
	nop                                              ; $5ffb: $00
	sbc [hl]                                         ; $5ffc: $9e
	sbc a                                            ; $5ffd: $9f
	cp a                                             ; $5ffe: $bf
	rra                                              ; $5fff: $1f
	inc bc                                           ; $6000: $03
	ld bc, $e082                                     ; $6001: $01 $82 $e0
	ld hl, sp-$09                                    ; $6004: $f8 $f7
	or $fe                                           ; $6006: $f6 $fe
	rst $38                                          ; $6008: $ff
	cp $fc                                           ; $6009: $fe $fc
	rlca                                             ; $600b: $07
	nop                                              ; $600c: $00
	dec d                                            ; $600d: $15
	or [hl]                                          ; $600e: $b6
	or a                                             ; $600f: $b7
	or [hl]                                          ; $6010: $b6
	ld d, $14                                        ; $6011: $16 $14
	rlca                                             ; $6013: $07
	nop                                              ; $6014: $00
	ret nz                                           ; $6015: $c0

	ld c, a                                          ; $6016: $4f
	ld c, [hl]                                       ; $6017: $4e
	ld c, a                                          ; $6018: $4f
	rst AddAOntoHL                                          ; $6019: $ef
	ld a, b                                          ; $601a: $78
	sbc a                                            ; $601b: $9f
	rst SubAFromDE                                          ; $601c: $df
	inc bc                                           ; $601d: $03
	sbc $0c                                          ; $601e: $de $0c
	sub [hl]                                         ; $6020: $96
	dec bc                                           ; $6021: $0b
	rst $38                                          ; $6022: $ff
	inc bc                                           ; $6023: $03
	inc b                                            ; $6024: $04
	db $fc                                           ; $6025: $fc
	ld hl, sp-$10                                    ; $6026: $f8 $f0
	di                                               ; $6028: $f3
	rlca                                             ; $6029: $07
	ld [hl], h                                       ; $602a: $74
	ld sp, hl                                        ; $602b: $f9
	sbc e                                            ; $602c: $9b
	add hl, de                                       ; $602d: $19
	adc e                                            ; $602e: $8b
	adc [hl]                                         ; $602f: $8e
	ld l, $76                                        ; $6030: $2e $76
	pop bc                                           ; $6032: $c1
	adc [hl]                                         ; $6033: $8e
	and $74                                          ; $6034: $e6 $74
	ld [hl], c                                       ; $6036: $71
	pop bc                                           ; $6037: $c1
	ldh [$aa], a                                     ; $6038: $e0 $aa
	push hl                                          ; $603a: $e5
	nop                                              ; $603b: $00
	ld b, e                                          ; $603c: $43
	jr z, jr_041_6047                                ; $603d: $28 $08

	inc c                                            ; $603f: $0c
	ldh [$f5], a                                     ; $6040: $e0 $f5
	ld a, [$2cff]                                    ; $6042: $fa $ff $2c
	ld a, e                                          ; $6045: $7b
	adc l                                            ; $6046: $8d

jr_041_6047:
	sub d                                            ; $6047: $92
	ld d, l                                          ; $6048: $55
	rlca                                             ; $6049: $07
	ld [bc], a                                       ; $604a: $02
	ld hl, sp-$06                                    ; $604b: $f8 $fa
	ld hl, sp-$06                                    ; $604d: $f8 $fa
	ldh a, [rP1]                                     ; $604f: $f0 $00
	cp $fc                                           ; $6051: $fe $fc
	db $fc                                           ; $6053: $fc
	inc d                                            ; $6054: $14
	sbc $fc                                          ; $6055: $de $fc
	add b                                            ; $6057: $80
	ld a, a                                          ; $6058: $7f
	add b                                            ; $6059: $80
	ret c                                            ; $605a: $d8

	rst $38                                          ; $605b: $ff
	rst $38                                          ; $605c: $ff
	sbc $cf                                          ; $605d: $de $cf
	call z, $84ff                                    ; $605f: $cc $ff $84
	add h                                            ; $6062: $84
	sbc $de                                          ; $6063: $de $de
	rst $38                                          ; $6065: $ff
	call c, $ff8c                                    ; $6066: $dc $8c $ff
	jr jr_041_60e4                                   ; $6069: $18 $79

	db $fd                                           ; $606b: $fd
	xor a                                            ; $606c: $af
	rst FarCall                                          ; $606d: $f7
	cp e                                             ; $606e: $bb
	or e                                             ; $606f: $b3
	rst $38                                          ; $6070: $ff
	ld bc, $fb99                                     ; $6071: $01 $99 $fb
	jp $ffcb                                         ; $6074: $c3 $cb $ff


	add l                                            ; $6077: $85
	sbc a                                            ; $6078: $9f
	rra                                              ; $6079: $1f
	ld a, a                                          ; $607a: $7f
	ld a, [hl]                                       ; $607b: $7e
	ld a, [hl]                                       ; $607c: $7e
	ld a, a                                          ; $607d: $7f
	ld a, [hl]                                       ; $607e: $7e
	cp $fe                                           ; $607f: $fe $fe
	ldh [hLCDCIntHandlerIdx], a                                     ; $6081: $e0 $81
	add b                                            ; $6083: $80
	add b                                            ; $6084: $80
	add d                                            ; $6085: $82
	add d                                            ; $6086: $82
	ldh a, [c]                                       ; $6087: $f2
	or b                                             ; $6088: $b0
	nop                                              ; $6089: $00
	ccf                                              ; $608a: $3f
	add b                                            ; $608b: $80
	ld a, a                                          ; $608c: $7f
	rst $38                                          ; $608d: $ff
	ld a, b                                          ; $608e: $78
	ldh [$28], a                                     ; $608f: $e0 $28
	add b                                            ; $6091: $80
	ld a, c                                          ; $6092: $79
	bit 7, c                                         ; $6093: $cb $79
	or l                                             ; $6095: $b5
	ld a, l                                          ; $6096: $7d
	sub e                                            ; $6097: $93
	ld a, a                                          ; $6098: $7f
	ld e, [hl]                                       ; $6099: $5e
	ld [hl], c                                       ; $609a: $71
	xor e                                            ; $609b: $ab
	ld hl, sp+$07                                    ; $609c: $f8 $07

Call_041_609e:
	ldh a, [$fd]                                     ; $609e: $f0 $fd
	sbc h                                            ; $60a0: $9c
	ld b, $2d                                        ; $60a1: $06 $2d
	dec e                                            ; $60a3: $1d
	ld l, a                                          ; $60a4: $6f
	ld hl, sp+$7c                                    ; $60a5: $f8 $7c
	ld l, $70                                        ; $60a7: $2e $70

jr_041_60a9:
	ld b, l                                          ; $60a9: $45
	ld a, l                                          ; $60aa: $7d
	add c                                            ; $60ab: $81
	ld a, [hl]                                       ; $60ac: $7e
	add d                                            ; $60ad: $82
	ld a, e                                          ; $60ae: $7b
	rst FarCall                                          ; $60af: $f7
	ld a, d                                          ; $60b0: $7a
	cp d                                             ; $60b1: $ba
	sub h                                            ; $60b2: $94
	pop bc                                           ; $60b3: $c1
	ld d, b                                          ; $60b4: $50
	ldh a, [$b8]                                     ; $60b5: $f0 $b8
	jr nc, jr_041_60a9                               ; $60b7: $30 $f0

	ld hl, sp-$80                                    ; $60b9: $f8 $80
	add b                                            ; $60bb: $80
	ld h, b                                          ; $60bc: $60
	ld a, b                                          ; $60bd: $78
	ld a, e                                          ; $60be: $7b
	ld sp, $f8df                                     ; $60bf: $31 $df $f8
	sub e                                            ; $60c2: $93
	add b                                            ; $60c3: $80
	ld [hl], l                                       ; $60c4: $75
	inc d                                            ; $60c5: $14
	ld e, b                                          ; $60c6: $58
	ld [hl], b                                       ; $60c7: $70
	ld [hl], h                                       ; $60c8: $74
	ld sp, $1e71                                     ; $60c9: $31 $71 $1e
	nop                                              ; $60cc: $00
	ccf                                              ; $60cd: $3f
	ld hl, $2577                                     ; $60ce: $21 $77 $25
	add c                                            ; $60d1: $81
	ld hl, $c9ad                                     ; $60d2: $21 $ad $c9
	sbc a                                            ; $60d5: $9f
	rst SubAFromDE                                          ; $60d6: $df
	sbc $9e                                          ; $60d7: $de $9e
	xor b                                            ; $60d9: $a8
	jp z, $ffdb                                      ; $60da: $ca $db $ff

	ret                                              ; $60dd: $c9


	adc c                                            ; $60de: $89
	adc c                                            ; $60df: $89
	ret                                              ; $60e0: $c9


	rst SubAFromDE                                          ; $60e1: $df
	db $fd                                           ; $60e2: $fd
	sub [hl]                                         ; $60e3: $96

jr_041_60e4:
	sbc [hl]                                         ; $60e4: $9e
	sub $d7                                          ; $60e5: $d6 $d7
	db $db                                           ; $60e7: $db
	cp d                                             ; $60e8: $ba
	sub a                                            ; $60e9: $97
	sub h                                            ; $60ea: $94
	db $fd                                           ; $60eb: $fd
	db $fd                                           ; $60ec: $fd
	cp l                                             ; $60ed: $bd
	cp a                                             ; $60ee: $bf
	or a                                             ; $60ef: $b7
	ld a, d                                          ; $60f0: $7a
	ret nz                                           ; $60f1: $c0

	sbc [hl]                                         ; $60f2: $9e
	ld [hl], a                                       ; $60f3: $77
	sbc $7f                                          ; $60f4: $de $7f
	rst SubAFromDE                                          ; $60f6: $df
	cp a                                             ; $60f7: $bf
	sbc l                                            ; $60f8: $9d
	ccf                                              ; $60f9: $3f
	xor b                                            ; $60fa: $a8
	ld l, c                                          ; $60fb: $69
	ld h, d                                          ; $60fc: $62
	sub l                                            ; $60fd: $95
	rst $38                                          ; $60fe: $ff
	ld [bc], a                                       ; $60ff: $02
	add hl, de                                       ; $6100: $19
	db $fc                                           ; $6101: $fc
	sbc $fe                                          ; $6102: $de $fe
	db $fc                                           ; $6104: $fc
	nop                                              ; $6105: $00
	nop                                              ; $6106: $00
	db $fc                                           ; $6107: $fc
	ld l, c                                          ; $6108: $69
	ld e, [hl]                                       ; $6109: $5e
	sbc h                                            ; $610a: $9c
	or a                                             ; $610b: $b7
	rst $38                                          ; $610c: $ff
	ldh [$7b], a                                     ; $610d: $e0 $7b
	sub b                                            ; $610f: $90
	sbc h                                            ; $6110: $9c
	jr nz, jr_041_614e                               ; $6111: $20 $3b

	or l                                             ; $6113: $b5
	sbc $ff                                          ; $6114: $de $ff
	ld [hl], a                                       ; $6116: $77
	db $ed                                           ; $6117: $ed
	adc c                                            ; $6118: $89
	rrca                                             ; $6119: $0f
	daa                                              ; $611a: $27
	ld [bc], a                                       ; $611b: $02
	rlca                                             ; $611c: $07
	rst JumpTable                                          ; $611d: $c7
	nop                                              ; $611e: $00
	nop                                              ; $611f: $00
	sub b                                            ; $6120: $90
	or a                                             ; $6121: $b7
	rst $38                                          ; $6122: $ff
	db $fd                                           ; $6123: $fd
	add b                                            ; $6124: $80
	nop                                              ; $6125: $00
	db $e3                                           ; $6126: $e3
	ldh [$ed], a                                     ; $6127: $e0 $ed
	add b                                            ; $6129: $80
	add c                                            ; $612a: $81
	add a                                            ; $612b: $87
	ld [bc], a                                       ; $612c: $02
	ld d, h                                          ; $612d: $54
	xor e                                            ; $612e: $ab
	ld a, d                                          ; $612f: $7a
	jp $fe9c                                         ; $6130: $c3 $9c $fe


	rrca                                             ; $6133: $0f
	dec b                                            ; $6134: $05
	ld a, e                                          ; $6135: $7b
	ld b, a                                          ; $6136: $47
	add d                                            ; $6137: $82
	add b                                            ; $6138: $80
	inc c                                            ; $6139: $0c
	inc b                                            ; $613a: $04
	dec d                                            ; $613b: $15
	inc b                                            ; $613c: $04
	ld a, [de]                                       ; $613d: $1a
	push af                                          ; $613e: $f5
	nop                                              ; $613f: $00
	or b                                             ; $6140: $b0
	inc bc                                           ; $6141: $03
	ei                                               ; $6142: $fb
	ei                                               ; $6143: $fb
	ld sp, hl                                        ; $6144: $f9
	push af                                          ; $6145: $f5
	ld a, [$40f0]                                    ; $6146: $fa $f0 $40
	adc e                                            ; $6149: $8b
	inc b                                            ; $614a: $04
	rst $38                                          ; $614b: $ff
	ldh [rIE], a                                     ; $614c: $e0 $ff

jr_041_614e:
	ret nz                                           ; $614e: $c0

	nop                                              ; $614f: $00
	nop                                              ; $6150: $00
	db $f4                                           ; $6151: $f4
	rst $38                                          ; $6152: $ff
	rst $38                                          ; $6153: $ff
	jr nz, jr_041_61ce                               ; $6154: $20 $78

	ret nc                                           ; $6156: $d0

	sub l                                            ; $6157: $95
	nop                                              ; $6158: $00
	inc l                                            ; $6159: $2c
	nop                                              ; $615a: $00
	ldh [$30], a                                     ; $615b: $e0 $30
	ldh a, [rTIMA]                                   ; $615d: $f0 $05
	ld c, $0f                                        ; $615f: $0e $0f

jr_041_6161:
	call z, $eb77                                    ; $6161: $cc $77 $eb
	adc [hl]                                         ; $6164: $8e
	ld b, $0f                                        ; $6165: $06 $0f
	rrca                                             ; $6167: $0f
	rst $38                                          ; $6168: $ff
	ld [hl], l                                       ; $6169: $75
	push af                                          ; $616a: $f5
	scf                                              ; $616b: $37
	rlca                                             ; $616c: $07
	dec b                                            ; $616d: $05
	rlca                                             ; $616e: $07
	add l                                            ; $616f: $85
	sbc a                                            ; $6170: $9f
	rst SubAFromDE                                          ; $6171: $df
	ld e, a                                          ; $6172: $5f
	scf                                              ; $6173: $37
	rlca                                             ; $6174: $07
	rlca                                             ; $6175: $07
	db $dd                                           ; $6176: $dd
	rst $38                                          ; $6177: $ff
	call c, $80fe                                    ; $6178: $dc $fe $80
	rst $38                                          ; $617b: $ff
	sbc [hl]                                         ; $617c: $9e
	sbc e                                            ; $617d: $9b
	sbc b                                            ; $617e: $98
	sbc d                                            ; $617f: $9a
	jp c, $bef2                                      ; $6180: $da $f2 $be

	sub [hl]                                         ; $6183: $96
	jr jr_041_6161                                   ; $6184: $18 $db

	add hl, hl                                       ; $6186: $29
	db $eb                                           ; $6187: $eb
	jp hl                                            ; $6188: $e9


	add sp, -$17                                     ; $6189: $e8 $e9
	add hl, de                                       ; $618b: $19
	pop af                                           ; $618c: $f1
	pop af                                           ; $618d: $f1
	ld de, $1011                                     ; $618e: $11 $11 $10
	db $10                                           ; $6191: $10
	ld de, $acf0                                     ; $6192: $11 $f0 $ac
	jp z, $9184                                      ; $6195: $ca $84 $91

	sbc d                                            ; $6198: $9a
	nop                                              ; $6199: $00
	add b                                            ; $619a: $80
	sub l                                            ; $619b: $95
	push af                                          ; $619c: $f5
	call nz, $cace                                   ; $619d: $c4 $ce $ca
	xor $00                                          ; $61a0: $ee $00
	ld b, d                                          ; $61a2: $42
	rst FarCall                                          ; $61a3: $f7
	and e                                            ; $61a4: $a3
	add h                                            ; $61a5: $84
	ld [hl], a                                       ; $61a6: $77
	ld [hl], c                                       ; $61a7: $71
	ld b, h                                          ; $61a8: $44
	inc c                                            ; $61a9: $0c
	push de                                          ; $61aa: $d5
	add e                                            ; $61ab: $83
	cp h                                             ; $61ac: $bc
	ld c, h                                          ; $61ad: $4c
	ret                                              ; $61ae: $c9


	rst GetHLinHL                                          ; $61af: $cf
	add a                                            ; $61b0: $87
	ld b, b                                          ; $61b1: $40
	rrca                                             ; $61b2: $0f
	rst SubAFromDE                                          ; $61b3: $df
	add $08                                          ; $61b4: $c6 $08
	ret c                                            ; $61b6: $d8

	xor b                                            ; $61b7: $a8
	jr nz, jr_041_61c2                               ; $61b8: $20 $08

	adc h                                            ; $61ba: $8c
	inc h                                            ; $61bb: $24
	jr nc, @+$2e                                     ; $61bc: $30 $2c

	sbc b                                            ; $61be: $98
	db $fc                                           ; $61bf: $fc
	ld a, h                                          ; $61c0: $7c
	ld d, b                                          ; $61c1: $50

jr_041_61c2:
	db $10                                           ; $61c2: $10
	ld c, b                                          ; $61c3: $48
	ld a, h                                          ; $61c4: $7c
	ld [hl], h                                       ; $61c5: $74
	ld a, $1b                                        ; $61c6: $3e $1b
	dec de                                           ; $61c8: $1b
	rra                                              ; $61c9: $1f
	jr jr_041_61dc                                   ; $61ca: $18 $10

	nop                                              ; $61cc: $00
	nop                                              ; $61cd: $00

jr_041_61ce:
	db $dd                                           ; $61ce: $dd
	rra                                              ; $61cf: $1f
	sbc [hl]                                         ; $61d0: $9e
	add hl, de                                       ; $61d1: $19
	cp $de                                           ; $61d2: $fe $de
	add b                                            ; $61d4: $80
	sbc l                                            ; $61d5: $9d
	add e                                            ; $61d6: $83
	add b                                            ; $61d7: $80
	ld a, c                                          ; $61d8: $79
	ld a, [hl]                                       ; $61d9: $7e
	ld a, a                                          ; $61da: $7f
	ld [hl], h                                       ; $61db: $74

jr_041_61dc:
	ld a, a                                          ; $61dc: $7f
	ld b, [hl]                                       ; $61dd: $46
	rst SubAFromDE                                          ; $61de: $df
	add b                                            ; $61df: $80
	rst SubAFromDE                                          ; $61e0: $df
	ld bc, $277e                                     ; $61e1: $01 $7e $27
	ld a, l                                          ; $61e4: $7d
	ld a, l                                          ; $61e5: $7d
	rst SubAFromDE                                          ; $61e6: $df
	ldh a, [hDisp1_SCX]                                     ; $61e7: $f0 $91
	ld hl, sp+$68                                    ; $61e9: $f8 $68
	ldh a, [rP1]                                     ; $61eb: $f0 $00
	ld h, b                                          ; $61ed: $60
	db $fc                                           ; $61ee: $fc
	ldh a, [$f0]                                     ; $61ef: $f0 $f0
	db $fc                                           ; $61f1: $fc
	db $fc                                           ; $61f2: $fc
	ld d, [hl]                                       ; $61f3: $56
	ld [hl], c                                       ; $61f4: $71
	ld e, d                                          ; $61f5: $5a
	ld d, b                                          ; $61f6: $50
	sbc $58                                          ; $61f7: $de $58
	sbc l                                            ; $61f9: $9d
	ld d, h                                          ; $61fa: $54
	jr c, jr_041_6276                                ; $61fb: $38 $79

	add e                                            ; $61fd: $83
	sbc $20                                          ; $61fe: $de $20
	sub [hl]                                         ; $6200: $96
	inc hl                                           ; $6201: $23
	sbc e                                            ; $6202: $9b
	sbc [hl]                                         ; $6203: $9e
	sbc [hl]                                         ; $6204: $9e
	sbc e                                            ; $6205: $9b
	sbc h                                            ; $6206: $9c
	sbc h                                            ; $6207: $9c
	xor b                                            ; $6208: $a8
	ei                                               ; $6209: $fb
	db $dd                                           ; $620a: $dd
	ret                                              ; $620b: $c9


	rst SubAFromDE                                          ; $620c: $df
	res 2, l                                         ; $620d: $cb $95
	rst SubAFromDE                                          ; $620f: $df
	ret                                              ; $6210: $c9


	sub h                                            ; $6211: $94
	sub e                                            ; $6212: $93
	rst $38                                          ; $6213: $ff
	sbc l                                            ; $6214: $9d
	sub c                                            ; $6215: $91
	sub e                                            ; $6216: $93
	ei                                               ; $6217: $fb
	sub a                                            ; $6218: $97
	db $db                                           ; $6219: $db
	rst $38                                          ; $621a: $ff
	ld a, a                                          ; $621b: $7f
	ld sp, hl                                        ; $621c: $f9
	ld a, h                                          ; $621d: $7c
	db $db                                           ; $621e: $db
	sbc c                                            ; $621f: $99
	pop hl                                           ; $6220: $e1
	ld l, h                                          ; $6221: $6c
	ld h, a                                          ; $6222: $67
	ld h, a                                          ; $6223: $67
	rst SubAFromBC                                          ; $6224: $e7
	ldh [$61], a                                     ; $6225: $e0 $61
	add b                                            ; $6227: $80
	sbc b                                            ; $6228: $98
	add b                                            ; $6229: $80
	jr c, jr_041_6264                                ; $622a: $38 $38

	db $10                                           ; $622c: $10
	add c                                            ; $622d: $81
	adc [hl]                                         ; $622e: $8e
	ld [hl], b                                       ; $622f: $70
	call c, $97ff                                    ; $6230: $dc $ff $97
	cp $f0                                           ; $6233: $fe $f0
	add b                                            ; $6235: $80
	db $fc                                           ; $6236: $fc
	pop af                                           ; $6237: $f1
	add $98                                          ; $6238: $c6 $98
	ldh [$7b], a                                     ; $623a: $e0 $7b
	ld [$f47f], sp                                   ; $623c: $08 $7f $f4
	ld a, a                                          ; $623f: $7f
	sbc c                                            ; $6240: $99
	db $fd                                           ; $6241: $fd
	sbc [hl]                                         ; $6242: $9e
	ld l, d                                          ; $6243: $6a
	ld [hl], c                                       ; $6244: $71
	ld hl, sp-$64                                    ; $6245: $f8 $9c
	dec b                                            ; $6247: $05
	ld [bc], a                                       ; $6248: $02
	jp z, Jump_041_7afa                              ; $6249: $ca $fa $7a

	ld e, h                                          ; $624c: $5c
	cp $9d                                           ; $624d: $fe $9d
	ld d, h                                          ; $624f: $54
	xor d                                            ; $6250: $aa
	ld sp, hl                                        ; $6251: $f9
	sub [hl]                                         ; $6252: $96
	or b                                             ; $6253: $b0
	ldh a, [$b0]                                     ; $6254: $f0 $b0
	add b                                            ; $6256: $80
	ldh a, [rLCDC]                                   ; $6257: $f0 $40
	and b                                            ; $6259: $a0
	ld b, b                                          ; $625a: $40
	ld b, b                                          ; $625b: $40
	ld [hl], l                                       ; $625c: $75
	ld [bc], a                                       ; $625d: $02

Jump_041_625e:
	rst SubAFromDE                                          ; $625e: $df
	ld h, b                                          ; $625f: $60
	ld a, d                                          ; $6260: $7a
	db $db                                           ; $6261: $db
	di                                               ; $6262: $f3
	ld a, l                                          ; $6263: $7d

jr_041_6264:
	cp $7c                                           ; $6264: $fe $7c
	rst FarCall                                          ; $6266: $f7
	ld a, l                                          ; $6267: $7d
	ld hl, $917f                                     ; $6268: $21 $7f $91
	ld [hl], a                                       ; $626b: $77
	ld a, [$327b]                                    ; $626c: $fa $7b $32
	sbc e                                            ; $626f: $9b
	ld a, h                                          ; $6270: $7c
	rst JumpTable                                          ; $6271: $c7
	rst $38                                          ; $6272: $ff
	push af                                          ; $6273: $f5
	ld [hl], h                                       ; $6274: $74
	ld e, [hl]                                       ; $6275: $5e

jr_041_6276:
	ld a, d                                          ; $6276: $7a
	ld [hl], $76                                     ; $6277: $36 $76

Jump_041_6279:
	ld b, b                                          ; $6279: $40
	ld a, a                                          ; $627a: $7f
	ldh [c], a                                       ; $627b: $e2
	ld l, [hl]                                       ; $627c: $6e
	pop bc                                           ; $627d: $c1
	ld a, [hl]                                       ; $627e: $7e
	ret nz                                           ; $627f: $c0

	sub h                                            ; $6280: $94
	sub c                                            ; $6281: $91
	sub d                                            ; $6282: $92
	sub b                                            ; $6283: $90
	ret nc                                           ; $6284: $d0

	ldh a, [$f8]                                     ; $6285: $f0 $f8
	cp h                                             ; $6287: $bc
	sub d                                            ; $6288: $92
	db $db                                           ; $6289: $db
	ld [$77e8], a                                    ; $628a: $ea $e8 $77
	ld h, h                                          ; $628d: $64
	sbc d                                            ; $628e: $9a
	nop                                              ; $628f: $00
	pop af                                           ; $6290: $f1
	ld de, $1f10                                     ; $6291: $11 $10 $1f
	ld [hl], l                                       ; $6294: $75
	and d                                            ; $6295: $a2
	sbc l                                            ; $6296: $9d
	ldh a, [c]                                       ; $6297: $f2
	ret nc                                           ; $6298: $d0

	ld a, e                                          ; $6299: $7b
	ei                                               ; $629a: $fb
	ld [hl], a                                       ; $629b: $77
	ldh a, [$9e]                                     ; $629c: $f0 $9e
	ld sp, $9679                                     ; $629e: $31 $79 $96
	ld a, e                                          ; $62a1: $7b
	push af                                          ; $62a2: $f5
	sbc l                                            ; $62a3: $9d
	ld b, l                                          ; $62a4: $45
	ld [$fb7b], sp                                   ; $62a5: $08 $7b $fb
	sbc c                                            ; $62a8: $99
	ld d, l                                          ; $62a9: $55
	ld a, [$ce00]                                    ; $62aa: $fa $00 $ce
	call nz, Call_041_7880                           ; $62ad: $c4 $80 $78
	ld a, [hl-]                                      ; $62b0: $3a
	ld a, [hl]                                       ; $62b1: $7e
	dec a                                            ; $62b2: $3d
	sbc l                                            ; $62b3: $9d
	inc c                                            ; $62b4: $0c
	ld d, [hl]                                       ; $62b5: $56
	ld a, e                                          ; $62b6: $7b
	ldh a, [$9a]                                     ; $62b7: $f0 $9a
	ld d, [hl]                                       ; $62b9: $56
	xor a                                            ; $62ba: $af
	nop                                              ; $62bb: $00
	ld a, b                                          ; $62bc: $78
	inc l                                            ; $62bd: $2c
	ld a, e                                          ; $62be: $7b
	ldh [$9d], a                                     ; $62bf: $e0 $9d
	xor c                                            ; $62c1: $a9
	ld d, b                                          ; $62c2: $50
	ld h, l                                          ; $62c3: $65
	ld [hl], l                                       ; $62c4: $75
	ld a, e                                          ; $62c5: $7b
	jp c, $96fc                                      ; $62c6: $da $fc $96

	rrca                                             ; $62c9: $0f
	inc bc                                           ; $62ca: $03
	ld [bc], a                                       ; $62cb: $02
	nop                                              ; $62cc: $00
	ld bc, $0003                                     ; $62cd: $01 $03 $00
	ld bc, $7583                                     ; $62d0: $01 $83 $75
	and e                                            ; $62d3: $a3
	sbc $01                                          ; $62d4: $de $01
	add h                                            ; $62d6: $84
	ld b, c                                          ; $62d7: $41
	ld hl, sp+$0c                                    ; $62d8: $f8 $0c
	nop                                              ; $62da: $00
	db $10                                           ; $62db: $10
	sbc b                                            ; $62dc: $98

jr_041_62dd:
	ret z                                            ; $62dd: $c8

	sub b                                            ; $62de: $90
	jr nc, jr_041_62dd                               ; $62df: $30 $fc

	ld [$b800], sp                                   ; $62e1: $08 $00 $b8
	db $ec                                           ; $62e4: $ec
	xor b                                            ; $62e5: $a8
	ld hl, sp-$50                                    ; $62e6: $f8 $b0
	ld b, c                                          ; $62e8: $41
	ld [$1014], sp                                   ; $62e9: $08 $14 $10
	inc d                                            ; $62ec: $14
	db $10                                           ; $62ed: $10
	ld d, $33                                        ; $62ee: $16 $33
	ld a, $70                                        ; $62f0: $3e $70
	db $dd                                           ; $62f2: $dd
	ld h, b                                          ; $62f3: $60
	sbc b                                            ; $62f4: $98
	ld h, c                                          ; $62f5: $61
	ld a, h                                          ; $62f6: $7c
	adc l                                            ; $62f7: $8d
	sbc l                                            ; $62f8: $9d
	sbc a                                            ; $62f9: $9f
	adc c                                            ; $62fa: $89
	cp b                                             ; $62fb: $b8
	ld a, b                                          ; $62fc: $78
	sub $df                                          ; $62fd: $d6 $df
	bit 7, [hl]                                      ; $62ff: $cb $7e
	ld e, a                                          ; $6301: $5f
	sub e                                            ; $6302: $93
	rst GetHLinHL                                          ; $6303: $cf
	jp hl                                            ; $6304: $e9


	ret                                              ; $6305: $c9


	ret                                              ; $6306: $c9


	sbc a                                            ; $6307: $9f
	db $dd                                           ; $6308: $dd
	cp $f3                                           ; $6309: $fe $f3
	sub e                                            ; $630b: $93
	sbc a                                            ; $630c: $9f
	cp [hl]                                          ; $630d: $be
	ld hl, sp-$25                                    ; $630e: $f8 $db
	rst $38                                          ; $6310: $ff
	ld a, d                                          ; $6311: $7a
	adc l                                            ; $6312: $8d
	sbc e                                            ; $6313: $9b
	rst SubAFromBC                                          ; $6314: $e7
	add sp, -$10                                     ; $6315: $e8 $f0
	db $fc                                           ; $6317: $fc
	halt                                             ; $6318: $76
	ldh [$7e], a                                     ; $6319: $e0 $7e
	pop hl                                           ; $631b: $e1
	sbc l                                            ; $631c: $9d
	ldh [$e3], a                                     ; $631d: $e0 $e3
	cp $73                                           ; $631f: $fe $73
	rrca                                             ; $6321: $0f
	sbc l                                            ; $6322: $9d
	ld hl, sp+$07                                    ; $6323: $f8 $07
	db $fc                                           ; $6325: $fc
	ld a, l                                          ; $6326: $7d
	dec hl                                           ; $6327: $2b
	sbc [hl]                                         ; $6328: $9e
	ld b, $f9                                        ; $6329: $06 $f9
	ld [hl], d                                       ; $632b: $72
	call nz, $9efe                                   ; $632c: $c4 $fe $9e
	ld h, b                                          ; $632f: $60
	pop af                                           ; $6330: $f1
	sbc [hl]                                         ; $6331: $9e
	dec b                                            ; $6332: $05
	ldh a, [c]                                       ; $6333: $f2
	sbc [hl]                                         ; $6334: $9e
	ldh [$6f], a                                     ; $6335: $e0 $6f
	sbc $9e                                          ; $6337: $de $9e
	rlca                                             ; $6339: $07
	ld l, e                                          ; $633a: $6b
	ld hl, sp-$62                                    ; $633b: $f8 $9e
	inc bc                                           ; $633d: $03
	ld [hl], a                                       ; $633e: $77
	dec bc                                           ; $633f: $0b
	cp $7f                                           ; $6340: $fe $7f
	ld c, d                                          ; $6342: $4a
	call c, $9d1f                                    ; $6343: $dc $1f $9d
	ccf                                              ; $6346: $3f
	pop bc                                           ; $6347: $c1
	halt                                             ; $6348: $76
	add c                                            ; $6349: $81
	sbc e                                            ; $634a: $9b
	rlca                                             ; $634b: $07
	ld hl, sp+$00                                    ; $634c: $f8 $00
	nop                                              ; $634e: $00
	ld a, c                                          ; $634f: $79
	dec d                                            ; $6350: $15
	call c, $9aff                                    ; $6351: $dc $ff $9a
	scf                                              ; $6354: $37
	rra                                              ; $6355: $1f
	dec bc                                           ; $6356: $0b
	ccf                                              ; $6357: $3f
	rst JumpTable                                          ; $6358: $c7
	ld a, e                                          ; $6359: $7b
	inc [hl]                                         ; $635a: $34
	sbc l                                            ; $635b: $9d
	rst GetHLinHL                                          ; $635c: $cf
	rst SubAFromBC                                          ; $635d: $e7
	ld l, [hl]                                       ; $635e: $6e
	cp l                                             ; $635f: $bd
	ld l, c                                          ; $6360: $69
	add c                                            ; $6361: $81
	sbc l                                            ; $6362: $9d
	ld a, a                                          ; $6363: $7f
	sub b                                            ; $6364: $90
	ld a, d                                          ; $6365: $7a
	pop bc                                           ; $6366: $c1
	sbc e                                            ; $6367: $9b
	cp b                                             ; $6368: $b8
	db $f4                                           ; $6369: $f4
	ldh a, [c]                                       ; $636a: $f2
	ldh a, [rPCM12]                                  ; $636b: $f0 $76
	db $d3                                           ; $636d: $d3
	ld l, [hl]                                       ; $636e: $6e
	daa                                              ; $636f: $27
	sbc l                                            ; $6370: $9d
	ld d, l                                          ; $6371: $55
	xor d                                            ; $6372: $aa
	ld a, e                                          ; $6373: $7b
	cp $74                                           ; $6374: $fe $74
	ld h, d                                          ; $6376: $62
	db $db                                           ; $6377: $db
	rst $38                                          ; $6378: $ff
	sbc [hl]                                         ; $6379: $9e
	ld [bc], a                                       ; $637a: $02
	ld c, e                                          ; $637b: $4b
	ldh a, [rPCM34]                                  ; $637c: $f0 $77
	ldh a, [c]                                       ; $637e: $f2
	dec sp                                           ; $637f: $3b
	ldh a, [$80]                                     ; $6380: $f0 $80
	dec e                                            ; $6382: $1d
	inc a                                            ; $6383: $3c
	dec e                                            ; $6384: $1d
	inc d                                            ; $6385: $14
	rra                                              ; $6386: $1f
	ld a, [bc]                                       ; $6387: $0a
	ld e, $00                                        ; $6388: $1e $00
	rra                                              ; $638a: $1f
	dec e                                            ; $638b: $1d
	rra                                              ; $638c: $1f
	dec de                                           ; $638d: $1b
	rra                                              ; $638e: $1f
	rrca                                             ; $638f: $0f
	ld a, [de]                                       ; $6390: $1a
	ld [bc], a                                       ; $6391: $02
	ld b, b                                          ; $6392: $40
	add b                                            ; $6393: $80
	add b                                            ; $6394: $80
	ld b, b                                          ; $6395: $40
	ret nz                                           ; $6396: $c0

	add b                                            ; $6397: $80
	ret nz                                           ; $6398: $c0

	nop                                              ; $6399: $00
	pop bc                                           ; $639a: $c1
	ret nz                                           ; $639b: $c0

	ret nz                                           ; $639c: $c0

	ld h, b                                          ; $639d: $60
	ldh [$c0], a                                     ; $639e: $e0 $c0
	ld b, b                                          ; $63a0: $40
	ld a, [hl]                                       ; $63a1: $7e
	sbc b                                            ; $63a2: $98
	ld a, [hl]                                       ; $63a3: $7e
	ret nz                                           ; $63a4: $c0

	db $fc                                           ; $63a5: $fc
	sbc [hl]                                         ; $63a6: $9e
	db $fc                                           ; $63a7: $fc
	ld l, d                                          ; $63a8: $6a
	ld d, $97                                        ; $63a9: $16 $97
	ld [$1e16], sp                                   ; $63ab: $08 $16 $1e
	dec d                                            ; $63ae: $15
	inc d                                            ; $63af: $14
	ld [bc], a                                       ; $63b0: $02
	ld a, [bc]                                       ; $63b1: $0a
	inc d                                            ; $63b2: $14
	halt                                             ; $63b3: $76
	pop bc                                           ; $63b4: $c1
	sub a                                            ; $63b5: $97
	ld h, e                                          ; $63b6: $63
	ld a, h                                          ; $63b7: $7c
	ld [hl], b                                       ; $63b8: $70
	ld h, b                                          ; $63b9: $60
	ld e, e                                          ; $63ba: $5b
	rst AddAOntoHL                                          ; $63bb: $ef
	db $f4                                           ; $63bc: $f4
	ld b, b                                          ; $63bd: $40
	ld [hl], a                                       ; $63be: $77
	push hl                                          ; $63bf: $e5
	sbc e                                            ; $63c0: $9b
	rst GetHLinHL                                          ; $63c1: $cf
	ld e, [hl]                                       ; $63c2: $5e
	ld a, b                                          ; $63c3: $78
	ldh [$fd], a                                     ; $63c4: $e0 $fd
	ld h, l                                          ; $63c6: $65
	rst AddAOntoHL                                          ; $63c7: $ef
	ld [hl], c                                       ; $63c8: $71
	cp c                                             ; $63c9: $b9
	ldh [$de], a                                     ; $63ca: $e0 $de
	sbc [hl]                                         ; $63cc: $9e
	ld c, $6d                                        ; $63cd: $0e $6d
	sbc a                                            ; $63cf: $9f
	ld a, a                                          ; $63d0: $7f
	xor b                                            ; $63d1: $a8
	ld l, e                                          ; $63d2: $6b
	ld hl, sp+$7a                                    ; $63d3: $f8 $7a
	xor e                                            ; $63d5: $ab
	sbc h                                            ; $63d6: $9c
	jr @+$07                                         ; $63d7: $18 $05

	inc bc                                           ; $63d9: $03
	ld [hl], e                                       ; $63da: $73
	cp a                                             ; $63db: $bf
	ld a, h                                          ; $63dc: $7c
	ld [$ec77], a                                    ; $63dd: $ea $77 $ec
	sbc h                                            ; $63e0: $9c
	ld bc, $300e                                     ; $63e1: $01 $0e $30
	ld [hl], e                                       ; $63e4: $73
	xor h                                            ; $63e5: $ac
	sbc l                                            ; $63e6: $9d
	ld bc, $730c                                     ; $63e7: $01 $0c $73
	ld hl, sp-$62                                    ; $63ea: $f8 $9e
	jr c, jr_041_6455                                ; $63ec: $38 $67

	ld a, b                                          ; $63ee: $78
	ld c, e                                          ; $63ef: $4b
	sbc a                                            ; $63f0: $9f
	ld [hl], l                                       ; $63f1: $75
	sub d                                            ; $63f2: $92
	ld l, a                                          ; $63f3: $6f
	ret nz                                           ; $63f4: $c0

	ld l, l                                          ; $63f5: $6d
	push af                                          ; $63f6: $f5
	ld a, [hl]                                       ; $63f7: $7e
	sbc $6e                                          ; $63f8: $de $6e
	ld e, h                                          ; $63fa: $5c
	ld h, a                                          ; $63fb: $67
	xor $75                                          ; $63fc: $ee $75
	add d                                            ; $63fe: $82
	ld [hl], a                                       ; $63ff: $77
	xor $df                                          ; $6400: $ee $df
	rrca                                             ; $6402: $0f
	ld a, c                                          ; $6403: $79
	ld h, a                                          ; $6404: $67
	sbc e                                            ; $6405: $9b
	ld bc, $0008                                     ; $6406: $01 $08 $00
	db $fc                                           ; $6409: $fc
	call c, Call_041_7bfe                            ; $640a: $dc $fe $7b
	xor $52                                          ; $640d: $ee $52
	ldh a, [$79]                                     ; $640f: $f0 $79
	or c                                             ; $6411: $b1
	inc bc                                           ; $6412: $03
	ldh a, [$3f]                                     ; $6413: $f0 $3f
	ldh a, [$9e]                                     ; $6415: $f0 $9e
	cp $73                                           ; $6417: $fe $73
	adc a                                            ; $6419: $8f
	rst SubAFromDE                                          ; $641a: $df
	rst $38                                          ; $641b: $ff
	ld a, d                                          ; $641c: $7a
	ld c, c                                          ; $641d: $49
	rst $38                                          ; $641e: $ff
	sbc h                                            ; $641f: $9c
	ld a, [rIE]                                    ; $6420: $fa $ff $ff
	ld [hl], e                                       ; $6423: $73
	add [hl]                                         ; $6424: $86
	sbc $ff                                          ; $6425: $de $ff
	ld [hl], e                                       ; $6427: $73
	ld l, l                                          ; $6428: $6d
	sbc d                                            ; $6429: $9a
	cp a                                             ; $642a: $bf
	add c                                            ; $642b: $81
	pop af                                           ; $642c: $f1
	db $fd                                           ; $642d: $fd
	ld e, $7b                                        ; $642e: $1e $7b
	or $7e                                           ; $6430: $f6 $7e
	xor e                                            ; $6432: $ab
	ld a, l                                          ; $6433: $7d
	cp b                                             ; $6434: $b8
	sbc h                                            ; $6435: $9c
	rrca                                             ; $6436: $0f
	nop                                              ; $6437: $00
	nop                                              ; $6438: $00
	ld a, d                                          ; $6439: $7a
	db $d3                                           ; $643a: $d3
	ld a, [hl]                                       ; $643b: $7e
	and d                                            ; $643c: $a2
	ld a, e                                          ; $643d: $7b
	inc a                                            ; $643e: $3c
	rst SubAFromDE                                          ; $643f: $df
	ld b, b                                          ; $6440: $40
	ld a, [hl]                                       ; $6441: $7e
	and e                                            ; $6442: $a3
	ld [hl], h                                       ; $6443: $74
	cp e                                             ; $6444: $bb
	ldh [$60], a                                     ; $6445: $e0 $60
	ldh [rP1], a                                     ; $6447: $e0 $00
	ldh [$63], a                                     ; $6449: $e0 $63
	ld [hl-], a                                      ; $644b: $32
	nop                                              ; $644c: $00
	rst SubAFromHL                                          ; $644d: $d7
	ld d, l                                          ; $644e: $55
	sbc l                                            ; $644f: $9d
	ld h, [hl]                                       ; $6450: $66
	ld h, l                                          ; $6451: $65
	ld d, a                                          ; $6452: $57
	or $dd                                           ; $6453: $f6 $dd

jr_041_6455:
	ld [hl], a                                       ; $6455: $77
	ld d, e                                          ; $6456: $53
	or $8e                                           ; $6457: $f6 $8e
	ld h, h                                          ; $6459: $64
	ld h, l                                          ; $645a: $65
	ld d, l                                          ; $645b: $55
	halt                                             ; $645c: $76
	ld h, [hl]                                       ; $645d: $66
	ld [hl], a                                       ; $645e: $77
	ld [hl], e                                       ; $645f: $73
	ld b, h                                          ; $6460: $44
	ld b, h                                          ; $6461: $44
	ld h, [hl]                                       ; $6462: $66
	ld h, h                                          ; $6463: $64
	ld b, l                                          ; $6464: $45
	ld d, l                                          ; $6465: $55
	ld d, [hl]                                       ; $6466: $56
	ld h, [hl]                                       ; $6467: $66
	ld d, l                                          ; $6468: $55
	ld d, e                                          ; $6469: $53
	ld l, a                                          ; $646a: $6f
	or $9d                                           ; $646b: $f6 $9d

jr_041_646d:
	ld d, l                                          ; $646d: $55
	ld b, h                                          ; $646e: $44
	ld h, e                                          ; $646f: $63
	or $9c                                           ; $6470: $f6 $9c
	ld d, l                                          ; $6472: $55
	ld b, e                                          ; $6473: $43
	inc sp                                           ; $6474: $33
	ld h, a                                          ; $6475: $67
	or $db                                           ; $6476: $f6 $db
	ld b, h                                          ; $6478: $44
	reti                                             ; $6479: $d9


	ld d, l                                          ; $647a: $55
	rst SubAFromHL                                          ; $647b: $d7
	ld [hl], a                                       ; $647c: $77
	cp b                                             ; $647d: $b8
	rlca                                             ; $647e: $07
	sub a                                            ; $647f: $97
	nop                                              ; $6480: $00

jr_041_6481:
	rst SubAFromBC                                          ; $6481: $e7
	nop                                              ; $6482: $00
	pop af                                           ; $6483: $f1
	nop                                              ; $6484: $00
	db $fc                                           ; $6485: $fc
	nop                                              ; $6486: $00
	rst $38                                          ; $6487: $ff
	ld d, e                                          ; $6488: $53
	cp $84                                           ; $6489: $fe $84
	ld a, a                                          ; $648b: $7f
	nop                                              ; $648c: $00
	ccf                                              ; $648d: $3f
	nop                                              ; $648e: $00
	adc a                                            ; $648f: $8f
	ld [bc], a                                       ; $6490: $02
	and $04                                          ; $6491: $e6 $04
	db $fc                                           ; $6493: $fc
	ld [$f8f9], sp                                   ; $6494: $08 $f9 $f8
	rst $38                                          ; $6497: $ff
	call c, $a0ef                                    ; $6498: $dc $ef $a0
	rst GetHLinHL                                          ; $649b: $cf
	jr c, jr_041_646d                                ; $649c: $38 $cf

	ld hl, sp+$7f                                    ; $649e: $f8 $7f
	dec sp                                           ; $64a0: $3b
	inc de                                           ; $64a1: $13
	dec de                                           ; $64a2: $1b
	inc bc                                           ; $64a3: $03
	dec de                                           ; $64a4: $1b
	inc bc                                           ; $64a5: $03
	ld l, a                                          ; $64a6: $6f
	sbc $80                                          ; $64a7: $de $80
	ld bc, $03ff                                     ; $64a9: $01 $ff $03
	db $fd                                           ; $64ac: $fd
	inc bc                                           ; $64ad: $03
	rst $38                                          ; $64ae: $ff
	rra                                              ; $64af: $1f
	rst $38                                          ; $64b0: $ff
	cp a                                             ; $64b1: $bf
	ld a, a                                          ; $64b2: $7f
	ld h, c                                          ; $64b3: $61
	rst $38                                          ; $64b4: $ff
	jp nz, $f4e6                                     ; $64b5: $c2 $e6 $f4

	db $ed                                           ; $64b8: $ed
	ld e, $bf                                        ; $64b9: $1e $bf
	cp e                                             ; $64bb: $bb
	dec h                                            ; $64bc: $25
	di                                               ; $64bd: $f3
	and l                                            ; $64be: $a5
	ld l, b                                          ; $64bf: $68
	cp a                                             ; $64c0: $bf
	dec h                                            ; $64c1: $25
	cp $00                                           ; $64c2: $fe $00
	rst $38                                          ; $64c4: $ff
	inc bc                                           ; $64c5: $03
	db $fc                                           ; $64c6: $fc
	ld b, $82                                        ; $64c7: $06 $82
	ld a, [$fc07]                                    ; $64c9: $fa $07 $fc
	rlca                                             ; $64cc: $07
	db $fd                                           ; $64cd: $fd
	adc a                                            ; $64ce: $8f
	ld a, a                                          ; $64cf: $7f
	sbc a                                            ; $64d0: $9f
	rst $38                                          ; $64d1: $ff
	sbc a                                            ; $64d2: $9f
	ld a, [hl]                                       ; $64d3: $7e
	ld a, h                                          ; $64d4: $7c
	rst SubAFromBC                                          ; $64d5: $e7
	cp l                                             ; $64d6: $bd
	dec e                                            ; $64d7: $1d
	dec d                                            ; $64d8: $15
	add hl, bc                                       ; $64d9: $09
	adc c                                            ; $64da: $89
	ld bc, $03cf                                     ; $64db: $01 $cf $03
	ei                                               ; $64de: $fb

jr_041_64df:
	rst SubAFromBC                                          ; $64df: $e7
	rst $38                                          ; $64e0: $ff
	adc a                                            ; $64e1: $8f
	rst $38                                          ; $64e2: $ff
	rlc b                                            ; $64e3: $cb $00
	ld a, d                                          ; $64e5: $7a
	ld a, e                                          ; $64e6: $7b
	jp z, $fe7f                                      ; $64e7: $ca $7f $fe

	add l                                            ; $64ea: $85
	cp a                                             ; $64eb: $bf
	jr nc, jr_041_64df                               ; $64ec: $30 $f1

	jr nc, jr_041_6481                               ; $64ee: $30 $91

	call Call_041_4a7f                               ; $64f0: $cd $7f $4a
	add [hl]                                         ; $64f3: $86
	call $e581                                       ; $64f4: $cd $81 $e5
	pop bc                                           ; $64f7: $c1
	ei                                               ; $64f8: $fb
	push hl                                          ; $64f9: $e5
	rst $38                                          ; $64fa: $ff
	rst GetHLinHL                                          ; $64fb: $cf
	rst $38                                          ; $64fc: $ff
	ld h, a                                          ; $64fd: $67
	cp $ff                                           ; $64fe: $fe $ff
	cp $df                                           ; $6500: $fe $df
	rst $38                                          ; $6502: $ff
	ld b, e                                          ; $6503: $43
	add a                                            ; $6504: $87
	ld a, e                                          ; $6505: $7b
	db $db                                           ; $6506: $db
	add e                                            ; $6507: $83
	cp [hl]                                          ; $6508: $be
	rst SubAFromDE                                          ; $6509: $df
	inc e                                            ; $650a: $1c
	call z, Call_041_4ca1                            ; $650b: $cc $a1 $4c
	sbc e                                            ; $650e: $9b
	ld h, a                                          ; $650f: $67
	adc d                                            ; $6510: $8a
	ld h, b                                          ; $6511: $60
	push af                                          ; $6512: $f5
	ld hl, sp-$01                                    ; $6513: $f8 $ff
	nop                                              ; $6515: $00
	ccf                                              ; $6516: $3f
	ret nz                                           ; $6517: $c0

	rrca                                             ; $6518: $0f
	sub b                                            ; $6519: $90
	inc bc                                           ; $651a: $03
	add h                                            ; $651b: $84
	nop                                              ; $651c: $00
	pop bc                                           ; $651d: $c1
	nop                                              ; $651e: $00
	ldh a, [rP1]                                     ; $651f: $f0 $00

jr_041_6521:
	ld a, h                                          ; $6521: $7c
	ld bc, $5f7f                                     ; $6522: $01 $7f $5f
	ld e, e                                          ; $6525: $5b
	sbc c                                            ; $6526: $99
	ccf                                              ; $6527: $3f
	ld b, b                                          ; $6528: $40
	rst $38                                          ; $6529: $ff
	ld hl, sp-$07                                    ; $652a: $f8 $f9
	ld a, [$474f]                                    ; $652c: $fa $4f $47
	inc bc                                           ; $652f: $03
	cp $03                                           ; $6530: $fe $03
	cp $03                                           ; $6532: $fe $03
	cp $4b                                           ; $6534: $fe $4b
	cp $62                                           ; $6536: $fe $62
	adc $80                                          ; $6538: $ce $80
	sbc a                                            ; $653a: $9f
	nop                                              ; $653b: $00
	rst GetHLinHL                                          ; $653c: $cf
	nop                                              ; $653d: $00
	db $e3                                           ; $653e: $e3
	nop                                              ; $653f: $00
	ld sp, hl                                        ; $6540: $f9
	rra                                              ; $6541: $1f
	pop af                                           ; $6542: $f1
	ld de, $32e0                                     ; $6543: $11 $e0 $32
	ldh [c], a                                       ; $6546: $e2
	dec l                                            ; $6547: $2d
	and $6d                                          ; $6548: $e6 $6d
	jp $c668                                         ; $654a: $c3 $68 $c6


	ld a, b                                          ; $654d: $78
	adc $70                                          ; $654e: $ce $70
	sub [hl]                                         ; $6550: $96
	rst SubAFromHL                                          ; $6551: $d7
	ld [bc], a                                       ; $6552: $02
	adc c                                            ; $6553: $89
	ld a, [hl]                                       ; $6554: $7e
	ei                                               ; $6555: $fb
	ld e, $cf                                        ; $6556: $1e $cf
	or [hl]                                          ; $6558: $b6
	add b                                            ; $6559: $80
	adc h                                            ; $655a: $8c
	rst $38                                          ; $655b: $ff
	ld d, e                                          ; $655c: $53
	xor c                                            ; $655d: $a9
	ldh a, [c]                                       ; $655e: $f2
	rrca                                             ; $655f: $0f
	and e                                            ; $6560: $a3
	ld a, a                                          ; $6561: $7f
	ld a, a                                          ; $6562: $7f
	cp a                                             ; $6563: $bf
	ei                                               ; $6564: $fb
	or l                                             ; $6565: $b5
	rst $38                                          ; $6566: $ff
	sub c                                            ; $6567: $91
	cp e                                             ; $6568: $bb
	rst SubAFromDE                                          ; $6569: $df
	adc $06                                          ; $656a: $ce $06
	add $80                                          ; $656c: $c6 $80
	add d                                            ; $656e: $82
	ret nz                                           ; $656f: $c0

	db $e3                                           ; $6570: $e3
	ret nz                                           ; $6571: $c0

	rst SubAFromBC                                          ; $6572: $e7
	sbc $02                                          ; $6573: $de $02
	rst $38                                          ; $6575: $ff
	ld a, h                                          ; $6576: $7c
	add e                                            ; $6577: $83
	ld h, l                                          ; $6578: $65
	add b                                            ; $6579: $80
	sbc b                                            ; $657a: $98
	add l                                            ; $657b: $85
	ld a, c                                          ; $657c: $79
	db $e3                                           ; $657d: $e3
	ld a, a                                          ; $657e: $7f
	and a                                            ; $657f: $a7
	ld a, a                                          ; $6580: $7f
	adc e                                            ; $6581: $8b
	ei                                               ; $6582: $fb
	jr jr_041_6521                                   ; $6583: $18 $9c

	adc b                                            ; $6585: $88
	ld c, b                                          ; $6586: $48
	sbc d                                            ; $6587: $9a
	ld h, a                                          ; $6588: $67
	pop bc                                           ; $6589: $c1
	ld h, d                                          ; $658a: $62
	ldh a, [$f8]                                     ; $658b: $f0 $f8
	push af                                          ; $658d: $f5
	ei                                               ; $658e: $fb
	ldh a, [rIE]                                     ; $658f: $f0 $ff
	cp $d9                                           ; $6591: $fe $d9
	di                                               ; $6593: $f3
	rst GetHLinHL                                          ; $6594: $cf
	inc a                                            ; $6595: $3c
	ei                                               ; $6596: $fb
	ld a, b                                          ; $6597: $78
	add a                                            ; $6598: $87
	add b                                            ; $6599: $80
	ld b, e                                          ; $659a: $43
	ld a, l                                          ; $659b: $7d
	ld h, e                                          ; $659c: $63
	ld a, l                                          ; $659d: $7d
	ld h, c                                          ; $659e: $61
	rst $38                                          ; $659f: $ff
	ld c, c                                          ; $65a0: $49
	cp a                                             ; $65a1: $bf
	db $dd                                           ; $65a2: $dd
	cp e                                             ; $65a3: $bb
	add d                                            ; $65a4: $82
	add b                                            ; $65a5: $80
	jp nz, $f3c0                                     ; $65a6: $c2 $c0 $f3

	ret nz                                           ; $65a9: $c0

	rst $38                                          ; $65aa: $ff
	ei                                               ; $65ab: $fb
	rra                                              ; $65ac: $1f
	rst $38                                          ; $65ad: $ff
	ld l, a                                          ; $65ae: $6f
	ld sp, hl                                        ; $65af: $f9
	ccf                                              ; $65b0: $3f
	rst GetHLinHL                                          ; $65b1: $cf
	rrca                                             ; $65b2: $0f
	sbc a                                            ; $65b3: $9f
	rst FarCall                                          ; $65b4: $f7
	ld l, a                                          ; $65b5: $6f
	inc hl                                           ; $65b6: $23
	ld a, a                                          ; $65b7: $7f
	inc bc                                           ; $65b8: $03
	ld a, a                                          ; $65b9: $7f
	and h                                            ; $65ba: $a4
	sub d                                            ; $65bb: $92
	cp a                                             ; $65bc: $bf
	inc l                                            ; $65bd: $2c
	rst SubAFromDE                                          ; $65be: $df
	and d                                            ; $65bf: $a2
	ret c                                            ; $65c0: $d8

	adc l                                            ; $65c1: $8d
	ldh a, [$a2]                                     ; $65c2: $f0 $a2
	db $fc                                           ; $65c4: $fc
	cp $fd                                           ; $65c5: $fe $fd
	rst AddAOntoHL                                          ; $65c7: $ef
	inc de                                           ; $65c8: $13
	ld a, d                                          ; $65c9: $7a
	ld h, a                                          ; $65ca: $67
	add b                                            ; $65cb: $80
	rra                                              ; $65cc: $1f
	cp a                                             ; $65cd: $bf
	db $fd                                           ; $65ce: $fd
	rst GetHLinHL                                          ; $65cf: $cf
	ld h, a                                          ; $65d0: $67
	ld l, a                                          ; $65d1: $6f
	rlca                                             ; $65d2: $07
	rrca                                             ; $65d3: $0f
	inc bc                                           ; $65d4: $03
	sub c                                            ; $65d5: $91
	ld l, a                                          ; $65d6: $6f
	adc c                                            ; $65d7: $89
	rst SubAFromBC                                          ; $65d8: $e7
	push hl                                          ; $65d9: $e5
	sub d                                            ; $65da: $92
	ld l, d                                          ; $65db: $6a
	ret nc                                           ; $65dc: $d0

	ld h, a                                          ; $65dd: $67
	sbc $03                                          ; $65de: $de $03
	rst $38                                          ; $65e0: $ff
	ld h, a                                          ; $65e1: $67
	cp a                                             ; $65e2: $bf
	ccf                                              ; $65e3: $3f
	cp h                                             ; $65e4: $bc
	jp hl                                            ; $65e5: $e9


	db $fc                                           ; $65e6: $fc
	or h                                             ; $65e7: $b4
	ret z                                            ; $65e8: $c8

	jp nc, $858d                                     ; $65e9: $d2 $8d $85

	pop af                                           ; $65ec: $f1
	ld a, [hl]                                       ; $65ed: $7e
	inc c                                            ; $65ee: $0c
	daa                                              ; $65ef: $27
	inc c                                            ; $65f0: $0c
	add a                                            ; $65f1: $87
	db $fc                                           ; $65f2: $fc
	adc a                                            ; $65f3: $8f
	ld a, h                                          ; $65f4: $7c
	rst $38                                          ; $65f5: $ff
	ld a, a                                          ; $65f6: $7f
	add b                                            ; $65f7: $80
	ccf                                              ; $65f8: $3f
	nop                                              ; $65f9: $00
	rlca                                             ; $65fa: $07
	ld [$c003], sp                                   ; $65fb: $08 $03 $c0
	rlca                                             ; $65fe: $07
	rst $38                                          ; $65ff: $ff
	rrca                                             ; $6600: $0f
	rst $38                                          ; $6601: $ff
	ld c, $ff                                        ; $6602: $0e $ff
	inc b                                            ; $6604: $04
	db $fc                                           ; $6605: $fc
	ld h, e                                          ; $6606: $63
	ld h, $98                                        ; $6607: $26 $98
	ret nz                                           ; $6609: $c0

	rst SubAFromDE                                          ; $660a: $df
	ldh [rBGP], a                                    ; $660b: $e0 $47
	ret z                                            ; $660d: $c8

	ld b, c                                          ; $660e: $41
	jp nz, $fe02                                     ; $660f: $c2 $02 $fe

	inc bc                                           ; $6612: $03
	cp $0a                                           ; $6613: $fe $0a
	ret nz                                           ; $6615: $c0

	ld a, c                                          ; $6616: $79
	adc $57                                          ; $6617: $ce $57
	cp $80                                           ; $6619: $fe $80
	ld a, [bc]                                       ; $661b: $0a
	ld d, [hl]                                       ; $661c: $56
	ld a, [bc]                                       ; $661d: $0a
	ld [hl], $4e                                     ; $661e: $36 $4e
	add d                                            ; $6620: $82
	daa                                              ; $6621: $27
	jp $e313                                         ; $6622: $c3 $13 $e3


	rrca                                             ; $6625: $0f
	rst FarCall                                          ; $6626: $f7
	dec b                                            ; $6627: $05
	db $fd                                           ; $6628: $fd
	inc bc                                           ; $6629: $03
	ei                                               ; $662a: $fb
	and [hl]                                         ; $662b: $a6
	ld a, l                                          ; $662c: $7d
	sbc c                                            ; $662d: $99
	ld a, [hl]                                       ; $662e: $7e
	sbc $39                                          ; $662f: $de $39
	sub $39                                          ; $6631: $d6 $39
	adc l                                            ; $6633: $8d
	ld [hl], e                                       ; $6634: $73
	and l                                            ; $6635: $a5
	ld a, e                                          ; $6636: $7b
	and c                                            ; $6637: $a1
	ld a, a                                          ; $6638: $7f
	and e                                            ; $6639: $a3
	sub l                                            ; $663a: $95
	ld [hl], e                                       ; $663b: $73
	sbc $63                                          ; $663c: $de $63
	cp $01                                           ; $663e: $fe $01
	call z, $e7b3                                    ; $6640: $cc $b3 $e7
	rst $38                                          ; $6643: $ff
	ld e, $7b                                        ; $6644: $1e $7b
	ld b, [hl]                                       ; $6646: $46
	add b                                            ; $6647: $80
	call $f193                                       ; $6648: $cd $93 $f1
	adc a                                            ; $664b: $8f
	push af                                          ; $664c: $f5
	cp e                                             ; $664d: $bb
	push af                                          ; $664e: $f5
	sbc e                                            ; $664f: $9b
	push af                                          ; $6650: $f5
	cp b                                             ; $6651: $b8
	ld hl, sp-$70                                    ; $6652: $f8 $90
	db $fc                                           ; $6654: $fc
	cp b                                             ; $6655: $b8
	ld a, [hl]                                       ; $6656: $7e
	db $ec                                           ; $6657: $ec
	ld a, a                                          ; $6658: $7f
	rst FarCall                                          ; $6659: $f7
	ld a, a                                          ; $665a: $7f
	call z, $1fff                                    ; $665b: $cc $ff $1f
	ld a, a                                          ; $665e: $7f
	cp b                                             ; $665f: $b8
	rst AddAOntoHL                                          ; $6660: $ef
	db $e4                                           ; $6661: $e4
	ld l, a                                          ; $6662: $6f
	ld b, $6f                                        ; $6663: $06 $6f
	rlca                                             ; $6665: $07
	ccf                                              ; $6666: $3f
	add b                                            ; $6667: $80
	add hl, bc                                       ; $6668: $09
	rst SubAFromDE                                          ; $6669: $df
	add hl, sp                                       ; $666a: $39
	rst $38                                          ; $666b: $ff
	ld l, c                                          ; $666c: $69
	pop af                                           ; $666d: $f1
	sbc [hl]                                         ; $666e: $9e
	ld l, [hl]                                       ; $666f: $6e
	sbc h                                            ; $6670: $9c
	add hl, hl                                       ; $6671: $29
	sbc $3f                                          ; $6672: $de $3f
	rst $38                                          ; $6674: $ff
	rst $38                                          ; $6675: $ff
	ccf                                              ; $6676: $3f
	ei                                               ; $6677: $fb
	ccf                                              ; $6678: $3f
	ldh a, [$39]                                     ; $6679: $f0 $39
	pop af                                           ; $667b: $f1
	jr nc, @+$01                                     ; $667c: $30 $ff

	ld sp, hl                                        ; $667e: $f9
	ld a, a                                          ; $667f: $7f
	daa                                              ; $6680: $27
	ccf                                              ; $6681: $3f
	rlca                                             ; $6682: $07
	cp $07                                           ; $6683: $fe $07
	cp $7b                                           ; $6685: $fe $7b
	add b                                            ; $6687: $80
	db $fc                                           ; $6688: $fc
	ei                                               ; $6689: $fb
	cp $f9                                           ; $668a: $fe $f9

jr_041_668c:
	rst $38                                          ; $668c: $ff
	db $fd                                           ; $668d: $fd
	or c                                             ; $668e: $b1
	cp $38                                           ; $668f: $fe $38
	rst FarCall                                          ; $6691: $f7
	sbc a                                            ; $6692: $9f
	rst AddAOntoHL                                          ; $6693: $ef
	ld e, a                                          ; $6694: $5f
	cp a                                             ; $6695: $bf
	ld e, a                                          ; $6696: $5f
	cp a                                             ; $6697: $bf

jr_041_6698:
	ld hl, sp+$3c                                    ; $6698: $f8 $3c
	ld e, l                                          ; $669a: $5d
	cp b                                             ; $669b: $b8
	or [hl]                                          ; $669c: $b6
	rst $38                                          ; $669d: $ff
	ld d, c                                          ; $669e: $51
	rrca                                             ; $669f: $0f
	dec d                                            ; $66a0: $15
	db $eb                                           ; $66a1: $eb
	inc e                                            ; $66a2: $1c
	ei                                               ; $66a3: $fb
	db $fc                                           ; $66a4: $fc
	sbc e                                            ; $66a5: $9b
	ld sp, hl                                        ; $66a6: $f9
	add b                                            ; $66a7: $80
	rst $38                                          ; $66a8: $ff
	add hl, bc                                       ; $66a9: $09
	rst $38                                          ; $66aa: $ff
	jr nc, jr_041_668c                               ; $66ab: $30 $df

	ld [$e757], a                                    ; $66ad: $ea $57 $e7
	jr jr_041_6698                                   ; $66b0: $18 $e6

	add hl, de                                       ; $66b2: $19
	sbc l                                            ; $66b3: $9d
	ld l, a                                          ; $66b4: $6f
	ld b, a                                          ; $66b5: $47
	pop bc                                           ; $66b6: $c1
	pop hl                                           ; $66b7: $e1
	ret nz                                           ; $66b8: $c0

	pop hl                                           ; $66b9: $e1
	ldh [$fd], a                                     ; $66ba: $e0 $fd
	ldh a, [$3f]                                     ; $66bc: $f0 $3f
	db $ed                                           ; $66be: $ed
	ld e, $1b                                        ; $66bf: $1e $1b
	rst $38                                          ; $66c1: $ff
	cp c                                             ; $66c2: $b9
	ccf                                              ; $66c3: $3f
	dec bc                                           ; $66c4: $0b
	inc c                                            ; $66c5: $0c
	dec c                                            ; $66c6: $0d
	add b                                            ; $66c7: $80
	add hl, sp                                       ; $66c8: $39
	add hl, bc                                       ; $66c9: $09
	ld a, l                                          ; $66ca: $7d
	rlca                                             ; $66cb: $07
	ld [hl], c                                       ; $66cc: $71
	ld b, $f1                                        ; $66cd: $06 $f1
	ld l, $14                                        ; $66cf: $2e $14
	cp $67                                           ; $66d1: $fe $67
	ld sp, $30aa                                     ; $66d3: $31 $aa $30
	ld a, l                                          ; $66d6: $7d
	ld hl, sp-$44                                    ; $66d7: $f8 $bc
	rst $38                                          ; $66d9: $ff
	add h                                            ; $66da: $84
	rst $38                                          ; $66db: $ff
	inc h                                            ; $66dc: $24
	adc a                                            ; $66dd: $8f
	add a                                            ; $66de: $87
	sbc a                                            ; $66df: $9f
	add b                                            ; $66e0: $80
	ldh a, [$60]                                     ; $66e1: $f0 $60
	cp [hl]                                          ; $66e3: $be
	ld h, b                                          ; $66e4: $60
	ccf                                              ; $66e5: $3f
	ldh [$7f], a                                     ; $66e6: $e0 $7f
	sub h                                            ; $66e8: $94
	sbc [hl]                                         ; $66e9: $9e
	rst $38                                          ; $66ea: $ff
	ld a, e                                          ; $66eb: $7b
	cp $98                                           ; $66ec: $fe $98
	rst SubAFromDE                                          ; $66ee: $df
	ldh a, [$df]                                     ; $66ef: $f0 $df
	ccf                                              ; $66f1: $3f
	ld b, b                                          ; $66f2: $40
	rrca                                             ; $66f3: $0f
	db $10                                           ; $66f4: $10
	ld a, c                                          ; $66f5: $79
	ld b, d                                          ; $66f6: $42
	sbc [hl]                                         ; $66f7: $9e
	ret nz                                           ; $66f8: $c0

	ld a, c                                          ; $66f9: $79
	ld b, d                                          ; $66fa: $42
	ld [hl], e                                       ; $66fb: $73
	ld d, $61                                        ; $66fc: $16 $61
	ld b, d                                          ; $66fe: $42
	sbc b                                            ; $66ff: $98
	nop                                              ; $6700: $00
	rrca                                             ; $6701: $0f
	nop                                              ; $6702: $00
	ld bc, $0082                                     ; $6703: $01 $82 $00
	ldh [rSC], a                                     ; $6706: $e0 $02
	sbc $01                                          ; $6708: $de $01
	add b                                            ; $670a: $80
	ld l, b                                          ; $670b: $68
	ld d, b                                          ; $670c: $50
	ld a, a                                          ; $670d: $7f
	or c                                             ; $670e: $b1
	sbc [hl]                                         ; $670f: $9e
	add a                                            ; $6710: $87
	ld a, c                                          ; $6711: $79
	add b                                            ; $6712: $80
	sub d                                            ; $6713: $92
	ldh a, [$0a]                                     ; $6714: $f0 $0a
	ldh a, [rAUD3HIGH]                               ; $6716: $f0 $1e
	ld [$d63f], a                                    ; $6718: $ea $3f $d6

jr_041_671b:
	ld de, $0ff1                                     ; $671b: $11 $f1 $0f
	db $fd                                           ; $671e: $fd
	inc bc                                           ; $671f: $03
	db $fd                                           ; $6720: $fd
	ld [hl], a                                       ; $6721: $77
	db $e4                                           ; $6722: $e4
	add l                                            ; $6723: $85
	ld l, l                                          ; $6724: $6d
	scf                                              ; $6725: $37
	ld l, d                                          ; $6726: $6a
	rra                                              ; $6727: $1f
	ld [hl], l                                       ; $6728: $75
	rra                                              ; $6729: $1f
	ld [$f51f], a                                    ; $672a: $ea $1f $f5
	rst SubAFromDE                                          ; $672d: $df
	ei                                               ; $672e: $fb
	inc c                                            ; $672f: $0c
	db $d3                                           ; $6730: $d3
	ld c, $72                                        ; $6731: $0e $72
	adc [hl]                                         ; $6733: $8e
	ldh [$9f], a                                     ; $6734: $e0 $9f
	xor $97                                          ; $6736: $ee $97
	db $ed                                           ; $6738: $ed
	sub [hl]                                         ; $6739: $96
	ld [hl], $cd                                     ; $673a: $36 $cd

Jump_041_673c:
	jr nz, jr_041_671b                               ; $673c: $20 $dd

	ld [hl], a                                       ; $673e: $77
	db $fc                                           ; $673f: $fc
	add b                                            ; $6740: $80
	and b                                            ; $6741: $a0
	ld e, e                                          ; $6742: $5b
	ld h, h                                          ; $6743: $64
	sbc e                                            ; $6744: $9b
	ld l, a                                          ; $6745: $6f
	sbc [hl]                                         ; $6746: $9e
	ld a, e                                          ; $6747: $7b
	sbc a                                            ; $6748: $9f
	add $39                                          ; $6749: $c6 $39
	ld h, $d9                                        ; $674b: $26 $d9
	inc bc                                           ; $674d: $03
	ld e, b                                          ; $674e: $58
	ld h, a                                          ; $674f: $67
	ret c                                            ; $6750: $d8

	ld b, [hl]                                       ; $6751: $46
	cp c                                             ; $6752: $b9
	adc [hl]                                         ; $6753: $8e
	ld a, c                                          ; $6754: $79
	and a                                            ; $6755: $a7
	ld a, c                                          ; $6756: $79
	rst SubAFromBC                                          ; $6757: $e7
	ld sp, hl                                        ; $6758: $f9
	db $ec                                           ; $6759: $ec
	inc de                                           ; $675a: $13
	jp c, $1937                                      ; $675b: $da $37 $19

	rst FarCall                                          ; $675e: $f7
	inc de                                           ; $675f: $13
	sub d                                            ; $6760: $92
	db $fc                                           ; $6761: $fc
	ld e, $f9                                        ; $6762: $1e $f9
	ld a, a                                          ; $6764: $7f
	ld a, [$865e]                                    ; $6765: $fa $5e $86
	add h                                            ; $6768: $84
	ld [bc], a                                       ; $6769: $02
	jp nz, $f180                                     ; $676a: $c2 $80 $f1

	ret nz                                           ; $676d: $c0

	ld a, d                                          ; $676e: $7a
	add $82                                          ; $676f: $c6 $82
	pop bc                                           ; $6771: $c1
	rst $38                                          ; $6772: $ff
	rst SubAFromBC                                          ; $6773: $e7
	ld e, l                                          ; $6774: $5d
	ld bc, $467f                                     ; $6775: $01 $7f $46
	ld a, b                                          ; $6778: $78
	ld h, a                                          ; $6779: $67
	jr nc, jr_041_6793                               ; $677a: $30 $17

	or c                                             ; $677c: $b1
	add a                                            ; $677d: $87
	cp c                                             ; $677e: $b9

jr_041_677f:
	add [hl]                                         ; $677f: $86
	cp e                                             ; $6780: $bb
	inc e                                            ; $6781: $1c
	sbc a                                            ; $6782: $9f
	sbc d                                            ; $6783: $9a
	and e                                            ; $6784: $a3
	ld h, d                                          ; $6785: $62
	ldh [rSVBK], a                                   ; $6786: $e0 $70
	rst $38                                          ; $6788: $ff
	ret c                                            ; $6789: $d8

	cp a                                             ; $678a: $bf
	di                                               ; $678b: $f3
	rst $38                                          ; $678c: $ff
	ld a, [$ffde]                                    ; $678d: $fa $de $ff
	add b                                            ; $6790: $80
	db $fd                                           ; $6791: $fd
	cp a                                             ; $6792: $bf

jr_041_6793:
	pop hl                                           ; $6793: $e1
	jr jr_041_680d                                   ; $6794: $18 $77

	di                                               ; $6796: $f3
	ld a, h                                          ; $6797: $7c
	ld a, d                                          ; $6798: $7a
	db $fd                                           ; $6799: $fd
	ld e, $f9                                        ; $679a: $1e $f9
	add sp, -$61                                     ; $679c: $e8 $9f
	and [hl]                                         ; $679e: $a6
	sub $25                                          ; $679f: $d6 $25
	jp c, Jump_041_76c2                              ; $67a1: $da $c2 $76

	ld h, $d9                                        ; $67a4: $26 $d9
	ld e, h                                          ; $67a6: $5c
	di                                               ; $67a7: $f3
	cp a                                             ; $67a8: $bf
	rst $38                                          ; $67a9: $ff
	ret nc                                           ; $67aa: $d0

	xor a                                            ; $67ab: $af
	ld a, h                                          ; $67ac: $7c
	add e                                            ; $67ad: $83
	jr nc, jr_041_677f                               ; $67ae: $30 $cf

	add b                                            ; $67b0: $80
	ld sp, $334f                                     ; $67b1: $31 $4f $33
	ld c, a                                          ; $67b4: $4f
	pop af                                           ; $67b5: $f1
	rst AddAOntoHL                                          ; $67b6: $ef
	ret nz                                           ; $67b7: $c0

	rst $38                                          ; $67b8: $ff
	call z, $f4b8                                    ; $67b9: $cc $b8 $f4
	or b                                             ; $67bc: $b0
	xor h                                            ; $67bd: $ac
	ldh [$af], a                                     ; $67be: $e0 $af
	db $e4                                           ; $67c0: $e4
	rst SubAFromDE                                          ; $67c1: $df
	rst GetHLinHL                                          ; $67c2: $cf
	sbc a                                            ; $67c3: $9f
	sbc h                                            ; $67c4: $9c
	and a                                            ; $67c5: $a7
	call c, $fbdb                                    ; $67c6: $dc $db $fb
	ei                                               ; $67c9: $fb
	ld [hl], e                                       ; $67ca: $73
	inc hl                                           ; $67cb: $23
	inc de                                           ; $67cc: $13
	scf                                              ; $67cd: $37
	inc bc                                           ; $67ce: $03
	sbc a                                            ; $67cf: $9f
	ld a, l                                          ; $67d0: $7d
	ld a, l                                          ; $67d1: $7d
	sub b                                            ; $67d2: $90
	sbc [hl]                                         ; $67d3: $9e
	rst $38                                          ; $67d4: $ff
	ccf                                              ; $67d5: $3f
	ld hl, sp+$4f                                    ; $67d6: $f8 $4f
	ld hl, sp+$07                                    ; $67d8: $f8 $07
	cp b                                             ; $67da: $b8
	ld d, e                                          ; $67db: $53
	sub b                                            ; $67dc: $90
	ld a, c                                          ; $67dd: $79
	add b                                            ; $67de: $80
	ld a, [hl]                                       ; $67df: $7e
	add b                                            ; $67e0: $80
	ld a, a                                          ; $67e1: $7f
	ld [hl], a                                       ; $67e2: $77
	cp $63                                           ; $67e3: $fe $63
	rla                                              ; $67e5: $17
	ld a, a                                          ; $67e6: $7f
	or $98                                           ; $67e7: $f6 $98
	rra                                              ; $67e9: $1f
	nop                                              ; $67ea: $00
	rst JumpTable                                          ; $67eb: $c7
	nop                                              ; $67ec: $00
	pop af                                           ; $67ed: $f1
	nop                                              ; $67ee: $00
	ld hl, sp+$4d                                    ; $67ef: $f8 $4d
	adc $7f                                          ; $67f1: $ce $7f
	db $eb                                           ; $67f3: $eb
	sbc e                                            ; $67f4: $9b
	rlca                                             ; $67f5: $07
	nop                                              ; $67f6: $00
	add c                                            ; $67f7: $81
	nop                                              ; $67f8: $00
	ld a, d                                          ; $67f9: $7a
	and d                                            ; $67fa: $a2
	ld l, e                                          ; $67fb: $6b
	add sp, $67                                      ; $67fc: $e8 $67
	db $d3                                           ; $67fe: $d3
	ld a, d                                          ; $67ff: $7a
	adc d                                            ; $6800: $8a
	sbc d                                            ; $6801: $9a
	inc b                                            ; $6802: $04
	nop                                              ; $6803: $00
	pop bc                                           ; $6804: $c1
	nop                                              ; $6805: $00
	ldh a, [$4e]                                     ; $6806: $f0 $4e
	jp nc, $db7e                                     ; $6808: $d2 $7e $db

	ld b, d                                          ; $680b: $42
	ret nz                                           ; $680c: $c0

jr_041_680d:
	sbc [hl]                                         ; $680d: $9e
	db $fc                                           ; $680e: $fc
	ld c, c                                          ; $680f: $49
	ld a, [hl]                                       ; $6810: $7e
	ld [hl], a                                       ; $6811: $77
	sbc b                                            ; $6812: $98
	sbc [hl]                                         ; $6813: $9e
	adc a                                            ; $6814: $8f
	ld a, e                                          ; $6815: $7b
	sub [hl]                                         ; $6816: $96
	sbc [hl]                                         ; $6817: $9e
	pop hl                                           ; $6818: $e1
	ld a, e                                          ; $6819: $7b
	xor [hl]                                         ; $681a: $ae
	ld a, a                                          ; $681b: $7f
	db $e4                                           ; $681c: $e4
	ld c, a                                          ; $681d: $4f
	db $d3                                           ; $681e: $d3
	ld a, e                                          ; $681f: $7b
	db $e4                                           ; $6820: $e4
	add b                                            ; $6821: $80
	sbc $c3                                          ; $6822: $de $c3
	db $dd                                           ; $6824: $dd
	add e                                            ; $6825: $83
	jp c, Jump_041_7d0f                              ; $6826: $da $0f $7d

	rst FarCall                                          ; $6829: $f7
	jp c, Jump_041_7447                              ; $682a: $da $47 $74

	add e                                            ; $682d: $83
	inc e                                            ; $682e: $1c
	di                                               ; $682f: $f3
	nop                                              ; $6830: $00
	rst $38                                          ; $6831: $ff
	xor l                                            ; $6832: $ad
	ld hl, sp+$5d                                    ; $6833: $f8 $5d
	ldh [$b5], a                                     ; $6835: $e0 $b5
	ret nz                                           ; $6837: $c0

	dec h                                            ; $6838: $25
	ldh [$2d], a                                     ; $6839: $e0 $2d
	add b                                            ; $683b: $80
	ld l, l                                          ; $683c: $6d
	add b                                            ; $683d: $80
	ld a, l                                          ; $683e: $7d
	ld l, b                                          ; $683f: $68
	db $fd                                           ; $6840: $fd
	add b                                            ; $6841: $80
	sub b                                            ; $6842: $90
	ld sp, hl                                        ; $6843: $f9
	ld d, c                                          ; $6844: $51
	jp c, $de13                                      ; $6845: $da $13 $de

	inc bc                                           ; $6848: $03
	call c, $e48b                                    ; $6849: $dc $8b $e4
	and a                                            ; $684c: $a7

jr_041_684d:
	adc b                                            ; $684d: $88
	ccf                                              ; $684e: $3f
	sub h                                            ; $684f: $94
	ccf                                              ; $6850: $3f
	xor c                                            ; $6851: $a9
	cp a                                             ; $6852: $bf
	db $e3                                           ; $6853: $e3
	rst $38                                          ; $6854: $ff
	ld h, h                                          ; $6855: $64
	sbc e                                            ; $6856: $9b
	db $fc                                           ; $6857: $fc
	add e                                            ; $6858: $83
	db $fd                                           ; $6859: $fd
	add e                                            ; $685a: $83
	pop af                                           ; $685b: $f1
	adc a                                            ; $685c: $8f
	rst $38                                          ; $685d: $ff
	add a                                            ; $685e: $87
	cp l                                             ; $685f: $bd
	rst JumpTable                                          ; $6860: $c7
	add b                                            ; $6861: $80
	inc h                                            ; $6862: $24
	rst SubAFromDE                                          ; $6863: $df
	sbc c                                            ; $6864: $99
	dec b                                            ; $6865: $05
	sbc [hl]                                         ; $6866: $9e
	rlca                                             ; $6867: $07
	ld [hl], b                                       ; $6868: $70
	ccf                                              ; $6869: $3f
	ld [hl], b                                       ; $686a: $70
	rrca                                             ; $686b: $0f
	ld h, b                                          ; $686c: $60
	rra                                              ; $686d: $1f
	ret nz                                           ; $686e: $c0

	ccf                                              ; $686f: $3f
	ret nz                                           ; $6870: $c0

	rst $38                                          ; $6871: $ff
	ld a, [bc]                                       ; $6872: $0a
	rst $38                                          ; $6873: $ff
	ld h, e                                          ; $6874: $63
	and b                                            ; $6875: $a0
	ld h, [hl]                                       ; $6876: $66
	ldh [c], a                                       ; $6877: $e2
	di                                               ; $6878: $f3
	jr nz, jr_041_68ee                               ; $6879: $20 $73

	ldh [c], a                                       ; $687b: $e2
	ld [hl], a                                       ; $687c: $77
	db $e3                                           ; $687d: $e3
	ld [hl], a                                       ; $687e: $77
	jp $9936                                         ; $687f: $c3 $36 $99


	add $3f                                          ; $6882: $c6 $3f
	jp Jump_041_6fb0                                 ; $6884: $c3 $b0 $6f


	ret nz                                           ; $6887: $c0

	ld a, e                                          ; $6888: $7b
	ld a, [bc]                                       ; $6889: $0a
	sbc h                                            ; $688a: $9c
	push de                                          ; $688b: $d5
	ld a, [hl]                                       ; $688c: $7e
	xor c                                            ; $688d: $a9
	ld a, e                                          ; $688e: $7b
	db $fc                                           ; $688f: $fc
	add b                                            ; $6890: $80
	xor e                                            ; $6891: $ab
	cp $d7                                           ; $6892: $fe $d7
	ei                                               ; $6894: $fb

Jump_041_6895:
	ld e, d                                          ; $6895: $5a
	ld h, a                                          ; $6896: $67
	sub $6f                                          ; $6897: $d6 $6f
	rla                                              ; $6899: $17
	xor $97                                          ; $689a: $ee $97
	ld l, [hl]                                       ; $689c: $6e
	sub l                                            ; $689d: $95
	ld l, a                                          ; $689e: $6f
	and b                                            ; $689f: $a0
	ld e, a                                          ; $68a0: $5f
	and [hl]                                         ; $68a1: $a6
	ld e, h                                          ; $68a2: $5c
	sub $ed                                          ; $68a3: $d6 $ed
	dec sp                                           ; $68a5: $3b
	db $10                                           ; $68a6: $10
	ld a, [hl]                                       ; $68a7: $7e
	jr nc, jr_041_6919                               ; $68a8: $30 $6f

	inc e                                            ; $68aa: $1c
	ld c, e                                          ; $68ab: $4b
	ld sp, $20d8                                     ; $68ac: $31 $d8 $20
	pop de                                           ; $68af: $d1
	adc d                                            ; $68b0: $8a
	ld h, b                                          ; $68b1: $60
	ld d, c                                          ; $68b2: $51
	jr nz, jr_041_684d                               ; $68b3: $20 $98

	ld [hl], b                                       ; $68b5: $70
	dec b                                            ; $68b6: $05
	cp $95                                           ; $68b7: $fe $95
	ld l, [hl]                                       ; $68b9: $6e
	dec bc                                           ; $68ba: $0b
	db $fc                                           ; $68bb: $fc
	dec bc                                           ; $68bc: $0b
	db $fc                                           ; $68bd: $fc
	xor b                                            ; $68be: $a8
	ld e, a                                          ; $68bf: $5f

jr_041_68c0:
	dec sp                                           ; $68c0: $3b
	rst SubAFromDE                                          ; $68c1: $df
	sbc h                                            ; $68c2: $9c
	ld a, a                                          ; $68c3: $7f
	ld [hl], a                                       ; $68c4: $77
	ld hl, sp+$42                                    ; $68c5: $f8 $42
	ret nc                                           ; $68c7: $d0

	ld c, e                                          ; $68c8: $4b
	inc a                                            ; $68c9: $3c
	adc [hl]                                         ; $68ca: $8e
	inc sp                                           ; $68cb: $33
	ld [hl], b                                       ; $68cc: $70
	nop                                              ; $68cd: $00
	jr nc, jr_041_68f7                               ; $68ce: $30 $27

	rst FarCall                                          ; $68d0: $f7
	inc hl                                           ; $68d1: $23
	rst FarCall                                          ; $68d2: $f7
	ld hl, $3cf3                                     ; $68d3: $21 $f3 $3c
	db $e4                                           ; $68d6: $e4
	ld [hl-], a                                      ; $68d7: $32
	and $30                                          ; $68d8: $e6 $30
	ldh [$80], a                                     ; $68da: $e0 $80
	cp $95                                           ; $68dc: $fe $95
	ld l, [hl]                                       ; $68de: $6e
	jr nc, jr_041_68c0                               ; $68df: $30 $df

	adc $dd                                          ; $68e1: $ce $dd
	ld a, l                                          ; $68e3: $7d
	ld a, a                                          ; $68e4: $7f
	jr c, jr_041_68e7                                ; $68e5: $38 $00

jr_041_68e7:
	ld b, b                                          ; $68e7: $40
	db $fd                                           ; $68e8: $fd
	sub l                                            ; $68e9: $95
	ld e, h                                          ; $68ea: $5c
	ld c, $4f                                        ; $68eb: $0e $4f
	db $ec                                           ; $68ed: $ec

jr_041_68ee:
	ld l, [hl]                                       ; $68ee: $6e
	rst $38                                          ; $68ef: $ff
	rst SubAFromDE                                          ; $68f0: $df
	dec a                                            ; $68f1: $3d
	ld d, l                                          ; $68f2: $55
	jp c, $f177                                      ; $68f3: $da $77 $f1

	ld a, [hl]                                       ; $68f6: $7e

jr_041_68f7:
	and d                                            ; $68f7: $a2
	sub l                                            ; $68f8: $95
	and a                                            ; $68f9: $a7
	ldh a, [$fc]                                     ; $68fa: $f0 $fc
	ret nc                                           ; $68fc: $d0

	cp b                                             ; $68fd: $b8
	db $f4                                           ; $68fe: $f4
	ldh a, [rAUDENA]                                 ; $68ff: $f0 $26
	ld d, b                                          ; $6901: $50
	and a                                            ; $6902: $a7
	ld a, e                                          ; $6903: $7b
	di                                               ; $6904: $f3
	ld a, [hl]                                       ; $6905: $7e
	ld e, h                                          ; $6906: $5c
	ld [hl], a                                       ; $6907: $77
	and l                                            ; $6908: $a5
	sbc l                                            ; $6909: $9d
	add b                                            ; $690a: $80
	ccf                                              ; $690b: $3f
	ld a, e                                          ; $690c: $7b
	push af                                          ; $690d: $f5
	sbc e                                            ; $690e: $9b
	ld bc, $0002                                     ; $690f: $01 $02 $00
	ldh [$7a], a                                     ; $6912: $e0 $7a
	call c, $e04e                                    ; $6914: $dc $4e $e0
	ld a, a                                          ; $6917: $7f
	rst SubAFromBC                                          ; $6918: $e7

jr_041_6919:
	ld b, [hl]                                       ; $6919: $46
	sbc a                                            ; $691a: $9f
	ld a, [hl]                                       ; $691b: $7e
	or h                                             ; $691c: $b4
	sbc [hl]                                         ; $691d: $9e
	jp Jump_041_625e                                 ; $691e: $c3 $5e $62


	ld d, e                                          ; $6921: $53
	sub $7e                                          ; $6922: $d6 $7e
	ld [hl], e                                       ; $6924: $73
	ld a, d                                          ; $6925: $7a
	sbc d                                            ; $6926: $9a
	sub [hl]                                         ; $6927: $96
	rst GetHLinHL                                          ; $6928: $cf
	add b                                            ; $6929: $80
	rst $38                                          ; $692a: $ff
	and [hl]                                         ; $692b: $a6
	rlca                                             ; $692c: $07
	db $fc                                           ; $692d: $fc
	ld b, $f8                                        ; $692e: $06 $f8
	ld bc, $e06b                                     ; $6930: $01 $6b $e0
	add b                                            ; $6933: $80
	push de                                          ; $6934: $d5
	cp a                                             ; $6935: $bf
	xor c                                            ; $6936: $a9
	ld a, [hl]                                       ; $6937: $7e
	db $d3                                           ; $6938: $d3
	ld a, [hl]                                       ; $6939: $7e
	ld h, d                                          ; $693a: $62
	inc a                                            ; $693b: $3c
	sub $3c                                          ; $693c: $d6 $3c
	rrca                                             ; $693e: $0f
	di                                               ; $693f: $f3
	add hl, bc                                       ; $6940: $09
	ld sp, hl                                        ; $6941: $f9
	ld b, $fc                                        ; $6942: $06 $fc
	call c, $dc07                                    ; $6944: $dc $07 $dc
	ld b, a                                          ; $6947: $47
	reti                                             ; $6948: $d9


	rrca                                             ; $6949: $0f
	jp c, $dd0f                                      ; $694a: $da $0f $dd

	rrca                                             ; $694d: $0f
	jp c, $dd8f                                      ; $694e: $da $8f $dd

	rlca                                             ; $6951: $07
	ld a, [$4699]                                    ; $6952: $fa $99 $46
	ld d, h                                          ; $6955: $54
	rst $38                                          ; $6956: $ff
	xor d                                            ; $6957: $aa
	rst $38                                          ; $6958: $ff
	ld d, l                                          ; $6959: $55
	ld a, e                                          ; $695a: $7b
	db $fc                                           ; $695b: $fc
	add d                                            ; $695c: $82
	ld d, b                                          ; $695d: $50
	rst $38                                          ; $695e: $ff
	and b                                            ; $695f: $a0
	rst $38                                          ; $6960: $ff
	ld b, b                                          ; $6961: $40
	rst $38                                          ; $6962: $ff
	add b                                            ; $6963: $80
	rst $38                                          ; $6964: $ff
	ld [hl], $e3                                     ; $6965: $36 $e3
	scf                                              ; $6967: $37
	db $d3                                           ; $6968: $d3
	inc [hl]                                         ; $6969: $34
	pop bc                                           ; $696a: $c1
	dec e                                            ; $696b: $1d
	db $e3                                           ; $696c: $e3
	ld e, $ff                                        ; $696d: $1e $ff
	inc de                                           ; $696f: $13
	rst FarCall                                          ; $6970: $f7
	ld a, [de]                                       ; $6971: $1a
	rst $38                                          ; $6972: $ff
	inc b                                            ; $6973: $04
	rst $38                                          ; $6974: $ff
	and [hl]                                         ; $6975: $a6
	rst $38                                          ; $6976: $ff
	ld b, e                                          ; $6977: $43
	rst $38                                          ; $6978: $ff
	add c                                            ; $6979: $81
	ld [hl], a                                       ; $697a: $77
	and $8c                                          ; $697b: $e6 $8c
	rst SubAFromDE                                          ; $697d: $df
	nop                                              ; $697e: $00

Call_041_697f:
	rst SubAFromBC                                          ; $697f: $e7
	nop                                              ; $6980: $00
	di                                               ; $6981: $f3
	nop                                              ; $6982: $00
	db $fc                                           ; $6983: $fc
	xor $85                                          ; $6984: $ee $85
	inc a                                            ; $6986: $3c
	db $e3                                           ; $6987: $e3
	db $fc                                           ; $6988: $fc
	dec sp                                           ; $6989: $3b
	ld l, [hl]                                       ; $698a: $6e
	push hl                                          ; $698b: $e5
	ld a, [hl-]                                      ; $698c: $3a
	jp $f10e                                         ; $698d: $c3 $0e $f1


	ld [hl], a                                       ; $6990: $77
	and b                                            ; $6991: $a0
	add [hl]                                         ; $6992: $86
	add hl, de                                       ; $6993: $19
	ldh [$08], a                                     ; $6994: $e0 $08
	ld hl, sp+$18                                    ; $6996: $f8 $18
	ldh a, [$3c]                                     ; $6998: $f0 $3c
	ret nz                                           ; $699a: $c0

	inc l                                            ; $699b: $2c
	ldh [$2c], a                                     ; $699c: $e0 $2c
	ldh [$6c], a                                     ; $699e: $e0 $6c
	xor b                                            ; $69a0: $a8
	ld a, c                                          ; $69a1: $79
	ldh [$e7], a                                     ; $69a2: $e0 $e7
	ld a, h                                          ; $69a4: $7c
	ldh [$7f], a                                     ; $69a5: $e0 $7f
	ret nc                                           ; $69a7: $d0

	ld a, a                                          ; $69a8: $7f
	ld [$d57f], a                                    ; $69a9: $ea $7f $d5
	ld [hl], e                                       ; $69ac: $73

jr_041_69ad:
	db $fc                                           ; $69ad: $fc
	sbc l                                            ; $69ae: $9d
	xor d                                            ; $69af: $aa
	ld a, a                                          ; $69b0: $7f
	ld b, d                                          ; $69b1: $42
	inc c                                            ; $69b2: $0c
	ld [hl], h                                       ; $69b3: $74
	ld d, l                                          ; $69b4: $55
	sbc [hl]                                         ; $69b5: $9e
	rst GetHLinHL                                          ; $69b6: $cf
	ld a, b                                          ; $69b7: $78
	and [hl]                                         ; $69b8: $a6
	ld l, e                                          ; $69b9: $6b
	ld a, $9d                                        ; $69ba: $3e $9d
	ld a, [bc]                                       ; $69bc: $0a
	ldh [$5b], a                                     ; $69bd: $e0 $5b
	add sp, $7f                                      ; $69bf: $e8 $7f
	inc h                                            ; $69c1: $24
	sbc h                                            ; $69c2: $9c
	db $e3                                           ; $69c3: $e3
	xor b                                            ; $69c4: $a8
	rlca                                             ; $69c5: $07
	ld [hl], a                                       ; $69c6: $77
	db $f4                                           ; $69c7: $f4
	adc e                                            ; $69c8: $8b
	inc a                                            ; $69c9: $3c
	rst $38                                          ; $69ca: $ff
	ld b, [hl]                                       ; $69cb: $46
	rst $38                                          ; $69cc: $ff
	add a                                            ; $69cd: $87
	rst $38                                          ; $69ce: $ff
	cp c                                             ; $69cf: $b9
	rst $38                                          ; $69d0: $ff
	db $e4                                           ; $69d1: $e4
	ei                                               ; $69d2: $fb
	add b                                            ; $69d3: $80
	rst $38                                          ; $69d4: $ff
	nop                                              ; $69d5: $00
	ld c, a                                          ; $69d6: $4f
	nop                                              ; $69d7: $00
	ld h, e                                          ; $69d8: $63
	nop                                              ; $69d9: $00
	ld a, b                                          ; $69da: $78
	nop                                              ; $69db: $00
	ld a, [hl]                                       ; $69dc: $7e
	ld a, e                                          ; $69dd: $7b
	inc e                                            ; $69de: $1c
	ld [hl], a                                       ; $69df: $77
	cp $53                                           ; $69e0: $fe $53
	jp nc, $f842                                     ; $69e2: $d2 $42 $f8

	halt                                             ; $69e5: $76
	ldh [$7e], a                                     ; $69e6: $e0 $7e
	ld a, [$e877]                                    ; $69e8: $fa $77 $e8
	dec a                                            ; $69eb: $3d
	sub h                                            ; $69ec: $94
	ld [hl], a                                       ; $69ed: $77
	adc $7f                                          ; $69ee: $ce $7f
	db $e4                                           ; $69f0: $e4
	ld b, a                                          ; $69f1: $47
	ld [hl], d                                       ; $69f2: $72
	ld [hl], a                                       ; $69f3: $77
	sub $35                                          ; $69f4: $d6 $35
	ld c, [hl]                                       ; $69f6: $4e
	ld a, [hl]                                       ; $69f7: $7e
	sbc d                                            ; $69f8: $9a
	ld [hl], b                                       ; $69f9: $70
	db $e4                                           ; $69fa: $e4
	sbc [hl]                                         ; $69fb: $9e
	inc bc                                           ; $69fc: $03
	ld c, e                                          ; $69fd: $4b
	ld b, h                                          ; $69fe: $44
	sub a                                            ; $69ff: $97
	db $fd                                           ; $6a00: $fd
	ld c, a                                          ; $6a01: $4f
	ld e, [hl]                                       ; $6a02: $5e
	rst JumpTable                                          ; $6a03: $c7
	halt                                             ; $6a04: $76
	db $e3                                           ; $6a05: $e3
	inc e                                            ; $6a06: $1c
	ei                                               ; $6a07: $fb
	ld e, e                                          ; $6a08: $5b
	jp nc, $9f9e                                     ; $6a09: $d2 $9e $9f

	ld [hl], e                                       ; $6a0c: $73
	jr nc, jr_041_69ad                               ; $6a0d: $30 $9e

	ld sp, hl                                        ; $6a0f: $f9
	ld b, e                                          ; $6a10: $43
	halt                                             ; $6a11: $76
	ld l, a                                          ; $6a12: $6f
	adc [hl]                                         ; $6a13: $8e
	ccf                                              ; $6a14: $3f
	ld [$bf9e], a                                    ; $6a15: $ea $9e $bf
	ld a, e                                          ; $6a18: $7b
	ret nc                                           ; $6a19: $d0

	ld a, [hl]                                       ; $6a1a: $7e
	or [hl]                                          ; $6a1b: $b6
	ld a, a                                          ; $6a1c: $7f
	ret nc                                           ; $6a1d: $d0

	ld [hl], e                                       ; $6a1e: $73
	ld e, [hl]                                       ; $6a1f: $5e
	add b                                            ; $6a20: $80
	add hl, de                                       ; $6a21: $19
	ret c                                            ; $6a22: $d8

	ld e, l                                          ; $6a23: $5d
	add sp, $75                                      ; $6a24: $e8 $75
	xor b                                            ; $6a26: $a8
	rra                                              ; $6a27: $1f
	and h                                            ; $6a28: $a4
	ld c, l                                          ; $6a29: $4d
	and [hl]                                         ; $6a2a: $a6

Call_041_6a2b:
	ld l, c                                          ; $6a2b: $69
	sbc h                                            ; $6a2c: $9c
	ld c, $30                                        ; $6a2d: $0e $30
	rlca                                             ; $6a2f: $07
	adc b                                            ; $6a30: $88
	call nc, $aa7f                                   ; $6a31: $d4 $7f $aa

jr_041_6a34:
	rst $38                                          ; $6a34: $ff
	call nc, $a8ff                                   ; $6a35: $d4 $ff $a8
	rst $38                                          ; $6a38: $ff
	ret nc                                           ; $6a39: $d0

	rst $38                                          ; $6a3a: $ff
	ldh [$7f], a                                     ; $6a3b: $e0 $7f
	jr nz, jr_041_6a7e                               ; $6a3d: $20 $3f

	ret nz                                           ; $6a3f: $c0

	ld a, a                                          ; $6a40: $7f
	cp [hl]                                          ; $6a41: $be
	ld a, a                                          ; $6a42: $7f
	cp $7f                                           ; $6a43: $fe $7f
	and b                                            ; $6a45: $a0
	add hl, sp                                       ; $6a46: $39
	adc b                                            ; $6a47: $88
	ld h, d                                          ; $6a48: $62
	cp b                                             ; $6a49: $b8
	ld a, a                                          ; $6a4a: $7f
	cp b                                             ; $6a4b: $b8
	ld [hl], a                                       ; $6a4c: $77
	db $f4                                           ; $6a4d: $f4
	ld a, a                                          ; $6a4e: $7f
	sbc d                                            ; $6a4f: $9a
	ld a, a                                          ; $6a50: $7f
	ldh [$73], a                                     ; $6a51: $e0 $73
	jr c, jr_041_6a34                                ; $6a53: $38 $df

	db $e3                                           ; $6a55: $e3
	sub d                                            ; $6a56: $92
	rst FarCall                                          ; $6a57: $f7
	db $e3                                           ; $6a58: $e3
	ccf                                              ; $6a59: $3f
	rst AddAOntoHL                                          ; $6a5a: $ef
	dec hl                                           ; $6a5b: $2b
	ld h, b                                          ; $6a5c: $60
	ld a, h                                          ; $6a5d: $7c
	ld l, $02                                        ; $6a5e: $2e $02
	ld a, $44                                        ; $6a60: $3e $44
	ld a, $bd                                        ; $6a62: $3e $bd
	ld h, [hl]                                       ; $6a64: $66
	jp z, $b665                                      ; $6a65: $ca $65 $b6

	ccf                                              ; $6a68: $3f
	ld [hl], b                                       ; $6a69: $70
	ld h, $b8                                        ; $6a6a: $26 $b8
	ld h, a                                          ; $6a6c: $67
	cp $77                                           ; $6a6d: $fe $77
	sbc [hl]                                         ; $6a6f: $9e
	ld a, $de                                        ; $6a70: $3e $de
	ld l, [hl]                                       ; $6a72: $6e
	or h                                             ; $6a73: $b4
	ld a, a                                          ; $6a74: $7f
	ld a, [hl-]                                      ; $6a75: $3a
	ld c, l                                          ; $6a76: $4d
	ld d, b                                          ; $6a77: $50
	scf                                              ; $6a78: $37
	cp $74                                           ; $6a79: $fe $74
	jp z, Jump_041_706e                              ; $6a7b: $ca $6e $70

jr_041_6a7e:
	ld [hl], $9a                                     ; $6a7e: $36 $9a
	ld a, $70                                        ; $6a80: $3e $70
	ld a, l                                          ; $6a82: $7d
	sbc d                                            ; $6a83: $9a
	ld [hl], a                                       ; $6a84: $77
	inc d                                            ; $6a85: $14
	ccf                                              ; $6a86: $3f
	ld e, d                                          ; $6a87: $5a
	halt                                             ; $6a88: $76
	ld a, [$9037]                                    ; $6a89: $fa $37 $90
	ld a, a                                          ; $6a8c: $7f
	and h                                            ; $6a8d: $a4
	ccf                                              ; $6a8e: $3f
	jp nc, Jump_041_6c76                             ; $6a8f: $d2 $76 $6c

	ld [hl], a                                       ; $6a92: $77
	jp nc, $e637                                     ; $6a93: $d2 $37 $e6

	ld b, d                                          ; $6a96: $42
	ld e, b                                          ; $6a97: $58
	add h                                            ; $6a98: $84
	ld b, b                                          ; $6a99: $40
	ccf                                              ; $6a9a: $3f
	and c                                            ; $6a9b: $a1
	rrca                                             ; $6a9c: $0f
	dec l                                            ; $6a9d: $2d
	jp $e317                                         ; $6a9e: $c3 $17 $e3


	inc bc                                           ; $6aa1: $03
	ei                                               ; $6aa2: $fb
	inc bc                                           ; $6aa3: $03
	rst $38                                          ; $6aa4: $ff
	inc bc                                           ; $6aa5: $03
	rst $38                                          ; $6aa6: $ff
	dec c                                            ; $6aa7: $0d
	nop                                              ; $6aa8: $00
	ret nz                                           ; $6aa9: $c0

	add b                                            ; $6aaa: $80
	ccf                                              ; $6aab: $3f
	db $fc                                           ; $6aac: $fc
	rra                                              ; $6aad: $1f
	db $fd                                           ; $6aae: $fd
	rrca                                             ; $6aaf: $0f
	rst $38                                          ; $6ab0: $ff
	jr @+$01                                         ; $6ab1: $18 $ff

	ld bc, $fe7b                                     ; $6ab3: $01 $7b $fe
	sbc h                                            ; $6ab6: $9c
	ld [bc], a                                       ; $6ab7: $02
	pop af                                           ; $6ab8: $f1
	dec b                                            ; $6ab9: $05
	ld a, b                                          ; $6aba: $78
	or h                                             ; $6abb: $b4
	sbc h                                            ; $6abc: $9c
	ld a, [bc]                                       ; $6abd: $0a
	rst $38                                          ; $6abe: $ff
	dec d                                            ; $6abf: $15
	ld l, b                                          ; $6ac0: $68
	ret c                                            ; $6ac1: $d8

	ld a, a                                          ; $6ac2: $7f
	ret nc                                           ; $6ac3: $d0

	ld a, h                                          ; $6ac4: $7c
	sub $94                                          ; $6ac5: $d6 $94
	add sp, $3f                                      ; $6ac7: $e8 $3f
	db $f4                                           ; $6ac9: $f4
	sbc a                                            ; $6aca: $9f
	ld e, h                                          ; $6acb: $5c
	db $e3                                           ; $6acc: $e3
	xor c                                            ; $6acd: $a9
	ldh a, [rHDMA2]                                  ; $6ace: $f0 $52
	db $fc                                           ; $6ad0: $fc
	and b                                            ; $6ad1: $a0
	ld b, a                                          ; $6ad2: $47
	and d                                            ; $6ad3: $a2
	ld a, a                                          ; $6ad4: $7f
	inc l                                            ; $6ad5: $2c
	rla                                              ; $6ad6: $17
	ldh a, [rPCM34]                                  ; $6ad7: $f0 $77
	cp $25                                           ; $6ad9: $fe $25
	ld l, b                                          ; $6adb: $68
	ld [hl], a                                       ; $6adc: $77
	inc h                                            ; $6add: $24
	scf                                              ; $6ade: $37
	db $e4                                           ; $6adf: $e4
	ld b, a                                          ; $6ae0: $47
	ret nz                                           ; $6ae1: $c0

	ld [hl], l                                       ; $6ae2: $75
	ld l, d                                          ; $6ae3: $6a
	ld c, e                                          ; $6ae4: $4b
	ret c                                            ; $6ae5: $d8

	ld a, a                                          ; $6ae6: $7f
	ld a, $96                                        ; $6ae7: $3e $96
	jr nc, jr_041_6afa                               ; $6ae9: $30 $0f

	ld b, b                                          ; $6aeb: $40
	adc a                                            ; $6aec: $8f
	daa                                              ; $6aed: $27
	jp $f602                                         ; $6aee: $c3 $02 $f6


	rlca                                             ; $6af1: $07
	ld e, e                                          ; $6af2: $5b
	inc h                                            ; $6af3: $24
	sbc [hl]                                         ; $6af4: $9e
	ret nz                                           ; $6af5: $c0

	ld a, c                                          ; $6af6: $79
	cp [hl]                                          ; $6af7: $be
	sbc l                                            ; $6af8: $9d
	ld h, b                                          ; $6af9: $60

jr_041_6afa:
	ld a, a                                          ; $6afa: $7f
	ld a, [hl-]                                      ; $6afb: $3a
	cp $7f                                           ; $6afc: $fe $7f
	ld l, h                                          ; $6afe: $6c

Call_041_6aff:
	ld l, l                                          ; $6aff: $6d
	ret z                                            ; $6b00: $c8

	cpl                                              ; $6b01: $2f
	halt                                             ; $6b02: $76
	ld b, a                                          ; $6b03: $47
	sub b                                            ; $6b04: $90
	ld a, [hl]                                       ; $6b05: $7e
	or [hl]                                          ; $6b06: $b6
	ld a, [hl]                                       ; $6b07: $7e
	ld l, [hl]                                       ; $6b08: $6e
	ld [hl], $b6                                     ; $6b09: $36 $b6
	halt                                             ; $6b0b: $76
	ld l, [hl]                                       ; $6b0c: $6e
	halt                                             ; $6b0d: $76
	ld d, h                                          ; $6b0e: $54
	ld [hl], e                                       ; $6b0f: $73
	ldh a, [c]                                       ; $6b10: $f2
	sbc h                                            ; $6b11: $9c
	inc bc                                           ; $6b12: $03
	cp $07                                           ; $6b13: $fe $07
	ld a, b                                          ; $6b15: $78
	sub $7e                                          ; $6b16: $d6 $7e
	jp nc, $f67f                                     ; $6b18: $d2 $7f $f6

	adc a                                            ; $6b1b: $8f
	cp $ff                                           ; $6b1c: $fe $ff
	rst $38                                          ; $6b1e: $ff
	cp $7a                                           ; $6b1f: $fe $7a
	adc h                                            ; $6b21: $8c
	add d                                            ; $6b22: $82
	rrca                                             ; $6b23: $0f
	sub l                                            ; $6b24: $95
	rrca                                             ; $6b25: $0f
	ld d, d                                          ; $6b26: $52
	adc a                                            ; $6b27: $8f
	ld b, l                                          ; $6b28: $45
	sbc a                                            ; $6b29: $9f
	ld c, d                                          ; $6b2a: $4a
	rst SubAFromDE                                          ; $6b2b: $df
	halt                                             ; $6b2c: $76
	call z, $5591                                    ; $6b2d: $cc $91 $55
	ld a, a                                          ; $6b30: $7f
	ld a, [hl+]                                      ; $6b31: $2a
	rra                                              ; $6b32: $1f
	ld l, h                                          ; $6b33: $6c
	rst JumpTable                                          ; $6b34: $c7
	or d                                             ; $6b35: $b2
	pop hl                                           ; $6b36: $e1
	ld b, b                                          ; $6b37: $40
	ld hl, sp-$60                                    ; $6b38: $f8 $a0
	cp $40                                           ; $6b3a: $fe $40
	rst $38                                          ; $6b3c: $ff
	ld a, b                                          ; $6b3d: $78
	ld l, $57                                        ; $6b3e: $2e $57
	cp d                                             ; $6b40: $ba
	ld b, l                                          ; $6b41: $45
	inc h                                            ; $6b42: $24
	sub b                                            ; $6b43: $90
	rrca                                             ; $6b44: $0f
	nop                                              ; $6b45: $00
	rlca                                             ; $6b46: $07
	nop                                              ; $6b47: $00
	inc bc                                           ; $6b48: $03
	nop                                              ; $6b49: $00
	ld bc, $8000                                     ; $6b4a: $01 $00 $80
	nop                                              ; $6b4d: $00
	ldh [$80], a                                     ; $6b4e: $e0 $80
	ld [hl], b                                       ; $6b50: $70
	ret nz                                           ; $6b51: $c0

	jr c, jr_041_6ba7                                ; $6b52: $38 $53

	ld h, d                                          ; $6b54: $62
	ld a, a                                          ; $6b55: $7f
	ld b, [hl]                                       ; $6b56: $46
	ld a, a                                          ; $6b57: $7f
	db $e4                                           ; $6b58: $e4
	dec b                                            ; $6b59: $05
	sub b                                            ; $6b5a: $90
	ld d, $b4                                        ; $6b5b: $16 $b4
	ld d, c                                          ; $6b5d: $51
	sub b                                            ; $6b5e: $90
	add b                                            ; $6b5f: $80
	rlca                                             ; $6b60: $07
	ld hl, sp+$0f                                    ; $6b61: $f8 $0f
	ldh a, [rTIMA]                                   ; $6b63: $f0 $05
	ld hl, sp+$05                                    ; $6b65: $f8 $05
	cp $0c                                           ; $6b67: $fe $0c
	rst $38                                          ; $6b69: $ff
	rrca                                             ; $6b6a: $0f
	rst $38                                          ; $6b6b: $ff
	ccf                                              ; $6b6c: $3f
	rst AddAOntoHL                                          ; $6b6d: $ef
	cp $0b                                           ; $6b6e: $fe $0b
	ld a, d                                          ; $6b70: $7a
	add a                                            ; $6b71: $87
	ldh a, [c]                                       ; $6b72: $f2
	rlca                                             ; $6b73: $07
	rst FarCall                                          ; $6b74: $f7
	dec bc                                           ; $6b75: $0b
	ldh [rIE], a                                     ; $6b76: $e0 $ff
	ldh a, [$cf]                                     ; $6b78: $f0 $cf
	call z, $92c3                                    ; $6b7a: $cc $c3 $92
	pop hl                                           ; $6b7d: $e1
	ret z                                            ; $6b7e: $c8

	sbc b                                            ; $6b7f: $98
	ld sp, $8cf2                                     ; $6b80: $31 $f2 $8c
	cp c                                             ; $6b83: $b9
	ld b, [hl]                                       ; $6b84: $46
	db $fc                                           ; $6b85: $fc
	inc bc                                           ; $6b86: $03
	ld [bc], a                                       ; $6b87: $02
	ldh [$2d], a                                     ; $6b88: $e0 $2d
	ld d, b                                          ; $6b8a: $50
	ld h, l                                          ; $6b8b: $65
	ld a, [hl]                                       ; $6b8c: $7e
	dec a                                            ; $6b8d: $3d
	ld d, b                                          ; $6b8e: $50
	ld h, $b6                                        ; $6b8f: $26 $b6
	ld l, d                                          ; $6b91: $6a
	sbc h                                            ; $6b92: $9c
	sbc b                                            ; $6b93: $98
	ld h, l                                          ; $6b94: $65
	cp a                                             ; $6b95: $bf
	ld l, d                                          ; $6b96: $6a
	sbc a                                            ; $6b97: $9f
	add l                                            ; $6b98: $85
	rst $38                                          ; $6b99: $ff
	ld [$9a79], a                                    ; $6b9a: $ea $79 $9a
	sbc c                                            ; $6b9d: $99
	ld a, b                                          ; $6b9e: $78
	rst $38                                          ; $6b9f: $ff
	ld e, b                                          ; $6ba0: $58
	ccf                                              ; $6ba1: $3f
	ld b, b                                          ; $6ba2: $40
	sbc a                                            ; $6ba3: $9f
	ld c, d                                          ; $6ba4: $4a
	ret nc                                           ; $6ba5: $d0

	ld a, a                                          ; $6ba6: $7f

jr_041_6ba7:
	ldh a, [c]                                       ; $6ba7: $f2
	sub a                                            ; $6ba8: $97
	rrca                                             ; $6ba9: $0f
	inc h                                            ; $6baa: $24
	jp $f001                                         ; $6bab: $c3 $01 $f0


	nop                                              ; $6bae: $00
	db $fc                                           ; $6baf: $fc
	ld bc, $b23c                                     ; $6bb0: $01 $3c $b2
	sub e                                            ; $6bb3: $93
	add a                                            ; $6bb4: $87
	nop                                              ; $6bb5: $00
	pop hl                                           ; $6bb6: $e1
	nop                                              ; $6bb7: $00
	ld hl, sp-$10                                    ; $6bb8: $f8 $f0
	inc c                                            ; $6bba: $0c
	ld hl, sp+$07                                    ; $6bbb: $f8 $07
	db $fc                                           ; $6bbd: $fc
	inc bc                                           ; $6bbe: $03
	cp $76                                           ; $6bbf: $fe $76
	ld [hl], l                                       ; $6bc1: $75
	ld [hl], e                                       ; $6bc2: $73
	cp $6a                                           ; $6bc3: $fe $6a
	or h                                             ; $6bc5: $b4
	sbc [hl]                                         ; $6bc6: $9e
	ret nz                                           ; $6bc7: $c0

	ld l, [hl]                                       ; $6bc8: $6e
	or d                                             ; $6bc9: $b2
	sbc l                                            ; $6bca: $9d
	ldh [rAUD3HIGH], a                               ; $6bcb: $e0 $1e
	ld h, e                                          ; $6bcd: $63
	adc h                                            ; $6bce: $8c
	ld a, a                                          ; $6bcf: $7f
	ret nc                                           ; $6bd0: $d0

	ld l, [hl]                                       ; $6bd1: $6e
	sub [hl]                                         ; $6bd2: $96
	ld b, $b0                                        ; $6bd3: $06 $b0
	ld [hl], a                                       ; $6bd5: $77
	inc a                                            ; $6bd6: $3c
	ld e, e                                          ; $6bd7: $5b
	sub h                                            ; $6bd8: $94
	ld a, [hl]                                       ; $6bd9: $7e
	call z, $1b80                                    ; $6bda: $cc $80 $1b
	ldh a, [rSCX]                                    ; $6bdd: $f0 $43
	jr c, jr_041_6c1e                                ; $6bdf: $38 $3d

	ld c, [hl]                                       ; $6be1: $4e
	ld a, e                                          ; $6be2: $7b
	sbc a                                            ; $6be3: $9f
	ld e, [hl]                                       ; $6be4: $5e
	sbc c                                            ; $6be5: $99
	rst JumpTable                                          ; $6be6: $c7
	rra                                              ; $6be7: $1f
	sbc a                                            ; $6be8: $9f
	inc bc                                           ; $6be9: $03
	rra                                              ; $6bea: $1f
	db $e3                                           ; $6beb: $e3
	ei                                               ; $6bec: $fb
	rlca                                             ; $6bed: $07
	ld a, [$e407]                                    ; $6bee: $fa $07 $e4
	rra                                              ; $6bf1: $1f
	inc e                                            ; $6bf2: $1c
	rst $38                                          ; $6bf3: $ff
	cp h                                             ; $6bf4: $bc
	ld a, a                                          ; $6bf5: $7f
	ld hl, sp-$01                                    ; $6bf6: $f8 $ff
	call c, Call_041_78f3                            ; $6bf8: $dc $f3 $78
	add b                                            ; $6bfb: $80
	add a                                            ; $6bfc: $87
	cp [hl]                                          ; $6bfd: $be
	pop bc                                           ; $6bfe: $c1
	rrca                                             ; $6bff: $0f
	ldh a, [rTAC]                                    ; $6c00: $f0 $07
	ld hl, sp+$03                                    ; $6c02: $f8 $03
	db $fc                                           ; $6c04: $fc
	inc bc                                           ; $6c05: $03
	db $fd                                           ; $6c06: $fd
	add hl, de                                       ; $6c07: $19
	ldh a, [$30]                                     ; $6c08: $f0 $30
	ldh [rAUDVOL], a                                 ; $6c0a: $e0 $24
	jp $e310                                         ; $6c0c: $c3 $10 $e3


	add h                                            ; $6c0f: $84
	ld a, b                                          ; $6c10: $78
	ldh [c], a                                       ; $6c11: $e2
	inc e                                            ; $6c12: $1c
	ldh a, [rIF]                                     ; $6c13: $f0 $0f
	ld hl, sp+$07                                    ; $6c15: $f8 $07
	ld a, b                                          ; $6c17: $78
	add a                                            ; $6c18: $87
	jr nc, jr_041_6c6a                               ; $6c19: $30 $4f

	ld e, e                                          ; $6c1b: $5b
	ld d, b                                          ; $6c1c: $50
	ld a, [hl]                                       ; $6c1d: $7e

jr_041_6c1e:
	or h                                             ; $6c1e: $b4
	ld a, l                                          ; $6c1f: $7d
	ld a, d                                          ; $6c20: $7a
	ld l, c                                          ; $6c21: $69
	ret nz                                           ; $6c22: $c0

	ld e, e                                          ; $6c23: $5b
	cp $3e                                           ; $6c24: $fe $3e
	or [hl]                                          ; $6c26: $b6
	ld a, a                                          ; $6c27: $7f
	ld d, h                                          ; $6c28: $54
	ld bc, $4250                                     ; $6c29: $01 $50 $42
	ld [hl], b                                       ; $6c2c: $70
	ld b, a                                          ; $6c2d: $47
	ld [$5265], a                                    ; $6c2e: $ea $65 $52
	ccf                                              ; $6c31: $3f
	and $4b                                          ; $6c32: $e6 $4b
	sub b                                            ; $6c34: $90
	ld d, h                                          ; $6c35: $54
	nop                                              ; $6c36: $00
	sbc d                                            ; $6c37: $9a
	inc sp                                           ; $6c38: $33
	ld h, l                                          ; $6c39: $65
	ld b, l                                          ; $6c3a: $45
	ld h, h                                          ; $6c3b: $64
	ld h, h                                          ; $6c3c: $64
	call c, $9c33                                    ; $6c3d: $dc $33 $9c
	scf                                              ; $6c40: $37
	ld b, [hl]                                       ; $6c41: $46
	ld b, h                                          ; $6c42: $44
	sbc $46                                          ; $6c43: $de $46
	db $dd                                           ; $6c45: $dd
	inc sp                                           ; $6c46: $33
	sbc c                                            ; $6c47: $99
	ld [hl], $44                                     ; $6c48: $36 $44
	ld h, [hl]                                       ; $6c4a: $66
	ld b, [hl]                                       ; $6c4b: $46
	ld b, h                                          ; $6c4c: $44
	ld h, a                                          ; $6c4d: $67
	ld [hl], a                                       ; $6c4e: $77
	push af                                          ; $6c4f: $f5
	sbc b                                            ; $6c50: $98
	dec [hl]                                         ; $6c51: $35
	ld d, h                                          ; $6c52: $54
	ld b, h                                          ; $6c53: $44
	ld h, a                                          ; $6c54: $67
	ld h, h                                          ; $6c55: $64
	ld b, a                                          ; $6c56: $47
	ld h, l                                          ; $6c57: $65
	db $dd                                           ; $6c58: $dd
	inc sp                                           ; $6c59: $33
	adc [hl]                                         ; $6c5a: $8e
	dec [hl]                                         ; $6c5b: $35
	ld [hl], a                                       ; $6c5c: $77
	ld b, l                                          ; $6c5d: $45
	ld [hl], l                                       ; $6c5e: $75
	ld b, a                                          ; $6c5f: $47
	ld b, e                                          ; $6c60: $43
	ld [hl], $66                                     ; $6c61: $36 $66
	ld h, e                                          ; $6c63: $63
	inc sp                                           ; $6c64: $33
	inc sp                                           ; $6c65: $33
	ld d, l                                          ; $6c66: $55
	ld [hl], e                                       ; $6c67: $73
	ld d, e                                          ; $6c68: $53
	ld d, a                                          ; $6c69: $57

jr_041_6c6a:
	ld d, e                                          ; $6c6a: $53
	ld [hl], $7b                                     ; $6c6b: $36 $7b
	rst FarCall                                          ; $6c6d: $f7
	ld a, a                                          ; $6c6e: $7f
	db $eb                                           ; $6c6f: $eb
	sbc [hl]                                         ; $6c70: $9e
	ld d, e                                          ; $6c71: $53
	ld [hl], a                                       ; $6c72: $77
	db $fd                                           ; $6c73: $fd
	sbc [hl]                                         ; $6c74: $9e
	ld b, e                                          ; $6c75: $43

Jump_041_6c76:
	reti                                             ; $6c76: $d9


	inc sp                                           ; $6c77: $33
	sbc l                                            ; $6c78: $9d
	ld [hl], $46                                     ; $6c79: $36 $46
	ld [hl], a                                       ; $6c7b: $77
	db $eb                                           ; $6c7c: $eb
	ld [hl], a                                       ; $6c7d: $77
	and $73                                          ; $6c7e: $e6 $73
	ret c                                            ; $6c80: $d8

	sbc [hl]                                         ; $6c81: $9e
	inc sp                                           ; $6c82: $33
	ld e, e                                          ; $6c83: $5b
	ei                                               ; $6c84: $fb
	sbc [hl]                                         ; $6c85: $9e
	ld h, [hl]                                       ; $6c86: $66
	call c, $7d33                                    ; $6c87: $dc $33 $7d
	rlca                                             ; $6c8a: $07
	sbc l                                            ; $6c8b: $9d
	ld a, h                                          ; $6c8c: $7c
	rst $38                                          ; $6c8d: $ff
	ld l, a                                          ; $6c8e: $6f
	cp $9d                                           ; $6c8f: $fe $9d
	ld a, l                                          ; $6c91: $7d
	cp $77                                           ; $6c92: $fe $77
	db $fc                                           ; $6c94: $fc
	sbc e                                            ; $6c95: $9b
	cp $7d                                           ; $6c96: $fe $7d
	nop                                              ; $6c98: $00
	rst $38                                          ; $6c99: $ff
	ld h, a                                          ; $6c9a: $67
	cp $9d                                           ; $6c9b: $fe $9d
	add b                                            ; $6c9d: $80
	ld a, a                                          ; $6c9e: $7f
	ld l, a                                          ; $6c9f: $6f
	db $fc                                           ; $6ca0: $fc
	ld a, a                                          ; $6ca1: $7f
	cp $9d                                           ; $6ca2: $fe $9d
	ld bc, $77fe                                     ; $6ca4: $01 $fe $77
	db $fc                                           ; $6ca7: $fc
	sbc d                                            ; $6ca8: $9a
	ld [bc], a                                       ; $6ca9: $02
	db $fd                                           ; $6caa: $fd
	dec b                                            ; $6cab: $05
	ld a, [$5382]                                    ; $6cac: $fa $82 $53

jr_041_6caf:
	ldh [$9b], a                                     ; $6caf: $e0 $9b
	ld b, b                                          ; $6cb1: $40
	cp a                                             ; $6cb2: $bf
	and b                                            ; $6cb3: $a0
	ld e, a                                          ; $6cb4: $5f
	ld e, a                                          ; $6cb5: $5f
	ldh a, [rPCM34]                                  ; $6cb6: $f0 $77
	cp $7f                                           ; $6cb8: $fe $7f
	call c, $f04f                                    ; $6cba: $dc $4f $f0
	ld c, a                                          ; $6cbd: $4f
	cp $9b                                           ; $6cbe: $fe $9b
	inc b                                            ; $6cc0: $04
	ei                                               ; $6cc1: $fb
	ld l, $d1                                        ; $6cc2: $2e $d1
	rla                                              ; $6cc4: $17
	ldh [$3f], a                                     ; $6cc5: $e0 $3f
	cp $77                                           ; $6cc7: $fe $77
	add [hl]                                         ; $6cc9: $86
	ld h, a                                          ; $6cca: $67
	cp $7f                                           ; $6ccb: $fe $7f
	sub d                                            ; $6ccd: $92
	sbc e                                            ; $6cce: $9b
	xor d                                            ; $6ccf: $aa
	ld d, l                                          ; $6cd0: $55
	ld d, l                                          ; $6cd1: $55
	xor d                                            ; $6cd2: $aa
	ld d, a                                          ; $6cd3: $57
	ldh [c], a                                       ; $6cd4: $e2
	sbc c                                            ; $6cd5: $99
	jr z, jr_041_6caf                                ; $6cd6: $28 $d7

	ld d, h                                          ; $6cd8: $54
	xor e                                            ; $6cd9: $ab
	ld e, $ff                                        ; $6cda: $1e $ff
	ld c, a                                          ; $6cdc: $4f
	cp $9e                                           ; $6cdd: $fe $9e
	inc bc                                           ; $6cdf: $03
	ld c, e                                          ; $6ce0: $4b
	cp $4f                                           ; $6ce1: $fe $4f
	or b                                             ; $6ce3: $b0
	ld a, a                                          ; $6ce4: $7f
	cp h                                             ; $6ce5: $bc
	sbc l                                            ; $6ce6: $9d
	ld [hl], b                                       ; $6ce7: $70
	rst $38                                          ; $6ce8: $ff
	ld c, a                                          ; $6ce9: $4f
	cp $47                                           ; $6cea: $fe $47
	adc [hl]                                         ; $6cec: $8e
	sbc e                                            ; $6ced: $9b
	rrca                                             ; $6cee: $0f
	rst SubAFromBC                                          ; $6cef: $e7
	rra                                              ; $6cf0: $1f
	rst SubAFromBC                                          ; $6cf1: $e7
	ld e, a                                          ; $6cf2: $5f
	db $fc                                           ; $6cf3: $fc
	ld a, a                                          ; $6cf4: $7f
	cp $9d                                           ; $6cf5: $fe $9d
	ldh a, [$e0]                                     ; $6cf7: $f0 $e0
	ld c, a                                          ; $6cf9: $4f
	cp $9d                                           ; $6cfa: $fe $9d
	nop                                              ; $6cfc: $00
	ld b, c                                          ; $6cfd: $41
	ld c, a                                          ; $6cfe: $4f
	cp $95                                           ; $6cff: $fe $95
	db $fd                                           ; $6d01: $fd
	ld a, [hl]                                       ; $6d02: $7e
	ld a, [hl]                                       ; $6d03: $7e
	db $fd                                           ; $6d04: $fd
	db $fd                                           ; $6d05: $fd
	ld a, [hl]                                       ; $6d06: $7e
	cp $7d                                           ; $6d07: $fe $7d
	db $fd                                           ; $6d09: $fd
	ld a, [hl]                                       ; $6d0a: $7e
	ld l, [hl]                                       ; $6d0b: $6e
	or a                                             ; $6d0c: $b7
	sbc c                                            ; $6d0d: $99
	ld b, c                                          ; $6d0e: $41
	cp [hl]                                          ; $6d0f: $be
	add d                                            ; $6d10: $82
	ld a, l                                          ; $6d11: $7d
	ld b, l                                          ; $6d12: $45
	cp d                                             ; $6d13: $ba
	ld [hl], a                                       ; $6d14: $77
	ld d, [hl]                                       ; $6d15: $56
	ld a, a                                          ; $6d16: $7f
	db $fc                                           ; $6d17: $fc
	sbc e                                            ; $6d18: $9b
	push de                                          ; $6d19: $d5
	ld a, [hl+]                                      ; $6d1a: $2a
	db $eb                                           ; $6d1b: $eb
	inc d                                            ; $6d1c: $14
	ld l, a                                          ; $6d1d: $6f
	db $f4                                           ; $6d1e: $f4
	sbc c                                            ; $6d1f: $99
	xor a                                            ; $6d20: $af
	ld d, b                                          ; $6d21: $50
	ld d, a                                          ; $6d22: $57
	xor b                                            ; $6d23: $a8
	cp a                                             ; $6d24: $bf
	ld b, b                                          ; $6d25: $40
	ld [hl], a                                       ; $6d26: $77
	sbc a                                            ; $6d27: $9f
	halt                                             ; $6d28: $76
	call z, Call_041_5197                            ; $6d29: $cc $97 $51
	xor [hl]                                         ; $6d2c: $ae
	xor d                                            ; $6d2d: $aa
	ld d, l                                          ; $6d2e: $55
	push af                                          ; $6d2f: $f5
	ld a, [bc]                                       ; $6d30: $0a
	ld a, [$7705]                                    ; $6d31: $fa $05 $77
	db $fc                                           ; $6d34: $fc
	ld a, a                                          ; $6d35: $7f
	ldh [$99], a                                     ; $6d36: $e0 $99
	ld a, [hl+]                                      ; $6d38: $2a
	push de                                          ; $6d39: $d5
	ld d, l                                          ; $6d3a: $55
	xor d                                            ; $6d3b: $aa
	xor [hl]                                         ; $6d3c: $ae
	ld d, c                                          ; $6d3d: $51
	ld [hl], a                                       ; $6d3e: $77
	ldh [$99], a                                     ; $6d3f: $e0 $99
	ld a, a                                          ; $6d41: $7f
	add b                                            ; $6d42: $80
	rst $38                                          ; $6d43: $ff
	nop                                              ; $6d44: $00
	dec b                                            ; $6d45: $05
	ld a, [$d06f]                                    ; $6d46: $fa $6f $d0
	ld h, a                                          ; $6d49: $67
	ld l, a                                          ; $6d4a: $6f
	ld [hl], a                                       ; $6d4b: $77
	cp b                                             ; $6d4c: $b8
	ld l, a                                          ; $6d4d: $6f
	db $fc                                           ; $6d4e: $fc
	sbc c                                            ; $6d4f: $99
	ld [$fd15], a                                    ; $6d50: $ea $15 $fd
	ld [bc], a                                       ; $6d53: $02
	cp $01                                           ; $6d54: $fe $01
	ld l, [hl]                                       ; $6d56: $6e
	adc b                                            ; $6d57: $88
	ld l, [hl]                                       ; $6d58: $6e
	add h                                            ; $6d59: $84
	sbc l                                            ; $6d5a: $9d
	ld d, b                                          ; $6d5b: $50
	xor a                                            ; $6d5c: $af
	ld b, [hl]                                       ; $6d5d: $46
	add b                                            ; $6d5e: $80
	halt                                             ; $6d5f: $76
	ld a, [hl]                                       ; $6d60: $7e
	ld a, a                                          ; $6d61: $7f
	cp [hl]                                          ; $6d62: $be
	ld [hl], a                                       ; $6d63: $77
	db $fc                                           ; $6d64: $fc
	sbc l                                            ; $6d65: $9d
	ld a, [bc]                                       ; $6d66: $0a
	push af                                          ; $6d67: $f5
	ld [hl], a                                       ; $6d68: $77
	db $fc                                           ; $6d69: $fc
	sbc l                                            ; $6d6a: $9d
	rlca                                             ; $6d6b: $07
	ld hl, sp+$77                                    ; $6d6c: $f8 $77
	add $9d                                          ; $6d6e: $c6 $9d
	cp d                                             ; $6d70: $ba
	ld b, l                                          ; $6d71: $45
	ld [hl], a                                       ; $6d72: $77
	and [hl]                                         ; $6d73: $a6
	ld l, a                                          ; $6d74: $6f
	cp $77                                           ; $6d75: $fe $77
	ldh a, [$7f]                                     ; $6d77: $f0 $7f
	adc d                                            ; $6d79: $8a
	ld [hl], a                                       ; $6d7a: $77
	or [hl]                                          ; $6d7b: $b6
	ld l, a                                          ; $6d7c: $6f
	ldh a, [hDisp1_OBP0]                                     ; $6d7d: $f0 $93
	sbc [hl]                                         ; $6d7f: $9e
	ld a, a                                          ; $6d80: $7f
	ld e, $ff                                        ; $6d81: $1e $ff
	sbc [hl]                                         ; $6d83: $9e
	ld a, a                                          ; $6d84: $7f
	ld e, [hl]                                       ; $6d85: $5e
	cp a                                             ; $6d86: $bf
	sbc [hl]                                         ; $6d87: $9e
	ld a, a                                          ; $6d88: $7f
	sbc $3f                                          ; $6d89: $de $3f
	ld [hl], a                                       ; $6d8b: $77
	cp $46                                           ; $6d8c: $fe $46
	ret nz                                           ; $6d8e: $c0

	ld a, a                                          ; $6d8f: $7f
	sbc h                                            ; $6d90: $9c
	sub c                                            ; $6d91: $91
	ld l, b                                          ; $6d92: $68
	sub a                                            ; $6d93: $97
	call nc, Call_041_6a2b                           ; $6d94: $d4 $2b $6a
	sub l                                            ; $6d97: $95
	ld [hl], h                                       ; $6d98: $74
	adc e                                            ; $6d99: $8b
	ld l, d                                          ; $6d9a: $6a
	sub l                                            ; $6d9b: $95
	push af                                          ; $6d9c: $f5
	ld a, [bc]                                       ; $6d9d: $0a
	ld a, e                                          ; $6d9e: $7b
	add h                                            ; $6d9f: $84
	ld h, [hl]                                       ; $6da0: $66
	ret z                                            ; $6da1: $c8

	sub a                                            ; $6da2: $97
	ld a, b                                          ; $6da3: $78
	rst FarCall                                          ; $6da4: $f7
	ld a, b                                          ; $6da5: $78
	rst FarCall                                          ; $6da6: $f7
	ld a, c                                          ; $6da7: $79
	or $f8                                           ; $6da8: $f6 $f8
	ld [hl], a                                       ; $6daa: $77
	ld [hl], a                                       ; $6dab: $77
	cp e                                             ; $6dac: $bb
	ld a, a                                          ; $6dad: $7f
	inc c                                            ; $6dae: $0c
	sbc l                                            ; $6daf: $9d
	ld [hl+], a                                      ; $6db0: $22
	db $dd                                           ; $6db1: $dd
	ld l, a                                          ; $6db2: $6f
	ld e, h                                          ; $6db3: $5c
	sub [hl]                                         ; $6db4: $96
	xor e                                            ; $6db5: $ab
	ld d, h                                          ; $6db6: $54
	rla                                              ; $6db7: $17
	rst AddAOntoHL                                          ; $6db8: $ef
	rla                                              ; $6db9: $17
	rst AddAOntoHL                                          ; $6dba: $ef
	dec b                                            ; $6dbb: $05
	rst AddAOntoHL                                          ; $6dbc: $ef
	ld b, $7b                                        ; $6dbd: $06 $7b
	db $fc                                           ; $6dbf: $fc
	sbc [hl]                                         ; $6dc0: $9e
	ld [bc], a                                       ; $6dc1: $02
	ld a, e                                          ; $6dc2: $7b
	db $fc                                           ; $6dc3: $fc
	sbc l                                            ; $6dc4: $9d
	ld [hl+], a                                      ; $6dc5: $22
	rst GetHLinHL                                          ; $6dc6: $cf
	ld e, d                                          ; $6dc7: $5a
	call nz, Call_041_609e                           ; $6dc8: $c4 $9e $60
	ld [hl], a                                       ; $6dcb: $77
	cp $46                                           ; $6dcc: $fe $46
	ret nz                                           ; $6dce: $c0

	halt                                             ; $6dcf: $76
	call z, Call_041_7f9e                            ; $6dd0: $cc $9e $7f
	ld l, e                                          ; $6dd3: $6b
	db $fc                                           ; $6dd4: $fc
	sbc e                                            ; $6dd5: $9b
	ld a, l                                          ; $6dd6: $7d
	ld a, h                                          ; $6dd7: $7c
	ld a, [hl]                                       ; $6dd8: $7e
	ld a, h                                          ; $6dd9: $7c
	ld bc, $1bed                                     ; $6dda: $01 $ed $1b
	cp $4d                                           ; $6ddd: $fe $4d
	add e                                            ; $6ddf: $83
	ld a, l                                          ; $6de0: $7d
	push de                                          ; $6de1: $d5
	sbc [hl]                                         ; $6de2: $9e
	ld d, l                                          ; $6de3: $55
	ld d, e                                          ; $6de4: $53
	ldh a, [$9e]                                     ; $6de5: $f0 $9e
	ld a, [$f073]                                    ; $6de7: $fa $73 $f0
	ld l, [hl]                                       ; $6dea: $6e
	ret z                                            ; $6deb: $c8

	ld a, a                                          ; $6dec: $7f
	ld d, h                                          ; $6ded: $54
	ld [hl], a                                       ; $6dee: $77
	db $fc                                           ; $6def: $fc
	sbc e                                            ; $6df0: $9b
	ld d, l                                          ; $6df1: $55
	ld a, [hl+]                                      ; $6df2: $2a
	ld a, [hl+]                                      ; $6df3: $2a
	push de                                          ; $6df4: $d5
	ld d, a                                          ; $6df5: $57
	db $dd                                           ; $6df6: $dd
	ld [hl], a                                       ; $6df7: $77
	inc a                                            ; $6df8: $3c
	halt                                             ; $6df9: $76
	jp nz, $0999                                     ; $6dfa: $c2 $99 $09

	or $42                                           ; $6dfd: $f6 $42
	cp l                                             ; $6dff: $bd
	dec d                                            ; $6e00: $15
	ld [$7856], a                                    ; $6e01: $ea $56 $78
	sbc d                                            ; $6e04: $9a
	db $dd                                           ; $6e05: $dd
	nop                                              ; $6e06: $00
	ld [$d500], a                                    ; $6e07: $ea $00 $d5
	ld e, e                                          ; $6e0a: $5b
	xor [hl]                                         ; $6e0b: $ae
	ld a, [hl]                                       ; $6e0c: $7e
	adc c                                            ; $6e0d: $89
	sbc h                                            ; $6e0e: $9c
	xor a                                            ; $6e0f: $af
	nop                                              ; $6e10: $00
	ld d, a                                          ; $6e11: $57
	ld [hl], e                                       ; $6e12: $73
	ldh a, [$9a]                                     ; $6e13: $f0 $9a
	cp [hl]                                          ; $6e15: $be
	rra                                              ; $6e16: $1f
	cp $1f                                           ; $6e17: $fe $1f
	cp a                                             ; $6e19: $bf
	ld a, c                                          ; $6e1a: $79
	add a                                            ; $6e1b: $87

jr_041_6e1c:
	ld a, a                                          ; $6e1c: $7f
	db $fc                                           ; $6e1d: $fc
	ld a, [hl]                                       ; $6e1e: $7e
	or a                                             ; $6e1f: $b7
	ld a, a                                          ; $6e20: $7f
	db $fc                                           ; $6e21: $fc
	sbc l                                            ; $6e22: $9d
	ld e, a                                          ; $6e23: $5f

jr_041_6e24:
	ld e, $66                                        ; $6e24: $1e $66
	ret z                                            ; $6e26: $c8

	sub a                                            ; $6e27: $97
	ld b, e                                          ; $6e28: $43
	cp a                                             ; $6e29: $bf
	xor e                                            ; $6e2a: $ab
	ld d, a                                          ; $6e2b: $57
	ld d, e                                          ; $6e2c: $53
	xor a                                            ; $6e2d: $af
	xor e                                            ; $6e2e: $ab
	ld d, a                                          ; $6e2f: $57
	ld [hl], a                                       ; $6e30: $77
	jp nc, $bf9e                                     ; $6e31: $d2 $9e $bf

	ld [hl], e                                       ; $6e34: $73
	db $fc                                           ; $6e35: $fc
	sbc [hl]                                         ; $6e36: $9e
	rst SubAFromDE                                          ; $6e37: $df
	ld a, e                                          ; $6e38: $7b
	call z, $fc7f                                    ; $6e39: $cc $7f $fc
	ld c, c                                          ; $6e3c: $49
	add c                                            ; $6e3d: $81
	ld e, c                                          ; $6e3e: $59
	ld a, a                                          ; $6e3f: $7f
	ld a, l                                          ; $6e40: $7d
	dec d                                            ; $6e41: $15
	ld a, a                                          ; $6e42: $7f
	ld b, b                                          ; $6e43: $40
	ld a, a                                          ; $6e44: $7f
	sbc d                                            ; $6e45: $9a
	adc a                                            ; $6e46: $8f
	dec h                                            ; $6e47: $25
	rst GetHLinHL                                          ; $6e48: $cf
	ld [hl+], a                                      ; $6e49: $22
	rst GetHLinHL                                          ; $6e4a: $cf
	dec h                                            ; $6e4b: $25
	rst GetHLinHL                                          ; $6e4c: $cf
	ld h, d                                          ; $6e4d: $62
	adc a                                            ; $6e4e: $8f
	inc h                                            ; $6e4f: $24
	rst GetHLinHL                                          ; $6e50: $cf
	ld h, b                                          ; $6e51: $60
	adc a                                            ; $6e52: $8f
	jr nz, jr_041_6e24                               ; $6e53: $20 $cf

	ld b, b                                          ; $6e55: $40
	adc a                                            ; $6e56: $8f
	ld l, [hl]                                       ; $6e57: $6e
	jp z, $f09d                                      ; $6e58: $ca $9d $f0

	jr nz, @+$69                                     ; $6e5b: $20 $67

	cp $46                                           ; $6e5d: $fe $46
	ret nz                                           ; $6e5f: $c0

	sub a                                            ; $6e60: $97
	ei                                               ; $6e61: $fb
	ld a, h                                          ; $6e62: $7c
	rst $38                                          ; $6e63: $ff
	ld a, b                                          ; $6e64: $78
	push af                                          ; $6e65: $f5
	ld a, d                                          ; $6e66: $7a
	ld [$7575], a                                    ; $6e67: $ea $75 $75
	and d                                            ; $6e6a: $a2
	ld a, l                                          ; $6e6b: $7d
	sub b                                            ; $6e6c: $90
	ld a, a                                          ; $6e6d: $7f
	ld c, h                                          ; $6e6e: $4c
	ld h, l                                          ; $6e6f: $65
	call z, $f099                                    ; $6e70: $cc $99 $f0
	nop                                              ; $6e73: $00
	db $fc                                           ; $6e74: $fc
	nop                                              ; $6e75: $00
	db $10                                           ; $6e76: $10
	rst AddAOntoHL                                          ; $6e77: $ef
	ld h, a                                          ; $6e78: $67
	ldh a, [$7e]                                     ; $6e79: $f0 $7e
	ld l, b                                          ; $6e7b: $68
	db $fd                                           ; $6e7c: $fd
	ld h, a                                          ; $6e7d: $67
	jr nc, jr_041_6e1c                               ; $6e7e: $30 $9c

	ld e, a                                          ; $6e80: $5f
	and b                                            ; $6e81: $a0
	ret nz                                           ; $6e82: $c0

	db $fc                                           ; $6e83: $fc
	ld a, a                                          ; $6e84: $7f
	ldh a, [$7f]                                     ; $6e85: $f0 $7f
	db $f4                                           ; $6e87: $f4
	ld a, [hl]                                       ; $6e88: $7e
	inc l                                            ; $6e89: $2c
	sbc l                                            ; $6e8a: $9d
	jp nc, Jump_041_6f00                             ; $6e8b: $d2 $00 $6f

	ldh a, [c]                                       ; $6e8e: $f2
	rst $38                                          ; $6e8f: $ff
	ld [hl], l                                       ; $6e90: $75

jr_041_6e91:
	jp c, $9e78                                      ; $6e91: $da $78 $9e

	ld hl, sp+$6f                                    ; $6e94: $f8 $6f
	call nz, $f04f                                   ; $6e96: $c4 $4f $f0
	ld a, h                                          ; $6e99: $7c

Call_041_6e9a:
	adc [hl]                                         ; $6e9a: $8e
	rst FarCall                                          ; $6e9b: $f7
	ld a, [hl]                                       ; $6e9c: $7e
	or [hl]                                          ; $6e9d: $b6

Call_041_6e9e:
	sbc l                                            ; $6e9e: $9d
	ret nc                                           ; $6e9f: $d0

	cpl                                              ; $6ea0: $2f
	ld a, e                                          ; $6ea1: $7b
	db $ed                                           ; $6ea2: $ed
	ld c, a                                          ; $6ea3: $4f
	rst SubAFromDE                                          ; $6ea4: $df
	sbc e                                            ; $6ea5: $9b
	rst $38                                          ; $6ea6: $ff
	ccf                                              ; $6ea7: $3f
	nop                                              ; $6ea8: $00
	ld bc, $99fa                                     ; $6ea9: $01 $fa $99
	inc bc                                           ; $6eac: $03
	db $fc                                           ; $6ead: $fc
	rla                                              ; $6eae: $17
	add sp, $00                                      ; $6eaf: $e8 $00
	rst $38                                          ; $6eb1: $ff
	ld [hl], a                                       ; $6eb2: $77
	db $eb                                           ; $6eb3: $eb
	ld e, a                                          ; $6eb4: $5f
	pop hl                                           ; $6eb5: $e1
	ld b, a                                          ; $6eb6: $47
	ldh a, [$97]                                     ; $6eb7: $f0 $97
	dec de                                           ; $6eb9: $1b
	cp $f7                                           ; $6eba: $fe $f7
	ld c, $fb                                        ; $6ebc: $0e $fb
	ld b, $fd                                        ; $6ebe: $06 $fd
	ld [bc], a                                       ; $6ec0: $02
	ld [hl], a                                       ; $6ec1: $77
	call z, $f077                                    ; $6ec2: $cc $77 $f0
	halt                                             ; $6ec5: $76
	call z, $f39a                                    ; $6ec6: $cc $9a $f3
	rrca                                             ; $6ec9: $0f
	ld sp, hl                                        ; $6eca: $f9
	rlca                                             ; $6ecb: $07
	ld hl, sp+$7b                                    ; $6ecc: $f8 $7b
	cp $9b                                           ; $6ece: $fe $9b
	db $fc                                           ; $6ed0: $fc
	inc bc                                           ; $6ed1: $03
	db $fc                                           ; $6ed2: $fc
	inc bc                                           ; $6ed3: $03
	halt                                             ; $6ed4: $76
	sbc b                                            ; $6ed5: $98
	sbc d                                            ; $6ed6: $9a
	dec hl                                           ; $6ed7: $2b
	nop                                              ; $6ed8: $00
	dec d                                            ; $6ed9: $15
	nop                                              ; $6eda: $00
	dec bc                                           ; $6edb: $0b
	ld a, e                                          ; $6edc: $7b
	db $fc                                           ; $6edd: $fc
	sbc [hl]                                         ; $6ede: $9e
	ld a, [bc]                                       ; $6edf: $0a
	ld a, e                                          ; $6ee0: $7b
	db $fc                                           ; $6ee1: $fc
	ld l, [hl]                                       ; $6ee2: $6e
	jp z, $fe9e                                      ; $6ee3: $ca $9e $fe

	ld a, e                                          ; $6ee6: $7b
	db $fc                                           ; $6ee7: $fc
	sbc [hl]                                         ; $6ee8: $9e
	ld a, [hl]                                       ; $6ee9: $7e
	ld a, e                                          ; $6eea: $7b
	db $fc                                           ; $6eeb: $fc
	sbc h                                            ; $6eec: $9c
	ld a, d                                          ; $6eed: $7a
	ld [hl], b                                       ; $6eee: $70
	db $fd                                           ; $6eef: $fd
	ld a, d                                          ; $6ef0: $7a
	jr z, jr_041_6e91                                ; $6ef1: $28 $9e

	ld [hl], h                                       ; $6ef3: $74
	ld a, e                                          ; $6ef4: $7b
	db $fc                                           ; $6ef5: $fc
	sbc d                                            ; $6ef6: $9a
	call nc, $a800                                   ; $6ef7: $d4 $00 $a8
	nop                                              ; $6efa: $00
	ld d, h                                          ; $6efb: $54
	ld a, e                                          ; $6efc: $7b
	db $fc                                           ; $6efd: $fc
	sbc h                                            ; $6efe: $9c
	ret nz                                           ; $6eff: $c0

Jump_041_6f00:
	rrca                                             ; $6f00: $0f
	ldh [rPCM34], a                                  ; $6f01: $e0 $77

Call_041_6f03:
	cp $96                                           ; $6f03: $fe $96
	ld c, $e0                                        ; $6f05: $0e $e0
	dec c                                            ; $6f07: $0d
	ldh [rDIV], a                                    ; $6f08: $e0 $04
	ldh [rP1], a                                     ; $6f0a: $e0 $00
	ldh [rP1], a                                     ; $6f0c: $e0 $00
	ld e, [hl]                                       ; $6f0e: $5e
	add $9d                                          ; $6f0f: $c6 $9d
	ld [hl], b                                       ; $6f11: $70
	and b                                            ; $6f12: $a0
	ld [hl], a                                       ; $6f13: $77
	cp $46                                           ; $6f14: $fe $46
	ret nz                                           ; $6f16: $c0

	ld l, l                                          ; $6f17: $6d
	ld c, b                                          ; $6f18: $48
	ld h, e                                          ; $6f19: $63
	ld b, e                                          ; $6f1a: $43
	ld l, b                                          ; $6f1b: $68
	sub b                                            ; $6f1c: $90
	ld e, a                                          ; $6f1d: $5f
	ldh a, [$6c]                                     ; $6f1e: $f0 $6c
	add $5f                                          ; $6f20: $c6 $5f
	ldh a, [$6f]                                     ; $6f22: $f0 $6f
	cp $43                                           ; $6f24: $fe $43
	ldh a, [$7b]                                     ; $6f26: $f0 $7b
	db $fd                                           ; $6f28: $fd
	ld h, h                                          ; $6f29: $64
	xor [hl]                                         ; $6f2a: $ae
	ld h, a                                          ; $6f2b: $67
	ldh a, [$6f]                                     ; $6f2c: $f0 $6f
	ld d, $5f                                        ; $6f2e: $16 $5f
	ldh a, [$7f]                                     ; $6f30: $f0 $7f
	db $fd                                           ; $6f32: $fd
	sub l                                            ; $6f33: $95
	rst FarCall                                          ; $6f34: $f7
	ld [$36e3], sp                                   ; $6f35: $08 $e3 $36
	add sp, $17                                      ; $6f38: $e8 $17
	ret nc                                           ; $6f3a: $d0

	cpl                                              ; $6f3b: $2f
	add sp, $17                                      ; $6f3c: $e8 $17
	db $fd                                           ; $6f3e: $fd
	sbc c                                            ; $6f3f: $99
	db $f4                                           ; $6f40: $f4
	dec bc                                           ; $6f41: $0b
	add sp, $17                                      ; $6f42: $e8 $17
	db $f4                                           ; $6f44: $f4
	dec bc                                           ; $6f45: $0b
	ld [hl], a                                       ; $6f46: $77
	pop hl                                           ; $6f47: $e1
	sbc l                                            ; $6f48: $9d
	inc h                                            ; $6f49: $24
	db $db                                           ; $6f4a: $db
	ld h, a                                          ; $6f4b: $67
	xor a                                            ; $6f4c: $af
	sub a                                            ; $6f4d: $97
	ld bc, $2ffe                                     ; $6f4e: $01 $fe $2f
	ret nc                                           ; $6f51: $d0

	rla                                              ; $6f52: $17
	add sp, -$51                                     ; $6f53: $e8 $af
	ld d, b                                          ; $6f55: $50
	db $fd                                           ; $6f56: $fd
	ld a, [hl]                                       ; $6f57: $7e
	ld e, d                                          ; $6f58: $5a
	ld a, [hl]                                       ; $6f59: $7e
	inc l                                            ; $6f5a: $2c
	ld a, a                                          ; $6f5b: $7f
	db $fc                                           ; $6f5c: $fc
	dec hl                                           ; $6f5d: $2b
	sub b                                            ; $6f5e: $90
	inc hl                                           ; $6f5f: $23
	ldh a, [$99]                                     ; $6f60: $f0 $99
	cp $03                                           ; $6f62: $fe $03
	ld a, [$8107]                                    ; $6f64: $fa $07 $81
	ld a, a                                          ; $6f67: $7f
	ld h, [hl]                                       ; $6f68: $66
	or d                                             ; $6f69: $b2
	ld a, a                                          ; $6f6a: $7f
	cp $9e                                           ; $6f6b: $fe $9e
	ld a, [hl+]                                      ; $6f6d: $2a
	ld a, d                                          ; $6f6e: $7a
	call z, $317f                                    ; $6f6f: $cc $7f $31
	sbc b                                            ; $6f72: $98
	sub c                                            ; $6f73: $91
	nop                                              ; $6f74: $00
	jr z, jr_041_6f77                                ; $6f75: $28 $00

jr_041_6f77:
	stop                                             ; $6f77: $10 $00
	jr nz, jr_041_6ff6                               ; $6f79: $20 $7b

	db $fc                                           ; $6f7b: $fc
	sbc [hl]                                         ; $6f7c: $9e
	db $fd                                           ; $6f7d: $fd
	halt                                             ; $6f7e: $76
	call z, $fc7b                                    ; $6f7f: $cc $7b $fc
	sbc [hl]                                         ; $6f82: $9e
	push af                                          ; $6f83: $f5
	ld a, e                                          ; $6f84: $7b
	db $fc                                           ; $6f85: $fc
	sbc [hl]                                         ; $6f86: $9e
	ld [hl], l                                       ; $6f87: $75
	ld a, e                                          ; $6f88: $7b
	db $fc                                           ; $6f89: $fc
	ld a, a                                          ; $6f8a: $7f
	sub l                                            ; $6f8b: $95
	ld a, [hl]                                       ; $6f8c: $7e
	call z, $fc7f                                    ; $6f8d: $cc $7f $fc
	ld a, [hl]                                       ; $6f90: $7e
	jp hl                                            ; $6f91: $e9


	ld [hl], a                                       ; $6f92: $77
	db $fc                                           ; $6f93: $fc
	sbc [hl]                                         ; $6f94: $9e
	ld b, b                                          ; $6f95: $40
	ld a, e                                          ; $6f96: $7b
	db $fc                                           ; $6f97: $fc
	halt                                             ; $6f98: $76
	call z, $fe57                                    ; $6f99: $cc $57 $fe
	ld a, [hl]                                       ; $6f9c: $7e
	adc $9d                                          ; $6f9d: $ce $9d
	ld h, b                                          ; $6f9f: $60
	or b                                             ; $6fa0: $b0
	ld d, a                                          ; $6fa1: $57
	cp $40                                           ; $6fa2: $fe $40
	ld b, b                                          ; $6fa4: $40
	ld a, e                                          ; $6fa5: $7b
	sbc h                                            ; $6fa6: $9c
	sbc l                                            ; $6fa7: $9d
	rra                                              ; $6fa8: $1f
	ldh [$db], a                                     ; $6fa9: $e0 $db
	rst $38                                          ; $6fab: $ff
	ld [hl], a                                       ; $6fac: $77
	adc a                                            ; $6fad: $8f
	ld l, e                                          ; $6fae: $6b
	ld l, [hl]                                       ; $6faf: $6e

Jump_041_6fb0:
	inc bc                                           ; $6fb0: $03
	ldh a, [$37]                                     ; $6fb1: $f0 $37
	ldh a, [$7c]                                     ; $6fb3: $f0 $7c
	ld a, a                                          ; $6fb5: $7f
	sbc [hl]                                         ; $6fb6: $9e
	rst $38                                          ; $6fb7: $ff
	ld a, c                                          ; $6fb8: $79
	ld l, [hl]                                       ; $6fb9: $6e
	ld c, a                                          ; $6fba: $4f
	ldh a, [$9b]                                     ; $6fbb: $f0 $9b
	rst SubAFromBC                                          ; $6fbd: $e7
	ld [hl-], a                                      ; $6fbe: $32
	rst $38                                          ; $6fbf: $ff
	jr jr_041_7019                                   ; $6fc0: $18 $57

	ldh a, [$99]                                     ; $6fc2: $f0 $99
	ld a, [$f505]                                    ; $6fc4: $fa $05 $f5
	ld a, [bc]                                       ; $6fc7: $0a
	ld a, [$6705]                                    ; $6fc8: $fa $05 $67
	pop af                                           ; $6fcb: $f1
	sbc e                                            ; $6fcc: $9b

Call_041_6fcd:
	cp $ab                                           ; $6fcd: $fe $ab
	ld [bc], a                                       ; $6fcf: $02
	db $fd                                           ; $6fd0: $fd
	halt                                             ; $6fd1: $76
	ld c, [hl]                                       ; $6fd2: $4e
	ld l, a                                          ; $6fd3: $6f
	rst SubAFromDE                                          ; $6fd4: $df
	halt                                             ; $6fd5: $76
	ld a, a                                          ; $6fd6: $7f
	ld a, [hl]                                       ; $6fd7: $7e
	call z, Call_041_4e76                            ; $6fd8: $cc $76 $4e
	ld l, a                                          ; $6fdb: $6f
	ldh a, [$9e]                                     ; $6fdc: $f0 $9e
	ld a, a                                          ; $6fde: $7f
	ld h, e                                          ; $6fdf: $63
	and b                                            ; $6fe0: $a0
	ld h, a                                          ; $6fe1: $67
	cp a                                             ; $6fe2: $bf
	inc bc                                           ; $6fe3: $03
	ldh a, [rOCPD]                                   ; $6fe4: $f0 $6b
	ldh a, [$9e]                                     ; $6fe6: $f0 $9e
	rlca                                             ; $6fe8: $07
	jp c, Jump_041_7cff                              ; $6fe9: $da $ff $7c

	jr c, jr_041_706c                                ; $6fec: $38 $7e

	call z, Call_041_76ff                            ; $6fee: $cc $ff $76
	ret z                                            ; $6ff1: $c8

	ld [hl], a                                       ; $6ff2: $77
	db $fc                                           ; $6ff3: $fc
	halt                                             ; $6ff4: $76
	cp h                                             ; $6ff5: $bc

jr_041_6ff6:
	ld a, [hl]                                       ; $6ff6: $7e
	call z, Call_041_729e                            ; $6ff7: $cc $9e $72
	ld a, d                                          ; $6ffa: $7a
	ret z                                            ; $6ffb: $c8

	ld h, a                                          ; $6ffc: $67
	db $fc                                           ; $6ffd: $fc
	sbc l                                            ; $6ffe: $9d
	ld [hl], e                                       ; $6fff: $73
	ld [hl], b                                       ; $7000: $70
	halt                                             ; $7001: $76
	call z, $fc7f                                    ; $7002: $cc $7f $fc
	sbc [hl]                                         ; $7005: $9e
	add b                                            ; $7006: $80
	ld l, e                                          ; $7007: $6b
	db $fc                                           ; $7008: $fc
	rst $38                                          ; $7009: $ff
	ld b, [hl]                                       ; $700a: $46
	ret nz                                           ; $700b: $c0

	ld c, [hl]                                       ; $700c: $4e
	jp nz, $c03e                                     ; $700d: $c2 $3e $c0

	rst $38                                          ; $7010: $ff
	sbc [hl]                                         ; $7011: $9e
	rrca                                             ; $7012: $0f
	cp $9e                                           ; $7013: $fe $9e
	ld b, b                                          ; $7015: $40
	sbc $3f                                          ; $7016: $de $3f
	sbc c                                            ; $7018: $99

jr_041_7019:
	sbc a                                            ; $7019: $9f
	ccf                                              ; $701a: $3f
	rst SubAFromDE                                          ; $701b: $df
	cpl                                              ; $701c: $2f
	rst SubAFromDE                                          ; $701d: $df
	daa                                              ; $701e: $27
	ld [hl], a                                       ; $701f: $77
	cp [hl]                                          ; $7020: $be
	rst $38                                          ; $7021: $ff
	ld a, l                                          ; $7022: $7d
	ld hl, sp-$25                                    ; $7023: $f8 $db
	rst $38                                          ; $7025: $ff
	ld a, d                                          ; $7026: $7a
	pop af                                           ; $7027: $f1
	ld h, [hl]                                       ; $7028: $66
	inc h                                            ; $7029: $24
	inc de                                           ; $702a: $13
	ldh a, [$9e]                                     ; $702b: $f0 $9e
	db $fc                                           ; $702d: $fc
	ld c, e                                          ; $702e: $4b
	ldh a, [$67]                                     ; $702f: $f0 $67
	cpl                                              ; $7031: $2f
	inc bc                                           ; $7032: $03
	ldh a, [rOCPD]                                   ; $7033: $f0 $6b
	ldh a, [$7f]                                     ; $7035: $f0 $7f
	ld a, h                                          ; $7037: $7c
	db $db                                           ; $7038: $db
	rst $38                                          ; $7039: $ff
	sbc [hl]                                         ; $703a: $9e
	xor e                                            ; $703b: $ab
	ld c, e                                          ; $703c: $4b
	and b                                            ; $703d: $a0
	ld a, d                                          ; $703e: $7a
	pop af                                           ; $703f: $f1
	inc bc                                           ; $7040: $03
	ldh a, [$fd]                                     ; $7041: $f0 $fd
	ld a, h                                          ; $7043: $7c
	ld a, d                                          ; $7044: $7a
	ld a, a                                          ; $7045: $7f
	ld c, a                                          ; $7046: $4f
	ld l, a                                          ; $7047: $6f
	cp $9d                                           ; $7048: $fe $9d
	rlca                                             ; $704a: $07
	inc bc                                           ; $704b: $03

jr_041_704c:
	ld c, a                                          ; $704c: $4f
	cp $7d                                           ; $704d: $fe $7d
	and d                                            ; $704f: $a2
	sbc [hl]                                         ; $7050: $9e
	sub b                                            ; $7051: $90
	ld a, c                                          ; $7052: $79
	sbc [hl]                                         ; $7053: $9e
	ld e, a                                          ; $7054: $5f
	db $fc                                           ; $7055: $fc
	sbc e                                            ; $7056: $9b
	ld a, [hl-]                                      ; $7057: $3a
	ld [hl], b                                       ; $7058: $70
	add hl, sp                                       ; $7059: $39
	ld [hl], b                                       ; $705a: $70
	ld [hl], a                                       ; $705b: $77
	db $fc                                           ; $705c: $fc
	sbc h                                            ; $705d: $9c
	ld a, [hl+]                                      ; $705e: $2a
	ld [hl], b                                       ; $705f: $70
	add hl, hl                                       ; $7060: $29
	ld [hl], e                                       ; $7061: $73
	db $fc                                           ; $7062: $fc
	ld h, [hl]                                       ; $7063: $66
	add $7f                                          ; $7064: $c6 $7f
	db $fc                                           ; $7066: $fc
	ld a, [hl]                                       ; $7067: $7e
	push af                                          ; $7068: $f5
	ld a, l                                          ; $7069: $7d
	ld e, b                                          ; $706a: $58
	sbc l                                            ; $706b: $9d

jr_041_706c:
	ld b, l                                          ; $706c: $45
	nop                                              ; $706d: $00

Jump_041_706e:
	ld a, b                                          ; $706e: $78
	ld c, d                                          ; $706f: $4a
	sbc [hl]                                         ; $7070: $9e
	ld b, $7b                                        ; $7071: $06 $7b
	cp $70                                           ; $7073: $fe $70
	ld a, [hl-]                                      ; $7075: $3a
	sbc e                                            ; $7076: $9b
	and h                                            ; $7077: $a4
	ld c, a                                          ; $7078: $4f
	ld h, d                                          ; $7079: $62
	adc a                                            ; $707a: $8f
	halt                                             ; $707b: $76
	call z, $e09b                                    ; $707c: $cc $9b $e0
	ld [hl], b                                       ; $707f: $70
	ldh [$30], a                                     ; $7080: $e0 $30
	ld a, e                                          ; $7082: $7b
	db $fc                                           ; $7083: $fc
	ld [hl], e                                       ; $7084: $73
	cp $46                                           ; $7085: $fe $46
	ret nz                                           ; $7087: $c0

	sbc l                                            ; $7088: $9d
	call nz, Call_041_7b3f                           ; $7089: $c4 $3f $7b
	cp $9e                                           ; $708c: $fe $9e
	ld a, $77                                        ; $708e: $3e $77
	cp $9e                                           ; $7090: $fe $9e
	push bc                                          ; $7092: $c5
	ld [hl], e                                       ; $7093: $73
	cp $77                                           ; $7094: $fe $77
	ld h, l                                          ; $7096: $65
	ld [hl], l                                       ; $7097: $75
	ld l, $98                                        ; $7098: $2e $98
	and h                                            ; $709a: $a4
	nop                                              ; $709b: $00
	jp nc, $e900                                     ; $709c: $d2 $00 $e9

	nop                                              ; $709f: $00
	cp $6c                                           ; $70a0: $fe $6c
	ld sp, hl                                        ; $70a2: $f9
	or $70                                           ; $70a3: $f6 $70
	ld e, e                                          ; $70a5: $5b
	ld a, a                                          ; $70a6: $7f
	ld a, [$9afc]                                    ; $70a7: $fa $fc $9a
	ld [bc], a                                       ; $70aa: $02
	nop                                              ; $70ab: $00
	dec b                                            ; $70ac: $05
	nop                                              ; $70ad: $00
	ld d, c                                          ; $70ae: $51
	ld a, e                                          ; $70af: $7b
	ldh a, [$7f]                                     ; $70b0: $f0 $7f
	adc b                                            ; $70b2: $88
	ld a, [hl]                                       ; $70b3: $7e
	jr z, jr_041_704c                                ; $70b4: $28 $96

	sbc d                                            ; $70b6: $9a
	nop                                              ; $70b7: $00
	ld e, l                                          ; $70b8: $5d
	nop                                              ; $70b9: $00
	cp e                                             ; $70ba: $bb
	nop                                              ; $70bb: $00
	ld a, a                                          ; $70bc: $7f
	nop                                              ; $70bd: $00
	ld d, h                                          ; $70be: $54
	ld a, e                                          ; $70bf: $7b
	ldh a, [rPCM12]                                  ; $70c0: $f0 $76
	ld l, $9c                                        ; $70c2: $2e $9c
	inc d                                            ; $70c4: $14
	nop                                              ; $70c5: $00
	ld a, d                                          ; $70c6: $7a
	ld a, e                                          ; $70c7: $7b
	cp h                                             ; $70c8: $bc
	ld a, a                                          ; $70c9: $7f
	db $fc                                           ; $70ca: $fc
	sbc [hl]                                         ; $70cb: $9e
	ld b, l                                          ; $70cc: $45
	ld c, e                                          ; $70cd: $4b
	ret nz                                           ; $70ce: $c0

	sbc d                                            ; $70cf: $9a
	ld b, h                                          ; $70d0: $44
	rst $38                                          ; $70d1: $ff
	ld [bc], a                                       ; $70d2: $02
	rst $38                                          ; $70d3: $ff
	rra                                              ; $70d4: $1f
	db $fc                                           ; $70d5: $fc
	sbc [hl]                                         ; $70d6: $9e
	inc b                                            ; $70d7: $04
	ld a, b                                          ; $70d8: $78
	and h                                            ; $70d9: $a4
	ld a, a                                          ; $70da: $7f
	jp c, $a077                                      ; $70db: $da $77 $a0

	sbc [hl]                                         ; $70de: $9e
	rst FarCall                                          ; $70df: $f7
	cp $7f                                           ; $70e0: $fe $7f
	call z, $b47f                                    ; $70e2: $cc $7f $b4
	ld a, a                                          ; $70e5: $7f
	cp b                                             ; $70e6: $b8
	ld a, [hl]                                       ; $70e7: $7e
	ld hl, sp+$77                                    ; $70e8: $f8 $77
	ldh a, [$9e]                                     ; $70ea: $f0 $9e
	rst SubAFromBC                                          ; $70ec: $e7
	ld a, [$aa74]                                    ; $70ed: $fa $74 $aa
	ld [hl], l                                       ; $70f0: $75
	dec l                                            ; $70f1: $2d
	ld [hl], a                                       ; $70f2: $77
	cp a                                             ; $70f3: $bf
	ld a, a                                          ; $70f4: $7f
	sub h                                            ; $70f5: $94
	ld [hl], a                                       ; $70f6: $77
	adc h                                            ; $70f7: $8c
	ld a, a                                          ; $70f8: $7f
	call c, $f077                                    ; $70f9: $dc $77 $f0
	sbc l                                            ; $70fc: $9d
	and $19                                          ; $70fd: $e6 $19
	ld [hl], a                                       ; $70ff: $77
	db $e4                                           ; $7100: $e4
	sbc [hl]                                         ; $7101: $9e
	ld de, $d07b                                     ; $7102: $11 $7b $d0
	sub l                                            ; $7105: $95
	ld a, l                                          ; $7106: $7d
	nop                                              ; $7107: $00
	ld e, [hl]                                       ; $7108: $5e
	rst $38                                          ; $7109: $ff
	cp [hl]                                          ; $710a: $be
	rst $38                                          ; $710b: $ff
	ld e, $ff                                        ; $710c: $1e $ff
	ld c, $1f                                        ; $710e: $0e $1f
	ld [hl], a                                       ; $7110: $77
	cp $9b                                           ; $7111: $fe $9b
	adc [hl]                                         ; $7113: $8e
	rra                                              ; $7114: $1f
	ld c, [hl]                                       ; $7115: $4e
	rra                                              ; $7116: $1f
	ld e, [hl]                                       ; $7117: $5e
	add $9a                                          ; $7118: $c6 $9a
	rla                                              ; $711a: $17
	inc bc                                           ; $711b: $03
	daa                                              ; $711c: $27
	inc bc                                           ; $711d: $03
	ld d, a                                          ; $711e: $57
	ld l, d                                          ; $711f: $6a
	ret nz                                           ; $7120: $c0

	sbc [hl]                                         ; $7121: $9e
	sub h                                            ; $7122: $94
	ld a, e                                          ; $7123: $7b
	db $fc                                           ; $7124: $fc
	sbc [hl]                                         ; $7125: $9e
	sub l                                            ; $7126: $95
	ld a, e                                          ; $7127: $7b
	ret nc                                           ; $7128: $d0

	ld a, a                                          ; $7129: $7f
	db $fc                                           ; $712a: $fc
	ld h, [hl]                                       ; $712b: $66
	ret z                                            ; $712c: $c8

	ld h, a                                          ; $712d: $67
	db $fc                                           ; $712e: $fc
	ld a, a                                          ; $712f: $7f
	db $ec                                           ; $7130: $ec
	ld a, l                                          ; $7131: $7d
	inc bc                                           ; $7132: $03
	sbc b                                            ; $7133: $98
	xor e                                            ; $7134: $ab
	nop                                              ; $7135: $00
	ld d, a                                          ; $7136: $57
	nop                                              ; $7137: $00
	xor a                                            ; $7138: $af
	nop                                              ; $7139: $00
	ld e, a                                          ; $713a: $5f
	ld a, e                                          ; $713b: $7b
	db $fc                                           ; $713c: $fc
	sbc c                                            ; $713d: $99
	rst SubAFromDE                                          ; $713e: $df
	nop                                              ; $713f: $00
	inc h                                            ; $7140: $24
	rst GetHLinHL                                          ; $7141: $cf
	ld h, d                                          ; $7142: $62
	adc a                                            ; $7143: $8f
	halt                                             ; $7144: $76
	ret z                                            ; $7145: $c8

	sub a                                            ; $7146: $97
	dec h                                            ; $7147: $25
	rst GetHLinHL                                          ; $7148: $cf
	ld [hl+], a                                      ; $7149: $22
	rst GetHLinHL                                          ; $714a: $cf
	dec h                                            ; $714b: $25
	rst GetHLinHL                                          ; $714c: $cf
	ld h, [hl]                                       ; $714d: $66
	adc a                                            ; $714e: $8f
	ld h, [hl]                                       ; $714f: $66
	ret z                                            ; $7150: $c8

	ld a, e                                          ; $7151: $7b
	cp $9a                                           ; $7152: $fe $9a
	ld a, a                                          ; $7154: $7f
	ldh [rSVBK], a                                   ; $7155: $e0 $70
	rst $38                                          ; $7157: $ff
	ld a, a                                          ; $7158: $7f
	ld e, d                                          ; $7159: $5a
	call nz, Call_041_697f                           ; $715a: $c4 $7f $69
	ld a, [hl]                                       ; $715d: $7e
	di                                               ; $715e: $f3
	sbc [hl]                                         ; $715f: $9e
	rst $38                                          ; $7160: $ff
	ld [hl], d                                       ; $7161: $72
	ret nz                                           ; $7162: $c0

	ld l, e                                          ; $7163: $6b
	cp $9a                                           ; $7164: $fe $9a
	ld b, h                                          ; $7166: $44
	cp a                                             ; $7167: $bf
	ld b, h                                          ; $7168: $44
	cp a                                             ; $7169: $bf
	ld [$3c7b], a                                    ; $716a: $ea $7b $3c
	sbc [hl]                                         ; $716d: $9e
	ld a, [$fc7b]                                    ; $716e: $fa $7b $fc
	ld a, h                                          ; $7171: $7c
	cp d                                             ; $7172: $ba
	ld a, a                                          ; $7173: $7f
	cp $7c                                           ; $7174: $fe $7c
	or h                                             ; $7176: $b4
	sbc h                                            ; $7177: $9c
	ccf                                              ; $7178: $3f
	ret nz                                           ; $7179: $c0

	add b                                            ; $717a: $80
	ld a, d                                          ; $717b: $7a
	db $e4                                           ; $717c: $e4
	ld a, a                                          ; $717d: $7f
	ld d, h                                          ; $717e: $54
	ld a, a                                          ; $717f: $7f
	db $fc                                           ; $7180: $fc
	ld a, a                                          ; $7181: $7f
	sbc b                                            ; $7182: $98
	sub [hl]                                         ; $7183: $96
	ld [hl], l                                       ; $7184: $75
	nop                                              ; $7185: $00
	cp d                                             ; $7186: $ba
	nop                                              ; $7187: $00
	push af                                          ; $7188: $f5
	nop                                              ; $7189: $00
	ld a, [bc]                                       ; $718a: $0a
	nop                                              ; $718b: $00
	rla                                              ; $718c: $17
	ld a, e                                          ; $718d: $7b
	db $fc                                           ; $718e: $fc
	ld a, [hl]                                       ; $718f: $7e
	cp $7f                                           ; $7190: $fe $7f
	inc b                                            ; $7192: $04
	sbc h                                            ; $7193: $9c
	ld e, e                                          ; $7194: $5b
	nop                                              ; $7195: $00
	rst AddAOntoHL                                          ; $7196: $ef
	ld a, d                                          ; $7197: $7a
	ret nc                                           ; $7198: $d0

	ld a, a                                          ; $7199: $7f
	cp e                                             ; $719a: $bb
	ld l, a                                          ; $719b: $6f
	db $fc                                           ; $719c: $fc
	sub h                                            ; $719d: $94
	ei                                               ; $719e: $fb
	inc b                                            ; $719f: $04
	call nc, $eb2b                                   ; $71a0: $d4 $2b $eb
	inc d                                            ; $71a3: $14
	ret nc                                           ; $71a4: $d0

	cpl                                              ; $71a5: $2f
	cp l                                             ; $71a6: $bd
	nop                                              ; $71a7: $00
	or $73                                           ; $71a8: $f6 $73
	cp [hl]                                          ; $71aa: $be
	sbc [hl]                                         ; $71ab: $9e
	db $ed                                           ; $71ac: $ed
	ld a, e                                          ; $71ad: $7b
	db $fc                                           ; $71ae: $fc
	sbc b                                            ; $71af: $98
	ld [hl], l                                       ; $71b0: $75
	add b                                            ; $71b1: $80
	dec sp                                           ; $71b2: $3b
	ret nz                                           ; $71b3: $c0

	nop                                              ; $71b4: $00
	nop                                              ; $71b5: $00
	add c                                            ; $71b6: $81
	ld a, e                                          ; $71b7: $7b
	inc b                                            ; $71b8: $04
	ld [hl], a                                       ; $71b9: $77
	db $fc                                           ; $71ba: $fc
	sbc h                                            ; $71bb: $9c
	add l                                            ; $71bc: $85
	nop                                              ; $71bd: $00
	ld b, e                                          ; $71be: $43
	ld a, e                                          ; $71bf: $7b
	ld d, [hl]                                       ; $71c0: $56
	ld a, a                                          ; $71c1: $7f
	ret z                                            ; $71c2: $c8

	ld a, a                                          ; $71c3: $7f
	ld d, b                                          ; $71c4: $50
	sbc d                                            ; $71c5: $9a
	cp [hl]                                          ; $71c6: $be
	nop                                              ; $71c7: $00
	push de                                          ; $71c8: $d5
	nop                                              ; $71c9: $00
	rst FarCall                                          ; $71ca: $f7
	ld a, e                                          ; $71cb: $7b
	jp c, $c87f                                      ; $71cc: $da $7f $c8

	sbc h                                            ; $71cf: $9c
	or $09                                           ; $71d0: $f6 $09
	rst AddAOntoHL                                          ; $71d2: $ef
	ld a, e                                          ; $71d3: $7b
	ld hl, sp+$7f                                    ; $71d4: $f8 $7f
	db $fc                                           ; $71d6: $fc
	ld a, a                                          ; $71d7: $7f
	or $9d                                           ; $71d8: $f6 $9d
	cp e                                             ; $71da: $bb
	ld b, h                                          ; $71db: $44
	ld [hl], h                                       ; $71dc: $74
	jr c, @-$68                                      ; $71dd: $38 $96

	dec d                                            ; $71df: $15
	ld [$00a8], a                                    ; $71e0: $ea $a8 $00
	ld [hl], b                                       ; $71e3: $70
	nop                                              ; $71e4: $00
	add sp, $00                                      ; $71e5: $e8 $00
	call nc, $fc7b                                   ; $71e7: $d4 $7b $fc
	sbc [hl]                                         ; $71ea: $9e
	db $f4                                           ; $71eb: $f4
	ld a, e                                          ; $71ec: $7b
	db $fc                                           ; $71ed: $fc
	ld a, l                                          ; $71ee: $7d
	jr z, jr_041_7267                                ; $71ef: $28 $76

	ret z                                            ; $71f1: $c8

	halt                                             ; $71f2: $76
	ld e, b                                          ; $71f3: $58
	ld [hl], a                                       ; $71f4: $77
	db $fc                                           ; $71f5: $fc
	ld a, a                                          ; $71f6: $7f
	adc b                                            ; $71f7: $88
	sbc d                                            ; $71f8: $9a
	dec d                                            ; $71f9: $15
	nop                                              ; $71fa: $00
	ld l, d                                          ; $71fb: $6a
	nop                                              ; $71fc: $00
	or l                                             ; $71fd: $b5
	ld a, d                                          ; $71fe: $7a
	ld a, [hl+]                                      ; $71ff: $2a
	ld a, [hl]                                       ; $7200: $7e
	ret z                                            ; $7201: $c8

	ld a, a                                          ; $7202: $7f
	db $fc                                           ; $7203: $fc
	ld l, h                                          ; $7204: $6c
	ld d, [hl]                                       ; $7205: $56
	halt                                             ; $7206: $76
	call z, $ae9e                                    ; $7207: $cc $9e $ae
	ld a, e                                          ; $720a: $7b
	db $fc                                           ; $720b: $fc
	sbc h                                            ; $720c: $9c
	xor $1f                                          ; $720d: $ee $1f
	adc $7b                                          ; $720f: $ce $7b
	db $fc                                           ; $7211: $fc
	sub h                                            ; $7212: $94
	ld l, [hl]                                       ; $7213: $6e
	sbc a                                            ; $7214: $9f
	scf                                              ; $7215: $37
	inc bc                                           ; $7216: $03
	ld e, a                                          ; $7217: $5f
	inc bc                                           ; $7218: $03
	scf                                              ; $7219: $37
	inc bc                                           ; $721a: $03
	ld a, a                                          ; $721b: $7f
	inc bc                                           ; $721c: $03
	or a                                             ; $721d: $b7
	ld a, e                                          ; $721e: $7b
	db $fc                                           ; $721f: $fc
	sbc e                                            ; $7220: $9b
	cp a                                             ; $7221: $bf
	inc bc                                           ; $7222: $03
	ld a, e                                          ; $7223: $7b
	rlca                                             ; $7224: $07
	halt                                             ; $7225: $76
	call z, $fc7f                                    ; $7226: $cc $7f $fc
	sbc d                                            ; $7229: $9a
	sub a                                            ; $722a: $97
	nop                                              ; $722b: $00
	xor [hl]                                         ; $722c: $ae
	nop                                              ; $722d: $00
	sbc a                                            ; $722e: $9f
	ld a, d                                          ; $722f: $7a
	ldh [$9e], a                                     ; $7230: $e0 $9e
	cp a                                             ; $7232: $bf
	ld [hl], d                                       ; $7233: $72
	ret nz                                           ; $7234: $c0

	sub e                                            ; $7235: $93
	ld l, $70                                        ; $7236: $2e $70
	dec hl                                           ; $7238: $2b
	ld [hl], b                                       ; $7239: $70
	xor a                                            ; $723a: $af
	ld [hl], b                                       ; $723b: $70
	inc hl                                           ; $723c: $23
	ld a, b                                          ; $723d: $78
	and a                                            ; $723e: $a7
	ld a, b                                          ; $723f: $78
	inc hl                                           ; $7240: $23
	ld a, b                                          ; $7241: $78
	ld [hl], a                                       ; $7242: $77
	cp h                                             ; $7243: $bc
	ld [hl], a                                       ; $7244: $77
	ld a, $6f                                        ; $7245: $3e $6f
	cp $7f                                           ; $7247: $fe $7f
	ld a, [hl-]                                      ; $7249: $3a
	ld a, [hl]                                       ; $724a: $7e
	call z, Call_041_6e9e                            ; $724b: $cc $9e $6e
	ld a, d                                          ; $724e: $7a
	call nz, $2f9c                                   ; $724f: $c4 $9c $2f
	rst GetHLinHL                                          ; $7252: $cf
	daa                                              ; $7253: $27
	ld a, e                                          ; $7254: $7b
	db $fc                                           ; $7255: $fc
	ld [hl], a                                       ; $7256: $77
	ld a, [$ffdc]                                    ; $7257: $fa $dc $ff
	sbc b                                            ; $725a: $98
	ldh [rIE], a                                     ; $725b: $e0 $ff
	ldh [$f0], a                                     ; $725d: $e0 $f0
	rst AddAOntoHL                                          ; $725f: $ef
	ldh a, [$e8]                                     ; $7260: $f0 $e8
	ld [hl], a                                       ; $7262: $77
	cp $7b                                           ; $7263: $fe $7b
	db $f4                                           ; $7265: $f4
	ld a, d                                          ; $7266: $7a

jr_041_7267:
	jr nc, @+$7c                                     ; $7267: $30 $7a

	ld l, $7f                                        ; $7269: $2e $7f
	db $fd                                           ; $726b: $fd
	ld [hl], d                                       ; $726c: $72
	cp d                                             ; $726d: $ba
	ld a, [hl]                                       ; $726e: $7e
	adc $9d                                          ; $726f: $ce $9d
	ld b, l                                          ; $7271: $45
	cp [hl]                                          ; $7272: $be
	ld e, a                                          ; $7273: $5f
	db $fc                                           ; $7274: $fc
	ld a, a                                          ; $7275: $7f
	cp $8e                                           ; $7276: $fe $8e
	sbc a                                            ; $7278: $9f
	ld h, b                                          ; $7279: $60
	ccf                                              ; $727a: $3f
	ret nz                                           ; $727b: $c0

	rra                                              ; $727c: $1f

jr_041_727d:
	ldh [rIF], a                                     ; $727d: $e0 $0f
	ldh a, [rAUD2ENV]                                ; $727f: $f0 $17
	add sp, $07                                      ; $7281: $e8 $07
	ld hl, sp+$0a                                    ; $7283: $f8 $0a
	push af                                          ; $7285: $f5
	dec b                                            ; $7286: $05
	ld a, [$63fa]                                    ; $7287: $fa $fa $63
	and h                                            ; $728a: $a4

jr_041_728b:
	sbc d                                            ; $728b: $9a
	rst FarCall                                          ; $728c: $f7
	ld [$11ee], sp                                   ; $728d: $08 $ee $11
	ld d, l                                          ; $7290: $55
	ld a, b                                          ; $7291: $78
	adc a                                            ; $7292: $8f
	ld [hl], a                                       ; $7293: $77
	cp $89                                           ; $7294: $fe $89
	cp $01                                           ; $7296: $fe $01
	cp $01                                           ; $7298: $fe $01
	push af                                          ; $729a: $f5
	ld a, [bc]                                       ; $729b: $0a
	xor d                                            ; $729c: $aa
	ld d, l                                          ; $729d: $55

Call_041_729e:
	ld d, l                                          ; $729e: $55
	xor d                                            ; $729f: $aa
	xor h                                            ; $72a0: $ac
	ld d, e                                          ; $72a1: $53
	ret nz                                           ; $72a2: $c0

	ccf                                              ; $72a3: $3f
	jr z, jr_041_727d                                ; $72a4: $28 $d7

	and h                                            ; $72a6: $a4
	ld e, e                                          ; $72a7: $5b
	ld d, b                                          ; $72a8: $50
	xor a                                            ; $72a9: $af
	jr nz, jr_041_728b                               ; $72aa: $20 $df

	ld [hl], a                                       ; $72ac: $77
	push hl                                          ; $72ad: $e5
	adc [hl]                                         ; $72ae: $8e
	ld e, a                                          ; $72af: $5f
	and b                                            ; $72b0: $a0
	ld a, [bc]                                       ; $72b1: $0a
	ldh a, [$37]                                     ; $72b2: $f0 $37
	ret z                                            ; $72b4: $c8

	dec bc                                           ; $72b5: $0b
	db $f4                                           ; $72b6: $f4
	rlca                                             ; $72b7: $07
	ld hl, sp+$05                                    ; $72b8: $f8 $05
	ld a, [$fd02]                                    ; $72ba: $fa $02 $fd
	dec b                                            ; $72bd: $05
	ld a, [$7a56]                                    ; $72be: $fa $56 $7a
	call z, $d79c                                    ; $72c1: $cc $9c $d7
	nop                                              ; $72c4: $00
	cp l                                             ; $72c5: $bd
	ld a, e                                          ; $72c6: $7b
	db $fc                                           ; $72c7: $fc
	ld [hl], e                                       ; $72c8: $73
	ld d, [hl]                                       ; $72c9: $56
	add e                                            ; $72ca: $83
	add b                                            ; $72cb: $80
	ld [$f515], a                                    ; $72cc: $ea $15 $f5
	ld a, [bc]                                       ; $72cf: $0a
	ldh [c], a                                       ; $72d0: $e2
	dec e                                            ; $72d1: $1d
	pop de                                           ; $72d2: $d1
	ld l, $a8                                        ; $72d3: $2e $a8
	ld d, a                                          ; $72d5: $57
	ld d, b                                          ; $72d6: $50
	xor a                                            ; $72d7: $af
	and b                                            ; $72d8: $a0
	ld e, a                                          ; $72d9: $5f
	ld d, b                                          ; $72da: $50
	xor a                                            ; $72db: $af
	jp nz, $113d                                     ; $72dc: $c2 $3d $11

	xor $02                                          ; $72df: $ee $02
	db $fd                                           ; $72e1: $fd
	ld de, $00ee                                     ; $72e2: $11 $ee $00
	rst $38                                          ; $72e5: $ff
	ld bc, $ed72                                     ; $72e6: $01 $72 $ed
	ld a, [hl]                                       ; $72e9: $7e
	ld b, b                                          ; $72ea: $40
	sbc h                                            ; $72eb: $9c
	ld a, l                                          ; $72ec: $7d
	add b                                            ; $72ed: $80
	ld a, [$fc7b]                                    ; $72ee: $fa $7b $fc
	ld a, [hl]                                       ; $72f1: $7e
	ld a, d                                          ; $72f2: $7a
	sbc b                                            ; $72f3: $98
	ld e, l                                          ; $72f4: $5d
	and b                                            ; $72f5: $a0
	cp a                                             ; $72f6: $bf
	ld b, b                                          ; $72f7: $40
	ld e, a                                          ; $72f8: $5f
	and b                                            ; $72f9: $a0
	dec bc                                           ; $72fa: $0b
	ld a, c                                          ; $72fb: $79
	db $e4                                           ; $72fc: $e4
	ld l, l                                          ; $72fd: $6d
	ldh [$7f], a                                     ; $72fe: $e0 $7f
	cp [hl]                                          ; $7300: $be
	adc e                                            ; $7301: $8b
	ld a, [$dd05]                                    ; $7302: $fa $05 $dd
	ld [bc], a                                       ; $7305: $02
	db $db                                           ; $7306: $db
	inc h                                            ; $7307: $24
	db $fd                                           ; $7308: $fd
	ld [bc], a                                       ; $7309: $02
	jp c, $d525                                      ; $730a: $da $25 $d5

	ld a, [hl+]                                      ; $730d: $2a
	xor d                                            ; $730e: $aa
	ld d, l                                          ; $730f: $55
	ld b, b                                          ; $7310: $40
	cp a                                             ; $7311: $bf

jr_041_7312:
	adc b                                            ; $7312: $88
	ld [hl], a                                       ; $7313: $77
	nop                                              ; $7314: $00
	rst $38                                          ; $7315: $ff
	halt                                             ; $7316: $76
	call z, $fc7f                                    ; $7317: $cc $7f $fc
	ld [hl], a                                       ; $731a: $77
	ld a, [$ae97]                                    ; $731b: $fa $97 $ae
	ld e, a                                          ; $731e: $5f
	ld c, [hl]                                       ; $731f: $4e
	cp a                                             ; $7320: $bf
	ld l, $df                                        ; $7321: $2e $df
	ei                                               ; $7323: $fb
	rlca                                             ; $7324: $07
	ld h, a                                          ; $7325: $67
	cp $98                                           ; $7326: $fe $98
	db $eb                                           ; $7328: $eb
	rla                                              ; $7329: $17
	db $db                                           ; $732a: $db
	daa                                              ; $732b: $27
	xor e                                            ; $732c: $ab
	ld d, a                                          ; $732d: $57
	cp a                                             ; $732e: $bf
	ld a, e                                          ; $732f: $7b
	adc h                                            ; $7330: $8c
	sbc [hl]                                         ; $7331: $9e
	ccf                                              ; $7332: $3f
	ld a, c                                          ; $7333: $79
	db $f4                                           ; $7334: $f4
	ld [hl], a                                       ; $7335: $77
	db $fc                                           ; $7336: $fc
	sub [hl]                                         ; $7337: $96
	ld a, [hl]                                       ; $7338: $7e
	add c                                            ; $7339: $81
	ld [hl], l                                       ; $733a: $75
	adc d                                            ; $733b: $8a
	and a                                            ; $733c: $a7
	ld a, b                                          ; $733d: $78
	daa                                              ; $733e: $27
	ld a, b                                          ; $733f: $78
	or a                                             ; $7340: $b7
	ld [hl], e                                       ; $7341: $73
	cp $95                                           ; $7342: $fe $95
	and [hl]                                         ; $7344: $a6
	ld a, c                                          ; $7345: $79
	or a                                             ; $7346: $b7
	ld a, b                                          ; $7347: $78
	ld [hl], $f9                                     ; $7348: $36 $f9
	rst FarCall                                          ; $734a: $f7
	ld [$03fc], sp                                   ; $734b: $08 $fc $03
	ld l, a                                          ; $734e: $6f
	ld [hl], $7f                                     ; $734f: $36 $7f
	ld [hl], d                                       ; $7351: $72
	ld a, a                                          ; $7352: $7f
	xor [hl]                                         ; $7353: $ae
	ld a, a                                          ; $7354: $7f
	or b                                             ; $7355: $b0
	halt                                             ; $7356: $76
	call z, $a796                                    ; $7357: $cc $96 $a7
	rst GetHLinHL                                          ; $735a: $cf
	ld l, a                                          ; $735b: $6f
	rst GetHLinHL                                          ; $735c: $cf
	adc a                                            ; $735d: $8f
	rst AddAOntoHL                                          ; $735e: $ef
	ld e, a                                          ; $735f: $5f
	rst AddAOntoHL                                          ; $7360: $ef
	sbc a                                            ; $7361: $9f
	ld a, e                                          ; $7362: $7b
	db $fc                                           ; $7363: $fc
	ld l, [hl]                                       ; $7364: $6e
	jp z, $fe5f                                      ; $7365: $ca $5f $fe

	ld b, h                                          ; $7368: $44
	ld b, b                                          ; $7369: $40
	halt                                             ; $736a: $76
	call z, $fe57                                    ; $736b: $cc $57 $fe
	sbc l                                            ; $736e: $9d
	add hl, bc                                       ; $736f: $09
	or $77                                           ; $7370: $f6 $77
	jr c, jr_041_73e3                                ; $7372: $38 $6f

	inc [hl]                                         ; $7374: $34
	ld [hl], e                                       ; $7375: $73
	jr nc, jr_041_7312                               ; $7376: $30 $9a

	dec d                                            ; $7378: $15
	ld d, l                                          ; $7379: $55
	xor d                                            ; $737a: $aa
	ld h, b                                          ; $737b: $60
	sbc a                                            ; $737c: $9f
	ld e, a                                          ; $737d: $5f
	ldh a, [rPCM34]                                  ; $737e: $f0 $77
	ld [$fc7f], sp                                   ; $7380: $08 $7f $fc
	ld h, d                                          ; $7383: $62
	xor e                                            ; $7384: $ab
	ld b, e                                          ; $7385: $43
	cp $7e                                           ; $7386: $fe $7e
	db $f4                                           ; $7388: $f4
	ld e, a                                          ; $7389: $5f
	call nc, $fe77                                   ; $738a: $d4 $77 $fe
	ld a, [hl]                                       ; $738d: $7e
	sbc b                                            ; $738e: $98
	ld a, a                                          ; $738f: $7f
	ld c, h                                          ; $7390: $4c
	ld a, a                                          ; $7391: $7f
	ld h, d                                          ; $7392: $62
	sbc c                                            ; $7393: $99
	ld d, h                                          ; $7394: $54
	xor e                                            ; $7395: $ab
	ld a, [hl+]                                      ; $7396: $2a
	push de                                          ; $7397: $d5
	inc b                                            ; $7398: $04
	ei                                               ; $7399: $fb
	ld [hl], a                                       ; $739a: $77
	ldh a, [$7e]                                     ; $739b: $f0 $7e
	sbc d                                            ; $739d: $9a
	sbc [hl]                                         ; $739e: $9e
	db $10                                           ; $739f: $10
	ld [hl], l                                       ; $73a0: $75
	sub c                                            ; $73a1: $91
	inc hl                                           ; $73a2: $23
	cp $93                                           ; $73a3: $fe $93
	xor a                                            ; $73a5: $af
	ld d, b                                          ; $73a6: $50
	ld d, a                                          ; $73a7: $57
	xor b                                            ; $73a8: $a8
	cpl                                              ; $73a9: $2f
	ret nc                                           ; $73aa: $d0

	ld d, l                                          ; $73ab: $55
	xor d                                            ; $73ac: $aa
	ld a, [bc]                                       ; $73ad: $0a
	push af                                          ; $73ae: $f5
	dec d                                            ; $73af: $15
	ld [$4076], a                                    ; $73b0: $ea $76 $40
	halt                                             ; $73b3: $76
	sub b                                            ; $73b4: $90
	ld a, a                                          ; $73b5: $7f
	db $fc                                           ; $73b6: $fc
	ld a, a                                          ; $73b7: $7f
	ret nz                                           ; $73b8: $c0

	ld h, [hl]                                       ; $73b9: $66
	sub b                                            ; $73ba: $90
	ld a, [hl]                                       ; $73bb: $7e
	ld sp, hl                                        ; $73bc: $f9
	ld c, a                                          ; $73bd: $4f
	ret nc                                           ; $73be: $d0

	halt                                             ; $73bf: $76
	call z, $fc67                                    ; $73c0: $cc $67 $fc
	sub c                                            ; $73c3: $91
	ld c, $ff                                        ; $73c4: $0e $ff
	ld c, $ff                                        ; $73c6: $0e $ff
	db $db                                           ; $73c8: $db
	daa                                              ; $73c9: $27
	adc e                                            ; $73ca: $8b
	ld [hl], a                                       ; $73cb: $77
	dec bc                                           ; $73cc: $0b
	rst FarCall                                          ; $73cd: $f7
	add e                                            ; $73ce: $83
	ld a, a                                          ; $73cf: $7f
	inc bc                                           ; $73d0: $03
	rst $38                                          ; $73d1: $ff
	ld l, a                                          ; $73d2: $6f
	db $fc                                           ; $73d3: $fc
	sub l                                            ; $73d4: $95
	ld l, d                                          ; $73d5: $6a
	sub l                                            ; $73d6: $95
	ld d, h                                          ; $73d7: $54
	xor e                                            ; $73d8: $ab
	ld h, b                                          ; $73d9: $60
	sbc a                                            ; $73da: $9f
	ld d, b                                          ; $73db: $50
	xor a                                            ; $73dc: $af
	ld b, b                                          ; $73dd: $40
	cp a                                             ; $73de: $bf
	ld l, a                                          ; $73df: $6f
	cp $97                                           ; $73e0: $fe $97
	or l                                             ; $73e2: $b5

jr_041_73e3:
	ld a, d                                          ; $73e3: $7a
	ld [hl], $f9                                     ; $73e4: $36 $f9
	inc [hl]                                         ; $73e6: $34
	ei                                               ; $73e7: $fb
	jr nc, @+$01                                     ; $73e8: $30 $ff

	ld [hl], a                                       ; $73ea: $77
	db $fc                                           ; $73eb: $fc
	sbc [hl]                                         ; $73ec: $9e
	inc h                                            ; $73ed: $24
	ld a, e                                          ; $73ee: $7b
	db $fc                                           ; $73ef: $fc
	ld b, a                                          ; $73f0: $47
	add b                                            ; $73f1: $80
	sbc h                                            ; $73f2: $9c
	adc a                                            ; $73f3: $8f
	rst $38                                          ; $73f4: $ff
	ld c, a                                          ; $73f5: $4f
	ld d, e                                          ; $73f6: $53
	db $fc                                           ; $73f7: $fc
	ld a, d                                          ; $73f8: $7a
	call z, $a89e                                    ; $73f9: $cc $9e $a8
	ld a, e                                          ; $73fc: $7b
	cp $76                                           ; $73fd: $fe $76
	call nz, $f877                                   ; $73ff: $c4 $77 $f8
	ld a, h                                          ; $7402: $7c
	pop hl                                           ; $7403: $e1
	ld c, d                                          ; $7404: $4a
	ret nz                                           ; $7405: $c0

	ld a, [hl+]                                      ; $7406: $2a
	nop                                              ; $7407: $00
	db $db                                           ; $7408: $db
	ld h, [hl]                                       ; $7409: $66
	sbc e                                            ; $740a: $9b
	ld h, l                                          ; $740b: $65
	ld h, [hl]                                       ; $740c: $66
	ld h, h                                          ; $740d: $64
	ld [hl], a                                       ; $740e: $77
	ld h, a                                          ; $740f: $67
	or $9d                                           ; $7410: $f6 $9d
	ld h, l                                          ; $7412: $65
	ld [hl], a                                       ; $7413: $77
	sbc $33                                          ; $7414: $de $33
	sbc b                                            ; $7416: $98
	inc [hl]                                         ; $7417: $34
	ld b, h                                          ; $7418: $44
	inc sp                                           ; $7419: $33
	dec [hl]                                         ; $741a: $35
	inc sp                                           ; $741b: $33
	dec [hl]                                         ; $741c: $35
	ld [hl], a                                       ; $741d: $77
	jp c, $9d55                                      ; $741e: $da $55 $9d

	ld b, h                                          ; $7421: $44
	ld b, l                                          ; $7422: $45
	ld a, e                                          ; $7423: $7b
	or $9d                                           ; $7424: $f6 $9d
	ld [hl], a                                       ; $7426: $77
	ld [hl], l                                       ; $7427: $75
	ld b, a                                          ; $7428: $47
	or $d9                                           ; $7429: $f6 $d9
	ld b, h                                          ; $742b: $44
	inc bc                                           ; $742c: $03
	or $63                                           ; $742d: $f6 $63
	or $89                                           ; $742f: $f6 $89
	adc c                                            ; $7431: $89
	add b                                            ; $7432: $80

Jump_041_7433:
	adc a                                            ; $7433: $8f
	ld e, $0c                                        ; $7434: $1e $0c
	ld b, $a5                                        ; $7436: $06 $a5
	rst SubAFromDE                                          ; $7438: $df
	ld a, [hl-]                                      ; $7439: $3a
	pop af                                           ; $743a: $f1
	rst $38                                          ; $743b: $ff
	rst $38                                          ; $743c: $ff
	di                                               ; $743d: $f3
	rst $38                                          ; $743e: $ff
	jp c, $ffbd                                      ; $743f: $da $bd $ff

	cp $36                                           ; $7442: $fe $36
	inc h                                            ; $7444: $24
	dec [hl]                                         ; $7445: $35
	ld c, e                                          ; $7446: $4b

Jump_041_7447:
	cp l                                             ; $7447: $bd
	ld e, $af                                        ; $7448: $1e $af
	ld h, a                                          ; $744a: $67
	ret                                              ; $744b: $c9


	rst $38                                          ; $744c: $ff
	ei                                               ; $744d: $fb
	rst $38                                          ; $744e: $ff
	cp $fd                                           ; $744f: $fe $fd
	ld e, a                                          ; $7451: $5f
	sub l                                            ; $7452: $95
	rst $38                                          ; $7453: $ff
	ld a, a                                          ; $7454: $7f
	rlca                                             ; $7455: $07
	rst SubAFromDE                                          ; $7456: $df
	cp a                                             ; $7457: $bf
	ei                                               ; $7458: $fb
	cp a                                             ; $7459: $bf
	xor $f7                                          ; $745a: $ee $f7
	add b                                            ; $745c: $80
	sbc $f8                                          ; $745d: $de $f8
	sbc [hl]                                         ; $745f: $9e
	db $fc                                           ; $7460: $fc
	reti                                             ; $7461: $d9


	rst $38                                          ; $7462: $ff
	sbc h                                            ; $7463: $9c
	nop                                              ; $7464: $00
	add b                                            ; $7465: $80
	rst $38                                          ; $7466: $ff
	ei                                               ; $7467: $fb
	ld h, a                                          ; $7468: $67
	ldh a, [$7f]                                     ; $7469: $f0 $7f
	rst FarCall                                          ; $746b: $f7
	ld d, e                                          ; $746c: $53
	ldh a, [$9c]                                     ; $746d: $f0 $9c
	rrca                                             ; $746f: $0f
	dec e                                            ; $7470: $1d
	ld sp, hl                                        ; $7471: $f9
	db $fc                                           ; $7472: $fc
	sbc c                                            ; $7473: $99
	inc c                                            ; $7474: $0c
	cp $fe                                           ; $7475: $fe $fe
	ei                                               ; $7477: $fb
	ld a, [$defb]                                    ; $7478: $fa $fb $de
	ld a, [$f89d]                                    ; $747b: $fa $9d $f8
	ld a, [$07d9]                                    ; $747e: $fa $d9 $07
	rst $38                                          ; $7481: $ff
	sbc h                                            ; $7482: $9c
	inc bc                                           ; $7483: $03
	nop                                              ; $7484: $00
	ld [bc], a                                       ; $7485: $02
	sbc $03                                          ; $7486: $de $03
	reti                                             ; $7488: $d9


	rst $38                                          ; $7489: $ff
	db $dd                                           ; $748a: $dd
	ldh [$df], a                                     ; $748b: $e0 $df
	ldh a, [hDisp1_WY]                                     ; $748d: $f0 $95
	ld hl, sp-$01                                    ; $748f: $f8 $ff
	or l                                             ; $7491: $b5
	ld c, d                                          ; $7492: $4a
	or l                                             ; $7493: $b5
	ld b, b                                          ; $7494: $40
	push hl                                          ; $7495: $e5
	ld a, [hl-]                                      ; $7496: $3a
	db $dd                                           ; $7497: $dd
	rst AddAOntoHL                                          ; $7498: $ef
	db $fd                                           ; $7499: $fd
	ld h, a                                          ; $749a: $67
	sbc b                                            ; $749b: $98
	sbc e                                            ; $749c: $9b
	ld b, b                                          ; $749d: $40
	and b                                            ; $749e: $a0
	ld d, b                                          ; $749f: $50
	rst $38                                          ; $74a0: $ff
	db $dd                                           ; $74a1: $dd
	ld c, $9b                                        ; $74a2: $0e $9b
	adc [hl]                                         ; $74a4: $8e
	xor $f6                                          ; $74a5: $ee $f6
	cp $dd                                           ; $74a7: $fe $dd
	di                                               ; $74a9: $f3
	sub a                                            ; $74aa: $97
	rst FarCall                                          ; $74ab: $f7
	di                                               ; $74ac: $f3
	di                                               ; $74ad: $f3
	ei                                               ; $74ae: $fb
	ld h, b                                          ; $74af: $60
	jr c, @+$0e                                      ; $74b0: $38 $0c

	inc bc                                           ; $74b2: $03
	db $fd                                           ; $74b3: $fd
	sbc e                                            ; $74b4: $9b
	sbc a                                            ; $74b5: $9f
	rst SubAFromBC                                          ; $74b6: $e7
	ei                                               ; $74b7: $fb
	cp $dd                                           ; $74b8: $fe $dd
	rst $38                                          ; $74ba: $ff
	add b                                            ; $74bb: $80
	ld h, b                                          ; $74bc: $60
	jr nc, jr_041_74d7                               ; $74bd: $30 $18

	adc h                                            ; $74bf: $8c
	add $33                                          ; $74c0: $c6 $33
	inc c                                            ; $74c2: $0c
	rlca                                             ; $74c3: $07
	cp a                                             ; $74c4: $bf
	rst SubAFromDE                                          ; $74c5: $df
	rst AddAOntoHL                                          ; $74c6: $ef
	ld [hl], a                                       ; $74c7: $77
	ei                                               ; $74c8: $fb
	db $fd                                           ; $74c9: $fd
	rst $38                                          ; $74ca: $ff
	ei                                               ; $74cb: $fb
	add b                                            ; $74cc: $80
	ld b, b                                          ; $74cd: $40
	ld b, e                                          ; $74ce: $43
	inc hl                                           ; $74cf: $23
	scf                                              ; $74d0: $37
	inc de                                           ; $74d1: $13
	sbc e                                            ; $74d2: $9b
	rst GetHLinHL                                          ; $74d3: $cf
	rst $38                                          ; $74d4: $ff
	rst $38                                          ; $74d5: $ff
	db $fd                                           ; $74d6: $fd

jr_041_74d7:
	db $fd                                           ; $74d7: $fd
	rst AddAOntoHL                                          ; $74d8: $ef
	db $fd                                           ; $74d9: $fd
	push af                                          ; $74da: $f5
	sbc [hl]                                         ; $74db: $9e
	ld a, a                                          ; $74dc: $7f
	ld sp, hl                                        ; $74dd: $f9
	ld h, e                                          ; $74de: $63
	ld b, l                                          ; $74df: $45
	ccf                                              ; $74e0: $3f
	ldh a, [$df]                                     ; $74e1: $f0 $df
	ld bc, $039c                                     ; $74e3: $01 $9c $03
	ld b, $07                                        ; $74e6: $06 $07
	sbc $ff                                          ; $74e8: $de $ff
	ld a, a                                          ; $74ea: $7f
	or b                                             ; $74eb: $b0
	adc l                                            ; $74ec: $8d
	db $fd                                           ; $74ed: $fd
	ei                                               ; $74ee: $fb
	ei                                               ; $74ef: $fb
	ld c, h                                          ; $74f0: $4c
	ret c                                            ; $74f1: $d8

	sub b                                            ; $74f2: $90
	or b                                             ; $74f3: $b0
	jr nz, jr_041_7536                               ; $74f4: $20 $40

	ret nz                                           ; $74f6: $c0

	add b                                            ; $74f7: $80
	ei                                               ; $74f8: $fb
	ld [hl], a                                       ; $74f9: $77
	rst $38                                          ; $74fa: $ff
	rst AddAOntoHL                                          ; $74fb: $ef
	rst SubAFromDE                                          ; $74fc: $df
	rst $38                                          ; $74fd: $ff
	cp a                                             ; $74fe: $bf
	ld b, e                                          ; $74ff: $43
	ret nz                                           ; $7500: $c0

	reti                                             ; $7501: $d9


	rra                                              ; $7502: $1f
	reti                                             ; $7503: $d9


	rst SubAFromBC                                          ; $7504: $e7
	sub d                                            ; $7505: $92
	ld l, c                                          ; $7506: $69
	ldh [$e5], a                                     ; $7507: $e0 $e5
	call c, $daf7                                    ; $7509: $dc $f7 $da
	cp a                                             ; $750c: $bf
	ld a, a                                          ; $750d: $7f
	rst SubAFromHL                                          ; $750e: $d7
	rst $38                                          ; $750f: $ff
	rst SubAFromDE                                          ; $7510: $df
	rst AddAOntoHL                                          ; $7511: $ef
	db $fd                                           ; $7512: $fd
	sbc $ff                                          ; $7513: $de $ff
	sub h                                            ; $7515: $94
	xor [hl]                                         ; $7516: $ae
	ld d, l                                          ; $7517: $55
	xor d                                            ; $7518: $aa
	rst $38                                          ; $7519: $ff
	ld a, l                                          ; $751a: $7d
	cp $f5                                           ; $751b: $fe $f5
	adc l                                            ; $751d: $8d
	ld e, a                                          ; $751e: $5f
	cp $7f                                           ; $751f: $fe $7f
	call c, $80ff                                    ; $7521: $dc $ff $80
	sbc a                                            ; $7524: $9f
	ld c, d                                          ; $7525: $4a
	ld c, l                                          ; $7526: $4d
	ld c, a                                          ; $7527: $4f
	ld a, [hl+]                                      ; $7528: $2a
	and l                                            ; $7529: $a5
	ld a, $e0                                        ; $752a: $3e $e0
	rst $38                                          ; $752c: $ff
	push af                                          ; $752d: $f5
	ld a, [$f7be]                                    ; $752e: $fa $be $f7
	ld a, e                                          ; $7531: $7b
	rst $38                                          ; $7532: $ff
	rst $38                                          ; $7533: $ff
	xor c                                            ; $7534: $a9
	add hl, bc                                       ; $7535: $09

jr_041_7536:
	xor b                                            ; $7536: $a8
	halt                                             ; $7537: $76
	rst SubAFromBC                                          ; $7538: $e7
	ldh a, [c]                                       ; $7539: $f2
	or l                                             ; $753a: $b5
	jp nc, $f0ff                                     ; $753b: $d2 $ff $f0

	ldh a, [$38]                                     ; $753e: $f0 $38
	ld hl, sp-$03                                    ; $7540: $f8 $fd
	ld a, [$fd80]                                    ; $7542: $fa $80 $fd
	dec d                                            ; $7545: $15
	di                                               ; $7546: $f3
	ld [$f61b], sp                                   ; $7547: $08 $1b $f6
	and l                                            ; $754a: $a5
	ld d, d                                          ; $754b: $52
	add b                                            ; $754c: $80

jr_041_754d:
	rst $38                                          ; $754d: $ff
	ld [rRAMG], sp                                   ; $754e: $08 $00 $00
	add hl, bc                                       ; $7551: $09
	ld e, d                                          ; $7552: $5a
	xor l                                            ; $7553: $ad
	ld a, a                                          ; $7554: $7f
	ld b, a                                          ; $7555: $47
	cp a                                             ; $7556: $bf
	ccf                                              ; $7557: $3f
	rst SubAFromHL                                          ; $7558: $d7
	and a                                            ; $7559: $a7
	ld b, a                                          ; $755a: $47
	rlca                                             ; $755b: $07
	rrca                                             ; $755c: $0f
	db $fc                                           ; $755d: $fc
	inc b                                            ; $755e: $04
	inc b                                            ; $755f: $04
	inc l                                            ; $7560: $2c
	ld e, h                                          ; $7561: $5c
	cp h                                             ; $7562: $bc
	rst SubAFromDE                                          ; $7563: $df
	db $fc                                           ; $7564: $fc
	ld a, [hl]                                       ; $7565: $7e
	add $6f                                          ; $7566: $c6 $6f
	cp $d9                                           ; $7568: $fe $d9
	rlca                                             ; $756a: $07
	ld a, a                                          ; $756b: $7f
	ld d, h                                          ; $756c: $54

jr_041_756d:
	sbc c                                            ; $756d: $99
	ld bc, $0102                                     ; $756e: $01 $02 $01
	ld [bc], a                                       ; $7571: $02
	ld de, $d90e                                     ; $7572: $11 $0e $d9
	rst $38                                          ; $7575: $ff
	sub [hl]                                         ; $7576: $96
	ld a, h                                          ; $7577: $7c
	cp [hl]                                          ; $7578: $be
	ld h, l                                          ; $7579: $65
	and b                                            ; $757a: $a0
	ld b, [hl]                                       ; $757b: $46
	and h                                            ; $757c: $a4
	ld d, b                                          ; $757d: $50
	and b                                            ; $757e: $a0
	rst $38                                          ; $757f: $ff
	ld a, e                                          ; $7580: $7b
	xor a                                            ; $7581: $af
	sub d                                            ; $7582: $92
	ld sp, hl                                        ; $7583: $f9
	ei                                               ; $7584: $fb
	rst $38                                          ; $7585: $ff
	rst $38                                          ; $7586: $ff
	ld a, [$41f0]                                    ; $7587: $fa $f0 $41
	jr nc, jr_041_756d                               ; $758a: $30 $e1

	ldh a, [rHDMA1]                                  ; $758c: $f0 $51
	jr jr_041_7595                                   ; $758e: $18 $05

	cp $86                                           ; $7590: $fe $86
	db $10                                           ; $7592: $10
	jr jr_041_754d                                   ; $7593: $18 $b8

jr_041_7595:
	ldh a, [$c7]                                     ; $7595: $f0 $c7
	halt                                             ; $7597: $76
	scf                                              ; $7598: $37
	xor a                                            ; $7599: $af
	ld [hl], a                                       ; $759a: $77
	rst JumpTable                                          ; $759b: $c7
	ld e, a                                          ; $759c: $5f
	rst GetHLinHL                                          ; $759d: $cf
	ld hl, sp-$07                                    ; $759e: $f8 $f9
	ld a, c                                          ; $75a0: $79
	add hl, de                                       ; $75a1: $19
	add hl, bc                                       ; $75a2: $09
	add hl, sp                                       ; $75a3: $39
	jr c, jr_041_75de                                ; $75a4: $38 $38

	nop                                              ; $75a6: $00
	nop                                              ; $75a7: $00
	ret nz                                           ; $75a8: $c0

	ldh [$f6], a                                     ; $75a9: $e0 $f6
	jp c, $9bff                                      ; $75ab: $da $ff $9b

	ld sp, hl                                        ; $75ae: $f9
	db $fc                                           ; $75af: $fc
	cp $3f                                           ; $75b0: $fe $3f
	cp $9a                                           ; $75b2: $fe $9a
	ld [$ff55], sp                                   ; $75b4: $08 $55 $ff
	rst $38                                          ; $75b7: $ff
	ld e, a                                          ; $75b8: $5f
	sbc $ff                                          ; $75b9: $de $ff
	sbc h                                            ; $75bb: $9c
	rst FarCall                                          ; $75bc: $f7
	xor d                                            ; $75bd: $aa
	nop                                              ; $75be: $00
	ld a, d                                          ; $75bf: $7a
	daa                                              ; $75c0: $27
	adc [hl]                                         ; $75c1: $8e
	rra                                              ; $75c2: $1f
	rlca                                             ; $75c3: $07
	inc bc                                           ; $75c4: $03
	rra                                              ; $75c5: $1f
	xor a                                            ; $75c6: $af
	rst $38                                          ; $75c7: $ff
	rst $38                                          ; $75c8: $ff
	cp c                                             ; $75c9: $b9
	rst AddAOntoHL                                          ; $75ca: $ef
	ei                                               ; $75cb: $fb
	db $fd                                           ; $75cc: $fd
	di                                               ; $75cd: $f3
	ld d, [hl]                                       ; $75ce: $56
	ld b, $04                                        ; $75cf: $06 $04
	nop                                              ; $75d1: $00
	db $f4                                           ; $75d2: $f4
	cp $9c                                           ; $75d3: $fe $9c
	ret nz                                           ; $75d5: $c0

	ld b, b                                          ; $75d6: $40
	ld b, b                                          ; $75d7: $40
	ld a, c                                          ; $75d8: $79
	pop af                                           ; $75d9: $f1
	sbc $ff                                          ; $75da: $de $ff
	rst SubAFromDE                                          ; $75dc: $df
	ld a, a                                          ; $75dd: $7f

jr_041_75de:
	ld a, $f0                                        ; $75de: $3e $f0
	ld a, a                                          ; $75e0: $7f
	ld d, h                                          ; $75e1: $54
	ld a, a                                          ; $75e2: $7f
	ld [hl], e                                       ; $75e3: $73
	ld a, l                                          ; $75e4: $7d
	ret                                              ; $75e5: $c9


	adc l                                            ; $75e6: $8d
	rst $38                                          ; $75e7: $ff
	push hl                                          ; $75e8: $e5
	db $fd                                           ; $75e9: $fd
	rst $38                                          ; $75ea: $ff
	rst FarCall                                          ; $75eb: $f7
	db $fd                                           ; $75ec: $fd
	rlca                                             ; $75ed: $07
	sbc h                                            ; $75ee: $9c
	ret nz                                           ; $75ef: $c0

	ld a, $01                                        ; $75f0: $3e $01
	nop                                              ; $75f2: $00
	add b                                            ; $75f3: $80
	ld b, b                                          ; $75f4: $40
	and b                                            ; $75f5: $a0
	ret nc                                           ; $75f6: $d0

	cp a                                             ; $75f7: $bf
	db $dd                                           ; $75f8: $dd
	ld [hl], d                                       ; $75f9: $72
	ld h, c                                          ; $75fa: $61
	ld a, e                                          ; $75fb: $7b
	ret nc                                           ; $75fc: $d0

	sbc l                                            ; $75fd: $9d
	ldh [rAUD3LEVEL], a                              ; $75fe: $e0 $1c
	halt                                             ; $7600: $76
	ld c, a                                          ; $7601: $4f
	rst SubAFromDE                                          ; $7602: $df
	rst $38                                          ; $7603: $ff

Jump_041_7604:
	ld l, [hl]                                       ; $7604: $6e
	ldh [$dd], a                                     ; $7605: $e0 $dd
	rra                                              ; $7607: $1f
	sbc e                                            ; $7608: $9b
	rst $38                                          ; $7609: $ff
	ccf                                              ; $760a: $3f
	ld a, a                                          ; $760b: $7f
	rst FarCall                                          ; $760c: $f7
	db $dd                                           ; $760d: $dd
	rst SubAFromBC                                          ; $760e: $e7
	sub e                                            ; $760f: $93
	rst JumpTable                                          ; $7610: $c7
	rst SubAFromBC                                          ; $7611: $e7
	rst SubAFromBC                                          ; $7612: $e7
	ld b, a                                          ; $7613: $47
	rst $38                                          ; $7614: $ff
	cp $15                                           ; $7615: $fe $15
	ei                                               ; $7617: $fb
	xor h                                            ; $7618: $ac
	ld a, a                                          ; $7619: $7f
	ld a, [hl]                                       ; $761a: $7e
	ld a, $77                                        ; $761b: $3e $77
	add b                                            ; $761d: $80
	ld a, [hl]                                       ; $761e: $7e
	sub b                                            ; $761f: $90
	halt                                             ; $7620: $76
	ld a, d                                          ; $7621: $7a
	ld a, e                                          ; $7622: $7b
	sub a                                            ; $7623: $97
	sbc h                                            ; $7624: $9c
	cp c                                             ; $7625: $b9
	ld sp, $d930                                     ; $7626: $31 $30 $d9
	rst $38                                          ; $7629: $ff
	ld a, a                                          ; $762a: $7f
	cp d                                             ; $762b: $ba
	ld a, a                                          ; $762c: $7f
	cp $9b                                           ; $762d: $fe $9b
	rst FarCall                                          ; $762f: $f7
	push af                                          ; $7630: $f5
	sub h                                            ; $7631: $94
	db $10                                           ; $7632: $10
	reti                                             ; $7633: $d9


	rst $38                                          ; $7634: $ff
	sbc e                                            ; $7635: $9b
	add sp, -$5c                                     ; $7636: $e8 $a4
	rst $38                                          ; $7638: $ff
	ld h, b                                          ; $7639: $60
	ld [hl], c                                       ; $763a: $71
	adc a                                            ; $763b: $8f
	ld a, d                                          ; $763c: $7a
	and l                                            ; $763d: $a5
	ld [hl], a                                       ; $763e: $77
	ld a, [$089c]                                    ; $763f: $fa $9c $08
	ld a, [hl+]                                      ; $7642: $2a
	rst $38                                          ; $7643: $ff
	ld a, e                                          ; $7644: $7b
	ld a, [$706f]                                    ; $7645: $fa $6f $70
	ld [hl], a                                       ; $7648: $77
	ld a, [$579c]                                    ; $7649: $fa $9c $57
	xor a                                            ; $764c: $af
	rst $38                                          ; $764d: $ff
	ld a, c                                          ; $764e: $79
	and h                                            ; $764f: $a4
	ld a, c                                          ; $7650: $79
	cp h                                             ; $7651: $bc
	sbc $fc                                          ; $7652: $de $fc
	ld [hl], a                                       ; $7654: $77
	ldh a, [rPCM12]                                  ; $7655: $f0 $76
	call nz, $fc9c                                   ; $7657: $c4 $9c $fc
	ld a, [$da05]                                    ; $765a: $fa $05 $da
	rlca                                             ; $765d: $07
	rst SubAFromDE                                          ; $765e: $df
	rst $38                                          ; $765f: $ff
	sbc e                                            ; $7660: $9b
	dec d                                            ; $7661: $15
	ld c, $1d                                        ; $7662: $0e $1d
	ld a, [bc]                                       ; $7664: $0a
	ld a, d                                          ; $7665: $7a
	cp [hl]                                          ; $7666: $be
	sbc [hl]                                         ; $7667: $9e
	and d                                            ; $7668: $a2
	reti                                             ; $7669: $d9


	rst $38                                          ; $766a: $ff
	sub l                                            ; $766b: $95
	ld l, l                                          ; $766c: $6d
	ldh a, [$5f]                                     ; $766d: $f0 $5f
	and b                                            ; $766f: $a0
	ld h, b                                          ; $7670: $60
	and b                                            ; $7671: $a0

jr_041_7672:
	ld a, h                                          ; $7672: $7c
	xor e                                            ; $7673: $ab
	ldh a, [c]                                       ; $7674: $f2
	ldh [$7a], a                                     ; $7675: $e0 $7a
	cp [hl]                                          ; $7677: $be
	halt                                             ; $7678: $76
	db $ec                                           ; $7679: $ec
	add a                                            ; $767a: $87
	inc b                                            ; $767b: $04
	push hl                                          ; $767c: $e5
	ld hl, sp+$01                                    ; $767d: $f8 $01
	db $fc                                           ; $767f: $fc
	xor l                                            ; $7680: $ad
	ld a, b                                          ; $7681: $78
	nop                                              ; $7682: $00
	ld [$00f8], sp                                   ; $7683: $08 $f8 $00
	nop                                              ; $7686: $00
	jr c, jr_041_7701                                ; $7687: $38 $78

	db $fc                                           ; $7689: $fc
	ld c, [hl]                                       ; $768a: $4e
	bit 1, d                                         ; $768b: $cb $4a
	bit 3, d                                         ; $768d: $cb $5a
	xor e                                            ; $768f: $ab
	ld e, d                                          ; $7690: $5a
	ei                                               ; $7691: $fb
	jr c, jr_041_7672                                ; $7692: $38 $de

	inc a                                            ; $7694: $3c
	db $dd                                           ; $7695: $dd
	inc c                                            ; $7696: $0c
	sub h                                            ; $7697: $94
	cp l                                             ; $7698: $bd
	ld e, d                                          ; $7699: $5a
	xor a                                            ; $769a: $af
	ld d, a                                          ; $769b: $57
	xor d                                            ; $769c: $aa
	ld [hl], l                                       ; $769d: $75
	cp d                                             ; $769e: $ba
	ld d, l                                          ; $769f: $55
	rrca                                             ; $76a0: $0f
	rlca                                             ; $76a1: $07
	ld bc, $a07a                                     ; $76a2: $01 $7a $a0
	rst $38                                          ; $76a5: $ff
	sbc h                                            ; $76a6: $9c
	rst AddAOntoHL                                          ; $76a7: $ef
	push af                                          ; $76a8: $f5
	ldh a, [c]                                       ; $76a9: $f2
	ld [hl], c                                       ; $76aa: $71
	ld d, c                                          ; $76ab: $51
	ld a, [hl]                                       ; $76ac: $7e
	xor d                                            ; $76ad: $aa
	ld a, h                                          ; $76ae: $7c
	pop hl                                           ; $76af: $e1
	sub h                                            ; $76b0: $94
	cp $5f                                           ; $76b1: $fe $5f
	rst AddAOntoHL                                          ; $76b3: $ef
	ld [hl], h                                       ; $76b4: $74
	xor a                                            ; $76b5: $af
	ld d, a                                          ; $76b6: $57
	xor e                                            ; $76b7: $ab
	rla                                              ; $76b8: $17
	jp $0fb3                                         ; $76b9: $c3 $b3 $0f


	ld [hl], a                                       ; $76bc: $77
	dec c                                            ; $76bd: $0d
	sub d                                            ; $76be: $92
	ld [bc], a                                       ; $76bf: $02
	ld h, e                                          ; $76c0: $63
	ld a, [de]                                       ; $76c1: $1a

Jump_041_76c2:
	ld [bc], a                                       ; $76c2: $02

jr_041_76c3:
	inc bc                                           ; $76c3: $03
	ld b, b                                          ; $76c4: $40
	ld b, b                                          ; $76c5: $40
	ld b, e                                          ; $76c6: $43
	ld l, a                                          ; $76c7: $6f
	push de                                          ; $76c8: $d5
	dec hl                                           ; $76c9: $2b
	ld d, $4b                                        ; $76ca: $16 $4b
	sbc $7f                                          ; $76cc: $de $7f

jr_041_76ce:
	sbc d                                            ; $76ce: $9a
	ld b, d                                          ; $76cf: $42
	jp $0303                                         ; $76d0: $c3 $03 $03


	add b                                            ; $76d3: $80
	db $fd                                           ; $76d4: $fd
	ld a, a                                          ; $76d5: $7f
	inc sp                                           ; $76d6: $33
	ld a, a                                          ; $76d7: $7f
	cp l                                             ; $76d8: $bd
	db $dd                                           ; $76d9: $dd
	rst $38                                          ; $76da: $ff
	ld [hl], l                                       ; $76db: $75
	inc de                                           ; $76dc: $13
	add b                                            ; $76dd: $80
	ccf                                              ; $76de: $3f
	ld [hl], $36                                     ; $76df: $36 $36
	ld a, [hl]                                       ; $76e1: $7e
	ld a, $fe                                        ; $76e2: $3e $fe
	or $af                                           ; $76e4: $f6 $af
	sbc [hl]                                         ; $76e6: $9e
	sbc h                                            ; $76e7: $9c
	sbc d                                            ; $76e8: $9a
	sub h                                            ; $76e9: $94
	sbc d                                            ; $76ea: $9a
	ld [hl], h                                       ; $76eb: $74
	ld [bc], a                                       ; $76ec: $02
	rlca                                             ; $76ed: $07
	dec l                                            ; $76ee: $2d
	or a                                             ; $76ef: $b7
	jp hl                                            ; $76f0: $e9


	db $f4                                           ; $76f1: $f4
	ld a, d                                          ; $76f2: $7a
	rra                                              ; $76f3: $1f
	inc bc                                           ; $76f4: $03
	inc de                                           ; $76f5: $13
	halt                                             ; $76f6: $76
	dec de                                           ; $76f7: $1b
	ld c, $07                                        ; $76f8: $0e $07
	inc bc                                           ; $76fa: $03
	ld bc, $8010                                     ; $76fb: $01 $10 $80
	nop                                              ; $76fe: $00

Call_041_76ff:
	pop bc                                           ; $76ff: $c1
	ld l, e                                          ; $7700: $6b

jr_041_7701:
	and e                                            ; $7701: $a3
	rst SubAFromBC                                          ; $7702: $e7
	ld a, a                                          ; $7703: $7f
	cp $76                                           ; $7704: $fe $76
	db $fc                                           ; $7706: $fc
	ld a, $94                                        ; $7707: $3e $94
	rst SubAFromDE                                          ; $7709: $df
	ld a, a                                          ; $770a: $7f
	sub [hl]                                         ; $770b: $96
	ld b, h                                          ; $770c: $44
	or d                                             ; $770d: $b2
	nop                                              ; $770e: $00
	rst $38                                          ; $770f: $ff
	rst FarCall                                          ; $7710: $f7
	rst AddAOntoHL                                          ; $7711: $ef
	rst SubAFromBC                                          ; $7712: $e7
	rst SubAFromBC                                          ; $7713: $e7
	xor a                                            ; $7714: $af
	ld h, a                                          ; $7715: $67
	ld h, a                                          ; $7716: $67
	and a                                            ; $7717: $a7
	ld h, a                                          ; $7718: $67
	rst SubAFromBC                                          ; $7719: $e7
	ld b, a                                          ; $771a: $47
	daa                                              ; $771b: $27
	ld b, a                                          ; $771c: $47
	rst SubAFromDE                                          ; $771d: $df
	ld h, a                                          ; $771e: $67
	sub a                                            ; $771f: $97
	add l                                            ; $7720: $85
	call nz, $ff67                                   ; $7721: $c4 $67 $ff
	rst AddAOntoHL                                          ; $7724: $ef
	ld [hl], a                                       ; $7725: $77
	cp a                                             ; $7726: $bf
	ld d, [hl]                                       ; $7727: $56
	ld h, c                                          ; $7728: $61
	jr nc, jr_041_76c3                               ; $7729: $30 $98

	adc $ff                                          ; $772b: $ce $ff
	rst $38                                          ; $772d: $ff
	sbc e                                            ; $772e: $9b
	sbc $f9                                          ; $772f: $de $f9
	ld hl, sp+$5d                                    ; $7731: $f8 $5d
	jr nz, jr_041_76ce                               ; $7733: $20 $99

	rst $38                                          ; $7735: $ff
	add b                                            ; $7736: $80
	cp a                                             ; $7737: $bf
	rra                                              ; $7738: $1f
	sbc a                                            ; $7739: $9f
	rst SubAFromBC                                          ; $773a: $e7
	ld l, a                                          ; $773b: $6f
	ld e, h                                          ; $773c: $5c
	ld a, h                                          ; $773d: $7c
	sub a                                            ; $773e: $97
	ld [hl], h                                       ; $773f: $74
	ld d, l                                          ; $7740: $55
	ld a, b                                          ; $7741: $78
	daa                                              ; $7742: $27
	ld l, a                                          ; $7743: $6f
	db $e4                                           ; $7744: $e4
	ld a, l                                          ; $7745: $7d
	or e                                             ; $7746: $b3
	ld a, a                                          ; $7747: $7f
	ld e, b                                          ; $7748: $58
	sbc b                                            ; $7749: $98
	ld bc, $fafe                                     ; $774a: $01 $fe $fa
	push de                                          ; $774d: $d5
	ld a, [$6afd]                                    ; $774e: $fa $fd $6a
	ld [hl], h                                       ; $7751: $74
	ld c, d                                          ; $7752: $4a
	sbc [hl]                                         ; $7753: $9e
	ccf                                              ; $7754: $3f
	sbc $ff                                          ; $7755: $de $ff
	sub a                                            ; $7757: $97
	call nc, $1549                                   ; $7758: $d4 $49 $15
	adc d                                            ; $775b: $8a
	ld d, l                                          ; $775c: $55

jr_041_775d:
	xor e                                            ; $775d: $ab
	ld d, l                                          ; $775e: $55
	xor [hl]                                         ; $775f: $ae
	reti                                             ; $7760: $d9


	rst $38                                          ; $7761: $ff
	ld a, d                                          ; $7762: $7a
	call z, $e59a                                    ; $7763: $cc $9a $e5
	ld h, b                                          ; $7766: $60
	ldh a, [$b8]                                     ; $7767: $f0 $b8
	push af                                          ; $7769: $f5
	reti                                             ; $776a: $d9


	rst $38                                          ; $776b: $ff
	ld a, a                                          ; $776c: $7f
	dec b                                            ; $776d: $05
	sbc h                                            ; $776e: $9c
	push af                                          ; $776f: $f5
	ld a, e                                          ; $7770: $7b
	inc bc                                           ; $7771: $03
	ld a, c                                          ; $7772: $79
	ld a, h                                          ; $7773: $7c
	ld h, e                                          ; $7774: $63
	ldh a, [$7e]                                     ; $7775: $f0 $7e
	di                                               ; $7777: $f3
	ld a, a                                          ; $7778: $7f
	cp $9d                                           ; $7779: $fe $9d
	ld [$7375], a                                    ; $777b: $ea $75 $73
	jr nc, jr_041_775d                               ; $777e: $30 $dd

	rst $38                                          ; $7780: $ff
	sub a                                            ; $7781: $97
	reti                                             ; $7782: $d9


	rst $38                                          ; $7783: $ff
	ld c, e                                          ; $7784: $4b
	or l                                             ; $7785: $b5
	ld d, h                                          ; $7786: $54
	xor d                                            ; $7787: $aa
	ld d, a                                          ; $7788: $57
	xor h                                            ; $7789: $ac
	sbc $fc                                          ; $778a: $de $fc
	ld [hl], c                                       ; $778c: $71
	rst $38                                          ; $778d: $ff
	add a                                            ; $778e: $87
	adc d                                            ; $778f: $8a
	jp hl                                            ; $7790: $e9


	adc d                                            ; $7791: $8a
	ret                                              ; $7792: $c9


	and d                                            ; $7793: $a2
	db $fd                                           ; $7794: $fd
	rst $38                                          ; $7795: $ff
	db $dd                                           ; $7796: $dd
	ld a, h                                          ; $7797: $7c
	ld e, $7d                                        ; $7798: $1e $7d
	ld a, $5d                                        ; $779a: $3e $5d
	ld c, $0c                                        ; $779c: $0e $0c
	ld c, $aa                                        ; $779e: $0e $aa
	push de                                          ; $77a0: $d5
	ld a, [$ea5d]                                    ; $77a1: $fa $5d $ea
	ld e, l                                          ; $77a4: $5d
	ld [$fe7d], a                                    ; $77a5: $ea $7d $fe
	add d                                            ; $77a8: $82
	and b                                            ; $77a9: $a0
	db $10                                           ; $77aa: $10
	and b                                            ; $77ab: $a0
	stop                                             ; $77ac: $10 $00
	and [hl]                                         ; $77ae: $a6
	dec d                                            ; $77af: $15
	or [hl]                                          ; $77b0: $b6
	ld d, h                                          ; $77b1: $54
	ld sp, hl                                        ; $77b2: $f9
	or a                                             ; $77b3: $b7
	cp e                                             ; $77b4: $bb
	sub a                                            ; $77b5: $97
	ld e, b                                          ; $77b6: $58
	ld l, b                                          ; $77b7: $68
	ld [$0301], sp                                   ; $77b8: $08 $01 $03
	ld b, c                                          ; $77bb: $41
	ld b, c                                          ; $77bc: $41
	ld h, c                                          ; $77bd: $61
	ld [bc], a                                       ; $77be: $02
	ccf                                              ; $77bf: $3f
	ld [hl-], a                                      ; $77c0: $32
	rrca                                             ; $77c1: $0f
	ld b, e                                          ; $77c2: $43
	jp nz, $c8c0                                     ; $77c3: $c2 $c0 $c8

	cp $72                                           ; $77c6: $fe $72
	and a                                            ; $77c8: $a7
	sub a                                            ; $77c9: $97
	ld h, c                                          ; $77ca: $61
	or c                                             ; $77cb: $b1
	ld sp, $bd39                                     ; $77cc: $31 $39 $bd
	ld a, l                                          ; $77cf: $7d
	rst SubAFromDE                                          ; $77d0: $df
	rst SubAFromDE                                          ; $77d1: $df
	ld a, d                                          ; $77d2: $7a
	jp z, Jump_041_6279                              ; $77d3: $ca $79 $62

	rst SubAFromDE                                          ; $77d6: $df
	ldh [$99], a                                     ; $77d7: $e0 $99
	ld d, l                                          ; $77d9: $55
	ld [bc], a                                       ; $77da: $02
	ld bc, $0700                                     ; $77db: $01 $00 $07
	rlca                                             ; $77de: $07
	ld a, d                                          ; $77df: $7a
	dec h                                            ; $77e0: $25
	ei                                               ; $77e1: $fb
	sub d                                            ; $77e2: $92
	cp $57                                           ; $77e3: $fe $57
	xor [hl]                                         ; $77e5: $ae
	or $0e                                           ; $77e6: $f6 $0e
	sub [hl]                                         ; $77e8: $96
	adc [hl]                                         ; $77e9: $8e
	ld d, $06                                        ; $77ea: $16 $06
	ld [bc], a                                       ; $77ec: $02
	inc b                                            ; $77ed: $04
	ld b, $06                                        ; $77ee: $06 $06
	db $dd                                           ; $77f0: $dd
	inc b                                            ; $77f1: $04
	add b                                            ; $77f2: $80
	ld b, e                                          ; $77f3: $43
	inc de                                           ; $77f4: $13
	jr nc, jr_041_7827                               ; $77f5: $30 $30

	or b                                             ; $77f7: $b0
	or c                                             ; $77f8: $b1
	and d                                            ; $77f9: $a2
	pop hl                                           ; $77fa: $e1
	nop                                              ; $77fb: $00
	jr nz, jr_041_7805                               ; $77fc: $20 $07

	ld b, a                                          ; $77fe: $47
	rrca                                             ; $77ff: $0f
	rrca                                             ; $7800: $0f
	rra                                              ; $7801: $1f
	rra                                              ; $7802: $1f
	ld c, b                                          ; $7803: $48
	adc b                                            ; $7804: $88

jr_041_7805:
	ld [$af1b], sp                                   ; $7805: $08 $1b $af
	ld e, h                                          ; $7808: $5c
	cp h                                             ; $7809: $bc
	ret z                                            ; $780a: $c8

	jr nc, jr_041_787d                               ; $780b: $30 $70

	ldh a, [$f0]                                     ; $780d: $f0 $f0
	db $fd                                           ; $780f: $fd
	ei                                               ; $7810: $fb
	rst SubAFromHL                                          ; $7811: $d7
	add [hl]                                         ; $7812: $86
	cp a                                             ; $7813: $bf
	ld h, a                                          ; $7814: $67
	ld c, a                                          ; $7815: $4f
	rst SubAFromBC                                          ; $7816: $e7
	rst AddAOntoHL                                          ; $7817: $ef
	rst AddAOntoHL                                          ; $7818: $ef
	cpl                                              ; $7819: $2f
	cpl                                              ; $781a: $2f
	rrca                                             ; $781b: $0f
	ld h, d                                          ; $781c: $62
	dec b                                            ; $781d: $05
	ld [bc], a                                       ; $781e: $02
	push hl                                          ; $781f: $e5
	ld [bc], a                                       ; $7820: $02
	push bc                                          ; $7821: $c5
	jp nz, $bee5                                     ; $7822: $c2 $e5 $be

	db $dd                                           ; $7825: $dd
	ei                                               ; $7826: $fb

jr_041_7827:
	ld d, a                                          ; $7827: $57
	xor d                                            ; $7828: $aa
	ld e, [hl]                                       ; $7829: $5e
	xor a                                            ; $782a: $af
	sbc $61                                          ; $782b: $de $61
	sub b                                            ; $782d: $90
	sbc b                                            ; $782e: $98
	cp $9f                                           ; $782f: $fe $9f
	rst AddAOntoHL                                          ; $7831: $ef
	inc b                                            ; $7832: $04
	jp $cab3                                         ; $7833: $c3 $b3 $ca


	ld a, d                                          ; $7836: $7a
	sbc $75                                          ; $7837: $de $75
	ld [hl], c                                       ; $7839: $71
	sub d                                            ; $783a: $92
	rst FarCall                                          ; $783b: $f7
	ldh [$f0], a                                     ; $783c: $e0 $f0
	jr nc, @-$0e                                     ; $783e: $30 $f0

	db $ed                                           ; $7840: $ed
	ld [hl], h                                       ; $7841: $74
	and h                                            ; $7842: $a4
	push af                                          ; $7843: $f5
	ld hl, sp-$08                                    ; $7844: $f8 $f8
	ldh a, [$f0]                                     ; $7846: $f0 $f0
	db $dd                                           ; $7848: $dd
	cp $71                                           ; $7849: $fe $71
	inc b                                            ; $784b: $04
	ld [hl], e                                       ; $784c: $73
	db $fd                                           ; $784d: $fd
	rst FarCall                                          ; $784e: $f7
	ld b, a                                          ; $784f: $47
	ldh a, [$9c]                                     ; $7850: $f0 $9c
	ld a, [$0202]                                    ; $7852: $fa $02 $02
	ld [hl], e                                       ; $7855: $73
	ret c                                            ; $7856: $d8

	db $dd                                           ; $7857: $dd
	ld bc, $5887                                     ; $7858: $01 $87 $58
	ccf                                              ; $785b: $3f
	rra                                              ; $785c: $1f
	ld a, h                                          ; $785d: $7c
	jp $3e3f                                         ; $785e: $c3 $3f $3e


	jp $0027                                         ; $7861: $c3 $27 $00


	jr nz, @+$05                                     ; $7864: $20 $03

	inc a                                            ; $7866: $3c
	nop                                              ; $7867: $00
	ld bc, $113c                                     ; $7868: $01 $3c $11
	add d                                            ; $786b: $82
	sub c                                            ; $786c: $91
	ld [bc], a                                       ; $786d: $02
	sub c                                            ; $786e: $91
	or d                                             ; $786f: $b2
	ld de, $78b2                                     ; $7870: $11 $b2 $78
	or l                                             ; $7873: $b5
	ld [hl], e                                       ; $7874: $73
	db $fd                                           ; $7875: $fd
	ld a, [hl]                                       ; $7876: $7e
	add $9a                                          ; $7877: $c6 $9a
	ld h, l                                          ; $7879: $65
	and d                                            ; $787a: $a2
	ld e, c                                          ; $787b: $59
	xor [hl]                                         ; $787c: $ae

jr_041_787d:
	ld e, a                                          ; $787d: $5f
	ld a, b                                          ; $787e: $78
	adc [hl]                                         ; $787f: $8e

Call_041_7880:
	db $db                                           ; $7880: $db
	rst $38                                          ; $7881: $ff
	sub a                                            ; $7882: $97
	ld e, b                                          ; $7883: $58
	or b                                             ; $7884: $b0
	ld h, b                                          ; $7885: $60
	ret nz                                           ; $7886: $c0

	ret nz                                           ; $7887: $c0

	ld b, b                                          ; $7888: $40
	add b                                            ; $7889: $80
	ret nz                                           ; $788a: $c0

	reti                                             ; $788b: $d9


	rst $38                                          ; $788c: $ff
	sub d                                            ; $788d: $92
	cp [hl]                                          ; $788e: $be
	ld c, l                                          ; $788f: $4d
	cp [hl]                                          ; $7890: $be
	ld c, l                                          ; $7891: $4d
	xor l                                            ; $7892: $ad
	ld a, c                                          ; $7893: $79
	xor d                                            ; $7894: $aa
	ld c, b                                          ; $7895: $48
	inc c                                            ; $7896: $0c
	ld e, $0c                                        ; $7897: $1e $0c
	ld e, $1f                                        ; $7899: $1e $1f
	ld a, e                                          ; $789b: $7b
	jr nc, @-$64                                     ; $789c: $30 $9a

	xor d                                            ; $789e: $aa
	ld d, l                                          ; $789f: $55
	xor d                                            ; $78a0: $aa
	rst $38                                          ; $78a1: $ff
	rst AddAOntoHL                                          ; $78a2: $ef
	sbc $60                                          ; $78a3: $de $60
	ld h, h                                          ; $78a5: $64
	ld a, h                                          ; $78a6: $7c
	sub a                                            ; $78a7: $97
	ld sp, hl                                        ; $78a8: $f9
	ld d, l                                          ; $78a9: $55
	xor c                                            ; $78aa: $a9
	or $db                                           ; $78ab: $f6 $db
	ld h, a                                          ; $78ad: $67
	dec bc                                           ; $78ae: $0b
	rlca                                             ; $78af: $07
	sbc $03                                          ; $78b0: $de $03
	sbc l                                            ; $78b2: $9d
	ld bc, $dee0                                     ; $78b3: $01 $e0 $de
	ldh a, [$97]                                     ; $78b6: $f0 $97
	call c, $fdf8                                    ; $78b8: $dc $f8 $fd
	xor e                                            ; $78bb: $ab
	add h                                            ; $78bc: $84
	adc e                                            ; $78bd: $8b
	sbc l                                            ; $78be: $9d
	cp e                                             ; $78bf: $bb
	ld [hl], b                                       ; $78c0: $70
	add e                                            ; $78c1: $83
	sub [hl]                                         ; $78c2: $96
	halt                                             ; $78c3: $76
	ld h, [hl]                                       ; $78c4: $66
	ld b, [hl]                                       ; $78c5: $46
	rst $38                                          ; $78c6: $ff
	db $db                                           ; $78c7: $db
	db $db                                           ; $78c8: $db
	ei                                               ; $78c9: $fb
	dec b                                            ; $78ca: $05
	adc l                                            ; $78cb: $8d
	halt                                             ; $78cc: $76
	inc b                                            ; $78cd: $04
	sub c                                            ; $78ce: $91
	ldh [$c1], a                                     ; $78cf: $e0 $c1
	ld a, [$0079]                                    ; $78d1: $fa $79 $00
	inc d                                            ; $78d4: $14
	rst $38                                          ; $78d5: $ff
	xor d                                            ; $78d6: $aa
	ld d, l                                          ; $78d7: $55
	nop                                              ; $78d8: $00
	ld a, [hl]                                       ; $78d9: $7e
	ld d, l                                          ; $78da: $55
	rst $38                                          ; $78db: $ff
	ld d, l                                          ; $78dc: $55
	ld a, [$aa9e]                                    ; $78dd: $fa $9e $aa
	db $dd                                           ; $78e0: $dd
	ld b, $9c                                        ; $78e1: $06 $9c
	add [hl]                                         ; $78e3: $86
	sub [hl]                                         ; $78e4: $96
	ld d, $76                                        ; $78e5: $16 $76
	call nz, $f677                                   ; $78e7: $c4 $77 $f6
	sbc e                                            ; $78ea: $9b
	add d                                            ; $78eb: $82
	rst $38                                          ; $78ec: $ff
	ld a, [$78fd]                                    ; $78ed: $fa $fd $78
	ld a, a                                          ; $78f0: $7f
	rst SubAFromDE                                          ; $78f1: $df
	rst $38                                          ; $78f2: $ff

Call_041_78f3:
	sbc d                                            ; $78f3: $9a
	and a                                            ; $78f4: $a7
	ld d, b                                          ; $78f5: $50
	cp b                                             ; $78f6: $b8
	ld d, b                                          ; $78f7: $50
	jr z, jr_041_7975                                ; $78f8: $28 $7b

	cp $97                                           ; $78fa: $fe $97
	ldh a, [$b0]                                     ; $78fc: $f0 $b0
	ld [hl], b                                       ; $78fe: $70
	jr nc, jr_041_7971                               ; $78ff: $30 $70

	inc [hl]                                         ; $7901: $34
	halt                                             ; $7902: $76
	scf                                              ; $7903: $37
	reti                                             ; $7904: $d9


	rrca                                             ; $7905: $0f
	rst SubAFromDE                                          ; $7906: $df
	cpl                                              ; $7907: $2f
	rst SubAFromDE                                          ; $7908: $df
	ld l, a                                          ; $7909: $6f
	ld a, [hl]                                       ; $790a: $7e
	ret nz                                           ; $790b: $c0

	rst SubAFromDE                                          ; $790c: $df
	ld l, a                                          ; $790d: $6f
	ld a, [hl]                                       ; $790e: $7e
	add $9c                                          ; $790f: $c6 $9c
	ldh [c], a                                       ; $7911: $e2
	push hl                                          ; $7912: $e5
	jp nz, $fe7b                                     ; $7913: $c2 $7b $fe

	sub a                                            ; $7916: $97
	db $ed                                           ; $7917: $ed
	rst SubAFromDE                                          ; $7918: $df
	xor d                                            ; $7919: $aa
	push af                                          ; $791a: $f5
	ld a, a                                          ; $791b: $7f
	or $6d                                           ; $791c: $f6 $6d
	sbc l                                            ; $791e: $9d
	reti                                             ; $791f: $d9


	rst $38                                          ; $7920: $ff
	sub l                                            ; $7921: $95
	ld sp, hl                                        ; $7922: $f9
	ccf                                              ; $7923: $3f
	sbc a                                            ; $7924: $9f
	ld a, a                                          ; $7925: $7f
	cp a                                             ; $7926: $bf
	rst SubAFromDE                                          ; $7927: $df
	ld l, [hl]                                       ; $7928: $6e
	rst FarCall                                          ; $7929: $f7
	rst AddAOntoHL                                          ; $792a: $ef
	rst SubAFromDE                                          ; $792b: $df
	ld [hl], d                                       ; $792c: $72
	ret nz                                           ; $792d: $c0

	sub [hl]                                         ; $792e: $96
	rst $38                                          ; $792f: $ff
	db $e4                                           ; $7930: $e4
	call nc, $d4a5                                   ; $7931: $d4 $a5 $d4
	and h                                            ; $7934: $a4
	push de                                          ; $7935: $d5
	inc h                                            ; $7936: $24
	or $da                                           ; $7937: $f6 $da
	cp $74                                           ; $7939: $fe $74
	ld l, h                                          ; $793b: $6c
	ld [de], a                                       ; $793c: $12
	jp nz, $02df                                     ; $793d: $c2 $df $02

	ld l, a                                          ; $7940: $6f
	db $dd                                           ; $7941: $dd
	rst SubAFromDE                                          ; $7942: $df
	ld bc, $bd74                                     ; $7943: $01 $74 $bd
	rst $38                                          ; $7946: $ff
	sbc d                                            ; $7947: $9a
	ld e, a                                          ; $7948: $5f
	ld a, [hl]                                       ; $7949: $7e
	rst JumpTable                                          ; $794a: $c7
	ld e, a                                          ; $794b: $5f
	ld e, [hl]                                       ; $794c: $5e
	ld a, e                                          ; $794d: $7b
	db $fd                                           ; $794e: $fd
	sbc d                                            ; $794f: $9a
	jr nz, @+$03                                     ; $7950: $20 $01

	jr c, jr_041_7974                                ; $7952: $38 $20

	ld hl, $fd7b                                     ; $7954: $21 $7b $fd
	halt                                             ; $7957: $76
	jp z, $e09e                                      ; $7958: $ca $9e $e0

	cp $8f                                           ; $795b: $fe $8f
	ld sp, $2352                                     ; $795d: $31 $52 $23
	ld d, a                                          ; $7960: $57
	ccf                                              ; $7961: $3f
	ld h, a                                          ; $7962: $67
	ld [hl], a                                       ; $7963: $77
	rst FarCall                                          ; $7964: $f7
	ld e, a                                          ; $7965: $5f
	xor a                                            ; $7966: $af
	ld a, a                                          ; $7967: $7f
	ld e, a                                          ; $7968: $5f
	daa                                              ; $7969: $27
	ld d, a                                          ; $796a: $57
	and a                                            ; $796b: $a7
	ld d, a                                          ; $796c: $57
	ld a, d                                          ; $796d: $7a
	ld d, c                                          ; $796e: $51
	sbc d                                            ; $796f: $9a
	xor a                                            ; $7970: $af

jr_041_7971:
	rst SubAFromDE                                          ; $7971: $df
	xor a                                            ; $7972: $af
	ld e, a                                          ; $7973: $5f

jr_041_7974:
	xor a                                            ; $7974: $af

jr_041_7975:
	db $dd                                           ; $7975: $dd
	ret nz                                           ; $7976: $c0

	sbc e                                            ; $7977: $9b
	call nz, $d6ca                                   ; $7978: $c4 $ca $d6
	add sp, -$23                                     ; $797b: $e8 $dd
	rst $38                                          ; $797d: $ff
	sbc [hl]                                         ; $797e: $9e
	ei                                               ; $797f: $fb
	ld a, e                                          ; $7980: $7b
	ld a, d                                          ; $7981: $7a
	sub a                                            ; $7982: $97
	xor b                                            ; $7983: $a8
	ld c, c                                          ; $7984: $49
	add sp, -$38                                     ; $7985: $e8 $c8
	jp hl                                            ; $7987: $e9


	ld c, b                                          ; $7988: $48
	add sp, -$48                                     ; $7989: $e8 $b8
	jp c, $831f                                      ; $798b: $da $1f $83

	ld e, a                                          ; $798e: $5f
	and b                                            ; $798f: $a0
	jr nz, jr_041_79a4                               ; $7990: $20 $12

	ld a, a                                          ; $7992: $7f
	ld a, [hl]                                       ; $7993: $7e
	and $20                                          ; $7994: $e6 $20
	inc bc                                           ; $7996: $03
	rst $38                                          ; $7997: $ff
	rst $38                                          ; $7998: $ff
	db $ed                                           ; $7999: $ed
	add b                                            ; $799a: $80
	add c                                            ; $799b: $81
	rra                                              ; $799c: $1f
	rst $38                                          ; $799d: $ff
	rst $38                                          ; $799e: $ff
	dec bc                                           ; $799f: $0b
	daa                                              ; $79a0: $27
	ret                                              ; $79a1: $c9


	ret nz                                           ; $79a2: $c0

	ld b, b                                          ; $79a3: $40

jr_041_79a4:
	inc b                                            ; $79a4: $04
	ld h, c                                          ; $79a5: $61
	ld a, [bc]                                       ; $79a6: $0a
	ldh a, [$f0]                                     ; $79a7: $f0 $f0
	inc sp                                           ; $79a9: $33
	ld a, c                                          ; $79aa: $79
	ld bc, $fe80                                     ; $79ab: $01 $80 $fe
	push af                                          ; $79ae: $f5
	ld sp, hl                                        ; $79af: $f9
	add c                                            ; $79b0: $81
	inc c                                            ; $79b1: $0c
	ld [bc], a                                       ; $79b2: $02
	sub l                                            ; $79b3: $95
	ld a, [hl+]                                      ; $79b4: $2a
	ld d, l                                          ; $79b5: $55
	xor d                                            ; $79b6: $aa
	ld b, $7f                                        ; $79b7: $06 $7f
	rst $38                                          ; $79b9: $ff
	db $fd                                           ; $79ba: $fd
	ld [$aad5], a                                    ; $79bb: $ea $d5 $aa
	ld d, l                                          ; $79be: $55
	ld c, d                                          ; $79bf: $4a
	xor a                                            ; $79c0: $af
	ld d, l                                          ; $79c1: $55
	or b                                             ; $79c2: $b0
	ld h, b                                          ; $79c3: $60
	cp e                                             ; $79c4: $bb
	ld d, b                                          ; $79c5: $50
	and b                                            ; $79c6: $a0
	push af                                          ; $79c7: $f5
	ret nc                                           ; $79c8: $d0

	xor d                                            ; $79c9: $aa
	ld b, b                                          ; $79ca: $40
	add b                                            ; $79cb: $80
	add h                                            ; $79cc: $84
	ld b, h                                          ; $79cd: $44
	and b                                            ; $79ce: $a0
	ld b, b                                          ; $79cf: $40
	rst $38                                          ; $79d0: $ff
	ret nz                                           ; $79d1: $c0

	pop bc                                           ; $79d2: $c1
	nop                                              ; $79d3: $00
	ccf                                              ; $79d4: $3f
	ldh a, [rSB]                                     ; $79d5: $f0 $01
	nop                                              ; $79d7: $00
	ldh [$80], a                                     ; $79d8: $e0 $80
	add b                                            ; $79da: $80
	nop                                              ; $79db: $00
	ld bc, $00c0                                     ; $79dc: $01 $c0 $00
	nop                                              ; $79df: $00
	or [hl]                                          ; $79e0: $b6
	sbc [hl]                                         ; $79e1: $9e
	sbc [hl]                                         ; $79e2: $9e
	rst $38                                          ; $79e3: $ff
	rst SubAFromBC                                          ; $79e4: $e7
	add a                                            ; $79e5: $87
	ld d, c                                          ; $79e6: $51
	adc b                                            ; $79e7: $88
	call c, $fe06                                    ; $79e8: $dc $06 $fe
	db $dd                                           ; $79eb: $dd
	ei                                               ; $79ec: $fb
	ld a, a                                          ; $79ed: $7f
	add a                                            ; $79ee: $87
	ld a, h                                          ; $79ef: $7c
	sbc b                                            ; $79f0: $98
	ld a, [hl]                                       ; $79f1: $7e
	add $99                                          ; $79f2: $c6 $99
	xor b                                            ; $79f4: $a8
	ld d, b                                          ; $79f5: $50
	and b                                            ; $79f6: $a0
	ld b, b                                          ; $79f7: $40
	add b                                            ; $79f8: $80
	nop                                              ; $79f9: $00
	ld a, d                                          ; $79fa: $7a
	inc e                                            ; $79fb: $1c
	sub a                                            ; $79fc: $97
	db $e3                                           ; $79fd: $e3
	ld hl, sp-$02                                    ; $79fe: $f8 $fe
	cp $7e                                           ; $7a00: $fe $7e
	rra                                              ; $7a02: $1f
	ccf                                              ; $7a03: $3f
	rlca                                             ; $7a04: $07
	db $fc                                           ; $7a05: $fc
	ld a, [hl]                                       ; $7a06: $7e
	jp $ef9d                                         ; $7a07: $c3 $9d $ef


	rrca                                             ; $7a0a: $0f
	ld a, e                                          ; $7a0b: $7b
	db $fc                                           ; $7a0c: $fc
	sbc [hl]                                         ; $7a0d: $9e
	ld a, e                                          ; $7a0e: $7b
	ld a, d                                          ; $7a0f: $7a
	call nz, $e792                                   ; $7a10: $c4 $92 $e7
	ld [hl+], a                                      ; $7a13: $22
	ld b, a                                          ; $7a14: $47
	ld [bc], a                                       ; $7a15: $02
	rst JumpTable                                          ; $7a16: $c7
	cp $6f                                           ; $7a17: $fe $6f
	rst $38                                          ; $7a19: $ff
	rst GetHLinHL                                          ; $7a1a: $cf
	rst $38                                          ; $7a1b: $ff
	db $eb                                           ; $7a1c: $eb
	rst FarCall                                          ; $7a1d: $f7
	db $eb                                           ; $7a1e: $eb
	reti                                             ; $7a1f: $d9


	rst $38                                          ; $7a20: $ff
	sub a                                            ; $7a21: $97
	db $eb                                           ; $7a22: $eb
	push af                                          ; $7a23: $f5
	db $eb                                           ; $7a24: $eb
	rst $38                                          ; $7a25: $ff
	xor e                                            ; $7a26: $ab
	rst SubAFromHL                                          ; $7a27: $d7
	xor a                                            ; $7a28: $af
	ld [hl], a                                       ; $7a29: $77
	ld a, c                                          ; $7a2a: $79
	add l                                            ; $7a2b: $85
	call c, $96ff                                    ; $7a2c: $dc $ff $96
	and l                                            ; $7a2f: $a5
	or [hl]                                          ; $7a30: $b6
	and $f7                                          ; $7a31: $e6 $f7
	or $d6                                           ; $7a33: $f6 $d6
	rst AddAOntoHL                                          ; $7a35: $ef
	jp c, $dafe                                      ; $7a36: $da $fe $da

	db $fc                                           ; $7a39: $fc
	ld l, [hl]                                       ; $7a3a: $6e
	jp nc, $cf5e                                     ; $7a3b: $d2 $5e $cf

	rlca                                             ; $7a3e: $07
	ldh a, [$80]                                     ; $7a3f: $f0 $80
	rst JumpTable                                          ; $7a41: $c7
	ld c, a                                          ; $7a42: $4f
	ld c, h                                          ; $7a43: $4c
	rst JumpTable                                          ; $7a44: $c7
	ld b, a                                          ; $7a45: $47
	ld c, a                                          ; $7a46: $4f
	ret nz                                           ; $7a47: $c0

	rrca                                             ; $7a48: $0f
	jr c, jr_041_7a7b                                ; $7a49: $38 $30

	inc sp                                           ; $7a4b: $33
	jr c, jr_041_7a86                                ; $7a4c: $38 $38

	jr nc, jr_041_7a8f                               ; $7a4e: $30 $3f

	ld a, a                                          ; $7a50: $7f
	ld e, d                                          ; $7a51: $5a
	xor l                                            ; $7a52: $ad
	ld e, b                                          ; $7a53: $58
	xor b                                            ; $7a54: $a8
	ret nz                                           ; $7a55: $c0

	add b                                            ; $7a56: $80
	nop                                              ; $7a57: $00
	nop                                              ; $7a58: $00
	and l                                            ; $7a59: $a5
	ld d, d                                          ; $7a5a: $52
	and a                                            ; $7a5b: $a7
	ld d, a                                          ; $7a5c: $57
	ccf                                              ; $7a5d: $3f
	ld a, a                                          ; $7a5e: $7f
	rst $38                                          ; $7a5f: $ff
	sbc h                                            ; $7a60: $9c
	rst $38                                          ; $7a61: $ff
	or b                                             ; $7a62: $b0
	ld b, b                                          ; $7a63: $40
	halt                                             ; $7a64: $76
	adc e                                            ; $7a65: $8b
	sbc e                                            ; $7a66: $9b
	nop                                              ; $7a67: $00
	xor e                                            ; $7a68: $ab
	ld c, a                                          ; $7a69: $4f
	cp a                                             ; $7a6a: $bf
	sbc $ff                                          ; $7a6b: $de $ff
	ld a, l                                          ; $7a6d: $7d
	dec bc                                           ; $7a6e: $0b
	sbc l                                            ; $7a6f: $9d
	ld d, h                                          ; $7a70: $54

jr_041_7a71:
	jr nc, jr_041_7a71                               ; $7a71: $30 $fe

	sbc d                                            ; $7a73: $9a
	ld de, $4fa9                                     ; $7a74: $11 $a9 $4f
	ld hl, sp-$31                                    ; $7a77: $f8 $cf
	sbc $ff                                          ; $7a79: $de $ff

jr_041_7a7b:
	sub h                                            ; $7a7b: $94
	xor $57                                          ; $7a7c: $ee $57
	cp a                                             ; $7a7e: $bf
	ld [hl], b                                       ; $7a7f: $70

Call_041_7a80:
	ld [$0900], sp                                   ; $7a80: $08 $00 $09
	ld c, [hl]                                       ; $7a83: $4e
	ld a, c                                          ; $7a84: $79
	ret nz                                           ; $7a85: $c0

jr_041_7a86:
	ld a, [hl+]                                      ; $7a86: $2a
	ld a, c                                          ; $7a87: $79
	sub h                                            ; $7a88: $94
	sub a                                            ; $7a89: $97
	rst FarCall                                          ; $7a8a: $f7
	cp a                                             ; $7a8b: $bf
	cp $ff                                           ; $7a8c: $fe $ff
	push de                                          ; $7a8e: $d5

jr_041_7a8f:
	nop                                              ; $7a8f: $00
	inc c                                            ; $7a90: $0c
	ld [hl], d                                       ; $7a91: $72
	ld a, d                                          ; $7a92: $7a
	db $eb                                           ; $7a93: $eb
	sbc d                                            ; $7a94: $9a
	ld a, [bc]                                       ; $7a95: $0a
	cp a                                             ; $7a96: $bf
	nop                                              ; $7a97: $00
	rst $38                                          ; $7a98: $ff

Call_041_7a99:
	db $fd                                           ; $7a99: $fd
	ld a, c                                          ; $7a9a: $79
	halt                                             ; $7a9b: $76
	sbc e                                            ; $7a9c: $9b
	push af                                          ; $7a9d: $f5
	ld b, b                                          ; $7a9e: $40
	nop                                              ; $7a9f: $00
	ld d, l                                          ; $7aa0: $55
	ld a, e                                          ; $7aa1: $7b
	ld sp, hl                                        ; $7aa2: $f9
	ld a, a                                          ; $7aa3: $7f
	cp $7f                                           ; $7aa4: $fe $7f
	xor a                                            ; $7aa6: $af
	ld [hl], e                                       ; $7aa7: $73
	ld sp, hl                                        ; $7aa8: $f9
	ld a, c                                          ; $7aa9: $79
	xor d                                            ; $7aaa: $aa
	sbc d                                            ; $7aab: $9a
	ld d, l                                          ; $7aac: $55
	xor e                                            ; $7aad: $ab
	ld d, [hl]                                       ; $7aae: $56
	xor h                                            ; $7aaf: $ac
	ld a, b                                          ; $7ab0: $78
	ld a, d                                          ; $7ab1: $7a
	ld e, a                                          ; $7ab2: $5f
	sbc e                                            ; $7ab3: $9b
	xor d                                            ; $7ab4: $aa
	ld d, h                                          ; $7ab5: $54
	xor b                                            ; $7ab6: $a8
	ld d, b                                          ; $7ab7: $50
	ld a, e                                          ; $7ab8: $7b
	sbc c                                            ; $7ab9: $99
	sbc [hl]                                         ; $7aba: $9e
	nop                                              ; $7abb: $00
	ld [hl], a                                       ; $7abc: $77
	and c                                            ; $7abd: $a1
	db $fd                                           ; $7abe: $fd
	ld [hl], a                                       ; $7abf: $77
	db $f4                                           ; $7ac0: $f4
	db $ed                                           ; $7ac1: $ed
	sub a                                            ; $7ac2: $97
	ld d, h                                          ; $7ac3: $54
	ld a, [hl+]                                      ; $7ac4: $2a
	ld b, c                                          ; $7ac5: $41
	jr z, jr_041_7adc                                ; $7ac6: $28 $14

	ld [$0a14], sp                                   ; $7ac8: $08 $14 $0a
	ld h, b                                          ; $7acb: $60
	call nz, $5498                                   ; $7acc: $c4 $98 $54
	ld a, [bc]                                       ; $7acf: $0a
	dec b                                            ; $7ad0: $05
	ld a, [bc]                                       ; $7ad1: $0a
	ld bc, $0100                                     ; $7ad2: $01 $00 $01
	ld sp, hl                                        ; $7ad5: $f9
	sub a                                            ; $7ad6: $97
	ld a, $0e                                        ; $7ad7: $3e $0e
	ld b, $40                                        ; $7ad9: $06 $40
	and b                                            ; $7adb: $a0

jr_041_7adc:
	ld d, h                                          ; $7adc: $54
	xor d                                            ; $7add: $aa
	ld d, h                                          ; $7ade: $54
	ld sp, hl                                        ; $7adf: $f9
	sub l                                            ; $7ae0: $95
	ld [hl+], a                                      ; $7ae1: $22
	ld [bc], a                                       ; $7ae2: $02
	ld [hl+], a                                      ; $7ae3: $22
	ld [bc], a                                       ; $7ae4: $02
	ld a, [hl+]                                      ; $7ae5: $2a
	adc d                                            ; $7ae6: $8a
	xor d                                            ; $7ae7: $aa
	xor e                                            ; $7ae8: $ab
	ld b, a                                          ; $7ae9: $47
	ld h, a                                          ; $7aea: $67
	ld [hl], e                                       ; $7aeb: $73
	cp $9e                                           ; $7aec: $fe $9e
	ld b, a                                          ; $7aee: $47
	sbc $ff                                          ; $7aef: $de $ff

jr_041_7af1:
	sbc d                                            ; $7af1: $9a
	rst AddAOntoHL                                          ; $7af2: $ef
	ld d, l                                          ; $7af3: $55
	ld l, $55                                        ; $7af4: $2e $55
	and b                                            ; $7af6: $a0
	rst SubAFromHL                                          ; $7af7: $d7
	rst $38                                          ; $7af8: $ff
	ld [hl], a                                       ; $7af9: $77

Jump_041_7afa:
	ld h, a                                          ; $7afa: $67
	ld e, a                                          ; $7afb: $5f
	ldh a, [$7e]                                     ; $7afc: $f0 $7e
	ld a, a                                          ; $7afe: $7f
	db $fd                                           ; $7aff: $fd
	sbc l                                            ; $7b00: $9d
	ld [$6fe5], a                                    ; $7b01: $ea $e5 $6f
	ld a, a                                          ; $7b04: $7f
	sbc l                                            ; $7b05: $9d
	dec d                                            ; $7b06: $15
	ld a, [de]                                       ; $7b07: $1a
	ld l, [hl]                                       ; $7b08: $6e
	push hl                                          ; $7b09: $e5
	sbc l                                            ; $7b0a: $9d
	ld a, [hl+]                                      ; $7b0b: $2a
	inc d                                            ; $7b0c: $14
	ei                                               ; $7b0d: $fb
	sbc l                                            ; $7b0e: $9d
	push de                                          ; $7b0f: $d5
	db $eb                                           ; $7b10: $eb
	ld [hl], a                                       ; $7b11: $77
	ldh a, [$9c]                                     ; $7b12: $f0 $9c
	ld [bc], a                                       ; $7b14: $02
	ld d, l                                          ; $7b15: $55
	cp d                                             ; $7b16: $ba
	ld [hl], b                                       ; $7b17: $70
	ldh a, [$9b]                                     ; $7b18: $f0 $9b
	ld bc, $45a2                                     ; $7b1a: $01 $a2 $45
	xor d                                            ; $7b1d: $aa
	ld [hl], a                                       ; $7b1e: $77
	ldh a, [$9b]                                     ; $7b1f: $f0 $9b
	or b                                             ; $7b21: $b0
	ld a, h                                          ; $7b22: $7c
	and d                                            ; $7b23: $a2

Jump_041_7b24:
	sub h                                            ; $7b24: $94
	db $fd                                           ; $7b25: $fd
	ld a, [hl]                                       ; $7b26: $7e
	ld b, c                                          ; $7b27: $41
	sbc l                                            ; $7b28: $9d
	ld e, l                                          ; $7b29: $5d
	dec hl                                           ; $7b2a: $2b
	ld [hl], e                                       ; $7b2b: $73
	ret nc                                           ; $7b2c: $d0

	sbc h                                            ; $7b2d: $9c
	ld e, l                                          ; $7b2e: $5d
	ld h, d                                          ; $7b2f: $62
	push af                                          ; $7b30: $f5
	ld l, l                                          ; $7b31: $6d
	ld h, e                                          ; $7b32: $63
	sbc l                                            ; $7b33: $9d
	sbc l                                            ; $7b34: $9d
	ld a, [bc]                                       ; $7b35: $0a
	ld [hl], e                                       ; $7b36: $73
	ldh a, [$9c]                                     ; $7b37: $f0 $9c

jr_041_7b39:
	ld h, b                                          ; $7b39: $60
	sbc b                                            ; $7b3a: $98
	ld b, l                                          ; $7b3b: $45
	ld l, a                                          ; $7b3c: $6f
	dec hl                                           ; $7b3d: $2b
	sbc e                                            ; $7b3e: $9b

Call_041_7b3f:
	ld h, a                                          ; $7b3f: $67
	and d                                            ; $7b40: $a2
	ld bc, $fefe                                     ; $7b41: $01 $fe $fe
	sbc e                                            ; $7b44: $9b
	jr nc, jr_041_7af1                               ; $7b45: $30 $aa

	ld [hl], a                                       ; $7b47: $77
	nop                                              ; $7b48: $00
	ld [hl], d                                       ; $7b49: $72
	ld hl, $549d                                     ; $7b4a: $21 $9d $54
	adc b                                            ; $7b4d: $88
	ld [hl], l                                       ; $7b4e: $75
	ld h, h                                          ; $7b4f: $64
	cp $9e                                           ; $7b50: $fe $9e
	sbc h                                            ; $7b52: $9c
	ld a, c                                          ; $7b53: $79
	push hl                                          ; $7b54: $e5
	db $fd                                           ; $7b55: $fd
	sbc [hl]                                         ; $7b56: $9e
	jr nz, jr_041_7b39                               ; $7b57: $20 $e0

	and c                                            ; $7b59: $a1
	sbc e                                            ; $7b5a: $9b
	inc b                                            ; $7b5b: $04
	ld a, [bc]                                       ; $7b5c: $0a
	ld bc, $6202                                     ; $7b5d: $01 $02 $62
	db $d3                                           ; $7b60: $d3
	ld hl, sp+$5e                                    ; $7b61: $f8 $5e
	sub d                                            ; $7b63: $92
	sbc d                                            ; $7b64: $9a
	ld a, [hl+]                                      ; $7b65: $2a
	rla                                              ; $7b66: $17
	ld a, [bc]                                       ; $7b67: $0a
	dec b                                            ; $7b68: $05
	ld [bc], a                                       ; $7b69: $02
	sbc $01                                          ; $7b6a: $de $01
	ld sp, hl                                        ; $7b6c: $f9
	rst SubAFromDE                                          ; $7b6d: $df
	xor e                                            ; $7b6e: $ab
	sub h                                            ; $7b6f: $94
	db $eb                                           ; $7b70: $eb
	dec hl                                           ; $7b71: $2b
	xor e                                            ; $7b72: $ab
	db $eb                                           ; $7b73: $eb
	ld [$47ca], a                                    ; $7b74: $ea $ca $47
	ld b, a                                          ; $7b77: $47
	rlca                                             ; $7b78: $07
	rst JumpTable                                          ; $7b79: $c7
	ld b, a                                          ; $7b7a: $47
	sbc $07                                          ; $7b7b: $de $07
	sbc l                                            ; $7b7d: $9d
	dec b                                            ; $7b7e: $05
	ld c, b                                          ; $7b7f: $48
	ld l, a                                          ; $7b80: $6f
	call nc, $ffd9                                   ; $7b81: $d4 $d9 $ff
	sbc b                                            ; $7b84: $98
	ld b, l                                          ; $7b85: $45
	ld a, [bc]                                       ; $7b86: $0a
	ld d, l                                          ; $7b87: $55
	ld a, [bc]                                       ; $7b88: $0a
	ld d, l                                          ; $7b89: $55
	nop                                              ; $7b8a: $00
	ld bc, $e678                                     ; $7b8b: $01 $78 $e6
	db $db                                           ; $7b8e: $db
	rst $38                                          ; $7b8f: $ff
	sbc [hl]                                         ; $7b90: $9e
	db $10                                           ; $7b91: $10
	ld l, e                                          ; $7b92: $6b
	add $9e                                          ; $7b93: $c6 $9e
	rst SubAFromBC                                          ; $7b95: $e7
	jp c, $9dff                                      ; $7b96: $da $ff $9d

	add sp, -$2c                                     ; $7b99: $e8 $d4
	ld a, e                                          ; $7b9b: $7b
	dec hl                                           ; $7b9c: $2b
	sbc d                                            ; $7b9d: $9a
	ld bc, $7807                                     ; $7b9e: $01 $07 $78
	rlca                                             ; $7ba1: $07
	dec hl                                           ; $7ba2: $2b
	db $db                                           ; $7ba3: $db
	rst $38                                          ; $7ba4: $ff
	ld a, [hl]                                       ; $7ba5: $7e
	sub l                                            ; $7ba6: $95
	ld a, h                                          ; $7ba7: $7c
	db $d3                                           ; $7ba8: $d3
	sbc h                                            ; $7ba9: $9c
	ld h, b                                          ; $7baa: $60
	ldh [rSB], a                                     ; $7bab: $e0 $01
	ld a, c                                          ; $7bad: $79
	ld hl, sp+$7d                                    ; $7bae: $f8 $7d
	add sp, -$23                                     ; $7bb0: $e8 $dd
	rst $38                                          ; $7bb2: $ff
	add b                                            ; $7bb3: $80
	ld [$b757], a                                    ; $7bb4: $ea $57 $b7
	ld d, l                                          ; $7bb7: $55
	ld a, [bc]                                       ; $7bb8: $0a
	dec b                                            ; $7bb9: $05
	ld c, d                                          ; $7bba: $4a
	db $10                                           ; $7bbb: $10
	dec d                                            ; $7bbc: $15
	xor b                                            ; $7bbd: $a8
	ld b, b                                          ; $7bbe: $40
	xor d                                            ; $7bbf: $aa
	push af                                          ; $7bc0: $f5
	ld a, [$efb5]                                    ; $7bc1: $fa $b5 $ef
	xor b                                            ; $7bc4: $a8
	ld d, a                                          ; $7bc5: $57
	xor d                                            ; $7bc6: $aa
	ld h, l                                          ; $7bc7: $65
	xor d                                            ; $7bc8: $aa
	ld d, l                                          ; $7bc9: $55
	ld [bc], a                                       ; $7bca: $02
	dec h                                            ; $7bcb: $25

Call_041_7bcc:
	ld d, a                                          ; $7bcc: $57
	xor b                                            ; $7bcd: $a8
	ld d, l                                          ; $7bce: $55
	sbc d                                            ; $7bcf: $9a
	ld d, l                                          ; $7bd0: $55
	xor d                                            ; $7bd1: $aa
	db $fd                                           ; $7bd2: $fd
	sbc h                                            ; $7bd3: $9c
	jp c, $15aa                                      ; $7bd4: $da $aa $15

	ld l, l                                          ; $7bd7: $6d
	sub $9d                                          ; $7bd8: $d6 $9d
	ld d, l                                          ; $7bda: $55
	ld [$c66d], a                                    ; $7bdb: $ea $6d $c6
	sbc e                                            ; $7bde: $9b
	xor e                                            ; $7bdf: $ab
	rst $38                                          ; $7be0: $ff
	xor d                                            ; $7be1: $aa
	ld d, a                                          ; $7be2: $57
	ld a, e                                          ; $7be3: $7b
	db $ec                                           ; $7be4: $ec
	sbc d                                            ; $7be5: $9a
	ld d, c                                          ; $7be6: $51
	ld d, b                                          ; $7be7: $50
	nop                                              ; $7be8: $00
	ld d, l                                          ; $7be9: $55
	xor b                                            ; $7bea: $a8
	ld a, e                                          ; $7beb: $7b
	db $ec                                           ; $7bec: $ec
	adc [hl]                                         ; $7bed: $8e
	xor [hl]                                         ; $7bee: $ae
	cp b                                             ; $7bef: $b8
	ld a, h                                          ; $7bf0: $7c
	xor [hl]                                         ; $7bf1: $ae
	ld d, l                                          ; $7bf2: $55
	cp $f7                                           ; $7bf3: $fe $f7
	xor [hl]                                         ; $7bf5: $ae
	dec d                                            ; $7bf6: $15
	ld b, b                                          ; $7bf7: $40
	add b                                            ; $7bf8: $80
	ld d, b                                          ; $7bf9: $50
	xor d                                            ; $7bfa: $aa
	ld bc, $5108                                     ; $7bfb: $01 $08 $51

Call_041_7bfe:
	ld [$9afe], a                                    ; $7bfe: $ea $fe $9a
	ret nz                                           ; $7c01: $c0

	ldh a, [$61]                                     ; $7c02: $f0 $61
	and d                                            ; $7c04: $a2
	ld e, h                                          ; $7c05: $5c
	ld l, a                                          ; $7c06: $6f
	add hl, hl                                       ; $7c07: $29
	sbc l                                            ; $7c08: $9d
	ld e, l                                          ; $7c09: $5d
	and b                                            ; $7c0a: $a0
	ei                                               ; $7c0b: $fb
	ld l, d                                          ; $7c0c: $6a
	sbc d                                            ; $7c0d: $9a
	ldh [$ad], a                                     ; $7c0e: $e0 $ad
	sbc b                                            ; $7c10: $98
	ld b, b                                          ; $7c11: $40
	jr nz, jr_041_7c34                               ; $7c12: $20 $20

	nop                                              ; $7c14: $00
	db $10                                           ; $7c15: $10
	db $10                                           ; $7c16: $10
	ld [$ddf9], sp                                   ; $7c17: $08 $f9 $dd
	inc bc                                           ; $7c1a: $03
	halt                                             ; $7c1b: $76
	db $fd                                           ; $7c1c: $fd
	db $dd                                           ; $7c1d: $dd
	ld bc, $8dfd                                     ; $7c1e: $01 $fd $8d
	adc d                                            ; $7c21: $8a
	ld a, [bc]                                       ; $7c22: $0a
	ld [bc], a                                       ; $7c23: $02
	ld a, [bc]                                       ; $7c24: $0a
	ld [bc], a                                       ; $7c25: $02
	ld [bc], a                                       ; $7c26: $02
	ld a, [bc]                                       ; $7c27: $0a
	dec bc                                           ; $7c28: $0b
	rlca                                             ; $7c29: $07

jr_041_7c2a:
	rlca                                             ; $7c2a: $07
	rrca                                             ; $7c2b: $0f
	rlca                                             ; $7c2c: $07
	rrca                                             ; $7c2d: $0f
	rrca                                             ; $7c2e: $0f
	rlca                                             ; $7c2f: $07
	rlca                                             ; $7c30: $07
	ld d, l                                          ; $7c31: $55
	xor a                                            ; $7c32: $af
	ld a, b                                          ; $7c33: $78

jr_041_7c34:
	cp e                                             ; $7c34: $bb
	sbc d                                            ; $7c35: $9a
	ldh a, [$a3]                                     ; $7c36: $f0 $a3
	sbc a                                            ; $7c38: $9f
	xor d                                            ; $7c39: $aa
	ld d, a                                          ; $7c3a: $57
	ld [hl], h                                       ; $7c3b: $74
	cp a                                             ; $7c3c: $bf
	db $dd                                           ; $7c3d: $dd
	rst $38                                          ; $7c3e: $ff
	sbc d                                            ; $7c3f: $9a
	cp $fb                                           ; $7c40: $fe $fb
	sbc a                                            ; $7c42: $9f
	ld a, h                                          ; $7c43: $7c
	ldh [$62], a                                     ; $7c44: $e0 $62
	or b                                             ; $7c46: $b0
	sub a                                            ; $7c47: $97
	jp $fc9f                                         ; $7c48: $c3 $9f $fc


	ldh [$9f], a                                     ; $7c4b: $e0 $9f
	ld b, l                                          ; $7c4d: $45
	nop                                              ; $7c4e: $00
	jr nz, jr_041_7c2a                               ; $7c4f: $20 $d9

	rst $38                                          ; $7c51: $ff
	sbc d                                            ; $7c52: $9a
	ldh [$80], a                                     ; $7c53: $e0 $80
	ld a, b                                          ; $7c55: $78
	ld a, b                                          ; $7c56: $78
	ret c                                            ; $7c57: $d8

	ld e, d                                          ; $7c58: $5a
	sub b                                            ; $7c59: $90
	sbc h                                            ; $7c5a: $9c
	ld d, b                                          ; $7c5b: $50
	xor b                                            ; $7c5c: $a8
	db $10                                           ; $7c5d: $10
	db $fc                                           ; $7c5e: $fc
	sbc h                                            ; $7c5f: $9c
	xor a                                            ; $7c60: $af
	ld d, a                                          ; $7c61: $57
	rst AddAOntoHL                                          ; $7c62: $ef
	call c, $9eff                                    ; $7c63: $dc $ff $9e
	jr nz, jr_041_7cd0                               ; $7c66: $20 $68

	rst GetHLinHL                                          ; $7c68: $cf
	sbc [hl]                                         ; $7c69: $9e
	rst SubAFromDE                                          ; $7c6a: $df
	ld l, e                                          ; $7c6b: $6b
	or c                                             ; $7c6c: $b1
	add b                                            ; $7c6d: $80
	ld c, [hl]                                       ; $7c6e: $4e
	dec d                                            ; $7c6f: $15
	ld a, [bc]                                       ; $7c70: $0a
	rra                                              ; $7c71: $1f
	jr c, @+$07                                      ; $7c72: $38 $05

	ld [$b141], sp                                   ; $7c74: $08 $41 $b1
	ld [$e0f5], a                                    ; $7c77: $ea $f5 $e0
	rst JumpTable                                          ; $7c7a: $c7
	ld a, [$fef7]                                    ; $7c7b: $fa $f7 $fe
	xor d                                            ; $7c7e: $aa
	ld b, l                                          ; $7c7f: $45
	ld a, [bc]                                       ; $7c80: $0a
	ld d, c                                          ; $7c81: $51
	ld a, [$2815]                                    ; $7c82: $fa $15 $28
	ld d, h                                          ; $7c85: $54
	ld d, l                                          ; $7c86: $55
	cp d                                             ; $7c87: $ba
	push af                                          ; $7c88: $f5
	adc [hl]                                         ; $7c89: $8e
	dec b                                            ; $7c8a: $05
	ld [$9ed7], a                                    ; $7c8b: $ea $d7 $9e
	xor e                                            ; $7c8e: $ab
	ld [hl], h                                       ; $7c8f: $74
	ld a, d                                          ; $7c90: $7a
	ld a, a                                          ; $7c91: $7f
	db $ec                                           ; $7c92: $ec
	sbc l                                            ; $7c93: $9d
	cp [hl]                                          ; $7c94: $be
	ldh [$7a], a                                     ; $7c95: $e0 $7a
	or h                                             ; $7c97: $b4
	ld a, [hl]                                       ; $7c98: $7e
	ld c, b                                          ; $7c99: $48
	adc a                                            ; $7c9a: $8f
	cp d                                             ; $7c9b: $ba
	ld b, b                                          ; $7c9c: $40
	nop                                              ; $7c9d: $00
	xor d                                            ; $7c9e: $aa
	ld [hl], l                                       ; $7c9f: $75
	adc d                                            ; $7ca0: $8a
	ld d, l                                          ; $7ca1: $55
	db $eb                                           ; $7ca2: $eb
	ld e, c                                          ; $7ca3: $59
	ld h, b                                          ; $7ca4: $60
	nop                                              ; $7ca5: $00
	ld d, l                                          ; $7ca6: $55
	adc d                                            ; $7ca7: $8a
	dec d                                            ; $7ca8: $15
	xor d                                            ; $7ca9: $aa
	db $10                                           ; $7caa: $10
	ld a, d                                          ; $7cab: $7a
	jp nc, $a897                                     ; $7cac: $d2 $97 $a8

	ld h, b                                          ; $7caf: $60
	add b                                            ; $7cb0: $80
	ret nz                                           ; $7cb1: $c0

	ldh [$50], a                                     ; $7cb2: $e0 $50
	nop                                              ; $7cb4: $00
	nop                                              ; $7cb5: $00
	ld [hl], b                                       ; $7cb6: $70
	ld [hl], e                                       ; $7cb7: $73
	ldh [$cd], a                                     ; $7cb8: $e0 $cd
	db $ec                                           ; $7cba: $ec
	sbc l                                            ; $7cbb: $9d
	ld [bc], a                                       ; $7cbc: $02
	rst AddAOntoHL                                          ; $7cbd: $ef
	push af                                          ; $7cbe: $f5
	sbc h                                            ; $7cbf: $9c
	ld de, $1fb2                                     ; $7cc0: $11 $b2 $1f
	ld [hl], b                                       ; $7cc3: $70
	xor d                                            ; $7cc4: $aa
	cp $7e                                           ; $7cc5: $fe $7e
	rst JumpTable                                          ; $7cc7: $c7
	sbc d                                            ; $7cc8: $9a
	adc b                                            ; $7cc9: $88
	inc b                                            ; $7cca: $04
	add [hl]                                         ; $7ccb: $86
	ld d, l                                          ; $7ccc: $55
	xor a                                            ; $7ccd: $af
	ld a, b                                          ; $7cce: $78
	adc b                                            ; $7ccf: $88

jr_041_7cd0:
	rst FarCall                                          ; $7cd0: $f7
	sbc e                                            ; $7cd1: $9b
	ld bc, $fe55                                     ; $7cd2: $01 $55 $fe
	push de                                          ; $7cd5: $d5
	ld l, d                                          ; $7cd6: $6a
	ld c, b                                          ; $7cd7: $48
	rst $38                                          ; $7cd8: $ff
	rst SubAFromDE                                          ; $7cd9: $df
	rra                                              ; $7cda: $1f
	sbc e                                            ; $7cdb: $9b
	ld bc, $55aa                                     ; $7cdc: $01 $aa $55
	and d                                            ; $7cdf: $a2
	ld a, e                                          ; $7ce0: $7b
	ld hl, sp+$70                                    ; $7ce1: $f8 $70
	ret nc                                           ; $7ce3: $d0

	rst $38                                          ; $7ce4: $ff
	ld a, d                                          ; $7ce5: $7a
	push de                                          ; $7ce6: $d5
	ld a, a                                          ; $7ce7: $7f
	rst SubAFromDE                                          ; $7ce8: $df
	ld a, a                                          ; $7ce9: $7f
	ld h, h                                          ; $7cea: $64
	sbc [hl]                                         ; $7ceb: $9e
	db $10                                           ; $7cec: $10
	reti                                             ; $7ced: $d9


	rst $38                                          ; $7cee: $ff
	sbc l                                            ; $7cef: $9d
	add hl, bc                                       ; $7cf0: $09
	inc bc                                           ; $7cf1: $03
	ld l, l                                          ; $7cf2: $6d
	ld b, e                                          ; $7cf3: $43
	reti                                             ; $7cf4: $d9


	rst $38                                          ; $7cf5: $ff
	sbc e                                            ; $7cf6: $9b
	add b                                            ; $7cf7: $80
	ld b, b                                          ; $7cf8: $40
	ld b, b                                          ; $7cf9: $40
	ld a, [hl+]                                      ; $7cfa: $2a
	ld [hl], a                                       ; $7cfb: $77
	cp h                                             ; $7cfc: $bc
	ld h, [hl]                                       ; $7cfd: $66
	and e                                            ; $7cfe: $a3

Jump_041_7cff:
jr_041_7cff:
	db $fc                                           ; $7cff: $fc
	sbc l                                            ; $7d00: $9d
	ld d, $80                                        ; $7d01: $16 $80
	ld l, a                                          ; $7d03: $6f
	ldh [$9d], a                                     ; $7d04: $e0 $9d
	jp hl                                            ; $7d06: $e9


	ld a, a                                          ; $7d07: $7f
	ld a, e                                          ; $7d08: $7b
	sbc b                                            ; $7d09: $98
	add h                                            ; $7d0a: $84
	ld [hl-], a                                      ; $7d0b: $32
	dec hl                                           ; $7d0c: $2b
	inc b                                            ; $7d0d: $04
	inc de                                           ; $7d0e: $13

Jump_041_7d0f:
	dec a                                            ; $7d0f: $3d
	set 7, a                                         ; $7d10: $cb $ff
	rst $38                                          ; $7d12: $ff
	call $fbf4                                       ; $7d13: $cd $f4 $fb
	ldh [$c0], a                                     ; $7d16: $e0 $c0
	inc [hl]                                         ; $7d18: $34
	ld [$add5], sp                                   ; $7d19: $08 $d5 $ad
	ld h, [hl]                                       ; $7d1c: $66
	sub [hl]                                         ; $7d1d: $96
	ldh a, [$50]                                     ; $7d1e: $f0 $50
	ret nz                                           ; $7d20: $c0

	rst FarCall                                          ; $7d21: $f7
	jr z, jr_041_7d64                                ; $7d22: $28 $40

	sbc c                                            ; $7d24: $99
	ld h, b                                          ; $7d25: $60
	ld a, e                                          ; $7d26: $7b
	or l                                             ; $7d27: $b5
	sbc e                                            ; $7d28: $9b
	add c                                            ; $7d29: $81
	jp $c23d                                         ; $7d2a: $c3 $3d $c2


	db $fd                                           ; $7d2d: $fd
	sbc h                                            ; $7d2e: $9c
	ld a, [hl]                                       ; $7d2f: $7e
	inc a                                            ; $7d30: $3c
	jp nz, $4072                                     ; $7d31: $c2 $72 $40

	sbc e                                            ; $7d34: $9b
	rra                                              ; $7d35: $1f
	and b                                            ; $7d36: $a0
	ld b, b                                          ; $7d37: $40
	or b                                             ; $7d38: $b0
	ld [hl], c                                       ; $7d39: $71
	cp [hl]                                          ; $7d3a: $be
	ld a, l                                          ; $7d3b: $7d
	sbc a                                            ; $7d3c: $9f
	ld [hl], d                                       ; $7d3d: $72
	sub [hl]                                         ; $7d3e: $96
	ld l, d                                          ; $7d3f: $6a
	jp hl                                            ; $7d40: $e9


	ld l, e                                          ; $7d41: $6b
	ld [hl], d                                       ; $7d42: $72
	ld sp, hl                                        ; $7d43: $f9
	sbc [hl]                                         ; $7d44: $9e
	ld b, $69                                        ; $7d45: $06 $69
	ld a, [bc]                                       ; $7d47: $0a
	ld [hl], b                                       ; $7d48: $70
	ld [hl+], a                                      ; $7d49: $22
	rst $38                                          ; $7d4a: $ff
	sbc [hl]                                         ; $7d4b: $9e
	dec e                                            ; $7d4c: $1d
	ld a, b                                          ; $7d4d: $78
	db $ed                                           ; $7d4e: $ed
	ld [hl], e                                       ; $7d4f: $73
	add hl, bc                                       ; $7d50: $09
	ld a, [hl]                                       ; $7d51: $7e
	sub l                                            ; $7d52: $95
	db $fd                                           ; $7d53: $fd
	sbc e                                            ; $7d54: $9b
	ld a, [hl-]                                      ; $7d55: $3a
	dec d                                            ; $7d56: $15
	xor d                                            ; $7d57: $aa
	ld [hl], b                                       ; $7d58: $70
	db $fd                                           ; $7d59: $fd
	ld a, [hl]                                       ; $7d5a: $7e
	add b                                            ; $7d5b: $80
	sbc [hl]                                         ; $7d5c: $9e
	ld d, l                                          ; $7d5d: $55
	ld a, e                                          ; $7d5e: $7b
	pop bc                                           ; $7d5f: $c1
	sbc [hl]                                         ; $7d60: $9e
	rlca                                             ; $7d61: $07
	db $dd                                           ; $7d62: $dd
	rst $38                                          ; $7d63: $ff

jr_041_7d64:
	ld [hl], a                                       ; $7d64: $77
	jr nz, jr_041_7cff                               ; $7d65: $20 $98

	rrca                                             ; $7d67: $0f
	ld d, l                                          ; $7d68: $55
	xor d                                            ; $7d69: $aa
	ld b, b                                          ; $7d6a: $40
	nop                                              ; $7d6b: $00
	ld h, b                                          ; $7d6c: $60
	ld h, a                                          ; $7d6d: $67
	db $dd                                           ; $7d6e: $dd
	rst $38                                          ; $7d6f: $ff
	db $fd                                           ; $7d70: $fd
	ld a, d                                          ; $7d71: $7a
	ld l, [hl]                                       ; $7d72: $6e
	ld a, e                                          ; $7d73: $7b
	ldh [c], a                                       ; $7d74: $e2
	add b                                            ; $7d75: $80
	ld b, $fe                                        ; $7d76: $06 $fe
	rst $38                                          ; $7d78: $ff
	ld a, [$3ed4]                                    ; $7d79: $fa $d4 $3e
	ld a, $10                                        ; $7d7c: $3e $10
	ld bc, $540b                                     ; $7d7e: $01 $0b $54
	xor l                                            ; $7d81: $ad
	cpl                                              ; $7d82: $2f
	dec bc                                           ; $7d83: $0b
	dec d                                            ; $7d84: $15
	rrca                                             ; $7d85: $0f
	ld [hl], e                                       ; $7d86: $73
	ld a, a                                          ; $7d87: $7f
	db $fc                                           ; $7d88: $fc
	ld b, c                                          ; $7d89: $41
	rrca                                             ; $7d8a: $0f
	ccf                                              ; $7d8b: $3f
	ld a, a                                          ; $7d8c: $7f
	inc de                                           ; $7d8d: $13
	db $ec                                           ; $7d8e: $ec
	add b                                            ; $7d8f: $80
	inc bc                                           ; $7d90: $03
	cp [hl]                                          ; $7d91: $be
	ldh a, [$c0]                                     ; $7d92: $f0 $c0
	add b                                            ; $7d94: $80
	add a                                            ; $7d95: $87
	db $ec                                           ; $7d96: $ec
	ld a, a                                          ; $7d97: $7f
	rst $38                                          ; $7d98: $ff
	ld b, $f3                                        ; $7d99: $06 $f3
	rst GetHLinHL                                          ; $7d9b: $cf
	ret z                                            ; $7d9c: $c8

	add a                                            ; $7d9d: $87
	ld hl, sp-$80                                    ; $7d9e: $f8 $80
	nop                                              ; $7da0: $00
	ld sp, hl                                        ; $7da1: $f9
	inc c                                            ; $7da2: $0c
	jr nc, jr_041_7ddc                               ; $7da3: $30 $37

	ld a, b                                          ; $7da5: $78
	nop                                              ; $7da6: $00
	db $fd                                           ; $7da7: $fd
	ld [$fad7], a                                    ; $7da8: $ea $d7 $fa
	db $fd                                           ; $7dab: $fd
	ld a, e                                          ; $7dac: $7b
	ld c, c                                          ; $7dad: $49
	ld e, h                                          ; $7dae: $5c
	add hl, sp                                       ; $7daf: $39
	ld a, a                                          ; $7db0: $7f
	ld e, c                                          ; $7db1: $59
	sbc d                                            ; $7db2: $9a
	ret nz                                           ; $7db3: $c0

	ld h, b                                          ; $7db4: $60
	and b                                            ; $7db5: $a0
	ld d, b                                          ; $7db6: $50
	xor b                                            ; $7db7: $a8
	jp hl                                            ; $7db8: $e9


	ld c, l                                          ; $7db9: $4d
	nop                                              ; $7dba: $00
	sbc [hl]                                         ; $7dbb: $9e
	ld h, [hl]                                       ; $7dbc: $66
	sbc $44                                          ; $7dbd: $de $44
	sbc [hl]                                         ; $7dbf: $9e
	ld [hl], l                                       ; $7dc0: $75
	call c, $9955                                    ; $7dc1: $dc $55 $99
	ld h, [hl]                                       ; $7dc4: $66
	ld h, h                                          ; $7dc5: $64
	ld b, h                                          ; $7dc6: $44
	ld b, h                                          ; $7dc7: $44
	ld h, e                                          ; $7dc8: $63
	dec [hl]                                         ; $7dc9: $35
	db $dd                                           ; $7dca: $dd
	ld d, l                                          ; $7dcb: $55
	ld a, e                                          ; $7dcc: $7b
	rst FarCall                                          ; $7dcd: $f7
	ld a, a                                          ; $7dce: $7f
	or $9e                                           ; $7dcf: $f6 $9e
	inc sp                                           ; $7dd1: $33
	ld l, a                                          ; $7dd2: $6f
	or $97                                           ; $7dd3: $f6 $97
	ld b, [hl]                                       ; $7dd5: $46
	ld b, h                                          ; $7dd6: $44
	ld b, h                                          ; $7dd7: $44
	inc sp                                           ; $7dd8: $33
	ld [hl], $65                                     ; $7dd9: $36 $65
	ld d, [hl]                                       ; $7ddb: $56

jr_041_7ddc:
	ld h, [hl]                                       ; $7ddc: $66
	ld [hl], a                                       ; $7ddd: $77
	ret c                                            ; $7dde: $d8

	ld a, e                                          ; $7ddf: $7b
	or $9d                                           ; $7de0: $f6 $9d
	ld h, e                                          ; $7de2: $63
	ld d, l                                          ; $7de3: $55
	ld [hl], a                                       ; $7de4: $77
	or $98                                           ; $7de5: $f6 $98
	ld b, a                                          ; $7de7: $47
	ld h, h                                          ; $7de8: $64
	inc sp                                           ; $7de9: $33
	inc sp                                           ; $7dea: $33
	dec [hl]                                         ; $7deb: $35
	ld d, l                                          ; $7dec: $55
	ld d, [hl]                                       ; $7ded: $56
	ld a, e                                          ; $7dee: $7b
	or $9e                                           ; $7def: $f6 $9e
	ld b, e                                          ; $7df1: $43
	db $dd                                           ; $7df2: $dd
	inc sp                                           ; $7df3: $33
	sbc h                                            ; $7df4: $9c
	ld d, l                                          ; $7df5: $55
	ld d, e                                          ; $7df6: $53
	ld b, h                                          ; $7df7: $44
	jp c, Jump_041_5733                              ; $7df8: $da $33 $57

	or $9e                                           ; $7dfb: $f6 $9e
	ld [hl], a                                       ; $7dfd: $77
	ld l, a                                          ; $7dfe: $6f

Call_041_7dff:
	ld hl, sp-$22                                    ; $7dff: $f8 $de
	ld d, l                                          ; $7e01: $55
	ld l, e                                          ; $7e02: $6b

Jump_041_7e03:
	xor $de                                          ; $7e03: $ee $de
	ld d, l                                          ; $7e05: $55
	reti                                             ; $7e06: $d9


	add a                                            ; $7e07: $87
	sub l                                            ; $7e08: $95
	xor a                                            ; $7e09: $af
	ccf                                              ; $7e0a: $3f
	nop                                              ; $7e0b: $00
	dec b                                            ; $7e0c: $05
	ld [$5d8a], sp                                   ; $7e0d: $08 $8a $5d
	ldh [rIE], a                                     ; $7e10: $e0 $ff
	sbc $db                                          ; $7e12: $de $db
	rst $38                                          ; $7e14: $ff
	sub a                                            ; $7e15: $97
	ld bc, $7b2e                                     ; $7e16: $01 $2e $7b
	ld e, a                                          ; $7e19: $5f
	cp [hl]                                          ; $7e1a: $be
	dec e                                            ; $7e1b: $1d
	cpl                                              ; $7e1c: $2f
	ld b, a                                          ; $7e1d: $47
	jp c, $9cff                                      ; $7e1e: $da $ff $9c

	rst AddAOntoHL                                          ; $7e21: $ef
	add b                                            ; $7e22: $80
	ldh [$de], a                                     ; $7e23: $e0 $de
	ld hl, sp-$21                                    ; $7e25: $f8 $df
	cp $99                                           ; $7e27: $fe $99
	rst $38                                          ; $7e29: $ff
	push de                                          ; $7e2a: $d5
	ld a, [$fafd]                                    ; $7e2b: $fa $fd $fa
	db $fd                                           ; $7e2e: $fd
	sbc $ff                                          ; $7e2f: $de $ff
	db $fc                                           ; $7e31: $fc
	sbc l                                            ; $7e32: $9d
	ld d, l                                          ; $7e33: $55
	cp [hl]                                          ; $7e34: $be
	ret c                                            ; $7e35: $d8

	rst $38                                          ; $7e36: $ff
	db $fc                                           ; $7e37: $fc
	sbc l                                            ; $7e38: $9d
	ld e, a                                          ; $7e39: $5f
	xor d                                            ; $7e3a: $aa
	db $db                                           ; $7e3b: $db
	rst $38                                          ; $7e3c: $ff
	sbc [hl]                                         ; $7e3d: $9e
	and b                                            ; $7e3e: $a0
	ld [hl], e                                       ; $7e3f: $73
	ldh a, [$9b]                                     ; $7e40: $f0 $9b
	ld bc, $f502                                     ; $7e42: $01 $02 $f5
	xor h                                            ; $7e45: $ac
	ld [hl], a                                       ; $7e46: $77
	push de                                          ; $7e47: $d5
	add d                                            ; $7e48: $82
	cp $fd                                           ; $7e49: $fe $fd
	ld c, $ff                                        ; $7e4b: $0e $ff
	cp $0b                                           ; $7e4d: $fe $0b
	inc de                                           ; $7e4f: $13
	dec hl                                           ; $7e50: $2b
	ld d, e                                          ; $7e51: $53
	cp e                                             ; $7e52: $bb
	ld a, e                                          ; $7e53: $7b

Jump_041_7e54:
	ei                                               ; $7e54: $fb
	ei                                               ; $7e55: $fb
	rst FarCall                                          ; $7e56: $f7
	rst AddAOntoHL                                          ; $7e57: $ef
	rst SubAFromHL                                          ; $7e58: $d7
	xor a                                            ; $7e59: $af
	ld b, a                                          ; $7e5a: $47
	add a                                            ; $7e5b: $87
	rlca                                             ; $7e5c: $07
	rlca                                             ; $7e5d: $07
	xor e                                            ; $7e5e: $ab
	ld d, e                                          ; $7e5f: $53
	xor e                                            ; $7e60: $ab
	ld d, d                                          ; $7e61: $52
	xor e                                            ; $7e62: $ab
	ld d, e                                          ; $7e63: $53
	and e                                            ; $7e64: $a3
	ld [hl], e                                       ; $7e65: $73
	reti                                             ; $7e66: $d9


	rst $38                                          ; $7e67: $ff
	sub h                                            ; $7e68: $94
	cp a                                             ; $7e69: $bf
	ld [hl], a                                       ; $7e6a: $77
	or [hl]                                          ; $7e6b: $b6
	ld e, a                                          ; $7e6c: $5f
	and b                                            ; $7e6d: $a0
	ld d, b                                          ; $7e6e: $50

Call_041_7e6f:
	ld hl, sp-$09                                    ; $7e6f: $f8 $f7
	ldh [rLCDC], a                                   ; $7e71: $e0 $40
	ret nz                                           ; $7e73: $c0

	db $dd                                           ; $7e74: $dd
	ldh [$9e], a                                     ; $7e75: $e0 $9e
	ld hl, sp-$06                                    ; $7e77: $f8 $fa
	sbc [hl]                                         ; $7e79: $9e
	ccf                                              ; $7e7a: $3f
	ld [hl], e                                       ; $7e7b: $73
	and h                                            ; $7e7c: $a4
	sbc l                                            ; $7e7d: $9d
	ld sp, hl                                        ; $7e7e: $f9
	ld bc, $a06f                                     ; $7e7f: $01 $6f $a0
	sbc h                                            ; $7e82: $9c
	ldh [$f0], a                                     ; $7e83: $e0 $f0
	ldh a, [$dd]                                     ; $7e85: $f0 $dd
	di                                               ; $7e87: $f3
	sbc [hl]                                         ; $7e88: $9e
	rst $38                                          ; $7e89: $ff
	ld a, e                                          ; $7e8a: $7b
	db $fd                                           ; $7e8b: $fd
	sbc h                                            ; $7e8c: $9c
	nop                                              ; $7e8d: $00
	jr nz, @+$0a                                     ; $7e8e: $20 $08

	db $fc                                           ; $7e90: $fc
	reti                                             ; $7e91: $d9


	rst $38                                          ; $7e92: $ff
	sbc b                                            ; $7e93: $98
	jr nz, jr_041_7ea6                               ; $7e94: $20 $10

	ld [$8204], sp                                   ; $7e96: $08 $04 $82
	ld bc, $6308                                     ; $7e99: $01 $08 $63
	ldh a, [hDisp1_OBP1]                                     ; $7e9c: $f0 $94
	add b                                            ; $7e9e: $80
	nop                                              ; $7e9f: $00
	ld b, c                                          ; $7ea0: $41

jr_041_7ea1:
	nop                                              ; $7ea1: $00
	dec h                                            ; $7ea2: $25
	db $10                                           ; $7ea3: $10
	add c                                            ; $7ea4: $81
	ld c, d                                          ; $7ea5: $4a

jr_041_7ea6:
	rst $38                                          ; $7ea6: $ff
	rst $38                                          ; $7ea7: $ff
	db $fd                                           ; $7ea8: $fd
	ld [hl], a                                       ; $7ea9: $77
	ld a, h                                          ; $7eaa: $7c
	ld l, a                                          ; $7eab: $6f
	ret nz                                           ; $7eac: $c0

	ld e, e                                          ; $7ead: $5b
	ret nc                                           ; $7eae: $d0

	scf                                              ; $7eaf: $37
	ldh a, [$9b]                                     ; $7eb0: $f0 $9b
	ld bc, $0200                                     ; $7eb2: $01 $00 $02
	ld bc, $ffdb                                     ; $7eb5: $01 $db $ff
	sub [hl]                                         ; $7eb8: $96
	ei                                               ; $7eb9: $fb
	rst $38                                          ; $7eba: $ff
	ld c, b                                          ; $7ebb: $48
	db $10                                           ; $7ebc: $10
	add b                                            ; $7ebd: $80
	jr nz, jr_041_7ec0                               ; $7ebe: $20 $00

jr_041_7ec0:
	ld b, b                                          ; $7ec0: $40
	add b                                            ; $7ec1: $80
	ld h, e                                          ; $7ec2: $63
	ldh [$df], a                                     ; $7ec3: $e0 $df
	rrca                                             ; $7ec5: $0f
	sbc c                                            ; $7ec6: $99
	rla                                              ; $7ec7: $17
	rrca                                             ; $7ec8: $0f
	rlca                                             ; $7ec9: $07
	dec bc                                           ; $7eca: $0b
	rlca                                             ; $7ecb: $07
	inc bc                                           ; $7ecc: $03
	reti                                             ; $7ecd: $d9


	rst $38                                          ; $7ece: $ff
	sub a                                            ; $7ecf: $97
	ld e, a                                          ; $7ed0: $5f
	cp a                                             ; $7ed1: $bf
	ld d, a                                          ; $7ed2: $57
	or a                                             ; $7ed3: $b7
	ld d, a                                          ; $7ed4: $57
	cp a                                             ; $7ed5: $bf
	ld c, a                                          ; $7ed6: $4f
	xor a                                            ; $7ed7: $af
	db $dd                                           ; $7ed8: $dd
	rst SubAFromBC                                          ; $7ed9: $e7
	sbc [hl]                                         ; $7eda: $9e
	rst AddAOntoHL                                          ; $7edb: $ef
	sbc $e7                                          ; $7edc: $de $e7
	sub a                                            ; $7ede: $97
	jr nz, jr_041_7ea1                               ; $7edf: $20 $c0

	ldh [c], a                                       ; $7ee1: $e2
	call z, $daf0                                    ; $7ee2: $cc $f0 $da
	cp a                                             ; $7ee5: $bf
	ld a, a                                          ; $7ee6: $7f
	ld [hl], e                                       ; $7ee7: $73
	sub e                                            ; $7ee8: $93
	sbc $ff                                          ; $7ee9: $de $ff
	sub a                                            ; $7eeb: $97
	rlca                                             ; $7eec: $07
	ld [$fe44], sp                                   ; $7eed: $08 $44 $fe
	ld a, l                                          ; $7ef0: $7d
	ld a, [hl]                                       ; $7ef1: $7e
	ei                                               ; $7ef2: $fb

jr_041_7ef3:
	adc $d9                                          ; $7ef3: $ce $d9
	rst $38                                          ; $7ef5: $ff
	adc b                                            ; $7ef6: $88

Jump_041_7ef7:
	sbc a                                            ; $7ef7: $9f
	ld h, b                                          ; $7ef8: $60
	ld c, b                                          ; $7ef9: $48
	ld c, $20                                        ; $7efa: $0e $20
	ld bc, $f83f                                     ; $7efc: $01 $3f $f8

Call_041_7eff:
	db $fc                                           ; $7eff: $fc
	db $dd                                           ; $7f00: $dd
	ldh a, [c]                                       ; $7f01: $f2
	rst $38                                          ; $7f02: $ff
	rst $38                                          ; $7f03: $ff
	rst FarCall                                          ; $7f04: $f7
	rst $38                                          ; $7f05: $ff
	rst SubAFromBC                                          ; $7f06: $e7
	ld a, a                                          ; $7f07: $7f
	and b                                            ; $7f08: $a0
	ld a, a                                          ; $7f09: $7f
	xor $75                                          ; $7f0a: $ee $75
	ld [$7ab0], a                                    ; $7f0c: $ea $b0 $7a
	rst GetHLinHL                                          ; $7f0f: $cf
	sbc e                                            ; $7f10: $9b
	ldh a, [$31]                                     ; $7f11: $f0 $31
	ld [$def5], a                                    ; $7f13: $ea $f5 $de
	rst $38                                          ; $7f16: $ff
	sbc c                                            ; $7f17: $99
	ld [$adff], sp                                   ; $7f18: $08 $ff $ad
	ld e, d                                          ; $7f1b: $5a
	adc b                                            ; $7f1c: $88
	jr @+$7d                                         ; $7f1d: $18 $7b

	ldh a, [$9b]                                     ; $7f1f: $f0 $9b
	ld [$ad5a], sp                                   ; $7f21: $08 $5a $ad
	ld a, a                                          ; $7f24: $7f
	ld a, e                                          ; $7f25: $7b
	ld c, d                                          ; $7f26: $4a
	sub e                                            ; $7f27: $93
	dec b                                            ; $7f28: $05
	xor a                                            ; $7f29: $af
	ld c, a                                          ; $7f2a: $4f
	sub a                                            ; $7f2b: $97
	cpl                                              ; $7f2c: $2f
	ld d, a                                          ; $7f2d: $57
	xor a                                            ; $7f2e: $af
	cp $fe                                           ; $7f2f: $fe $fe
	ld d, h                                          ; $7f31: $54
	cp h                                             ; $7f32: $bc
	ld a, h                                          ; $7f33: $7c
	sbc $fc                                          ; $7f34: $de $fc
	reti                                             ; $7f36: $d9


	ei                                               ; $7f37: $fb
	reti                                             ; $7f38: $d9


	rlca                                             ; $7f39: $07
	sub a                                            ; $7f3a: $97
	db $e3                                           ; $7f3b: $e3
	ld d, e                                          ; $7f3c: $53
	db $e3                                           ; $7f3d: $e3
	db $d3                                           ; $7f3e: $d3
	or c                                             ; $7f3f: $b1
	ldh a, [$f8]                                     ; $7f40: $f0 $f8
	db $f4                                           ; $7f42: $f4
	reti                                             ; $7f43: $d9


	rst $38                                          ; $7f44: $ff
	sub l                                            ; $7f45: $95
	rst SubAFromHL                                          ; $7f46: $d7
	xor e                                            ; $7f47: $ab
	ld d, b                                          ; $7f48: $50
	or b                                             ; $7f49: $b0
	ld e, a                                          ; $7f4a: $5f
	cp a                                             ; $7f4b: $bf
	ld e, a                                          ; $7f4c: $5f
	cp a                                             ; $7f4d: $bf
	db $fc                                           ; $7f4e: $fc
	cp $de                                           ; $7f4f: $fe $de
	ldh [$9b], a                                     ; $7f51: $e0 $9b
	pop af                                           ; $7f53: $f1
	db $f4                                           ; $7f54: $f4
	rst $38                                          ; $7f55: $ff
	ld bc, $96fe                                     ; $7f56: $01 $fe $96
	jr nc, jr_041_7ef3                               ; $7f59: $30 $98

	ldh a, [$f0]                                     ; $7f5b: $f0 $f0
	rst $38                                          ; $7f5d: $ff
	pop af                                           ; $7f5e: $f1
	db $10                                           ; $7f5f: $10
	jr nc, @-$0e                                     ; $7f60: $30 $f0

	db $dd                                           ; $7f62: $dd
	ld hl, sp-$68                                    ; $7f63: $f8 $98
	ld sp, hl                                        ; $7f65: $f9
	ld a, c                                          ; $7f66: $79
	add hl, de                                       ; $7f67: $19
	add hl, bc                                       ; $7f68: $09
	add hl, sp                                       ; $7f69: $39
	jr c, jr_041_7fa8                                ; $7f6a: $38 $3c

	jp c, $97ff                                      ; $7f6c: $da $ff $97

	cp $00                                           ; $7f6f: $fe $00
	nop                                              ; $7f71: $00
	add b                                            ; $7f72: $80
	ldh [$f0], a                                     ; $7f73: $e0 $f0
	ld hl, sp-$04                                    ; $7f75: $f8 $fc
	ld a, e                                          ; $7f77: $7b
	sub [hl]                                         ; $7f78: $96
	ld a, $f0                                        ; $7f79: $3e $f0
	sbc [hl]                                         ; $7f7b: $9e
	rst AddAOntoHL                                          ; $7f7c: $ef
	sbc $ff                                          ; $7f7d: $de $ff
	sbc e                                            ; $7f7f: $9b
	jr z, @+$06                                      ; $7f80: $28 $04

	ld [bc], a                                       ; $7f82: $02
	nop                                              ; $7f83: $00
	ld [hl], a                                       ; $7f84: $77
	cp $2e                                           ; $7f85: $fe $2e
	ret nc                                           ; $7f87: $d0

	rst SubAFromDE                                          ; $7f88: $df
	ld a, a                                          ; $7f89: $7f
	ld sp, hl                                        ; $7f8a: $f9
	ld a, [hl]                                       ; $7f8b: $7e
	sub $db                                          ; $7f8c: $d6 $db
	rst $38                                          ; $7f8e: $ff
	sub a                                            ; $7f8f: $97
	inc b                                            ; $7f90: $04
	ld bc, $0201                                     ; $7f91: $01 $01 $02
	inc b                                            ; $7f94: $04
	pop af                                           ; $7f95: $f1
	ld b, $14                                        ; $7f96: $06 $14
	jp c, $9cff                                      ; $7f98: $da $ff $9c

	or [hl]                                          ; $7f9b: $b6
	add b                                            ; $7f9c: $80

Call_041_7f9d:
	db $10                                           ; $7f9d: $10

Call_041_7f9e:
	ld a, e                                          ; $7f9e: $7b
	sbc [hl]                                         ; $7f9f: $9e
	sbc l                                            ; $7fa0: $9d
	nop                                              ; $7fa1: $00
	and b                                            ; $7fa2: $a0
	ld h, e                                          ; $7fa3: $63
	ret nz                                           ; $7fa4: $c0

	sbc e                                            ; $7fa5: $9b
	dec b                                            ; $7fa6: $05
	inc bc                                           ; $7fa7: $03

jr_041_7fa8:
	ld bc, $7702                                     ; $7fa8: $01 $02 $77
	ld l, h                                          ; $7fab: $6c
	ld e, [hl]                                       ; $7fac: $5e
	ret nz                                           ; $7fad: $c0

	ld a, a                                          ; $7fae: $7f
	cp $9b                                           ; $7faf: $fe $9b
	ld c, a                                          ; $7fb1: $4f
	cp a                                             ; $7fb2: $bf
	ld l, a                                          ; $7fb3: $6f
	ld a, a                                          ; $7fb4: $7f
	db $db                                           ; $7fb5: $db
	rst SubAFromBC                                          ; $7fb6: $e7
	sub [hl]                                         ; $7fb7: $96
	ld [hl], a                                       ; $7fb8: $77
	rst SubAFromBC                                          ; $7fb9: $e7
	rst $38                                          ; $7fba: $ff
	cp $f5                                           ; $7fbb: $fe $f5
	pop de                                           ; $7fbd: $d1
	adc e                                            ; $7fbe: $8b
	ld a, a                                          ; $7fbf: $7f
	ld a, [hl]                                       ; $7fc0: $7e
	ld h, e                                          ; $7fc1: $63
	ld h, b                                          ; $7fc2: $60
	sub a                                            ; $7fc3: $97
	rra                                              ; $7fc4: $1f
	ld a, a                                          ; $7fc5: $7f
	ld d, e                                          ; $7fc6: $53
	rst $38                                          ; $7fc7: $ff
	rst $38                                          ; $7fc8: $ff
	sbc c                                            ; $7fc9: $99
	ld sp, $6f20                                     ; $7fca: $31 $20 $6f
	sub c                                            ; $7fcd: $91
	sub l                                            ; $7fce: $95
	ld a, l                                          ; $7fcf: $7d
	cp e                                             ; $7fd0: $bb
	db $fc                                           ; $7fd1: $fc
	db $fc                                           ; $7fd2: $fc
	rst $38                                          ; $7fd3: $ff
	rst $38                                          ; $7fd4: $ff
	and $f4                                          ; $7fd5: $e6 $f4
	sbc h                                            ; $7fd7: $9c
	db $10                                           ; $7fd8: $10
	ld a, e                                          ; $7fd9: $7b
	ld sp, hl                                        ; $7fda: $f9
	rst SubAFromDE                                          ; $7fdb: $df
	rst $38                                          ; $7fdc: $ff
	sbc c                                            ; $7fdd: $99

Call_041_7fde:
	db $db                                           ; $7fde: $db
	ldh a, [c]                                       ; $7fdf: $f2
	push bc                                          ; $7fe0: $c5
	push af                                          ; $7fe1: $f5
	ld a, a                                          ; $7fe2: $7f
	rst $38                                          ; $7fe3: $ff
	ld a, e                                          ; $7fe4: $7b
	or h                                             ; $7fe5: $b4
	ld l, a                                          ; $7fe6: $6f
	or b                                             ; $7fe7: $b0
	ld [hl], a                                       ; $7fe8: $77
	ld a, [$5d9e]                                    ; $7fe9: $fa $9e $5d
	ld a, e                                          ; $7fec: $7b
	ld sp, hl                                        ; $7fed: $f9
	ld d, a                                          ; $7fee: $57
	ldh a, [$9e]                                     ; $7fef: $f0 $9e
	ld e, a                                          ; $7ff1: $5f
	ld a, d                                          ; $7ff2: $7a
	ld a, l                                          ; $7ff3: $7d
	ld [hl], a                                       ; $7ff4: $77
	or $de                                           ; $7ff5: $f6 $de
	db $fc                                           ; $7ff7: $fc
	ld a, c                                          ; $7ff8: $79
	or h                                             ; $7ff9: $b4
	ld a, d                                          ; $7ffa: $7a
	ld l, $df                                        ; $7ffb: $2e $df
	ei                                               ; $7ffd: $fb
	sbc d                                            ; $7ffe: $9a
	db $fa                                           ; $7fff: $fa
